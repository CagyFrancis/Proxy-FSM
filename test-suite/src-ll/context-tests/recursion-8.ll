; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-8.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-8.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@z2 = dso_local global i32 0, align 4, !dbg !0
@z1 = dso_local global i32 0, align 4, !dbg !9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !18 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !22, metadata !DIExpression()), !dbg !23
  %3 = call i8* @malloc(i64 noundef 8), !dbg !24
  %4 = bitcast i8* %3 to i32**, !dbg !25
  store i32** %4, i32*** %2, align 8, !dbg !26
  %5 = load i32**, i32*** %2, align 8, !dbg !27
  store i32* @z2, i32** %5, align 8, !dbg !28
  %6 = load i32**, i32*** %2, align 8, !dbg !29
  call void @bar(i32** noundef %6), !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0) #0 !dbg !32 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !33, metadata !DIExpression()), !dbg !34
  %5 = load i32, i32* @z1, align 4, !dbg !35
  %6 = icmp sgt i32 %5, 5, !dbg !37
  br i1 %6, label %7, label %8, !dbg !38

7:                                                ; preds = %1
  br label %15, !dbg !39

8:                                                ; preds = %1
  %9 = load i32, i32* @z1, align 4, !dbg !40
  %10 = add nsw i32 %9, 1, !dbg !40
  store i32 %10, i32* @z1, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32** %3, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %4, metadata !43, metadata !DIExpression()), !dbg !44
  %11 = load i32**, i32*** %2, align 8, !dbg !45
  store i32* %4, i32** %11, align 8, !dbg !46
  %12 = load i32**, i32*** %2, align 8, !dbg !47
  %13 = load i32*, i32** %12, align 8, !dbg !48
  store i32* %13, i32** %3, align 8, !dbg !49
  %14 = load i32**, i32*** %2, align 8, !dbg !50
  call void @foo(i32** noundef %14), !dbg !51
  br label %15, !dbg !52

15:                                               ; preds = %8, %7
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32** %3, metadata !58, metadata !DIExpression()), !dbg !59
  store i32** %3, i32*** %2, align 8, !dbg !60
  store i32* @z1, i32** %3, align 8, !dbg !61
  %4 = load i32**, i32*** %2, align 8, !dbg !62
  call void @foo(i32** noundef %4), !dbg !63
  ret i32 0, !dbg !64
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "z2", scope: !2, file: !11, line: 3, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-8.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "z1", scope: !2, file: !11, line: 3, type: !7, isLocal: false, isDefinition: true)
!11 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-8.c", directory: "")
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "foo", scope: !11, file: !11, line: 8, type: !19, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !5}
!21 = !{}
!22 = !DILocalVariable(name: "p", arg: 1, scope: !18, file: !11, line: 8, type: !5)
!23 = !DILocation(line: 8, column: 16, scope: !18)
!24 = !DILocation(line: 10, column: 14, scope: !18)
!25 = !DILocation(line: 10, column: 6, scope: !18)
!26 = !DILocation(line: 10, column: 4, scope: !18)
!27 = !DILocation(line: 11, column: 3, scope: !18)
!28 = !DILocation(line: 11, column: 5, scope: !18)
!29 = !DILocation(line: 12, column: 6, scope: !18)
!30 = !DILocation(line: 12, column: 2, scope: !18)
!31 = !DILocation(line: 13, column: 1, scope: !18)
!32 = distinct !DISubprogram(name: "bar", scope: !11, file: !11, line: 15, type: !19, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!33 = !DILocalVariable(name: "a", arg: 1, scope: !32, file: !11, line: 15, type: !5)
!34 = !DILocation(line: 15, column: 16, scope: !32)
!35 = !DILocation(line: 17, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !11, line: 17, column: 6)
!37 = !DILocation(line: 17, column: 9, scope: !36)
!38 = !DILocation(line: 17, column: 6, scope: !32)
!39 = !DILocation(line: 18, column: 3, scope: !36)
!40 = !DILocation(line: 19, column: 4, scope: !32)
!41 = !DILocalVariable(name: "c", scope: !32, file: !11, line: 20, type: !6)
!42 = !DILocation(line: 20, column: 7, scope: !32)
!43 = !DILocalVariable(name: "b", scope: !32, file: !11, line: 20, type: !7)
!44 = !DILocation(line: 20, column: 10, scope: !32)
!45 = !DILocation(line: 21, column: 3, scope: !32)
!46 = !DILocation(line: 21, column: 5, scope: !32)
!47 = !DILocation(line: 22, column: 7, scope: !32)
!48 = !DILocation(line: 22, column: 6, scope: !32)
!49 = !DILocation(line: 22, column: 4, scope: !32)
!50 = !DILocation(line: 23, column: 6, scope: !32)
!51 = !DILocation(line: 23, column: 2, scope: !32)
!52 = !DILocation(line: 24, column: 1, scope: !32)
!53 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 26, type: !54, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!54 = !DISubroutineType(types: !55)
!55 = !{!7}
!56 = !DILocalVariable(name: "x", scope: !53, file: !11, line: 28, type: !5)
!57 = !DILocation(line: 28, column: 8, scope: !53)
!58 = !DILocalVariable(name: "y", scope: !53, file: !11, line: 28, type: !6)
!59 = !DILocation(line: 28, column: 12, scope: !53)
!60 = !DILocation(line: 29, column: 4, scope: !53)
!61 = !DILocation(line: 30, column: 4, scope: !53)
!62 = !DILocation(line: 31, column: 6, scope: !53)
!63 = !DILocation(line: 31, column: 2, scope: !53)
!64 = !DILocation(line: 32, column: 2, scope: !53)
