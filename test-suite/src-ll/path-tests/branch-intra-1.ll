; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\branch-intra-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\branch-intra-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32** %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32** %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %6, metadata !23, metadata !DIExpression()), !dbg !24
  %7 = load i32, i32* %5, align 4, !dbg !25
  %8 = icmp ne i32 %7, 0, !dbg !25
  br i1 %8, label %9, label %10, !dbg !27

9:                                                ; preds = %0
  store i32* %5, i32** %4, align 8, !dbg !28
  br label %11, !dbg !29

10:                                               ; preds = %0
  store i32* %6, i32** %4, align 8, !dbg !30
  br label %11

11:                                               ; preds = %10, %9
  store i32* %6, i32** %3, align 8, !dbg !31
  %12 = load i32*, i32** %4, align 8, !dbg !32
  store i32* %12, i32** %2, align 8, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/branch-intra-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/branch-intra-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 9, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!16 = !DILocation(line: 9, column: 7, scope: !8)
!17 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 9, type: !15)
!18 = !DILocation(line: 9, column: 11, scope: !8)
!19 = !DILocalVariable(name: "r", scope: !8, file: !9, line: 9, type: !15)
!20 = !DILocation(line: 9, column: 15, scope: !8)
!21 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 10, type: !12)
!22 = !DILocation(line: 10, column: 6, scope: !8)
!23 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 10, type: !12)
!24 = !DILocation(line: 10, column: 9, scope: !8)
!25 = !DILocation(line: 12, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !8, file: !9, line: 12, column: 6)
!27 = !DILocation(line: 12, column: 6, scope: !8)
!28 = !DILocation(line: 13, column: 5, scope: !26)
!29 = !DILocation(line: 13, column: 3, scope: !26)
!30 = !DILocation(line: 15, column: 5, scope: !26)
!31 = !DILocation(line: 17, column: 4, scope: !8)
!32 = !DILocation(line: 18, column: 6, scope: !8)
!33 = !DILocation(line: 18, column: 4, scope: !8)
!34 = !DILocation(line: 20, column: 2, scope: !8)
