; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-binarytree.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-binarytree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.TreeNode = type { i8, %struct.TreeNode*, %struct.TreeNode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeTree(%struct.TreeNode* noundef %0) #0 !dbg !21 {
  %2 = alloca %struct.TreeNode*, align 8
  store %struct.TreeNode* %0, %struct.TreeNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !25, metadata !DIExpression()), !dbg !26
  %3 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !27
  %4 = icmp eq %struct.TreeNode* %3, null, !dbg !29
  br i1 %4, label %5, label %6, !dbg !30

5:                                                ; preds = %1
  br label %15, !dbg !31

6:                                                ; preds = %1
  %7 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !32
  %8 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %7, i32 0, i32 1, !dbg !33
  %9 = load %struct.TreeNode*, %struct.TreeNode** %8, align 8, !dbg !33
  call void @FreeTree(%struct.TreeNode* noundef %9), !dbg !34
  %10 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !35
  %11 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %10, i32 0, i32 2, !dbg !36
  %12 = load %struct.TreeNode*, %struct.TreeNode** %11, align 8, !dbg !36
  call void @FreeTree(%struct.TreeNode* noundef %12), !dbg !37
  %13 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !38
  %14 = bitcast %struct.TreeNode* %13 to i8*, !dbg !38
  call void @free(i8* noundef %14), !dbg !39
  br label %15, !dbg !40

