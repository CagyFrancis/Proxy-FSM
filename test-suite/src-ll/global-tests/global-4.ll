; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global i32* null, align 8, !dbg !0
@pp = dso_local global i32** null, align 8, !dbg !5
@x = dso_local global i32 0, align 4, !dbg !15
@q = dso_local global i32* null, align 8, !dbg !13
@qq = dso_local global i32** null, align 8, !dbg !11
@y = dso_local global i32 0, align 4, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 !dbg !25 {
  store i32** @p, i32*** @pp, align 8, !dbg !29
  store i32* @x, i32** @p, align 8, !dbg !30
  store i32** @q, i32*** @qq, align 8, !dbg !31
  store i32* @y, i32** @q, align 8, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar() #0 !dbg !34 {
  store i32** @q, i32*** @qq, align 8, !dbg !35
  store i32* @x, i32** @q, align 8, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(), !dbg !41
  call void @bar(), !dbg !42
  ret i32 0, !dbg !43
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 2, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !11, !0, !13, !15, !17}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "pp", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-4.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "qq", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 2, type: !9, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 3, type: !10, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 3, type: !10, isLocal: false, isDefinition: true)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!25 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 5, type: !26, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !{}
!29 = !DILocation(line: 7, column: 5, scope: !25)
!30 = !DILocation(line: 8, column: 4, scope: !25)
!31 = !DILocation(line: 9, column: 5, scope: !25)
!32 = !DILocation(line: 10, column: 4, scope: !25)
!33 = !DILocation(line: 11, column: 1, scope: !25)
!34 = distinct !DISubprogram(name: "bar", scope: !7, file: !7, line: 13, type: !26, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!35 = !DILocation(line: 15, column: 5, scope: !34)
!36 = !DILocation(line: 16, column: 4, scope: !34)
!37 = !DILocation(line: 17, column: 1, scope: !34)
!38 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 19, type: !39, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!39 = !DISubroutineType(types: !40)
!40 = !{!10}
!41 = !DILocation(line: 21, column: 2, scope: !38)
!42 = !DILocation(line: 22, column: 2, scope: !38)
!43 = !DILocation(line: 23, column: 2, scope: !38)
