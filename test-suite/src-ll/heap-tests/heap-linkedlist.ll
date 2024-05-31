; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-linkedlist.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-linkedlist.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Node = type { i32*, %struct.Node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malloc_list(%struct.Node* noundef %0, i32 noundef %1) #0 !dbg !17 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Node** %3, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %5, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* null, i32** %5, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata i32** %6, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* null, i32** %6, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.Node** %7, metadata !29, metadata !DIExpression()), !dbg !30
  store %struct.Node* null, %struct.Node** %7, align 8, !dbg !30
  %8 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !31
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 0, !dbg !32
  store i32* null, i32** %9, align 8, !dbg !33
  br label %10, !dbg !34

10:                                               ; preds = %13, %2
  %11 = load i32, i32* %4, align 4, !dbg !35
  %12 = icmp ne i32 %11, 0, !dbg !36
  br i1 %12, label %13, label %31, !dbg !34

13:                                               ; preds = %10
  %14 = call i8* @malloc(i64 noundef 4), !dbg !37
  %15 = bitcast i8* %14 to i32*, !dbg !39
  %16 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !40
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 0, !dbg !41
  store i32* %15, i32** %17, align 8, !dbg !42
  %18 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !43
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 0, !dbg !44
  %20 = load i32*, i32** %19, align 8, !dbg !44
  store i32* %20, i32** %5, align 8, !dbg !45
  %21 = call i8* @malloc(i64 noundef 16), !dbg !46
  %22 = bitcast i8* %21 to %struct.Node*, !dbg !47
  store %struct.Node* %22, %struct.Node** %7, align 8, !dbg !48
  %23 = load %struct.Node*, %struct.Node** %7, align 8, !dbg !49
  %24 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !50
  %25 = getelementptr inbounds %struct.Node, %struct.Node* %24, i32 0, i32 1, !dbg !51
  store %struct.Node* %23, %struct.Node** %25, align 8, !dbg !52
  %26 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !53
  %27 = getelementptr inbounds %struct.Node, %struct.Node* %26, i32 0, i32 0, !dbg !54
  %28 = load i32*, i32** %27, align 8, !dbg !54
  store i32* %28, i32** %6, align 8, !dbg !55
  %29 = load i32, i32* %4, align 4, !dbg !56
  %30 = add nsw i32 %29, -1, !dbg !56
  store i32 %30, i32* %4, align 4, !dbg !56
  br label %10, !dbg !34, !llvm.loop !57

31:                                               ; preds = %10
  ret void, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Node*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.Node** %2, metadata !64, metadata !DIExpression()), !dbg !65
  %5 = call i8* @malloc(i64 noundef 16), !dbg !66
  %6 = bitcast i8* %5 to %struct.Node*, !dbg !67
  store %struct.Node* %6, %struct.Node** %2, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32** %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %4, metadata !70, metadata !DIExpression()), !dbg !71
  store i32 4, i32* %4, align 4, !dbg !71
  %7 = load %struct.Node*, %struct.Node** %2, align 8, !dbg !72
  %8 = load i32, i32* %4, align 4, !dbg !73
  call void @malloc_list(%struct.Node* noundef %7, i32 noundef %8), !dbg !74
  %9 = load %struct.Node*, %struct.Node** %2, align 8, !dbg !75
  %10 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1, !dbg !76
  %11 = load %struct.Node*, %struct.Node** %10, align 8, !dbg !76
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 0, !dbg !77
  %13 = load i32*, i32** %12, align 8, !dbg !77
  store i32* %13, i32** %3, align 8, !dbg !78
  %14 = load %struct.Node*, %struct.Node** %2, align 8, !dbg !79
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1, !dbg !80
  %16 = load %struct.Node*, %struct.Node** %15, align 8, !dbg !80
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 1, !dbg !81
  %18 = load %struct.Node*, %struct.Node** %17, align 8, !dbg !81
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 0, !dbg !82
  %20 = load i32*, i32** %19, align 8, !dbg !82
  store i32* %20, i32** %3, align 8, !dbg !83
  ret i32 0, !dbg !84
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-linkedlist.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !7, line: 10, size: 128, elements: !8)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-linkedlist.c", directory: "")
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6, file: !7, line: 12, baseType: !3, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !7, line: 13, baseType: !5, size: 64, offset: 64)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!17 = distinct !DISubprogram(name: "malloc_list", scope: !7, file: !7, line: 17, type: !18, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !5, !4}
!20 = !{}
!21 = !DILocalVariable(name: "p", arg: 1, scope: !17, file: !7, line: 17, type: !5)
!22 = !DILocation(line: 17, column: 31, scope: !17)
!23 = !DILocalVariable(name: "num", arg: 2, scope: !17, file: !7, line: 17, type: !4)
!24 = !DILocation(line: 17, column: 38, scope: !17)
!25 = !DILocalVariable(name: "p_data1", scope: !17, file: !7, line: 19, type: !3)
!26 = !DILocation(line: 19, column: 7, scope: !17)
!27 = !DILocalVariable(name: "p_data2", scope: !17, file: !7, line: 19, type: !3)
!28 = !DILocation(line: 19, column: 24, scope: !17)
!29 = !DILocalVariable(name: "p_next", scope: !17, file: !7, line: 20, type: !5)
!30 = !DILocation(line: 20, column: 15, scope: !17)
!31 = !DILocation(line: 21, column: 2, scope: !17)
!32 = !DILocation(line: 21, column: 5, scope: !17)
!33 = !DILocation(line: 21, column: 10, scope: !17)
!34 = !DILocation(line: 22, column: 2, scope: !17)
!35 = !DILocation(line: 22, column: 9, scope: !17)
!36 = !DILocation(line: 22, column: 13, scope: !17)
!37 = !DILocation(line: 24, column: 20, scope: !38)
!38 = distinct !DILexicalBlock(scope: !17, file: !7, line: 23, column: 2)
!39 = !DILocation(line: 24, column: 13, scope: !38)
!40 = !DILocation(line: 24, column: 3, scope: !38)
!41 = !DILocation(line: 24, column: 6, scope: !38)
!42 = !DILocation(line: 24, column: 11, scope: !38)
!43 = !DILocation(line: 25, column: 13, scope: !38)
!44 = !DILocation(line: 25, column: 16, scope: !38)
!45 = !DILocation(line: 25, column: 11, scope: !38)
!46 = !DILocation(line: 26, column: 27, scope: !38)
!47 = !DILocation(line: 26, column: 12, scope: !38)
!48 = !DILocation(line: 26, column: 10, scope: !38)
!49 = !DILocation(line: 27, column: 13, scope: !38)
!50 = !DILocation(line: 27, column: 3, scope: !38)
!51 = !DILocation(line: 27, column: 6, scope: !38)
!52 = !DILocation(line: 27, column: 11, scope: !38)
!53 = !DILocation(line: 28, column: 13, scope: !38)
!54 = !DILocation(line: 28, column: 16, scope: !38)
!55 = !DILocation(line: 28, column: 11, scope: !38)
!56 = !DILocation(line: 29, column: 6, scope: !38)
!57 = distinct !{!57, !34, !58, !59}
!58 = !DILocation(line: 30, column: 2, scope: !17)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 31, column: 2, scope: !17)
!61 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 34, type: !62, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!62 = !DISubroutineType(types: !63)
!63 = !{!4}
!64 = !DILocalVariable(name: "head", scope: !61, file: !7, line: 36, type: !5)
!65 = !DILocation(line: 36, column: 15, scope: !61)
!66 = !DILocation(line: 36, column: 37, scope: !61)
!67 = !DILocation(line: 36, column: 22, scope: !61)
!68 = !DILocalVariable(name: "p", scope: !61, file: !7, line: 37, type: !3)
!69 = !DILocation(line: 37, column: 7, scope: !61)
!70 = !DILocalVariable(name: "num", scope: !61, file: !7, line: 38, type: !4)
!71 = !DILocation(line: 38, column: 6, scope: !61)
!72 = !DILocation(line: 39, column: 14, scope: !61)
!73 = !DILocation(line: 39, column: 20, scope: !61)
!74 = !DILocation(line: 39, column: 2, scope: !61)
!75 = !DILocation(line: 41, column: 6, scope: !61)
!76 = !DILocation(line: 41, column: 12, scope: !61)
!77 = !DILocation(line: 41, column: 18, scope: !61)
!78 = !DILocation(line: 41, column: 4, scope: !61)
!79 = !DILocation(line: 42, column: 6, scope: !61)
!80 = !DILocation(line: 42, column: 12, scope: !61)
!81 = !DILocation(line: 42, column: 18, scope: !61)
!82 = !DILocation(line: 42, column: 24, scope: !61)
!83 = !DILocation(line: 42, column: 4, scope: !61)
!84 = !DILocation(line: 44, column: 2, scope: !61)
