import time
import itertools
from Interface import Interpreter
from Base import Core, Instruction, Statistic


### 程序状态抽象 ###
class Statement(Core):
    ## 核心数据成员 ##
    __symbol__:dict[str, set[str]] = dict()                         # 变量符号表
    __pointer__:dict[str, set[str]] = dict()                        # 指针变量表
    __iteration__:dict[str, bool] = dict()                          # 差分信息表
    ## 基本块数据成员 ##
    __block__:dict[int, str] = dict()                               # 基本块信息表
    __access__:dict[str, set[str]] = dict()                         # 基本块可达表
    ## 指令数据成员 ##
    __define__:dict[str, set[str]] = dict()                         # 定义信息表
    __reference__:dict[str, set[str]] = dict()                      # 引用信息表
    __instruction__:dict[tuple[str, str], Instruction] = dict()     # 指令信息表
    ## 变量数据成员 ##
    __field__:dict[str, str] = dict()                               # 结构信息表
    __proxy__:dict[str, str] = dict()                               # 代理变量表
    __position__:dict[str, set[int]] = dict()                       # 程序位置表
    ## 统计数据成员 ##
    __intraCount__:int = 0                                          # 过程内迭代计数器
    __intraQuery__:int = 0                                          # 流敏感查询计数器
    __intraTime__:float = 0                                         # 过程内分析计时器

    ## 初始化程序状态 ##
    def initialize(self, program:Interpreter):
        # 初始化核心数据
        self.__symbol__ = program.initEntity()
        self.__pointer__ = program.initPointer()
        self.__iteration__ = program.initIteration()
        # 初始化基本块数据
        self.__block__ = program.initBlock()
        self.__access__ = program.initAccess()
        # 初始化指令数据
        self.__define__ = program.initDefine()
        self.__reference__ = program.initReference()
        self.__instruction__ = program.initInstruction()
        # 初始化变量数据
        self.__field__ = program.initField()
        self.__proxy__ = program.initProxy()
        self.__position__ = program.initPosition()
        # 初始化统计数据
        self.__intraCount__ = 0
        self.__intraQuery__ = 0
        self.__intraTime__ = 0

    ## 过程内分析主函数 ##
    def analysis(self):
        # 读取拓扑信息
        worklist = self.__getTopology__()
        # 读取配置信息
        configure = self.__getConfigure__(worklist)
        # 初始化开始时间戳
        start = time.perf_counter()
        # 过程内数据流迭代
        while len(configure) > 0:
            # 应用传递规则
            list(map(lambda x: self.__transfer__(x[0], x[1]), configure))
            # 更新配置信息
            configure = self.__getConfigure__(worklist)
        # 记录过程内分析时间
        self.__intraTime__ = time.perf_counter() - start

    ## 读取指针信息表 ##
    def getPointer(self, address:int, src:str):
        # 计算核心数据表
        symbol = self.__symbol__.get(src, set())
        pointer = self.__pointer__.get(src, set())
        proxy = map(lambda x: self.__proxy__.get(x, ''), symbol)
        # 计算配置信息
        configure = itertools.chain(pointer, filter(lambda x: x != '', proxy))
        # 返回指针信息表
        return set(filter(lambda x: any(map(lambda y: self.__isReachable__(y, address), self.__position__[x])), configure))

    ## 更新统计数据 ##
    def statistic(self, recorder:Statistic):
        # 更新过程内迭代次数
        recorder.setIntraCount(self.__intraCount__)
        # 更新流敏感查询次数
        recorder.setIntraQuery(self.__intraQuery__)
        # 更新过程内分析时间
        recorder.setIntraTime(self.__intraTime__)

    ## 标准构造函数 ##
    def __init__(self):
        # 初始化核心数据
        self.__symbol__ = dict()
        self.__pointer__ = dict()
        self.__iteration__ = dict()
        # 初始化基本块数据
        self.__block__ = dict()
        self.__access__ = dict()
        # 初始化指令数据
        self.__define__ = dict()
        self.__reference__ = dict()
        self.__instruction__ = dict()
        # 初始化变量数据
        self.__field__ = dict()
        self.__proxy__ = dict()
        self.__position__ = dict()
        # 初始化统计数据
        self.__intraCount__ = 0
        self.__intraQuery__ = 0
        self.__intraTime__ = 0

    ## 读取拓扑信息 ##
    def __getTopology__(self):
        # 计算拓扑信息
        worklist = list(map(lambda x: (x[0], len(x[1])), self.__reference__.items()))
        # 逆拓扑排序
        worklist.sort(key=lambda x: x[1])
        # 返回拓扑信息
        return list(map(lambda x: x[0], worklist))

    ## 读取配置信息 ##
    def __getConfigure__(self, worklist:list[str]) -> list[tuple[str, str]]:
        # 计算配置信息
        configure = list(filter(lambda x: self.__iteration__[x] == False, worklist))
        # 返回配置信息
        return sum(map(lambda x: list(map(lambda y: (x, y), self.__define__[x])), configure), [])

    ## 应用传递规则 ##
    def __transfer__(self, src:str, dst:str):
        # 更新过程内迭代次数
        self.__intraCount__ += 1
        # 解析指令信息
        instruction = self.__instruction__[(src, dst)]
        opcode = instruction.getOpcode()
        address = instruction.getAddress()
        # store规则
        if opcode == 'store':
            self.__storeRule__(src, dst, address)
        # load规则
        elif opcode == 'load':
            self.__loadRule__(src, dst, address)
        # getelementptr规则
        elif opcode == 'getelementptr':
            self.__elementRule__(src, dst, address)
        # bitcast规则
        elif opcode == 'bitcast':
            self.__bitcastRule__(src, dst, address)
        # select规则
        elif opcode == 'select':
            self.__selectRule__(src, dst, address)
        # phi规则
        elif opcode == 'phi':
            self.__phiRule__(src, dst, address)
        # 更新差分信息表
        else:
            self.__iteration__[src] = True

    ## store规则 ##
    def __storeRule__(self, src:str, dst:str, adr:int):
        # 解析变量信息
        src_entity = self.__symbol__[src]
        dst_entity = self.__symbol__[dst]
        dst_pointer = list(map(lambda x: self.__pointer__[x], dst_entity))
        # 更新程序位置表
        list(map(lambda x: self.__position__[x].add(adr), src_entity))
        # 更新差分信息表
        self.__iteration__[src] = True
        self.__iteration__[dst] = all(map(lambda x: src_entity.issubset(x), dst_pointer))
        # 更新变量信息表
        list(map(lambda x: x.update(src_entity), dst_pointer))

    ## load规则 ##
    def __loadRule__(self, src:str, dst:str, adr:int):
        # 解析变量信息
        src_entity = self.__symbol__[src]
        dst_entity = self.__symbol__[dst]
        src_pointer = list(map(lambda x: self.__pointer__[x], src_entity))
        # 更新代理信息表
        proxy = map(lambda x: self.__proxy__.get(x, ''), src_entity)
        src_pointer.append(set(filter(lambda x: x != '', proxy)))
        # 更新差分信息表
        self.__iteration__[src] = True
        self.__iteration__[dst] = all(map(lambda x: x.issubset(dst_entity), src_pointer))
        # 更新变量信息表
        list(map(lambda x: dst_entity.update(x), src_pointer))

    ## getelementptr规则 ##
    def __elementRule__(self, src:str, dst:str, adr:int):
        # 解析变量信息
        src_entity = self.__symbol__[src]
        dst_entity = self.__symbol__[dst]
        # 更新差分信息表
        self.__iteration__[src] = True
        self.__iteration__[dst] = src_entity.issubset(dst_entity)
        # 更新变量信息表
        dst_entity.update(src_entity)

    ## bitcast规则 ##
    def __bitcastRule__(self, src:str, dst:str, adr:int):
        # 解析变量信息
        src_entity = self.__symbol__[src]
        dst_entity = self.__symbol__[dst]
        # 更新差分信息表
        self.__iteration__[src] = True
        self.__iteration__[dst] = src_entity.issubset(dst_entity)
        # 更新变量信息表
        dst_entity.update(src_entity)

    ## select规则 ##
    def __selectRule__(self, src:str, dst:str, adr:int):
        # 解析变量信息
        src_entity = self.__symbol__[src]
        dst_entity = self.__symbol__[dst]
        # 更新差分信息表
        self.__iteration__[src] = True
        self.__iteration__[dst] = src_entity.issubset(dst_entity)
        # 更新变量信息表
        dst_entity.update(src_entity)

    ## phi规则 ##
    def __phiRule__(self, src:str, dst:str, adr:int):
        # 解析变量信息
        src_entity = self.__symbol__[src]
        dst_entity = self.__symbol__[dst]
        # 更新差分信息表
        self.__iteration__[src] = True
        self.__iteration__[dst] = src_entity.issubset(dst_entity)
        # 更新变量信息表
        dst_entity.update(src_entity)

    ## 可达性判定 ##
    def __isReachable__(self, src:int, dst:int):
        # 更新流敏感查询数
        self.__intraQuery__ += 1
        # 读取基本块信息
        src_block = self.__block__[src]
        dst_block = self.__block__[dst]
        # 无基本块判定
        if src_block == '' or dst_block == '':
            return False
        # 基本块可达性判定
        if dst_block in self.__access__[src_block]:
            return True
        # 基本块不可达判定
        if src_block != dst_block:
            return False
        # 返回可达性判定
        return src <= dst


