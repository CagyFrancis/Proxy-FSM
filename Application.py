import time
import os.path
from io import StringIO
from Base import Statistic
from Interface import Interpreter
from Abstraction import Statement, Summary, Query

### 指针分析器 ###
class Analyzer:
    ## 分析数据成员 ##
    __statistic__:Statistic = Statistic()           # 统计分析器
    __interpreter__:Interpreter = Interpreter()     # LLVM-IR解析器
    __summary__:Summary = Summary()                 # 函数摘要抽象
    __statement__:Statement = Statement()           # 程序状态抽象
    __queries__:list[Query] = list()                # 查询任务抽象
    ## 测试数据成员 ##
    __name__:str = ''                               # 测试集名称
    __source__:str = ''                             # 源文件名称
    __queryTime__:float = 0                         # 查询任务计时器
    __proxyTime__:float = 0                         # 代理任务计时器

    ## 初始化指针分析器 ##
    def initialize(self, file:str):
        # 初始化测试数据
        self.__source__ = ''
        # 读取工作目录
        basedir = os.path.dirname(__file__)
        # 读取文件名和扩展名
        root, ext = os.path.splitext(file)
        # 扩展名判定
        if ext not in ['.c', '.cpp', '.h']:
            print(f"!- Fatal Error -> File {file} does not a C/C++ language source file")
            return
        # 计算bc文件路径
        path = os.path.join(basedir, 'test-suite', 'src-bc', self.__name__, f'{root}.bc')
        # 判断文件存在性
        if not os.path.exists(path):
            print(f"!- Fatal Error -> File {path} does not exist")
            return
        # 初始化测试数据
        self.__source__ = os.path.basename(file)
        self.__queryTime__ = 0
        self.__proxyTime__ = 0
        # 初始化分析数据
        self.__interpreter__.initialize(path)
        self.__statement__.initialize(self.__interpreter__)
        self.__summary__.initialize(self.__interpreter__)
        self.__queries__.clear()
        # 统计解析器数据
        self.__interpreter__.statistic(self.__statistic__)

    ## 创建查询任务 ##
    def addQuery(self, location:int, variable:str, sample:set = set()):
        # 计算源程序行号编码
        key = f'{self.__source__}:{location}'
        # 读取LLVM-IR地址行号
        address = self.__interpreter__.getAddress(key)
        # 程序点存在性判定
        if address == 0:
            print(f'!- Program Point {location} does not exist')
            return
        # 读取作用域
        scope = self.__interpreter__.getScope(address)
        # 全局变量判定
        if variable.startswith('@'):
            name = variable
        else:
            name = f'{scope}:{variable}'
        # 读取LLVM-IR变量信息
        symbol = self.__interpreter__.getValue(name)
        # 变量存在性判定
        if symbol == '':
            print(f'!- Variable {variable} does not exist')
            return
        # 读取元素类型
        struct = self.__interpreter__.getStruct(symbol)
        # 指针变量判定
        if not struct.element_type.is_pointer:
            print(f'!- Variable {variable} does not a pointer')
            return
        # 更新查询任务
        self.__queries__.append(Query(address, symbol, location, variable, sample))

    ## 指针分析 ##
    def analysis(self, verbose:int = 0):
        # 读取默认路径
        source = self.__interpreter__.getSource()
        # 默认路径判定
        if source == '':
            return
        # 过程内数据流迭代阶段
        self.__statement__.analysis()
        # 函数摘要生成阶段
        start = time.perf_counter()
        self.__summary__.transition()
        self.__proxyTime__ = time.perf_counter() - start
        # 跨过程数据流迭代阶段
        self.__summary__.analysis()
        # 更新跨过程查询任务阶段
        start = time.perf_counter()
        list(map(lambda x: x.updateStatement(self.__statement__), self.__queries__))
        list(map(lambda x: x.updateSummary(self.__summary__), self.__queries__))
        self.__queryTime__ = time.perf_counter() - start
        # 更新统计分析器阶段
        self.__statement__.statistic(self.__statistic__)
        self.__summary__.statistic(self.__statistic__)
        self.__statistic__.setQueryTime(self.__queryTime__)
        self.__statistic__.setProxyTime(self.__proxyTime__)
        # 测试验证阶段
        self.__verify__(verbose)
        # 展示数据判定
        if verbose <= 1:
            return
        # 展示数据阶段
        list(map(self.__display__, self.__queries__))

    ## 保存统计数据 ##
    def save(self, file:str = ''):
        # 自定义路径判定
        if file != '':
            self.__statistic__.save(file, self.__name__)
            return
        # 读取默认路径
        source = self.__interpreter__.getSource()
        # 默认路径判定
        if source == '':
            return
        # 读取文件名和扩展名
        root, _ = os.path.splitext(source)
        # 保存统计数据
        self.__statistic__.save(f'{root}.txt', self.__name__)

    ## 添加测试集 ##
    def addBenchmark(self, name:str):
        # 显示统计数据
        self.__statistic__.display(self.__name__)
        # 更新测试集名称
        self.__name__ = name
        # 初始化统计分析器
        self.__statistic__.initialize()

    ## 添加源文件名称 ##
    def addSource(self, source:str):
        # 修改源文件名称
        self.__source__ = source

    ## 标准构造函数 ##
    def __init__(self, name:str):
        # 初始化测试数据
        self.__name__ = name
        self.__source__ = ''
        self.__proxyTime__ = 0
        self.__queryTime__ = 0
        # 初始化分析数据
        self.__statistic__ = Statistic()
        self.__interpreter__ = Interpreter()
        self.__summary__ = Summary()
        self.__statement__ = Statement()
        self.__queries__ = list()

    ## 测试验证 ##
    def __verify__(self, verbose:int):
        # 读取指向信息表
        entity = map(lambda x: x.getEntity(), self.__queries__)
        # 读取测试样例表
        sample = map(lambda x: x.getSample(), self.__queries__)
        # 测试验证
        result = list(map(self.__isSimilar__, entity, sample))
        # 筛选查询任务
        total = len(result)
        success = result.count(True)
        failure = result.count(False)
        # 更新统计分析器
        self.__statistic__.setSuccess(success)
        self.__statistic__.setFailure(failure)
        # 展示数据判定
        if verbose == 0:
            return
        # 计算时间字符串
        string = self.__strTime__(self.__queryTime__ + self.__proxyTime__)
        # 读取源程序文件名
        source = self.__interpreter__.getSource()
        # 查询任务判定
        if total == 0:
            print(f'!- {string} -> {source} -- error')
        elif failure == 0:
            print(f'-- {string} -> {source} -- pass')
        else:
            print(f'!- {string} -> {source} -- fail')

    ## 展示测试结果 ##
    def __display__(self, query:Query):
        # 初始化字符串
        buffer = StringIO()
        # 写入提示信息
        buffer.write('#- Program Point "')
        buffer.write(str(query.getLocation()))
        buffer.write('" -> The Variable "')
        buffer.write(query.getVariable())
        buffer.write('" May Points To: ')
        # 写入指向信息
        buffer.write(str(set(map(self.__symbolize__, query.getEntity()))))
        buffer.write('; The Generator is: ')
        buffer.write(str(set(map(self.__symbolize__, query.getProxy()))))
        # 保存字符串
        string = buffer.getvalue()
        # 释放资源
        buffer.close()
        # 展示数据成员
        print(string)

    ## 相似性判定 ##
    def __isSimilar__(self, entity:set[str], sample:set[str]):
        # 返回测试结果
        return sample == set(map(self.__symbolize__, entity))

    ## 符号化内存地址 ##
    def __symbolize__(self, symbol:str) -> str:
        # 读取源程序变量名
        variable = self.__interpreter__.getVariable(symbol)
        # 变量存在性判定
        if variable != '':
            return variable
        # 计算调用信息表
        context = list(map(self.__interpreter__.getLocation, self.__interpreter__.getContext(symbol)))
        # 返回字符串
        return f'{symbol}:{context}'

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