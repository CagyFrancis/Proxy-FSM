from Application import Analyzer

# 创建指针分析器 #
myAnalyzer = Analyzer('basic-tests')

# branch-1.c测试 #
myAnalyzer.initialize('branch-1.c')
myAnalyzer.addQuery(18, '@p', {'main:c', 'main:d'})
myAnalyzer.analysis()

# branch-2.c测试 #
myAnalyzer.initialize('branch-2.c')
myAnalyzer.addQuery(21, 'c', {'null', 't'})
myAnalyzer.addQuery(21, 'd', {'null', 't'})
myAnalyzer.addQuery(21, 'x', {'main:a', 'main:d', 'main:c'})
myAnalyzer.analysis()

# branch-3.c测试 #
myAnalyzer.initialize('branch-3.c')
myAnalyzer.addQuery(13, 'n', {'main:y'})
myAnalyzer.addQuery(13, 'z', {'main:y1'})
myAnalyzer.analysis()

# branch-4.c测试 #
myAnalyzer.initialize('branch-4.c')
myAnalyzer.addQuery(8, 'p', {'main:d'})
myAnalyzer.analysis()

# branch-5.c测试 #
myAnalyzer.initialize('branch-5.c')
myAnalyzer.addQuery(13, 'n', {'main:y'})
myAnalyzer.addQuery(13, 'z', {'main:y1'})
myAnalyzer.analysis()

# constraint-cycle-copy.c测试 #
myAnalyzer.initialize('constraint-cycle-copy.c')
myAnalyzer.addQuery(29, 'x2', {'main:y3', 'main:y3_'})
myAnalyzer.addQuery(29, 'y2', {'main:z3', 'main:y3'})
myAnalyzer.addQuery(29, 'z2', {'main:y3', 'main:y3_'})
myAnalyzer.analysis()

# constraint-cycle-field.c测试 #
myAnalyzer.initialize('constraint-cycle-field.c')
myAnalyzer.addQuery(30, 'r', {'null'})
myAnalyzer.addQuery(31, 'r', {'null'})
myAnalyzer.addQuery(32, 't', {'null', 'malloc:$0:25'})
myAnalyzer.addQuery(33, 't', {'null'})
myAnalyzer.analysis()

# field-ptr-arith-constIdx.c测试 #
myAnalyzer.initialize('field-ptr-arith-constIdx.c')
myAnalyzer.addQuery(22, 'q', {'main:s1'})
myAnalyzer.addQuery(23, 'p', {'main:s1'})
myAnalyzer.analysis()

# field-ptr-arith-varIdx.c测试 #
myAnalyzer.initialize('field-ptr-arith-varIdx.c')
myAnalyzer.addQuery(22, 'q', {'main:s1'})
myAnalyzer.addQuery(25, 'p', {'main:s1'})
myAnalyzer.analysis()

# pcycle.c测试 #
myAnalyzer.initialize('pcycle.c')
myAnalyzer.addQuery(7, 'n', {'main:y'})
myAnalyzer.addQuery(11, 'z', {'main:y1'})
myAnalyzer.analysis()

# ptr-dereference-1.c测试 #
myAnalyzer.initialize('ptr-dereference-1.c')
myAnalyzer.addQuery(13, 'c', {'main:b'})
myAnalyzer.analysis()

# ptr-dereference-2.c测试 #
myAnalyzer.initialize('ptr-dereference-2.c')
myAnalyzer.addQuery(7, 'x', {'main:c'})
myAnalyzer.analysis()

# ptr-dereference-3.c测试 #
myAnalyzer.initialize('ptr-dereference-3.c')
myAnalyzer.addQuery(9, 's', {'main:z'})
myAnalyzer.addQuery(10, 'x', {'main:z'})
myAnalyzer.analysis()

# simple-1.c测试 #
myAnalyzer.initialize('simple-1.c')
myAnalyzer.addQuery(14, 'p', {'main:y'})
myAnalyzer.analysis()

# simple-2.c测试 #
myAnalyzer.initialize('simple-2.c')
myAnalyzer.addQuery(15, 'p', {'main:y'})
myAnalyzer.addQuery(16, 'p', {'main:z'})
myAnalyzer.analysis()

# simple-3.c测试 #
myAnalyzer.initialize('simple-3.c')
myAnalyzer.addQuery(15, 'x', {'main:x0'})
myAnalyzer.addQuery(16, 'y', {'main:y0'})
myAnalyzer.addQuery(17, 'x', {'main:y0'})
myAnalyzer.analysis()

# anderson-context.c测试 #
myAnalyzer.initialize('anderson-context.c')
myAnalyzer.addQuery(15, 'x', {'main:a'})
myAnalyzer.addQuery(15, 'y', {'main:a'})
myAnalyzer.addQuery(19, 'x', {'main:b'})
myAnalyzer.addQuery(19, 'y', {'main:b'})
myAnalyzer.analysis()

# anderson-path.c测试 #
myAnalyzer.initialize('anderson-path.c')
myAnalyzer.addQuery(11, 'x', {'main:a', 'main:b'})
myAnalyzer.addQuery(11, 'y', {'main:a', 'main:b'})
myAnalyzer.addQuery(17, 'x', {'main:b', 'main:c'})
myAnalyzer.addQuery(17, 'y', {'main:b', 'main:c'})
myAnalyzer.analysis()

# anderson-simple.c测试 #
myAnalyzer.initialize('anderson-simple.c')
myAnalyzer.addQuery(8, 'x', {'main:a'})
myAnalyzer.addQuery(8, 'y', {'main:a'})
myAnalyzer.addQuery(10, 'x', {'main:b'})
myAnalyzer.addQuery(10, 'y', {'main:b'})
myAnalyzer.analysis()

# anderson-struct-context.c测试 #
myAnalyzer.initialize('anderson-struct-context.c')
myAnalyzer.addQuery(22, 'p', {'null'})
myAnalyzer.addQuery(26, 'p', {'null'})
myAnalyzer.analysis()

# anderson-struct-path.c测试 #
myAnalyzer.initialize('anderson-struct-path.c')
myAnalyzer.addQuery(19, 'p', {'main:a', 'main:b'})
myAnalyzer.addQuery(26, 'p', {'main:b', 'main:c'})
myAnalyzer.analysis()

# anderson-struct.c测试 #
myAnalyzer.initialize('anderson-struct.c')
myAnalyzer.addQuery(18, 'p', {'main:a'})
myAnalyzer.addQuery(18, 'p', {'main:a'})
myAnalyzer.addQuery(22, 'p', {'main:b'})
myAnalyzer.addQuery(22, 'p', {'main:b'})
myAnalyzer.analysis()


# 创建新测试集 #
myAnalyzer.addBenchmark('complex-tests')

# cond-swap.c测试 #
myAnalyzer.initialize('cond-swap.c')
myAnalyzer.addQuery(27, 'pa', {'main:b'})
myAnalyzer.addQuery(28, 'pb', {'main:a'})
myAnalyzer.analysis()

