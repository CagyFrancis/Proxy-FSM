; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-11.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-11.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32* noundef %1) #0 !dbg !8 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32*, i32** %4, align 8, !dbg !20
  %6 = load i32**, i32*** %3, align 8, !dbg !21
  store i32* %5, i32** %6, align 8, !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32** %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32** %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %6, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %7, metadata !37, metadata !DIExpression()), !dbg !38
  %8 = load i32*, i32** %4, align 8, !dbg !39
  %9 = icmp ne i32* %8, null, !dbg !39
  br i1 %9, label %10, label %13, !dbg !41

10:                                               ; preds = %0
  store i32** %4, i32*** %2, align 8, !dbg !42
  store i32* %6, i32** %3, align 8, !dbg !44
  %11 = load i32**, i32*** %2, align 8, !dbg !45
  %12 = load i32*, i32** %3, align 8, !dbg !46
  call void @foo(i32** noundef %11, i32* noundef %12), !dbg !47
  br label %16, !dbg !48

13:                                               ; preds = %0
  store i32** %5, i32*** %2, align 8, !dbg !49
  store i32* %7, i32** %3, align 8, !dbg !51
  %14 = load i32**, i32*** %2, align 8, !dbg !52
  %15 = load i32*, i32** %3, align 8, !dbg !53
  call void @foo(i32** noundef %14, i32* noundef %15), !dbg !54
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** %3, align 8, !dbg !55
  %18 = load i32**, i32*** %2, align 8, !dbg !56
  store i32* %17, i32** %18, align 8, !dbg !57
  ret i32 0, !dbg !58
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-11.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-11.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "y", arg: 2, scope: !8, file: !9, line: 1, type: !13)
!19 = !DILocation(line: 1, column: 24, scope: !8)
!20 = !DILocation(line: 3, column: 10, scope: !8)
!21 = !DILocation(line: 3, column: 6, scope: !8)
!22 = !DILocation(line: 3, column: 8, scope: !8)
!23 = !DILocation(line: 4, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !25, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!25 = !DISubroutineType(types: !26)
!26 = !{!14}
!27 = !DILocalVariable(name: "p", scope: !24, file: !9, line: 8, type: !12)
!28 = !DILocation(line: 8, column: 11, scope: !24)
!29 = !DILocalVariable(name: "q", scope: !24, file: !9, line: 8, type: !13)
!30 = !DILocation(line: 8, column: 15, scope: !24)
!31 = !DILocalVariable(name: "a", scope: !24, file: !9, line: 9, type: !13)
!32 = !DILocation(line: 9, column: 10, scope: !24)
!33 = !DILocalVariable(name: "b", scope: !24, file: !9, line: 9, type: !13)
!34 = !DILocation(line: 9, column: 14, scope: !24)
!35 = !DILocalVariable(name: "c", scope: !24, file: !9, line: 9, type: !14)
!36 = !DILocation(line: 9, column: 17, scope: !24)
!37 = !DILocalVariable(name: "d", scope: !24, file: !9, line: 9, type: !14)
!38 = !DILocation(line: 9, column: 20, scope: !24)
!39 = !DILocation(line: 11, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !24, file: !9, line: 11, column: 9)
!41 = !DILocation(line: 11, column: 9, scope: !24)
!42 = !DILocation(line: 13, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !9, line: 12, column: 5)
!44 = !DILocation(line: 14, column: 11, scope: !43)
!45 = !DILocation(line: 15, column: 13, scope: !43)
!46 = !DILocation(line: 15, column: 16, scope: !43)
!47 = !DILocation(line: 15, column: 9, scope: !43)
!48 = !DILocation(line: 16, column: 5, scope: !43)
!49 = !DILocation(line: 19, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !9, line: 18, column: 5)
!51 = !DILocation(line: 20, column: 11, scope: !50)
!52 = !DILocation(line: 21, column: 13, scope: !50)
!53 = !DILocation(line: 21, column: 16, scope: !50)
!54 = !DILocation(line: 21, column: 9, scope: !50)
!55 = !DILocation(line: 23, column: 10, scope: !24)
!56 = !DILocation(line: 23, column: 6, scope: !24)
!57 = !DILocation(line: 23, column: 8, scope: !24)
!58 = !DILocation(line: 25, column: 5, scope: !24)
