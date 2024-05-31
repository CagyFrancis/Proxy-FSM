; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-linklist-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-linklist-0.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.list = type { i32, %struct.list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy(%struct.list* noundef %0) #0 !dbg !8 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !21, metadata !DIExpression()), !dbg !22
  %4 = load %struct.list*, %struct.list** %2, align 8, !dbg !23
  store %struct.list* %4, %struct.list** %3, align 8, !dbg !22
  br label %5, !dbg !24

5:                                                ; preds = %10, %1
  %6 = load %struct.list*, %struct.list** %3, align 8, !dbg !25
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0, !dbg !26
  %8 = load i32, i32* %7, align 8, !dbg !26
  %9 = icmp ne i32 %8, -1, !dbg !27
  br i1 %9, label %10, label %16, !dbg !24

10:                                               ; preds = %5
  %11 = load %struct.list*, %struct.list** %3, align 8, !dbg !28
  %12 = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 1, !dbg !30
  %13 = load %struct.list*, %struct.list** %12, align 8, !dbg !30
  store %struct.list* %13, %struct.list** %3, align 8, !dbg !31
  %14 = load %struct.list*, %struct.list** %3, align 8, !dbg !32
  %15 = bitcast %struct.list* %14 to i8*, !dbg !32
  call void @free(i8* noundef %15), !dbg !33
  br label %5, !dbg !24, !llvm.loop !34

16:                                               ; preds = %5
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @construct(i32 noundef %0) #0 !dbg !38 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %4, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %4, align 4, !dbg !47
  %6 = call i8* @malloc(i64 noundef 16), !dbg !48
  %7 = bitcast i8* %6 to %struct.list*, !dbg !48
  store %struct.list* %7, %struct.list** %3, align 8, !dbg !49
  %8 = load %struct.list*, %struct.list** %3, align 8, !dbg !50
  %9 = getelementptr inbounds %struct.list, %struct.list* %8, i32 0, i32 1, !dbg !51
  store %struct.list* null, %struct.list** %9, align 8, !dbg !52
  %10 = load %struct.list*, %struct.list** %3, align 8, !dbg !53
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 0, !dbg !54
  store i32 -1, i32* %11, align 8, !dbg !55
  store i32 0, i32* %4, align 4, !dbg !56
  br label %12, !dbg !58

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %4, align 4, !dbg !59
  %14 = load i32, i32* %2, align 4, !dbg !61
  %15 = icmp ult i32 %13, %14, !dbg !62
  br i1 %15, label %16, label %29, !dbg !63

16:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.list** %5, metadata !64, metadata !DIExpression()), !dbg !66
  %17 = call i8* @malloc(i64 noundef 16), !dbg !67
  %18 = bitcast i8* %17 to %struct.list*, !dbg !67
  store %struct.list* %18, %struct.list** %5, align 8, !dbg !66
  %19 = load i32, i32* %2, align 4, !dbg !68
  %20 = load %struct.list*, %struct.list** %5, align 8, !dbg !69
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 0, !dbg !70
  store i32 %19, i32* %21, align 8, !dbg !71
  %22 = load %struct.list*, %struct.list** %3, align 8, !dbg !72
  %23 = load %struct.list*, %struct.list** %5, align 8, !dbg !73
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 1, !dbg !74
  store %struct.list* %22, %struct.list** %24, align 8, !dbg !75
  %25 = load %struct.list*, %struct.list** %5, align 8, !dbg !76
  store %struct.list* %25, %struct.list** %3, align 8, !dbg !77
  br label %26, !dbg !78

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4, !dbg !79
  %28 = add i32 %27, 1, !dbg !79
  store i32 %28, i32* %4, align 4, !dbg !79
  br label %12, !dbg !80, !llvm.loop !81

29:                                               ; preds = %12
  %30 = load %struct.list*, %struct.list** %3, align 8, !dbg !83
  ret %struct.list* %30, !dbg !84
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @addlist(%struct.list* noundef %0, %struct.list* noundef %1) #0 !dbg !85 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !88, metadata !DIExpression()), !dbg !89
  store %struct.list* %1, %struct.list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %4, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct.list** %5, metadata !92, metadata !DIExpression()), !dbg !93
  %7 = load %struct.list*, %struct.list** %3, align 8, !dbg !94
  store %struct.list* %7, %struct.list** %5, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata %struct.list** %6, metadata !95, metadata !DIExpression()), !dbg !96
  br label %8, !dbg !97

8:                                                ; preds = %14, %2
  %9 = load %struct.list*, %struct.list** %6, align 8, !dbg !98
  %10 = load %struct.list*, %struct.list** %5, align 8, !dbg !99
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 1, !dbg !100
  %12 = load %struct.list*, %struct.list** %11, align 8, !dbg !100
  %13 = icmp eq %struct.list* %9, %12, !dbg !101
  br i1 %13, label %14, label %16, !dbg !97

14:                                               ; preds = %8
  %15 = load %struct.list*, %struct.list** %6, align 8, !dbg !102
  store %struct.list* %15, %struct.list** %5, align 8, !dbg !103
  br label %8, !dbg !97, !llvm.loop !104

