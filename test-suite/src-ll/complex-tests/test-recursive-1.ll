; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-recursive-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-recursive-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.list = type { i32, %struct.list*, %struct.list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @construct(%struct.list* noundef %0, i32 noundef %1) #0 !dbg !8 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !23
  %7 = load i32, i32* %5, align 4, !dbg !24
  %8 = icmp ugt i32 %7, 0, !dbg !26
  br i1 %8, label %9, label %26, !dbg !27

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.list** %6, metadata !28, metadata !DIExpression()), !dbg !30
  %10 = call i8* @malloc(i64 noundef 24), !dbg !31
  %11 = bitcast i8* %10 to %struct.list*, !dbg !31
  store %struct.list* %11, %struct.list** %6, align 8, !dbg !30
  %12 = load %struct.list*, %struct.list** %6, align 8, !dbg !32
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0, !dbg !33
  store i32 0, i32* %13, align 8, !dbg !34
  %14 = load %struct.list*, %struct.list** %4, align 8, !dbg !35
  %15 = load %struct.list*, %struct.list** %6, align 8, !dbg !36
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 1, !dbg !37
  store %struct.list* %14, %struct.list** %16, align 8, !dbg !38
  %17 = load %struct.list*, %struct.list** %6, align 8, !dbg !39
  %18 = load %struct.list*, %struct.list** %4, align 8, !dbg !40
  %19 = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 2, !dbg !41
  store %struct.list* %17, %struct.list** %19, align 8, !dbg !42
  %20 = load %struct.list*, %struct.list** %6, align 8, !dbg !43
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 2, !dbg !44
  store %struct.list* null, %struct.list** %21, align 8, !dbg !45
  %22 = load %struct.list*, %struct.list** %6, align 8, !dbg !46
  %23 = load i32, i32* %5, align 4, !dbg !47
  %24 = add i32 %23, -1, !dbg !47
  store i32 %24, i32* %5, align 4, !dbg !47
  %25 = call %struct.list* @construct(%struct.list* noundef %22, i32 noundef %23), !dbg !48
  store %struct.list* %25, %struct.list** %3, align 8, !dbg !49
  br label %28, !dbg !49

26:                                               ; preds = %2
  %27 = load %struct.list*, %struct.list** %4, align 8, !dbg !50
  store %struct.list* %27, %struct.list** %3, align 8, !dbg !51
  br label %28, !dbg !51

28:                                               ; preds = %26, %9
  %29 = load %struct.list*, %struct.list** %3, align 8, !dbg !52
  ret %struct.list* %29, !dbg !52
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @walklist(%struct.list* noundef %0) #0 !dbg !53 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !58, metadata !DIExpression()), !dbg !59
  %5 = load %struct.list*, %struct.list** %2, align 8, !dbg !60
  store %struct.list* %5, %struct.list** %3, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata %struct.list** %4, metadata !61, metadata !DIExpression()), !dbg !62
  br label %6, !dbg !63

6:                                                ; preds = %11, %1
  %7 = load %struct.list*, %struct.list** %3, align 8, !dbg !64
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 2, !dbg !65
  %9 = load %struct.list*, %struct.list** %8, align 8, !dbg !65
  %10 = icmp ne %struct.list* %9, null, !dbg !66
  br i1 %10, label %11, label %15, !dbg !63

11:                                               ; preds = %6
  %12 = load %struct.list*, %struct.list** %3, align 8, !dbg !67
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 2, !dbg !68
  %14 = load %struct.list*, %struct.list** %13, align 8, !dbg !68
  store %struct.list* %14, %struct.list** %3, align 8, !dbg !69
  br label %6, !dbg !63, !llvm.loop !70

15:                                               ; preds = %6
  br label %16, !dbg !72

16:                                               ; preds = %39, %15
  %17 = load %struct.list*, %struct.list** %3, align 8, !dbg !73
  %18 = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 1, !dbg !74
  %19 = load %struct.list*, %struct.list** %18, align 8, !dbg !74
  %20 = icmp ne %struct.list* %19, null, !dbg !72
  br i1 %20, label %21, label %47, !dbg !72

