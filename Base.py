### 系统核心 ###
class Core:
    ## 代理变量判定 ##
    def __isProxy__(self, src:str):
        # 形式参数的情况
        if src.startswith('$'):
            return True
        # 返回值的情况
        if src.startswith('#'):
            return True
        # 条件未满足
        return False

    ## 实体变量判定 ##
    def __isEntity__(self, src:str):
        # 局部变量的情况
        if src.startswith('%'):
            return True
        # 全局变量的情况
        if src.startswith('@'):
            return True
        # 条件未满足
        return False

    ## 全局变量判定 ##
    def __isGlobal__(self, src:str):
        # 返回全局变量判定
        return src.startswith('@')

    ## 形式参数判定 ##
    def __isArgument__(self, src:str):
        # 返回形式参数判定
        return src.startswith('$')

    ## 返回参数判定 ##
    def __isReturn__(self, src:str):
        # 返回参数判定
        return src.startswith('#')

    '''
    ## 结构体索引判定 ##
    def hasField(self):
        # 长度判定
        if len(self.__field__) > 1:
            return True
        # 内容判定
        if self.__field__[0] > 0:
            return True
        # 条件未满足
        return False
    '''

### LLVM-IR指令抽象 ###
class Instruction:
    ## 数据成员 ##
    __address__:int = 0             # 程序位置
    __type__:str = ''               # 类型信息
    __opcode__:str = ''             # 操作码
    __operand__:list[int] = list()  # 操作数

    ## 读取程序位置 ##
    def getAddress(self):
        # 返回程序位置
        return self.__address__

    ## 读取类型信息 ##
    def getType(self):
        # 返回类型信息
        return self.__type__

    ## 读取操作码 ##
    def getOpcode(self):
        # 返回操作码
        return self.__opcode__

    ## 读取操作数 ##
    def getOperand(self):
        # 返回操作数
        return self.__operand__

    ## 标准构造函数 ##
    def __init__(self, address:int, struct:str, opcode:str, operand:list[int]):
        # 初始化数据成员
        self.__address__ = address
        self.__type__ = struct
        self.__opcode__ = opcode
        self.__operand__ = operand


