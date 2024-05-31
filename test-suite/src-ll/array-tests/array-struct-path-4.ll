; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\array-tests\array-struct-path-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests\\array-struct-path-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.MyStruct], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MyStruct*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2 x %struct.MyStruct]* %2, metadata !14, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %6, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %7, metadata !33, metadata !DIExpression()), !dbg !35
  %9 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !36
  store %struct.MyStruct* %9, %struct.MyStruct** %7, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i32** %8, metadata !37, metadata !DIExpression()), !dbg !38
  %10 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !39
  %11 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %10, i32 0, i32 0, !dbg !40
  store i32* %3, i32** %11, align 16, !dbg !41
  %12 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 1, !dbg !42
  %13 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %12, i32 0, i32 1, !dbg !43
  store i32* %3, i32** %13, align 8, !dbg !44
  %14 = load i32, i32* %5, align 4, !dbg !45
  %15 = icmp ne i32 %14, 0, !dbg !45
  br i1 %15, label %16, label %21, !dbg !47

16:                                               ; preds = %0
  %17 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !48
  %18 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %17, i32 0, i32 0, !dbg !50
  store i32* %4, i32** %18, align 16, !dbg !51
  %19 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 1, !dbg !52
  %20 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %19, i32 0, i32 1, !dbg !53
  store i32* %5, i32** %20, align 8, !dbg !54
  br label %26, !dbg !55

21:                                               ; preds = %0
  %22 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !56
  %23 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %22, i32 0, i32 0, !dbg !58
  store i32* %5, i32** %23, align 16, !dbg !59
  %24 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 1, !dbg !60
  %25 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %24, i32 0, i32 1, !dbg !61
  store i32* %6, i32** %25, align 8, !dbg !62
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.MyStruct*, %struct.MyStruct** %7, align 8, !dbg !63
  %28 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %27, i32 0, i32 0, !dbg !64
  %29 = load i32*, i32** %28, align 8, !dbg !64
  store i32* %29, i32** %8, align 8, !dbg !65
  %30 = load %struct.MyStruct*, %struct.MyStruct** %7, align 8, !dbg !66
  %31 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %30, i64 1, !dbg !67
  %32 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %31, i32 0, i32 1, !dbg !68
  %33 = load i32*, i32** %32, align 8, !dbg !68
  store i32* %33, i32** %8, align 8, !dbg !69
  ret i32 0, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests/array-struct-path-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/array-tests/array-struct-path-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 11, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !22)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "MyStruct", file: !9, line: 7, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !9, line: 3, size: 128, elements: !18)
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !17, file: !9, line: 5, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !17, file: !9, line: 6, baseType: !20, size: 64, offset: 64)
!22 = !{!23}
!23 = !DISubrange(count: 2)
!24 = !DILocation(line: 11, column: 11, scope: !8)
!25 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 12, type: !12)
!26 = !DILocation(line: 12, column: 6, scope: !8)
!27 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 12, type: !12)
!28 = !DILocation(line: 12, column: 9, scope: !8)
!29 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 12, type: !12)
!30 = !DILocation(line: 12, column: 12, scope: !8)
!31 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 12, type: !12)
!32 = !DILocation(line: 12, column: 15, scope: !8)
!33 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 13, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !DILocation(line: 13, column: 12, scope: !8)
!36 = !DILocation(line: 13, column: 16, scope: !8)
!37 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 14, type: !20)
!38 = !DILocation(line: 14, column: 7, scope: !8)
!39 = !DILocation(line: 16, column: 2, scope: !8)
!40 = !DILocation(line: 16, column: 7, scope: !8)
!41 = !DILocation(line: 16, column: 10, scope: !8)
!42 = !DILocation(line: 17, column: 2, scope: !8)
!43 = !DILocation(line: 17, column: 7, scope: !8)
!44 = !DILocation(line: 17, column: 10, scope: !8)
!45 = !DILocation(line: 18, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !8, file: !9, line: 18, column: 6)
!47 = !DILocation(line: 18, column: 6, scope: !8)
!48 = !DILocation(line: 20, column: 3, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !9, line: 19, column: 2)
!50 = !DILocation(line: 20, column: 8, scope: !49)
!51 = !DILocation(line: 20, column: 11, scope: !49)
!52 = !DILocation(line: 21, column: 3, scope: !49)
!53 = !DILocation(line: 21, column: 8, scope: !49)
!54 = !DILocation(line: 21, column: 11, scope: !49)
!55 = !DILocation(line: 22, column: 2, scope: !49)
!56 = !DILocation(line: 25, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !46, file: !9, line: 24, column: 2)
!58 = !DILocation(line: 25, column: 8, scope: !57)
!59 = !DILocation(line: 25, column: 11, scope: !57)
!60 = !DILocation(line: 26, column: 3, scope: !57)
!61 = !DILocation(line: 26, column: 8, scope: !57)
!62 = !DILocation(line: 26, column: 11, scope: !57)
!63 = !DILocation(line: 28, column: 6, scope: !8)
!64 = !DILocation(line: 28, column: 9, scope: !8)
!65 = !DILocation(line: 28, column: 4, scope: !8)
!66 = !DILocation(line: 29, column: 7, scope: !8)
!67 = !DILocation(line: 29, column: 9, scope: !8)
!68 = !DILocation(line: 29, column: 15, scope: !8)
!69 = !DILocation(line: 29, column: 4, scope: !8)
!70 = !DILocation(line: 31, column: 2, scope: !8)
