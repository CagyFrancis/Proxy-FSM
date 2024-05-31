import time
import os.path
import itertools
import llvmlite.binding as llvmlite
from Base import Instruction, Statistic

### LLVM-IR解析器 ###
class Interpreter:
    ## 模块数据成员 ##
    __number__:int = 0                                              # 符号索引
    __quantity__:int = 0                                            # 指令索引
    __global__:set[str] = set()                                     # 全局变量
    __depth__:dict[str, int] = dict()                               # 调用深度
    __library__:dict[str, set[str]] = dict()                        # 外部方法表
    __function__:dict[str, set[str]] = dict()                       # 本地方法表
    ## 基本块数据成员 ##
    __scope__:dict[int, str] = dict()                               # 作用域信息表
    __block__:dict[int, str] = dict()                               # 基本块信息表
    __access__:dict[str, set[str]] = dict()                         # 基本块可达表
    __linkage__:dict[str, set[str]] = dict()                        # 基本块链接表
    ## 指令数据成员 ##
    __define__:dict[str, set[str]] = dict()                         # 定义信息表
    __reference__:dict[str, set[str]] = dict()                      # 引用信息表
    __instruction__:dict[tuple[str, str], Instruction] = dict()     # 指令信息表
    ## 变量数据成员 ##
    __field__:dict[str, str] = dict()                               # 结构信息表
    __entity__:dict[str, set[str]] = dict()                         # 实体变量表
    __position__:dict[str, set[int]] = dict()                       # 程序位置表
    __struct__:dict[str, llvmlite.TypeRef] = dict()                 # 类型信息表
    ## 代理数据成员 ##
    __proxy__:dict[str, str] = dict()                               # 代理变量表
    __context__:dict[str, set[int]] = dict()                        # 调用信息表
    __argument__:dict[tuple[str, str, int], set[str]] = dict()      # 参数信息表
    ## 调试数据成员 ##
    __address__:dict[str, int] = dict()                             # 源程序代码行号 -> LLVM-IR指令行号
    __location__:dict[int, int] = dict()                            # LLVM-IR指令行号 -> 源程序代码行号
    __value__:dict[str, str] = dict()                               # 源程序变量名 -> LLVM-IR变量名
    __variable__:dict[str, str] = dict()                            # LLVM-IR变量名 -> 源程序变量名
    ## 测试数据成员 ##
    __source__:str = ''                                             # 程序文件名
    __parseTime__:float = 0                                         # LLVM-LITE计时器
    __initTime__:float = 0                                          # 预处理过程计时器
    __inCallSite__:int = 0                                          # 本地调用点统计器
    __exCallSite__:int = 0                                          # 外部调用点统计器
    __ptCallSite__:int = 0                                          # 指针调用点统计器

    ## 初始化LLVM-IR解析器 ##
    def initialize(self, file:str):
        # 初始化模块数据
        self.__number__ = 0
        self.__quantity__ = 0
        self.__depth__.clear()
        self.__library__.clear()
        self.__function__.clear()
        self.__global__.clear()
        # 初始化基本块数据
        self.__scope__.clear()
        self.__block__.clear()
        self.__access__.clear()
        self.__linkage__.clear()
        # 初始化指令数据
        self.__define__.clear()
        self.__reference__.clear()
        self.__instruction__.clear()
        # 初始化变量数据
        self.__field__.clear()
        self.__struct__.clear()
        self.__entity__.clear()
        self.__position__.clear()
        # 初始化代理数据
        self.__proxy__.clear()
        self.__context__.clear()
        self.__argument__.clear()
        # 初始化调试数据
        self.__address__.clear()
        self.__location__.clear()
        self.__value__.clear()
        self.__variable__.clear()
        # 初始化测试数据
        self.__source__ = ''
        self.__inCallSite__ = 0
        self.__exCallSite__ = 0
        self.__ptCallSite__ = 0
        # 初始化开始时间戳
        start = time.perf_counter()
        # 解析LLVM-IR文件
        module = self.__parseFile__(file)
        # 记录LLVM-LITE总时间
        self.__parseTime__ = time.perf_counter() - start
        # 解析模块数据
        self.__parseModule__(module)
        # 记录初始化总时间
        self.__initTime__ = time.perf_counter() - self.__parseTime__ - start

    ## 初始化基本块信息表 ##
    def initBlock(self) -> dict[int, str]:
        # 返回基本块信息表
        return self.__block__

    ## 初始化基本块可达表 ##
    def initAccess(self) -> dict[str, set[str]]:
        # 返回基本块信息表
        return self.__access__

    ## 初始化实体变量表 ##
    def initEntity(self) -> dict[str, set[str]]:
        # 返回实体变量表
        return self.__entity__

    ## 初始化调用信息表 ##
    def initContext(self) -> dict[str, set[int]]:
        # 返回调用信息表
        return self.__context__

    ## 初始化程序位置表 ##
    def initPosition(self) -> dict[str, set[int]]:
        # 返回类型信息表
        return self.__position__

    ## 初始化结构信息表 ##
    def initField(self) -> dict[str, str]:
        # 返回结构信息表
        return self.__field__

    ## 初始化指针变量表 ##
    def initPointer(self) -> dict[str, set[str]]:
        # 返回指针变量表
        return dict(map(lambda x: (x, set()), itertools.chain(self.__entity__, self.__proxy__)))

    ## 初始化差分信息表 ##
    def initIteration(self) -> dict[str, bool]:
        # 返回差分信息表
        return dict(map(lambda x: (x[0], x[1] == set()), self.__entity__.items()))

    ## 初始化代理变量表 ##
    def initProxy(self) -> dict[str, str]:
        # 返回代理变量表
        return self.__proxy__

    ## 初始化参数信息表 ##
    def initArgument(self) -> dict[tuple[str, str, int], set[str]]:
        # 返回参数信息表
        return self.__argument__

    ## 初始化定义信息表 ##
    def initDefine(self) -> dict[str, set[str]]:
        # 返回定义信息表
        return self.__define__

    ## 初始化引用信息表 ##
    def initReference(self) -> dict[str, set[str]]:
        # 返回引用信息表
        return self.__reference__

    ## 初始化指令信息表 ##
    def initInstruction(self) -> dict[tuple[str, str], Instruction]:
        # 返回指令信息表
        return self.__instruction__

    ## 读取类型信息表 ##
    def getStruct(self, src:str) -> llvmlite.TypeRef:
        # 返回类型信息表
        return self.__struct__[src]

    ## 读取调用信息表 ##
    def getContext(self, src:str) -> set[int]:
        # 返回调用信息表
        return self.__context__[src]

    ## 读取作用域 ##
    def getScope(self, src:int):
        # 返回作用域
        return self.__scope__[src]

    ## 读取基本块 ##
    def getBlock(self, src:int):
        # 返回基本块
        return self.__block__[src]

    ## 读取LLVM-IR行号 ##
    def getAddress(self, src:str):
        # 返回源程序行号
        return self.__address__.get(src, 0)

    ## 读取源程序行号 ##
    def getLocation(self, src:int):
        # 返回源程序行号
        return self.__location__[src]

    ## 读取LLVM-IR变量名 ##
    def getValue(self, src:str):
        # 返回LLVM-IR变量名
        return self.__value__.get(src, '')

    ## 读取源程序变量名 ##
    def getVariable(self, src:str):
        # 返回源程序行号
        return self.__variable__.get(src, '')

    ## 读取源程序文件名 ##
    def getSource(self):
        # 返回源程序文件名
        return self.__source__

    ## 更新统计数据 ##
    def statistic(self, recorder:Statistic):
        # 更新测试样例数
        recorder.setSample(1)
        # 更新基本块数
        recorder.setBlock(len(self.__linkage__))
        # 更新代码行数
        recorder.setLine(len(self.__address__))
        # 更新指令行数
        recorder.setQuantity(self.__quantity__)
        # 更新实体变量数
        recorder.setEntity(len(self.__entity__))
        # 更新代理变量数
        recorder.setProxy(len(self.__proxy__))
        # 更新全局变量数
        recorder.setGlobal(len(self.__global__))
        # 更新本地方法数
        recorder.setFunction(len(self.__function__))
        # 更新外部方法数
        recorder.setLibrary(len(self.__library__))
        # 更新调用深度
        recorder.setDepth(max(self.__depth__.values()))
        # 更新本地方法调用数
        recorder.setInCallSite(self.__inCallSite__)
        # 更新外部方法调用数
        recorder.setExCallSite(self.__exCallSite__)
        # 更新外部方法调用数
        recorder.setPtCallSite(self.__ptCallSite__)
        # 更新LLVM-LITE计时器
        recorder.setParseTime(self.__parseTime__)
        # 更新初始化计时器
        recorder.setInitTime(self.__initTime__)

    ## 标准构造函数 ##
    def __init__(self):
        # 初始化模块数据
        self.__number__ = 0
        self.__quantity__ = 0
        self.__depth__ = dict()
        self.__library__ = dict()
        self.__function__ = dict()
        self.__global__ = set()
        # 初始化基本块数据
        self.__scope__ = dict()
        self.__block__ = dict()
        self.__access__ = dict()
        self.__linkage__ = dict()
        # 初始化指令数据
        self.__define__ = dict()
        self.__reference__ = dict()
        self.__instruction__ = dict()
        # 初始化变量数据
        self.__struct__ = dict()
        self.__field__ = dict()
        self.__entity__ = dict()
        self.__position__ = dict()
        # 初始化代理数据
        self.__proxy__ = dict()
        self.__context__ = dict()
        self.__argument__ = dict()
        # 初始化调试数据
        self.__address__ = dict()
        self.__location__ = dict()
        self.__value__ = dict()
        self.__variable__ = dict()
        # 初始化测试数据
        self.__source__ = ''
        self.__parseTime__ = 0
        self.__initTime__ = 0
        self.__inCallSite__ = 0
        self.__exCallSite__ = 0
        self.__ptCallSite__ = 0

    ## 文件解析器 ##
    def __parseFile__(self, file:str):
        # 文件存在性判定
        if not os.path.exists(file):
            print(f"!- LLVM FATAL ERROR -> FILE {file} DOES NOT EXIST")
            return None
        # 读取扩展名
        _, ext = os.path.splitext(file)
        # 判断文件类型
        if ext == '.ll':
            # 读取LLVM IR文本文件
            fs = open(file, 'rt')
            llvm_ir = fs.read()
            fs.close()
            # 解析LLVM IR文本文件
            module = llvmlite.parse_assembly(llvm_ir)
        elif ext == '.bc':
            # 读取LLVM IR二进制文件
            fs = open(file, 'rb')
            llvm_bc = fs.read()
            fs.close()
            # 解析LLVM IR二进制文件
            module = llvmlite.parse_bitcode(llvm_bc)
        else:
            return None
        # 验证模块
        module.verify()
        # 保存文件路径
        self.__source__ = file
        # 返回LLVM模块数据
        return module

    ## 模块解析器 ##
    def __parseModule__(self, module:llvmlite.ModuleRef | None):
        # 异常判定
        if module == None:
            return
        # 解析全局变量
        list(map(self.__globalRule__, module.global_variables))
        list(map(self.__defineRule__, module.functions))
        # 解析函数信息
        list(map(self.__parseFunction__, module.functions))
        # 应用传递规则
        list(map(lambda x: self.__transfer__(x[0], x[1]), self.__access__.items()))
        # 更新调用深度
        self.__depth__.update(map(lambda x: (x, self.__getDepth__(x, set())), self.__function__))

    ## 函数解析器 ##
    def __parseFunction__(self, func:llvmlite.ValueRef):
        # 更新地址标记
        self.__quantity__ += 1
        # 解析形式参数信息
        self.__argumentRule__(func)
        # 解析基本块信息
        list(map(self.__parseBlock__, func.blocks))

    ## 基本块解析器 ##
    def __parseBlock__(self, blk:llvmlite.ValueRef):
        # 更新地址标记
        self.__quantity__ += 1
        # 解析基本块信息
        self.__blockRule__(blk)
        # 解析指令信息
        list(map(self.__parseInstruction__, blk.instructions))

    ## 指令解析器 ##
    def __parseInstruction__(self, ins:llvmlite.ValueRef):
        # 更新地址标记
        self.__quantity__ += 1
        # 解析指令信息
        opcode = ins.opcode
        # 数据流迭代规则
        if opcode == 'alloca':
            self.__allocaRule__(ins)
        elif opcode == 'store':
            self.__storeRule__(ins)
        elif opcode == 'load':
            self.__loadRule__(ins)
        elif opcode == 'getelementptr':
            self.__elementRule__(ins)
        elif opcode == 'bitcast':
            self.__bitcastRule__(ins)
        elif opcode == 'call':
            self.__callRule__(ins)
        elif opcode == 'ret':
            self.__retRule__(ins)
        elif opcode == 'br':
            self.__branchRule__(ins)
        elif opcode == 'switch':
            self.__branchRule__(ins)
        elif opcode == 'select':
            self.__selectRule__(ins)
        elif opcode == 'phi':
            self.__phiRule__(ins)
        elif opcode == 'inttoptr':
            self.__int2ptrRule__(ins)
        elif opcode == 'extractvalue':
            self.__extractRule__(ins)
        else:
            return

    ## 全局变量规则 ##
    def __globalRule__(self, glb:llvmlite.ValueRef):
        # 更新地址标记
        self.__quantity__ += 1
        # 解析调试信息
        self.__getDebug__(glb)
        # 解析全局变量信息
        ty = self.__getType__(glb)
        val = self.__getEntity__(glb)
        # 更新指令信息表
        self.__define__[val] = set()
        self.__reference__[val] = set()
        # 更新模块信息表
        self.__global__.add(val)
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = {val}
        self.__context__[val] = set()
        self.__position__[val] = set()
        # 更新调试信息表
        self.__value__[val] = val
        self.__variable__[val] = val[1:]

    ## define规则 ##
    def __defineRule__(self, func:llvmlite.ValueRef):
        # 更新地址标记
        self.__quantity__ += 1
        # 解析调试信息
        self.__getDebug__(func)
        # 解析函数信息
        ty = self.__getType__(func)
        val = self.__getEntity__(func)
        # 更新模块信息表
        if func.is_declaration:
            self.__library__[val] = set()
        else:
            self.__function__[val] = set()
        # 更新指令信息表
        self.__define__[val] = set()
        self.__reference__[val] = set()
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = {val}
        self.__context__[val] = set()
        self.__position__[val] = set()
        # 更新调试信息表
        self.__value__[val] = val
        self.__variable__[val] = val[1:]

    ## argument规则 ##
    def __argumentRule__(self, func:llvmlite.ValueRef):
        # 解析调试信息
        list(map(self.__getDebug__, func.arguments))
        # 解析函数信息
        scp = self.__getEntity__(func)
        # 解析参数信息
        arguments = list(filter(self.__isPointer__, func.arguments))
        entity = list(map(self.__getEntity__, arguments))
        struct = list(map(self.__getType__, arguments))
        proxy = list(map(lambda x, y: self.__getProxy__(scp, x+1, set(), y), range(len(arguments)), struct))
        # 更新指令信息表
        self.__define__.update(map(lambda x: (x, set()), entity))
        self.__reference__.update(map(lambda x: (x, set()), entity))
        # 更新变量信息表
        self.__struct__.update(zip(entity, struct))
        self.__field__.update(map(lambda x: (x, '!0'), entity))
        self.__entity__.update(map(lambda x, y: (x, {y}), entity, proxy))
        self.__context__.update(map(lambda x: (x, set()), entity))
        self.__position__.update(map(lambda x: (x, set()), entity))

    ## block规则 ##
    def __blockRule__(self, blk:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(blk)
        # 解析指令信息
        scp = self.__getEntity__(blk)
        # 更新基本块信息表
        self.__access__[scp] = set()
        self.__linkage__[scp] = set()

    ## branch规则 ##
    def __branchRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 解析指令信息
        scp = self.__getEntity__(ins.block)
        # 解析参数信息
        blocks = filter(lambda x: x.type.type_kind == llvmlite.TypeKind.label, ins.operands)
        # 更新基本块信息表
        self.__linkage__[scp].update(map(self.__getEntity__, blocks))

    ## 应用传递规则 ##
    def __transfer__(self, task:str, iteration:set[str]):
        # 读取配置信息
        configure = list(filter(lambda x: x not in iteration, self.__linkage__[task]))
        # 更新迭代不动点
        iteration.update(configure)
        # 深度优先遍历
        list(map(lambda x: self.__transfer__(x, iteration), configure))

    ## 读取最大调用深度 ##
    def __getDepth__(self, task:str, iteration:set[str]):
        # 读取配置信息
        configure = list(filter(lambda x: x not in iteration, self.__function__[task]))
        # 递归终止判定
        if len(configure) == 0:
            return 0
        # 更新迭代不动点
        iteration.update(configure)
        # 返回调用深度
        return max(list(map(lambda x: self.__getDepth__(x, iteration), configure))) + 1

    ## alloca规则 ##
    def __allocaRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = {val}
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__reference__[val] = set()

    ## store规则 ##
    def __storeRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(operands[0])
        val = self.__getEntity__(operands[1])
        sym = self.__getEntity__(operands[0])
        # 指针类型判定
        if not self.__isPointer__(operands[0]):
            return
        # 更新指令信息表
        self.__define__[sym].add(val)
        self.__reference__[val].add(sym)
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'store', list())

    ## load规则 ##
    def __loadRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        sym = self.__getEntity__(operands[0])
        # 指针类型判定
        if not self.__isPointer__(ins):
            return
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__define__[sym].add(val)
        self.__reference__[val] = {sym}
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'load', list())

    ## getelementptr规则 ##
    def __elementRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        sym = self.__getEntity__(operands[0])
        arg = list(map(self.__getElements__, operands[1:]))
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__define__[sym].add(val)
        self.__reference__[val] = {sym}
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'getelementptr', arg)

    ## bitcast规则 ##
    def __bitcastRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        sym = self.__getEntity__(operands[0])
        # 指针类型判定
        if not self.__isPointer__(ins):
            return
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__define__[sym].add(val)
        self.__reference__[val] = {sym}
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'bitcast', list())

    ## call规则 ##
    def __callRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        scp = self.__getEntity__(ins.function)
        site = self.__getEntity__(operands[-1])
        # 本地方法调用
        if site in self.__function__:
            self.__inCallSite__ += 1
            self.__function__[scp].add(site)
            self.__functionRule__(ins, operands)
        # 外部方法调用
        elif site in self.__library__:
            self.__exCallSite__ += 1
            self.__library__[site].add(scp)
            self.__libraryRule__(ins, operands)
        # 指针方法调用
        else:
            self.__ptCallSite__ += 1
            self.__pointerRule__(ins, operands)

    ## pointer规则 ##
    def __pointerRule__(self, ins:llvmlite.ValueRef, operands:list[llvmlite.ValueRef]):
        # 解析指令信息
        adr = self.__quantity__
        scp = self.__getEntity__(operands[-1])
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 指针类型判定
        if self.__isPointer__(ins):
            # 更新变量信息表
            self.__struct__[val] = ty
            self.__field__[val] = '!0'
            self.__entity__[val] = {self.__getProxy__(scp, 0, {adr}, ty)}
            self.__context__[val] = set()
            self.__position__[val] = {adr}
            # 更新指令信息表
            self.__define__[val] = set()
            self.__reference__[val] = set()
        # 解析参数信息
        arguments = list(filter(self.__isPointer__, operands[:-1]))
        entity = list(map(self.__getEntity__, arguments))
        struct = list(map(self.__getType__, arguments))
        proxy = list(map(lambda x, y: self.__getProxy__(scp, x+1, {adr}, y), range(len(arguments)), struct))
        # 更新变量信息表
        list(map(lambda x, y: self.__entity__[x].add(y), entity, proxy))

    ## function规则 ##
    def __functionRule__(self, ins:llvmlite.ValueRef, operands:list[llvmlite.ValueRef]):
        # 解析指令信息
        adr = self.__quantity__
        scp = self.__getEntity__(operands[-1])
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 指针类型判定
        if self.__isPointer__(ins):
            # 更新变量信息表
            self.__struct__[val] = ty
            self.__field__[val] = '!0'
            self.__entity__[val] = {self.__getProxy__(scp, 0, {adr}, ty)}
            self.__context__[val] = set()
            self.__position__[val] = {adr}
            # 更新指令信息表
            self.__define__[val] = set()
            self.__reference__[val] = set()
        # 解析参数信息
        arguments = list(filter(self.__isPointer__, operands[:-1]))
        entity = list(map(self.__getEntity__, arguments))
        struct = list(map(self.__getType__, arguments))
        proxy = list(map(lambda x, y: self.__getProxy__(scp, x+1, {adr}, y), range(len(arguments)), struct))
        # 更新变量信息表
        list(map(lambda x, y: self.__entity__[x].add(y), entity, proxy))

    ## library规则 ##
    def __libraryRule__(self, ins:llvmlite.ValueRef, operands:list[llvmlite.ValueRef]):
        # 解析指令信息
        adr = self.__quantity__
        scp = self.__getEntity__(operands[-1])
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 指针类型判定
        if self.__isPointer__(ins):
            # 更新变量信息表
            self.__struct__[val] = ty
            self.__field__[val] = '!0'
            self.__entity__[val] = {val}
            self.__context__[val] = set()
            self.__position__[val] = {adr}
            # 更新指令信息表
            self.__define__[val] = set()
            self.__reference__[val] = set()
            # 计算字典主键
            key = f'{scp}:$0:{adr}'
            # 更新调试信息表
            self.__value__[key] = val
            self.__variable__[val] = key[1:]
        # llvm.dbg.declare方法判定
        if scp == '@llvm.dbg.declare':
            self.__declareRule__(operands[0], operands[1])
        # llvm.memcpy方法判定
        if scp == '@llvm.memcpy.p0i8.p0i8.i64':
            self.__memcpyRule__(operands[0], operands[1])

    ## declare规则 ##
    def __declareRule__(self, sym:llvmlite.ValueRef, var:llvmlite.ValueRef):
        # 解析LLVM-IR变量声明
        medadata = sym.get_value_from_metadata()
        variable = var.get_variable_name()
        # 解析指令信息
        scp = self.__getEntity__(sym.function)
        val = self.__getEntity__(medadata)
        # 计算字典主键
        key = f'{scp}:{variable}'
        # 更新变量映射表
        self.__value__[key] = val
        self.__variable__[val] = key[1:]

    ## memcpy规则 ##
    def __memcpyRule__(self, src:llvmlite.ValueRef, dst:llvmlite.ValueRef):
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(src)
        val = self.__getEntity__(src)
        sym = self.__getEntity__(dst)
        # 更新指令信息表
        self.__define__[val].add(sym)
        self.__reference__[sym].add(val)
        self.__instruction__[(val, sym)] = Instruction(adr, str(ty), 'memcpy', list())

    ## return规则 ##
    def __retRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 解析指令信息
        scp = self.__getEntity__(ins.function)
        # 解析参数信息
        arguments = list(filter(self.__isPointer__, ins.operands))
        entity = list(map(self.__getEntity__, arguments))
        struct = list(map(self.__getType__, arguments))
        proxy = list(map(lambda x, y: self.__getProxy__(scp, x, set(), y), range(len(arguments)), struct))
        # 更新变量信息表
        list(map(lambda x, y: self.__entity__[x].add(y), entity, proxy))

    ## select规则 ##
    def __selectRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 指针类型判定
        if not self.__isPointer__(ins):
            return
        # 解析参数信息
        entity = set(map(self.__getEntity__, operands[1:]))
        instruction = Instruction(adr, str(ty), 'select', list())
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        list(map(lambda x: self.__define__[x].add(val), entity))
        self.__reference__[val] = entity
        self.__instruction__.update(zip(zip(entity, itertools.repeat(val)), itertools.repeat(instruction)))

    ## phi规则 ##
    def __phiRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 指针类型判定
        if not self.__isPointer__(ins):
            return
        # 解析参数信息
        entity = set(map(self.__getEntity__, ins.operands))
        instruction = Instruction(adr, str(ty), 'phi', list())
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        list(map(lambda x: self.__define__[x].add(val), entity))
        self.__reference__[val] = entity
        self.__instruction__.update(zip(zip(entity, itertools.repeat(val)), itertools.repeat(instruction)))

    ## int2ptr规则 ##
    def __int2ptrRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = {val}
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__reference__[val] = set()
        # 更新调试信息表
        self.__variable__[val] = 'null'

    ## extract规则 ##
    def __extractRule__(self, ins:llvmlite.ValueRef):
        # 解析调试信息
        self.__getDebug__(ins)
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = self.__getEntity__(ins)
        sym = self.__getEntity__(operands[0])
        # 指针类型判定
        if not self.__isPointer__(ins):
            return
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__define__[sym].add(val)
        self.__reference__[val] = {sym}
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'bitcast', list())

    ## 常量表达式规则 ##
    def __getConstantExpr__(self, val:llvmlite.ValueRef):
        # 解析指令信息
        ins = val.get_constant_instruction()
        opcode = ins.opcode
        # 规则匹配
        if opcode == 'getelementptr':
            return self.__constElementRule__(ins)
        elif opcode == 'bitcast':
            return self.__constBitcastRule__(ins)
        else:
            return self.__getConstantNull__(ins)

    ## 常量Null规则 ##
    def __getConstantNull__(self, ins:llvmlite.ValueRef):
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = f'%{self.__number__}'
        self.__number__ += 1
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = {val}
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__reference__[val] = set()
        # 更新调试信息表
        self.__variable__[val] = 'null'
        # 返回常量符号
        return val

    ## 常量getelementptr规则 ##
    def __constElementRule__(self, ins:llvmlite.ValueRef):
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = f'%{self.__number__}'
        self.__number__ += 1
        sym = self.__getEntity__(operands[0])
        arg = list(map(self.__getElements__, operands[1:]))
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__define__[sym].add(val)
        self.__reference__[val] = {sym}
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'getelementptr', arg)
        # 返回常量符号
        return val

    ## 常量bitcast规则 ##
    def __constBitcastRule__(self, ins:llvmlite.ValueRef):
        # 读取操作数列表
        operands = list(ins.operands)
        # 解析指令信息
        adr = self.__quantity__
        ty = self.__getType__(ins)
        val = f'%{self.__number__}'
        self.__number__ += 1
        sym = self.__getEntity__(operands[0])
        # 指针类型判定
        if not self.__isPointer__(ins):
            return val
        # 更新变量信息表
        self.__struct__[val] = ty
        self.__field__[val] = '!0'
        self.__entity__[val] = set()
        self.__context__[val] = set()
        self.__position__[val] = {adr}
        # 更新指令信息表
        self.__define__[val] = set()
        self.__define__[sym].add(val)
        self.__reference__[val] = {sym}
        self.__instruction__[(sym, val)] = Instruction(adr, str(ty), 'bitcast', list())
        # 返回常量符号
        return val

    ## Elements解析器 ##
    def __getElements__(self, opd:llvmlite.ValueRef):
        # 解析参数信息
        val = self.__getEntity__(opd)
        # 数字类型判定
        if val.isdigit():
            return int(val)
        # 条件未满足
        return 0

    ## 指针类型判定器 ##
    def __isPointer__(self, val:llvmlite.ValueRef) -> bool:
        # 返回指针类型
        return val.type.is_pointer

    ## 变量类型解析器 ##
    def __getType__(self, val:llvmlite.ValueRef) -> llvmlite.TypeRef:
        # 返回变量类型
        return val.type

    ## 实体变量解析器 ##
    def __getEntity__(self, val:llvmlite.ValueRef) -> str:
        # 读取全局变量名
        if val.value_kind == llvmlite.ValueKind.global_variable:
            return f'@{val.name}'
        # 读取函数名
        if val.value_kind == llvmlite.ValueKind.function:
            return f'@{val.name}'
        # 读取临时变量名
        if val.name != '':
            return str(val.name)
        # 重命名函数参数
        if val.value_kind == llvmlite.ValueKind.argument:
            name = f'%{self.__number__}'
            self.__number__ += 1
            val.name = name
            return name
        # 重命名基本块
        if val.value_kind == llvmlite.ValueKind.basic_block:
            name = f'%{self.__number__}'
            self.__number__ += 1
            val.name = name
            return name
        # 重命名指令
        if val.value_kind == llvmlite.ValueKind.instruction:
            # 无类型指令判定
            if val.type.type_kind == llvmlite.TypeKind.void:
                return ''
            # 有类型指令
            name = f'%{self.__number__}'
            self.__number__ += 1
            val.name = name
            return name
        # 读取数值常量
        if val.value_kind == llvmlite.ValueKind.constant_int:
            return str(val.get_constant_value())
        # 读取空指针常量
        if val.value_kind == llvmlite.ValueKind.constant_pointer_null:
            return self.__getConstantNull__(val)
        # 读取表达式常量
        if val.value_kind == llvmlite.ValueKind.constant_expr:
            return self.__getConstantExpr__(val)
        # 异常返回
        return ''

    ## 代理变量解析器 ##
    def __getProxy__(self, scope:str, index:int, context:set[int], struct:llvmlite.TypeRef):
        # 指针类型判定
        if not struct.is_pointer:
            return ''
        # 计算代理变量名
        if index == 0:
            name = f'#{self.__number__}'
        else:
            name = f'${self.__number__}'
        # 更新符号索引
        self.__number__ += 1
        # 更新变量信息表
        self.__field__[name] = '!0'
        self.__struct__[name] = struct
        self.__position__[name] = {self.__quantity__}
        # 更新代理信息表
        key = (str(struct), scope, index)
        argument = self.__argument__.get(key, set())
        argument.add(name)
        self.__argument__[key] = argument
        self.__context__[name] = context.copy()
        self.__proxy__[name] = self.__getProxy__(scope, index, context, struct.element_type)
        # 返回代理变量
        return name

    ## 调试信息解析器 ##
    def __getDebug__(self, val:llvmlite.ValueRef):
        # 解析调试信息
        address = self.__quantity__
        location = val.get_location()
        filename = os.path.basename(val.get_filename())
        key = f'{filename}:{location}'
        # 解析全局变量
        if val.value_kind == llvmlite.ValueKind.global_variable:
            # 更新地址映射表
            self.__scope__[address] = '@'
            self.__block__[address] = ''
            self.__address__[key] = address
            self.__location__[address] = location
            return
        # 解析函数信息
        if val.value_kind == llvmlite.ValueKind.function:
            # 更新地址映射表
            self.__scope__[address] = self.__getEntity__(val)
            self.__block__[address] = ''
            self.__address__[key] = address
            self.__location__[address] = location
            return
        # 解析形式参数信息
        if val.value_kind == llvmlite.ValueKind.argument:
            # 更新地址映射表
            self.__scope__[address] = self.__getEntity__(val.function)
            self.__block__[address] = ''
            return
        # 解析基本块信息
        if val.value_kind == llvmlite.ValueKind.basic_block:
            # 更新地址映射表
            self.__scope__[address] = self.__getEntity__(val.function)
            self.__block__[address] = self.__getEntity__(val)
            return
        # 解析指令信息
        if val.value_kind == llvmlite.ValueKind.instruction:
            # 更新地址映射表
            self.__scope__[address] = self.__getEntity__(val.function)
            self.__block__[address] = self.__getEntity__(val.block)
            # 调试信息存在性判定
            if location != 0 and filename != '':
                self.__address__[key] = address
                self.__location__[address] = location
            return