; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\path-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\path-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %6, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %8, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %9, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %10, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %11, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %12, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %13, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %14, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %15, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32** %16, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32** %17, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32** %18, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32** %19, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32** %20, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32** %21, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32** %22, metadata !55, metadata !DIExpression()), !dbg !56
  %23 = load i32, i32* %2, align 4, !dbg !57
  %24 = icmp ne i32 %23, 0, !dbg !57
  br i1 %24, label %25, label %26, !dbg !59

25:                                               ; preds = %0
  store i32* %2, i32** %16, align 8, !dbg !60
  br label %27, !dbg !61

26:                                               ; preds = %0
  store i32* %3, i32** %16, align 8, !dbg !62
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4, !dbg !63
  %29 = icmp ne i32 %28, 0, !dbg !63
  br i1 %29, label %30, label %31, !dbg !65

30:                                               ; preds = %27
  store i32* %4, i32** %17, align 8, !dbg !66
  br label %32, !dbg !67

31:                                               ; preds = %27
  store i32* %5, i32** %17, align 8, !dbg !68
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %4, align 4, !dbg !69
  %34 = icmp ne i32 %33, 0, !dbg !69
  br i1 %34, label %35, label %36, !dbg !71

35:                                               ; preds = %32
  store i32* %6, i32** %18, align 8, !dbg !72
  br label %37, !dbg !73

36:                                               ; preds = %32
  store i32* %7, i32** %18, align 8, !dbg !74
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %5, align 4, !dbg !75
  %39 = icmp ne i32 %38, 0, !dbg !75
  br i1 %39, label %40, label %41, !dbg !77

40:                                               ; preds = %37
  store i32* %8, i32** %19, align 8, !dbg !78
  br label %42, !dbg !79

41:                                               ; preds = %37
  store i32* %9, i32** %19, align 8, !dbg !80
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %6, align 4, !dbg !81
  %44 = icmp ne i32 %43, 0, !dbg !81
  br i1 %44, label %45, label %46, !dbg !83

45:                                               ; preds = %42
  store i32* %10, i32** %20, align 8, !dbg !84
  br label %47, !dbg !85

46:                                               ; preds = %42
  store i32* %11, i32** %20, align 8, !dbg !86
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %7, align 4, !dbg !87
  %49 = icmp ne i32 %48, 0, !dbg !87
  br i1 %49, label %50, label %51, !dbg !89

50:                                               ; preds = %47
  store i32* %12, i32** %21, align 8, !dbg !90
  br label %52, !dbg !91

51:                                               ; preds = %47
  store i32* %13, i32** %21, align 8, !dbg !92
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %8, align 4, !dbg !93
  %54 = icmp ne i32 %53, 0, !dbg !93
  br i1 %54, label %55, label %56, !dbg !95

55:                                               ; preds = %52
  store i32* %14, i32** %22, align 8, !dbg !96
  br label %57, !dbg !97

56:                                               ; preds = %52
  store i32* %15, i32** %22, align 8, !dbg !98
  br label %57

