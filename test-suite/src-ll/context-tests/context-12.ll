; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-12.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-12.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@obj = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !13 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !19, metadata !DIExpression()), !dbg !20
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !21, metadata !DIExpression()), !dbg !22
  %5 = load i32**, i32*** %3, align 8, !dbg !23
  store i32* @obj, i32** %5, align 8, !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32** %4, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32** %5, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %7, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %8, metadata !41, metadata !DIExpression()), !dbg !42
  store i32** %4, i32*** %2, align 8, !dbg !43
  store i32** %5, i32*** %3, align 8, !dbg !44
  %9 = load i32**, i32*** %2, align 8, !dbg !45
  %10 = load i32**, i32*** %3, align 8, !dbg !46
  call void @foo(i32** noundef %9, i32** noundef %10), !dbg !47
  store i32** %6, i32*** %2, align 8, !dbg !48
  %11 = load i32**, i32*** %2, align 8, !dbg !49
  %12 = load i32**, i32*** %3, align 8, !dbg !50
  call void @foo(i32** noundef %11, i32** noundef %12), !dbg !51
  ret i32 0, !dbg !52
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-12.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-12.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{}
!19 = !DILocalVariable(name: "p", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!20 = !DILocation(line: 3, column: 16, scope: !13)
!21 = !DILocalVariable(name: "q", arg: 2, scope: !13, file: !5, line: 3, type: !16)
!22 = !DILocation(line: 3, column: 25, scope: !13)
!23 = !DILocation(line: 5, column: 3, scope: !13)
!24 = !DILocation(line: 5, column: 5, scope: !13)
!25 = !DILocation(line: 6, column: 1, scope: !13)
!26 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 8, type: !27, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!27 = !DISubroutineType(types: !28)
!28 = !{!6}
!29 = !DILocalVariable(name: "x", scope: !26, file: !5, line: 10, type: !16)
!30 = !DILocation(line: 10, column: 8, scope: !26)
!31 = !DILocalVariable(name: "y", scope: !26, file: !5, line: 10, type: !16)
!32 = !DILocation(line: 10, column: 13, scope: !26)
!33 = !DILocalVariable(name: "a", scope: !26, file: !5, line: 11, type: !17)
!34 = !DILocation(line: 11, column: 7, scope: !26)
!35 = !DILocalVariable(name: "b", scope: !26, file: !5, line: 11, type: !17)
!36 = !DILocation(line: 11, column: 11, scope: !26)
!37 = !DILocalVariable(name: "c", scope: !26, file: !5, line: 11, type: !17)
!38 = !DILocation(line: 11, column: 15, scope: !26)
!39 = !DILocalVariable(name: "d", scope: !26, file: !5, line: 11, type: !17)
!40 = !DILocation(line: 11, column: 19, scope: !26)
!41 = !DILocalVariable(name: "e", scope: !26, file: !5, line: 11, type: !17)
!42 = !DILocation(line: 11, column: 23, scope: !26)
!43 = !DILocation(line: 13, column: 4, scope: !26)
!44 = !DILocation(line: 14, column: 4, scope: !26)
!45 = !DILocation(line: 15, column: 6, scope: !26)
!46 = !DILocation(line: 15, column: 9, scope: !26)
!47 = !DILocation(line: 15, column: 2, scope: !26)
!48 = !DILocation(line: 16, column: 4, scope: !26)
!49 = !DILocation(line: 17, column: 6, scope: !26)
!50 = !DILocation(line: 17, column: 9, scope: !26)
!51 = !DILocation(line: 17, column: 2, scope: !26)
!52 = !DILocation(line: 19, column: 2, scope: !26)
