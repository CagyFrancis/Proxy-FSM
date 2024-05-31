; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-10.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-10.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@x = dso_local global i32* null, align 8, !dbg !0
@p = dso_local global i32** null, align 8, !dbg !5
@z = dso_local global i32 0, align 4, !dbg !13
@y = dso_local global i32 0, align 4, !dbg !11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 !dbg !21 {
  store i32** @x, i32*** @p, align 8, !dbg !25
  %1 = load i32, i32* @z, align 4, !dbg !26
  %2 = icmp ne i32 %1, 0, !dbg !26
  br i1 %2, label %3, label %6, !dbg !28

3:                                                ; preds = %0
  %4 = load i32**, i32*** @p, align 8, !dbg !29
  store i32* @y, i32** %4, align 8, !dbg !31
  call void @f(), !dbg !32
  %5 = load i32**, i32*** @p, align 8, !dbg !33
  store i32* @z, i32** %5, align 8, !dbg !34
  call void @f(), !dbg !35
  br label %6, !dbg !36

6:                                                ; preds = %3, %0
  ret void, !dbg !37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f(), !dbg !41
  ret i32 0, !dbg !42
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-10.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !11, !13}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-10.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 1, type: !10, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!21 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 3, type: !22, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !{}
!25 = !DILocation(line: 5, column: 7, scope: !21)
!26 = !DILocation(line: 6, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !21, file: !7, line: 6, column: 9)
!28 = !DILocation(line: 6, column: 9, scope: !21)
!29 = !DILocation(line: 8, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !7, line: 7, column: 5)
!31 = !DILocation(line: 8, column: 12, scope: !30)
!32 = !DILocation(line: 9, column: 9, scope: !30)
!33 = !DILocation(line: 10, column: 10, scope: !30)
!34 = !DILocation(line: 10, column: 12, scope: !30)
!35 = !DILocation(line: 11, column: 9, scope: !30)
!36 = !DILocation(line: 12, column: 5, scope: !30)
!37 = !DILocation(line: 13, column: 5, scope: !21)
!38 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 16, type: !39, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!39 = !DISubroutineType(types: !40)
!40 = !{!10}
!41 = !DILocation(line: 18, column: 5, scope: !38)
!42 = !DILocation(line: 19, column: 5, scope: !38)
