; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\context-8.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\context-8.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32*** noundef %0, i32* noundef %1) #0 !dbg !8 {
  %3 = alloca i32***, align 8
  %4 = alloca i32*, align 8
  store i32*** %0, i32**** %3, align 8
  call void @llvm.dbg.declare(metadata i32**** %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = load i32*, i32** %4, align 8, !dbg !21
  %6 = load i32***, i32**** %3, align 8, !dbg !22
  %7 = load i32**, i32*** %6, align 8, !dbg !23
  store i32* %5, i32** %7, align 8, !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 10, i32* %2, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 20, i32* %3, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i32* %2, i32** %4, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !35, metadata !DIExpression()), !dbg !36
  store i32** %4, i32*** %5, align 8, !dbg !36
  call void @foo(i32*** noundef %5, i32* noundef %3), !dbg !37
  ret i32 0, !dbg !38
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/context-8.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/context-8.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!18 = !DILocation(line: 1, column: 17, scope: !8)
!19 = !DILocalVariable(name: "q", arg: 2, scope: !8, file: !9, line: 1, type: !14)
!20 = !DILocation(line: 1, column: 25, scope: !8)
!21 = !DILocation(line: 3, column: 11, scope: !8)
!22 = !DILocation(line: 3, column: 7, scope: !8)
!23 = !DILocation(line: 3, column: 6, scope: !8)
!24 = !DILocation(line: 3, column: 9, scope: !8)
!25 = !DILocation(line: 4, column: 1, scope: !8)
!26 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !27, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!27 = !DISubroutineType(types: !28)
!28 = !{!15}
!29 = !DILocalVariable(name: "a", scope: !26, file: !9, line: 8, type: !15)
!30 = !DILocation(line: 8, column: 9, scope: !26)
!31 = !DILocalVariable(name: "b", scope: !26, file: !9, line: 8, type: !15)
!32 = !DILocation(line: 8, column: 17, scope: !26)
!33 = !DILocalVariable(name: "p", scope: !26, file: !9, line: 9, type: !14)
!34 = !DILocation(line: 9, column: 10, scope: !26)
!35 = !DILocalVariable(name: "q", scope: !26, file: !9, line: 10, type: !13)
!36 = !DILocation(line: 10, column: 11, scope: !26)
!37 = !DILocation(line: 12, column: 5, scope: !26)
!38 = !DILocation(line: 14, column: 5, scope: !26)
