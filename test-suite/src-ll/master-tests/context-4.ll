; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\context-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\context-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bar(i32* noundef %0) #0 !dbg !8 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32*, i32** %2, align 8, !dbg !17
  ret i32* %3, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32** noundef %0) #0 !dbg !19 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i32**, i32*** %2, align 8, !dbg !25
  %4 = load i32*, i32** %3, align 8, !dbg !26
  %5 = call i32* @bar(i32* noundef %4), !dbg !27
  ret i32* %5, !dbg !28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32**, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32*** %1, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32** %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32** %3, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %4, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %5, metadata !40, metadata !DIExpression()), !dbg !41
  store i32** %2, i32*** %1, align 8, !dbg !42
  store i32* %4, i32** %2, align 8, !dbg !43
  store i32* %5, i32** %3, align 8, !dbg !44
  %6 = load i32**, i32*** %1, align 8, !dbg !45
  %7 = call i32* @foo(i32** noundef %6), !dbg !46
  store i32* %7, i32** %3, align 8, !dbg !47
  ret i32 0, !dbg !48
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/context-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/context-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocation(line: 3, column: 12, scope: !8)
!18 = !DILocation(line: 3, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 6, type: !20, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DISubroutineType(types: !21)
!21 = !{!12, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!23 = !DILocalVariable(name: "p", arg: 1, scope: !19, file: !9, line: 6, type: !22)
!24 = !DILocation(line: 6, column: 16, scope: !19)
!25 = !DILocation(line: 8, column: 17, scope: !19)
!26 = !DILocation(line: 8, column: 16, scope: !19)
!27 = !DILocation(line: 8, column: 12, scope: !19)
!28 = !DILocation(line: 8, column: 5, scope: !19)
!29 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 11, type: !30, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!30 = !DISubroutineType(types: !31)
!31 = !{!13}
!32 = !DILocalVariable(name: "p", scope: !29, file: !9, line: 13, type: !22)
!33 = !DILocation(line: 13, column: 11, scope: !29)
!34 = !DILocalVariable(name: "q", scope: !29, file: !9, line: 13, type: !12)
!35 = !DILocation(line: 13, column: 15, scope: !29)
!36 = !DILocalVariable(name: "r", scope: !29, file: !9, line: 13, type: !12)
!37 = !DILocation(line: 13, column: 19, scope: !29)
!38 = !DILocalVariable(name: "x", scope: !29, file: !9, line: 13, type: !13)
!39 = !DILocation(line: 13, column: 22, scope: !29)
!40 = !DILocalVariable(name: "y", scope: !29, file: !9, line: 13, type: !13)
!41 = !DILocation(line: 13, column: 25, scope: !29)
!42 = !DILocation(line: 14, column: 7, scope: !29)
!43 = !DILocation(line: 15, column: 7, scope: !29)
!44 = !DILocation(line: 16, column: 7, scope: !29)
!45 = !DILocation(line: 18, column: 13, scope: !29)
!46 = !DILocation(line: 18, column: 9, scope: !29)
!47 = !DILocation(line: 18, column: 7, scope: !29)
!48 = !DILocation(line: 19, column: 1, scope: !29)
