; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-9.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-9.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@s = dso_local global i32 0, align 4, !dbg !0
@k = dso_local global i32* @s, align 8, !dbg !5
@obj = dso_local global i32 0, align 4, !dbg !10
@t = dso_local global i32 0, align 4, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !20 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !27, metadata !DIExpression()), !dbg !28
  %5 = load i32**, i32*** %4, align 8, !dbg !29
  %6 = load i32*, i32** %5, align 8, !dbg !30
  %7 = load i32**, i32*** %3, align 8, !dbg !31
  store i32* %6, i32** %7, align 8, !dbg !32
  %8 = load i32**, i32*** %4, align 8, !dbg !33
  store i32* @obj, i32** %8, align 8, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32** %4, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32** %5, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32** %6, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32** %7, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32** %8, metadata !51, metadata !DIExpression()), !dbg !52
  store i32* @t, i32** %4, align 8, !dbg !53
  store i32** %4, i32*** %2, align 8, !dbg !54
  store i32** %5, i32*** %3, align 8, !dbg !55
  %9 = load i32**, i32*** %2, align 8, !dbg !56
  %10 = load i32**, i32*** %3, align 8, !dbg !57
  call void @foo(i32** noundef %9, i32** noundef %10), !dbg !58
  store i32* @t, i32** %6, align 8, !dbg !59
  store i32* @s, i32** %6, align 8, !dbg !60
  %11 = load i32*, i32** %6, align 8, !dbg !61
  store i32* %11, i32** %4, align 8, !dbg !62
  %12 = load i32, i32* @t, align 4, !dbg !63
  %13 = icmp ne i32 %12, 0, !dbg !63
  br i1 %13, label %14, label %15, !dbg !65

14:                                               ; preds = %0
  store i32* @obj, i32** %6, align 8, !dbg !66
  store i32** %6, i32*** %2, align 8, !dbg !68
  store i32** %8, i32*** %3, align 8, !dbg !69
  br label %16, !dbg !70

15:                                               ; preds = %0
  store i32** %7, i32*** %2, align 8, !dbg !71
  store i32** %7, i32*** %3, align 8, !dbg !73
  br label %16

16:                                               ; preds = %15, %14
  store i32* @t, i32** %8, align 8, !dbg !74
  %17 = load i32**, i32*** %2, align 8, !dbg !75
  %18 = load i32**, i32*** %3, align 8, !dbg !76
  call void @foo(i32** noundef %17, i32** noundef %18), !dbg !77
  ret i32 0, !dbg !78
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-9.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !10, !12, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "k", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-9.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "t", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!20 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 4, type: !21, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!24 = !{}
!25 = !DILocalVariable(name: "p", arg: 1, scope: !20, file: !7, line: 4, type: !23)
!26 = !DILocation(line: 4, column: 16, scope: !20)
!27 = !DILocalVariable(name: "q", arg: 2, scope: !20, file: !7, line: 4, type: !23)
!28 = !DILocation(line: 4, column: 25, scope: !20)
!29 = !DILocation(line: 6, column: 8, scope: !20)
!30 = !DILocation(line: 6, column: 7, scope: !20)
!31 = !DILocation(line: 6, column: 3, scope: !20)
!32 = !DILocation(line: 6, column: 5, scope: !20)
!33 = !DILocation(line: 7, column: 3, scope: !20)
!34 = !DILocation(line: 7, column: 5, scope: !20)
!35 = !DILocation(line: 8, column: 1, scope: !20)
!36 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 10, type: !37, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!37 = !DISubroutineType(types: !38)
!38 = !{!9}
!39 = !DILocalVariable(name: "x", scope: !36, file: !7, line: 12, type: !23)
!40 = !DILocation(line: 12, column: 8, scope: !36)
!41 = !DILocalVariable(name: "y", scope: !36, file: !7, line: 12, type: !23)
!42 = !DILocation(line: 12, column: 13, scope: !36)
!43 = !DILocalVariable(name: "a", scope: !36, file: !7, line: 13, type: !8)
!44 = !DILocation(line: 13, column: 7, scope: !36)
!45 = !DILocalVariable(name: "b", scope: !36, file: !7, line: 13, type: !8)
!46 = !DILocation(line: 13, column: 11, scope: !36)
!47 = !DILocalVariable(name: "c", scope: !36, file: !7, line: 13, type: !8)
!48 = !DILocation(line: 13, column: 15, scope: !36)
!49 = !DILocalVariable(name: "d", scope: !36, file: !7, line: 13, type: !8)
!50 = !DILocation(line: 13, column: 19, scope: !36)
!51 = !DILocalVariable(name: "e", scope: !36, file: !7, line: 13, type: !8)
!52 = !DILocation(line: 13, column: 23, scope: !36)
!53 = !DILocation(line: 14, column: 4, scope: !36)
!54 = !DILocation(line: 15, column: 4, scope: !36)
!55 = !DILocation(line: 16, column: 4, scope: !36)
!56 = !DILocation(line: 18, column: 6, scope: !36)
!57 = !DILocation(line: 18, column: 9, scope: !36)
!58 = !DILocation(line: 18, column: 2, scope: !36)
!59 = !DILocation(line: 19, column: 4, scope: !36)
!60 = !DILocation(line: 20, column: 4, scope: !36)
!61 = !DILocation(line: 21, column: 6, scope: !36)
!62 = !DILocation(line: 21, column: 4, scope: !36)
!63 = !DILocation(line: 22, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !36, file: !7, line: 22, column: 6)
!65 = !DILocation(line: 22, column: 6, scope: !36)
!66 = !DILocation(line: 24, column: 5, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !7, line: 23, column: 2)
!68 = !DILocation(line: 25, column: 5, scope: !67)
!69 = !DILocation(line: 26, column: 5, scope: !67)
!70 = !DILocation(line: 27, column: 2, scope: !67)
!71 = !DILocation(line: 30, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !7, line: 29, column: 2)
!73 = !DILocation(line: 31, column: 5, scope: !72)
!74 = !DILocation(line: 33, column: 4, scope: !36)
!75 = !DILocation(line: 34, column: 6, scope: !36)
!76 = !DILocation(line: 34, column: 9, scope: !36)
!77 = !DILocation(line: 34, column: 2, scope: !36)
!78 = !DILocation(line: 36, column: 2, scope: !36)
