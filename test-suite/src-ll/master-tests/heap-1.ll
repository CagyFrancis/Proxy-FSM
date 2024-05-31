; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\heap-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\heap-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.TreeNode = type { i8, %struct.TreeNode*, %struct.TreeNode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(%struct.TreeNode* noundef %0) #0 !dbg !20 {
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca %struct.TreeNode*, align 8
  %4 = alloca %struct.TreeNode*, align 8
  store %struct.TreeNode* %0, %struct.TreeNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %2, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !26, metadata !DIExpression()), !dbg !27
  %5 = call i8* @malloc(i64 noundef 24), !dbg !28
  %6 = bitcast i8* %5 to %struct.TreeNode*, !dbg !29
  store %struct.TreeNode* %6, %struct.TreeNode** %3, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %4, metadata !30, metadata !DIExpression()), !dbg !31
  %7 = call i8* @malloc(i64 noundef 24), !dbg !32
  %8 = bitcast i8* %7 to %struct.TreeNode*, !dbg !33
  store %struct.TreeNode* %8, %struct.TreeNode** %4, align 8, !dbg !31
  %9 = load %struct.TreeNode*, %struct.TreeNode** %3, align 8, !dbg !34
  %10 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !35
  %11 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %10, i32 0, i32 1, !dbg !36
  store %struct.TreeNode* %9, %struct.TreeNode** %11, align 8, !dbg !37
  %12 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !38
  %13 = load %struct.TreeNode*, %struct.TreeNode** %2, align 8, !dbg !39
  %14 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %13, i32 0, i32 2, !dbg !40
  store %struct.TreeNode* %12, %struct.TreeNode** %14, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !43 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TreeNode, align 8
  %3 = alloca %struct.TreeNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.TreeNode* %2, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct.TreeNode** %3, metadata !49, metadata !DIExpression()), !dbg !50
  call void @foo(%struct.TreeNode* noundef %2), !dbg !51
  %4 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %2, i32 0, i32 1, !dbg !52
  %5 = load %struct.TreeNode*, %struct.TreeNode** %4, align 8, !dbg !52
  store %struct.TreeNode* %5, %struct.TreeNode** %3, align 8, !dbg !53
  ret i32 0, !dbg !54
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/heap-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeNode", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/heap-1.c", directory: "")
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
!20 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 11, type: !21, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !3}
!23 = !{}
!24 = !DILocalVariable(name: "root", arg: 1, scope: !20, file: !5, line: 11, type: !3)
!25 = !DILocation(line: 11, column: 20, scope: !20)
!26 = !DILocalVariable(name: "node1", scope: !20, file: !5, line: 13, type: !3)
!27 = !DILocation(line: 13, column: 12, scope: !20)
!28 = !DILocation(line: 13, column: 32, scope: !20)
!29 = !DILocation(line: 13, column: 20, scope: !20)
!30 = !DILocalVariable(name: "node2", scope: !20, file: !5, line: 14, type: !3)
!31 = !DILocation(line: 14, column: 12, scope: !20)
!32 = !DILocation(line: 14, column: 32, scope: !20)
!33 = !DILocation(line: 14, column: 20, scope: !20)
!34 = !DILocation(line: 16, column: 18, scope: !20)
!35 = !DILocation(line: 16, column: 5, scope: !20)
!36 = !DILocation(line: 16, column: 11, scope: !20)
!37 = !DILocation(line: 16, column: 16, scope: !20)
!38 = !DILocation(line: 17, column: 19, scope: !20)
!39 = !DILocation(line: 17, column: 5, scope: !20)
!40 = !DILocation(line: 17, column: 11, scope: !20)
!41 = !DILocation(line: 17, column: 17, scope: !20)
!42 = !DILocation(line: 18, column: 1, scope: !20)
!43 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 20, type: !44, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!44 = !DISubroutineType(types: !45)
!45 = !{!46}
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DILocalVariable(name: "root", scope: !43, file: !5, line: 22, type: !4)
!48 = !DILocation(line: 22, column: 14, scope: !43)
!49 = !DILocalVariable(name: "p", scope: !43, file: !5, line: 23, type: !3)
!50 = !DILocation(line: 23, column: 15, scope: !43)
!51 = !DILocation(line: 25, column: 5, scope: !43)
!52 = !DILocation(line: 27, column: 14, scope: !43)
!53 = !DILocation(line: 27, column: 7, scope: !43)
!54 = !DILocation(line: 28, column: 5, scope: !43)
