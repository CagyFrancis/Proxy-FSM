; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-8.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-8.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@obj = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32*** noundef %0, i32** noundef %1) #0 !dbg !13 {
  %3 = alloca i32***, align 8
  %4 = alloca i32**, align 8
  store i32*** %0, i32**** %3, align 8
  call void @llvm.dbg.declare(metadata i32**** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !22, metadata !DIExpression()), !dbg !23
  %5 = load i32**, i32*** %4, align 8, !dbg !24
  %6 = load i32***, i32**** %3, align 8, !dbg !25
  store i32** %5, i32*** %6, align 8, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32***, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32**** %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %6, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %7, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32** %8, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %9, metadata !45, metadata !DIExpression()), !dbg !46
  store i32* %9, i32** %7, align 8, !dbg !47
  store i32** %6, i32*** %5, align 8, !dbg !48
  store i32** %6, i32*** %4, align 8, !dbg !49
  %10 = load i32**, i32*** %4, align 8, !dbg !50
  %11 = icmp ne i32** %10, null, !dbg !50
  br i1 %11, label %12, label %15, !dbg !52

12:                                               ; preds = %0
  store i32*** %4, i32**** %2, align 8, !dbg !53
  store i32** %6, i32*** %3, align 8, !dbg !55
  %13 = load i32***, i32**** %2, align 8, !dbg !56
  %14 = load i32**, i32*** %3, align 8, !dbg !57
  call void @foo(i32*** noundef %13, i32** noundef %14), !dbg !58
  br label %18, !dbg !59

15:                                               ; preds = %0
  store i32*** %5, i32**** %2, align 8, !dbg !60
  store i32** %6, i32*** %3, align 8, !dbg !62
  %16 = load i32***, i32**** %2, align 8, !dbg !63
  %17 = load i32**, i32*** %3, align 8, !dbg !64
  call void @foo(i32*** noundef %16, i32** noundef %17), !dbg !65
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** %7, align 8, !dbg !66
  %20 = load i32**, i32*** %4, align 8, !dbg !67
  store i32* %19, i32** %20, align 8, !dbg !68
  %21 = load i32**, i32*** %5, align 8, !dbg !69
  %22 = load i32*, i32** %21, align 8, !dbg !70
  store i32* %22, i32** %8, align 8, !dbg !71
  ret i32 0, !dbg !72
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-8.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-8.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !17}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!19 = !{}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!21 = !DILocation(line: 3, column: 17, scope: !13)
!22 = !DILocalVariable(name: "y", arg: 2, scope: !13, file: !5, line: 3, type: !17)
!23 = !DILocation(line: 3, column: 26, scope: !13)
!24 = !DILocation(line: 5, column: 10, scope: !13)
!25 = !DILocation(line: 5, column: 6, scope: !13)
!26 = !DILocation(line: 5, column: 8, scope: !13)
!27 = !DILocation(line: 6, column: 1, scope: !13)
!28 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 8, type: !29, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!29 = !DISubroutineType(types: !30)
!30 = !{!6}
!31 = !DILocalVariable(name: "p", scope: !28, file: !5, line: 10, type: !16)
!32 = !DILocation(line: 10, column: 12, scope: !28)
!33 = !DILocalVariable(name: "q", scope: !28, file: !5, line: 10, type: !17)
!34 = !DILocation(line: 10, column: 17, scope: !28)
!35 = !DILocalVariable(name: "a", scope: !28, file: !5, line: 10, type: !17)
!36 = !DILocation(line: 10, column: 22, scope: !28)
!37 = !DILocalVariable(name: "b", scope: !28, file: !5, line: 10, type: !17)
!38 = !DILocation(line: 10, column: 27, scope: !28)
!39 = !DILocalVariable(name: "c", scope: !28, file: !5, line: 10, type: !18)
!40 = !DILocation(line: 10, column: 31, scope: !28)
!41 = !DILocalVariable(name: "m", scope: !28, file: !5, line: 10, type: !18)
!42 = !DILocation(line: 10, column: 35, scope: !28)
!43 = !DILocalVariable(name: "n", scope: !28, file: !5, line: 10, type: !18)
!44 = !DILocation(line: 10, column: 39, scope: !28)
!45 = !DILocalVariable(name: "d", scope: !28, file: !5, line: 10, type: !6)
!46 = !DILocation(line: 10, column: 42, scope: !28)
!47 = !DILocation(line: 11, column: 7, scope: !28)
!48 = !DILocation(line: 12, column: 11, scope: !28)
!49 = !DILocation(line: 12, column: 7, scope: !28)
!50 = !DILocation(line: 14, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !28, file: !5, line: 14, column: 9)
!52 = !DILocation(line: 14, column: 9, scope: !28)
!53 = !DILocation(line: 16, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !5, line: 15, column: 5)
!55 = !DILocation(line: 17, column: 11, scope: !54)
!56 = !DILocation(line: 18, column: 13, scope: !54)
!57 = !DILocation(line: 18, column: 16, scope: !54)
!58 = !DILocation(line: 18, column: 9, scope: !54)
!59 = !DILocation(line: 19, column: 5, scope: !54)
!60 = !DILocation(line: 22, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !51, file: !5, line: 21, column: 5)
!62 = !DILocation(line: 23, column: 11, scope: !61)
!63 = !DILocation(line: 24, column: 13, scope: !61)
!64 = !DILocation(line: 24, column: 16, scope: !61)
!65 = !DILocation(line: 24, column: 9, scope: !61)
!66 = !DILocation(line: 27, column: 10, scope: !28)
!67 = !DILocation(line: 27, column: 6, scope: !28)
!68 = !DILocation(line: 27, column: 8, scope: !28)
!69 = !DILocation(line: 28, column: 10, scope: !28)
!70 = !DILocation(line: 28, column: 9, scope: !28)
!71 = !DILocation(line: 28, column: 7, scope: !28)
!72 = !DILocation(line: 30, column: 5, scope: !28)
