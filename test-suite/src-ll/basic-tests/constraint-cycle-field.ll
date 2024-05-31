; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\constraint-cycle-field.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\constraint-cycle-field.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, %struct.MyStruct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MyStruct*, align 8
  %3 = alloca %struct.MyStruct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MyStruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %2, metadata !21, metadata !DIExpression()), !dbg !22
  %7 = call i8* @malloc(i64 noundef 16), !dbg !23
  %8 = bitcast i8* %7 to %struct.MyStruct*, !dbg !24
  store %struct.MyStruct* %8, %struct.MyStruct** %2, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32** %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 10, i32* %5, align 4, !dbg !30
  br label %9, !dbg !31

9:                                                ; preds = %12, %0
  %10 = load i32, i32* %5, align 4, !dbg !32
  %11 = icmp ne i32 %10, 0, !dbg !31
  br i1 %11, label %12, label %26, !dbg !31

12:                                               ; preds = %9
  %13 = call i8* @malloc(i64 noundef 16), !dbg !33
  %14 = bitcast i8* %13 to %struct.MyStruct*, !dbg !35
  %15 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !36
  %16 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %15, i32 0, i32 1, !dbg !37
  store %struct.MyStruct* %14, %struct.MyStruct** %16, align 8, !dbg !38
  %17 = call i8* @malloc(i64 noundef 4), !dbg !39
  %18 = bitcast i8* %17 to i32*, !dbg !40
  %19 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !41
  %20 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %19, i32 0, i32 1, !dbg !42
  %21 = load %struct.MyStruct*, %struct.MyStruct** %20, align 8, !dbg !42
  %22 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %21, i32 0, i32 0, !dbg !43
  store i32* %18, i32** %22, align 8, !dbg !44
  %23 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !45
  %24 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %23, i32 0, i32 1, !dbg !46
  %25 = load %struct.MyStruct*, %struct.MyStruct** %24, align 8, !dbg !46
  store %struct.MyStruct* %25, %struct.MyStruct** %2, align 8, !dbg !47
  br label %9, !dbg !31, !llvm.loop !48

26:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %6, metadata !51, metadata !DIExpression()), !dbg !52
  %27 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !53
  store %struct.MyStruct* %27, %struct.MyStruct** %6, align 8, !dbg !52
  %28 = load %struct.MyStruct*, %struct.MyStruct** %6, align 8, !dbg !54
  %29 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %28, i32 0, i32 1, !dbg !55
  %30 = load %struct.MyStruct*, %struct.MyStruct** %29, align 8, !dbg !55
  store %struct.MyStruct* %30, %struct.MyStruct** %3, align 8, !dbg !56
  %31 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !57
  %32 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %31, i32 0, i32 1, !dbg !58
  %33 = load %struct.MyStruct*, %struct.MyStruct** %32, align 8, !dbg !58
  %34 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %33, i32 0, i32 1, !dbg !59
  %35 = load %struct.MyStruct*, %struct.MyStruct** %34, align 8, !dbg !59
  store %struct.MyStruct* %35, %struct.MyStruct** %3, align 8, !dbg !60
  %36 = load %struct.MyStruct*, %struct.MyStruct** %6, align 8, !dbg !61
  %37 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %36, i32 0, i32 0, !dbg !62
  %38 = load i32*, i32** %37, align 8, !dbg !62
  store i32* %38, i32** %4, align 8, !dbg !63
  %39 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !64
  %40 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %39, i32 0, i32 1, !dbg !65
  %41 = load %struct.MyStruct*, %struct.MyStruct** %40, align 8, !dbg !65
  %42 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %41, i32 0, i32 0, !dbg !66
  %43 = load i32*, i32** %42, align 8, !dbg !66
  store i32* %43, i32** %4, align 8, !dbg !67
  ret i32 0, !dbg !68
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/constraint-cycle-field.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !5, line: 9, size: 128, elements: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/constraint-cycle-field.c", directory: "")
!6 = !{!7, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !4, file: !5, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4, file: !5, line: 12, baseType: !3, size: 64, offset: 64)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!17 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 15, type: !18, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!9}
!20 = !{}
!21 = !DILocalVariable(name: "p", scope: !17, file: !5, line: 17, type: !3)
!22 = !DILocation(line: 17, column: 19, scope: !17)
!23 = !DILocation(line: 17, column: 42, scope: !17)
!24 = !DILocation(line: 17, column: 23, scope: !17)
!25 = !DILocalVariable(name: "r", scope: !17, file: !5, line: 18, type: !3)
!26 = !DILocation(line: 18, column: 19, scope: !17)
!27 = !DILocalVariable(name: "t", scope: !17, file: !5, line: 19, type: !8)
!28 = !DILocation(line: 19, column: 7, scope: !17)
!29 = !DILocalVariable(name: "num", scope: !17, file: !5, line: 21, type: !9)
!30 = !DILocation(line: 21, column: 6, scope: !17)
!31 = !DILocation(line: 22, column: 2, scope: !17)
!32 = !DILocation(line: 22, column: 9, scope: !17)
!33 = !DILocation(line: 24, column: 32, scope: !34)
!34 = distinct !DILexicalBlock(scope: !17, file: !5, line: 23, column: 2)
!35 = !DILocation(line: 24, column: 13, scope: !34)
!36 = !DILocation(line: 24, column: 3, scope: !34)
!37 = !DILocation(line: 24, column: 6, scope: !34)
!38 = !DILocation(line: 24, column: 11, scope: !34)
!39 = !DILocation(line: 25, column: 24, scope: !34)
!40 = !DILocation(line: 25, column: 17, scope: !34)
!41 = !DILocation(line: 25, column: 3, scope: !34)
!42 = !DILocation(line: 25, column: 6, scope: !34)
!43 = !DILocation(line: 25, column: 12, scope: !34)
!44 = !DILocation(line: 25, column: 15, scope: !34)
!45 = !DILocation(line: 26, column: 7, scope: !34)
!46 = !DILocation(line: 26, column: 10, scope: !34)
!47 = !DILocation(line: 26, column: 5, scope: !34)
!48 = distinct !{!48, !31, !49, !50}
!49 = !DILocation(line: 27, column: 2, scope: !17)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !DILocalVariable(name: "q", scope: !17, file: !5, line: 28, type: !3)
!52 = !DILocation(line: 28, column: 19, scope: !17)
!53 = !DILocation(line: 28, column: 23, scope: !17)
!54 = !DILocation(line: 30, column: 6, scope: !17)
!55 = !DILocation(line: 30, column: 9, scope: !17)
!56 = !DILocation(line: 30, column: 4, scope: !17)
!57 = !DILocation(line: 31, column: 6, scope: !17)
!58 = !DILocation(line: 31, column: 9, scope: !17)
!59 = !DILocation(line: 31, column: 15, scope: !17)
!60 = !DILocation(line: 31, column: 4, scope: !17)
!61 = !DILocation(line: 32, column: 6, scope: !17)
!62 = !DILocation(line: 32, column: 9, scope: !17)
!63 = !DILocation(line: 32, column: 4, scope: !17)
!64 = !DILocation(line: 33, column: 6, scope: !17)
!65 = !DILocation(line: 33, column: 9, scope: !17)
!66 = !DILocation(line: 33, column: 15, scope: !17)
!67 = !DILocation(line: 33, column: 4, scope: !17)
!68 = !DILocation(line: 35, column: 2, scope: !17)
