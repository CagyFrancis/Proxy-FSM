; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\path-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\path-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32** %6, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %7, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %4, i32** %7, align 8, !dbg !26
  br label %8, !dbg !27

8:                                                ; preds = %0, %38
  %9 = load i32, i32* %4, align 4, !dbg !28
  %10 = icmp ne i32 %9, 0, !dbg !28
  br i1 %10, label %11, label %17, !dbg !31

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4, !dbg !32
  %13 = icmp ne i32 %12, 0, !dbg !32
  br i1 %13, label %14, label %15, !dbg !34

14:                                               ; preds = %11
  store i32* %2, i32** %7, align 8, !dbg !35
  br label %16, !dbg !36

15:                                               ; preds = %11
  store i32* %3, i32** %7, align 8, !dbg !37
  br label %16

16:                                               ; preds = %15, %14
  br label %23, !dbg !32

17:                                               ; preds = %8
  %18 = load i32, i32* %5, align 4, !dbg !38
  %19 = icmp ne i32 %18, 0, !dbg !38
  br i1 %19, label %20, label %21, !dbg !40

20:                                               ; preds = %17
  store i32* %4, i32** %7, align 8, !dbg !41
  br label %22, !dbg !42

21:                                               ; preds = %17
  store i32* %5, i32** %7, align 8, !dbg !43
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %4, align 4, !dbg !44
  %25 = icmp ne i32 %24, 0, !dbg !44
  br i1 %25, label %26, label %32, !dbg !46

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4, !dbg !47
  %28 = icmp ne i32 %27, 0, !dbg !47
  br i1 %28, label %29, label %30, !dbg !49

29:                                               ; preds = %26
  store i32* %2, i32** %6, align 8, !dbg !50
  br label %31, !dbg !51

30:                                               ; preds = %26
  store i32* %3, i32** %6, align 8, !dbg !52
  br label %31

31:                                               ; preds = %30, %29
  br label %38, !dbg !47

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4, !dbg !53
  %34 = icmp ne i32 %33, 0, !dbg !53
  br i1 %34, label %35, label %36, !dbg !55

35:                                               ; preds = %32
  store i32* %4, i32** %6, align 8, !dbg !56
  br label %37, !dbg !57

36:                                               ; preds = %32
  store i32* %5, i32** %6, align 8, !dbg !58
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32*, i32** %7, align 8, !dbg !59
  store i32* %39, i32** %6, align 8, !dbg !60
  br label %8, !dbg !27, !llvm.loop !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/path-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/path-3.c", directory: "")
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
!20 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 3, type: !12)
!21 = !DILocation(line: 3, column: 18, scope: !8)
!22 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 4, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!24 = !DILocation(line: 4, column: 10, scope: !8)
!25 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 4, type: !23)
!26 = !DILocation(line: 4, column: 14, scope: !8)
!27 = !DILocation(line: 6, column: 5, scope: !8)
!28 = !DILocation(line: 8, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !9, line: 8, column: 13)
!30 = distinct !DILexicalBlock(scope: !8, file: !9, line: 7, column: 5)
!31 = !DILocation(line: 8, column: 13, scope: !30)
!32 = !DILocation(line: 9, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !9, line: 9, column: 17)
!34 = !DILocation(line: 9, column: 17, scope: !29)
!35 = !DILocation(line: 10, column: 19, scope: !33)
!36 = !DILocation(line: 10, column: 17, scope: !33)
!37 = !DILocation(line: 12, column: 19, scope: !33)
!38 = !DILocation(line: 14, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !29, file: !9, line: 14, column: 17)
!40 = !DILocation(line: 14, column: 17, scope: !29)
!41 = !DILocation(line: 15, column: 19, scope: !39)
!42 = !DILocation(line: 15, column: 17, scope: !39)
!43 = !DILocation(line: 17, column: 19, scope: !39)
!44 = !DILocation(line: 19, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !30, file: !9, line: 19, column: 13)
!46 = !DILocation(line: 19, column: 13, scope: !30)
!47 = !DILocation(line: 20, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !9, line: 20, column: 17)
!49 = !DILocation(line: 20, column: 17, scope: !45)
!50 = !DILocation(line: 21, column: 19, scope: !48)
!51 = !DILocation(line: 21, column: 17, scope: !48)
!52 = !DILocation(line: 23, column: 19, scope: !48)
!53 = !DILocation(line: 25, column: 17, scope: !54)
!54 = distinct !DILexicalBlock(scope: !45, file: !9, line: 25, column: 17)
!55 = !DILocation(line: 25, column: 17, scope: !45)
!56 = !DILocation(line: 26, column: 19, scope: !54)
!57 = !DILocation(line: 26, column: 17, scope: !54)
!58 = !DILocation(line: 28, column: 19, scope: !54)
!59 = !DILocation(line: 30, column: 13, scope: !30)
!60 = !DILocation(line: 30, column: 11, scope: !30)
!61 = distinct !{!61, !27, !62}
!62 = !DILocation(line: 31, column: 5, scope: !8)
