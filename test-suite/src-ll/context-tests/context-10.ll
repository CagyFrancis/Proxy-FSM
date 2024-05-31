; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-10.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-10.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@obj = dso_local global i32 0, align 4, !dbg !0
@s = dso_local global i32 0, align 4, !dbg !9
@t = dso_local global i32 0, align 4, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !17 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = load i32**, i32*** %4, align 8, !dbg !27
  store i32* @obj, i32** %5, align 8, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %4, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %5, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %6, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32** %7, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32** %8, metadata !45, metadata !DIExpression()), !dbg !46
  store i32** %4, i32*** %2, align 8, !dbg !47
  store i32** %5, i32*** %3, align 8, !dbg !48
  %9 = load i32**, i32*** %2, align 8, !dbg !49
  %10 = load i32**, i32*** %3, align 8, !dbg !50
  call void @foo(i32** noundef %9, i32** noundef %10), !dbg !51
  store i32* @s, i32** %6, align 8, !dbg !52
  %11 = load i32, i32* @t, align 4, !dbg !53
  %12 = icmp ne i32 %11, 0, !dbg !53
  br i1 %12, label %13, label %14, !dbg !55

13:                                               ; preds = %0
  store i32** %6, i32*** %2, align 8, !dbg !56
  store i32** %8, i32*** %3, align 8, !dbg !58
  br label %15, !dbg !59

14:                                               ; preds = %0
  store i32** %7, i32*** %2, align 8, !dbg !60
  store i32** %7, i32*** %3, align 8, !dbg !62
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32**, i32*** %2, align 8, !dbg !63
  %17 = load i32**, i32*** %3, align 8, !dbg !64
  call void @foo(i32** noundef %16, i32** noundef %17), !dbg !65
  ret i32 0, !dbg !66
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-10.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !9}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "t", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-10.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!17 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 3, type: !18, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !{}
!23 = !DILocalVariable(name: "p", arg: 1, scope: !17, file: !7, line: 3, type: !20)
!24 = !DILocation(line: 3, column: 16, scope: !17)
!25 = !DILocalVariable(name: "q", arg: 2, scope: !17, file: !7, line: 3, type: !20)
!26 = !DILocation(line: 3, column: 25, scope: !17)
!27 = !DILocation(line: 5, column: 3, scope: !17)
!28 = !DILocation(line: 5, column: 5, scope: !17)
!29 = !DILocation(line: 6, column: 1, scope: !17)
!30 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 8, type: !31, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!31 = !DISubroutineType(types: !32)
!32 = !{!8}
!33 = !DILocalVariable(name: "x", scope: !30, file: !7, line: 10, type: !20)
!34 = !DILocation(line: 10, column: 8, scope: !30)
!35 = !DILocalVariable(name: "y", scope: !30, file: !7, line: 10, type: !20)
!36 = !DILocation(line: 10, column: 13, scope: !30)
!37 = !DILocalVariable(name: "a", scope: !30, file: !7, line: 11, type: !21)
!38 = !DILocation(line: 11, column: 7, scope: !30)
!39 = !DILocalVariable(name: "b", scope: !30, file: !7, line: 11, type: !21)
!40 = !DILocation(line: 11, column: 11, scope: !30)
!41 = !DILocalVariable(name: "c", scope: !30, file: !7, line: 11, type: !21)
!42 = !DILocation(line: 11, column: 15, scope: !30)
!43 = !DILocalVariable(name: "d", scope: !30, file: !7, line: 11, type: !21)
!44 = !DILocation(line: 11, column: 19, scope: !30)
!45 = !DILocalVariable(name: "e", scope: !30, file: !7, line: 11, type: !21)
!46 = !DILocation(line: 11, column: 23, scope: !30)
!47 = !DILocation(line: 13, column: 4, scope: !30)
!48 = !DILocation(line: 14, column: 4, scope: !30)
!49 = !DILocation(line: 15, column: 6, scope: !30)
!50 = !DILocation(line: 15, column: 9, scope: !30)
!51 = !DILocation(line: 15, column: 2, scope: !30)
!52 = !DILocation(line: 16, column: 4, scope: !30)
!53 = !DILocation(line: 17, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !30, file: !7, line: 17, column: 6)
!55 = !DILocation(line: 17, column: 6, scope: !30)
!56 = !DILocation(line: 19, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !7, line: 18, column: 2)
!58 = !DILocation(line: 20, column: 5, scope: !57)
!59 = !DILocation(line: 21, column: 2, scope: !57)
!60 = !DILocation(line: 24, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !54, file: !7, line: 23, column: 2)
!62 = !DILocation(line: 25, column: 5, scope: !61)
!63 = !DILocation(line: 27, column: 6, scope: !30)
!64 = !DILocation(line: 27, column: 9, scope: !30)
!65 = !DILocation(line: 27, column: 2, scope: !30)
!66 = !DILocation(line: 29, column: 2, scope: !30)
