; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\anderson-path.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\anderson-path.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %5, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %7, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %3, i32** %7, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata i32** %8, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* %4, i32** %8, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i32*** %9, metadata !29, metadata !DIExpression()), !dbg !31
  store i32** %5, i32*** %9, align 8, !dbg !31
  %10 = load i32, i32* %4, align 4, !dbg !32
  %11 = icmp ne i32 %10, 0, !dbg !32
  br i1 %11, label %12, label %13, !dbg !34

12:                                               ; preds = %0
  store i32* %2, i32** %5, align 8, !dbg !35
  br label %14, !dbg !36

13:                                               ; preds = %0
  store i32* %3, i32** %5, align 8, !dbg !37
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32*, i32** %5, align 8, !dbg !38
  store i32* %15, i32** %6, align 8, !dbg !39
  %16 = load i32, i32* %4, align 4, !dbg !40
  %17 = icmp ne i32 %16, 0, !dbg !40
  br i1 %17, label %18, label %21, !dbg !42

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8, !dbg !43
  %20 = load i32**, i32*** %9, align 8, !dbg !44
  store i32* %19, i32** %20, align 8, !dbg !45
  br label %24, !dbg !46

21:                                               ; preds = %14
  %22 = load i32*, i32** %8, align 8, !dbg !47
  %23 = load i32**, i32*** %9, align 8, !dbg !48
  store i32* %22, i32** %23, align 8, !dbg !49
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32**, i32*** %9, align 8, !dbg !50
  %26 = load i32*, i32** %25, align 8, !dbg !51
  store i32* %26, i32** %6, align 8, !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/anderson-path.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/anderson-path.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 9, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 12, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 15, scope: !8)
!20 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 4, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !DILocation(line: 4, column: 10, scope: !8)
!23 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 4, type: !21)
!24 = !DILocation(line: 4, column: 14, scope: !8)
!25 = !DILocalVariable(name: "z", scope: !8, file: !9, line: 4, type: !21)
!26 = !DILocation(line: 4, column: 18, scope: !8)
!27 = !DILocalVariable(name: "w", scope: !8, file: !9, line: 4, type: !21)
!28 = !DILocation(line: 4, column: 27, scope: !8)
!29 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 5, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!31 = !DILocation(line: 5, column: 11, scope: !8)
!32 = !DILocation(line: 7, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !8, file: !9, line: 7, column: 9)
!34 = !DILocation(line: 7, column: 9, scope: !8)
!35 = !DILocation(line: 8, column: 11, scope: !33)
!36 = !DILocation(line: 8, column: 9, scope: !33)
!37 = !DILocation(line: 10, column: 11, scope: !33)
!38 = !DILocation(line: 11, column: 9, scope: !8)
!39 = !DILocation(line: 11, column: 7, scope: !8)
!40 = !DILocation(line: 13, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !8, file: !9, line: 13, column: 9)
!42 = !DILocation(line: 13, column: 9, scope: !8)
!43 = !DILocation(line: 14, column: 14, scope: !41)
!44 = !DILocation(line: 14, column: 10, scope: !41)
!45 = !DILocation(line: 14, column: 12, scope: !41)
!46 = !DILocation(line: 14, column: 9, scope: !41)
!47 = !DILocation(line: 16, column: 14, scope: !41)
!48 = !DILocation(line: 16, column: 10, scope: !41)
!49 = !DILocation(line: 16, column: 12, scope: !41)
!50 = !DILocation(line: 17, column: 10, scope: !8)
!51 = !DILocation(line: 17, column: 9, scope: !8)
!52 = !DILocation(line: 17, column: 7, scope: !8)
!53 = !DILocation(line: 19, column: 5, scope: !8)
