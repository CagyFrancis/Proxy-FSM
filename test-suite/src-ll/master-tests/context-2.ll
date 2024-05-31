; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\context-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\context-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32* noundef %1) #0 !dbg !8 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32*, i32** %4, align 8, !dbg !20
  %6 = load i32**, i32*** %3, align 8, !dbg !21
  store i32* %5, i32** %6, align 8, !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 10, i32* %2, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 20, i32* %3, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @foo(i32** noundef %4, i32* noundef %2), !dbg !33
  call void @foo(i32** noundef %4, i32* noundef %3), !dbg !34
  ret i32 0, !dbg !35
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/context-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/context-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "q", arg: 2, scope: !8, file: !9, line: 1, type: !13)
!19 = !DILocation(line: 1, column: 24, scope: !8)
!20 = !DILocation(line: 3, column: 10, scope: !8)
!21 = !DILocation(line: 3, column: 6, scope: !8)
!22 = !DILocation(line: 3, column: 8, scope: !8)
!23 = !DILocation(line: 4, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !25, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!25 = !DISubroutineType(types: !26)
!26 = !{!14}
!27 = !DILocalVariable(name: "a", scope: !24, file: !9, line: 8, type: !14)
!28 = !DILocation(line: 8, column: 9, scope: !24)
!29 = !DILocalVariable(name: "b", scope: !24, file: !9, line: 8, type: !14)
!30 = !DILocation(line: 8, column: 17, scope: !24)
!31 = !DILocalVariable(name: "x", scope: !24, file: !9, line: 9, type: !13)
!32 = !DILocation(line: 9, column: 10, scope: !24)
!33 = !DILocation(line: 11, column: 5, scope: !24)
!34 = !DILocation(line: 12, column: 5, scope: !24)
!35 = !DILocation(line: 14, column: 5, scope: !24)