### 函数摘要抽象 ###
class Summary(Core):
    ## 核心数据成员 ##
    __state__:dict[str, set[str]] = dict()                              # 有限状态机
    __define__:dict[str, set[str]] = dict()                             # 定义信息表
    __reference__:dict[str, set[str]] = dict()                          # 引用信息表
    __iteration__:dict[str, bool] = dict()                              # 差分信息表
    ## 变量数据成员 ##
    __entity__:dict[str, set[str]] = dict()                             # 实体变量表
    __proxy__:dict[str, str] = dict()                                   # 代理变量表
    __context__:dict[str, set[int]] = dict()                            # 调用信息表
    __argument__:dict[tuple[str, str, int], set[str]] = dict()          # 参数信息表
    ## 统计数据成员 ##
    __interCount__:int = 0                                              # 跨过程迭代计数器
    __interQuery__:int = 0                                              # 上下文敏感查询数
    __interTime__:float = 0                                             # 跨过程分析计时器

    ## 初始化函数摘要 ##
    def initialize(self, program:Interpreter):
        # 初始化核心数据
        self.__state__.clear()
        self.__define__.clear()
        self.__reference__.clear()
        self.__iteration__.clear()
        # 初始化变量数据
        self.__entity__ = program.initEntity()
        self.__proxy__ = program.initProxy()
        self.__context__ = program.initContext()
        self.__argument__ = program.initArgument()
        # 初始化统计数据
        self.__interCount__ = 0
        self.__interQuery__ = 0
        self.__interTime__ = 0

    ## 应用代理规则 ##
    def transition(self):
        # 初始化核心数据
        self.__state__ = self.__initState__()
        self.__define__ = self.__initDefine__()
        self.__reference__ = self.__initReference__()
        # 更新函数摘要
        list(map(self.__updateEntity__, self.__entity__.values()))
        list(map(self.__updateArgument__, self.__argument__.values()))
        # 初始化差分信息表
        self.__iteration__ = self.__initIteration__()

    ## 跨过程分析主函数 ##
    def analysis(self):
        # 读取拓扑信息
        worklist = self.__getTopology__()
        # 读取配置信息
        configure = self.__getConfigure__(worklist)
        # 初始化开始时间戳
        start = time.perf_counter()
        # 过程内数据流迭代
        while len(configure) > 0:
            # 应用传递规则
            list(map(lambda x: self.__transfer__(x[0], x[1]), configure))
            # 更新配置信息
            configure = self.__getConfigure__(worklist)
        # 记录跨过程分析时间
        self.__interTime__ = time.perf_counter() - start

    ## 读取实体变量 ##
    def getEntity(self, src:str):
        # 返回实体变量
        return set(filter(lambda x: self.__isReachable__(src, x), self.__state__[src]))

    ## 更新统计数据 ##
    def statistic(self, recorder:Statistic):
        # 更新过程内迭代计算次数
        recorder.setInterCount(self.__interCount__)
        # 更新过程内迭代计算次数
        recorder.setInterQuery(self.__interQuery__)
        # 更新过程内分析时间
        recorder.setInterTime(self.__interTime__)

    ## 标准构造函数 ##
    def __init__(self):
        # 初始化核心数据
        self.__state__ = dict()
        self.__define__ = dict()
        self.__reference__ = dict()
        self.__iteration__ = dict()
        # 初始化变量数据
        self.__entity__ = dict()
        self.__proxy__ = dict()
        self.__context__ = dict()
        self.__argument__ = dict()
        # 初始化统计数据
        self.__interCount__ = 0
        self.__interQuery__ = 0
        self.__interTime__ = 0

    ## 初始化定义信息表 ##
    def __initDefine__(self) -> dict[str, set[str]]:
        # 返回定义信息表
        return dict(map(lambda x: (x, set()), self.__proxy__))

    ## 初始化引用信息表 ##
    def __initReference__(self) -> dict[str, set[str]]:
        # 返回引用信息表
        return dict(map(lambda x: (x, set()), self.__proxy__))

    ## 初始化有限状态机 ##
    def __initState__(self) -> dict[str, set[str]]:
        # 返回有限状态机
        return dict(map(lambda x: (x, set()), self.__proxy__))

    ## 初始化差分信息表 ##
    def __initIteration__(self) -> dict[str, bool]:
        # 返回差分信息表
        return dict(map(lambda x: (x[0], x[1] == set()), self.__state__.items()))

    ## 读取拓扑信息 ##
    def __getTopology__(self):
        # 计算环境信息
        worklist = list(map(lambda x: (x[0], len(x[1])), self.__reference__.items()))
        # 逆拓扑排序
        worklist.sort(key=lambda x: x[1])
        # 返回环境信息
        return list(map(lambda x: x[0], worklist))

    ## 读取配置信息 ##
    def __getConfigure__(self, worklist:list[str]):
        # 计算配置信息
        configure = filter(lambda x: self.__iteration__[x] == False, worklist)
        # 返回配置信息
        return sum(map(lambda x: list(map(lambda y: (x, y), self.__define__[x])), configure), [])

    ## 应用传递规则 ##
    def __transfer__(self, src:str, dst:str):
        # 更新跨过程迭代计算次数
        self.__interCount__ += 1
        # 读取状态信息表
        src_state = self.__state__[src]
        dst_state = self.__state__[dst]
        # 更新调用信息表
        context = self.__context__[src]
        list(map(lambda x: self.__context__[x].update(context), src_state))
        # 更新差分信息表
        self.__iteration__[src] = True
        # 迭代不动点判定
        if src_state.issubset(dst_state):
            return
        # 更新状态信息表
        dst_state.update(src_state)
        self.__iteration__[dst] = False

    ## 提取参数信息摘要 ##
    def __updateArgument__(self, proxy:set[str]):
        # 筛选传递函数
        input_proxy = list(filter(self.__isPatternInput__, proxy))
        output_proxy = list(filter(self.__isPatternOutput__, proxy))
        # 更新传递函数
        list(map(lambda x: self.__define__[x].update(output_proxy), input_proxy))
        list(map(lambda x: self.__reference__[x].update(input_proxy), output_proxy))

    ## 提取实体变量摘要 ##
    def __updateEntity__(self, symbol:set[str]):
        # 筛选函数摘要
        entity = list(filter(self.__isEntity__, symbol))
        proxy = list(filter(self.__isProxy__, symbol))
        # 更新状态节点
        list(map(lambda x: self.__state__[x[1]].add(x[0]), itertools.product(entity, proxy)))
        # 筛选传递函数
        input_proxy = list(filter(self.__isProxyInput__, proxy))
        output_proxy = list(filter(self.__isProxyOutput__, proxy))
        # 更新传递函数
        list(map(lambda x: self.__define__[x].update(output_proxy), input_proxy))
        list(map(lambda x: self.__reference__[x].update(input_proxy), output_proxy))

    ## 可达性判定 ##
    def __isReachable__(self, src:str, dst:str):
        # 更新上下文敏感查询次数
        self.__interQuery__ += 1
        # 调用上下文判定
        if not self.__context__[src].issubset(self.__context__[dst]):
            return False
        # 条件满足
        return True

    ## 调用信息判定 ##
    def __hasContext__(self, src:str):
        # 返回调用信息判定
        return self.__context__[src] != set()

    ## 传递函数输入判定 ##
    def __isProxyInput__(self, src:str):
        # 形式参数判定
        if self.__isArgument__(src) and not self.__hasContext__(src):
            return True
        # 返回参数判定
        elif self.__isReturn__(src) and self.__hasContext__(src):
            return True
        # 条件未满足
        else:
            return False

    ## 传递函数输出判定 ##
    def __isProxyOutput__(self, src:str):
        # 形式参数判定
        if self.__isArgument__(src) and self.__hasContext__(src):
            return True
        # 返回参数判定
        elif self.__isReturn__(src) and not self.__hasContext__(src):
            return True
        # 条件未满足
        else:
            return False

    ## 模式输入判定 ##
    def __isPatternInput__(self, src:str):
        # 形式参数判定
        if self.__isArgument__(src) and self.__hasContext__(src):
            return True
        # 返回参数判定
        elif self.__isReturn__(src) and not self.__hasContext__(src):
            return True
        # 条件未满足
        else:
            return False

    ## 模式输出判定 ##
    def __isPatternOutput__(self, src:str):
        # 形式参数判定
        if self.__isArgument__(src) and not self.__hasContext__(src):
            return True
        # 返回参数判定
        elif self.__isReturn__(src) and self.__hasContext__(src):
            return True
        # 条件未满足
        else:
            return False


