; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\main-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\main-1.c"
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
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !19 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32** %3, metadata !22, metadata !DIExpression()), !dbg !23
  %5 = load i32*, i32** %2, align 8, !dbg !24
  %6 = call i32* @bar(i32* noundef %5), !dbg !25
  store i32* %6, i32** %3, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i32** %4, metadata !26, metadata !DIExpression()), !dbg !27
  %7 = load i32*, i32** %3, align 8, !dbg !28
  %8 = call i32* @bar(i32* noundef %7), !dbg !29
  store i32* %8, i32** %4, align 8, !dbg !27
  %9 = load i32*, i32** %4, align 8, !dbg !30
  ret i32* %9, !dbg !31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %4, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %5, metadata !41, metadata !DIExpression()), !dbg !42
  %6 = call i32* @foo(i32* noundef %2), !dbg !43
  store i32* %6, i32** %4, align 8, !dbg !44
  %7 = call i32* @foo(i32* noundef %3), !dbg !45
  store i32* %7, i32** %5, align 8, !dbg !46
  ret i32 0, !dbg !47
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/main-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/main-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "q", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocation(line: 3, column: 12, scope: !8)
!18 = !DILocation(line: 3, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 6, type: !10, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DILocalVariable(name: "p", arg: 1, scope: !19, file: !9, line: 6, type: !12)
!21 = !DILocation(line: 6, column: 15, scope: !19)
!22 = !DILocalVariable(name: "t", scope: !19, file: !9, line: 8, type: !12)
!23 = !DILocation(line: 8, column: 10, scope: !19)
!24 = !DILocation(line: 8, column: 18, scope: !19)
!25 = !DILocation(line: 8, column: 14, scope: !19)
!26 = !DILocalVariable(name: "s", scope: !19, file: !9, line: 9, type: !12)
!27 = !DILocation(line: 9, column: 10, scope: !19)
!28 = !DILocation(line: 9, column: 18, scope: !19)
!29 = !DILocation(line: 9, column: 14, scope: !19)
!30 = !DILocation(line: 10, column: 12, scope: !19)
!31 = !DILocation(line: 10, column: 5, scope: !19)
!32 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !33, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!33 = !DISubroutineType(types: !34)
!34 = !{!13}
!35 = !DILocalVariable(name: "a", scope: !32, file: !9, line: 15, type: !13)
!36 = !DILocation(line: 15, column: 9, scope: !32)
!37 = !DILocalVariable(name: "b", scope: !32, file: !9, line: 15, type: !13)
!38 = !DILocation(line: 15, column: 12, scope: !32)
!39 = !DILocalVariable(name: "r1", scope: !32, file: !9, line: 16, type: !12)
!40 = !DILocation(line: 16, column: 10, scope: !32)
!41 = !DILocalVariable(name: "r2", scope: !32, file: !9, line: 16, type: !12)
!42 = !DILocation(line: 16, column: 15, scope: !32)
!43 = !DILocation(line: 18, column: 10, scope: !32)
!44 = !DILocation(line: 18, column: 8, scope: !32)
!45 = !DILocation(line: 19, column: 10, scope: !32)
!46 = !DILocation(line: 19, column: 8, scope: !32)
!47 = !DILocation(line: 21, column: 5, scope: !32)
