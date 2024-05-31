; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\branch-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\branch-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global i32* null, align 8, !dbg !0
@a = dso_local global i32 0, align 4, !dbg !5
@b = dso_local global i32 0, align 4, !dbg !9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %3, i32** %2, align 8, !dbg !30
  %6 = load i32*, i32** %2, align 8, !dbg !31
  store i32* %6, i32** @p, align 8, !dbg !32
  %7 = load i32, i32* @a, align 4, !dbg !33
  %8 = icmp ne i32 %7, 0, !dbg !33
  br i1 %8, label %9, label %10, !dbg !35

9:                                                ; preds = %0
  store i32* %4, i32** @p, align 8, !dbg !36
  br label %11, !dbg !38

10:                                               ; preds = %0
  store i32* %5, i32** @p, align 8, !dbg !39
  br label %11

11:                                               ; preds = %10, %9
  ret i32 0, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 1, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/branch-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !9}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/branch-1.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 3, type: !19, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!8}
!21 = !{}
!22 = !DILocalVariable(name: "q", scope: !18, file: !7, line: 5, type: !11)
!23 = !DILocation(line: 5, column: 10, scope: !18)
!24 = !DILocalVariable(name: "s", scope: !18, file: !7, line: 5, type: !8)
!25 = !DILocation(line: 5, column: 13, scope: !18)
!26 = !DILocalVariable(name: "c", scope: !18, file: !7, line: 5, type: !8)
!27 = !DILocation(line: 5, column: 16, scope: !18)
!28 = !DILocalVariable(name: "d", scope: !18, file: !7, line: 5, type: !8)
!29 = !DILocation(line: 5, column: 19, scope: !18)
!30 = !DILocation(line: 7, column: 7, scope: !18)
!31 = !DILocation(line: 8, column: 9, scope: !18)
!32 = !DILocation(line: 8, column: 7, scope: !18)
!33 = !DILocation(line: 9, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !18, file: !7, line: 9, column: 9)
!35 = !DILocation(line: 9, column: 9, scope: !18)
!36 = !DILocation(line: 11, column: 11, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !7, line: 10, column: 5)
!38 = !DILocation(line: 12, column: 5, scope: !37)
!39 = !DILocation(line: 15, column: 11, scope: !40)
!40 = distinct !DILexicalBlock(scope: !34, file: !7, line: 14, column: 5)
!41 = !DILocation(line: 18, column: 5, scope: !18)
