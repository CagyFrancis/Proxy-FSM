; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-linklist-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-linklist-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.list = type { i32, %struct.list*, %struct.list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @construct(i32 noundef %0) #0 !dbg !8 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %4, align 4, !dbg !26
  %6 = call i8* @malloc(i64 noundef 24), !dbg !27
  %7 = bitcast i8* %6 to %struct.list*, !dbg !27
  store %struct.list* %7, %struct.list** %3, align 8, !dbg !28
  %8 = load %struct.list*, %struct.list** %3, align 8, !dbg !29
  %9 = getelementptr inbounds %struct.list, %struct.list* %8, i32 0, i32 1, !dbg !30
  store %struct.list* null, %struct.list** %9, align 8, !dbg !31
  %10 = load %struct.list*, %struct.list** %3, align 8, !dbg !32
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 2, !dbg !33
  store %struct.list* null, %struct.list** %11, align 8, !dbg !34
  %12 = load %struct.list*, %struct.list** %3, align 8, !dbg !35
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0, !dbg !36
  store i32 -1, i32* %13, align 8, !dbg !37
  store i32 0, i32* %4, align 4, !dbg !38
  br label %14, !dbg !40

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %4, align 4, !dbg !41
  %16 = load i32, i32* %2, align 4, !dbg !43
  %17 = icmp ult i32 %15, %16, !dbg !44
  br i1 %17, label %18, label %36, !dbg !45

18:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.list** %5, metadata !46, metadata !DIExpression()), !dbg !48
  %19 = call i8* @malloc(i64 noundef 24), !dbg !49
  %20 = bitcast i8* %19 to %struct.list*, !dbg !49
  store %struct.list* %20, %struct.list** %5, align 8, !dbg !48
  %21 = load i32, i32* %2, align 4, !dbg !50
  %22 = load %struct.list*, %struct.list** %5, align 8, !dbg !51
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 0, !dbg !52
  store i32 %21, i32* %23, align 8, !dbg !53
  %24 = load %struct.list*, %struct.list** %3, align 8, !dbg !54
  %25 = load %struct.list*, %struct.list** %5, align 8, !dbg !55
  %26 = getelementptr inbounds %struct.list, %struct.list* %25, i32 0, i32 1, !dbg !56
  store %struct.list* %24, %struct.list** %26, align 8, !dbg !57
  %27 = load %struct.list*, %struct.list** %5, align 8, !dbg !58
  %28 = getelementptr inbounds %struct.list, %struct.list* %27, i32 0, i32 2, !dbg !59
  store %struct.list* null, %struct.list** %28, align 8, !dbg !60
  %29 = load %struct.list*, %struct.list** %5, align 8, !dbg !61
  %30 = load %struct.list*, %struct.list** %3, align 8, !dbg !62
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 2, !dbg !63
  store %struct.list* %29, %struct.list** %31, align 8, !dbg !64
  %32 = load %struct.list*, %struct.list** %5, align 8, !dbg !65
  store %struct.list* %32, %struct.list** %3, align 8, !dbg !66
  br label %33, !dbg !67

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4, !dbg !68
  %35 = add i32 %34, 1, !dbg !68
  store i32 %35, i32* %4, align 4, !dbg !68
  br label %14, !dbg !69, !llvm.loop !70

36:                                               ; preds = %14
  %37 = load %struct.list*, %struct.list** %3, align 8, !dbg !73
  ret %struct.list* %37, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @randomwalk(%struct.list* noundef %0) #0 !dbg !75 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !80, metadata !DIExpression()), !dbg !81
  %4 = load %struct.list*, %struct.list** %2, align 8, !dbg !82
  store %struct.list* %4, %struct.list** %3, align 8, !dbg !81
  br label %5, !dbg !83

5:                                                ; preds = %20, %1
  %6 = load %struct.list*, %struct.list** %3, align 8, !dbg !84
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0, !dbg !87
  %8 = load i32, i32* %7, align 8, !dbg !87
  %9 = icmp ne i32 %8, 0, !dbg !88
  br i1 %9, label %10, label %24, !dbg !89

10:                                               ; preds = %5
  %11 = load %struct.list*, %struct.list** %3, align 8, !dbg !90
  %12 = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 0, !dbg !93
  %13 = load i32, i32* %12, align 8, !dbg !93
  %14 = icmp sgt i32 %13, 3, !dbg !94
  br i1 %14, label %15, label %19, !dbg !95

