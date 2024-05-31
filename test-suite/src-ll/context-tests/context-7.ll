; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-7.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-7.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !8 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32**, i32*** %3, align 8, !dbg !20
  %6 = load i32*, i32** %5, align 8, !dbg !21
  %7 = load i32**, i32*** %4, align 8, !dbg !22
  store i32* %6, i32** %7, align 8, !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32** %8, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32** %9, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32** %10, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32** %11, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32** %12, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %13, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %14, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %15, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %16, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %17, metadata !58, metadata !DIExpression()), !dbg !59
  store i32* %13, i32** %8, align 8, !dbg !60
  store i32* %14, i32** %9, align 8, !dbg !61
  store i32* %16, i32** %11, align 8, !dbg !62
  store i32* %17, i32** %12, align 8, !dbg !63
  store i32** %8, i32*** %2, align 8, !dbg !64
  store i32** %9, i32*** %3, align 8, !dbg !65
  store i32** %11, i32*** %4, align 8, !dbg !66
  store i32** %12, i32*** %5, align 8, !dbg !67
  %18 = load i32**, i32*** %2, align 8, !dbg !68
  %19 = load i32**, i32*** %3, align 8, !dbg !69
  call void @foo(i32** noundef %18, i32** noundef %19), !dbg !70
  %20 = load i32**, i32*** %4, align 8, !dbg !71
  %21 = load i32**, i32*** %5, align 8, !dbg !72
  call void @foo(i32** noundef %20, i32** noundef %21), !dbg !73
  ret i32 0, !dbg !74
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-7.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-7.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "q", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 25, scope: !8)
!20 = !DILocation(line: 3, column: 8, scope: !8)
!21 = !DILocation(line: 3, column: 7, scope: !8)
!22 = !DILocation(line: 3, column: 3, scope: !8)
!23 = !DILocation(line: 3, column: 5, scope: !8)
!24 = !DILocation(line: 4, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !26, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!26 = !DISubroutineType(types: !27)
!27 = !{!14}
!28 = !DILocalVariable(name: "a", scope: !25, file: !9, line: 8, type: !12)
!29 = !DILocation(line: 8, column: 8, scope: !25)
!30 = !DILocalVariable(name: "b", scope: !25, file: !9, line: 8, type: !12)
!31 = !DILocation(line: 8, column: 13, scope: !25)
!32 = !DILocalVariable(name: "c", scope: !25, file: !9, line: 8, type: !12)
!33 = !DILocation(line: 8, column: 18, scope: !25)
!34 = !DILocalVariable(name: "d", scope: !25, file: !9, line: 8, type: !12)
!35 = !DILocation(line: 8, column: 23, scope: !25)
!36 = !DILocalVariable(name: "e", scope: !25, file: !9, line: 8, type: !12)
!37 = !DILocation(line: 8, column: 28, scope: !25)
!38 = !DILocalVariable(name: "f", scope: !25, file: !9, line: 8, type: !12)
!39 = !DILocation(line: 8, column: 33, scope: !25)
!40 = !DILocalVariable(name: "x", scope: !25, file: !9, line: 8, type: !13)
!41 = !DILocation(line: 8, column: 37, scope: !25)
!42 = !DILocalVariable(name: "y", scope: !25, file: !9, line: 8, type: !13)
!43 = !DILocation(line: 8, column: 41, scope: !25)
!44 = !DILocalVariable(name: "z", scope: !25, file: !9, line: 8, type: !13)
!45 = !DILocation(line: 8, column: 45, scope: !25)
!46 = !DILocalVariable(name: "w", scope: !25, file: !9, line: 8, type: !13)
!47 = !DILocation(line: 8, column: 49, scope: !25)
!48 = !DILocalVariable(name: "k", scope: !25, file: !9, line: 8, type: !13)
!49 = !DILocation(line: 8, column: 53, scope: !25)
!50 = !DILocalVariable(name: "x1", scope: !25, file: !9, line: 8, type: !14)
!51 = !DILocation(line: 8, column: 56, scope: !25)
!52 = !DILocalVariable(name: "y1", scope: !25, file: !9, line: 8, type: !14)
!53 = !DILocation(line: 8, column: 60, scope: !25)
!54 = !DILocalVariable(name: "z1", scope: !25, file: !9, line: 8, type: !14)
!55 = !DILocation(line: 8, column: 64, scope: !25)
!56 = !DILocalVariable(name: "w1", scope: !25, file: !9, line: 8, type: !14)
!57 = !DILocation(line: 8, column: 68, scope: !25)
!58 = !DILocalVariable(name: "k1", scope: !25, file: !9, line: 8, type: !14)
!59 = !DILocation(line: 8, column: 72, scope: !25)
!60 = !DILocation(line: 9, column: 4, scope: !25)
!61 = !DILocation(line: 10, column: 4, scope: !25)
!62 = !DILocation(line: 11, column: 4, scope: !25)
!63 = !DILocation(line: 12, column: 4, scope: !25)
!64 = !DILocation(line: 14, column: 4, scope: !25)
!65 = !DILocation(line: 15, column: 4, scope: !25)
!66 = !DILocation(line: 16, column: 4, scope: !25)
!67 = !DILocation(line: 17, column: 4, scope: !25)
!68 = !DILocation(line: 19, column: 6, scope: !25)
!69 = !DILocation(line: 19, column: 9, scope: !25)
!70 = !DILocation(line: 19, column: 2, scope: !25)
!71 = !DILocation(line: 20, column: 6, scope: !25)
!72 = !DILocation(line: 20, column: 9, scope: !25)
!73 = !DILocation(line: 20, column: 2, scope: !25)
!74 = !DILocation(line: 22, column: 2, scope: !25)