57:                                               ; preds = %56, %55
  ret i32 0, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/path-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/path-1.c", directory: "")
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
!22 = !DILocalVariable(name: "e", scope: !8, file: !9, line: 3, type: !12)
!23 = !DILocation(line: 3, column: 21, scope: !8)
!24 = !DILocalVariable(name: "f", scope: !8, file: !9, line: 3, type: !12)
!25 = !DILocation(line: 3, column: 24, scope: !8)
!26 = !DILocalVariable(name: "g", scope: !8, file: !9, line: 3, type: !12)
!27 = !DILocation(line: 3, column: 27, scope: !8)
!28 = !DILocalVariable(name: "h", scope: !8, file: !9, line: 3, type: !12)
!29 = !DILocation(line: 3, column: 30, scope: !8)
!30 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 3, type: !12)
!31 = !DILocation(line: 3, column: 33, scope: !8)
!32 = !DILocalVariable(name: "j", scope: !8, file: !9, line: 3, type: !12)
!33 = !DILocation(line: 3, column: 36, scope: !8)
!34 = !DILocalVariable(name: "k", scope: !8, file: !9, line: 3, type: !12)
!35 = !DILocation(line: 3, column: 39, scope: !8)
!36 = !DILocalVariable(name: "l", scope: !8, file: !9, line: 3, type: !12)
!37 = !DILocation(line: 3, column: 42, scope: !8)
!38 = !DILocalVariable(name: "m", scope: !8, file: !9, line: 3, type: !12)
!39 = !DILocation(line: 3, column: 45, scope: !8)
!40 = !DILocalVariable(name: "n", scope: !8, file: !9, line: 3, type: !12)
!41 = !DILocation(line: 3, column: 48, scope: !8)
!42 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 4, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!44 = !DILocation(line: 4, column: 10, scope: !8)
!45 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 4, type: !43)
!46 = !DILocation(line: 4, column: 14, scope: !8)
!47 = !DILocalVariable(name: "r", scope: !8, file: !9, line: 4, type: !43)
!48 = !DILocation(line: 4, column: 18, scope: !8)
!49 = !DILocalVariable(name: "s", scope: !8, file: !9, line: 4, type: !43)
!50 = !DILocation(line: 4, column: 22, scope: !8)
!51 = !DILocalVariable(name: "t", scope: !8, file: !9, line: 4, type: !43)
!52 = !DILocation(line: 4, column: 26, scope: !8)
!53 = !DILocalVariable(name: "u", scope: !8, file: !9, line: 4, type: !43)
!54 = !DILocation(line: 4, column: 30, scope: !8)
!55 = !DILocalVariable(name: "v", scope: !8, file: !9, line: 4, type: !43)
!56 = !DILocation(line: 4, column: 34, scope: !8)
!57 = !DILocation(line: 6, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !8, file: !9, line: 6, column: 9)
!59 = !DILocation(line: 6, column: 9, scope: !8)
!60 = !DILocation(line: 7, column: 11, scope: !58)
!61 = !DILocation(line: 7, column: 9, scope: !58)
!62 = !DILocation(line: 9, column: 11, scope: !58)
!63 = !DILocation(line: 11, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !8, file: !9, line: 11, column: 9)
!65 = !DILocation(line: 11, column: 9, scope: !8)
!66 = !DILocation(line: 12, column: 11, scope: !64)
!67 = !DILocation(line: 12, column: 9, scope: !64)
!68 = !DILocation(line: 14, column: 11, scope: !64)
!69 = !DILocation(line: 16, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !8, file: !9, line: 16, column: 9)
!71 = !DILocation(line: 16, column: 9, scope: !8)
!72 = !DILocation(line: 17, column: 11, scope: !70)
!73 = !DILocation(line: 17, column: 9, scope: !70)
!74 = !DILocation(line: 19, column: 11, scope: !70)
!75 = !DILocation(line: 21, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !8, file: !9, line: 21, column: 9)
!77 = !DILocation(line: 21, column: 9, scope: !8)
!78 = !DILocation(line: 22, column: 11, scope: !76)
!79 = !DILocation(line: 22, column: 9, scope: !76)
!80 = !DILocation(line: 24, column: 11, scope: !76)
!81 = !DILocation(line: 26, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !8, file: !9, line: 26, column: 9)
!83 = !DILocation(line: 26, column: 9, scope: !8)
!84 = !DILocation(line: 27, column: 11, scope: !82)
!85 = !DILocation(line: 27, column: 9, scope: !82)
!86 = !DILocation(line: 29, column: 11, scope: !82)
!87 = !DILocation(line: 31, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !8, file: !9, line: 31, column: 9)
!89 = !DILocation(line: 31, column: 9, scope: !8)
!90 = !DILocation(line: 32, column: 11, scope: !88)
!91 = !DILocation(line: 32, column: 9, scope: !88)
!92 = !DILocation(line: 34, column: 11, scope: !88)
!93 = !DILocation(line: 36, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !8, file: !9, line: 36, column: 9)
!95 = !DILocation(line: 36, column: 9, scope: !8)
!96 = !DILocation(line: 37, column: 11, scope: !94)
!97 = !DILocation(line: 37, column: 9, scope: !94)
!98 = !DILocation(line: 39, column: 11, scope: !94)
!99 = !DILocation(line: 41, column: 5, scope: !8)
