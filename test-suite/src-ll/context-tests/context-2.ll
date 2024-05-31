; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@obj = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1, i32** noundef %2) #0 !dbg !13 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32** %1, i32*** %5, align 8
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i32** %2, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !23, metadata !DIExpression()), !dbg !24
  %7 = load i32**, i32*** %4, align 8, !dbg !25
  %8 = load i32*, i32** %7, align 8, !dbg !26
  %9 = load i32**, i32*** %6, align 8, !dbg !27
  store i32* %8, i32** %9, align 8, !dbg !28
  %10 = load i32**, i32*** %5, align 8, !dbg !29
  store i32* @obj, i32** %10, align 8, !dbg !30
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %13, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %14, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %15, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %16, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %17, metadata !65, metadata !DIExpression()), !dbg !66
  store i32* %13, i32** %8, align 8, !dbg !67
  store i32* %14, i32** %9, align 8, !dbg !68
  store i32* %15, i32** %10, align 8, !dbg !69
  store i32* %16, i32** %11, align 8, !dbg !70
  store i32* %17, i32** %12, align 8, !dbg !71
  store i32** %8, i32*** %2, align 8, !dbg !72
  store i32** %9, i32*** %3, align 8, !dbg !73
  store i32** %10, i32*** %4, align 8, !dbg !74
  %18 = load i32**, i32*** %2, align 8, !dbg !75
  %19 = icmp ne i32** %18, null, !dbg !75
  br i1 %19, label %20, label %21, !dbg !77

20:                                               ; preds = %0
  store i32** %11, i32*** %5, align 8, !dbg !78
  store i32** %11, i32*** %6, align 8, !dbg !80
  store i32** %12, i32*** %7, align 8, !dbg !81
  br label %21, !dbg !82

