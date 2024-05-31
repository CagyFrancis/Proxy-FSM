; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-14.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-14.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* noundef %0, i32* noundef %1) #0 !dbg !8 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !15, metadata !DIExpression()), !dbg !16
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !17, metadata !DIExpression()), !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %6, metadata !31, metadata !DIExpression()), !dbg !32
  %7 = load i32, i32* %6, align 4, !dbg !33
  %8 = icmp ne i32 %7, 0, !dbg !33
  br i1 %8, label %9, label %10, !dbg !35

9:                                                ; preds = %0
  store i32* %4, i32** %2, align 8, !dbg !36
  br label %11, !dbg !37

10:                                               ; preds = %0
  store i32* %5, i32** %2, align 8, !dbg !38
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32*, i32** %2, align 8, !dbg !39
  %13 = load i32*, i32** %3, align 8, !dbg !40
  call void @foo(i32* noundef %12, i32* noundef %13), !dbg !41
  store i32* %6, i32** %2, align 8, !dbg !42
  %14 = load i32*, i32** %2, align 8, !dbg !43
  %15 = load i32*, i32** %3, align 8, !dbg !44
  call void @foo(i32* noundef %14, i32* noundef %15), !dbg !45
  ret i32 0, !dbg !46
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-14.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-14.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocalVariable(name: "q", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!18 = !DILocation(line: 1, column: 23, scope: !8)
!19 = !DILocation(line: 3, column: 2, scope: !8)
!20 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !21, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{!13}
!23 = !DILocalVariable(name: "x", scope: !20, file: !9, line: 8, type: !12)
!24 = !DILocation(line: 8, column: 7, scope: !20)
!25 = !DILocalVariable(name: "y", scope: !20, file: !9, line: 8, type: !12)
!26 = !DILocation(line: 8, column: 11, scope: !20)
!27 = !DILocalVariable(name: "a", scope: !20, file: !9, line: 9, type: !13)
!28 = !DILocation(line: 9, column: 6, scope: !20)
!29 = !DILocalVariable(name: "b", scope: !20, file: !9, line: 9, type: !13)
!30 = !DILocation(line: 9, column: 9, scope: !20)
!31 = !DILocalVariable(name: "c", scope: !20, file: !9, line: 9, type: !13)
!32 = !DILocation(line: 9, column: 12, scope: !20)
!33 = !DILocation(line: 11, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !20, file: !9, line: 11, column: 6)
!35 = !DILocation(line: 11, column: 6, scope: !20)
!36 = !DILocation(line: 12, column: 5, scope: !34)
!37 = !DILocation(line: 12, column: 3, scope: !34)
!38 = !DILocation(line: 14, column: 5, scope: !34)
!39 = !DILocation(line: 15, column: 6, scope: !20)
!40 = !DILocation(line: 15, column: 9, scope: !20)
!41 = !DILocation(line: 15, column: 2, scope: !20)
!42 = !DILocation(line: 16, column: 4, scope: !20)
!43 = !DILocation(line: 17, column: 6, scope: !20)
!44 = !DILocation(line: 17, column: 9, scope: !20)
!45 = !DILocation(line: 17, column: 2, scope: !20)
!46 = !DILocation(line: 19, column: 2, scope: !20)
