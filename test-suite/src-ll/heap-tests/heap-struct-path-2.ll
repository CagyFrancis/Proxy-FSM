; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-struct-path-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-struct-path-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mystruct, align 8
  %5 = alloca %struct.mystruct, align 8
  %6 = alloca %struct.mystruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %3, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata %struct.mystruct* %4, metadata !20, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.mystruct* %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct.mystruct** %6, metadata !29, metadata !DIExpression()), !dbg !31
  store %struct.mystruct* %4, %struct.mystruct** %6, align 8, !dbg !31
  %7 = load i32, i32* %2, align 4, !dbg !32
  %8 = icmp ne i32 %7, 0, !dbg !32
  br i1 %8, label %9, label %13, !dbg !34

9:                                                ; preds = %0
  %10 = call i8* @malloc(i64 noundef 4), !dbg !35
  %11 = bitcast i8* %10 to i32*, !dbg !36
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 0, !dbg !37
  store i32* %11, i32** %12, align 8, !dbg !38
  br label %17, !dbg !39

13:                                               ; preds = %0
  %14 = call i8* @malloc(i64 noundef 4), !dbg !40
  %15 = bitcast i8* %14 to i32*, !dbg !41
  %16 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 0, !dbg !42
  store i32* %15, i32** %16, align 8, !dbg !43
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 0, !dbg !44
  %19 = load i32*, i32** %18, align 8, !dbg !44
  %20 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 1, !dbg !45
  store i32* %19, i32** %20, align 8, !dbg !46
  %21 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 1, !dbg !47
  %22 = load i32*, i32** %21, align 8, !dbg !47
  store i32* %22, i32** %3, align 8, !dbg !48
  %23 = load i32*, i32** %3, align 8, !dbg !49
  %24 = bitcast i32* %23 to i8*, !dbg !49
  call void @free(i8* noundef %24), !dbg !50
  %25 = load i32, i32* %2, align 4, !dbg !51
  %26 = icmp ne i32 %25, 0, !dbg !51
  br i1 %26, label %27, label %32, !dbg !53

27:                                               ; preds = %17
  %28 = call i8* @malloc(i64 noundef 4), !dbg !54
  %29 = bitcast i8* %28 to i32*, !dbg !55
  %30 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !56
  %31 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %30, i32 0, i32 0, !dbg !57
  store i32* %29, i32** %31, align 8, !dbg !58
  br label %37, !dbg !59

32:                                               ; preds = %17
  %33 = call i8* @malloc(i64 noundef 4), !dbg !60
  %34 = bitcast i8* %33 to i32*, !dbg !61
  %35 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !62
  %36 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %35, i32 0, i32 0, !dbg !63
  store i32* %34, i32** %36, align 8, !dbg !64
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !65
  %39 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %38, i32 0, i32 0, !dbg !66
  %40 = load i32*, i32** %39, align 8, !dbg !66
  %41 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 1, !dbg !67
  store i32* %40, i32** %41, align 8, !dbg !68
  %42 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 1, !dbg !69
  %43 = load i32*, i32** %42, align 8, !dbg !69
  store i32* %43, i32** %3, align 8, !dbg !70
  %44 = load i32*, i32** %3, align 8, !dbg !71
  %45 = bitcast i32* %44 to i8*, !dbg !71
  call void @free(i8* noundef %45), !dbg !72
  ret i32 0, !dbg !73
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-struct-path-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 9, type: !13, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-struct-path-2.c", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{!4}
!15 = !{}
!16 = !DILocalVariable(name: "a", scope: !11, file: !12, line: 11, type: !4)
!17 = !DILocation(line: 11, column: 9, scope: !11)
!18 = !DILocalVariable(name: "p", scope: !11, file: !12, line: 12, type: !3)
!19 = !DILocation(line: 12, column: 10, scope: !11)
!20 = !DILocalVariable(name: "x", scope: !11, file: !12, line: 13, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !12, line: 7, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !12, line: 3, size: 128, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !22, file: !12, line: 5, baseType: !3, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !22, file: !12, line: 6, baseType: !3, size: 64, offset: 64)
!26 = !DILocation(line: 13, column: 14, scope: !11)
!27 = !DILocalVariable(name: "y", scope: !11, file: !12, line: 13, type: !21)
!28 = !DILocation(line: 13, column: 17, scope: !11)
!29 = !DILocalVariable(name: "q", scope: !11, file: !12, line: 14, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!31 = !DILocation(line: 14, column: 15, scope: !11)
!32 = !DILocation(line: 16, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !11, file: !12, line: 16, column: 9)
!34 = !DILocation(line: 16, column: 9, scope: !11)
!35 = !DILocation(line: 17, column: 23, scope: !33)
!36 = !DILocation(line: 17, column: 16, scope: !33)
!37 = !DILocation(line: 17, column: 11, scope: !33)
!38 = !DILocation(line: 17, column: 14, scope: !33)
!39 = !DILocation(line: 17, column: 9, scope: !33)
!40 = !DILocation(line: 19, column: 23, scope: !33)
!41 = !DILocation(line: 19, column: 16, scope: !33)
!42 = !DILocation(line: 19, column: 11, scope: !33)
!43 = !DILocation(line: 19, column: 14, scope: !33)
!44 = !DILocation(line: 20, column: 14, scope: !11)
!45 = !DILocation(line: 20, column: 7, scope: !11)
!46 = !DILocation(line: 20, column: 10, scope: !11)
!47 = !DILocation(line: 21, column: 11, scope: !11)
!48 = !DILocation(line: 21, column: 7, scope: !11)
!49 = !DILocation(line: 22, column: 10, scope: !11)
!50 = !DILocation(line: 22, column: 5, scope: !11)
!51 = !DILocation(line: 24, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !11, file: !12, line: 24, column: 9)
!53 = !DILocation(line: 24, column: 9, scope: !11)
!54 = !DILocation(line: 25, column: 26, scope: !52)
!55 = !DILocation(line: 25, column: 19, scope: !52)
!56 = !DILocation(line: 25, column: 11, scope: !52)
!57 = !DILocation(line: 25, column: 14, scope: !52)
!58 = !DILocation(line: 25, column: 17, scope: !52)
!59 = !DILocation(line: 25, column: 9, scope: !52)
!60 = !DILocation(line: 27, column: 26, scope: !52)
!61 = !DILocation(line: 27, column: 19, scope: !52)
!62 = !DILocation(line: 27, column: 11, scope: !52)
!63 = !DILocation(line: 27, column: 14, scope: !52)
!64 = !DILocation(line: 27, column: 17, scope: !52)
!65 = !DILocation(line: 28, column: 14, scope: !11)
!66 = !DILocation(line: 28, column: 17, scope: !11)
!67 = !DILocation(line: 28, column: 7, scope: !11)
!68 = !DILocation(line: 28, column: 10, scope: !11)
!69 = !DILocation(line: 29, column: 11, scope: !11)
!70 = !DILocation(line: 29, column: 7, scope: !11)
!71 = !DILocation(line: 30, column: 10, scope: !11)
!72 = !DILocation(line: 30, column: 5, scope: !11)
!73 = !DILocation(line: 32, column: 5, scope: !11)
