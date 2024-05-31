; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32* noundef %3) #0 !dbg !8 {
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !16, metadata !DIExpression()), !dbg !17
  store i32** %1, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !18, metadata !DIExpression()), !dbg !19
  store i32** %2, i32*** %7, align 8
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !20, metadata !DIExpression()), !dbg !21
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !22, metadata !DIExpression()), !dbg !23
  %9 = load i32**, i32*** %5, align 8, !dbg !24
  %10 = load i32*, i32** %9, align 8, !dbg !25
  %11 = load i32**, i32*** %7, align 8, !dbg !26
  store i32* %10, i32** %11, align 8, !dbg !27
  %12 = load i32*, i32** %8, align 8, !dbg !28
  %13 = load i32**, i32*** %6, align 8, !dbg !29
  store i32* %12, i32** %13, align 8, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
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
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32** %8, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32** %9, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32** %10, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32** %11, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32** %12, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32** %13, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %14, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %15, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %16, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %17, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %18, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %19, metadata !69, metadata !DIExpression()), !dbg !70
  store i32* %14, i32** %8, align 8, !dbg !71
  store i32* %15, i32** %9, align 8, !dbg !72
  store i32* %16, i32** %10, align 8, !dbg !73
  store i32* %17, i32** %11, align 8, !dbg !74
  store i32* %19, i32** %12, align 8, !dbg !75
  store i32* %18, i32** %13, align 8, !dbg !76
  store i32** %8, i32*** %2, align 8, !dbg !77
  store i32** %9, i32*** %3, align 8, !dbg !78
  store i32** %10, i32*** %4, align 8, !dbg !79
  %20 = load i32**, i32*** %2, align 8, !dbg !80
  %21 = load i32**, i32*** %3, align 8, !dbg !81
  %22 = load i32**, i32*** %4, align 8, !dbg !82
  %23 = load i32*, i32** %13, align 8, !dbg !83
  call void @foo(i32** noundef %20, i32** noundef %21, i32** noundef %22, i32* noundef %23), !dbg !84
  store i32** %11, i32*** %5, align 8, !dbg !85
  store i32** %11, i32*** %6, align 8, !dbg !86
  store i32** %12, i32*** %7, align 8, !dbg !87
  %24 = load i32**, i32*** %5, align 8, !dbg !88
  %25 = load i32**, i32*** %6, align 8, !dbg !89
  %26 = load i32**, i32*** %7, align 8, !dbg !90
  %27 = load i32*, i32** %13, align 8, !dbg !91
  call void @foo(i32** noundef %24, i32** noundef %25, i32** noundef %26, i32* noundef %27), !dbg !92
  ret i32 0, !dbg !93
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "q", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 25, scope: !8)
!20 = !DILocalVariable(name: "r", arg: 3, scope: !8, file: !9, line: 1, type: !12)
!21 = !DILocation(line: 1, column: 34, scope: !8)
!22 = !DILocalVariable(name: "s", arg: 4, scope: !8, file: !9, line: 1, type: !13)
!23 = !DILocation(line: 1, column: 42, scope: !8)
!24 = !DILocation(line: 3, column: 8, scope: !8)
!25 = !DILocation(line: 3, column: 7, scope: !8)
!26 = !DILocation(line: 3, column: 3, scope: !8)
!27 = !DILocation(line: 3, column: 5, scope: !8)
!28 = !DILocation(line: 4, column: 7, scope: !8)
!29 = !DILocation(line: 4, column: 3, scope: !8)
!30 = !DILocation(line: 4, column: 5, scope: !8)
!31 = !DILocation(line: 5, column: 1, scope: !8)
!32 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !33, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!33 = !DISubroutineType(types: !34)
!34 = !{!14}
!35 = !DILocalVariable(name: "a", scope: !32, file: !9, line: 9, type: !12)
!36 = !DILocation(line: 9, column: 8, scope: !32)
!37 = !DILocalVariable(name: "b", scope: !32, file: !9, line: 9, type: !12)
!38 = !DILocation(line: 9, column: 13, scope: !32)
!39 = !DILocalVariable(name: "c", scope: !32, file: !9, line: 9, type: !12)
!40 = !DILocation(line: 9, column: 18, scope: !32)
!41 = !DILocalVariable(name: "d", scope: !32, file: !9, line: 9, type: !12)
!42 = !DILocation(line: 9, column: 23, scope: !32)
!43 = !DILocalVariable(name: "e", scope: !32, file: !9, line: 9, type: !12)
!44 = !DILocation(line: 9, column: 28, scope: !32)
!45 = !DILocalVariable(name: "f", scope: !32, file: !9, line: 9, type: !12)
!46 = !DILocation(line: 9, column: 33, scope: !32)
!47 = !DILocalVariable(name: "x", scope: !32, file: !9, line: 9, type: !13)
!48 = !DILocation(line: 9, column: 37, scope: !32)
!49 = !DILocalVariable(name: "y", scope: !32, file: !9, line: 9, type: !13)
!50 = !DILocation(line: 9, column: 41, scope: !32)
!51 = !DILocalVariable(name: "z", scope: !32, file: !9, line: 9, type: !13)
!52 = !DILocation(line: 9, column: 45, scope: !32)
!53 = !DILocalVariable(name: "w", scope: !32, file: !9, line: 9, type: !13)
!54 = !DILocation(line: 9, column: 49, scope: !32)
!55 = !DILocalVariable(name: "g", scope: !32, file: !9, line: 9, type: !13)
!56 = !DILocation(line: 9, column: 53, scope: !32)
!57 = !DILocalVariable(name: "k", scope: !32, file: !9, line: 9, type: !13)
!58 = !DILocation(line: 9, column: 57, scope: !32)
!59 = !DILocalVariable(name: "x1", scope: !32, file: !9, line: 9, type: !14)
!60 = !DILocation(line: 9, column: 60, scope: !32)
!61 = !DILocalVariable(name: "y1", scope: !32, file: !9, line: 9, type: !14)
!62 = !DILocation(line: 9, column: 64, scope: !32)
!63 = !DILocalVariable(name: "z1", scope: !32, file: !9, line: 9, type: !14)
!64 = !DILocation(line: 9, column: 68, scope: !32)
!65 = !DILocalVariable(name: "w1", scope: !32, file: !9, line: 9, type: !14)
!66 = !DILocation(line: 9, column: 72, scope: !32)
!67 = !DILocalVariable(name: "k1", scope: !32, file: !9, line: 9, type: !14)
!68 = !DILocation(line: 9, column: 76, scope: !32)
!69 = !DILocalVariable(name: "g1", scope: !32, file: !9, line: 9, type: !14)
!70 = !DILocation(line: 9, column: 80, scope: !32)
!71 = !DILocation(line: 10, column: 4, scope: !32)
!72 = !DILocation(line: 11, column: 4, scope: !32)
!73 = !DILocation(line: 12, column: 4, scope: !32)
!74 = !DILocation(line: 13, column: 4, scope: !32)
!75 = !DILocation(line: 14, column: 4, scope: !32)
!76 = !DILocation(line: 15, column: 4, scope: !32)
!77 = !DILocation(line: 17, column: 4, scope: !32)
!78 = !DILocation(line: 18, column: 4, scope: !32)
!79 = !DILocation(line: 19, column: 4, scope: !32)
!80 = !DILocation(line: 21, column: 6, scope: !32)
!81 = !DILocation(line: 21, column: 9, scope: !32)
!82 = !DILocation(line: 21, column: 12, scope: !32)
!83 = !DILocation(line: 21, column: 15, scope: !32)
!84 = !DILocation(line: 21, column: 2, scope: !32)
!85 = !DILocation(line: 22, column: 4, scope: !32)
!86 = !DILocation(line: 23, column: 4, scope: !32)
!87 = !DILocation(line: 24, column: 4, scope: !32)
!88 = !DILocation(line: 25, column: 6, scope: !32)
!89 = !DILocation(line: 25, column: 9, scope: !32)
!90 = !DILocation(line: 25, column: 12, scope: !32)
!91 = !DILocation(line: 25, column: 15, scope: !32)
!92 = !DILocation(line: 25, column: 2, scope: !32)
!93 = !DILocation(line: 27, column: 2, scope: !32)
