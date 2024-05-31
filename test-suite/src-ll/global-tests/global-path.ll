; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-path.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-path.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@b = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global i32* null, align 8, !dbg !16
@c = dso_local global i32 0, align 4, !dbg !9
@w = dso_local global i32* null, align 8, !dbg !18
@x = dso_local global i32* null, align 8, !dbg !11
@p = dso_local global i32** null, align 8, !dbg !20
@a = dso_local global i32 0, align 4, !dbg !5
@y = dso_local global i32* null, align 8, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @b, i32** @z, align 8, !dbg !33
  store i32* @c, i32** @w, align 8, !dbg !34
  store i32** @x, i32*** @p, align 8, !dbg !35
  %2 = load i32, i32* @c, align 4, !dbg !36
  %3 = icmp ne i32 %2, 0, !dbg !36
  br i1 %3, label %4, label %5, !dbg !38

4:                                                ; preds = %0
  store i32* @a, i32** @x, align 8, !dbg !39
  br label %6, !dbg !40

5:                                                ; preds = %0
  store i32* @b, i32** @x, align 8, !dbg !41
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32*, i32** @x, align 8, !dbg !42
  store i32* %7, i32** @y, align 8, !dbg !43
  %8 = load i32, i32* @c, align 4, !dbg !44
  %9 = icmp ne i32 %8, 0, !dbg !44
  br i1 %9, label %10, label %13, !dbg !46

10:                                               ; preds = %6
  %11 = load i32*, i32** @z, align 8, !dbg !47
  %12 = load i32**, i32*** @p, align 8, !dbg !48
  store i32* %11, i32** %12, align 8, !dbg !49
  br label %16, !dbg !50

13:                                               ; preds = %6
  %14 = load i32*, i32** @w, align 8, !dbg !51
  %15 = load i32**, i32*** @p, align 8, !dbg !52
  store i32* %14, i32** %15, align 8, !dbg !53
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32**, i32*** @p, align 8, !dbg !54
  %18 = load i32*, i32** %17, align 8, !dbg !55
  store i32* %18, i32** @y, align 8, !dbg !56
  ret i32 0, !dbg !57
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-path.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9, !11, !14, !16, !18, !20}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-path.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 2, type: !13, isLocal: false, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 2, type: !13, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 2, type: !13, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "w", scope: !2, file: !7, line: 2, type: !13, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 3, type: !22, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!29 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 5, type: !30, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!8}
!32 = !{}
!33 = !DILocation(line: 7, column: 7, scope: !29)
!34 = !DILocation(line: 8, column: 7, scope: !29)
!35 = !DILocation(line: 9, column: 7, scope: !29)
!36 = !DILocation(line: 11, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !7, line: 11, column: 9)
!38 = !DILocation(line: 11, column: 9, scope: !29)
!39 = !DILocation(line: 12, column: 11, scope: !37)
!40 = !DILocation(line: 12, column: 9, scope: !37)
!41 = !DILocation(line: 14, column: 11, scope: !37)
!42 = !DILocation(line: 15, column: 9, scope: !29)
!43 = !DILocation(line: 15, column: 7, scope: !29)
!44 = !DILocation(line: 17, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !29, file: !7, line: 17, column: 9)
!46 = !DILocation(line: 17, column: 9, scope: !29)
!47 = !DILocation(line: 18, column: 14, scope: !45)
!48 = !DILocation(line: 18, column: 10, scope: !45)
!49 = !DILocation(line: 18, column: 12, scope: !45)
!50 = !DILocation(line: 18, column: 9, scope: !45)
!51 = !DILocation(line: 20, column: 14, scope: !45)
!52 = !DILocation(line: 20, column: 10, scope: !45)
!53 = !DILocation(line: 20, column: 12, scope: !45)
!54 = !DILocation(line: 21, column: 10, scope: !29)
!55 = !DILocation(line: 21, column: 9, scope: !29)
!56 = !DILocation(line: 21, column: 7, scope: !29)
!57 = !DILocation(line: 23, column: 5, scope: !29)