16:                                               ; preds = %8
  %17 = load %struct.list*, %struct.list** %4, align 8, !dbg !105
  %18 = load %struct.list*, %struct.list** %5, align 8, !dbg !106
  %19 = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 1, !dbg !107
  store %struct.list* %17, %struct.list** %19, align 8, !dbg !108
  %20 = load %struct.list*, %struct.list** %3, align 8, !dbg !109
  ret %struct.list* %20, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !111 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !116, metadata !DIExpression()), !dbg !117
  %4 = call %struct.list* @construct(i32 noundef 10), !dbg !118
  store %struct.list* %4, %struct.list** %2, align 8, !dbg !119
  %5 = call %struct.list* @construct(i32 noundef 2), !dbg !120
  store %struct.list* %5, %struct.list** %3, align 8, !dbg !121
  %6 = load %struct.list*, %struct.list** %2, align 8, !dbg !122
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0, !dbg !124
  %8 = load i32, i32* %7, align 8, !dbg !124
  %9 = icmp eq i32 %8, 5, !dbg !125
  br i1 %9, label %10, label %12, !dbg !126

10:                                               ; preds = %0
  %11 = load %struct.list*, %struct.list** %2, align 8, !dbg !127
  store %struct.list* %11, %struct.list** %3, align 8, !dbg !128
  br label %12, !dbg !129

