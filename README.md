# 实验准备
由于基于惰性计算的域敏感指针分析系统的兼容性不高，请务必确保正确安装LLVM-14、Clang-14、CMake和Ninja。  
# 实验方法
```
python3 setup.py build  
python3 runtests.py  
```
# LLVMLITE二次开发笔记
(1) 官方文档使用的是Visual Studio进行编译，如果未安装Visual Studio而直接运行python setup.py build会报错；解决方法是改用CMake作为项目管理器，Ninja作为代码生成器，改用clang作为编译器，那么就需要对llvmlite/ffi/build.py进行如下修改：  

第76行：注释掉原先的编译器  
('Ninja', None, None)  

第104行：clang编译的文件名和目录结构与msvc不一样  
shutil.copy(os.path.join(build_dir, 'libllvmlite.dll'), os.path.join(target_dir, 'llvmlite.dll'))  

第110行：在Linux平台改为默认使用Ninja作为代码生成器  
generator = 'Ninja'  

第120行：在Linux平台改为默认使用CMake作为项目管理器  
if os.environ.get("LLVMLITE_USE_CMAKE", "1") == "1":  

(2) 如需更换LLVM-Lite项目的说明文档以及其编码，对setup.py进行如下修改：  
第184行：更换说明文档的文件名和编码  
with open('README.md', encoding='UTF-8') as f:  

(3) 在Windows平台编译的dll文件有可能无法加载进内存，主要原因是dll文件的依赖不在系统目录，于是python的dll加载器找不到依赖文件而报错；解决方法是把依赖文件（例如libc++.dll和libunwind.dll等）拷贝到llvmlite\binding目录下即可。  

(4) 二次开发需要在FFI/Value.cpp中额外引入头文件llvm/IR/DebugInfoMetadata.h。  

