; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\array-tests\array-struct-context-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests\\array-struct-context-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.MyStruct* @foo(%struct.MyStruct* noundef %0) #0 !dbg !8 {
  %2 = alloca %struct.MyStruct*, align 8
  store %struct.MyStruct* %0, %struct.MyStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !23
  ret %struct.MyStruct* %3, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.MyStruct], align 16
  %3 = alloca [2 x %struct.MyStruct], align 16
  %4 = alloca %struct.MyStruct*, align 8
  %5 = alloca %struct.MyStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2 x %struct.MyStruct]* %2, metadata !28, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata [2 x %struct.MyStruct]* %3, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %5, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %6, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %6, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %7, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %8, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32** %9, metadata !45, metadata !DIExpression()), !dbg !46
  %10 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !47
  %11 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %10, i32 0, i32 0, !dbg !48
  store i32* %6, i32** %11, align 16, !dbg !49
  %12 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 1, !dbg !50
  %13 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %12, i32 0, i32 1, !dbg !51
  store i32* %7, i32** %13, align 8, !dbg !52
  %14 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %3, i64 0, i64 0, !dbg !53
  %15 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %14, i32 0, i32 0, !dbg !54
  store i32* %7, i32** %15, align 16, !dbg !55
  %16 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %3, i64 0, i64 1, !dbg !56
  %17 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %16, i32 0, i32 1, !dbg !57
  store i32* %8, i32** %17, align 8, !dbg !58
  %18 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !59
  %19 = call %struct.MyStruct* @foo(%struct.MyStruct* noundef %18), !dbg !60
  store %struct.MyStruct* %19, %struct.MyStruct** %4, align 8, !dbg !61
  %20 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %3, i64 0, i64 0, !dbg !62
  %21 = call %struct.MyStruct* @foo(%struct.MyStruct* noundef %20), !dbg !63
  store %struct.MyStruct* %21, %struct.MyStruct** %5, align 8, !dbg !64
  %22 = load %struct.MyStruct*, %struct.MyStruct** %4, align 8, !dbg !65
  %23 = load i32, i32* %6, align 4, !dbg !66
  %24 = sext i32 %23 to i64, !dbg !65
  %25 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %22, i64 %24, !dbg !65
  %26 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %25, i32 0, i32 0, !dbg !67
  %27 = load i32*, i32** %26, align 8, !dbg !67
  store i32* %27, i32** %9, align 8, !dbg !68
  %28 = load %struct.MyStruct*, %struct.MyStruct** %5, align 8, !dbg !69
  %29 = load i32, i32* %6, align 4, !dbg !70
  %30 = add nsw i32 %29, 1, !dbg !71
  %31 = sext i32 %30 to i64, !dbg !69
  %32 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %28, i64 %31, !dbg !69
  %33 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %32, i32 0, i32 1, !dbg !72
  %34 = load i32*, i32** %33, align 8, !dbg !72
  store i32* %34, i32** %9, align 8, !dbg !73
  ret i32 0, !dbg !74
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests/array-struct-context-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/array-tests/array-struct-context-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "MyStruct", file: !9, line: 7, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !9, line: 3, size: 128, elements: !15)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !14, file: !9, line: 5, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !14, file: !9, line: 6, baseType: !17, size: 64, offset: 64)
!20 = !{}
!21 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 9, type: !12)
!22 = !DILocation(line: 9, column: 25, scope: !8)
!23 = !DILocation(line: 11, column: 9, scope: !8)
!24 = !DILocation(line: 11, column: 2, scope: !8)
!25 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 14, type: !26, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!26 = !DISubroutineType(types: !27)
!27 = !{!18}
!28 = !DILocalVariable(name: "x", scope: !25, file: !9, line: 16, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = !DILocation(line: 16, column: 11, scope: !25)
!33 = !DILocalVariable(name: "y", scope: !25, file: !9, line: 16, type: !29)
!34 = !DILocation(line: 16, column: 17, scope: !25)
!35 = !DILocalVariable(name: "r1", scope: !25, file: !9, line: 17, type: !12)
!36 = !DILocation(line: 17, column: 12, scope: !25)
!37 = !DILocalVariable(name: "r2", scope: !25, file: !9, line: 17, type: !12)
!38 = !DILocation(line: 17, column: 17, scope: !25)
!39 = !DILocalVariable(name: "a", scope: !25, file: !9, line: 18, type: !18)
!40 = !DILocation(line: 18, column: 6, scope: !25)
!41 = !DILocalVariable(name: "b", scope: !25, file: !9, line: 18, type: !18)
!42 = !DILocation(line: 18, column: 13, scope: !25)
!43 = !DILocalVariable(name: "c", scope: !25, file: !9, line: 18, type: !18)
!44 = !DILocation(line: 18, column: 16, scope: !25)
!45 = !DILocalVariable(name: "p", scope: !25, file: !9, line: 19, type: !17)
!46 = !DILocation(line: 19, column: 7, scope: !25)
!47 = !DILocation(line: 21, column: 2, scope: !25)
!48 = !DILocation(line: 21, column: 7, scope: !25)
!49 = !DILocation(line: 21, column: 10, scope: !25)
!50 = !DILocation(line: 22, column: 2, scope: !25)
!51 = !DILocation(line: 22, column: 7, scope: !25)
!52 = !DILocation(line: 22, column: 10, scope: !25)
!53 = !DILocation(line: 23, column: 2, scope: !25)
!54 = !DILocation(line: 23, column: 7, scope: !25)
!55 = !DILocation(line: 23, column: 10, scope: !25)
!56 = !DILocation(line: 24, column: 2, scope: !25)
!57 = !DILocation(line: 24, column: 7, scope: !25)
!58 = !DILocation(line: 24, column: 10, scope: !25)
!59 = !DILocation(line: 26, column: 11, scope: !25)
!60 = !DILocation(line: 26, column: 7, scope: !25)
!61 = !DILocation(line: 26, column: 5, scope: !25)
!62 = !DILocation(line: 27, column: 11, scope: !25)
!63 = !DILocation(line: 27, column: 7, scope: !25)
!64 = !DILocation(line: 27, column: 5, scope: !25)
!65 = !DILocation(line: 29, column: 6, scope: !25)
!66 = !DILocation(line: 29, column: 9, scope: !25)
!67 = !DILocation(line: 29, column: 12, scope: !25)
!68 = !DILocation(line: 29, column: 4, scope: !25)
!69 = !DILocation(line: 30, column: 6, scope: !25)
!70 = !DILocation(line: 30, column: 9, scope: !25)
!71 = !DILocation(line: 30, column: 11, scope: !25)
!72 = !DILocation(line: 30, column: 16, scope: !25)
!73 = !DILocation(line: 30, column: 4, scope: !25)
!74 = !DILocation(line: 32, column: 2, scope: !25)
