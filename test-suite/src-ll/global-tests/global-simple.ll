; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-simple.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-simple.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@b = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global i32* null, align 8, !dbg !14
@x = dso_local global i32* null, align 8, !dbg !9
@p = dso_local global i32** null, align 8, !dbg !16
@a = dso_local global i32 0, align 4, !dbg !5
@y = dso_local global i32* null, align 8, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @b, i32** @z, align 8, !dbg !29
  store i32** @x, i32*** @p, align 8, !dbg !30
  store i32* @a, i32** @x, align 8, !dbg !31
  %2 = load i32*, i32** @x, align 8, !dbg !32
  store i32* %2, i32** @y, align 8, !dbg !33
  %3 = load i32*, i32** @z, align 8, !dbg !34
  %4 = load i32**, i32*** @p, align 8, !dbg !35
  store i32* %3, i32** %4, align 8, !dbg !36
  %5 = load i32**, i32*** @p, align 8, !dbg !37
  %6 = load i32*, i32** %5, align 8, !dbg !38
  store i32* %6, i32** @y, align 8, !dbg !39
  ret i32 0, !dbg !40
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-simple.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9, !12, !14, !16}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-simple.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 2, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 2, type: !11, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 2, type: !11, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 3, type: !18, isLocal: false, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!25 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 5, type: !26, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!8}
!28 = !{}
!29 = !DILocation(line: 7, column: 4, scope: !25)
!30 = !DILocation(line: 8, column: 4, scope: !25)
!31 = !DILocation(line: 10, column: 7, scope: !25)
!32 = !DILocation(line: 11, column: 9, scope: !25)
!33 = !DILocation(line: 11, column: 7, scope: !25)
!34 = !DILocation(line: 12, column: 10, scope: !25)
!35 = !DILocation(line: 12, column: 6, scope: !25)
!36 = !DILocation(line: 12, column: 8, scope: !25)
!37 = !DILocation(line: 13, column: 10, scope: !25)
!38 = !DILocation(line: 13, column: 9, scope: !25)
!39 = !DILocation(line: 13, column: 7, scope: !25)
!40 = !DILocation(line: 15, column: 2, scope: !25)
