; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-5.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-5.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@g = dso_local global i32** null, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32* noundef %1) #0 !dbg !15 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !19, metadata !DIExpression()), !dbg !20
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !21, metadata !DIExpression()), !dbg !22
  %5 = load i32**, i32*** %3, align 8, !dbg !23
  store i32** %5, i32*** @g, align 8, !dbg !24
  %6 = load i32*, i32** %4, align 8, !dbg !25
  %7 = load i32**, i32*** @g, align 8, !dbg !26
  store i32* %6, i32** %7, align 8, !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32** %3, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32** %4, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %5, metadata !38, metadata !DIExpression()), !dbg !39
  store i32** %4, i32*** %2, align 8, !dbg !40
  store i32* %5, i32** %3, align 8, !dbg !41
  %6 = load i32**, i32*** %2, align 8, !dbg !42
  %7 = load i32*, i32** %3, align 8, !dbg !43
  call void @foo(i32** noundef %6, i32* noundef %7), !dbg !44
  ret i32 0, !dbg !45
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-5.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-5.c", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!15 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !16, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !6, !7}
!18 = !{}
!19 = !DILocalVariable(name: "p", arg: 1, scope: !15, file: !5, line: 3, type: !6)
!20 = !DILocation(line: 3, column: 16, scope: !15)
!21 = !DILocalVariable(name: "q", arg: 2, scope: !15, file: !5, line: 3, type: !7)
!22 = !DILocation(line: 3, column: 24, scope: !15)
!23 = !DILocation(line: 5, column: 6, scope: !15)
!24 = !DILocation(line: 5, column: 4, scope: !15)
!25 = !DILocation(line: 6, column: 7, scope: !15)
!26 = !DILocation(line: 6, column: 3, scope: !15)
!27 = !DILocation(line: 6, column: 5, scope: !15)
!28 = !DILocation(line: 7, column: 1, scope: !15)
!29 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 9, type: !30, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!30 = !DISubroutineType(types: !31)
!31 = !{!8}
!32 = !DILocalVariable(name: "a", scope: !29, file: !5, line: 11, type: !6)
!33 = !DILocation(line: 11, column: 8, scope: !29)
!34 = !DILocalVariable(name: "b", scope: !29, file: !5, line: 11, type: !7)
!35 = !DILocation(line: 11, column: 12, scope: !29)
!36 = !DILocalVariable(name: "a1", scope: !29, file: !5, line: 11, type: !7)
!37 = !DILocation(line: 11, column: 16, scope: !29)
!38 = !DILocalVariable(name: "b1", scope: !29, file: !5, line: 11, type: !8)
!39 = !DILocation(line: 11, column: 20, scope: !29)
!40 = !DILocation(line: 13, column: 4, scope: !29)
!41 = !DILocation(line: 14, column: 4, scope: !29)
!42 = !DILocation(line: 15, column: 6, scope: !29)
!43 = !DILocation(line: 15, column: 9, scope: !29)
!44 = !DILocation(line: 15, column: 2, scope: !29)
!45 = !DILocation(line: 17, column: 2, scope: !29)
