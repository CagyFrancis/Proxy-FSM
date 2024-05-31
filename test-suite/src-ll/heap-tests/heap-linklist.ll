; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-linklist.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-linklist.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.LinkNode = type { i8, %struct.LinkNode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeList(%struct.LinkNode* noundef %0) #0 !dbg !20 {
  %2 = alloca %struct.LinkNode*, align 8
  %3 = alloca %struct.LinkNode*, align 8
  %4 = alloca %struct.LinkNode*, align 8
  store %struct.LinkNode* %0, %struct.LinkNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %4, metadata !28, metadata !DIExpression()), !dbg !29
  %5 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !30
  store %struct.LinkNode* %5, %struct.LinkNode** %4, align 8, !dbg !29
  br label %6, !dbg !31

6:                                                ; preds = %15, %1
  %7 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !32
  %8 = icmp ne %struct.LinkNode* %7, null, !dbg !33
  br i1 %8, label %9, label %13, !dbg !34

9:                                                ; preds = %6
  %10 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !35
  %11 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !36
  %12 = icmp ne %struct.LinkNode* %10, %11, !dbg !37
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ], !dbg !38
  br i1 %14, label %15, label %22, !dbg !31

15:                                               ; preds = %13
  %16 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !39
  %17 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %16, i32 0, i32 1, !dbg !41
  %18 = load %struct.LinkNode*, %struct.LinkNode** %17, align 8, !dbg !41
  store %struct.LinkNode* %18, %struct.LinkNode** %3, align 8, !dbg !42
  %19 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !43
  %20 = bitcast %struct.LinkNode* %19 to i8*, !dbg !43
  call void @free(i8* noundef %20), !dbg !44
  %21 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !45
  store %struct.LinkNode* %21, %struct.LinkNode** %2, align 8, !dbg !46
  br label %6, !dbg !31, !llvm.loop !47

