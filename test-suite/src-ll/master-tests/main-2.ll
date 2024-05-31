; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\main-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\main-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bar(i32* noundef %0) #0 !dbg !8 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32*, i32** %2, align 8, !dbg !17
  ret i32* %3, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !19 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !20, metadata !DIExpression()), !dbg !21
  %3 = load i32*, i32** %2, align 8, !dbg !22
  %4 = call i32* @bar(i32* noundef %3), !dbg !23
  ret i32* %4, !dbg !24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %3, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32** %4, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32** %5, metadata !34, metadata !DIExpression()), !dbg !35
  %6 = call i32* @foo(i32* noundef %2), !dbg !36
  store i32* %6, i32** %4, align 8, !dbg !37
  %7 = call i32* @foo(i32* noundef %3), !dbg !38
  store i32* %7, i32** %5, align 8, !dbg !39
  ret i32 0, !dbg !40
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/main-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/main-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocation(line: 2, column: 12, scope: !8)
!18 = !DILocation(line: 2, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 5, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DILocalVariable(name: "q", arg: 1, scope: !19, file: !9, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 15, scope: !19)
!22 = !DILocation(line: 6, column: 16, scope: !19)
!23 = !DILocation(line: 6, column: 12, scope: !19)
!24 = !DILocation(line: 6, column: 5, scope: !19)
!25 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !26, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!26 = !DISubroutineType(types: !27)
!27 = !{!13}
!28 = !DILocalVariable(name: "a", scope: !25, file: !9, line: 10, type: !13)
!29 = !DILocation(line: 10, column: 9, scope: !25)
!30 = !DILocalVariable(name: "b", scope: !25, file: !9, line: 10, type: !13)
!31 = !DILocation(line: 10, column: 12, scope: !25)
!32 = !DILocalVariable(name: "r1", scope: !25, file: !9, line: 11, type: !12)
!33 = !DILocation(line: 11, column: 10, scope: !25)
!34 = !DILocalVariable(name: "r2", scope: !25, file: !9, line: 11, type: !12)
!35 = !DILocation(line: 11, column: 15, scope: !25)
!36 = !DILocation(line: 13, column: 10, scope: !25)
!37 = !DILocation(line: 13, column: 8, scope: !25)
!38 = !DILocation(line: 14, column: 10, scope: !25)
!39 = !DILocation(line: 14, column: 8, scope: !25)
!40 = !DILocation(line: 16, column: 5, scope: !25)
