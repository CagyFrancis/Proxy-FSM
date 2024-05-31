; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-21.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-21.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@a = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !13 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %3, metadata !20, metadata !DIExpression()), !dbg !21
  %5 = load i32*, i32** %2, align 8, !dbg !22
  store i32* %5, i32** %3, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i32** %4, metadata !23, metadata !DIExpression()), !dbg !24
  %6 = load i32*, i32** %2, align 8, !dbg !25
  %7 = icmp ne i32* %6, null, !dbg !25
  br i1 %7, label %8, label %11, !dbg !27

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8, !dbg !28
  %10 = call i32* @foo(i32* noundef %9), !dbg !29
  store i32* %10, i32** %4, align 8, !dbg !30
  br label %13, !dbg !31

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8, !dbg !32
  store i32* %12, i32** %4, align 8, !dbg !33
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32*, i32** %4, align 8, !dbg !34
  ret i32* %14, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !39, metadata !DIExpression()), !dbg !40
  store i32* @a, i32** %2, align 8, !dbg !41
  %3 = load i32*, i32** %2, align 8, !dbg !42
  %4 = call i32* @foo(i32* noundef %3), !dbg !43
  store i32* %4, i32** %2, align 8, !dbg !44
  ret i32 0, !dbg !45
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-21.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-21.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!17 = !{}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!19 = !DILocation(line: 3, column: 15, scope: !13)
!20 = !DILocalVariable(name: "z", scope: !13, file: !5, line: 5, type: !16)
!21 = !DILocation(line: 5, column: 10, scope: !13)
!22 = !DILocation(line: 5, column: 14, scope: !13)
!23 = !DILocalVariable(name: "y", scope: !13, file: !5, line: 6, type: !16)
!24 = !DILocation(line: 6, column: 10, scope: !13)
!25 = !DILocation(line: 7, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !13, file: !5, line: 7, column: 9)
!27 = !DILocation(line: 7, column: 9, scope: !13)
!28 = !DILocation(line: 8, column: 17, scope: !26)
!29 = !DILocation(line: 8, column: 13, scope: !26)
!30 = !DILocation(line: 8, column: 11, scope: !26)
!31 = !DILocation(line: 8, column: 9, scope: !26)
!32 = !DILocation(line: 10, column: 13, scope: !26)
!33 = !DILocation(line: 10, column: 11, scope: !26)
!34 = !DILocation(line: 12, column: 12, scope: !13)
!35 = !DILocation(line: 12, column: 5, scope: !13)
!36 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 15, type: !37, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!37 = !DISubroutineType(types: !38)
!38 = !{!6}
!39 = !DILocalVariable(name: "p", scope: !36, file: !5, line: 17, type: !16)
!40 = !DILocation(line: 17, column: 10, scope: !36)
!41 = !DILocation(line: 18, column: 7, scope: !36)
!42 = !DILocation(line: 20, column: 13, scope: !36)
!43 = !DILocation(line: 20, column: 9, scope: !36)
!44 = !DILocation(line: 20, column: 7, scope: !36)
!45 = !DILocation(line: 22, column: 5, scope: !36)
