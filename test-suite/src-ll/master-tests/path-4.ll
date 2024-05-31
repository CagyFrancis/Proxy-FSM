; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\path-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\path-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 noundef %0) #0 !dbg !8 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !20
  store i32* %2, i32** %4, align 8, !dbg !20
  br label %5, !dbg !21

5:                                                ; preds = %8, %1
  %6 = load i32, i32* %2, align 4, !dbg !22
  %7 = icmp ne i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %9, !dbg !21

8:                                                ; preds = %5
  store i32* %3, i32** %4, align 8, !dbg !23
  br label %5, !dbg !21, !llvm.loop !25

9:                                                ; preds = %5
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i32 noundef 3), !dbg !32
  call void @foo(i32 noundef 0), !dbg !33
  ret i32 0, !dbg !34
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/path-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/path-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "c", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 14, scope: !8)
!16 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 9, scope: !8)
!18 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 4, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DILocation(line: 4, column: 10, scope: !8)
!21 = !DILocation(line: 5, column: 5, scope: !8)
!22 = !DILocation(line: 5, column: 12, scope: !8)
!23 = !DILocation(line: 7, column: 11, scope: !24)
!24 = distinct !DILexicalBlock(scope: !8, file: !9, line: 6, column: 5)
!25 = distinct !{!25, !21, !26, !27}
!26 = !DILocation(line: 8, column: 5, scope: !8)
!27 = !{!"llvm.loop.mustprogress"}
!28 = !DILocation(line: 9, column: 5, scope: !8)
!29 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !30, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!30 = !DISubroutineType(types: !31)
!31 = !{!12}
!32 = !DILocation(line: 14, column: 5, scope: !29)
!33 = !DILocation(line: 15, column: 5, scope: !29)
!34 = !DILocation(line: 16, column: 5, scope: !29)