(5) LLVM-14的预编译工程可能存在漏洞，因此需要参考llvmlite官网打补丁，而手动下载的llvm-project文件目录和patch文件里的目录不一致，因此补丁命令需要改为patch -p2 -i {patch-file}。  
## 1、关联LLVMIR指令与源程序行号
首先，需要在FFI/Value.cpp中开放LLVMGetDebugLocLine相关API；
```c
API_EXPORT(unsigned)
LLVMPY_GetDebugLocLine(LLVMValueRef Val) { return LLVMGetDebugLocLine(Val); }
```
接着，需要在llvmlite/binding/value.py中调用相关API；
```python
def get_location(self):
    # 形式参数的情况
    if self.is_argument:
        return ffi.lib.LLVMPY_GetDebugLocLine(self.function)
    # 基本块的情况
    if self.is_block:
        return ffi.lib.LLVMPY_GetDebugLocLine(self.function)
    # 操作数的情况
    if self.is_operand:
        return ffi.lib.LLVMPY_GetDebugLocLine(self.instruction)
    # 全局变量、函数和指令的情况
    return ffi.lib.LLVMPY_GetDebugLocLine(self)
```
最后，在llvmlite/binding/Value.py文件的最后，添加API调用的类型声明：
```python
ffi.lib.LLVMPY_GetDebugLocLine.argtypes = [ffi.LLVMValueRef]
ffi.lib.LLVMPY_GetDebugLocLine.restype = c_uint
```
## 2、关联LLVMIR指令与源程序文件名
首先，需要在FFI/Value.cpp中开放LLVMGetDebugLocFilename相关API：
```c
API_EXPORT(const char *)
LLVMPY_GetDebugLocFilename(LLVMValueRef Val)
{
    unsigned int Length = 0;
    if (const char *str = LLVMGetDebugLocFilename(Val, &Length)) {
        return LLVMPY_CreateString(str);
    }
    return LLVMPY_CreateString("");
}
```
接着，需要在llvmlite/binding/value.py中调用相关API：
```python
def get_filename(self):
    # 形式参数的情况
    if self.is_argument:
        return ffi.ret_string(ffi.lib.LLVMPY_GetDebugLocFilename(self.function))
    # 基本块的情况
    if self.is_block:
        return ffi.ret_string(ffi.lib.LLVMPY_GetDebugLocFilename(self.function))
    # 操作数的情况
    if self.is_operand:
        return ffi.ret_string(ffi.lib.LLVMPY_GetDebugLocFilename(self.instruction))
    # 全局变量、函数和指令的情况
    return ffi.ret_string(ffi.lib.LLVMPY_GetDebugLocFilename(self))
```
最后，在llvmlite/binding/Value.py文件的最后，添加API调用的类型声明：
```c
ffi.lib.LLVMPY_GetDebugLocFilename.argtypes = [ffi.LLVMValueRef]
ffi.lib.LLVMPY_GetDebugLocFilename.restype = c_void_p
```
## 3、常量表达式
首先，需要在FFI/Value.cpp中创建相关API：
```c
API_EXPORT(LLVMValueRef)
LLVMPY_GetConstInstruction(LLVMValueRef Val, LLVMValueRef Ins)
{
    llvm::ConstantExpr *CE = llvm::unwrap<llvm::ConstantExpr>(Val);
    llvm::Instruction *IB = llvm::unwrap<llvm::Instruction>(Ins);
    return llvm::wrap(CE->getAsInstruction(IB));
}
```
接着，需要在llvmlite/binding/Value.py中调用相关API：
```python
def get_constant_instruction(self):
    if self.value_kind != ValueKind.constant_expr:
        raise ValueError('expected constant expression, got %s'
                            % (self._kind,))
    it = ffi.lib.LLVMPY_GetConstInstruction(self, self.instruction)
    parents = self.instruction._parents.copy()
    return ValueRef(it, 'instruction', parents)
```
最后，在llvmlite/binding/Value.py文件的最后，添加API调用的类型声明：
```python
ffi.lib.LLVMPY_GetConstInstruction.argtypes = [ffi.LLVMValueRef, ffi.LLVMValueRef]
ffi.lib.LLVMPY_GetConstInstruction.restype = ffi.LLVMValueRef
```
## 4、读取源程序变量声明
首先，需要在FFI/Value.cpp中创建相关API：
```c
API_EXPORT(const char *)
LLVMPY_GetVariableName(LLVMValueRef Val)
{
    LLVMMetadataRef md = LLVMValueAsMetadata(Val);
    if (const llvm::DILocalVariable *DLV = llvm::unwrap<llvm::DILocalVariable>(md)) {
        return LLVMPY_CreateString(DLV->getName().str().c_str());
    }
    return LLVMPY_CreateString("");
}
```
然后，需要在llvmlite/binding/Value.py中调用相关API：
```python
def get_variable_name(self):
    if self.value_kind != ValueKind.metadata_as_value:
        raise ValueError('expected DIVariable metadata, got %s'
                            % (self._kind,))
    return ffi.ret_string(ffi.lib.LLVMPY_GetVariableName(self))
```
最后，在llvmlite/binding/Value.py文件的最后，添加API调用的类型声明：
```c
ffi.lib.LLVMPY_GetVariableName.argtypes = [ffi.LLVMValueRef]
ffi.lib.LLVMPY_GetVariableName.restype = c_void_p
```
## 5、解析ValueAsMetadata
首先，需要在FFI/Value.cpp中创建相关API：
```c
API_EXPORT(LLVMValueRef)
LLVMPY_GetValueFromMetadata(LLVMValueRef Val)
{
    LLVMMetadataRef md = LLVMValueAsMetadata(Val);
    if (const llvm::ValueAsMetadata *VAM = llvm::unwrap<llvm::ValueAsMetadata>(md)) {
        return llvm::wrap(VAM->getValue());
    }
    return nullptr;
}
```
然后，需要在llvmlite/binding/Value.py中调用相关API：
```python
def get_value_from_metadata(self):
    if self.value_kind != ValueKind.metadata_as_value:
        raise ValueError('expected value as metadata, got %s'
                            % (self._kind,))
    it = ffi.lib.LLVMPY_GetValueFromMetadata(self)
    parents = self._parents.copy()
    return ValueRef(it, 'instruction', parents)
```
最后，在llvmlite/binding/Value.py文件的最后，添加API调用的类型声明：
```c
ffi.lib.LLVMPY_GetValueFromMetadata.argtypes = [ffi.LLVMValueRef]
ffi.lib.LLVMPY_GetValueFromMetadata.restype = ffi.LLVMValueRef
```