; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32* noundef %3) #0 !dbg !8 {
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !16, metadata !DIExpression()), !dbg !17
  store i32** %1, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !18, metadata !DIExpression()), !dbg !19
  store i32** %2, i32*** %7, align 8
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !20, metadata !DIExpression()), !dbg !21
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32** %9, metadata !24, metadata !DIExpression()), !dbg !25
  %10 = load i32*, i32** %8, align 8, !dbg !26
  %11 = load i32**, i32*** %6, align 8, !dbg !27
  store i32* %10, i32** %11, align 8, !dbg !28
  %12 = load i32**, i32*** %5, align 8, !dbg !29
  %13 = load i32*, i32** %12, align 8, !dbg !30
  store i32* %13, i32** %9, align 8, !dbg !31
  %14 = load i32*, i32** %9, align 8, !dbg !32
  %15 = load i32**, i32*** %7, align 8, !dbg !33
  store i32* %14, i32** %15, align 8, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %3, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32** %4, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %5, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32** %6, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32** %7, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %8, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %9, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %9, i32** %2, align 8, !dbg !55
  call void @foo(i32** noundef %2, i32** noundef %3, i32** noundef %4, i32* noundef %5), !dbg !56
  call void @foo(i32** noundef %6, i32** noundef %6, i32** noundef %7, i32* noundef %8), !dbg !57
  ret i32 0, !dbg !58
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "y", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 25, scope: !8)
!20 = !DILocalVariable(name: "z", arg: 3, scope: !8, file: !9, line: 1, type: !12)
!21 = !DILocation(line: 1, column: 34, scope: !8)
!22 = !DILocalVariable(name: "w", arg: 4, scope: !8, file: !9, line: 1, type: !13)
!23 = !DILocation(line: 1, column: 42, scope: !8)
!24 = !DILocalVariable(name: "t", scope: !8, file: !9, line: 3, type: !13)
!25 = !DILocation(line: 3, column: 10, scope: !8)
!26 = !DILocation(line: 4, column: 10, scope: !8)
!27 = !DILocation(line: 4, column: 6, scope: !8)
!28 = !DILocation(line: 4, column: 8, scope: !8)
!29 = !DILocation(line: 5, column: 10, scope: !8)
!30 = !DILocation(line: 5, column: 9, scope: !8)
!31 = !DILocation(line: 5, column: 7, scope: !8)
!32 = !DILocation(line: 6, column: 10, scope: !8)
!33 = !DILocation(line: 6, column: 6, scope: !8)
!34 = !DILocation(line: 6, column: 8, scope: !8)
!35 = !DILocation(line: 7, column: 1, scope: !8)
!36 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !37, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!37 = !DISubroutineType(types: !38)
!38 = !{!14}
!39 = !DILocalVariable(name: "a", scope: !36, file: !9, line: 11, type: !13)
!40 = !DILocation(line: 11, column: 10, scope: !36)
!41 = !DILocalVariable(name: "b", scope: !36, file: !9, line: 11, type: !13)
!42 = !DILocation(line: 11, column: 14, scope: !36)
!43 = !DILocalVariable(name: "c", scope: !36, file: !9, line: 11, type: !13)
!44 = !DILocation(line: 11, column: 18, scope: !36)
!45 = !DILocalVariable(name: "d", scope: !36, file: !9, line: 11, type: !14)
!46 = !DILocation(line: 11, column: 21, scope: !36)
!47 = !DILocalVariable(name: "p", scope: !36, file: !9, line: 11, type: !13)
!48 = !DILocation(line: 11, column: 25, scope: !36)
!49 = !DILocalVariable(name: "q", scope: !36, file: !9, line: 11, type: !13)
!50 = !DILocation(line: 11, column: 29, scope: !36)
!51 = !DILocalVariable(name: "r", scope: !36, file: !9, line: 11, type: !14)
!52 = !DILocation(line: 11, column: 32, scope: !36)
!53 = !DILocalVariable(name: "a1", scope: !36, file: !9, line: 11, type: !14)
!54 = !DILocation(line: 11, column: 35, scope: !36)
!55 = !DILocation(line: 12, column: 7, scope: !36)
!56 = !DILocation(line: 14, column: 5, scope: !36)
!57 = !DILocation(line: 15, column: 5, scope: !36)
!58 = !DILocation(line: 17, column: 5, scope: !36)
