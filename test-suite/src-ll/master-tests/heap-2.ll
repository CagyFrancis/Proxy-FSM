; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\heap-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\heap-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.TreeNode = type { i8, %struct.TreeNode*, %struct.TreeNode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TreeNode* @CreateTree1() #0 !dbg !20 {
  %1 = alloca %struct.TreeNode*, align 8
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %1, metadata !23, metadata !DIExpression()), !dbg !24
  %5 = call i8* @malloc(i64 noundef 24), !dbg !25
  %6 = bitcast i8* %5 to %struct.TreeNode*, !dbg !26
  store %struct.TreeNode* %6, %struct.TreeNode** %1, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %7 = call i8* @malloc(i64 noundef 24), !dbg !29
  %8 = bitcast i8* %7 to %struct.TreeNode*, !dbg !30
  store %struct.TreeNode* %8, %struct.TreeNode** %2, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !31, metadata !DIExpression()), !dbg !32
  %9 = call i8* @malloc(i64 noundef 24), !dbg !33
  %10 = bitcast i8* %9 to %struct.TreeNode*, !dbg !34
  store %struct.TreeNode* %10, %struct.TreeNode** %3, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !35, metadata !DIExpression()), !dbg !36
  %11 = call i8* @malloc(i64 noundef 24), !dbg !37
  %12 = bitcast i8* %11 to %struct.TreeNode*, !dbg !38
  store %struct.TreeNode* %12, %struct.TreeNode** %4, align 8, !dbg !36
  %13 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !39
  %14 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !40
  %15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %14, i32 0, i32 1, !dbg !41
  store %struct.TreeNode* %13, %struct.TreeNode** %15, align 8, !dbg !42
  %16 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !43
  %17 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !44
  %18 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %17, i32 0, i32 2, !dbg !45
  store %struct.TreeNode* %16, %struct.TreeNode** %18, align 8, !dbg !46
  %19 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !47
  %20 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !48
  %21 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %20, i32 0, i32 1, !dbg !49
  store %struct.TreeNode* %19, %struct.TreeNode** %21, align 8, !dbg !50
  %22 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !51
  %23 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %22, i32 0, i32 2, !dbg !52
  store %struct.TreeNode* null, %struct.TreeNode** %23, align 8, !dbg !53
  %24 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !54
  %25 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %24, i32 0, i32 1, !dbg !55
  store %struct.TreeNode* null, %struct.TreeNode** %25, align 8, !dbg !56
  %26 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !57
  %27 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %26, i32 0, i32 2, !dbg !58
  store %struct.TreeNode* null, %struct.TreeNode** %27, align 8, !dbg !59
  %28 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !60
  %29 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %28, i32 0, i32 1, !dbg !61
  store %struct.TreeNode* null, %struct.TreeNode** %29, align 8, !dbg !62
  %30 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !63
  %31 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %30, i32 0, i32 1, !dbg !64
  store %struct.TreeNode* null, %struct.TreeNode** %31, align 8, !dbg !65
  %32 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !66
  ret %struct.TreeNode* %32, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TreeNode* @CreateTree2() #0 !dbg !68 {
  %1 = alloca %struct.TreeNode*, align 8
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %1, metadata !69, metadata !DIExpression()), !dbg !70
  %5 = call i8* @malloc(i64 noundef 24), !dbg !71
  %6 = bitcast i8* %5 to %struct.TreeNode*, !dbg !72
  store %struct.TreeNode* %6, %struct.TreeNode** %1, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !73, metadata !DIExpression()), !dbg !74
  %7 = call i8* @malloc(i64 noundef 24), !dbg !75
  %8 = bitcast i8* %7 to %struct.TreeNode*, !dbg !76
  store %struct.TreeNode* %8, %struct.TreeNode** %2, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !77, metadata !DIExpression()), !dbg !78
  %9 = call i8* @malloc(i64 noundef 24), !dbg !79
  %10 = bitcast i8* %9 to %struct.TreeNode*, !dbg !80
  store %struct.TreeNode* %10, %struct.TreeNode** %3, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !81, metadata !DIExpression()), !dbg !82
  %11 = call i8* @malloc(i64 noundef 24), !dbg !83
  %12 = bitcast i8* %11 to %struct.TreeNode*, !dbg !84
  store %struct.TreeNode* %12, %struct.TreeNode** %4, align 8, !dbg !82
  %13 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !85
  %14 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !86
  %15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %14, i32 0, i32 1, !dbg !87
  store %struct.TreeNode* %13, %struct.TreeNode** %15, align 8, !dbg !88
  %16 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !89
  %17 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !90
  %18 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %17, i32 0, i32 2, !dbg !91
  store %struct.TreeNode* %16, %struct.TreeNode** %18, align 8, !dbg !92
  %19 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !93
  %20 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %19, i32 0, i32 1, !dbg !94
  store %struct.TreeNode* null, %struct.TreeNode** %20, align 8, !dbg !95
  %21 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !96
  %22 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %21, i32 0, i32 2, !dbg !97
  store %struct.TreeNode* null, %struct.TreeNode** %22, align 8, !dbg !98
  %23 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !99
  %24 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %23, i32 0, i32 1, !dbg !100
  store %struct.TreeNode* null, %struct.TreeNode** %24, align 8, !dbg !101
  %25 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !102
  %26 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !103
  %27 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %26, i32 0, i32 2, !dbg !104
  store %struct.TreeNode* %25, %struct.TreeNode** %27, align 8, !dbg !105
  %28 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !106
  %29 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %28, i32 0, i32 1, !dbg !107
  store %struct.TreeNode* null, %struct.TreeNode** %29, align 8, !dbg !108
  %30 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !109
  %31 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %30, i32 0, i32 2, !dbg !110
  store %struct.TreeNode* null, %struct.TreeNode** %31, align 8, !dbg !111
  %32 = load %struct.TreeNode*, %struct.TreeNode** %1, align 8, !dbg !112
  ret %struct.TreeNode* %32, !dbg !113
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TreeNode* @UseTree(%struct.TreeNode* noundef %0) #0 !dbg !114 {
  %2 = alloca %struct.TreeNode*, align 8
  store %struct.TreeNode* %0, %struct.TreeNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !117, metadata !DIExpression()), !dbg !118
  %3 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !119
  ret %struct.TreeNode* %3, !dbg !120
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !121 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  %5 = alloca %struct.TreeNode*, align 8
  %6 = alloca %struct.TreeNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %5, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %6, metadata !133, metadata !DIExpression()), !dbg !134
  %7 = call %struct.TreeNode* @CreateTree1(), !dbg !135
  store %struct.TreeNode* %7, %struct.TreeNode** %2, align 8, !dbg !136
  %8 = call %struct.TreeNode* @CreateTree2(), !dbg !137
  store %struct.TreeNode* %8, %struct.TreeNode** %3, align 8, !dbg !138
  %9 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !139
  %10 = call %struct.TreeNode* @UseTree(%struct.TreeNode* noundef %9), !dbg !140
  store %struct.TreeNode* %10, %struct.TreeNode** %4, align 8, !dbg !141
  %11 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !142
  %12 = call %struct.TreeNode* @UseTree(%struct.TreeNode* noundef %11), !dbg !143
  store %struct.TreeNode* %12, %struct.TreeNode** %5, align 8, !dbg !144
  %13 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !145
  %14 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %13, i32 0, i32 1, !dbg !146
  %15 = load %struct.TreeNode*, %struct.TreeNode** %14, align 8, !dbg !146
  %16 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %15, i32 0, i32 1, !dbg !147
  %17 = load %struct.TreeNode*, %struct.TreeNode** %16, align 8, !dbg !147
  store %struct.TreeNode* %17, %struct.TreeNode** %6, align 8, !dbg !148
  %18 = load %struct.TreeNode*, %struct.TreeNode** %5, align 8, !dbg !149
  %19 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %18, i32 0, i32 2, !dbg !150
  %20 = load %struct.TreeNode*, %struct.TreeNode** %19, align 8, !dbg !150
  %21 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %20, i32 0, i32 2, !dbg !151
  %22 = load %struct.TreeNode*, %struct.TreeNode** %21, align 8, !dbg !151
  store %struct.TreeNode* %22, %struct.TreeNode** %6, align 8, !dbg !152
  ret i32 0, !dbg !153
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/heap-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeNode", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/heap-2.c", directory: "")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TreeNode", file: !5, line: 4, size: 192, elements: !7)
!7 = !{!8, !11, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6, file: !5, line: 6, baseType: !9, size: 8)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemType", file: !5, line: 3, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !6, file: !5, line: 7, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !6, file: !5, line: 8, baseType: !12, size: 64, offset: 128)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!20 = distinct !DISubprogram(name: "CreateTree1", scope: !5, file: !5, line: 11, type: !21, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!21 = !DISubroutineType(types: !2)
!22 = !{}
!23 = !DILocalVariable(name: "node1", scope: !20, file: !5, line: 13, type: !3)
!24 = !DILocation(line: 13, column: 12, scope: !20)
!25 = !DILocation(line: 13, column: 32, scope: !20)
!26 = !DILocation(line: 13, column: 20, scope: !20)
!27 = !DILocalVariable(name: "node2", scope: !20, file: !5, line: 14, type: !3)
!28 = !DILocation(line: 14, column: 12, scope: !20)
!29 = !DILocation(line: 14, column: 32, scope: !20)
!30 = !DILocation(line: 14, column: 20, scope: !20)
!31 = !DILocalVariable(name: "node3", scope: !20, file: !5, line: 15, type: !3)
!32 = !DILocation(line: 15, column: 12, scope: !20)
!33 = !DILocation(line: 15, column: 32, scope: !20)
!34 = !DILocation(line: 15, column: 20, scope: !20)
!35 = !DILocalVariable(name: "node4", scope: !20, file: !5, line: 16, type: !3)
!36 = !DILocation(line: 16, column: 12, scope: !20)
!37 = !DILocation(line: 16, column: 32, scope: !20)
!38 = !DILocation(line: 16, column: 20, scope: !20)
!39 = !DILocation(line: 18, column: 16, scope: !20)
!40 = !DILocation(line: 18, column: 2, scope: !20)
!41 = !DILocation(line: 18, column: 9, scope: !20)
!42 = !DILocation(line: 18, column: 14, scope: !20)
!43 = !DILocation(line: 19, column: 17, scope: !20)
!44 = !DILocation(line: 19, column: 2, scope: !20)
!45 = !DILocation(line: 19, column: 9, scope: !20)
!46 = !DILocation(line: 19, column: 15, scope: !20)
!47 = !DILocation(line: 20, column: 16, scope: !20)
!48 = !DILocation(line: 20, column: 2, scope: !20)
!49 = !DILocation(line: 20, column: 9, scope: !20)
!50 = !DILocation(line: 20, column: 14, scope: !20)
!51 = !DILocation(line: 21, column: 2, scope: !20)
!52 = !DILocation(line: 21, column: 9, scope: !20)
!53 = !DILocation(line: 21, column: 15, scope: !20)
!54 = !DILocation(line: 22, column: 2, scope: !20)
!55 = !DILocation(line: 22, column: 9, scope: !20)
!56 = !DILocation(line: 22, column: 14, scope: !20)
!57 = !DILocation(line: 23, column: 2, scope: !20)
!58 = !DILocation(line: 23, column: 9, scope: !20)
!59 = !DILocation(line: 23, column: 15, scope: !20)
!60 = !DILocation(line: 24, column: 2, scope: !20)
!61 = !DILocation(line: 24, column: 9, scope: !20)
!62 = !DILocation(line: 24, column: 14, scope: !20)
!63 = !DILocation(line: 25, column: 2, scope: !20)
!64 = !DILocation(line: 25, column: 9, scope: !20)
!65 = !DILocation(line: 25, column: 14, scope: !20)
!66 = !DILocation(line: 27, column: 9, scope: !20)
!67 = !DILocation(line: 27, column: 2, scope: !20)
!68 = distinct !DISubprogram(name: "CreateTree2", scope: !5, file: !5, line: 30, type: !21, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!69 = !DILocalVariable(name: "node1", scope: !68, file: !5, line: 32, type: !3)
!70 = !DILocation(line: 32, column: 12, scope: !68)
!71 = !DILocation(line: 32, column: 32, scope: !68)
!72 = !DILocation(line: 32, column: 20, scope: !68)
!73 = !DILocalVariable(name: "node2", scope: !68, file: !5, line: 33, type: !3)
!74 = !DILocation(line: 33, column: 12, scope: !68)
!75 = !DILocation(line: 33, column: 32, scope: !68)
!76 = !DILocation(line: 33, column: 20, scope: !68)
!77 = !DILocalVariable(name: "node3", scope: !68, file: !5, line: 34, type: !3)
!78 = !DILocation(line: 34, column: 12, scope: !68)
!79 = !DILocation(line: 34, column: 32, scope: !68)
!80 = !DILocation(line: 34, column: 20, scope: !68)
!81 = !DILocalVariable(name: "node4", scope: !68, file: !5, line: 35, type: !3)
!82 = !DILocation(line: 35, column: 12, scope: !68)
!83 = !DILocation(line: 35, column: 32, scope: !68)
!84 = !DILocation(line: 35, column: 20, scope: !68)
!85 = !DILocation(line: 37, column: 16, scope: !68)
!86 = !DILocation(line: 37, column: 2, scope: !68)
!87 = !DILocation(line: 37, column: 9, scope: !68)
!88 = !DILocation(line: 37, column: 14, scope: !68)
!89 = !DILocation(line: 38, column: 17, scope: !68)
!90 = !DILocation(line: 38, column: 2, scope: !68)
!91 = !DILocation(line: 38, column: 9, scope: !68)
!92 = !DILocation(line: 38, column: 15, scope: !68)
!93 = !DILocation(line: 39, column: 2, scope: !68)
!94 = !DILocation(line: 39, column: 9, scope: !68)
!95 = !DILocation(line: 39, column: 14, scope: !68)
!96 = !DILocation(line: 40, column: 2, scope: !68)
!97 = !DILocation(line: 40, column: 9, scope: !68)
!98 = !DILocation(line: 40, column: 15, scope: !68)
!99 = !DILocation(line: 41, column: 2, scope: !68)
!100 = !DILocation(line: 41, column: 9, scope: !68)
!101 = !DILocation(line: 41, column: 14, scope: !68)
!102 = !DILocation(line: 42, column: 17, scope: !68)
!103 = !DILocation(line: 42, column: 2, scope: !68)
!104 = !DILocation(line: 42, column: 9, scope: !68)
!105 = !DILocation(line: 42, column: 15, scope: !68)
!106 = !DILocation(line: 43, column: 2, scope: !68)
!107 = !DILocation(line: 43, column: 9, scope: !68)
!108 = !DILocation(line: 43, column: 14, scope: !68)
!109 = !DILocation(line: 44, column: 2, scope: !68)
!110 = !DILocation(line: 44, column: 9, scope: !68)
!111 = !DILocation(line: 44, column: 15, scope: !68)
!112 = !DILocation(line: 46, column: 9, scope: !68)
!113 = !DILocation(line: 46, column: 2, scope: !68)
!114 = distinct !DISubprogram(name: "UseTree", scope: !5, file: !5, line: 49, type: !115, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!115 = !DISubroutineType(types: !116)
!116 = !{!3, !3}
!117 = !DILocalVariable(name: "root", arg: 1, scope: !114, file: !5, line: 49, type: !3)
!118 = !DILocation(line: 49, column: 29, scope: !114)
!119 = !DILocation(line: 51, column: 9, scope: !114)
!120 = !DILocation(line: 51, column: 2, scope: !114)
!121 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 54, type: !122, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!122 = !DISubroutineType(types: !123)
!123 = !{!124}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DILocalVariable(name: "o1", scope: !121, file: !5, line: 56, type: !3)
!126 = !DILocation(line: 56, column: 12, scope: !121)
!127 = !DILocalVariable(name: "o2", scope: !121, file: !5, line: 56, type: !3)
!128 = !DILocation(line: 56, column: 17, scope: !121)
!129 = !DILocalVariable(name: "v1", scope: !121, file: !5, line: 57, type: !3)
!130 = !DILocation(line: 57, column: 12, scope: !121)
!131 = !DILocalVariable(name: "v2", scope: !121, file: !5, line: 57, type: !3)
!132 = !DILocation(line: 57, column: 17, scope: !121)
!133 = !DILocalVariable(name: "p", scope: !121, file: !5, line: 58, type: !3)
!134 = !DILocation(line: 58, column: 12, scope: !121)
!135 = !DILocation(line: 60, column: 7, scope: !121)
!136 = !DILocation(line: 60, column: 5, scope: !121)
!137 = !DILocation(line: 61, column: 7, scope: !121)
!138 = !DILocation(line: 61, column: 5, scope: !121)
!139 = !DILocation(line: 63, column: 15, scope: !121)
!140 = !DILocation(line: 63, column: 7, scope: !121)
!141 = !DILocation(line: 63, column: 5, scope: !121)
!142 = !DILocation(line: 64, column: 15, scope: !121)
!143 = !DILocation(line: 64, column: 7, scope: !121)
!144 = !DILocation(line: 64, column: 5, scope: !121)
!145 = !DILocation(line: 66, column: 6, scope: !121)
!146 = !DILocation(line: 66, column: 10, scope: !121)
!147 = !DILocation(line: 66, column: 16, scope: !121)
!148 = !DILocation(line: 66, column: 4, scope: !121)
!149 = !DILocation(line: 67, column: 6, scope: !121)
!150 = !DILocation(line: 67, column: 10, scope: !121)
!151 = !DILocation(line: 67, column: 17, scope: !121)
!152 = !DILocation(line: 67, column: 4, scope: !121)
!153 = !DILocation(line: 69, column: 2, scope: !121)
