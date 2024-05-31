; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\recursion-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\recursion-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@g = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !13 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !18, metadata !DIExpression()), !dbg !19
  %4 = load i32, i32* @g, align 4, !dbg !20
  %5 = icmp sge i32 %4, 10, !dbg !22
  br i1 %5, label %6, label %8, !dbg !23

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8, !dbg !24
  store i32* %7, i32** %2, align 8, !dbg !26
  br label %13, !dbg !26

8:                                                ; preds = %1
  %9 = load i32, i32* @g, align 4, !dbg !27
  %10 = add nsw i32 %9, 1, !dbg !27
  store i32 %10, i32* @g, align 4, !dbg !27
  %11 = load i32*, i32** %3, align 8, !dbg !28
  %12 = call i32* @foo(i32* noundef %11), !dbg !29
  store i32* %12, i32** %2, align 8, !dbg !30
  br label %13, !dbg !30

13:                                               ; preds = %8, %6
  %14 = load i32*, i32** %2, align 8, !dbg !31
  ret i32* %14, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* @g, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %2, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 10, i32* %2, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32** %3, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = call i32* @foo(i32* noundef %2), !dbg !40
  store i32* %4, i32** %3, align 8, !dbg !41
  ret i32 0, !dbg !42
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/recursion-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/recursion-2.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!17 = !{}
!18 = !DILocalVariable(name: "p", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!19 = !DILocation(line: 3, column: 15, scope: !13)
!20 = !DILocation(line: 5, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !13, file: !5, line: 5, column: 9)
!22 = !DILocation(line: 5, column: 11, scope: !21)
!23 = !DILocation(line: 5, column: 9, scope: !13)
!24 = !DILocation(line: 6, column: 16, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !5, line: 5, column: 18)
!26 = !DILocation(line: 6, column: 9, scope: !25)
!27 = !DILocation(line: 8, column: 7, scope: !13)
!28 = !DILocation(line: 9, column: 16, scope: !13)
!29 = !DILocation(line: 9, column: 12, scope: !13)
!30 = !DILocation(line: 9, column: 5, scope: !13)
!31 = !DILocation(line: 10, column: 1, scope: !13)
!32 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 12, type: !33, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!33 = !DISubroutineType(types: !34)
!34 = !{!6}
!35 = !DILocation(line: 14, column: 7, scope: !32)
!36 = !DILocalVariable(name: "a", scope: !32, file: !5, line: 15, type: !6)
!37 = !DILocation(line: 15, column: 9, scope: !32)
!38 = !DILocalVariable(name: "p", scope: !32, file: !5, line: 16, type: !16)
!39 = !DILocation(line: 16, column: 10, scope: !32)
!40 = !DILocation(line: 18, column: 9, scope: !32)
!41 = !DILocation(line: 18, column: 7, scope: !32)
!42 = !DILocation(line: 20, column: 5, scope: !32)
