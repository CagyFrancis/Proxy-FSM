; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@z = dso_local global i32 0, align 4, !dbg !0
@y = dso_local global i32 0, align 4, !dbg !10
@x = dso_local global i32* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 !dbg !18 {
  %1 = load i32, i32* @z, align 4, !dbg !22
  %2 = icmp sgt i32 %1, 5, !dbg !24
  br i1 %2, label %3, label %4, !dbg !25

3:                                                ; preds = %0
  br label %7, !dbg !26

4:                                                ; preds = %0
  %5 = load i32, i32* @z, align 4, !dbg !27
  %6 = add nsw i32 %5, 1, !dbg !27
  store i32 %6, i32* @z, align 4, !dbg !27
  store i32* @y, i32** @x, align 8, !dbg !28
  call void @f(), !dbg !31
  store i32* @z, i32** @x, align 8, !dbg !32
  call void @f(), !dbg !33
  br label %7, !dbg !34

7:                                                ; preds = %4, %3
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !35 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f(), !dbg !38
  ret i32 0, !dbg !39
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !10, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-1.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 3, type: !19, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !{}
!22 = !DILocation(line: 5, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !18, file: !7, line: 5, column: 9)
!24 = !DILocation(line: 5, column: 11, scope: !23)
!25 = !DILocation(line: 5, column: 9, scope: !18)
!26 = !DILocation(line: 6, column: 9, scope: !23)
!27 = !DILocation(line: 7, column: 6, scope: !18)
!28 = !DILocation(line: 10, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !7, line: 9, column: 5)
!30 = distinct !DILexicalBlock(scope: !18, file: !7, line: 8, column: 9)
!31 = !DILocation(line: 11, column: 9, scope: !29)
!32 = !DILocation(line: 12, column: 11, scope: !29)
!33 = !DILocation(line: 13, column: 9, scope: !29)
!34 = !DILocation(line: 15, column: 1, scope: !18)
!35 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 17, type: !36, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!36 = !DISubroutineType(types: !37)
!37 = !{!9}
!38 = !DILocation(line: 19, column: 5, scope: !35)
!39 = !DILocation(line: 20, column: 5, scope: !35)
