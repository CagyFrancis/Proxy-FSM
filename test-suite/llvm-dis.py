import os
import subprocess

# 启用测试集
worklist = ['array-tests',
            'basic-tests',
            'complex-tests',
            'context-tests',
            'global-tests',
            'heap-tests',
            'master-tests',
            'path-tests',
            'project-tests',
            'struct-tests'
            ]
worklist = ['project-tests']
# 读取工作目录
basedir = os.path.dirname(__file__)
# 主循环
for item in worklist:
    # 计算测试集目录
    srcdir = os.path.join(basedir, 'src-bc', item)
    txtdir = os.path.join(basedir, 'src-ll', item)
    # 测试集目录判定
    if not os.path.exists(srcdir):
        continue
    # 读取测试集列表
    srclist = os.listdir(srcdir)
    # 创建文本目录
    if not os.path.exists(txtdir):
        os.mkdir(txtdir)
    # 反编译测试集
    for target in srclist:
        # 计算测试样例信息
        name, ext = os.path.splitext(target)
        # 选择反编译器
        if ext != '.bc':
            continue
        # 计算输入输出目录
        inp = os.path.join(srcdir, f'{name}.bc')
        txt = os.path.join(txtdir, f'{name}.ll')
        # 编译开始
        print(f'-- Disassembling {inp}', end=' ')
        # 优化.bc二进制文件
        args = ['opt', '-mem2reg', inp, '-o', inp]
        subprocess.run(args)
        # 生成.ll文本文件
        args = ['llvm-dis', inp, '-o', txt]
        subprocess.run(args)
        # 反编译结束
        print('-- done')

# 编译结束
print(f'-> Files have been written to: {txtdir}')