21:                                               ; preds = %16
  %22 = load %struct.list*, %struct.list** %3, align 8, !dbg !75
  store %struct.list* %22, %struct.list** %4, align 8, !dbg !77
  %23 = load %struct.list*, %struct.list** %4, align 8, !dbg !78
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 0, !dbg !79
  %25 = load i32, i32* %24, align 8, !dbg !80
  %26 = add i32 %25, 1, !dbg !80
  store i32 %26, i32* %24, align 8, !dbg !80
  %27 = load %struct.list*, %struct.list** %4, align 8, !dbg !81
  %28 = getelementptr inbounds %struct.list, %struct.list* %27, i32 0, i32 0, !dbg !83
  %29 = load i32, i32* %28, align 8, !dbg !83
  %30 = icmp ugt i32 %29, 5, !dbg !84
  br i1 %30, label %31, label %35, !dbg !85

31:                                               ; preds = %21
  %32 = load %struct.list*, %struct.list** %3, align 8, !dbg !86
  %33 = getelementptr inbounds %struct.list, %struct.list* %32, i32 0, i32 1, !dbg !87
  %34 = load %struct.list*, %struct.list** %33, align 8, !dbg !87
  store %struct.list* %34, %struct.list** %3, align 8, !dbg !88
  br label %39, !dbg !89

35:                                               ; preds = %21
  %36 = load %struct.list*, %struct.list** %3, align 8, !dbg !90
  %37 = getelementptr inbounds %struct.list, %struct.list* %36, i32 0, i32 2, !dbg !91
  %38 = load %struct.list*, %struct.list** %37, align 8, !dbg !91
  store %struct.list* %38, %struct.list** %3, align 8, !dbg !92
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.list*, %struct.list** %3, align 8, !dbg !93
  %41 = call %struct.list* @walklist(%struct.list* noundef %40), !dbg !94
  %42 = load %struct.list*, %struct.list** %3, align 8, !dbg !95
  %43 = getelementptr inbounds %struct.list, %struct.list* %42, i32 0, i32 2, !dbg !96
  store %struct.list* %41, %struct.list** %43, align 8, !dbg !97
  %44 = load %struct.list*, %struct.list** %4, align 8, !dbg !98
  %45 = load %struct.list*, %struct.list** %3, align 8, !dbg !99
  %46 = getelementptr inbounds %struct.list, %struct.list* %45, i32 0, i32 1, !dbg !100
  store %struct.list* %44, %struct.list** %46, align 8, !dbg !101
  br label %16, !dbg !72, !llvm.loop !102

47:                                               ; preds = %16
  %48 = load %struct.list*, %struct.list** %3, align 8, !dbg !104
  ret %struct.list* %48, !dbg !105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.list*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !110, metadata !DIExpression()), !dbg !111
  %3 = call i8* @malloc(i64 noundef 24), !dbg !112
  %4 = bitcast i8* %3 to %struct.list*, !dbg !112
  store %struct.list* %4, %struct.list** %2, align 8, !dbg !113
  %5 = load %struct.list*, %struct.list** %2, align 8, !dbg !114
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 0, !dbg !115
  store i32 0, i32* %6, align 8, !dbg !116
  %7 = load %struct.list*, %struct.list** %2, align 8, !dbg !117
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 1, !dbg !118
  store %struct.list* null, %struct.list** %8, align 8, !dbg !119
  %9 = load %struct.list*, %struct.list** %2, align 8, !dbg !120
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 2, !dbg !121
  store %struct.list* null, %struct.list** %10, align 8, !dbg !122
  %11 = load %struct.list*, %struct.list** %2, align 8, !dbg !123
  %12 = call %struct.list* @construct(%struct.list* noundef %11, i32 noundef 10), !dbg !124
  store %struct.list* %12, %struct.list** %2, align 8, !dbg !125
  %13 = load %struct.list*, %struct.list** %2, align 8, !dbg !126
  %14 = call %struct.list* @walklist(%struct.list* noundef %13), !dbg !127
  store %struct.list* %14, %struct.list** %2, align 8, !dbg !128
  ret i32 0, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-recursive-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "construct", scope: !9, file: !9, line: 10, type: !10, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-recursive-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !16}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !9, line: 3, size: 192, elements: !14)