22:                                               ; preds = %13
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.LinkNode* @CreateList1() #0 !dbg !51 {
  %1 = alloca %struct.LinkNode*, align 8
  %2 = alloca %struct.LinkNode*, align 8
  %3 = alloca %struct.LinkNode*, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %1, metadata !54, metadata !DIExpression()), !dbg !55
  %4 = call i8* @malloc(i64 noundef 16), !dbg !56
  %5 = bitcast i8* %4 to %struct.LinkNode*, !dbg !57
  store %struct.LinkNode* %5, %struct.LinkNode** %1, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !58, metadata !DIExpression()), !dbg !59
  %6 = call i8* @malloc(i64 noundef 16), !dbg !60
  %7 = bitcast i8* %6 to %struct.LinkNode*, !dbg !61
  store %struct.LinkNode* %7, %struct.LinkNode** %2, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !62, metadata !DIExpression()), !dbg !63
  %8 = call i8* @malloc(i64 noundef 16), !dbg !64
  %9 = bitcast i8* %8 to %struct.LinkNode*, !dbg !65
  store %struct.LinkNode* %9, %struct.LinkNode** %3, align 8, !dbg !63
  %10 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !66
  %11 = load %struct.LinkNode*, %struct.LinkNode** %1, align 8, !dbg !67
  %12 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %11, i32 0, i32 1, !dbg !68
  store %struct.LinkNode* %10, %struct.LinkNode** %12, align 8, !dbg !69
  %13 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !70
  %14 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !71
  %15 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %14, i32 0, i32 1, !dbg !72
  store %struct.LinkNode* %13, %struct.LinkNode** %15, align 8, !dbg !73
  %16 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !74
  %17 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %16, i32 0, i32 1, !dbg !75
  store %struct.LinkNode* null, %struct.LinkNode** %17, align 8, !dbg !76
  %18 = load %struct.LinkNode*, %struct.LinkNode** %1, align 8, !dbg !77
  ret %struct.LinkNode* %18, !dbg !78
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.LinkNode* @CreateList2() #0 !dbg !79 {
  %1 = alloca %struct.LinkNode*, align 8
  %2 = alloca %struct.LinkNode*, align 8
  %3 = alloca %struct.LinkNode*, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %1, metadata !80, metadata !DIExpression()), !dbg !81
  %4 = call i8* @malloc(i64 noundef 16), !dbg !82
  %5 = bitcast i8* %4 to %struct.LinkNode*, !dbg !83
  store %struct.LinkNode* %5, %struct.LinkNode** %1, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !84, metadata !DIExpression()), !dbg !85
  %6 = call i8* @malloc(i64 noundef 16), !dbg !86
  %7 = bitcast i8* %6 to %struct.LinkNode*, !dbg !87
  store %struct.LinkNode* %7, %struct.LinkNode** %2, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !88, metadata !DIExpression()), !dbg !89
  %8 = call i8* @malloc(i64 noundef 16), !dbg !90
  %9 = bitcast i8* %8 to %struct.LinkNode*, !dbg !91
  store %struct.LinkNode* %9, %struct.LinkNode** %3, align 8, !dbg !89
  %10 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !92
  %11 = load %struct.LinkNode*, %struct.LinkNode** %1, align 8, !dbg !93
  %12 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %11, i32 0, i32 1, !dbg !94
  store %struct.LinkNode* %10, %struct.LinkNode** %12, align 8, !dbg !95
  %13 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !96
  %14 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !97
  %15 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %14, i32 0, i32 1, !dbg !98
  store %struct.LinkNode* %13, %struct.LinkNode** %15, align 8, !dbg !99
  %16 = load %struct.LinkNode*, %struct.LinkNode** %1, align 8, !dbg !100
  %17 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !101
  %18 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %17, i32 0, i32 1, !dbg !102
  store %struct.LinkNode* %16, %struct.LinkNode** %18, align 8, !dbg !103
  %19 = load %struct.LinkNode*, %struct.LinkNode** %1, align 8, !dbg !104
  ret %struct.LinkNode* %19, !dbg !105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LinkNode*, align 8
  %3 = alloca %struct.LinkNode*, align 8
  %4 = alloca %struct.LinkNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %4, metadata !114, metadata !DIExpression()), !dbg !115
  %5 = call %struct.LinkNode* @CreateList1(), !dbg !116
  store %struct.LinkNode* %5, %struct.LinkNode** %2, align 8, !dbg !117
  %6 = call %struct.LinkNode* @CreateList2(), !dbg !118
  store %struct.LinkNode* %6, %struct.LinkNode** %3, align 8, !dbg !119
  %7 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !120
  %8 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %7, i32 0, i32 1, !dbg !121
  %9 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !121
  store %struct.LinkNode* %9, %struct.LinkNode** %4, align 8, !dbg !122
  %10 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !123
  %11 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %10, i32 0, i32 1, !dbg !124
  %12 = load %struct.LinkNode*, %struct.LinkNode** %11, align 8, !dbg !124
  %13 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %12, i32 0, i32 1, !dbg !125
  %14 = load %struct.LinkNode*, %struct.LinkNode** %13, align 8, !dbg !125
  store %struct.LinkNode* %14, %struct.LinkNode** %4, align 8, !dbg !126
  %15 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !127
  call void @FreeList(%struct.LinkNode* noundef %15), !dbg !128
  %16 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !129
  call void @FreeList(%struct.LinkNode* noundef %16), !dbg !130
  ret i32 0, !dbg !131
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-linklist.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkNode", file: !6, line: 9, baseType: !7)
!6 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-linklist.c", directory: "")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LinkNode", file: !6, line: 5, size: 128, elements: !8)
!8 = !{!9, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 7, baseType: !10, size: 8)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemType", file: !6, line: 4, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !7, file: !6, line: 8, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!20 = distinct !DISubprogram(name: "FreeList", scope: !6, file: !6, line: 11, type: !21, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !4}
!23 = !{}
!24 = !DILocalVariable(name: "head", arg: 1, scope: !20, file: !6, line: 11, type: !4)
!25 = !DILocation(line: 11, column: 25, scope: !20)
!26 = !DILocalVariable(name: "p", scope: !20, file: !6, line: 13, type: !4)
!27 = !DILocation(line: 13, column: 12, scope: !20)
!28 = !DILocalVariable(name: "start", scope: !20, file: !6, line: 14, type: !4)
!29 = !DILocation(line: 14, column: 12, scope: !20)
!30 = !DILocation(line: 14, column: 20, scope: !20)
!31 = !DILocation(line: 15, column: 2, scope: !20)
!32 = !DILocation(line: 15, column: 9, scope: !20)
!33 = !DILocation(line: 15, column: 14, scope: !20)
!34 = !DILocation(line: 15, column: 22, scope: !20)
!35 = !DILocation(line: 15, column: 25, scope: !20)
!36 = !DILocation(line: 15, column: 33, scope: !20)
!37 = !DILocation(line: 15, column: 30, scope: !20)
!38 = !DILocation(line: 0, scope: !20)
!39 = !DILocation(line: 17, column: 7, scope: !40)
!40 = distinct !DILexicalBlock(scope: !20, file: !6, line: 16, column: 2)
!41 = !DILocation(line: 17, column: 13, scope: !40)
!42 = !DILocation(line: 17, column: 5, scope: !40)
!43 = !DILocation(line: 18, column: 8, scope: !40)
!44 = !DILocation(line: 18, column: 3, scope: !40)
!45 = !DILocation(line: 19, column: 10, scope: !40)
!46 = !DILocation(line: 19, column: 8, scope: !40)
!47 = distinct !{!47, !31, !48, !49}
!48 = !DILocation(line: 20, column: 2, scope: !20)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 21, column: 1, scope: !20)
!51 = distinct !DISubprogram(name: "CreateList1", scope: !6, file: !6, line: 23, type: !52, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!52 = !DISubroutineType(types: !53)
!53 = !{!4}
!54 = !DILocalVariable(name: "node1", scope: !51, file: !6, line: 25, type: !4)
!55 = !DILocation(line: 25, column: 12, scope: !51)
!56 = !DILocation(line: 25, column: 32, scope: !51)
!57 = !DILocation(line: 25, column: 20, scope: !51)
!58 = !DILocalVariable(name: "node2", scope: !51, file: !6, line: 26, type: !4)
!59 = !DILocation(line: 26, column: 12, scope: !51)
!60 = !DILocation(line: 26, column: 32, scope: !51)
!61 = !DILocation(line: 26, column: 20, scope: !51)
!62 = !DILocalVariable(name: "node3", scope: !51, file: !6, line: 27, type: !4)
!63 = !DILocation(line: 27, column: 12, scope: !51)
!64 = !DILocation(line: 27, column: 32, scope: !51)
!65 = !DILocation(line: 27, column: 20, scope: !51)
!66 = !DILocation(line: 29, column: 16, scope: !51)
!67 = !DILocation(line: 29, column: 2, scope: !51)
!68 = !DILocation(line: 29, column: 9, scope: !51)
!69 = !DILocation(line: 29, column: 14, scope: !51)
!70 = !DILocation(line: 30, column: 16, scope: !51)
!71 = !DILocation(line: 30, column: 2, scope: !51)
!72 = !DILocation(line: 30, column: 9, scope: !51)
!73 = !DILocation(line: 30, column: 14, scope: !51)
!74 = !DILocation(line: 31, column: 2, scope: !51)
!75 = !DILocation(line: 31, column: 9, scope: !51)
!76 = !DILocation(line: 31, column: 14, scope: !51)
!77 = !DILocation(line: 33, column: 9, scope: !51)
!78 = !DILocation(line: 33, column: 2, scope: !51)
!79 = distinct !DISubprogram(name: "CreateList2", scope: !6, file: !6, line: 36, type: !52, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!80 = !DILocalVariable(name: "node1", scope: !79, file: !6, line: 38, type: !4)
!81 = !DILocation(line: 38, column: 12, scope: !79)
!82 = !DILocation(line: 38, column: 32, scope: !79)
!83 = !DILocation(line: 38, column: 20, scope: !79)
!84 = !DILocalVariable(name: "node2", scope: !79, file: !6, line: 39, type: !4)
!85 = !DILocation(line: 39, column: 12, scope: !79)
!86 = !DILocation(line: 39, column: 32, scope: !79)
!87 = !DILocation(line: 39, column: 20, scope: !79)
!88 = !DILocalVariable(name: "node3", scope: !79, file: !6, line: 40, type: !4)
!89 = !DILocation(line: 40, column: 12, scope: !79)
!90 = !DILocation(line: 40, column: 32, scope: !79)
!91 = !DILocation(line: 40, column: 20, scope: !79)
!92 = !DILocation(line: 42, column: 16, scope: !79)
!93 = !DILocation(line: 42, column: 2, scope: !79)
!94 = !DILocation(line: 42, column: 9, scope: !79)
!95 = !DILocation(line: 42, column: 14, scope: !79)
!96 = !DILocation(line: 43, column: 16, scope: !79)
!97 = !DILocation(line: 43, column: 2, scope: !79)
!98 = !DILocation(line: 43, column: 9, scope: !79)
!99 = !DILocation(line: 43, column: 14, scope: !79)
!100 = !DILocation(line: 44, column: 16, scope: !79)
!101 = !DILocation(line: 44, column: 2, scope: !79)
!102 = !DILocation(line: 44, column: 9, scope: !79)
!103 = !DILocation(line: 44, column: 14, scope: !79)
!104 = !DILocation(line: 46, column: 9, scope: !79)
!105 = !DILocation(line: 46, column: 2, scope: !79)
!106 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 49, type: !107, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!107 = !DISubroutineType(types: !108)
!108 = !{!109}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DILocalVariable(name: "x", scope: !106, file: !6, line: 51, type: !4)
!111 = !DILocation(line: 51, column: 12, scope: !106)
!112 = !DILocalVariable(name: "y", scope: !106, file: !6, line: 51, type: !4)
!113 = !DILocation(line: 51, column: 16, scope: !106)
!114 = !DILocalVariable(name: "p", scope: !106, file: !6, line: 52, type: !4)
!115 = !DILocation(line: 52, column: 12, scope: !106)
!116 = !DILocation(line: 54, column: 6, scope: !106)
!117 = !DILocation(line: 54, column: 4, scope: !106)
!118 = !DILocation(line: 55, column: 6, scope: !106)
!119 = !DILocation(line: 55, column: 4, scope: !106)
!120 = !DILocation(line: 57, column: 6, scope: !106)
!121 = !DILocation(line: 57, column: 9, scope: !106)
!122 = !DILocation(line: 57, column: 4, scope: !106)
!123 = !DILocation(line: 58, column: 6, scope: !106)
!124 = !DILocation(line: 58, column: 9, scope: !106)
!125 = !DILocation(line: 58, column: 15, scope: !106)
!126 = !DILocation(line: 58, column: 4, scope: !106)
!127 = !DILocation(line: 60, column: 11, scope: !106)
!128 = !DILocation(line: 60, column: 2, scope: !106)
!129 = !DILocation(line: 61, column: 11, scope: !106)
!130 = !DILocation(line: 61, column: 2, scope: !106)
!131 = !DILocation(line: 62, column: 2, scope: !106)
