; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.agg = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.agg, align 8
  %3 = alloca %struct.agg, align 8
  %4 = alloca %struct.agg*, align 8
  %5 = alloca %struct.agg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.agg* %2, metadata !14, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.agg* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata %struct.agg** %4, metadata !23, metadata !DIExpression()), !dbg !25
  store %struct.agg* %2, %struct.agg** %4, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata %struct.agg** %5, metadata !26, metadata !DIExpression()), !dbg !27
  store %struct.agg* %3, %struct.agg** %5, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32** %7, metadata !30, metadata !DIExpression()), !dbg !31
  %8 = load %struct.agg*, %struct.agg** %4, align 8, !dbg !32
  %9 = getelementptr inbounds %struct.agg, %struct.agg* %8, i32 0, i32 0, !dbg !33
  store i32* %6, i32** %9, align 8, !dbg !34
  %10 = load %struct.agg*, %struct.agg** %4, align 8, !dbg !35
  %11 = getelementptr inbounds %struct.agg, %struct.agg* %10, i32 0, i32 0, !dbg !36
  %12 = load i32*, i32** %11, align 8, !dbg !36
  %13 = load %struct.agg*, %struct.agg** %5, align 8, !dbg !37
  %14 = getelementptr inbounds %struct.agg, %struct.agg* %13, i32 0, i32 0, !dbg !38
  store i32* %12, i32** %14, align 8, !dbg !39
  %15 = load %struct.agg*, %struct.agg** %5, align 8, !dbg !40
  %16 = getelementptr inbounds %struct.agg, %struct.agg* %15, i32 0, i32 0, !dbg !41
  %17 = load i32*, i32** %16, align 8, !dbg !41
  store i32* %17, i32** %7, align 8, !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !10, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a1", scope: !8, file: !9, line: 8, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "agg", file: !9, line: 4, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agg", file: !9, line: 1, size: 64, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !16, file: !9, line: 3, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DILocation(line: 8, column: 9, scope: !8)
!21 = !DILocalVariable(name: "a2", scope: !8, file: !9, line: 8, type: !15)
!22 = !DILocation(line: 8, column: 13, scope: !8)
!23 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 9, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!25 = !DILocation(line: 9, column: 10, scope: !8)
!26 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 10, type: !24)
!27 = !DILocation(line: 10, column: 10, scope: !8)
!28 = !DILocalVariable(name: "obj", scope: !8, file: !9, line: 11, type: !12)
!29 = !DILocation(line: 11, column: 9, scope: !8)
!30 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 11, type: !19)
!31 = !DILocation(line: 11, column: 15, scope: !8)
!32 = !DILocation(line: 13, column: 5, scope: !8)
!33 = !DILocation(line: 13, column: 8, scope: !8)
!34 = !DILocation(line: 13, column: 10, scope: !8)
!35 = !DILocation(line: 14, column: 12, scope: !8)
!36 = !DILocation(line: 14, column: 15, scope: !8)
!37 = !DILocation(line: 14, column: 5, scope: !8)
!38 = !DILocation(line: 14, column: 8, scope: !8)
!39 = !DILocation(line: 14, column: 10, scope: !8)
!40 = !DILocation(line: 15, column: 9, scope: !8)
!41 = !DILocation(line: 15, column: 12, scope: !8)
!42 = !DILocation(line: 15, column: 7, scope: !8)
!43 = !DILocation(line: 17, column: 5, scope: !8)
