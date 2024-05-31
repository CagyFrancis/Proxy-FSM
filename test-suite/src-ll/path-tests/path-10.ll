; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-10.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-10.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@k = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0) #0 !dbg !13 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !19, metadata !DIExpression()), !dbg !20
  %3 = load i32**, i32*** %2, align 8, !dbg !21
  store i32* @k, i32** %3, align 8, !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !24 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !25, metadata !DIExpression()), !dbg !26
  %3 = load i32**, i32*** %2, align 8, !dbg !27
  call void @bar(i32** noundef %3), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %4, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %5, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  %7 = load i32, i32* %6, align 4, !dbg !43
  %8 = icmp ne i32 %7, 0, !dbg !43
  br i1 %8, label %9, label %10, !dbg !45

9:                                                ; preds = %0
  store i32** %4, i32*** %2, align 8, !dbg !46
  call void @foo(i32** noundef %3), !dbg !48
  br label %11, !dbg !49

10:                                               ; preds = %0
  store i32** %5, i32*** %2, align 8, !dbg !50
  store i32* %6, i32** %3, align 8, !dbg !52
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32*, i32** %3, align 8, !dbg !53
  %13 = load i32**, i32*** %2, align 8, !dbg !54
  store i32* %12, i32** %13, align 8, !dbg !55
  ret i32 0, !dbg !56
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "k", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-10.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-10.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "bar", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{}
!19 = !DILocalVariable(name: "s", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!20 = !DILocation(line: 3, column: 16, scope: !13)
!21 = !DILocation(line: 5, column: 6, scope: !13)
!22 = !DILocation(line: 5, column: 8, scope: !13)
!23 = !DILocation(line: 6, column: 1, scope: !13)
!24 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 8, type: !14, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!25 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !5, line: 8, type: !16)
!26 = !DILocation(line: 8, column: 16, scope: !24)
!27 = !DILocation(line: 10, column: 9, scope: !24)
!28 = !DILocation(line: 10, column: 5, scope: !24)
!29 = !DILocation(line: 11, column: 1, scope: !24)
!30 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 13, type: !31, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!31 = !DISubroutineType(types: !32)
!32 = !{!6}
!33 = !DILocalVariable(name: "p", scope: !30, file: !5, line: 15, type: !16)
!34 = !DILocation(line: 15, column: 11, scope: !30)
!35 = !DILocalVariable(name: "q", scope: !30, file: !5, line: 15, type: !17)
!36 = !DILocation(line: 15, column: 15, scope: !30)
!37 = !DILocalVariable(name: "b", scope: !30, file: !5, line: 16, type: !17)
!38 = !DILocation(line: 16, column: 10, scope: !30)
!39 = !DILocalVariable(name: "c", scope: !30, file: !5, line: 16, type: !17)
!40 = !DILocation(line: 16, column: 14, scope: !30)
!41 = !DILocalVariable(name: "e", scope: !30, file: !5, line: 16, type: !6)
!42 = !DILocation(line: 16, column: 17, scope: !30)
!43 = !DILocation(line: 18, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !30, file: !5, line: 18, column: 9)
!45 = !DILocation(line: 18, column: 9, scope: !30)
!46 = !DILocation(line: 20, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !5, line: 19, column: 5)
!48 = !DILocation(line: 21, column: 9, scope: !47)
!49 = !DILocation(line: 22, column: 5, scope: !47)
!50 = !DILocation(line: 25, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !5, line: 24, column: 5)
!52 = !DILocation(line: 26, column: 11, scope: !51)
!53 = !DILocation(line: 28, column: 10, scope: !30)
!54 = !DILocation(line: 28, column: 6, scope: !30)
!55 = !DILocation(line: 28, column: 8, scope: !30)
!56 = !DILocation(line: 30, column: 5, scope: !30)
