; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-12.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-12.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@t = dso_local global i32 0, align 4, !dbg !0
@obj = dso_local global i32 0, align 4, !dbg !5
@s = dso_local global i32 0, align 4, !dbg !9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !17 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = load i32**, i32*** %4, align 8, !dbg !27
  %6 = load i32*, i32** %5, align 8, !dbg !28
  %7 = load i32**, i32*** %3, align 8, !dbg !29
  store i32* %6, i32** %7, align 8, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %4, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %5, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32** %6, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32** %7, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32** %8, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* @t, i32** %8, align 8, !dbg !49
  store i32* @obj, i32** %7, align 8, !dbg !50
  store i32* @s, i32** %6, align 8, !dbg !51
  %9 = load i32, i32* @t, align 4, !dbg !52
  %10 = icmp ne i32 %9, 0, !dbg !52
  br i1 %10, label %11, label %12, !dbg !54

11:                                               ; preds = %0
  store i32** %6, i32*** %2, align 8, !dbg !55
  store i32** %8, i32*** %3, align 8, !dbg !57
  br label %13, !dbg !58

12:                                               ; preds = %0
  store i32** %7, i32*** %2, align 8, !dbg !59
  store i32** %7, i32*** %3, align 8, !dbg !61
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32**, i32*** %2, align 8, !dbg !62
  %15 = load i32**, i32*** %3, align 8, !dbg !63
  call void @foo(i32** noundef %14, i32** noundef %15), !dbg !64
  ret i32 0, !dbg !65
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-12.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-12.c", directory: "")
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
!27 = !DILocation(line: 5, column: 8, scope: !17)
!28 = !DILocation(line: 5, column: 7, scope: !17)
!29 = !DILocation(line: 5, column: 3, scope: !17)
!30 = !DILocation(line: 5, column: 5, scope: !17)
!31 = !DILocation(line: 6, column: 1, scope: !17)
!32 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 8, type: !33, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!33 = !DISubroutineType(types: !34)
!34 = !{!8}
!35 = !DILocalVariable(name: "x", scope: !32, file: !7, line: 10, type: !20)
!36 = !DILocation(line: 10, column: 8, scope: !32)
!37 = !DILocalVariable(name: "y", scope: !32, file: !7, line: 10, type: !20)
!38 = !DILocation(line: 10, column: 13, scope: !32)
!39 = !DILocalVariable(name: "a", scope: !32, file: !7, line: 11, type: !21)
!40 = !DILocation(line: 11, column: 7, scope: !32)
!41 = !DILocalVariable(name: "b", scope: !32, file: !7, line: 11, type: !21)
!42 = !DILocation(line: 11, column: 11, scope: !32)
!43 = !DILocalVariable(name: "c", scope: !32, file: !7, line: 11, type: !21)
!44 = !DILocation(line: 11, column: 15, scope: !32)
!45 = !DILocalVariable(name: "d", scope: !32, file: !7, line: 11, type: !21)
!46 = !DILocation(line: 11, column: 19, scope: !32)
!47 = !DILocalVariable(name: "e", scope: !32, file: !7, line: 11, type: !21)
!48 = !DILocation(line: 11, column: 23, scope: !32)
!49 = !DILocation(line: 12, column: 4, scope: !32)
!50 = !DILocation(line: 13, column: 4, scope: !32)
!51 = !DILocation(line: 14, column: 4, scope: !32)
!52 = !DILocation(line: 16, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !32, file: !7, line: 16, column: 6)
!54 = !DILocation(line: 16, column: 6, scope: !32)
!55 = !DILocation(line: 18, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !7, line: 17, column: 2)
!57 = !DILocation(line: 19, column: 5, scope: !56)
!58 = !DILocation(line: 20, column: 2, scope: !56)
!59 = !DILocation(line: 23, column: 5, scope: !60)
!60 = distinct !DILexicalBlock(scope: !53, file: !7, line: 22, column: 2)
!61 = !DILocation(line: 24, column: 5, scope: !60)
!62 = !DILocation(line: 26, column: 6, scope: !32)
!63 = !DILocation(line: 26, column: 9, scope: !32)
!64 = !DILocation(line: 26, column: 2, scope: !32)
!65 = !DILocation(line: 28, column: 2, scope: !32)
