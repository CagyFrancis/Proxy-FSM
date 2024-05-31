; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.MyStruct, align 8
  %6 = alloca %struct.MyStruct, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %5, metadata !20, metadata !DIExpression()), !dbg !26
  %8 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %5, i32 0, i32 0, !dbg !27
  store i32* %2, i32** %8, align 8, !dbg !27
  %9 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %5, i32 0, i32 1, !dbg !27
  store i32* %3, i32** %9, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %6, metadata !28, metadata !DIExpression()), !dbg !29
  %10 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0, !dbg !30
  store i32* %3, i32** %10, align 8, !dbg !30
  %11 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 1, !dbg !30
  store i32* %4, i32** %11, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i32** %7, metadata !31, metadata !DIExpression()), !dbg !32
  %12 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0, !dbg !33
  %13 = load i32*, i32** %12, align 8, !dbg !33
  store i32* %13, i32** %7, align 8, !dbg !34
  %14 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0, !dbg !35
  store i32* %2, i32** %14, align 8, !dbg !36
  %15 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0, !dbg !37
  %16 = load i32*, i32** %15, align 8, !dbg !37
  store i32* %16, i32** %7, align 8, !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 15, type: !12)
!15 = !DILocation(line: 15, column: 6, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 15, type: !12)
!17 = !DILocation(line: 15, column: 9, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 15, type: !12)
!19 = !DILocation(line: 15, column: 12, scope: !8)
!20 = !DILocalVariable(name: "s1", scope: !8, file: !9, line: 16, type: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !9, line: 7, size: 128, elements: !22)
!22 = !{!23, !25}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !21, file: !9, line: 9, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !21, file: !9, line: 10, baseType: !24, size: 64, offset: 64)
!26 = !DILocation(line: 16, column: 18, scope: !8)
!27 = !DILocation(line: 16, column: 23, scope: !8)
!28 = !DILocalVariable(name: "s2", scope: !8, file: !9, line: 17, type: !21)
!29 = !DILocation(line: 17, column: 18, scope: !8)
!30 = !DILocation(line: 17, column: 23, scope: !8)
!31 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 18, type: !24)
!32 = !DILocation(line: 18, column: 7, scope: !8)
!33 = !DILocation(line: 20, column: 9, scope: !8)
!34 = !DILocation(line: 20, column: 4, scope: !8)
!35 = !DILocation(line: 21, column: 5, scope: !8)
!36 = !DILocation(line: 21, column: 8, scope: !8)
!37 = !DILocation(line: 22, column: 9, scope: !8)
!38 = !DILocation(line: 22, column: 4, scope: !8)
!39 = !DILocation(line: 24, column: 2, scope: !8)
