; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-simple.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-simple.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.s = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  %3 = alloca %struct.s, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.s* %2, metadata !14, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.s* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32** %6, metadata !27, metadata !DIExpression()), !dbg !28
  %7 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0, !dbg !29
  store i32* %4, i32** %7, align 8, !dbg !30
  %8 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0, !dbg !31
  %9 = load i32*, i32** %8, align 8, !dbg !31
  %10 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0, !dbg !32
  store i32* %9, i32** %10, align 8, !dbg !33
  %11 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0, !dbg !34
  %12 = load i32*, i32** %11, align 8, !dbg !34
  store i32* %12, i32** %6, align 8, !dbg !35
  ret i32 0, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-simple.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-simple.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "s1", scope: !8, file: !9, line: 15, type: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s", file: !9, line: 7, size: 128, elements: !16)
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !15, file: !9, line: 9, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !9, line: 10, baseType: !12, size: 32, offset: 64)
!20 = !DILocation(line: 15, column: 11, scope: !8)
!21 = !DILocalVariable(name: "s2", scope: !8, file: !9, line: 15, type: !15)
!22 = !DILocation(line: 15, column: 15, scope: !8)
!23 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 16, type: !12)
!24 = !DILocation(line: 16, column: 6, scope: !8)
!25 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 16, type: !12)
!26 = !DILocation(line: 16, column: 9, scope: !8)
!27 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 17, type: !18)
!28 = !DILocation(line: 17, column: 7, scope: !8)
!29 = !DILocation(line: 19, column: 5, scope: !8)
!30 = !DILocation(line: 19, column: 7, scope: !8)
!31 = !DILocation(line: 20, column: 12, scope: !8)
!32 = !DILocation(line: 20, column: 5, scope: !8)
!33 = !DILocation(line: 20, column: 7, scope: !8)
!34 = !DILocation(line: 21, column: 9, scope: !8)
!35 = !DILocation(line: 21, column: 4, scope: !8)
!36 = !DILocation(line: 23, column: 2, scope: !8)