12:                                               ; preds = %10, %0
  %13 = load %struct.list*, %struct.list** %2, align 8, !dbg !130
  %14 = load %struct.list*, %struct.list** %3, align 8, !dbg !131
  %15 = call %struct.list* @addlist(%struct.list* noundef %13, %struct.list* noundef %14), !dbg !132
  store %struct.list* %15, %struct.list** %2, align 8, !dbg !133
  %16 = load %struct.list*, %struct.list** %2, align 8, !dbg !134
  call void @destroy(%struct.list* noundef %16), !dbg !135
  ret i32 0, !dbg !136
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-linklist-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "destroy", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-linklist-0.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !9, line: 3, size: 128, elements: !14)
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !9, line: 5, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !9, line: 6, baseType: !12, size: 64, offset: 64)
!18 = !{}
!19 = !DILocalVariable(name: "head", arg: 1, scope: !8, file: !9, line: 9, type: !12)
!20 = !DILocation(line: 9, column: 27, scope: !8)
!21 = !DILocalVariable(name: "cur", scope: !8, file: !9, line: 11, type: !12)
!22 = !DILocation(line: 11, column: 18, scope: !8)
!23 = !DILocation(line: 11, column: 24, scope: !8)
!24 = !DILocation(line: 12, column: 5, scope: !8)
!25 = !DILocation(line: 12, column: 12, scope: !8)
!26 = !DILocation(line: 12, column: 17, scope: !8)
!27 = !DILocation(line: 12, column: 22, scope: !8)
!28 = !DILocation(line: 14, column: 15, scope: !29)
!29 = distinct !DILexicalBlock(scope: !8, file: !9, line: 13, column: 5)
!30 = !DILocation(line: 14, column: 20, scope: !29)
!31 = !DILocation(line: 14, column: 13, scope: !29)
!32 = !DILocation(line: 15, column: 14, scope: !29)
!33 = !DILocation(line: 15, column: 9, scope: !29)
!34 = distinct !{!34, !24, !35, !36}
!35 = !DILocation(line: 16, column: 5, scope: !8)
!36 = !{!"llvm.loop.mustprogress"}
!37 = !DILocation(line: 17, column: 1, scope: !8)
!38 = distinct !DISubprogram(name: "construct", scope: !9, file: !9, line: 19, type: !39, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!39 = !DISubroutineType(types: !40)
!40 = !{!12, !41}
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DILocalVariable(name: "idx", arg: 1, scope: !38, file: !9, line: 19, type: !41)
!43 = !DILocation(line: 19, column: 33, scope: !38)
!44 = !DILocalVariable(name: "head", scope: !38, file: !9, line: 21, type: !12)
!45 = !DILocation(line: 21, column: 18, scope: !38)
!46 = !DILocalVariable(name: "i", scope: !38, file: !9, line: 22, type: !41)
!47 = !DILocation(line: 22, column: 14, scope: !38)
!48 = !DILocation(line: 23, column: 12, scope: !38)
!49 = !DILocation(line: 23, column: 10, scope: !38)
!50 = !DILocation(line: 24, column: 5, scope: !38)
!51 = !DILocation(line: 24, column: 11, scope: !38)
!52 = !DILocation(line: 24, column: 16, scope: !38)
!53 = !DILocation(line: 25, column: 5, scope: !38)
!54 = !DILocation(line: 25, column: 11, scope: !38)
!55 = !DILocation(line: 25, column: 16, scope: !38)
!56 = !DILocation(line: 26, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !38, file: !9, line: 26, column: 5)
!58 = !DILocation(line: 26, column: 10, scope: !57)
!59 = !DILocation(line: 26, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !9, line: 26, column: 5)
!61 = !DILocation(line: 26, column: 21, scope: !60)
!62 = !DILocation(line: 26, column: 19, scope: !60)
!63 = !DILocation(line: 26, column: 5, scope: !57)
!64 = !DILocalVariable(name: "cur", scope: !65, file: !9, line: 28, type: !12)
!65 = distinct !DILexicalBlock(scope: !60, file: !9, line: 27, column: 5)
!66 = !DILocation(line: 28, column: 22, scope: !65)
!67 = !DILocation(line: 28, column: 28, scope: !65)
!68 = !DILocation(line: 29, column: 21, scope: !65)
!69 = !DILocation(line: 29, column: 9, scope: !65)
!70 = !DILocation(line: 29, column: 14, scope: !65)
!71 = !DILocation(line: 29, column: 19, scope: !65)
!72 = !DILocation(line: 30, column: 21, scope: !65)
!73 = !DILocation(line: 30, column: 9, scope: !65)
!74 = !DILocation(line: 30, column: 14, scope: !65)
!75 = !DILocation(line: 30, column: 19, scope: !65)
!76 = !DILocation(line: 31, column: 16, scope: !65)
!77 = !DILocation(line: 31, column: 14, scope: !65)
!78 = !DILocation(line: 32, column: 5, scope: !65)
!79 = !DILocation(line: 26, column: 27, scope: !60)
!80 = !DILocation(line: 26, column: 5, scope: !60)
!81 = distinct !{!81, !63, !82, !36}
!82 = !DILocation(line: 32, column: 5, scope: !57)
!83 = !DILocation(line: 33, column: 12, scope: !38)
!84 = !DILocation(line: 33, column: 5, scope: !38)
!85 = distinct !DISubprogram(name: "addlist", scope: !9, file: !9, line: 36, type: !86, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!86 = !DISubroutineType(types: !87)
!87 = !{!12, !12, !12}
!88 = !DILocalVariable(name: "l", arg: 1, scope: !85, file: !9, line: 36, type: !12)
!89 = !DILocation(line: 36, column: 35, scope: !85)
!90 = !DILocalVariable(name: "elem", arg: 2, scope: !85, file: !9, line: 36, type: !12)
!91 = !DILocation(line: 36, column: 51, scope: !85)
!92 = !DILocalVariable(name: "head", scope: !85, file: !9, line: 38, type: !12)
!93 = !DILocation(line: 38, column: 18, scope: !85)
!94 = !DILocation(line: 38, column: 25, scope: !85)
!95 = !DILocalVariable(name: "t", scope: !85, file: !9, line: 39, type: !12)
!96 = !DILocation(line: 39, column: 18, scope: !85)
!97 = !DILocation(line: 40, column: 5, scope: !85)
!98 = !DILocation(line: 40, column: 12, scope: !85)
!99 = !DILocation(line: 40, column: 17, scope: !85)
!100 = !DILocation(line: 40, column: 23, scope: !85)
!101 = !DILocation(line: 40, column: 14, scope: !85)
!102 = !DILocation(line: 41, column: 16, scope: !85)
!103 = !DILocation(line: 41, column: 14, scope: !85)
!104 = distinct !{!104, !97, !102, !36}
!105 = !DILocation(line: 43, column: 18, scope: !85)
!106 = !DILocation(line: 43, column: 5, scope: !85)
!107 = !DILocation(line: 43, column: 11, scope: !85)
!108 = !DILocation(line: 43, column: 16, scope: !85)
!109 = !DILocation(line: 44, column: 12, scope: !85)
!110 = !DILocation(line: 44, column: 5, scope: !85)
!111 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 47, type: !112, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!112 = !DISubroutineType(types: !113)
!113 = !{!16}
!114 = !DILocalVariable(name: "head", scope: !111, file: !9, line: 49, type: !12)
!115 = !DILocation(line: 49, column: 18, scope: !111)
!116 = !DILocalVariable(name: "head1", scope: !111, file: !9, line: 50, type: !12)
!117 = !DILocation(line: 50, column: 18, scope: !111)
!118 = !DILocation(line: 51, column: 12, scope: !111)
!119 = !DILocation(line: 51, column: 10, scope: !111)
!120 = !DILocation(line: 52, column: 13, scope: !111)
!121 = !DILocation(line: 52, column: 11, scope: !111)
!122 = !DILocation(line: 54, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !9, line: 54, column: 9)
!124 = !DILocation(line: 54, column: 15, scope: !123)
!125 = !DILocation(line: 54, column: 20, scope: !123)
!126 = !DILocation(line: 54, column: 9, scope: !111)
!127 = !DILocation(line: 55, column: 17, scope: !123)
!128 = !DILocation(line: 55, column: 15, scope: !123)
!129 = !DILocation(line: 55, column: 9, scope: !123)
!130 = !DILocation(line: 57, column: 20, scope: !111)
!131 = !DILocation(line: 57, column: 26, scope: !111)
!132 = !DILocation(line: 57, column: 12, scope: !111)
!133 = !DILocation(line: 57, column: 10, scope: !111)
!134 = !DILocation(line: 59, column: 13, scope: !111)
!135 = !DILocation(line: 59, column: 5, scope: !111)
!136 = !DILocation(line: 61, column: 5, scope: !111)