### 查询任务抽象 ###
class Query(Core):
    ## 核心数据成员 ##
    __address__:int = 0                     # 程序位置
    __symbol__:str = ''                     # 指针符号
    __proxy__:set[str] = set()              # 代理变量集
    __entity__:set[str] = set()             # 实体变量集
    ## 测试数据成员 ##
    __location__:int = 0                    # 源程序行号
    __variable___:str = ''                  # 源程序变量
    __sample__:set[str] = set()             # 测试样例集

    ## 更新程序状态 ##
    def updateStatement(self, state:Statement):
        # 解析程序状态
        pointer = state.getPointer(self.__address__, self.__symbol__)
        # 更新代理信息集
        self.__proxy__.update(filter(self.__isProxy__, pointer))
        # 更新指向信息集
        self.__entity__.update(filter(self.__isEntity__, pointer))

    ## 更新函数摘要 ##
    def updateSummary(self, summary:Summary):
        # 读取实体变量集
        entity = map(summary.getEntity, self.__proxy__)
        # 更新指向信息集
        list(map(self.__entity__.update, entity))

    ## 读取测试样例 ##
    def getSample(self):
        # 返回测试样例
        return self.__sample__

    ## 读取指向信息 ##
    def getEntity(self):
        # 返回指向信息
        return self.__entity__

    ## 读取代理信息 ##
    def getProxy(self):
        # 返回代理信息
        return self.__proxy__

    ## 读取程序位置 ##
    def getLocation(self):
        # 返回程序位置
        return self.__location__

    ## 读取变量信息 ##
    def getVariable(self):
        # 返回变量信息
        return self.__variable__

    ## 标准构造函数 ##
    def __init__(self, address:int, symbol:str, location:int, variable:str, sample:set[str]):
        # 初始化核心数据
        self.__address__ = address
        self.__symbol__ = symbol
        self.__proxy__ = set()
        self.__entity__ = set()
        # 初始化测试数据
        self.__location__ = location
        self.__variable__ = variable
        self.__sample__ = sample