!14 = !{!15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !13, file: !9, line: 5, baseType: !16, size: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !9, line: 6, baseType: !12, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !9, line: 7, baseType: !12, size: 64, offset: 128)
!19 = !{}
!20 = !DILocalVariable(name: "head", arg: 1, scope: !8, file: !9, line: 10, type: !12)
!21 = !DILocation(line: 10, column: 37, scope: !8)
!22 = !DILocalVariable(name: "i", arg: 2, scope: !8, file: !9, line: 10, type: !16)
!23 = !DILocation(line: 10, column: 52, scope: !8)
!24 = !DILocation(line: 12, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !8, file: !9, line: 12, column: 9)
!26 = !DILocation(line: 12, column: 11, scope: !25)
!27 = !DILocation(line: 12, column: 9, scope: !8)
!28 = !DILocalVariable(name: "tmp", scope: !29, file: !9, line: 14, type: !12)
!29 = distinct !DILexicalBlock(scope: !25, file: !9, line: 13, column: 5)
!30 = !DILocation(line: 14, column: 22, scope: !29)
!31 = !DILocation(line: 14, column: 28, scope: !29)
!32 = !DILocation(line: 15, column: 9, scope: !29)
!33 = !DILocation(line: 15, column: 14, scope: !29)
!34 = !DILocation(line: 15, column: 20, scope: !29)
!35 = !DILocation(line: 16, column: 21, scope: !29)
!36 = !DILocation(line: 16, column: 9, scope: !29)
!37 = !DILocation(line: 16, column: 14, scope: !29)
!38 = !DILocation(line: 16, column: 19, scope: !29)
!39 = !DILocation(line: 17, column: 22, scope: !29)
!40 = !DILocation(line: 17, column: 9, scope: !29)
!41 = !DILocation(line: 17, column: 15, scope: !29)
!42 = !DILocation(line: 17, column: 20, scope: !29)
!43 = !DILocation(line: 18, column: 9, scope: !29)
!44 = !DILocation(line: 18, column: 14, scope: !29)
!45 = !DILocation(line: 18, column: 19, scope: !29)
!46 = !DILocation(line: 20, column: 26, scope: !29)
!47 = !DILocation(line: 20, column: 32, scope: !29)
!48 = !DILocation(line: 20, column: 16, scope: !29)
!49 = !DILocation(line: 20, column: 9, scope: !29)
!50 = !DILocation(line: 22, column: 12, scope: !8)
!51 = !DILocation(line: 22, column: 5, scope: !8)
!52 = !DILocation(line: 23, column: 1, scope: !8)
!53 = distinct !DISubprogram(name: "walklist", scope: !9, file: !9, line: 25, type: !54, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!54 = !DISubroutineType(types: !55)
!55 = !{!12, !12}
!56 = !DILocalVariable(name: "input", arg: 1, scope: !53, file: !9, line: 25, type: !12)
!57 = !DILocation(line: 25, column: 36, scope: !53)
!58 = !DILocalVariable(name: "head", scope: !53, file: !9, line: 27, type: !12)
!59 = !DILocation(line: 27, column: 18, scope: !53)
!60 = !DILocation(line: 27, column: 25, scope: !53)
!61 = !DILocalVariable(name: "curr", scope: !53, file: !9, line: 28, type: !12)
!62 = !DILocation(line: 28, column: 18, scope: !53)
!63 = !DILocation(line: 29, column: 5, scope: !53)
!64 = !DILocation(line: 29, column: 12, scope: !53)
!65 = !DILocation(line: 29, column: 18, scope: !53)
!66 = !DILocation(line: 29, column: 23, scope: !53)
!67 = !DILocation(line: 30, column: 16, scope: !53)
!68 = !DILocation(line: 30, column: 22, scope: !53)
!69 = !DILocation(line: 30, column: 14, scope: !53)
!70 = distinct !{!70, !63, !68, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !DILocation(line: 32, column: 5, scope: !53)
!73 = !DILocation(line: 32, column: 12, scope: !53)
!74 = !DILocation(line: 32, column: 18, scope: !53)
!75 = !DILocation(line: 34, column: 16, scope: !76)
!76 = distinct !DILexicalBlock(scope: !53, file: !9, line: 33, column: 5)
!77 = !DILocation(line: 34, column: 14, scope: !76)
!78 = !DILocation(line: 35, column: 9, scope: !76)
!79 = !DILocation(line: 35, column: 15, scope: !76)
!80 = !DILocation(line: 35, column: 20, scope: !76)
!81 = !DILocation(line: 37, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !9, line: 37, column: 13)
!83 = !DILocation(line: 37, column: 19, scope: !82)
!84 = !DILocation(line: 37, column: 25, scope: !82)
!85 = !DILocation(line: 37, column: 13, scope: !76)
!86 = !DILocation(line: 38, column: 20, scope: !82)
!87 = !DILocation(line: 38, column: 26, scope: !82)
!88 = !DILocation(line: 38, column: 18, scope: !82)
!89 = !DILocation(line: 38, column: 13, scope: !82)
!90 = !DILocation(line: 40, column: 20, scope: !82)
!91 = !DILocation(line: 40, column: 26, scope: !82)
!92 = !DILocation(line: 40, column: 18, scope: !82)
!93 = !DILocation(line: 41, column: 31, scope: !76)
!94 = !DILocation(line: 41, column: 22, scope: !76)
!95 = !DILocation(line: 41, column: 9, scope: !76)
!96 = !DILocation(line: 41, column: 15, scope: !76)
!97 = !DILocation(line: 41, column: 20, scope: !76)
!98 = !DILocation(line: 42, column: 22, scope: !76)
!99 = !DILocation(line: 42, column: 9, scope: !76)
!100 = !DILocation(line: 42, column: 15, scope: !76)
!101 = !DILocation(line: 42, column: 20, scope: !76)
!102 = distinct !{!102, !72, !103, !71}
!103 = !DILocation(line: 43, column: 5, scope: !53)
!104 = !DILocation(line: 44, column: 12, scope: !53)
!105 = !DILocation(line: 44, column: 5, scope: !53)
!106 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 47, type: !107, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!107 = !DISubroutineType(types: !108)
!108 = !{!109}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DILocalVariable(name: "head", scope: !106, file: !9, line: 49, type: !12)
!111 = !DILocation(line: 49, column: 18, scope: !106)
!112 = !DILocation(line: 51, column: 12, scope: !106)
!113 = !DILocation(line: 51, column: 10, scope: !106)
!114 = !DILocation(line: 52, column: 5, scope: !106)
!115 = !DILocation(line: 52, column: 11, scope: !106)
!116 = !DILocation(line: 52, column: 17, scope: !106)
!117 = !DILocation(line: 53, column: 5, scope: !106)
!118 = !DILocation(line: 53, column: 11, scope: !106)
!119 = !DILocation(line: 53, column: 16, scope: !106)
!120 = !DILocation(line: 54, column: 5, scope: !106)
!121 = !DILocation(line: 54, column: 11, scope: !106)
!122 = !DILocation(line: 54, column: 16, scope: !106)
!123 = !DILocation(line: 56, column: 22, scope: !106)
!124 = !DILocation(line: 56, column: 12, scope: !106)
!125 = !DILocation(line: 56, column: 10, scope: !106)
!126 = !DILocation(line: 57, column: 21, scope: !106)
!127 = !DILocation(line: 57, column: 12, scope: !106)
!128 = !DILocation(line: 57, column: 10, scope: !106)
!129 = !DILocation(line: 59, column: 5, scope: !106)
