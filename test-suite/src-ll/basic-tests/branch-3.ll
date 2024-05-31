; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\branch-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\branch-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32***, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32** %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32** %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32** %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %7, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32**** %8, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32*** %9, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32** %10, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32** %11, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %12, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %13, metadata !39, metadata !DIExpression()), !dbg !40
  store i32*** %9, i32**** %8, align 8, !dbg !41
  store i32** %10, i32*** %9, align 8, !dbg !42
  %14 = load i32***, i32**** %8, align 8, !dbg !43
  store i32** %11, i32*** %14, align 8, !dbg !44
  store i32* %12, i32** %10, align 8, !dbg !45
  store i32* %13, i32** %11, align 8, !dbg !46
  %15 = load i32***, i32**** %8, align 8, !dbg !47
  %16 = load i32**, i32*** %15, align 8, !dbg !48
  %17 = load i32*, i32** %16, align 8, !dbg !49
  store i32* %17, i32** %10, align 8, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/branch-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/branch-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 3, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!16 = !DILocation(line: 3, column: 10, scope: !8)
!17 = !DILocalVariable(name: "s", scope: !8, file: !9, line: 3, type: !15)
!18 = !DILocation(line: 3, column: 14, scope: !8)
!19 = !DILocalVariable(name: "r", scope: !8, file: !9, line: 3, type: !15)
!20 = !DILocation(line: 3, column: 18, scope: !8)
!21 = !DILocalVariable(name: "w", scope: !8, file: !9, line: 3, type: !15)
!22 = !DILocation(line: 3, column: 22, scope: !8)
!23 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 3, type: !15)
!24 = !DILocation(line: 3, column: 26, scope: !8)
!25 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 3, type: !15)
!26 = !DILocation(line: 3, column: 30, scope: !8)
!27 = !DILocalVariable(name: "m", scope: !8, file: !9, line: 4, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!30 = !DILocation(line: 4, column: 12, scope: !8)
!31 = !DILocalVariable(name: "n", scope: !8, file: !9, line: 4, type: !29)
!32 = !DILocation(line: 4, column: 17, scope: !8)
!33 = !DILocalVariable(name: "z", scope: !8, file: !9, line: 4, type: !15)
!34 = !DILocation(line: 4, column: 21, scope: !8)
!35 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 4, type: !15)
!36 = !DILocation(line: 4, column: 25, scope: !8)
!37 = !DILocalVariable(name: "z1", scope: !8, file: !9, line: 4, type: !12)
!38 = !DILocation(line: 4, column: 28, scope: !8)
!39 = !DILocalVariable(name: "y1", scope: !8, file: !9, line: 4, type: !12)
!40 = !DILocation(line: 4, column: 32, scope: !8)
!41 = !DILocation(line: 6, column: 7, scope: !8)
!42 = !DILocation(line: 7, column: 7, scope: !8)
!43 = !DILocation(line: 8, column: 6, scope: !8)
!44 = !DILocation(line: 8, column: 8, scope: !8)
!45 = !DILocation(line: 9, column: 7, scope: !8)
!46 = !DILocation(line: 10, column: 7, scope: !8)
!47 = !DILocation(line: 11, column: 11, scope: !8)
!48 = !DILocation(line: 11, column: 10, scope: !8)
!49 = !DILocation(line: 11, column: 9, scope: !8)
!50 = !DILocation(line: 11, column: 7, scope: !8)
!51 = !DILocation(line: 13, column: 5, scope: !8)
