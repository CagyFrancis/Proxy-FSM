; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\field-ptr-arith-constIdx.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\field-ptr-arith-constIdx.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.s = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !14, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.s* %6, metadata !24, metadata !DIExpression()), !dbg !29
  %7 = getelementptr inbounds %struct.s, %struct.s* %6, i32 0, i32 0, !dbg !30
  store i32* %4, i32** %7, align 8, !dbg !31
  %8 = getelementptr inbounds %struct.s, %struct.s* %6, i32 0, i32 1, !dbg !32
  store i32* %5, i32** %8, align 8, !dbg !33
  %9 = getelementptr inbounds %struct.s, %struct.s* %6, i32 0, i32 0, !dbg !34
  store i32** %9, i32*** %2, align 8, !dbg !35
  %10 = load i32**, i32*** %2, align 8, !dbg !36
  %11 = getelementptr inbounds i32*, i32** %10, i64 1, !dbg !37
  store i32** %11, i32*** %3, align 8, !dbg !38
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
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/field-ptr-arith-constIdx.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/field-ptr-arith-constIdx.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 15, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DILocation(line: 15, column: 8, scope: !8)
!18 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 15, type: !15)
!19 = !DILocation(line: 15, column: 13, scope: !8)
!20 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 16, type: !12)
!21 = !DILocation(line: 16, column: 6, scope: !8)
!22 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 16, type: !12)
!23 = !DILocation(line: 16, column: 9, scope: !8)
!24 = !DILocalVariable(name: "s1", scope: !8, file: !9, line: 17, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s", file: !9, line: 7, size: 128, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !25, file: !9, line: 9, baseType: !16, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !25, file: !9, line: 10, baseType: !16, size: 64, offset: 64)
!29 = !DILocation(line: 17, column: 11, scope: !8)
!30 = !DILocation(line: 19, column: 5, scope: !8)
!31 = !DILocation(line: 19, column: 8, scope: !8)
!32 = !DILocation(line: 20, column: 5, scope: !8)
!33 = !DILocation(line: 20, column: 8, scope: !8)
!34 = !DILocation(line: 22, column: 11, scope: !8)
!35 = !DILocation(line: 22, column: 4, scope: !8)
!36 = !DILocation(line: 23, column: 6, scope: !8)
!37 = !DILocation(line: 23, column: 8, scope: !8)
!38 = !DILocation(line: 23, column: 4, scope: !8)
!39 = !DILocation(line: 25, column: 2, scope: !8)
