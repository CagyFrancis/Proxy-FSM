; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\anderson-struct-path.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\anderson-struct-path.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mystruct, align 8
  %7 = alloca %struct.mystruct, align 8
  %8 = alloca %struct.mystruct, align 8
  %9 = alloca %struct.mystruct, align 8
  %10 = alloca %struct.mystruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %5, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata %struct.mystruct* %6, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct.mystruct* %7, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.mystruct* %8, metadata !32, metadata !DIExpression()), !dbg !33
  %11 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %8, i32 0, i32 0, !dbg !34
  store i32* %2, i32** %11, align 8, !dbg !34
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %8, i32 0, i32 1, !dbg !34
  store i32* %3, i32** %12, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct.mystruct* %9, metadata !35, metadata !DIExpression()), !dbg !36
  %13 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %9, i32 0, i32 0, !dbg !37
  store i32* %3, i32** %13, align 8, !dbg !37
  %14 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %9, i32 0, i32 1, !dbg !37
  store i32* %4, i32** %14, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct.mystruct** %10, metadata !38, metadata !DIExpression()), !dbg !40
  store %struct.mystruct* %6, %struct.mystruct** %10, align 8, !dbg !40
  %15 = load i32, i32* %4, align 4, !dbg !41
  %16 = icmp ne i32 %15, 0, !dbg !41
  br i1 %16, label %17, label %19, !dbg !43

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 0, !dbg !44
  store i32* %2, i32** %18, align 8, !dbg !45
  br label %21, !dbg !46

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 0, !dbg !47
  store i32* %3, i32** %20, align 8, !dbg !48
  br label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 0, !dbg !49
  %23 = load i32*, i32** %22, align 8, !dbg !49
  %24 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !50
  store i32* %23, i32** %24, align 8, !dbg !51
  %25 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !52
  %26 = load i32*, i32** %25, align 8, !dbg !52
  store i32* %26, i32** %5, align 8, !dbg !53
  %27 = load i32, i32* %4, align 4, !dbg !54
  %28 = icmp ne i32 %27, 0, !dbg !54
  br i1 %28, label %29, label %34, !dbg !56

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %8, i32 0, i32 1, !dbg !57
  %31 = load i32*, i32** %30, align 8, !dbg !57
  %32 = load %struct.mystruct*, %struct.mystruct** %10, align 8, !dbg !58
  %33 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %32, i32 0, i32 0, !dbg !59
  store i32* %31, i32** %33, align 8, !dbg !60
  br label %39, !dbg !61

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %9, i32 0, i32 1, !dbg !62
  %36 = load i32*, i32** %35, align 8, !dbg !62
  %37 = load %struct.mystruct*, %struct.mystruct** %10, align 8, !dbg !63
  %38 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %37, i32 0, i32 0, !dbg !64
  store i32* %36, i32** %38, align 8, !dbg !65
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.mystruct*, %struct.mystruct** %10, align 8, !dbg !66
  %41 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %40, i32 0, i32 0, !dbg !67
  %42 = load i32*, i32** %41, align 8, !dbg !67
  %43 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !68
  store i32* %42, i32** %43, align 8, !dbg !69
  %44 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !70
  %45 = load i32*, i32** %44, align 8, !dbg !70
  store i32* %45, i32** %5, align 8, !dbg !71
  ret i32 0, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/anderson-struct-path.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/anderson-struct-path.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 9, type: !12)
!15 = !DILocation(line: 9, column: 9, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 9, type: !12)
!17 = !DILocation(line: 9, column: 12, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 9, type: !12)
!19 = !DILocation(line: 9, column: 15, scope: !8)
!20 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 10, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !DILocation(line: 10, column: 10, scope: !8)
!23 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 11, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !9, line: 5, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !9, line: 1, size: 128, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !25, file: !9, line: 3, baseType: !21, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !25, file: !9, line: 4, baseType: !21, size: 64, offset: 64)
!29 = !DILocation(line: 11, column: 14, scope: !8)
!30 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 11, type: !24)
!31 = !DILocation(line: 11, column: 17, scope: !8)
!32 = !DILocalVariable(name: "z", scope: !8, file: !9, line: 11, type: !24)
!33 = !DILocation(line: 11, column: 20, scope: !8)
!34 = !DILocation(line: 11, column: 24, scope: !8)
!35 = !DILocalVariable(name: "w", scope: !8, file: !9, line: 11, type: !24)
!36 = !DILocation(line: 11, column: 34, scope: !8)
!37 = !DILocation(line: 11, column: 38, scope: !8)
!38 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 12, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!40 = !DILocation(line: 12, column: 15, scope: !8)
!41 = !DILocation(line: 14, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !9, line: 14, column: 9)
!43 = !DILocation(line: 14, column: 9, scope: !8)
!44 = !DILocation(line: 15, column: 11, scope: !42)
!45 = !DILocation(line: 15, column: 14, scope: !42)
!46 = !DILocation(line: 15, column: 9, scope: !42)
!47 = !DILocation(line: 17, column: 11, scope: !42)
!48 = !DILocation(line: 17, column: 14, scope: !42)
!49 = !DILocation(line: 18, column: 14, scope: !8)
!50 = !DILocation(line: 18, column: 7, scope: !8)
!51 = !DILocation(line: 18, column: 10, scope: !8)
!52 = !DILocation(line: 19, column: 11, scope: !8)
!53 = !DILocation(line: 19, column: 7, scope: !8)
!54 = !DILocation(line: 21, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !8, file: !9, line: 21, column: 9)
!56 = !DILocation(line: 21, column: 9, scope: !8)
!57 = !DILocation(line: 22, column: 21, scope: !55)
!58 = !DILocation(line: 22, column: 11, scope: !55)
!59 = !DILocation(line: 22, column: 14, scope: !55)
!60 = !DILocation(line: 22, column: 17, scope: !55)
!61 = !DILocation(line: 22, column: 9, scope: !55)
!62 = !DILocation(line: 24, column: 21, scope: !55)
!63 = !DILocation(line: 24, column: 11, scope: !55)
!64 = !DILocation(line: 24, column: 14, scope: !55)
!65 = !DILocation(line: 24, column: 17, scope: !55)
!66 = !DILocation(line: 25, column: 14, scope: !8)
!67 = !DILocation(line: 25, column: 17, scope: !8)
!68 = !DILocation(line: 25, column: 7, scope: !8)
!69 = !DILocation(line: 25, column: 10, scope: !8)
!70 = !DILocation(line: 26, column: 11, scope: !8)
!71 = !DILocation(line: 26, column: 7, scope: !8)
!72 = !DILocation(line: 28, column: 5, scope: !8)