15:                                               ; preds = %6, %5
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TreeNode* @CreateTree1() #0 !dbg !41 {
  %1 = alloca %struct.TreeNode*, align 8
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %1, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = call i8* @malloc(i64 noundef 24), !dbg !46
  %6 = bitcast i8* %5 to %struct.TreeNode*, !dbg !47
  store %struct.TreeNode* %6, %struct.TreeNode** %1, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !48, metadata !DIExpression()), !dbg !49
  %7 = call i8* @malloc(i64 noundef 24), !dbg !50
  %8 = bitcast i8* %7 to %struct.TreeNode*, !dbg !51
  store %struct.TreeNode* %8, %struct.TreeNode** %2, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !52, metadata !DIExpression()), !dbg !53
  %9 = call i8* @malloc(i64 noundef 24), !dbg !54
  %10 = bitcast i8* %9 to %struct.TreeNode*, !dbg !55
  store %struct.TreeNode* %10, %struct.TreeNode** %3, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !56, metadata !DIExpression()), !dbg !57
  %11 = call i8* @malloc(i64 noundef 24), !dbg !58
  %12 = bitcast i8* %11 to %struct.TreeNode*, !dbg !59
  store %struct.TreeNode* %12, %struct.TreeNode** %4, align 8, !dbg !57
  %13 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !60
  %14 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !61
  %15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %14, i32 0, i32 1, !dbg !62
  store %struct.TreeNode* %13, %struct.TreeNode** %15, align 8, !dbg !63
  %16 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !64
  %17 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !65
  %18 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %17, i32 0, i32 2, !dbg !66
  store %struct.TreeNode* %16, %struct.TreeNode** %18, align 8, !dbg !67
  %19 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !68
  %20 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !69
  %21 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %20, i32 0, i32 1, !dbg !70
  store %struct.TreeNode* %19, %struct.TreeNode** %21, align 8, !dbg !71
  %22 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !72
  %23 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %22, i32 0, i32 2, !dbg !73
  store %struct.TreeNode* null, %struct.TreeNode** %23, align 8, !dbg !74
  %24 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !75
  %25 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %24, i32 0, i32 1, !dbg !76
  store %struct.TreeNode* null, %struct.TreeNode** %25, align 8, !dbg !77
  %26 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !78
  %27 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %26, i32 0, i32 2, !dbg !79
  store %struct.TreeNode* null, %struct.TreeNode** %27, align 8, !dbg !80
  %28 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !81
  %29 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %28, i32 0, i32 1, !dbg !82
  store %struct.TreeNode* null, %struct.TreeNode** %29, align 8, !dbg !83
  %30 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !84
  %31 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %30, i32 0, i32 1, !dbg !85
  store %struct.TreeNode* null, %struct.TreeNode** %31, align 8, !dbg !86
  %32 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !87
  ret %struct.TreeNode* %32, !dbg !88
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TreeNode* @CreateTree2() #0 !dbg !89 {
  %1 = alloca %struct.TreeNode*, align 8
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %1, metadata !90, metadata !DIExpression()), !dbg !91
  %5 = call i8* @malloc(i64 noundef 24), !dbg !92
  %6 = bitcast i8* %5 to %struct.TreeNode*, !dbg !93
  store %struct.TreeNode* %6, %struct.TreeNode** %1, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !94, metadata !DIExpression()), !dbg !95
  %7 = call i8* @malloc(i64 noundef 24), !dbg !96
  %8 = bitcast i8* %7 to %struct.TreeNode*, !dbg !97
  store %struct.TreeNode* %8, %struct.TreeNode** %2, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !98, metadata !DIExpression()), !dbg !99
  %9 = call i8* @malloc(i64 noundef 24), !dbg !100
  %10 = bitcast i8* %9 to %struct.TreeNode*, !dbg !101
  store %struct.TreeNode* %10, %struct.TreeNode** %3, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !102, metadata !DIExpression()), !dbg !103
  %11 = call i8* @malloc(i64 noundef 24), !dbg !104
  %12 = bitcast i8* %11 to %struct.TreeNode*, !dbg !105
  store %struct.TreeNode* %12, %struct.TreeNode** %4, align 8, !dbg !103
  %13 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !106
  %14 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !107
  %15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %14, i32 0, i32 1, !dbg !108
  store %struct.TreeNode* %13, %struct.TreeNode** %15, align 8, !dbg !109
  %16 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !110
  %17 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !111
  %18 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %17, i32 0, i32 2, !dbg !112
  store %struct.TreeNode* %16, %struct.TreeNode** %18, align 8, !dbg !113
  %19 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !114
  %20 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %19, i32 0, i32 1, !dbg !115
  store %struct.TreeNode* null, %struct.TreeNode** %20, align 8, !dbg !116
  %21 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !117
  %22 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %21, i32 0, i32 2, !dbg !118
  store %struct.TreeNode* null, %struct.TreeNode** %22, align 8, !dbg !119
  %23 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !120
  %24 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %23, i32 0, i32 1, !dbg !121
  store %struct.TreeNode* null, %struct.TreeNode** %24, align 8, !dbg !122
  %25 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !123
  %26 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !124
  %27 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %26, i32 0, i32 2, !dbg !125
  store %struct.TreeNode* %25, %struct.TreeNode** %27, align 8, !dbg !126
  %28 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !127
  %29 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %28, i32 0, i32 1, !dbg !128
  store %struct.TreeNode* null, %struct.TreeNode** %29, align 8, !dbg !129
  %30 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !130
  %31 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %30, i32 0, i32 2, !dbg !131
  store %struct.TreeNode* null, %struct.TreeNode** %31, align 8, !dbg !132
  %32 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !133
  ret %struct.TreeNode* %32, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !135 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !143, metadata !DIExpression()), !dbg !144
  %5 = call %struct.TreeNode* @CreateTree1(), !dbg !145
  store %struct.TreeNode* %5, %struct.TreeNode** %2, align 8, !dbg !146
  %6 = call %struct.TreeNode* @CreateTree2(), !dbg !147
  store %struct.TreeNode* %6, %struct.TreeNode** %3, align 8, !dbg !148
  %7 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !149
  %8 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %7, i32 0, i32 1, !dbg !150
  %9 = load %struct.TreeNode*, %struct.TreeNode** %8, align 8, !dbg !150
  %10 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %9, i32 0, i32 1, !dbg !151
  %11 = load %struct.TreeNode*, %struct.TreeNode** %10, align 8, !dbg !151
  store %struct.TreeNode* %11, %struct.TreeNode** %4, align 8, !dbg !152
  %12 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !153
  %13 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %12, i32 0, i32 2, !dbg !154
  %14 = load %struct.TreeNode*, %struct.TreeNode** %13, align 8, !dbg !154
  %15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %14, i32 0, i32 2, !dbg !155
  %16 = load %struct.TreeNode*, %struct.TreeNode** %15, align 8, !dbg !155
  store %struct.TreeNode* %16, %struct.TreeNode** %4, align 8, !dbg !156
  %17 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !157
  call void @FreeTree(%struct.TreeNode* noundef %17), !dbg !158
  %18 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !159
  call void @FreeTree(%struct.TreeNode* noundef %18), !dbg !160
  ret i32 0, !dbg !161
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-binarytree.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeNode", file: !6, line: 10, baseType: !7)
!6 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-binarytree.c", directory: "")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TreeNode", file: !6, line: 5, size: 192, elements: !8)
!8 = !{!9, !12, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 7, baseType: !10, size: 8)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemType", file: !6, line: 4, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !7, file: !6, line: 8, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !7, file: !6, line: 9, baseType: !13, size: 64, offset: 128)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!21 = distinct !DISubprogram(name: "FreeTree", scope: !6, file: !6, line: 12, type: !22, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !4}
!24 = !{}
!25 = !DILocalVariable(name: "root", arg: 1, scope: !21, file: !6, line: 12, type: !4)
!26 = !DILocation(line: 12, column: 25, scope: !21)
!27 = !DILocation(line: 14, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !21, file: !6, line: 14, column: 6)
!29 = !DILocation(line: 14, column: 11, scope: !28)
!30 = !DILocation(line: 14, column: 6, scope: !21)
!31 = !DILocation(line: 15, column: 3, scope: !28)
!32 = !DILocation(line: 16, column: 11, scope: !21)
!33 = !DILocation(line: 16, column: 17, scope: !21)
!34 = !DILocation(line: 16, column: 2, scope: !21)
!35 = !DILocation(line: 17, column: 11, scope: !21)
!36 = !DILocation(line: 17, column: 17, scope: !21)
!37 = !DILocation(line: 17, column: 2, scope: !21)
!38 = !DILocation(line: 18, column: 7, scope: !21)
!39 = !DILocation(line: 18, column: 2, scope: !21)
!40 = !DILocation(line: 19, column: 1, scope: !21)
!41 = distinct !DISubprogram(name: "CreateTree1", scope: !6, file: !6, line: 21, type: !42, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!42 = !DISubroutineType(types: !43)
!43 = !{!4}
!44 = !DILocalVariable(name: "node1", scope: !41, file: !6, line: 23, type: !4)
!45 = !DILocation(line: 23, column: 12, scope: !41)
!46 = !DILocation(line: 23, column: 32, scope: !41)
!47 = !DILocation(line: 23, column: 20, scope: !41)
!48 = !DILocalVariable(name: "node2", scope: !41, file: !6, line: 24, type: !4)
!49 = !DILocation(line: 24, column: 12, scope: !41)
!50 = !DILocation(line: 24, column: 32, scope: !41)
!51 = !DILocation(line: 24, column: 20, scope: !41)
!52 = !DILocalVariable(name: "node3", scope: !41, file: !6, line: 25, type: !4)
!53 = !DILocation(line: 25, column: 12, scope: !41)
!54 = !DILocation(line: 25, column: 32, scope: !41)
!55 = !DILocation(line: 25, column: 20, scope: !41)
!56 = !DILocalVariable(name: "node4", scope: !41, file: !6, line: 26, type: !4)
!57 = !DILocation(line: 26, column: 12, scope: !41)
!58 = !DILocation(line: 26, column: 32, scope: !41)
!59 = !DILocation(line: 26, column: 20, scope: !41)
!60 = !DILocation(line: 28, column: 16, scope: !41)
!61 = !DILocation(line: 28, column: 2, scope: !41)
!62 = !DILocation(line: 28, column: 9, scope: !41)
!63 = !DILocation(line: 28, column: 14, scope: !41)
!64 = !DILocation(line: 29, column: 17, scope: !41)
!65 = !DILocation(line: 29, column: 2, scope: !41)
!66 = !DILocation(line: 29, column: 9, scope: !41)
!67 = !DILocation(line: 29, column: 15, scope: !41)
!68 = !DILocation(line: 30, column: 16, scope: !41)
!69 = !DILocation(line: 30, column: 2, scope: !41)
!70 = !DILocation(line: 30, column: 9, scope: !41)
!71 = !DILocation(line: 30, column: 14, scope: !41)
!72 = !DILocation(line: 31, column: 2, scope: !41)
!73 = !DILocation(line: 31, column: 9, scope: !41)
!74 = !DILocation(line: 31, column: 15, scope: !41)
!75 = !DILocation(line: 32, column: 2, scope: !41)
!76 = !DILocation(line: 32, column: 9, scope: !41)
!77 = !DILocation(line: 32, column: 14, scope: !41)
!78 = !DILocation(line: 33, column: 2, scope: !41)
!79 = !DILocation(line: 33, column: 9, scope: !41)
!80 = !DILocation(line: 33, column: 15, scope: !41)
!81 = !DILocation(line: 34, column: 2, scope: !41)
!82 = !DILocation(line: 34, column: 9, scope: !41)
!83 = !DILocation(line: 34, column: 14, scope: !41)
!84 = !DILocation(line: 35, column: 2, scope: !41)
!85 = !DILocation(line: 35, column: 9, scope: !41)
!86 = !DILocation(line: 35, column: 14, scope: !41)
!87 = !DILocation(line: 37, column: 9, scope: !41)
!88 = !DILocation(line: 37, column: 2, scope: !41)
!89 = distinct !DISubprogram(name: "CreateTree2", scope: !6, file: !6, line: 40, type: !42, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!90 = !DILocalVariable(name: "node1", scope: !89, file: !6, line: 42, type: !4)
!91 = !DILocation(line: 42, column: 12, scope: !89)
!92 = !DILocation(line: 42, column: 32, scope: !89)
!93 = !DILocation(line: 42, column: 20, scope: !89)
!94 = !DILocalVariable(name: "node2", scope: !89, file: !6, line: 43, type: !4)
!95 = !DILocation(line: 43, column: 12, scope: !89)
!96 = !DILocation(line: 43, column: 32, scope: !89)
!97 = !DILocation(line: 43, column: 20, scope: !89)
!98 = !DILocalVariable(name: "node3", scope: !89, file: !6, line: 44, type: !4)
!99 = !DILocation(line: 44, column: 12, scope: !89)
!100 = !DILocation(line: 44, column: 32, scope: !89)
!101 = !DILocation(line: 44, column: 20, scope: !89)
!102 = !DILocalVariable(name: "node4", scope: !89, file: !6, line: 45, type: !4)
!103 = !DILocation(line: 45, column: 12, scope: !89)
!104 = !DILocation(line: 45, column: 32, scope: !89)
!105 = !DILocation(line: 45, column: 20, scope: !89)
!106 = !DILocation(line: 47, column: 16, scope: !89)
!107 = !DILocation(line: 47, column: 2, scope: !89)
!108 = !DILocation(line: 47, column: 9, scope: !89)
!109 = !DILocation(line: 47, column: 14, scope: !89)
!110 = !DILocation(line: 48, column: 17, scope: !89)
!111 = !DILocation(line: 48, column: 2, scope: !89)
!112 = !DILocation(line: 48, column: 9, scope: !89)
!113 = !DILocation(line: 48, column: 15, scope: !89)
!114 = !DILocation(line: 49, column: 2, scope: !89)
!115 = !DILocation(line: 49, column: 9, scope: !89)
!116 = !DILocation(line: 49, column: 14, scope: !89)
!117 = !DILocation(line: 50, column: 2, scope: !89)
!118 = !DILocation(line: 50, column: 9, scope: !89)
!119 = !DILocation(line: 50, column: 15, scope: !89)
!120 = !DILocation(line: 51, column: 2, scope: !89)
!121 = !DILocation(line: 51, column: 9, scope: !89)
!122 = !DILocation(line: 51, column: 14, scope: !89)
!123 = !DILocation(line: 52, column: 17, scope: !89)
!124 = !DILocation(line: 52, column: 2, scope: !89)
!125 = !DILocation(line: 52, column: 9, scope: !89)
!126 = !DILocation(line: 52, column: 15, scope: !89)
!127 = !DILocation(line: 53, column: 2, scope: !89)
!128 = !DILocation(line: 53, column: 9, scope: !89)
!129 = !DILocation(line: 53, column: 14, scope: !89)
!130 = !DILocation(line: 54, column: 2, scope: !89)
!131 = !DILocation(line: 54, column: 9, scope: !89)
!132 = !DILocation(line: 54, column: 15, scope: !89)
!133 = !DILocation(line: 56, column: 9, scope: !89)
!134 = !DILocation(line: 56, column: 2, scope: !89)
!135 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 59, type: !136, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!136 = !DISubroutineType(types: !137)
!137 = !{!138}
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !DILocalVariable(name: "x", scope: !135, file: !6, line: 61, type: !4)
!140 = !DILocation(line: 61, column: 12, scope: !135)
!141 = !DILocalVariable(name: "y", scope: !135, file: !6, line: 61, type: !4)
!142 = !DILocation(line: 61, column: 16, scope: !135)
!143 = !DILocalVariable(name: "p", scope: !135, file: !6, line: 62, type: !4)
!144 = !DILocation(line: 62, column: 12, scope: !135)
!145 = !DILocation(line: 64, column: 6, scope: !135)
!146 = !DILocation(line: 64, column: 4, scope: !135)
!147 = !DILocation(line: 65, column: 6, scope: !135)
!148 = !DILocation(line: 65, column: 4, scope: !135)
!149 = !DILocation(line: 67, column: 6, scope: !135)
!150 = !DILocation(line: 67, column: 9, scope: !135)
!151 = !DILocation(line: 67, column: 15, scope: !135)
!152 = !DILocation(line: 67, column: 4, scope: !135)
!153 = !DILocation(line: 68, column: 6, scope: !135)
!154 = !DILocation(line: 68, column: 9, scope: !135)
!155 = !DILocation(line: 68, column: 16, scope: !135)
!156 = !DILocation(line: 68, column: 4, scope: !135)
!157 = !DILocation(line: 70, column: 11, scope: !135)
!158 = !DILocation(line: 70, column: 2, scope: !135)
!159 = !DILocation(line: 71, column: 11, scope: !135)
!160 = !DILocation(line: 71, column: 2, scope: !135)
!161 = !DILocation(line: 72, column: 2, scope: !135)
