; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@y = dso_local global i32* null, align 8, !dbg !0
@z = dso_local global i32 0, align 4, !dbg !11
@x = dso_local global i32** null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32** noundef %0) #0 !dbg !19 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %3, i32** @y, align 8, !dbg !27
  %4 = load i32, i32* @z, align 4, !dbg !28
  %5 = icmp ne i32 %4, 0, !dbg !28
  br i1 %5, label %6, label %9, !dbg !30

6:                                                ; preds = %1
  %7 = load i32**, i32*** %2, align 8, !dbg !31
  store i32* @z, i32** %7, align 8, !dbg !33
  %8 = load i32**, i32*** %2, align 8, !dbg !34
  call void @f(i32** noundef %8), !dbg !35
  br label %9, !dbg !36

9:                                                ; preds = %6, %1
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32** @y, i32*** @x, align 8, !dbg !41
  %2 = load i32**, i32*** @x, align 8, !dbg !42
  call void @f(i32** noundef %2), !dbg !43
  ret i32 0, !dbg !44
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !11}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-4.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 2, type: !10, isLocal: false, isDefinition: true)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!19 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 4, type: !20, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !8}
!22 = !{}
!23 = !DILocalVariable(name: "p", arg: 1, scope: !19, file: !7, line: 4, type: !8)
!24 = !DILocation(line: 4, column: 14, scope: !19)
!25 = !DILocalVariable(name: "k", scope: !19, file: !7, line: 6, type: !10)
!26 = !DILocation(line: 6, column: 6, scope: !19)
!27 = !DILocation(line: 7, column: 4, scope: !19)
!28 = !DILocation(line: 8, column: 6, scope: !29)
!29 = distinct !DILexicalBlock(scope: !19, file: !7, line: 8, column: 6)
!30 = !DILocation(line: 8, column: 6, scope: !19)
!31 = !DILocation(line: 10, column: 4, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !7, line: 9, column: 2)
!33 = !DILocation(line: 10, column: 6, scope: !32)
!34 = !DILocation(line: 11, column: 5, scope: !32)
!35 = !DILocation(line: 11, column: 3, scope: !32)
!36 = !DILocation(line: 12, column: 2, scope: !32)
!37 = !DILocation(line: 17, column: 1, scope: !19)
!38 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 19, type: !39, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!39 = !DISubroutineType(types: !40)
!40 = !{!10}
!41 = !DILocation(line: 21, column: 4, scope: !38)
!42 = !DILocation(line: 22, column: 4, scope: !38)
!43 = !DILocation(line: 22, column: 2, scope: !38)
!44 = !DILocation(line: 23, column: 2, scope: !38)
