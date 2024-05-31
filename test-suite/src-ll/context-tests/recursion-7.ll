; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-7.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-7.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* noundef %0) #0 !dbg !8 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32*, i32** %2, align 8, !dbg !17
  store i32 10, i32* %3, align 4, !dbg !18
  %4 = load i32*, i32** %2, align 8, !dbg !19
  %5 = load i32, i32* %4, align 4, !dbg !21
  %6 = icmp ne i32 %5, 100, !dbg !22
  br i1 %6, label %7, label %9, !dbg !23

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8, !dbg !24
  call void @bar(i32* noundef %8), !dbg !25
  br label %9, !dbg !25

9:                                                ; preds = %7, %1
  ret void, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32* noundef %0) #0 !dbg !27 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !28, metadata !DIExpression()), !dbg !29
  %3 = load i32*, i32** %2, align 8, !dbg !30
  store i32 100, i32* %3, align 4, !dbg !31
  %4 = load i32*, i32** %2, align 8, !dbg !32
  call void @foo(i32* noundef %4), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !35 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %3, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %4, metadata !42, metadata !DIExpression()), !dbg !43
  store i32* %3, i32** %2, align 8, !dbg !44
  %5 = load i32*, i32** %2, align 8, !dbg !45
  call void @foo(i32* noundef %5), !dbg !46
  store i32* %4, i32** %2, align 8, !dbg !47
  %6 = load i32*, i32** %2, align 8, !dbg !48
  call void @foo(i32* noundef %6), !dbg !49
  ret i32 0, !dbg !50
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-7.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-7.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 4, type: !12)
!16 = !DILocation(line: 4, column: 15, scope: !8)
!17 = !DILocation(line: 6, column: 6, scope: !8)
!18 = !DILocation(line: 6, column: 8, scope: !8)
!19 = !DILocation(line: 7, column: 10, scope: !20)
!20 = distinct !DILexicalBlock(scope: !8, file: !9, line: 7, column: 9)
!21 = !DILocation(line: 7, column: 9, scope: !20)
!22 = !DILocation(line: 7, column: 12, scope: !20)
!23 = !DILocation(line: 7, column: 9, scope: !8)
!24 = !DILocation(line: 8, column: 13, scope: !20)
!25 = !DILocation(line: 8, column: 9, scope: !20)
!26 = !DILocation(line: 9, column: 1, scope: !8)
!27 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 11, type: !10, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!28 = !DILocalVariable(name: "q", arg: 1, scope: !27, file: !9, line: 11, type: !12)
!29 = !DILocation(line: 11, column: 15, scope: !27)
!30 = !DILocation(line: 13, column: 6, scope: !27)
!31 = !DILocation(line: 13, column: 8, scope: !27)
!32 = !DILocation(line: 14, column: 9, scope: !27)
!33 = !DILocation(line: 14, column: 5, scope: !27)
!34 = !DILocation(line: 15, column: 1, scope: !27)
!35 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 17, type: !36, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!36 = !DISubroutineType(types: !37)
!37 = !{!13}
!38 = !DILocalVariable(name: "a", scope: !35, file: !9, line: 19, type: !12)
!39 = !DILocation(line: 19, column: 10, scope: !35)
!40 = !DILocalVariable(name: "b", scope: !35, file: !9, line: 19, type: !13)
!41 = !DILocation(line: 19, column: 13, scope: !35)
!42 = !DILocalVariable(name: "c", scope: !35, file: !9, line: 19, type: !13)
!43 = !DILocation(line: 19, column: 16, scope: !35)
!44 = !DILocation(line: 21, column: 7, scope: !35)
!45 = !DILocation(line: 22, column: 9, scope: !35)
!46 = !DILocation(line: 22, column: 5, scope: !35)
!47 = !DILocation(line: 23, column: 7, scope: !35)
!48 = !DILocation(line: 24, column: 9, scope: !35)
!49 = !DILocation(line: 24, column: 5, scope: !35)
!50 = !DILocation(line: 26, column: 5, scope: !35)
