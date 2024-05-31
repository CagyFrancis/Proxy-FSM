; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@y = dso_local global i32 0, align 4, !dbg !0
@x = dso_local global i32* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32* noundef %0) #0 !dbg !16 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32** %3, metadata !22, metadata !DIExpression()), !dbg !23
  %4 = load i32, i32* @y, align 4, !dbg !24
  %5 = icmp eq i32 %4, 1, !dbg !26
  br i1 %5, label %6, label %8, !dbg !27

6:                                                ; preds = %1
  store i32* @y, i32** %3, align 8, !dbg !28
  %7 = load i32*, i32** %3, align 8, !dbg !30
  call void @f(i32* noundef %7), !dbg !31
  br label %8, !dbg !32

8:                                                ; preds = %6, %1
  ret void, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !34 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @y, i32** @x, align 8, !dbg !37
  %2 = load i32*, i32** @x, align 8, !dbg !38
  call void @f(i32* noundef %2), !dbg !39
  ret i32 0, !dbg !40
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-2.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 3, type: !17, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !8}
!19 = !{}
!20 = !DILocalVariable(name: "m", arg: 1, scope: !16, file: !7, line: 3, type: !8)
!21 = !DILocation(line: 3, column: 13, scope: !16)
!22 = !DILocalVariable(name: "n", scope: !16, file: !7, line: 5, type: !8)
!23 = !DILocation(line: 5, column: 7, scope: !16)
!24 = !DILocation(line: 6, column: 6, scope: !25)
!25 = distinct !DILexicalBlock(scope: !16, file: !7, line: 6, column: 6)
!26 = !DILocation(line: 6, column: 8, scope: !25)
!27 = !DILocation(line: 6, column: 6, scope: !16)
!28 = !DILocation(line: 8, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !7, line: 7, column: 2)
!30 = !DILocation(line: 9, column: 5, scope: !29)
!31 = !DILocation(line: 9, column: 3, scope: !29)
!32 = !DILocation(line: 10, column: 2, scope: !29)
!33 = !DILocation(line: 11, column: 1, scope: !16)
!34 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 13, type: !35, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!35 = !DISubroutineType(types: !36)
!36 = !{!9}
!37 = !DILocation(line: 15, column: 4, scope: !34)
!38 = !DILocation(line: 16, column: 4, scope: !34)
!39 = !DILocation(line: 16, column: 2, scope: !34)
!40 = !DILocation(line: 17, column: 2, scope: !34)
