; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\anderson-struct.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\anderson-struct.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mystruct, align 8
  %6 = alloca %struct.mystruct, align 8
  %7 = alloca %struct.mystruct, align 8
  %8 = alloca %struct.mystruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.mystruct* %5, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %struct.mystruct* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct.mystruct* %7, metadata !30, metadata !DIExpression()), !dbg !31
  %9 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 0, !dbg !32
  store i32* %2, i32** %9, align 8, !dbg !32
  %10 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !32
  store i32* %3, i32** %10, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata %struct.mystruct** %8, metadata !33, metadata !DIExpression()), !dbg !35
  store %struct.mystruct* %5, %struct.mystruct** %8, align 8, !dbg !35
  %11 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 0, !dbg !36
  store i32* %2, i32** %11, align 8, !dbg !37
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 0, !dbg !38
  %13 = load i32*, i32** %12, align 8, !dbg !38
  %14 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 1, !dbg !39
  store i32* %13, i32** %14, align 8, !dbg !40
  %15 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 1, !dbg !41
  %16 = load i32*, i32** %15, align 8, !dbg !41
  store i32* %16, i32** %4, align 8, !dbg !42
  %17 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !43
  %18 = load i32*, i32** %17, align 8, !dbg !43
  %19 = load %struct.mystruct*, %struct.mystruct** %8, align 8, !dbg !44
  %20 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %19, i32 0, i32 0, !dbg !45
  store i32* %18, i32** %20, align 8, !dbg !46
  %21 = load %struct.mystruct*, %struct.mystruct** %8, align 8, !dbg !47
  %22 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %21, i32 0, i32 0, !dbg !48
  %23 = load i32*, i32** %22, align 8, !dbg !48
  %24 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 1, !dbg !49
  store i32* %23, i32** %24, align 8, !dbg !50
  %25 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %6, i32 0, i32 1, !dbg !51
  %26 = load i32*, i32** %25, align 8, !dbg !51
  store i32* %26, i32** %4, align 8, !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/anderson-struct.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/anderson-struct.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 9, type: !12)
!15 = !DILocation(line: 9, column: 9, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 9, type: !12)
!17 = !DILocation(line: 9, column: 12, scope: !8)
!18 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 10, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DILocation(line: 10, column: 10, scope: !8)
!21 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 11, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !9, line: 5, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !9, line: 1, size: 128, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !23, file: !9, line: 3, baseType: !19, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !23, file: !9, line: 4, baseType: !19, size: 64, offset: 64)
!27 = !DILocation(line: 11, column: 14, scope: !8)
!28 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 11, type: !22)
!29 = !DILocation(line: 11, column: 17, scope: !8)
!30 = !DILocalVariable(name: "z", scope: !8, file: !9, line: 11, type: !22)
!31 = !DILocation(line: 11, column: 20, scope: !8)
!32 = !DILocation(line: 11, column: 24, scope: !8)
!33 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 12, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!35 = !DILocation(line: 12, column: 15, scope: !8)
!36 = !DILocation(line: 14, column: 7, scope: !8)
!37 = !DILocation(line: 14, column: 10, scope: !8)
!38 = !DILocation(line: 15, column: 14, scope: !8)
!39 = !DILocation(line: 15, column: 7, scope: !8)
!40 = !DILocation(line: 15, column: 10, scope: !8)
!41 = !DILocation(line: 16, column: 11, scope: !8)
!42 = !DILocation(line: 16, column: 7, scope: !8)
!43 = !DILocation(line: 18, column: 17, scope: !8)
!44 = !DILocation(line: 18, column: 7, scope: !8)
!45 = !DILocation(line: 18, column: 10, scope: !8)
!46 = !DILocation(line: 18, column: 13, scope: !8)
!47 = !DILocation(line: 19, column: 14, scope: !8)
!48 = !DILocation(line: 19, column: 17, scope: !8)
!49 = !DILocation(line: 19, column: 7, scope: !8)
!50 = !DILocation(line: 19, column: 10, scope: !8)
!51 = !DILocation(line: 20, column: 11, scope: !8)
!52 = !DILocation(line: 20, column: 7, scope: !8)
!53 = !DILocation(line: 22, column: 5, scope: !8)
