; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\anderson-context.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\anderson-context.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !8 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32*, i32** %2, align 8, !dbg !17
  ret i32* %3, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32** %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32** %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32** %6, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* %3, i32** %6, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i32** %7, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32** %8, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32*** %9, metadata !36, metadata !DIExpression()), !dbg !38
  store i32** %4, i32*** %9, align 8, !dbg !38
  store i32* %2, i32** %4, align 8, !dbg !39
  %10 = load i32*, i32** %4, align 8, !dbg !40
  %11 = call i32* @foo(i32* noundef %10), !dbg !41
  store i32* %11, i32** %7, align 8, !dbg !42
  %12 = load i32*, i32** %7, align 8, !dbg !43
  store i32* %12, i32** %5, align 8, !dbg !44
  %13 = load i32*, i32** %6, align 8, !dbg !45
  %14 = load i32**, i32*** %9, align 8, !dbg !46
  store i32* %13, i32** %14, align 8, !dbg !47
  %15 = load i32**, i32*** %9, align 8, !dbg !48
  %16 = load i32*, i32** %15, align 8, !dbg !49
  %17 = call i32* @foo(i32* noundef %16), !dbg !50
  store i32* %17, i32** %8, align 8, !dbg !51
  %18 = load i32**, i32*** %9, align 8, !dbg !52
  %19 = load i32*, i32** %18, align 8, !dbg !53
  store i32* %19, i32** %5, align 8, !dbg !54
  ret i32 0, !dbg !55
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/anderson-context.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/anderson-context.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocation(line: 3, column: 12, scope: !8)
!18 = !DILocation(line: 3, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !20, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DISubroutineType(types: !21)
!21 = !{!13}
!22 = !DILocalVariable(name: "a", scope: !19, file: !9, line: 8, type: !13)
!23 = !DILocation(line: 8, column: 9, scope: !19)
!24 = !DILocalVariable(name: "b", scope: !19, file: !9, line: 8, type: !13)
!25 = !DILocation(line: 8, column: 12, scope: !19)
!26 = !DILocalVariable(name: "x", scope: !19, file: !9, line: 9, type: !12)
!27 = !DILocation(line: 9, column: 10, scope: !19)
!28 = !DILocalVariable(name: "y", scope: !19, file: !9, line: 9, type: !12)
!29 = !DILocation(line: 9, column: 14, scope: !19)
!30 = !DILocalVariable(name: "z", scope: !19, file: !9, line: 9, type: !12)
!31 = !DILocation(line: 9, column: 18, scope: !19)
!32 = !DILocalVariable(name: "r1", scope: !19, file: !9, line: 10, type: !12)
!33 = !DILocation(line: 10, column: 10, scope: !19)
!34 = !DILocalVariable(name: "r2", scope: !19, file: !9, line: 10, type: !12)
!35 = !DILocation(line: 10, column: 15, scope: !19)
!36 = !DILocalVariable(name: "p", scope: !19, file: !9, line: 11, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!38 = !DILocation(line: 11, column: 11, scope: !19)
!39 = !DILocation(line: 13, column: 7, scope: !19)
!40 = !DILocation(line: 14, column: 14, scope: !19)
!41 = !DILocation(line: 14, column: 10, scope: !19)
!42 = !DILocation(line: 14, column: 8, scope: !19)
!43 = !DILocation(line: 15, column: 9, scope: !19)
!44 = !DILocation(line: 15, column: 7, scope: !19)
!45 = !DILocation(line: 17, column: 10, scope: !19)
!46 = !DILocation(line: 17, column: 6, scope: !19)
!47 = !DILocation(line: 17, column: 8, scope: !19)
!48 = !DILocation(line: 18, column: 15, scope: !19)
!49 = !DILocation(line: 18, column: 14, scope: !19)
!50 = !DILocation(line: 18, column: 10, scope: !19)
!51 = !DILocation(line: 18, column: 8, scope: !19)
!52 = !DILocation(line: 19, column: 10, scope: !19)
!53 = !DILocation(line: 19, column: 9, scope: !19)
!54 = !DILocation(line: 19, column: 7, scope: !19)
!55 = !DILocation(line: 21, column: 5, scope: !19)
