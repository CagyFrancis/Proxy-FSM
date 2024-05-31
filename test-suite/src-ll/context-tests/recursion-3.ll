; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@x = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global i32 0, align 4, !dbg !10
@y = dso_local global i32* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32** noundef %0) #0 !dbg !18 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i32, i32* @x, align 4, !dbg !25
  %4 = icmp ne i32 %3, 0, !dbg !25
  br i1 %4, label %5, label %8, !dbg !27

5:                                                ; preds = %1
  %6 = load i32**, i32*** %2, align 8, !dbg !28
  store i32* @x, i32** %6, align 8, !dbg !30
  %7 = load i32**, i32*** %2, align 8, !dbg !31
  call void @f(i32** noundef %7), !dbg !32
  br label %10, !dbg !33

8:                                                ; preds = %1
  %9 = load i32**, i32*** %2, align 8, !dbg !34
  store i32* @z, i32** %9, align 8, !dbg !36
  br label %10

10:                                               ; preds = %8, %5
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !41, metadata !DIExpression()), !dbg !42
  store i32** @y, i32*** %2, align 8, !dbg !42
  %3 = load i32**, i32*** %2, align 8, !dbg !43
  call void @f(i32** noundef %3), !dbg !44
  ret i32 0, !dbg !45
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !10}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-3.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 3, type: !19, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !{}
!23 = !DILocalVariable(name: "m", arg: 1, scope: !18, file: !7, line: 3, type: !21)
!24 = !DILocation(line: 3, column: 14, scope: !18)
!25 = !DILocation(line: 5, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !7, line: 5, column: 6)
!27 = !DILocation(line: 5, column: 6, scope: !18)
!28 = !DILocation(line: 7, column: 4, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !7, line: 6, column: 2)
!30 = !DILocation(line: 7, column: 6, scope: !29)
!31 = !DILocation(line: 8, column: 5, scope: !29)
!32 = !DILocation(line: 8, column: 3, scope: !29)
!33 = !DILocation(line: 9, column: 2, scope: !29)
!34 = !DILocation(line: 12, column: 4, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !7, line: 11, column: 2)
!36 = !DILocation(line: 12, column: 6, scope: !35)
!37 = !DILocation(line: 14, column: 1, scope: !18)
!38 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 16, type: !39, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!39 = !DISubroutineType(types: !40)
!40 = !{!9}
!41 = !DILocalVariable(name: "a", scope: !38, file: !7, line: 18, type: !21)
!42 = !DILocation(line: 18, column: 8, scope: !38)
!43 = !DILocation(line: 19, column: 4, scope: !38)
!44 = !DILocation(line: 19, column: 2, scope: !38)
!45 = !DILocation(line: 20, column: 2, scope: !38)