# swap-0.c测试 #
myAnalyzer.initialize('swap-0.c')
myAnalyzer.addQuery(21, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(22, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# swap-1.c测试 #
myAnalyzer.initialize('swap-1.c')
myAnalyzer.addQuery(27, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(28, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# swap-2.c测试 #
myAnalyzer.initialize('swap-2.c')
myAnalyzer.addQuery(25, 'pa', {'a', 'b'})
myAnalyzer.addQuery(26, 'pb', {'a', 'b'})
myAnalyzer.analysis()

# swap-array.c测试 #
myAnalyzer.initialize('swap-array.c')
myAnalyzer.addQuery(21, 'pa', {'main:a'})
myAnalyzer.addQuery(22, 'pb', {'main:a'})
myAnalyzer.analysis()

# swap-context-0.c测试 #
myAnalyzer.initialize('swap-context-0.c')
myAnalyzer.addQuery(43, 'pa', {'a', 'b'})
myAnalyzer.addQuery(44, 'pb', {'a', 'b'})
myAnalyzer.analysis()

# swap-context-1.c测试 #
myAnalyzer.initialize('swap-context-1.c')
myAnalyzer.addQuery(67, 'pa', {'a', 'b'})
myAnalyzer.addQuery(68, 'pb', {'a', 'b'})
myAnalyzer.analysis()

# swap-context-indirect.c测试 #
myAnalyzer.initialize('swap-context-indirect.c')
myAnalyzer.addQuery(57, 'pa', {'a'})
myAnalyzer.addQuery(58, 'pb', {'b'})
myAnalyzer.analysis()

# swap-funcptr-0.c测试 #
myAnalyzer.initialize('swap-funcptr-0.c')
myAnalyzer.addQuery(25, 'pa', {'main:b'})
myAnalyzer.addQuery(26, 'pb', {'main:a'})
myAnalyzer.analysis()

# swap-funcptr-1.c测试 #
myAnalyzer.initialize('swap-funcptr-1.c')
myAnalyzer.addQuery(30, 'pa', {'main:b'})
myAnalyzer.addQuery(31, 'pb', {'main:a'})
myAnalyzer.analysis()

# swap-funcptr-2.c测试 #
myAnalyzer.initialize('swap-funcptr-2.c')
myAnalyzer.addQuery(30, 'pa', {'main:b'})
myAnalyzer.addQuery(31, 'pb', {'main:a'})
myAnalyzer.analysis()

# swap-global-0.c测试 #
myAnalyzer.initialize('swap-global-0.c')
myAnalyzer.addQuery(22, 'pa', {'main:a'})
myAnalyzer.addQuery(23, 'pb', {'main:b'})
myAnalyzer.analysis()

# swap-global-1.c测试 #
myAnalyzer.initialize('swap-global-1.c')
myAnalyzer.addQuery(22, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(23, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# swap-global-2.c测试 #
myAnalyzer.initialize('swap-global-2.c')
myAnalyzer.addQuery(27, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(28, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# swap-heap-0.c测试 #
myAnalyzer.initialize('swap-heap-0.c')
myAnalyzer.addQuery(35, 'pa', {'malloc:$0:15'})
myAnalyzer.addQuery(36, 'pb', {'malloc:$0:15'})
myAnalyzer.analysis()

# swap-heap-1.c测试 #
myAnalyzer.initialize('swap-heap-1.c')
myAnalyzer.addQuery(36, 'pa', {'malloc:$0:15'})
myAnalyzer.addQuery(37, 'pb', {'malloc:$0:15'})
myAnalyzer.analysis()

# swap-heap-2.c测试 #
myAnalyzer.initialize('swap-heap-2.c')
myAnalyzer.addQuery(38, 'pa', {'malloc:$0:15'})
myAnalyzer.addQuery(39, 'pb', {'malloc:$0:15'})
myAnalyzer.analysis()

# swap-heap-3.c测试 #
myAnalyzer.initialize('swap-heap-3.c')
myAnalyzer.addQuery(38, 'pa', {'malloc:$0:15'})
myAnalyzer.addQuery(39, 'pb', {'malloc:$0:15'})
myAnalyzer.analysis()

# swap-heap-4.c测试 #
myAnalyzer.initialize('swap-heap-4.c')
myAnalyzer.addQuery(40, 'pa', {'malloc:$0:15'})
myAnalyzer.addQuery(41, 'pb', {'malloc:$0:15'})
myAnalyzer.analysis()

# swap-indirect-0.c测试 #
myAnalyzer.initialize('swap-indirect-0.c')
myAnalyzer.addQuery(28, 't1', {'main:a'})
myAnalyzer.addQuery(29, 't2', {'main:b'})
myAnalyzer.analysis()

# swap-indirect-1.c测试 #
myAnalyzer.initialize('swap-indirect-1.c')
myAnalyzer.addQuery(29, 't1', {'main:a'})
myAnalyzer.addQuery(30, 't2', {'main:b'})
myAnalyzer.analysis()

# swap-indirect-2.c测试 #
myAnalyzer.initialize('swap-indirect-2.c')
myAnalyzer.addQuery(35, 't1', {'main:a'})
myAnalyzer.addQuery(36, 't2', {'main:b'})
myAnalyzer.analysis()

# swap-recursion.c测试 #
myAnalyzer.initialize('swap-recursion.c')
myAnalyzer.addQuery(32, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(33, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# swap-struct-0.c测试 #
myAnalyzer.initialize('swap-struct-0.c')
myAnalyzer.addQuery(27, 'pa', {'null'})
myAnalyzer.addQuery(28, 'pb', {'null'})
myAnalyzer.analysis()

# swap-struct-1.c测试 #
myAnalyzer.initialize('swap-struct-1.c')
myAnalyzer.addQuery(27, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(28, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# swap-struct-indirect.c测试 #
myAnalyzer.initialize('swap-struct-indirect.c')
myAnalyzer.addQuery(30, 'pa', {'main:b'})
myAnalyzer.addQuery(31, 'pb', {'main:a'})
myAnalyzer.analysis()

# test-1.c测试 #
myAnalyzer.initialize('test-1.c')
myAnalyzer.addQuery(10, 'a', {'main:b'})
myAnalyzer.addQuery(17, 'a', {'main:b'})
myAnalyzer.addQuery(33, '@c', {'main:b'})
myAnalyzer.analysis()

# test-2.c测试 #
myAnalyzer.initialize('test-2.c')
myAnalyzer.addQuery(5, 'a', {'main:a'})
myAnalyzer.addQuery(10, 'a', {'main:a'})
myAnalyzer.analysis()

# test-3.c测试 #
myAnalyzer.initialize('test-3.c')
myAnalyzer.addQuery(5, 'a', {'main:a'})
myAnalyzer.addQuery(10, 'a', {'main:a'})
myAnalyzer.addQuery(15, 'a', {'main:a'})
myAnalyzer.addQuery(20, 'a', {'main:a'})
myAnalyzer.addQuery(33, 'c', {'main:a'})
myAnalyzer.analysis()

# test-4.c测试 #
myAnalyzer.initialize('test-4.c')
myAnalyzer.addQuery(6, 'a', {'main:a'})
myAnalyzer.addQuery(11, 'a', {'main:a'})
myAnalyzer.addQuery(16, 'a', {'main:a'})
myAnalyzer.addQuery(21, 'a', {'main:a'})
myAnalyzer.addQuery(34, 'c', {'malloc:$0:5'})
myAnalyzer.analysis()

# test-5.c测试 #
myAnalyzer.initialize('test-5.c')
myAnalyzer.addQuery(5, 'a', {'main:a', 'main:b'})
myAnalyzer.addQuery(10, 'a', {'main:b'})
myAnalyzer.addQuery(23, 'c', {'main:b'})
myAnalyzer.analysis()

# test-6.c测试 #
myAnalyzer.initialize('test-6.c')
myAnalyzer.addQuery(5, 'a', {'main:a'})
myAnalyzer.addQuery(18, 'c', {'main:a'})
myAnalyzer.analysis()

# test-7.c测试 #
myAnalyzer.initialize('test-7.c')
myAnalyzer.addQuery(4, 'a', {'main:c'})
myAnalyzer.addQuery(17, 'c', {'main:a'})
myAnalyzer.analysis()

# test-linklist-0.c测试 #
myAnalyzer.initialize('test-linklist-0.c')
myAnalyzer.addQuery(61, 'head', {'malloc:$0:23', 'malloc:$0:28'})
myAnalyzer.addQuery(61, 'head1', {'malloc:$0:23', 'malloc:$0:28'})
myAnalyzer.analysis()

# test-linklist-1.c测试 #
myAnalyzer.initialize('test-linklist-1.c')
myAnalyzer.addQuery(50, 'head', {'malloc:$0:14', 'malloc:$0:20'})
myAnalyzer.addQuery(50, 'head1', {'malloc:$0:14', 'malloc:$0:20'})
myAnalyzer.analysis()

# test-path-1.c测试 #
myAnalyzer.initialize('test-path-1.c')
myAnalyzer.addQuery(38, 'pa', {'null', 'malloc:$0:5', 'malloc:$0:11'})
myAnalyzer.addQuery(38, 'pb', {'null', 'malloc:$0:5', 'malloc:$0:11'})
myAnalyzer.analysis()

# test-path-2.c测试 #
myAnalyzer.initialize('test-path-2.c')
myAnalyzer.addQuery(25, 'pa', {'main:a', 'main:b'})
myAnalyzer.addQuery(25, 'pb', {'main:a', 'main:b'})
myAnalyzer.analysis()

# test-path-3.c测试 #
myAnalyzer.initialize('test-path-3.c')
myAnalyzer.addQuery(38, 'pa', {'malloc:$0:5', 'malloc:$0:11', 'null'})
myAnalyzer.addQuery(38, 'pb', {'malloc:$0:5', 'malloc:$0:11', 'null'})
myAnalyzer.analysis()

# test-recursive-0.c测试 #
myAnalyzer.initialize('test-recursive-0.c')
myAnalyzer.addQuery(28, 'head', {'malloc:$0:13'})
myAnalyzer.analysis()

# test-recursive-1.c测试 #
myAnalyzer.initialize('test-recursive-1.c')
myAnalyzer.addQuery(56, 'head', {'malloc:$0:51'})
myAnalyzer.addQuery(57, 'head', {'malloc:$0:51'})
myAnalyzer.analysis()

# test-recursive-2.c测试 #
myAnalyzer.initialize('test-recursive-2.c')
myAnalyzer.addQuery(68, 'head', {'malloc:$0:63'})
myAnalyzer.addQuery(69, 'head', {'malloc:$0:63'})
myAnalyzer.analysis()

# test-recursive-3.c测试 #
myAnalyzer.initialize('test-recursive-3.c')
myAnalyzer.addQuery(34, 'head', {'malloc:$0:29'})
myAnalyzer.analysis()

# test-recursive-global-0.c测试 #
myAnalyzer.initialize('test-recursive-global-0.c')
myAnalyzer.addQuery(22, '@p', {'main:a'})
myAnalyzer.analysis()

# test-recursive-global-1.c测试 #
myAnalyzer.initialize('test-recursive-global-1.c')
myAnalyzer.addQuery(31, '@p', {'main:a', 'main:b'})
myAnalyzer.addQuery(31, '@q', {'main:a', 'main:b'})
myAnalyzer.analysis()

# test-recursive-global-2.c测试 #
myAnalyzer.initialize('test-recursive-global-2.c')
myAnalyzer.addQuery(35, '@p', {'main:a', 'main:b'})
myAnalyzer.addQuery(35, '@q', {'main:a', 'main:b'})
myAnalyzer.analysis()


# 创建新测试集 #
myAnalyzer.addBenchmark('path-tests')

# branch-call.c测试 #
myAnalyzer.initialize('branch-call.c')
myAnalyzer.addQuery(10, 'x', {'main:a','main:b'})
myAnalyzer.addQuery(11, 'y', {'main:b','main:c'})
myAnalyzer.analysis()

# branch-intra-1.c测试 #
myAnalyzer.initialize('branch-intra-1.c')
myAnalyzer.addQuery(17, 'q', {'main:y'})
myAnalyzer.addQuery(18, 'p', {'main:x','main:y'})
myAnalyzer.analysis()

# branch-intra-2.c测试 #
myAnalyzer.initialize('branch-intra-2.c')
myAnalyzer.addQuery(23, 'p', {'main:a','main:b'})
myAnalyzer.addQuery(23, 'q', {'main:b','main:c'})
myAnalyzer.analysis()

# path-1.c测试 #
myAnalyzer.initialize('path-1.c')
myAnalyzer.addQuery(17, 'x', {'main:a','main:b'})
myAnalyzer.addQuery(17, 'y', {'main:c','main:d'})
myAnalyzer.analysis()

# path-2.c测试 #
myAnalyzer.initialize('path-2.c')
myAnalyzer.addQuery(20, 'a', {'main:m1','main:a1'})
myAnalyzer.addQuery(20, 'b', {'main:b1','main:m1'})
myAnalyzer.addQuery(21, 'n', {'main:b1','main:a1'})
myAnalyzer.analysis()

# path-3.c测试 #
myAnalyzer.initialize('path-3.c')
myAnalyzer.addQuery(18, 'a', {'main:m1','main:a1'})
myAnalyzer.addQuery(18, 'b', {'main:b1','main:m1'})
myAnalyzer.addQuery(19, 'n', {'main:m1'})
myAnalyzer.analysis()

# path-4.c测试 #
myAnalyzer.initialize('path-4.c')
myAnalyzer.addQuery(20, 'x1', {'null', 'main:n1'})
myAnalyzer.addQuery(20, 'a', {'main:n1','main:a1'})
myAnalyzer.addQuery(21, 'm', {'main:n1'})
myAnalyzer.analysis()

# path-5.c测试 #
myAnalyzer.initialize('path-5.c')
myAnalyzer.addQuery(30, 'p', {'main:k1', 'null'})
myAnalyzer.addQuery(31, 'p', {'main:k2', 'null'})
myAnalyzer.analysis()

# path-6.c测试 #
myAnalyzer.initialize('path-6.c')
myAnalyzer.addQuery(18, 'a', {'main:c', 'null'})
myAnalyzer.addQuery(18, 'b', {'main:d', 'null'})
myAnalyzer.analysis()

# path-7.c测试 #
myAnalyzer.initialize('path-7.c')
myAnalyzer.addQuery(18, 'b', {'main:e', 'null'})
myAnalyzer.addQuery(18, 'c', {'main:d', 'null'})
myAnalyzer.analysis()

# path-8.c测试 #
myAnalyzer.initialize('path-8.c')
myAnalyzer.addQuery(27, 'c', {'main:d'})
myAnalyzer.addQuery(28, 'n', {'main:d'})
myAnalyzer.analysis()

# path-9.c测试 #
myAnalyzer.initialize('path-9.c')
myAnalyzer.addQuery(29, 'p', {'main:k2', 'null'})
myAnalyzer.addQuery(30, 'p', {'main:k1', 'null'})
myAnalyzer.analysis()

# path-10.c测试 #
myAnalyzer.initialize('path-10.c')
myAnalyzer.addQuery(30, 'b', {'null', 'k'})
myAnalyzer.addQuery(30, 'c', {'main:e', 'null'})
myAnalyzer.analysis()

# path-11.c测试 #
myAnalyzer.initialize('path-11.c')
myAnalyzer.addQuery(25, 'a', {'main:c', 'null'})
myAnalyzer.addQuery(25, 'b', {'main:d', 'null'})
myAnalyzer.analysis()

# path-12.c测试 #
myAnalyzer.initialize('path-12.c')
myAnalyzer.addQuery(28, 'c', {'s', 'obj', 't'})
myAnalyzer.addQuery(28, 'd', {'obj', 's', 't'})
myAnalyzer.analysis()

# path-13.c测试 #
myAnalyzer.initialize('path-13.c')
myAnalyzer.addQuery(27, 'c', {'main:f', 'null'})
myAnalyzer.addQuery(27, 'd', {'main:w', 'null'})
myAnalyzer.analysis()

# path-14.c测试 #
myAnalyzer.initialize('path-14.c')
myAnalyzer.addQuery(22, 'a', {'main:c','main:d', 'null'})
myAnalyzer.addQuery(22, 'b', {'main:e', 'null'})
myAnalyzer.analysis()

# path-15.c测试 #
myAnalyzer.initialize('path-15.c')
myAnalyzer.addQuery(13, 'a', {'main:a1','main:q1'})
myAnalyzer.analysis()

# path-16.c测试 #
myAnalyzer.initialize('path-16.c')
myAnalyzer.addQuery(24, 'a', {'main:c', 'null'})
myAnalyzer.addQuery(24, 'b', {'main:d', 'null'})
myAnalyzer.analysis()

# path-17.c测试 #
myAnalyzer.initialize('path-17.c')
myAnalyzer.addQuery(26, 'a', {'main:c','main:d', 'null'})
myAnalyzer.addQuery(26, 'b', {'main:d', 'null'})
myAnalyzer.analysis()

# path-18.c测试 #
myAnalyzer.initialize('path-18.c')
myAnalyzer.addQuery(11, '@q', {'null'})
myAnalyzer.addQuery(11, '@e', {'y'})
myAnalyzer.analysis()

# path-19.c测试 #
myAnalyzer.initialize('path-19.c')
myAnalyzer.addQuery(10, '@q', {'null'})
myAnalyzer.addQuery(10, '@e', {'y'})
myAnalyzer.addQuery(10, '@r', {'null'})
myAnalyzer.analysis()

# path-20.c测试 #
myAnalyzer.initialize('path-20.c')
myAnalyzer.addQuery(16, 'f', {'main:k', 'main:q'})
myAnalyzer.addQuery(16, 'g', {'main:q', 'null'})
myAnalyzer.analysis()

# path-21.c测试 #
myAnalyzer.initialize('path-21.c')
myAnalyzer.addQuery(23, 'r', {'main:v'})
myAnalyzer.addQuery(23, 'q', {'main:v'})
myAnalyzer.analysis()


# 创建新测试集 #
myAnalyzer.addBenchmark('context-tests')

# context-0.c测试 #
myAnalyzer.initialize('context-0.c')
myAnalyzer.addQuery(3, 'p', {'main:a', 'main:b'})
myAnalyzer.addQuery(14, 'x', {'main:a'})
myAnalyzer.addQuery(14, 'y', {'main:b'})
myAnalyzer.analysis()

# context-1.c测试 #
myAnalyzer.initialize('context-1.c')
myAnalyzer.addQuery(3, 'x', {'main:b1'})
myAnalyzer.analysis()

# context-2.c测试 #
myAnalyzer.initialize('context-2.c')
myAnalyzer.addQuery(7, 'p', {'main:w1', 'main:w', 'main:x1', 'main:x'})
myAnalyzer.addQuery(7, 'q', {'main:x1', 'main:w', 'main:y', 'main:x', 'obj', 'main:w1', 'main:y1'})
myAnalyzer.addQuery(7, 'r', {'main:x1', 'main:w', 'main:y', 'main:x', 'main:k', 'main:z1', 'obj', 'main:z', 'main:w1', 'main:y1', 'main:k1'})
myAnalyzer.analysis()

# context-3.c测试 #
myAnalyzer.initialize('context-3.c')
myAnalyzer.addQuery(5, 'p', {'main:w1', 'main:w', 'main:x1', 'main:x'})
myAnalyzer.addQuery(5, 'q', {'main:x1', 'main:w', 'main:y', 'main:x', 'main:w1', 'main:y1', 'main:k1'})
myAnalyzer.addQuery(5, 'r', {'main:x1', 'main:g', 'main:w', 'main:x', 'main:z1', 'main:w1', 'main:z', 'main:g1'})
myAnalyzer.addQuery(5, 's', {'main:x1', 'main:w', 'main:y1', 'main:k1', 'main:x', 'main:y', 'main:w1'})
myAnalyzer.analysis()

# context-4.c测试 #
myAnalyzer.initialize('context-4.c')
myAnalyzer.addQuery(7, 'x', {'main:a1'})
myAnalyzer.addQuery(7, 'y', {'main:r', 'main:d'})
myAnalyzer.addQuery(7, 'z', {'main:q', 'main:a1', 'main:c'})
myAnalyzer.addQuery(7, 'w', {'main:r', 'main:d'})
myAnalyzer.analysis()

# context-5.c测试 #
myAnalyzer.initialize('context-5.c')
myAnalyzer.addQuery(7, 'p', {'main:a1'})
myAnalyzer.addQuery(7, 'q', {'main:b1'})
myAnalyzer.analysis()

# context-6.c测试 #
myAnalyzer.initialize('context-6.c')
myAnalyzer.addQuery(7, 'p', {'main:b1'})
myAnalyzer.addQuery(7, 'q', {'main:b1'})
myAnalyzer.analysis()

# context-7.c测试 #
myAnalyzer.initialize('context-7.c')
myAnalyzer.addQuery(4, 'p', {'main:x1', 'main:x', 'main:w', 'main:w1'})
myAnalyzer.addQuery(4, 'q', {'main:x1', 'main:w', 'main:y1', 'main:k1', 'main:k', 'main:x', 'main:y', 'main:w1'})
myAnalyzer.analysis()

# context-8.c测试 #
myAnalyzer.initialize('context-8.c')
myAnalyzer.addQuery(7, 'p', {'main:z', 'main:x'})
myAnalyzer.addQuery(7, 'q', {'main:z', 'main:y'})
myAnalyzer.analysis()

# context-9.c测试 #
myAnalyzer.initialize('context-9.c')
myAnalyzer.addQuery(8, 'p', {'main:a', 'main:d', 'main:c'})
myAnalyzer.addQuery(8, 'q', {'main:b', 'main:d', 'main:e'})
myAnalyzer.analysis()

# context-10.c测试 #
myAnalyzer.initialize('context-10.c')
myAnalyzer.addQuery(6, 'p', {'main:a','main:d','main:c'})
myAnalyzer.addQuery(6, 'q', {'main:b','main:d','main:e'})
myAnalyzer.analysis()

# context-11.c测试 #
myAnalyzer.initialize('context-11.c')
myAnalyzer.addQuery(4, 'a', {'main:q', 'main:y'})
myAnalyzer.addQuery(4, 'b', {'main:q','main:y'})
myAnalyzer.analysis()

# context-12.c测试 #
myAnalyzer.initialize('context-12.c')
myAnalyzer.addQuery(6, 'p', {'main:a','main:c'})
myAnalyzer.addQuery(6, 'q', {'main:b'})
myAnalyzer.analysis()

# context-13.c测试 #
myAnalyzer.initialize('context-13.c')
myAnalyzer.addQuery(7, 'x', {'main:obj','main:t'})
myAnalyzer.analysis()

# context-14.c测试 #
myAnalyzer.initialize('context-14.c')
myAnalyzer.addQuery(3, 'p', {'main:a','main:b','main:c'})
myAnalyzer.addQuery(3, 'q', {'null'})
myAnalyzer.analysis()

# context-15.c测试 #
myAnalyzer.initialize('context-15.c')
myAnalyzer.addQuery(7, 'w', {'main:a1'})
myAnalyzer.addQuery(7, 'x', {'main:b1'})
myAnalyzer.addQuery(7, 'y', {'main:d1'})
myAnalyzer.addQuery(7, 'z', {'main:d1'})
myAnalyzer.addQuery(12, 'p1', {'main:a1'})
myAnalyzer.addQuery(12, 'p2', {'main:b1'})
myAnalyzer.addQuery(12, 'p3', {'main:b1', 'main:d1'})
myAnalyzer.addQuery(12, 'p4', {'main:d1'})
myAnalyzer.analysis()

# context-16.c测试 #
myAnalyzer.initialize('context-16.c')
myAnalyzer.addQuery(10, 'p', {'main:a','main:b','main:c'})
myAnalyzer.analysis()

# context-17.c测试 #
myAnalyzer.initialize('context-17.c')
myAnalyzer.addQuery(3, 'k', {'main:p1', 'main:q2'})
myAnalyzer.addQuery(3, 's', {'main:q1', 'main:q2'})
myAnalyzer.addQuery(11, 'x', {'main:a2', 'main:q2'})
myAnalyzer.addQuery(11, 'y', {'foo:t', 'main:q1', 'main:q2', 'main:b1'})
myAnalyzer.addQuery(11, 'z', {'main:c1', 'main:a2', 'main:q2', 'main:r1'})
myAnalyzer.analysis()

# context-18.c测试 #
myAnalyzer.initialize('context-18.c')
myAnalyzer.addQuery(5, 's', {'main:a', 'main:c'})
myAnalyzer.addQuery(10, 'p', {'main:a', 'main:c'})
myAnalyzer.analysis()

# context-19.c测试 #
myAnalyzer.initialize('context-19.c')
myAnalyzer.addQuery(8, 'q', {'Xray:d'})
myAnalyzer.addQuery(8, 'p', {'Xray:b'})
myAnalyzer.analysis()

# context-20.c测试 #
myAnalyzer.initialize('context-20.c')
myAnalyzer.addQuery(8, 'q', {'c', 'd'})
myAnalyzer.addQuery(8, 'p', {'c', 'd'})
myAnalyzer.analysis()

# context-21.c测试 #
myAnalyzer.initialize('context-21.c')
myAnalyzer.addQuery(12, 'x', {'a'})
myAnalyzer.addQuery(12, 'y', {'a'})
myAnalyzer.addQuery(20, 'p', {'a'})
myAnalyzer.analysis()

# context-23.c测试 #
myAnalyzer.initialize('context-23.c')
myAnalyzer.addQuery(8, 'm', {'main:b','main:a'})
myAnalyzer.addQuery(8, 'n', {'main:a','main:b'})
myAnalyzer.analysis()

# recursion-1.c测试 #
myAnalyzer.initialize('recursion-1.c')
myAnalyzer.addQuery(15, '@x', {'z', 'y'})
myAnalyzer.analysis()

# recursion-2.c测试 #
myAnalyzer.initialize('recursion-2.c')
myAnalyzer.addQuery(11, 'm', {'y'})
myAnalyzer.analysis()

# recursion-3.c测试 #
myAnalyzer.initialize('recursion-3.c')
myAnalyzer.addQuery(9, 'm', {'y'})
myAnalyzer.addQuery(12, 'm', {'y'})
myAnalyzer.analysis()

# recursion-4.c测试 #
myAnalyzer.initialize('recursion-4.c')
myAnalyzer.addQuery(17, 'p', {'y'})
myAnalyzer.analysis()

# recursion-5.c测试 #
myAnalyzer.initialize('recursion-5.c')
myAnalyzer.addQuery(10, 'y', {'f:r'})
myAnalyzer.addQuery(10, 'm', {'f:y', 'x1'})
myAnalyzer.analysis()

# recursion-6.c测试 #
myAnalyzer.initialize('recursion-6.c')
myAnalyzer.addQuery(12, '@x', {'z', 'y'})
myAnalyzer.analysis()

# recursion-7.c测试 #
myAnalyzer.initialize('recursion-7.c')
myAnalyzer.addQuery(6, 'a', {'main:b','main:c'})
myAnalyzer.addQuery(13, 'q', {'main:b','main:c'})
myAnalyzer.analysis()

# recursion-8.c测试 #
myAnalyzer.initialize('recursion-8.c')
myAnalyzer.addQuery(24, 'a', {'malloc:$0:10'})
myAnalyzer.addQuery(13, 'p', {'malloc:$0:10'})
myAnalyzer.analysis()

# recursion-9.c测试 #
myAnalyzer.initialize('recursion-9.c')
myAnalyzer.addQuery(15, 'a', {'malloc:$0:19', 'main:b', 'main:c'})
myAnalyzer.addQuery(21, 'q', {'malloc:$0:19', 'main:b', 'main:c'})
myAnalyzer.analysis()

# recursion-10.c测试 #
myAnalyzer.initialize('recursion-10.c')
myAnalyzer.addQuery(13, '@x', {'y'})
myAnalyzer.addQuery(13, '@p', {'x'})
myAnalyzer.analysis()


# 创建新测试集 #
myAnalyzer.addBenchmark('struct-tests')

# struct-1.c测试 #
myAnalyzer.initialize('struct-1.c')
myAnalyzer.addQuery(20, 'p', {'main:b'})
myAnalyzer.addQuery(22, 'p', {'main:a'})
myAnalyzer.analysis()

# struct-2.c测试 #
myAnalyzer.initialize('struct-2.c')
myAnalyzer.addQuery(15, 'p', {'main:obj'})
myAnalyzer.analysis()

# struct-3.c测试 #
myAnalyzer.initialize('struct-3.c')
myAnalyzer.addQuery(23, 'p', {'main:a'})
myAnalyzer.addQuery(24, 'p', {'main:b'})
myAnalyzer.analysis()

# struct-4.c测试 #
myAnalyzer.initialize('struct-4.c')
myAnalyzer.addQuery(23, 'p', {'main:a'})
myAnalyzer.addQuery(24, 'p', {'main:b'})
myAnalyzer.analysis()

# struct-5.c测试 #
myAnalyzer.initialize('struct-5.c')
myAnalyzer.addQuery(24, 'p', {'main:a'})
myAnalyzer.addQuery(25, 'p', {'main:b'})
myAnalyzer.analysis()

# struct-6.c测试 #
myAnalyzer.initialize('struct-6.c')
myAnalyzer.addQuery(24, 'p', {'main:a'})
myAnalyzer.addQuery(25, 'p', {'main:b'})
myAnalyzer.analysis()

# struct-assignment-direct.c测试 #
myAnalyzer.initialize('struct-assignment-direct.c')
myAnalyzer.addQuery(20, 'p', {'main:a'})
myAnalyzer.analysis()

# struct-assignment-indirect.c测试 #
myAnalyzer.initialize('struct-assignment-indirect.c')
myAnalyzer.addQuery(22, 'p', {'main:a'})
myAnalyzer.analysis()

# struct-assignment-nested.c测试 #
myAnalyzer.initialize('struct-assignment-nested.c')
myAnalyzer.addQuery(39, 'q', {'main:y'})
myAnalyzer.addQuery(40, 'q', {'main:x'})
myAnalyzer.analysis()

# struct-field-multi-1.c测试 #
myAnalyzer.initialize('struct-field-multi-1.c')
myAnalyzer.addQuery(21, 'p', {'main:b'})
myAnalyzer.analysis()

# struct-field-multi-2.c测试 #
myAnalyzer.initialize('struct-field-multi-2.c')
myAnalyzer.addQuery(21, 'p', {'main:b'})
myAnalyzer.analysis()

# struct-field-multi-3.c测试 #
myAnalyzer.initialize('struct-field-multi-3.c')
myAnalyzer.addQuery(22, 'p', {'main:a'})
myAnalyzer.addQuery(23, 'p', {'main:a'})
myAnalyzer.addQuery(24, 'p', {'main:a'})
myAnalyzer.analysis()

# struct-field-multi-4.c测试 #
myAnalyzer.initialize('struct-field-multi-4.c')
myAnalyzer.addQuery(22, 'p', {'main:a'})
myAnalyzer.addQuery(23, 'p', {'main:a'})
myAnalyzer.addQuery(24, 'p', {'main:a'})
myAnalyzer.analysis()

# struct-incompab-typecast-nested.c测试 #
myAnalyzer.initialize('struct-incompab-typecast-nested.c')
myAnalyzer.addQuery(42, 'p', {'null'})
myAnalyzer.addQuery(43, 'p', {'null'})
myAnalyzer.addQuery(44, 'p', {'null'})
myAnalyzer.analysis()

# struct-incompab-typecast.c测试 #
myAnalyzer.initialize('struct-incompab-typecast.c')
myAnalyzer.addQuery(35, 'p', {'main:y'})
myAnalyzer.addQuery(36, 'p', {'null'})
myAnalyzer.analysis()

# struct-incompab-return.c测试 #
myAnalyzer.initialize('struct-instance-return.c')
myAnalyzer.addQuery(28, 'p', {'null'})
myAnalyzer.analysis()

# struct-nested-array.c测试 #
myAnalyzer.initialize('struct-nested-array.c')
myAnalyzer.addQuery(41, 'q', {'null'})
myAnalyzer.addQuery(42, 'q', {'null'})
myAnalyzer.analysis()

# struct-nested-layer.c测试 #
myAnalyzer.initialize('struct-nested-layer.c')
myAnalyzer.addQuery(33, 'p', {'main:b'})
myAnalyzer.addQuery(34, 'p', {'main:a'})
myAnalyzer.addQuery(35, 'p', {'main:a'})
myAnalyzer.analysis()

# struct-simple.c测试 #
myAnalyzer.initialize('struct-simple.c')
myAnalyzer.addQuery(21, 'p', {'main:x'})
myAnalyzer.analysis()


# 创建新测试集
myAnalyzer.addBenchmark('array-tests')

# array-1.c测试 #
myAnalyzer.initialize('array-1.c')
myAnalyzer.addQuery(9, 'p', {'main:a'})
myAnalyzer.addQuery(10, 'p', {'main:b'})
myAnalyzer.analysis()

# array-2.c测试 #
myAnalyzer.initialize('array-2.c')
myAnalyzer.addQuery(9, 'p', {'main:a'})
myAnalyzer.addQuery(10, 'p', {'main:a'})
myAnalyzer.analysis()

# array-3.c测试 #
myAnalyzer.initialize('array-3.c')
myAnalyzer.addQuery(9, 'p', {'main:a'})
myAnalyzer.addQuery(10, 'p', {'main:a'})
myAnalyzer.analysis()

# array-4.c测试 #
myAnalyzer.initialize('array-4.c')
myAnalyzer.addQuery(10, 'p', {'main:a'})
myAnalyzer.addQuery(11, 'p', {'main:b'})
myAnalyzer.analysis()

# array-context-1.c测试 #
myAnalyzer.initialize('array-context-1.c')
myAnalyzer.addQuery(19, 'p', {'main:a'})
myAnalyzer.addQuery(20, 'p', {'main:c'})
myAnalyzer.analysis()

# array-context-2.c测试 #
myAnalyzer.initialize('array-context-2.c')
myAnalyzer.addQuery(19, 'p', {'main:a'})
myAnalyzer.addQuery(20, 'p', {'main:b'})
myAnalyzer.analysis()

# array-context-3.c测试 #
myAnalyzer.initialize('array-context-3.c')
myAnalyzer.addQuery(19, 'p', {'main:a'})
myAnalyzer.addQuery(20, 'p', {'main:b'})
myAnalyzer.analysis()

# array-context-4.c测试 #
myAnalyzer.initialize('array-context-4.c')
myAnalyzer.addQuery(19, 'p', {'main:a'})
myAnalyzer.addQuery(20, 'p', {'main:c'})
myAnalyzer.analysis()

# array-path-1.c测试 #
myAnalyzer.initialize('array-path-1.c')
myAnalyzer.addQuery(19, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(20, 'p', {'main:c', 'main:d'})
myAnalyzer.analysis()

# array-path-2.c测试 #
myAnalyzer.initialize('array-path-2.c')
myAnalyzer.addQuery(19, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(20, 'p', {'main:b', 'main:c'})
myAnalyzer.analysis()

# array-path-3.c测试 #
myAnalyzer.initialize('array-path-3.c')
myAnalyzer.addQuery(19, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(20, 'p', {'main:b', 'main:c'})
myAnalyzer.analysis()

# array-path-4.c测试 #
myAnalyzer.initialize('array-path-4.c')
myAnalyzer.addQuery(20, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(21, 'p', {'main:c', 'main:d'})
myAnalyzer.analysis()

# array-struct-1.c测试 #
myAnalyzer.initialize('array-struct-1.c')
myAnalyzer.addQuery(18, 'p', {'main:a'})
myAnalyzer.addQuery(19, 'p', {'main:b'})
myAnalyzer.analysis()

# array-struct-2.c测试 #
myAnalyzer.initialize('array-struct-2.c')
myAnalyzer.addQuery(18, 'p', {'main:a'})
myAnalyzer.addQuery(19, 'p', {'null'})
myAnalyzer.analysis()

# array-struct-3.c测试 #
myAnalyzer.initialize('array-struct-3.c')
myAnalyzer.addQuery(18, 'p', {'main:a'})
myAnalyzer.addQuery(19, 'p', {'null'})
myAnalyzer.analysis()

# array-struct-4.c测试 #
myAnalyzer.initialize('array-struct-4.c')
myAnalyzer.addQuery(19, 'p', {'main:a'})
myAnalyzer.addQuery(20, 'p', {'main:b'})
myAnalyzer.analysis()

# array-struct-context-1.c测试 #
myAnalyzer.initialize('array-struct-context-1.c')
myAnalyzer.addQuery(29, 'p', {'main:a'})
myAnalyzer.addQuery(30, 'p', {'main:c'})
myAnalyzer.analysis()

# array-struct-context-2.c测试 #
myAnalyzer.initialize('array-struct-context-2.c')
myAnalyzer.addQuery(29, 'p', {'main:a'})
myAnalyzer.addQuery(30, 'p', {'main:c'})
myAnalyzer.analysis()

# array-struct-context-3.c测试 #
myAnalyzer.initialize('array-struct-context-3.c')
myAnalyzer.addQuery(29, 'p', {'main:a'})
myAnalyzer.addQuery(30, 'p', {'main:c'})
myAnalyzer.analysis()

# array-struct-context-4.c测试 #
myAnalyzer.initialize('array-struct-context-4.c')
myAnalyzer.addQuery(29, 'p', {'main:a'})
myAnalyzer.addQuery(30, 'p', {'main:c'})
myAnalyzer.analysis()

# array-struct-path-1.c测试 #
myAnalyzer.initialize('array-struct-path-1.c')
myAnalyzer.addQuery(27, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(28, 'p', {'main:c', 'main:d'})
myAnalyzer.analysis()

# array-struct-path-2.c测试 #
myAnalyzer.initialize('array-struct-path-2.c')
myAnalyzer.addQuery(27, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(28, 'p', {'null'})
myAnalyzer.analysis()

# array-struct-path-3.c测试 #
myAnalyzer.initialize('array-struct-path-3.c')
myAnalyzer.addQuery(27, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(28, 'p', {'null'})
myAnalyzer.analysis()

# array-struct-path-4.c测试 #
myAnalyzer.initialize('array-struct-path-4.c')
myAnalyzer.addQuery(28, 'p', {'main:b', 'main:c'})
myAnalyzer.addQuery(29, 'p', {'main:c', 'main:d'})
myAnalyzer.analysis()


# 创建新测试集 #
myAnalyzer.addBenchmark('heap-tests')

# heap-binarytree-context.c测试 #
myAnalyzer.initialize('heap-binarytree-context.c')
myAnalyzer.addQuery(76, 'p', {'malloc:$0:24', 'malloc:$0:26'})
myAnalyzer.addQuery(77, 'p', {'malloc:$0:44', 'malloc:$0:45'})
myAnalyzer.analysis()

# heap-binarytree.c测试 #
myAnalyzer.initialize('heap-binarytree.c')
myAnalyzer.addQuery(67, 'p', {'malloc:$0:24', 'malloc:$0:26'})
myAnalyzer.addQuery(68, 'p', {'malloc:$0:44', 'malloc:$0:45'})
myAnalyzer.analysis()

# heap-linklist-context.c测试 #
myAnalyzer.initialize('heap-linklist-context.c')
myAnalyzer.addQuery(66, 'p', {'malloc:$0:26', 'malloc:$0:27'})
myAnalyzer.addQuery(67, 'p', {'malloc:$0:39', 'malloc:$0:40'})
myAnalyzer.analysis()

# heap-linklist.c测试 #
myAnalyzer.initialize('heap-linklist.c')
myAnalyzer.addQuery(57, 'p', {'malloc:$0:26', 'malloc:$0:27'})
myAnalyzer.addQuery(58, 'p', {'malloc:$0:38', 'malloc:$0:39', 'malloc:$0:40'})
myAnalyzer.analysis()

# heap-simple.c测试 #
myAnalyzer.initialize('heap-simple.c')
myAnalyzer.addQuery(9, 'x', {'malloc:$0:8'})
myAnalyzer.addQuery(9, 'y', {'malloc:$0:8'})
myAnalyzer.addQuery(13, 'x', {'malloc:$0:12'})
myAnalyzer.addQuery(13, 'y', {'malloc:$0:12'})
myAnalyzer.analysis()

# heap-path.c测试 #
myAnalyzer.initialize('heap-path.c')
myAnalyzer.addQuery(13, 'x', {'malloc:$0:10', 'malloc:$0:12'})
myAnalyzer.addQuery(13, 'y', {'malloc:$0:10', 'malloc:$0:12'})
myAnalyzer.addQuery(20, 'x', {'malloc:$0:17', 'malloc:$0:19'})
myAnalyzer.addQuery(20, 'y', {'malloc:$0:17', 'malloc:$0:19'})
myAnalyzer.analysis()

# heap-context.c测试 #
myAnalyzer.initialize('heap-context.c')
myAnalyzer.addQuery(16, 'y', {'malloc:$0:14'})
myAnalyzer.addQuery(20, 'y', {'malloc:$0:18'})
myAnalyzer.analysis()

# heap-struct-1.c测试 #
myAnalyzer.initialize('heap-struct-1.c')
myAnalyzer.addQuery(18, 'p', {'main:a'})
myAnalyzer.addQuery(23, 'p', {'main:b'})
myAnalyzer.analysis()

# heap-struct-2.c测试 #
myAnalyzer.initialize('heap-struct-2.c')
myAnalyzer.addQuery(17, 'p', {'malloc:$0:15'})
myAnalyzer.addQuery(22, 'p', {'malloc:$0:20'})
myAnalyzer.analysis()

# heap-struct-context-1.c测试 #
myAnalyzer.initialize('heap-struct-context-1.c')
myAnalyzer.addQuery(24, 'p', {'main:a'})
myAnalyzer.addQuery(30, 'p', {'main:b'})
myAnalyzer.analysis()

# heap-struct-context-2.c测试 #
myAnalyzer.initialize('heap-struct-context-2.c')
myAnalyzer.addQuery(22, 'p', {'malloc:$0:20'})
myAnalyzer.addQuery(27, 'p', {'malloc:$0:25'})
myAnalyzer.analysis()

# heap-struct-path-1.c测试 #
myAnalyzer.initialize('heap-struct-path-1.c')
myAnalyzer.addQuery(21, 'p', {'main:a', 'main:b'})
myAnalyzer.addQuery(29, 'p', {'main:b', 'main:c'})
myAnalyzer.analysis()

# heap-struct-path-2.c测试 #
myAnalyzer.initialize('heap-struct-path-2.c')
myAnalyzer.addQuery(21, 'p', {'malloc:$0:17', 'malloc:$0:19'})
myAnalyzer.addQuery(29, 'p', {'malloc:$0:25', 'malloc:$0:27'})
myAnalyzer.analysis()

# heap-indirect.c测试 #
myAnalyzer.initialize('heap-indirect.c')
myAnalyzer.addQuery(24, 'p', {'malloc:$0:13'})
myAnalyzer.addQuery(25, 'p', {'malloc:$0:14'})
myAnalyzer.analysis()

# heap-linkedlist.c测试 #
myAnalyzer.initialize('heap-linkedlist.c')
myAnalyzer.addQuery(31, 'p_data1', {'malloc:$0:24'})
myAnalyzer.addQuery(31, 'p_data2', {'malloc:$0:24'})
myAnalyzer.addQuery(41, 'p', {'null'})
myAnalyzer.addQuery(42, 'p', {'null'})
myAnalyzer.analysis()

# heap-wrapper.c测试 #
myAnalyzer.initialize('heap-wrapper.c')
myAnalyzer.addQuery(22, 'o1', {'malloc:$0:13'})
myAnalyzer.addQuery(22, 'o2', {'malloc:$0:13'})
myAnalyzer.analysis()


# 创建新测试集 #
myAnalyzer.addBenchmark('global-tests')

# global-1.c测试 #
myAnalyzer.initialize('global-1.c')
myAnalyzer.addQuery(14, 'p', {'main:a'})
myAnalyzer.analysis()

# global-2.c测试 #
myAnalyzer.initialize('global-2.c')
myAnalyzer.addQuery(14, 'p', {'main:a'})
myAnalyzer.analysis()

# global-3.c测试 #
myAnalyzer.initialize('global-3.c')
myAnalyzer.addQuery(9, '@qq', {'q'})
myAnalyzer.addQuery(22, '@qq', {'q'})
myAnalyzer.analysis()

# global-4.c测试 #
myAnalyzer.initialize('global-4.c')
myAnalyzer.addQuery(10, '@pp', {'p'})
myAnalyzer.addQuery(10, '@qq', {'q'})
myAnalyzer.addQuery(23, '@pp', {'p'})
myAnalyzer.addQuery(23, '@qq', {'q'})
myAnalyzer.analysis()

# global-5.c测试 #
myAnalyzer.initialize('global-5.c')
myAnalyzer.addQuery(21, '@pp', {'p'})
myAnalyzer.addQuery(21, '@qq', {'q'})
myAnalyzer.analysis()

# global-6.c测试 #
myAnalyzer.initialize('global-6.c')
myAnalyzer.addQuery(12, 'b', {'Xray:d'})
myAnalyzer.addQuery(12, 'w', {'Xray:d'})
myAnalyzer.analysis()

# global-7.c测试 #
myAnalyzer.initialize('global-7.c')
myAnalyzer.addQuery(21, '@pp', {'p'})
myAnalyzer.addQuery(21, '@qq', {'q'})
myAnalyzer.analysis()

# global-context.c测试 #
myAnalyzer.initialize('global-context.c')
myAnalyzer.addQuery(18, '@y', {'a'})
myAnalyzer.addQuery(22, '@y', {'b'})
myAnalyzer.analysis()

# global-path.c测试 #
myAnalyzer.initialize('global-path.c')
myAnalyzer.addQuery(15, '@x', {'a', 'b'})
myAnalyzer.addQuery(15, '@y', {'a', 'b'})
myAnalyzer.addQuery(21, '@x', {'b', 'c'})
myAnalyzer.addQuery(21, '@y', {'b', 'c'})
myAnalyzer.analysis()

# global-simple.c测试 #
myAnalyzer.initialize('global-simple.c')
myAnalyzer.addQuery(11, '@x', {'a'})
myAnalyzer.addQuery(11, '@y', {'a'})
myAnalyzer.addQuery(13, '@x', {'b'})
myAnalyzer.addQuery(13, '@y', {'b'})
myAnalyzer.analysis()

# global-struct-context.c测试 #
myAnalyzer.initialize('global-struct-context.c')
myAnalyzer.addQuery(25, '@p', {'a'})
myAnalyzer.addQuery(29, '@p', {'b'})
myAnalyzer.analysis()

# global-struct-path.c测试 #
myAnalyzer.initialize('global-struct-path.c')
myAnalyzer.addQuery(23, '@p', {'a', 'b'})
myAnalyzer.addQuery(30, '@p', {'c', 'b'})
myAnalyzer.analysis()

# global-struct.c测试 #
myAnalyzer.initialize('global-struct.c')
myAnalyzer.addQuery(19, '@p', {'a'})
myAnalyzer.addQuery(23, '@p', {'b'})
myAnalyzer.analysis()

# global-array.c测试 #
myAnalyzer.initialize('global-array.c')
myAnalyzer.addQuery(38, '@context', {'context'})
myAnalyzer.analysis()

# global-call-noparam.c测试 #
myAnalyzer.initialize('global-call-noparam.c')
myAnalyzer.addQuery(14, '@p', {'c'})
myAnalyzer.addQuery(14, '@q', {'main:a', 'c'})
myAnalyzer.analysis()

# global-call-struct.c测试 #
myAnalyzer.initialize('global-call-struct.c')
myAnalyzer.addQuery(38, 'p', {'x'})
myAnalyzer.addQuery(38, 'q', {'x'})
myAnalyzer.addQuery(38, 'r', {'null'})
myAnalyzer.analysis()

# global-call-twoparms.c测试 #
myAnalyzer.initialize('global-call-twoparms.c')
myAnalyzer.addQuery(53, 'p', {'null'})
myAnalyzer.addQuery(53, 'q', {'null'})
myAnalyzer.analysis()

# global-const-struct.c测试 #
myAnalyzer.initialize('global-const-struct.c')
myAnalyzer.addQuery(5, 'p', {'main:$3'})
myAnalyzer.analysis()

# global-funptr.c测试 #
myAnalyzer.initialize('global-funptr.c')
myAnalyzer.addQuery(27, 'q', {'y'})
myAnalyzer.analysis()

# global-initializer.c测试 #
myAnalyzer.initialize('global-initializer.c')
myAnalyzer.addQuery(29, '@p', {'x'})
myAnalyzer.addQuery(29, '@q', {'x'})
myAnalyzer.analysis()

# global-nested-calls.c测试 #
myAnalyzer.initialize('global-nested-calls.c')
myAnalyzer.addQuery(28, '@p', {'x'})
myAnalyzer.addQuery(28, '@q', {'x'})
myAnalyzer.analysis()

# 创建新测试集 #
myAnalyzer.addBenchmark('')
