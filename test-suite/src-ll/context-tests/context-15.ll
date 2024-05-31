; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-15.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-15.c"
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
  %11 = load i32**, i32*** %7, align 8, !dbg !27
  store i32* %10, i32** %11, align 8, !dbg !28
  %12 = load i32**, i32*** %6, align 8, !dbg !29
  %13 = load i32*, i32** %12, align 8, !dbg !30
  store i32* %13, i32** %9, align 8, !dbg !31
  %14 = load i32*, i32** %9, align 8, !dbg !32
  %15 = load i32**, i32*** %5, align 8, !dbg !33
  store i32* %14, i32** %15, align 8, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32* noundef %3) #0 !dbg !36 {
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !37, metadata !DIExpression()), !dbg !38
  store i32** %1, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !39, metadata !DIExpression()), !dbg !40
  store i32** %2, i32*** %7, align 8
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !41, metadata !DIExpression()), !dbg !42
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !43, metadata !DIExpression()), !dbg !44
  %9 = load i32**, i32*** %5, align 8, !dbg !45
  %10 = load i32**, i32*** %6, align 8, !dbg !46
  %11 = load i32**, i32*** %7, align 8, !dbg !47
  %12 = load i32*, i32** %8, align 8, !dbg !48
  call void @foo(i32** noundef %9, i32** noundef %10, i32** noundef %11, i32* noundef %12), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32** %5, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32** %6, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32** %7, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32** %8, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %9, metadata !68, metadata !DIExpression()), !dbg !69
  store i32** %6, i32*** %2, align 8, !dbg !70
  store i32** %7, i32*** %3, align 8, !dbg !71
  store i32** %7, i32*** %4, align 8, !dbg !72
  store i32* %9, i32** %5, align 8, !dbg !73
  %10 = load i32**, i32*** %2, align 8, !dbg !74
  %11 = load i32**, i32*** %3, align 8, !dbg !75
  %12 = load i32**, i32*** %4, align 8, !dbg !76
  %13 = load i32*, i32** %5, align 8, !dbg !77
  call void @bar(i32** noundef %10, i32** noundef %11, i32** noundef %12, i32* noundef %13), !dbg !78
  ret i32 0, !dbg !79
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-15.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-15.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "w", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "x", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 25, scope: !8)
!20 = !DILocalVariable(name: "y", arg: 3, scope: !8, file: !9, line: 1, type: !12)
!21 = !DILocation(line: 1, column: 34, scope: !8)
!22 = !DILocalVariable(name: "z", arg: 4, scope: !8, file: !9, line: 1, type: !13)
!23 = !DILocation(line: 1, column: 42, scope: !8)
!24 = !DILocalVariable(name: "t", scope: !8, file: !9, line: 3, type: !13)
!25 = !DILocation(line: 3, column: 7, scope: !8)
!26 = !DILocation(line: 4, column: 7, scope: !8)
!27 = !DILocation(line: 4, column: 3, scope: !8)
!28 = !DILocation(line: 4, column: 5, scope: !8)
!29 = !DILocation(line: 5, column: 7, scope: !8)
!30 = !DILocation(line: 5, column: 6, scope: !8)
!31 = !DILocation(line: 5, column: 4, scope: !8)
!32 = !DILocation(line: 6, column: 7, scope: !8)
!33 = !DILocation(line: 6, column: 3, scope: !8)
!34 = !DILocation(line: 6, column: 5, scope: !8)
!35 = !DILocation(line: 7, column: 1, scope: !8)
!36 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!37 = !DILocalVariable(name: "p1", arg: 1, scope: !36, file: !9, line: 9, type: !12)
!38 = !DILocation(line: 9, column: 16, scope: !36)
!39 = !DILocalVariable(name: "p2", arg: 2, scope: !36, file: !9, line: 9, type: !12)
!40 = !DILocation(line: 9, column: 26, scope: !36)
!41 = !DILocalVariable(name: "p3", arg: 3, scope: !36, file: !9, line: 9, type: !12)
!42 = !DILocation(line: 9, column: 36, scope: !36)
!43 = !DILocalVariable(name: "p4", arg: 4, scope: !36, file: !9, line: 9, type: !13)
!44 = !DILocation(line: 9, column: 45, scope: !36)
!45 = !DILocation(line: 11, column: 6, scope: !36)
!46 = !DILocation(line: 11, column: 10, scope: !36)
!47 = !DILocation(line: 11, column: 14, scope: !36)
!48 = !DILocation(line: 11, column: 18, scope: !36)
!49 = !DILocation(line: 11, column: 2, scope: !36)
!50 = !DILocation(line: 12, column: 1, scope: !36)
!51 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 14, type: !52, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!52 = !DISubroutineType(types: !53)
!53 = !{!14}
!54 = !DILocalVariable(name: "a", scope: !51, file: !9, line: 16, type: !12)
!55 = !DILocation(line: 16, column: 8, scope: !51)
!56 = !DILocalVariable(name: "b", scope: !51, file: !9, line: 16, type: !12)
!57 = !DILocation(line: 16, column: 13, scope: !51)
!58 = !DILocalVariable(name: "c", scope: !51, file: !9, line: 16, type: !12)
!59 = !DILocation(line: 16, column: 18, scope: !51)
!60 = !DILocalVariable(name: "d", scope: !51, file: !9, line: 16, type: !13)
!61 = !DILocation(line: 16, column: 22, scope: !51)
!62 = !DILocalVariable(name: "a1", scope: !51, file: !9, line: 16, type: !13)
!63 = !DILocation(line: 16, column: 26, scope: !51)
!64 = !DILocalVariable(name: "b1", scope: !51, file: !9, line: 16, type: !13)
!65 = !DILocation(line: 16, column: 31, scope: !51)
!66 = !DILocalVariable(name: "c1", scope: !51, file: !9, line: 16, type: !13)
!67 = !DILocation(line: 16, column: 36, scope: !51)
!68 = !DILocalVariable(name: "d1", scope: !51, file: !9, line: 16, type: !14)
!69 = !DILocation(line: 16, column: 40, scope: !51)
!70 = !DILocation(line: 18, column: 4, scope: !51)
!71 = !DILocation(line: 19, column: 4, scope: !51)
!72 = !DILocation(line: 20, column: 4, scope: !51)
!73 = !DILocation(line: 21, column: 4, scope: !51)
!74 = !DILocation(line: 22, column: 6, scope: !51)
!75 = !DILocation(line: 22, column: 9, scope: !51)
!76 = !DILocation(line: 22, column: 12, scope: !51)
!77 = !DILocation(line: 22, column: 15, scope: !51)
!78 = !DILocation(line: 22, column: 2, scope: !51)
!79 = !DILocation(line: 24, column: 2, scope: !51)
