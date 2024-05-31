; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-struct-path-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-struct-path-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mystruct*, align 8
  %7 = alloca %struct.mystruct**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32** %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct.mystruct** %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.mystruct*** %7, metadata !32, metadata !DIExpression()), !dbg !34
  store %struct.mystruct** %6, %struct.mystruct*** %7, align 8, !dbg !34
  %8 = call i8* @malloc(i64 noundef 16), !dbg !35
  %9 = bitcast i8* %8 to %struct.mystruct*, !dbg !36
  store %struct.mystruct* %9, %struct.mystruct** %6, align 8, !dbg !37
  %10 = load i32, i32* %2, align 4, !dbg !38
  %11 = icmp ne i32 %10, 0, !dbg !38
  br i1 %11, label %12, label %15, !dbg !40

12:                                               ; preds = %0
  %13 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !41
  %14 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %13, i32 0, i32 0, !dbg !42
  store i32* %2, i32** %14, align 8, !dbg !43
  br label %18, !dbg !41

15:                                               ; preds = %0
  %16 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !44
  %17 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %16, i32 0, i32 0, !dbg !45
  store i32* %3, i32** %17, align 8, !dbg !46
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !47
  %20 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %19, i32 0, i32 0, !dbg !48
  %21 = load i32*, i32** %20, align 8, !dbg !48
  store i32* %21, i32** %5, align 8, !dbg !49
  %22 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !50
  %23 = bitcast %struct.mystruct* %22 to i8*, !dbg !50
  call void @free(i8* noundef %23), !dbg !51
  %24 = call i8* @malloc(i64 noundef 16), !dbg !52
  %25 = bitcast i8* %24 to %struct.mystruct*, !dbg !53
  %26 = load %struct.mystruct**, %struct.mystruct*** %7, align 8, !dbg !54
  store %struct.mystruct* %25, %struct.mystruct** %26, align 8, !dbg !55
  %27 = load i32, i32* %2, align 4, !dbg !56
  %28 = icmp ne i32 %27, 0, !dbg !56
  br i1 %28, label %29, label %33, !dbg !58

29:                                               ; preds = %18
  %30 = load %struct.mystruct**, %struct.mystruct*** %7, align 8, !dbg !59
  %31 = load %struct.mystruct*, %struct.mystruct** %30, align 8, !dbg !60
  %32 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %31, i32 0, i32 1, !dbg !61
  store i32* %3, i32** %32, align 8, !dbg !62
  br label %37, !dbg !63

33:                                               ; preds = %18
  %34 = load %struct.mystruct**, %struct.mystruct*** %7, align 8, !dbg !64
  %35 = load %struct.mystruct*, %struct.mystruct** %34, align 8, !dbg !65
  %36 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %35, i32 0, i32 1, !dbg !66
  store i32* %4, i32** %36, align 8, !dbg !67
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.mystruct**, %struct.mystruct*** %7, align 8, !dbg !68
  %39 = load %struct.mystruct*, %struct.mystruct** %38, align 8, !dbg !69
  %40 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %39, i32 0, i32 1, !dbg !70
  %41 = load i32*, i32** %40, align 8, !dbg !70
  store i32* %41, i32** %5, align 8, !dbg !71
  %42 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !72
  %43 = bitcast %struct.mystruct* %42 to i8*, !dbg !72
  call void @free(i8* noundef %43), !dbg !73
  ret i32 0, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-struct-path-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !5, line: 7, baseType: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-struct-path-1.c", directory: "")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !5, line: 3, size: 128, elements: !7)
!7 = !{!8, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !6, file: !5, line: 5, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !6, file: !5, line: 6, baseType: !9, size: 64, offset: 64)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 9, type: !19, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!10}
!21 = !{}
!22 = !DILocalVariable(name: "a", scope: !18, file: !5, line: 11, type: !10)
!23 = !DILocation(line: 11, column: 9, scope: !18)
!24 = !DILocalVariable(name: "b", scope: !18, file: !5, line: 11, type: !10)
!25 = !DILocation(line: 11, column: 12, scope: !18)
!26 = !DILocalVariable(name: "c", scope: !18, file: !5, line: 11, type: !10)
!27 = !DILocation(line: 11, column: 15, scope: !18)
!28 = !DILocalVariable(name: "p", scope: !18, file: !5, line: 12, type: !9)
!29 = !DILocation(line: 12, column: 10, scope: !18)
!30 = !DILocalVariable(name: "x", scope: !18, file: !5, line: 13, type: !3)
!31 = !DILocation(line: 13, column: 15, scope: !18)
!32 = !DILocalVariable(name: "q", scope: !18, file: !5, line: 14, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!34 = !DILocation(line: 14, column: 16, scope: !18)
!35 = !DILocation(line: 16, column: 21, scope: !18)
!36 = !DILocation(line: 16, column: 9, scope: !18)
!37 = !DILocation(line: 16, column: 7, scope: !18)
!38 = !DILocation(line: 17, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !18, file: !5, line: 17, column: 9)
!40 = !DILocation(line: 17, column: 9, scope: !18)
!41 = !DILocation(line: 18, column: 9, scope: !39)
!42 = !DILocation(line: 18, column: 12, scope: !39)
!43 = !DILocation(line: 18, column: 15, scope: !39)
!44 = !DILocation(line: 20, column: 9, scope: !39)
!45 = !DILocation(line: 20, column: 12, scope: !39)
!46 = !DILocation(line: 20, column: 15, scope: !39)
!47 = !DILocation(line: 21, column: 9, scope: !18)
!48 = !DILocation(line: 21, column: 12, scope: !18)
!49 = !DILocation(line: 21, column: 7, scope: !18)
!50 = !DILocation(line: 22, column: 10, scope: !18)
!51 = !DILocation(line: 22, column: 5, scope: !18)
!52 = !DILocation(line: 24, column: 22, scope: !18)
!53 = !DILocation(line: 24, column: 10, scope: !18)
!54 = !DILocation(line: 24, column: 6, scope: !18)
!55 = !DILocation(line: 24, column: 8, scope: !18)
!56 = !DILocation(line: 25, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !18, file: !5, line: 25, column: 9)
!58 = !DILocation(line: 25, column: 9, scope: !18)
!59 = !DILocation(line: 26, column: 11, scope: !57)
!60 = !DILocation(line: 26, column: 10, scope: !57)
!61 = !DILocation(line: 26, column: 15, scope: !57)
!62 = !DILocation(line: 26, column: 18, scope: !57)
!63 = !DILocation(line: 26, column: 9, scope: !57)
!64 = !DILocation(line: 28, column: 11, scope: !57)
!65 = !DILocation(line: 28, column: 10, scope: !57)
!66 = !DILocation(line: 28, column: 15, scope: !57)
!67 = !DILocation(line: 28, column: 18, scope: !57)
!68 = !DILocation(line: 29, column: 11, scope: !18)
!69 = !DILocation(line: 29, column: 10, scope: !18)
!70 = !DILocation(line: 29, column: 15, scope: !18)
!71 = !DILocation(line: 29, column: 7, scope: !18)
!72 = !DILocation(line: 31, column: 10, scope: !18)
!73 = !DILocation(line: 31, column: 5, scope: !18)
!74 = !DILocation(line: 32, column: 5, scope: !18)