21:                                               ; preds = %20, %0
  %22 = load i32**, i32*** %2, align 8, !dbg !83
  %23 = load i32**, i32*** %3, align 8, !dbg !84
  %24 = load i32**, i32*** %4, align 8, !dbg !85
  call void @foo(i32** noundef %22, i32** noundef %23, i32** noundef %24), !dbg !86
  %25 = load i32**, i32*** %5, align 8, !dbg !87
  %26 = load i32**, i32*** %6, align 8, !dbg !88
  %27 = load i32**, i32*** %7, align 8, !dbg !89
  call void @foo(i32** noundef %25, i32** noundef %26, i32** noundef %27), !dbg !90
  ret i32 0, !dbg !91
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-2.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{}
!19 = !DILocalVariable(name: "p", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!20 = !DILocation(line: 3, column: 16, scope: !13)
!21 = !DILocalVariable(name: "q", arg: 2, scope: !13, file: !5, line: 3, type: !16)
!22 = !DILocation(line: 3, column: 25, scope: !13)
!23 = !DILocalVariable(name: "r", arg: 3, scope: !13, file: !5, line: 3, type: !16)
!24 = !DILocation(line: 3, column: 34, scope: !13)
!25 = !DILocation(line: 5, column: 8, scope: !13)
!26 = !DILocation(line: 5, column: 7, scope: !13)
!27 = !DILocation(line: 5, column: 3, scope: !13)
!28 = !DILocation(line: 5, column: 5, scope: !13)
!29 = !DILocation(line: 6, column: 3, scope: !13)
!30 = !DILocation(line: 6, column: 5, scope: !13)
!31 = !DILocation(line: 7, column: 1, scope: !13)
!32 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 9, type: !33, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!33 = !DISubroutineType(types: !34)
!34 = !{!6}
!35 = !DILocalVariable(name: "a", scope: !32, file: !5, line: 11, type: !16)
!36 = !DILocation(line: 11, column: 8, scope: !32)
!37 = !DILocalVariable(name: "b", scope: !32, file: !5, line: 11, type: !16)
!38 = !DILocation(line: 11, column: 13, scope: !32)
!39 = !DILocalVariable(name: "c", scope: !32, file: !5, line: 11, type: !16)
!40 = !DILocation(line: 11, column: 18, scope: !32)
!41 = !DILocalVariable(name: "d", scope: !32, file: !5, line: 11, type: !16)
!42 = !DILocation(line: 11, column: 23, scope: !32)
!43 = !DILocalVariable(name: "e", scope: !32, file: !5, line: 11, type: !16)
!44 = !DILocation(line: 11, column: 28, scope: !32)
!45 = !DILocalVariable(name: "f", scope: !32, file: !5, line: 11, type: !16)
!46 = !DILocation(line: 11, column: 33, scope: !32)
!47 = !DILocalVariable(name: "x", scope: !32, file: !5, line: 11, type: !17)
!48 = !DILocation(line: 11, column: 37, scope: !32)
!49 = !DILocalVariable(name: "y", scope: !32, file: !5, line: 11, type: !17)
!50 = !DILocation(line: 11, column: 41, scope: !32)
!51 = !DILocalVariable(name: "z", scope: !32, file: !5, line: 11, type: !17)
!52 = !DILocation(line: 11, column: 45, scope: !32)
!53 = !DILocalVariable(name: "w", scope: !32, file: !5, line: 11, type: !17)
!54 = !DILocation(line: 11, column: 49, scope: !32)
!55 = !DILocalVariable(name: "k", scope: !32, file: !5, line: 11, type: !17)
!56 = !DILocation(line: 11, column: 53, scope: !32)
!57 = !DILocalVariable(name: "x1", scope: !32, file: !5, line: 11, type: !6)
!58 = !DILocation(line: 11, column: 56, scope: !32)
!59 = !DILocalVariable(name: "y1", scope: !32, file: !5, line: 11, type: !6)
!60 = !DILocation(line: 11, column: 60, scope: !32)
!61 = !DILocalVariable(name: "z1", scope: !32, file: !5, line: 11, type: !6)
!62 = !DILocation(line: 11, column: 64, scope: !32)
!63 = !DILocalVariable(name: "w1", scope: !32, file: !5, line: 11, type: !6)
!64 = !DILocation(line: 11, column: 68, scope: !32)
!65 = !DILocalVariable(name: "k1", scope: !32, file: !5, line: 11, type: !6)
!66 = !DILocation(line: 11, column: 72, scope: !32)
!67 = !DILocation(line: 12, column: 4, scope: !32)
!68 = !DILocation(line: 13, column: 4, scope: !32)
!69 = !DILocation(line: 14, column: 4, scope: !32)
!70 = !DILocation(line: 15, column: 4, scope: !32)
!71 = !DILocation(line: 16, column: 4, scope: !32)
!72 = !DILocation(line: 18, column: 4, scope: !32)
!73 = !DILocation(line: 19, column: 4, scope: !32)
!74 = !DILocation(line: 20, column: 4, scope: !32)
!75 = !DILocation(line: 21, column: 6, scope: !76)
!76 = distinct !DILexicalBlock(scope: !32, file: !5, line: 21, column: 6)
!77 = !DILocation(line: 21, column: 6, scope: !32)
!78 = !DILocation(line: 23, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !5, line: 22, column: 2)
!80 = !DILocation(line: 24, column: 5, scope: !79)
!81 = !DILocation(line: 25, column: 5, scope: !79)
!82 = !DILocation(line: 26, column: 2, scope: !79)
!83 = !DILocation(line: 27, column: 6, scope: !32)
!84 = !DILocation(line: 27, column: 9, scope: !32)
!85 = !DILocation(line: 27, column: 12, scope: !32)
!86 = !DILocation(line: 27, column: 2, scope: !32)
!87 = !DILocation(line: 28, column: 6, scope: !32)
!88 = !DILocation(line: 28, column: 9, scope: !32)
!89 = !DILocation(line: 28, column: 12, scope: !32)
!90 = !DILocation(line: 28, column: 2, scope: !32)
!91 = !DILocation(line: 30, column: 2, scope: !32)
