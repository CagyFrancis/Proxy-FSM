; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\recursion-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\recursion-1.c"
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
  %5 = icmp sge i32 %4, 5, !dbg !22
  br i1 %5, label %6, label %7, !dbg !23

6:                                                ; preds = %1
  store i32* @g, i32** %2, align 8, !dbg !24
  br label %12, !dbg !24

7:                                                ; preds = %1
  %8 = load i32, i32* @g, align 4, !dbg !26
  %9 = add nsw i32 %8, 1, !dbg !26
  store i32 %9, i32* @g, align 4, !dbg !26
  %10 = load i32*, i32** %3, align 8, !dbg !27
  %11 = call i32* @foo(i32* noundef %10), !dbg !28
  store i32* %11, i32** %2, align 8, !dbg !29
  br label %12, !dbg !29

12:                                               ; preds = %7, %6
  %13 = load i32*, i32** %2, align 8, !dbg !30
  ret i32* %13, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 10, i32* %2, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32** %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 0, i32* @g, align 4, !dbg !38
  %4 = call i32* @foo(i32* noundef %2), !dbg !39
  store i32* %4, i32** %3, align 8, !dbg !40
  ret i32 0, !dbg !41
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/recursion-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/recursion-1.c", directory: "")
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
!18 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!19 = !DILocation(line: 3, column: 15, scope: !13)
!20 = !DILocation(line: 5, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !13, file: !5, line: 5, column: 9)
!22 = !DILocation(line: 5, column: 11, scope: !21)
!23 = !DILocation(line: 5, column: 9, scope: !13)
!24 = !DILocation(line: 7, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !5, line: 6, column: 5)
!26 = !DILocation(line: 9, column: 7, scope: !13)
!27 = !DILocation(line: 10, column: 16, scope: !13)
!28 = !DILocation(line: 10, column: 12, scope: !13)
!29 = !DILocation(line: 10, column: 5, scope: !13)
!30 = !DILocation(line: 11, column: 1, scope: !13)
!31 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 13, type: !32, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!32 = !DISubroutineType(types: !33)
!33 = !{!6}
!34 = !DILocalVariable(name: "a", scope: !31, file: !5, line: 15, type: !6)
!35 = !DILocation(line: 15, column: 9, scope: !31)
!36 = !DILocalVariable(name: "p", scope: !31, file: !5, line: 16, type: !16)
!37 = !DILocation(line: 16, column: 10, scope: !31)
!38 = !DILocation(line: 17, column: 7, scope: !31)
!39 = !DILocation(line: 19, column: 9, scope: !31)
!40 = !DILocation(line: 19, column: 7, scope: !31)
!41 = !DILocation(line: 21, column: 5, scope: !31)
