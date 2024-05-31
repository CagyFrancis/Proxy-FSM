; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\main-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\main-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo1() #0 !dbg !8 {
  ret void, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo2() #0 !dbg !14 {
  ret void, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo3() #0 !dbg !16 {
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca void ()*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata void ()** %3, metadata !24, metadata !DIExpression()), !dbg !26
  %4 = load i32, i32* %2, align 4, !dbg !27
  %5 = icmp ne i32 %4, 0, !dbg !27
  br i1 %5, label %6, label %7, !dbg !29

6:                                                ; preds = %0
  store void ()* @foo1, void ()** %3, align 8, !dbg !30
  br label %8, !dbg !31

7:                                                ; preds = %0
  store void ()* @foo3, void ()** %3, align 8, !dbg !32
  br label %8

8:                                                ; preds = %7, %6
  %9 = load void ()*, void ()** %3, align 8, !dbg !33
  call void %9(), !dbg !33
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
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/main-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo1", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/main-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{}
!13 = !DILocation(line: 1, column: 34, scope: !8)
!14 = distinct !DISubprogram(name: "foo2", scope: !9, file: !9, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!15 = !DILocation(line: 3, column: 34, scope: !14)
!16 = distinct !DISubprogram(name: "foo3", scope: !9, file: !9, line: 5, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!17 = !DILocation(line: 5, column: 34, scope: !16)
!18 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !19, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "cond", scope: !18, file: !9, line: 8, type: !21)
!23 = !DILocation(line: 8, column: 9, scope: !18)
!24 = !DILocalVariable(name: "p", scope: !18, file: !9, line: 9, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!26 = !DILocation(line: 9, column: 12, scope: !18)
!27 = !DILocation(line: 11, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !18, file: !9, line: 11, column: 9)
!29 = !DILocation(line: 11, column: 9, scope: !18)
!30 = !DILocation(line: 11, column: 17, scope: !28)
!31 = !DILocation(line: 11, column: 15, scope: !28)
!32 = !DILocation(line: 12, column: 12, scope: !28)
!33 = !DILocation(line: 14, column: 5, scope: !18)
!34 = !DILocation(line: 16, column: 5, scope: !18)
