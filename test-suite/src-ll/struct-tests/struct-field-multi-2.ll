; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-field-multi-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-field-multi-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, %struct.MyStruct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.MyStruct, align 8
  %6 = alloca %struct.MyStruct, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %5, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %6, metadata !29, metadata !DIExpression()), !dbg !30
  %7 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0, !dbg !31
  store i32* %2, i32** %7, align 8, !dbg !31
  %8 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 1, !dbg !31
  store %struct.MyStruct* %5, %struct.MyStruct** %8, align 8, !dbg !31
  %9 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %5, i32 0, i32 0, !dbg !32
  store i32* %3, i32** %9, align 8, !dbg !33
  %10 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 1, !dbg !34
  %11 = load %struct.MyStruct*, %struct.MyStruct** %10, align 8, !dbg !34
  %12 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %11, i32 0, i32 0, !dbg !35
  %13 = load i32*, i32** %12, align 8, !dbg !35
  store i32* %13, i32** %4, align 8, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-field-multi-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-field-multi-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 15, type: !12)
!15 = !DILocation(line: 15, column: 6, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 15, type: !12)
!17 = !DILocation(line: 15, column: 9, scope: !8)
!18 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 16, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DILocation(line: 16, column: 7, scope: !8)
!21 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 17, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "MyStruct", file: !9, line: 11, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !9, line: 7, size: 128, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !23, file: !9, line: 9, baseType: !19, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !23, file: !9, line: 10, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!28 = !DILocation(line: 17, column: 11, scope: !8)
!29 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 18, type: !22)
!30 = !DILocation(line: 18, column: 11, scope: !8)
!31 = !DILocation(line: 18, column: 15, scope: !8)
!32 = !DILocation(line: 20, column: 4, scope: !8)
!33 = !DILocation(line: 20, column: 7, scope: !8)
!34 = !DILocation(line: 21, column: 8, scope: !8)
!35 = !DILocation(line: 21, column: 12, scope: !8)
!36 = !DILocation(line: 21, column: 4, scope: !8)
!37 = !DILocation(line: 23, column: 2, scope: !8)
