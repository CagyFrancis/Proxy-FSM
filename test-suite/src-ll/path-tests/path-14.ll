; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-14.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-14.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !14, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %3, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %4, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32** %5, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %6, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %7, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %8, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %6, i32** %3, align 8, !dbg !30
  %9 = load i32*, i32** %4, align 8, !dbg !31
  %10 = icmp ne i32* %9, null, !dbg !31
  br i1 %10, label %11, label %16, !dbg !33

11:                                               ; preds = %0
  store i32** %4, i32*** %2, align 8, !dbg !34
  %12 = load i32, i32* %6, align 4, !dbg !36
  %13 = icmp ne i32 %12, 0, !dbg !36
  br i1 %13, label %14, label %15, !dbg !38

14:                                               ; preds = %11
  store i32* %7, i32** %3, align 8, !dbg !39
  br label %15, !dbg !41

15:                                               ; preds = %14, %11
  br label %17, !dbg !42

16:                                               ; preds = %0
  store i32** %5, i32*** %2, align 8, !dbg !43
  store i32* %8, i32** %3, align 8, !dbg !45
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32*, i32** %3, align 8, !dbg !46
  %19 = load i32**, i32*** %2, align 8, !dbg !47
  store i32* %18, i32** %19, align 8, !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-14.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-14.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 3, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DILocation(line: 3, column: 11, scope: !8)
!18 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 3, type: !16)
!19 = !DILocation(line: 3, column: 15, scope: !8)
!20 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 4, type: !16)
!21 = !DILocation(line: 4, column: 10, scope: !8)
!22 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 4, type: !16)
!23 = !DILocation(line: 4, column: 14, scope: !8)
!24 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 4, type: !12)
!25 = !DILocation(line: 4, column: 17, scope: !8)
!26 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 4, type: !12)
!27 = !DILocation(line: 4, column: 20, scope: !8)
!28 = !DILocalVariable(name: "e", scope: !8, file: !9, line: 4, type: !12)
!29 = !DILocation(line: 4, column: 23, scope: !8)
!30 = !DILocation(line: 5, column: 7, scope: !8)
!31 = !DILocation(line: 7, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !8, file: !9, line: 7, column: 9)
!33 = !DILocation(line: 7, column: 9, scope: !8)
!34 = !DILocation(line: 9, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !9, line: 8, column: 5)
!36 = !DILocation(line: 10, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !35, file: !9, line: 10, column: 13)
!38 = !DILocation(line: 10, column: 13, scope: !35)
!39 = !DILocation(line: 12, column: 15, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !9, line: 11, column: 9)
!41 = !DILocation(line: 13, column: 9, scope: !40)
!42 = !DILocation(line: 14, column: 5, scope: !35)
!43 = !DILocation(line: 17, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !32, file: !9, line: 16, column: 5)
!45 = !DILocation(line: 18, column: 11, scope: !44)
!46 = !DILocation(line: 20, column: 10, scope: !8)
!47 = !DILocation(line: 20, column: 6, scope: !8)
!48 = !DILocation(line: 20, column: 8, scope: !8)
!49 = !DILocation(line: 22, column: 5, scope: !8)