### 统计分析器 ###
class Statistic:
    ## 模块数据成员 ##
    __sample__:int = 0                  # 测试集数
    __block__:int = 0                   # 基本块数
    __line__:int = 0                    # 代码行数
    __quantity__:int = 0                # 指令行数
    ## 变量数据成员 ##
    __entity__:int = 0                  # 实体变量数
    __proxy__:int = 0                   # 代理变量数
    __global__:int = 0                  # 全局变量数
    ## 调用数据成员 ##
    __depth__:int = 0                   # 调用深度
    __function__:int = 0                # 本地方法数
    __library__:int = 0                 # 外部方法数
    __inCallSite__:int = 0              # 本地方法调用数
    __exCallSite__:int = 0              # 外部方法调用数
    __ptCallSite__:int = 0              # 指针方法调用数
    ## 迭代数据成员 ##
    __intraCount__:int = 0              # 过程内迭代次数
    __interCount__:int = 0              # 跨过程迭代次数
    ## 查询数据成员 ##
    __intraQuery__:int = 0              # 流敏感查询数
    __interQuery__:int = 0              # 上下文敏感查询数
    __fieldQuery__:int = 0              # 域敏感查询数
    ## 时间数据成员 ##
    __parseTime__:float = 0             # LLVM-LITE时间
    __initTime__:float = 0              # 预处理分析时间
    __intraTime__:float = 0             # 过程内分析时间
    __interTime__:float = 0             # 跨过程分析时间
    __queryTime__:float = 0             # 查询任务时间
    __proxyTime__:float = 0             # 代理任务时间
    ## 测试数据成员 ##
    __success__:int = 0                 # 测试成功数
    __failure__:int = 0                 # 测试失败数

    ## 初始化测试统计器 ##
    def initialize(self):
        # 初始化模块数据
        self.__sample__ = 0
        self.__block__ = 0
        self.__line__ = 0
        self.__quantity__ = 0
        # 初始化变量数据
        self.__entity__ = 0
        self.__proxy__ = 0
        self.__global__ = 0
        # 初始化调用数据
        self.__depth__ = 0
        self.__function__ = 0
        self.__library__ = 0
        self.__inCallSite__ = 0
        self.__exCallSite__ = 0
        self.__ptCallSite__ = 0
        ## 初始化迭代数据
        self.__intraCount__ = 0
        self.__interCount__ = 0
        # 初始化查询数据
        self.__intraQuery__ = 0
        self.__interQuery__ = 0
        self.__fieldQuery__ = 0
        # 初始化时间数据
        self.__parseTime__ = 0
        self.__initTime__ = 0
        self.__intraTime__ = 0
        self.__interTime__ = 0
        self.__queryTime__ = 0
        self.__proxyTime__ = 0
        # 初始化测试数据
        self.__success__ = 0
        self.__failure__ = 0

    ## 更新测试样例数 ##
    def setSample(self, value:int):
        # 更新测试样例数
        self.__sample__ += value

    ## 更新基本块数 ##
    def setBlock(self, value:int):
        # 更新基本块数
        self.__block__ += value

    ## 更新代码行数 ##
    def setLine(self, value:int):
        # 更新代码行数
        self.__line__ += value

    ## 更新指令行数 ##
    def setQuantity(self, value:int):
        # 更新指令行数
        self.__quantity__ += value

    ## 更新实体变量数 ##
    def setEntity(self, value:int):
        # 更新实体变量数
        self.__entity__ += value

    ## 更新代理变量数 ##
    def setProxy(self, value:int):
        # 更新代理变量数
        self.__proxy__ += value

    ## 更新全局变量数 ##
    def setGlobal(self, value:int):
        # 更新全局变量数
        self.__global__ += value

    ## 更新调用深度 ##
    def setDepth(self, value:int):
        # 更新调用深度
        self.__depth__ += value

    ## 更新本地方法数 ##
    def setFunction(self, value:int):
        # 更新本地方法数
        self.__function__ += value

    ## 更新外部方法数 ##
    def setLibrary(self, value:int):
        # 更新外部方法数
        self.__library__ += value

    ## 更新本地方法调用数 ##
    def setInCallSite(self, value:int):
        # 更新本地方法调用数
        self.__inCallSite__ += value

    ## 更新外部方法调用数 ##
    def setExCallSite(self, value:int):
        # 更新外部方法调用数
        self.__exCallSite__ += value

    ## 更新指针方法调用数 ##
    def setPtCallSite(self, value:int):
        # 更新指针方法调用数
        self.__ptCallSite__ += value

    ## 更新过程内迭代计算次数 ##
    def setIntraCount(self, value:int):
        # 更新过程内迭代计算次数
        self.__intraCount__ += value

    ## 更新跨过程迭代计算次数 ##
    def setInterCount(self, value:int):
        # 更新跨过程迭代计算次数
        self.__interCount__ += value

    ## 更新过程内查询任务数 ##
    def setIntraQuery(self, value:int):
        # 更新过程内查询任务数
        self.__intraQuery__ += value

    ## 更新跨过程查询任务数 ##
    def setInterQuery(self, value:int):
        # 更新跨过程查询任务数
        self.__interQuery__ += value

    ## 更新域敏感查询任务数 ##
    def setFieldQuery(self, value:int):
        # 更新域敏感查询任务数
        self.__fieldQuery__ += value

    ## 更新LLVM-LITE计时器 ##
    def setParseTime(self, value:float):
        # 更新LLVM-LITE计时器
        self.__parseTime__ += value

    ## 更新预处理计时器 ##
    def setInitTime(self, value:float):
        # 更新预处理计时器
        self.__initTime__ += value

    ## 更新过程内分析计时器 ##
    def setIntraTime(self, value:float):
        # 更新过程内分析计时器
        self.__intraTime__ += value

    ## 更新跨过程分析计时器 ##
    def setInterTime(self, value:float):
        # 更新跨过程分析计时器
        self.__interTime__ += value

    ## 更新查询任务计时器 ##
    def setQueryTime(self, value:float):
        # 更新查询任务计时器
        self.__queryTime__ += value

    ## 更新代理任务计时器 ##
    def setProxyTime(self, value:float):
        # 更新代理任务计时器
        self.__proxyTime__ += value

    ## 更新成功测试数 ##
    def setSuccess(self, value:int):
        # 更新成功测试数
        self.__success__ += value

    ## 更新失败测试数 ##
    def setFailure(self, value:int):
        # 更新失败测试数
        self.__failure__ += value

    ## 保存数据成员 ##
    def save(self, file:str, name:str):
        # 创建文件对象
        obj = open(file, 'wt')
        # 显示分隔符
        print(f'============================{name}============================', file=obj)

        # 显示测试集数
        print(f'-> The total samples of {name} are: {self.__sample__}', file=obj)
        # 显示基本块数
        print(f'-> The total basic blocks of {name} are: {self.__block__}', file=obj)
        # 显示代码行数
        print(f'-> The total code lines of {name} are: {self.__line__}', file=obj)
        # 显示指令行数
        print(f'-> The total instructions of {name} are: {self.__quantity__}', file=obj)
        # 显示实体变量数
        print(f'-> The total entity variables of {name} are: {self.__entity__}', file=obj)
        # 显示代理变量数
        print(f'-> The total proxy variables of {name} are: {self.__proxy__}', file=obj)
        # 显示全局变量数
        print(f'-> The total global variables of {name} are: {self.__global__}', file=obj)

        # 显示本地方法数
        print(f'-> The total functions of {name} are: {self.__function__}', file=obj)
        # 显示外部方法数
        print(f'-> The total libraries of {name} are: {self.__library__}', file=obj)
        # 显示调用深度
        print(f'-> The total call depth of {name} are: {self.__depth__}', file=obj)
        # 显示调用点数
        total = self.__inCallSite__ + self.__exCallSite__ + self.__ptCallSite__
        print(f'-> The total call sites of {name} are: {total}', file=obj)
        # 显示本地方法调用点数
        scale = self.__getScale__(self.__inCallSite__, total)
        print(f'-> The total internal call sites of {name} are: {self.__inCallSite__}({scale:.2%})', file=obj)
        # 显示外部方法调用点数
        scale = self.__getScale__(self.__exCallSite__, total)
        print(f'-> The total external call sites of {name} are: {self.__exCallSite__}({scale:.2%})', file=obj)
        # 显示指针方法调用点数
        scale = self.__getScale__(self.__ptCallSite__, total)
        print(f'-> The total function pointer call sites of {name} are: {self.__ptCallSite__}({scale:.2%})', file=obj)

        # 显示迭代次数
        total = self.__intraCount__ + self.__interCount__
        print(f'-> The total iterative calculations of {name} are: {total}', file=obj)
        # 显示过程内迭代次数
        scale = self.__getScale__(self.__intraCount__, total)
        print(f'-> The total intra-procedural calculations of {name} are: {self.__intraCount__}({scale:.2%})', file=obj)
        # 显示跨过程迭代次数
        scale = self.__getScale__(self.__interCount__, total)
        print(f'-> The total inter-procedural calculations of {name} are: {self.__interCount__}({scale:.2%})', file=obj)

        # 显示查询任务数
        total = self.__intraQuery__ + self.__interQuery__ + self.__fieldQuery__
        print(f'-> The total pointer queries of {name} are: {total}', file=obj)
        # 显示流敏感查询数
        scale = self.__getScale__(self.__intraQuery__, total)
        print(f'-> The total flow-sensitive pointer queries of {name} are: {self.__intraQuery__}({scale:.2%})', file=obj)
        # 显示上下文敏感查询数
        scale = self.__getScale__(self.__interQuery__, total)
        print(f'-> The total context-sensitive pointer queries of {name} are: {self.__interQuery__}({scale:.2%})', file=obj)
        # 显示域敏感查询数
        scale = self.__getScale__(self.__fieldQuery__, total)
        print(f'-> The total field-sensitive pointer queries of {name} are: {self.__fieldQuery__}({scale:.2%})', file=obj)

        # 显示指针分析时间
        total = sum((self.__parseTime__, self.__initTime__,
                     self.__intraTime__, self.__interTime__,
                     self.__proxyTime__ , self.__queryTime__), 0)
        string = self.__strTime__(total)
        print(f'-> The total time of pointer analysis is: {string}', file=obj)
        # 显示LLVM-LITE时间
        scale = self.__getScale__(self.__parseTime__, total)
        string = self.__strTime__(self.__parseTime__)
        print(f'-> The total time of LLVM-IR IO stage is: {string}({scale:.2%})', file=obj)
        # 显示预处理分析时间
        scale = self.__getScale__(self.__initTime__, total)
        string = self.__strTime__(self.__initTime__)
        print(f'-> The total time of initialization stage is: {string}({scale:.2%})', file=obj)
        # 显示过程内分析时间
        scale = self.__getScale__(self.__intraTime__, total)
        string = self.__strTime__(self.__intraTime__)
        print(f'-> The total time of intra-procedural analysis stage is: {string}({scale:.2%})', file=obj)
        # 显示跨过程分析时间
        scale = self.__getScale__(self.__interTime__, total)
        string = self.__strTime__(self.__interTime__)
        print(f'-> The total time of inter-procedural analysis stage is: {string}({scale:.2%})', file=obj)
        # 显示代理任务时间
        scale = self.__getScale__(self.__proxyTime__, total)
        string = self.__strTime__(self.__proxyTime__)
        print(f'-> The total time of proxy stage is: {string}({scale:.2%})', file=obj)
        # 显示查询任务时间
        scale = self.__getScale__(self.__queryTime__, total)
        string = self.__strTime__(self.__queryTime__)
        print(f'-> The total time of query stage is: {string}({scale:.2%})', file=obj)

        # 显示指针分析平均时间
        scale = self.__getScale__(total, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of pointer analysis is: {string}', file=obj)
        # 显示LLVM-LITE平均时间
        scale = self.__getScale__(self.__parseTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of LLVM-IR IO stage is: {string}', file=obj)
        # 显示预处理分析平均时间
        scale = self.__getScale__(self.__initTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of initialization stage is: {string}', file=obj)
        # 显示过程内分析平均时间
        scale = self.__getScale__(self.__intraTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of intra-procedural analysis stage is: {string}', file=obj)
        # 显示跨过程分析平均时间
        scale = self.__getScale__(self.__interTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of inter-procedural analysis stage is: {string}', file=obj)
        # 显示代理任务平均时间
        scale = self.__getScale__(self.__proxyTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of proxy stage is: {string}', file=obj)
        # 显示查询任务平均时间
        scale = self.__getScale__(self.__queryTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of query stage is: {string}', file=obj)

        # 显示测试数
        total = self.__success__ + self.__failure__
        # 显示测试成功数
        scale = self.__getScale__(self.__success__, total)
        print(f'-> The total successful tests of {name} are: {self.__success__}({scale:.2%})', file=obj)
        # 显示测试失败数
        scale = self.__getScale__(self.__failure__, total)
        print(f'-> The total test failures of {name} are: {self.__failure__}({scale:.2%})', file=obj)

        # 显示分隔符
        print(f'============================{name}============================', file=obj)
        # 释放资源
        obj.close()

    ## 展示数据成员 ##
    def display(self, name:str):
        # 显示分隔符
        print(f'============================{name}============================')

        # 显示测试集数
        print(f'-> The total samples of {name} are: {self.__sample__}')
        # 显示基本块数
        print(f'-> The total basic blocks of {name} are: {self.__block__}')
        # 显示代码行数
        print(f'-> The total code lines of {name} are: {self.__line__}')
        # 显示指令行数
        print(f'-> The total instructions of {name} are: {self.__quantity__}')
        # 显示实体变量数
        print(f'-> The total entity variables of {name} are: {self.__entity__}')
        # 显示代理变量数
        print(f'-> The total proxy variables of {name} are: {self.__proxy__}')
        # 显示全局变量数
        print(f'-> The total global variables of {name} are: {self.__global__}')

        # 显示本地方法数
        print(f'-> The total functions of {name} are: {self.__function__}')
        # 显示外部方法数
        print(f'-> The total libraries of {name} are: {self.__library__}')
        # 显示调用深度
        print(f'-> The total call depth of {name} are: {self.__depth__}')
        # 显示调用点数
        total = self.__inCallSite__ + self.__exCallSite__ + self.__ptCallSite__
        print(f'-> The total call sites of {name} are: {total}')
        # 显示本地方法调用点数
        scale = self.__getScale__(self.__inCallSite__, total)
        print(f'-> The total internal call sites of {name} are: {self.__inCallSite__}({scale:.2%})')
        # 显示外部方法调用点数
        scale = self.__getScale__(self.__exCallSite__, total)
        print(f'-> The total external call sites of {name} are: {self.__exCallSite__}({scale:.2%})')
        # 显示指针方法调用点数
        scale = self.__getScale__(self.__ptCallSite__, total)
        print(f'-> The total function pointer call sites of {name} are: {self.__ptCallSite__}({scale:.2%})')

        # 显示迭代次数
        total = self.__intraCount__ + self.__interCount__
        print(f'-> The total iterative calculations of {name} are: {total}')
        # 显示过程内迭代次数
        scale = self.__getScale__(self.__intraCount__, total)
        print(f'-> The total intra-procedural calculations of {name} are: {self.__intraCount__}({scale:.2%})')
        # 显示跨过程迭代次数
        scale = self.__getScale__(self.__interCount__, total)
        print(f'-> The total inter-procedural calculations of {name} are: {self.__interCount__}({scale:.2%})')

        # 显示查询任务数
        total = self.__intraQuery__ + self.__interQuery__ + self.__fieldQuery__
        print(f'-> The total pointer queries of {name} are: {total}')
        # 显示流敏感查询数
        scale = self.__getScale__(self.__intraQuery__, total)
        print(f'-> The total flow-sensitive pointer queries of {name} are: {self.__intraQuery__}({scale:.2%})')
        # 显示上下文敏感查询数
        scale = self.__getScale__(self.__interQuery__, total)
        print(f'-> The total context-sensitive pointer queries of {name} are: {self.__interQuery__}({scale:.2%})')
        # 显示域敏感查询数
        scale = self.__getScale__(self.__fieldQuery__, total)
        print(f'-> The total field-sensitive pointer queries of {name} are: {self.__fieldQuery__}({scale:.2%})')

        # 显示指针分析时间
        total = sum((self.__parseTime__, self.__initTime__,
                     self.__intraTime__, self.__interTime__,
                     self.__proxyTime__ , self.__queryTime__), 0)
        string = self.__strTime__(total)
        print(f'-> The total time of pointer analysis is: {string}')
        # 显示LLVM-LITE时间
        scale = self.__getScale__(self.__parseTime__, total)
        string = self.__strTime__(self.__parseTime__)
        print(f'-> The total time of LLVM-IR IO stage is: {string}({scale:.2%})')
        # 显示预处理分析时间
        scale = self.__getScale__(self.__initTime__, total)
        string = self.__strTime__(self.__initTime__)
        print(f'-> The total time of initialization stage is: {string}({scale:.2%})')
        # 显示过程内分析时间
        scale = self.__getScale__(self.__intraTime__, total)
        string = self.__strTime__(self.__intraTime__)
        print(f'-> The total time of intra-procedural analysis stage is: {string}({scale:.2%})')
        # 显示跨过程分析时间
        scale = self.__getScale__(self.__interTime__, total)
        string = self.__strTime__(self.__interTime__)
        print(f'-> The total time of inter-procedural analysis stage is: {string}({scale:.2%})')
        # 显示代理任务时间
        scale = self.__getScale__(self.__proxyTime__, total)
        string = self.__strTime__(self.__proxyTime__)
        print(f'-> The total time of proxy stage is: {string}({scale:.2%})')
        # 显示查询任务时间
        scale = self.__getScale__(self.__queryTime__, total)
        string = self.__strTime__(self.__queryTime__)
        print(f'-> The total time of query stage is: {string}({scale:.2%})')

        # 显示指针分析平均时间
        scale = self.__getScale__(total, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of pointer analysis is: {string}')
        # 显示LLVM-LITE平均时间
        scale = self.__getScale__(self.__parseTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of LLVM-IR IO stage is: {string}')
        # 显示预处理分析平均时间
        scale = self.__getScale__(self.__initTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of initialization stage is: {string}')
        # 显示过程内分析平均时间
        scale = self.__getScale__(self.__intraTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of intra-procedural analysis stage is: {string}')
        # 显示跨过程分析平均时间
        scale = self.__getScale__(self.__interTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of inter-procedural analysis stage is: {string}')
        # 显示代理任务平均时间
        scale = self.__getScale__(self.__proxyTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of proxy stage is: {string}')
        # 显示查询任务平均时间
        scale = self.__getScale__(self.__queryTime__, self.__sample__)
        string = self.__strTime__(scale)
        print(f'-> The average time of query stage is: {string}')

        # 显示测试数
        total = self.__success__ + self.__failure__
        # 显示测试成功数
        scale = self.__getScale__(self.__success__, total)
        print(f'-> The total successful tests of {name} are: {self.__success__}({scale:.2%})')
        # 显示测试失败数
        scale = self.__getScale__(self.__failure__, total)
        print(f'-> The total test failures of {name} are: {self.__failure__}({scale:.2%})')

        # 显示分隔符
        print(f'============================{name}============================')

    ## 标准构造函数 ##
    def __init__(self):
        # 初始化模块数据
        self.__sample__ = 0
        self.__block__ = 0
        self.__line__ = 0
        self.__quantity__ = 0
        # 初始化变量数据
        self.__entity__ = 0
        self.__proxy__ = 0
        self.__global__ = 0
        # 初始化调用数据
        self.__depth__ = 0
        self.__function__ = 0
        self.__library__ = 0
        self.__inCallSite__ = 0
        self.__exCallSite__ = 0
        self.__ptCallSite__ = 0
        ## 初始化迭代数据 ##
        self.__intraCount__ = 0
        self.__interCount__ = 0
        # 初始化查询数据
        self.__intraQuery__ = 0
        self.__interQuery__ = 0
        self.__fieldQuery__ = 0
        # 初始化时间数据
        self.__parseTime__ = 0
        self.__initTime__ = 0
        self.__intraTime__ = 0
        self.__interTime__ = 0
        self.__queryTime__ = 0
        self.__proxyTime__ = 0
        # 初始化测试数据
        self.__success__ = 0
        self.__failure__ = 0

    ## 计算数据占比 ##
    def __getScale__(self, count:int|float, total:int|float):
        # 返回数据占比
        if total:
            return count / total
        else:
            return 0

    ## 计算时间字符串 ##
    def __strTime__(self, second:float):
        # 秒判定
        if second < 60:
            return f'{second:.3f} s'
        # 秒转分钟
        minute = second / 60
        second = second % 60
        # 分钟判定
        if minute < 60:
            return f'{minute:.0f} min {second:.0f} s'
        # 分钟转小时
        hour = minute / 60
        minute = minute % 60
        return f'{hour:.0f} h {minute:.0f} min {second:.0f} s'