15:                                               ; preds = %10
  %16 = load %struct.list*, %struct.list** %3, align 8, !dbg !96
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 2, !dbg !97
  %18 = load %struct.list*, %struct.list** %17, align 8, !dbg !97
  store %struct.list* %18, %struct.list** %3, align 8, !dbg !98
  br label %19, !dbg !99

19:                                               ; preds = %15, %10
  br label %20, !dbg !100

20:                                               ; preds = %19
  %21 = load %struct.list*, %struct.list** %3, align 8, !dbg !101
  %22 = getelementptr inbounds %struct.list, %struct.list* %21, i32 0, i32 1, !dbg !102
  %23 = load %struct.list*, %struct.list** %22, align 8, !dbg !102
  store %struct.list* %23, %struct.list** %3, align 8, !dbg !103
  br label %5, !dbg !104, !llvm.loop !105

24:                                               ; preds = %5
  %25 = load %struct.list*, %struct.list** %3, align 8, !dbg !107
  ret %struct.list* %25, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !114, metadata !DIExpression()), !dbg !115
  %4 = call %struct.list* @construct(i32 noundef 10), !dbg !116
  store %struct.list* %4, %struct.list** %2, align 8, !dbg !117
  %5 = load %struct.list*, %struct.list** %2, align 8, !dbg !118
  %6 = call %struct.list* @randomwalk(%struct.list* noundef %5), !dbg !119
  store %struct.list* %6, %struct.list** %3, align 8, !dbg !120
  ret i32 0, !dbg !121
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-linklist-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "construct", scope: !9, file: !9, line: 10, type: !10, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-linklist-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !19}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !9, line: 3, size: 192, elements: !14)
!14 = !{!15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !9, line: 5, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !9, line: 6, baseType: !12, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !9, line: 7, baseType: !12, size: 64, offset: 128)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "idx", arg: 1, scope: !8, file: !9, line: 10, type: !19)
!22 = !DILocation(line: 10, column: 33, scope: !8)
!23 = !DILocalVariable(name: "head", scope: !8, file: !9, line: 12, type: !12)
!24 = !DILocation(line: 12, column: 18, scope: !8)
!25 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 13, type: !19)
!26 = !DILocation(line: 13, column: 14, scope: !8)
!27 = !DILocation(line: 14, column: 12, scope: !8)
!28 = !DILocation(line: 14, column: 10, scope: !8)
!29 = !DILocation(line: 15, column: 5, scope: !8)
!30 = !DILocation(line: 15, column: 11, scope: !8)
!31 = !DILocation(line: 15, column: 16, scope: !8)
!32 = !DILocation(line: 16, column: 5, scope: !8)
!33 = !DILocation(line: 16, column: 11, scope: !8)
!34 = !DILocation(line: 16, column: 16, scope: !8)
!35 = !DILocation(line: 17, column: 5, scope: !8)
!36 = !DILocation(line: 17, column: 11, scope: !8)
!37 = !DILocation(line: 17, column: 16, scope: !8)
!38 = !DILocation(line: 18, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !8, file: !9, line: 18, column: 5)
!40 = !DILocation(line: 18, column: 10, scope: !39)
!41 = !DILocation(line: 18, column: 17, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !9, line: 18, column: 5)
!43 = !DILocation(line: 18, column: 21, scope: !42)
!44 = !DILocation(line: 18, column: 19, scope: !42)
!45 = !DILocation(line: 18, column: 5, scope: !39)
!46 = !DILocalVariable(name: "cur", scope: !47, file: !9, line: 20, type: !12)
!47 = distinct !DILexicalBlock(scope: !42, file: !9, line: 19, column: 5)
!48 = !DILocation(line: 20, column: 22, scope: !47)
!49 = !DILocation(line: 20, column: 28, scope: !47)
!50 = !DILocation(line: 21, column: 21, scope: !47)
!51 = !DILocation(line: 21, column: 9, scope: !47)
!52 = !DILocation(line: 21, column: 14, scope: !47)
!53 = !DILocation(line: 21, column: 19, scope: !47)
!54 = !DILocation(line: 22, column: 21, scope: !47)
!55 = !DILocation(line: 22, column: 9, scope: !47)
!56 = !DILocation(line: 22, column: 14, scope: !47)
!57 = !DILocation(line: 22, column: 19, scope: !47)
!58 = !DILocation(line: 23, column: 9, scope: !47)
!59 = !DILocation(line: 23, column: 14, scope: !47)
!60 = !DILocation(line: 23, column: 19, scope: !47)
!61 = !DILocation(line: 24, column: 22, scope: !47)
!62 = !DILocation(line: 24, column: 9, scope: !47)
!63 = !DILocation(line: 24, column: 15, scope: !47)
!64 = !DILocation(line: 24, column: 20, scope: !47)
!65 = !DILocation(line: 25, column: 16, scope: !47)
!66 = !DILocation(line: 25, column: 14, scope: !47)
!67 = !DILocation(line: 26, column: 5, scope: !47)
!68 = !DILocation(line: 18, column: 27, scope: !42)
!69 = !DILocation(line: 18, column: 5, scope: !42)
!70 = distinct !{!70, !45, !71, !72}
!71 = !DILocation(line: 26, column: 5, scope: !39)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 27, column: 12, scope: !8)
!74 = !DILocation(line: 27, column: 5, scope: !8)
!75 = distinct !DISubprogram(name: "randomwalk", scope: !9, file: !9, line: 30, type: !76, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!76 = !DISubroutineType(types: !77)
!77 = !{!12, !12}
!78 = !DILocalVariable(name: "head", arg: 1, scope: !75, file: !9, line: 30, type: !12)
!79 = !DILocation(line: 30, column: 38, scope: !75)
!80 = !DILocalVariable(name: "cur", scope: !75, file: !9, line: 32, type: !12)
!81 = !DILocation(line: 32, column: 18, scope: !75)
!82 = !DILocation(line: 32, column: 24, scope: !75)
!83 = !DILocation(line: 34, column: 5, scope: !75)
!84 = !DILocation(line: 34, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !9, line: 34, column: 5)
!86 = distinct !DILexicalBlock(scope: !75, file: !9, line: 34, column: 5)
!87 = !DILocation(line: 34, column: 17, scope: !85)
!88 = !DILocation(line: 34, column: 22, scope: !85)
!89 = !DILocation(line: 34, column: 5, scope: !86)
!90 = !DILocation(line: 36, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !9, line: 36, column: 13)
!92 = distinct !DILexicalBlock(scope: !85, file: !9, line: 35, column: 5)
!93 = !DILocation(line: 36, column: 18, scope: !91)
!94 = !DILocation(line: 36, column: 23, scope: !91)
!95 = !DILocation(line: 36, column: 13, scope: !92)
!96 = !DILocation(line: 37, column: 19, scope: !91)
!97 = !DILocation(line: 37, column: 24, scope: !91)
!98 = !DILocation(line: 37, column: 17, scope: !91)
!99 = !DILocation(line: 37, column: 13, scope: !91)
!100 = !DILocation(line: 38, column: 5, scope: !92)
!101 = !DILocation(line: 34, column: 34, scope: !85)
!102 = !DILocation(line: 34, column: 39, scope: !85)
!103 = !DILocation(line: 34, column: 32, scope: !85)
!104 = !DILocation(line: 34, column: 5, scope: !85)
!105 = distinct !{!105, !89, !106, !72}
!106 = !DILocation(line: 38, column: 5, scope: !86)
!107 = !DILocation(line: 39, column: 12, scope: !75)
!108 = !DILocation(line: 39, column: 5, scope: !75)
!109 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 42, type: !110, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!110 = !DISubroutineType(types: !111)
!111 = !{!16}
!112 = !DILocalVariable(name: "head", scope: !109, file: !9, line: 44, type: !12)
!113 = !DILocation(line: 44, column: 18, scope: !109)
!114 = !DILocalVariable(name: "head1", scope: !109, file: !9, line: 45, type: !12)
!115 = !DILocation(line: 45, column: 18, scope: !109)
!116 = !DILocation(line: 46, column: 12, scope: !109)
!117 = !DILocation(line: 46, column: 10, scope: !109)
!118 = !DILocation(line: 48, column: 24, scope: !109)
!119 = !DILocation(line: 48, column: 13, scope: !109)
!120 = !DILocation(line: 48, column: 11, scope: !109)
!121 = !DILocation(line: 50, column: 5, scope: !109)
