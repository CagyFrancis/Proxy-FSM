; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-19.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-19.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@y = dso_local global i32 0, align 4, !dbg !0
@e = dso_local global i32* null, align 8, !dbg !14
@f = dso_local global i32* null, align 8, !dbg !12
@q = dso_local global i32* null, align 8, !dbg !5
@d = dso_local global i32 0, align 4, !dbg !18
@r = dso_local global i32* null, align 8, !dbg !10
@c = dso_local global i32 0, align 4, !dbg !16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !26 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i32, i32* @y, align 4, !dbg !33
  %4 = icmp ne i32 %3, 0, !dbg !33
  br i1 %4, label %5, label %6, !dbg !35

5:                                                ; preds = %1
  store i32** @e, i32*** %2, align 8, !dbg !36
  store i32* @y, i32** @f, align 8, !dbg !38
  br label %6, !dbg !39

6:                                                ; preds = %5, %1
  %7 = load i32*, i32** @f, align 8, !dbg !40
  %8 = load i32**, i32*** %2, align 8, !dbg !41
  store i32* %7, i32** %8, align 8, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !49, metadata !DIExpression()), !dbg !50
  store i32* null, i32** @e, align 8, !dbg !51
  store i32** @q, i32*** %2, align 8, !dbg !52
  store i32* @d, i32** @f, align 8, !dbg !53
  %4 = load i32**, i32*** %2, align 8, !dbg !54
  call void @foo(i32** noundef %4), !dbg !55
  store i32** @r, i32*** %3, align 8, !dbg !56
  store i32* @c, i32** @f, align 8, !dbg !57
  %5 = load i32**, i32*** %3, align 8, !dbg !58
  call void @foo(i32** noundef %5), !dbg !59
  ret i32 0, !dbg !60
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-19.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !10, !12, !14, !16, !18}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-19.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "r", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!26 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 3, type: !27, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!30 = !{}
!31 = !DILocalVariable(name: "p", arg: 1, scope: !26, file: !7, line: 3, type: !29)
!32 = !DILocation(line: 3, column: 16, scope: !26)
!33 = !DILocation(line: 5, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !7, line: 5, column: 9)
!35 = !DILocation(line: 5, column: 9, scope: !26)
!36 = !DILocation(line: 7, column: 11, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !7, line: 6, column: 5)
!38 = !DILocation(line: 8, column: 11, scope: !37)
!39 = !DILocation(line: 9, column: 5, scope: !37)
!40 = !DILocation(line: 10, column: 10, scope: !26)
!41 = !DILocation(line: 10, column: 6, scope: !26)
!42 = !DILocation(line: 10, column: 8, scope: !26)
!43 = !DILocation(line: 11, column: 1, scope: !26)
!44 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 13, type: !45, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !30)
!45 = !DISubroutineType(types: !46)
!46 = !{!9}
!47 = !DILocalVariable(name: "a", scope: !44, file: !7, line: 15, type: !29)
!48 = !DILocation(line: 15, column: 11, scope: !44)
!49 = !DILocalVariable(name: "b", scope: !44, file: !7, line: 15, type: !29)
!50 = !DILocation(line: 15, column: 16, scope: !44)
!51 = !DILocation(line: 16, column: 7, scope: !44)
!52 = !DILocation(line: 17, column: 7, scope: !44)
!53 = !DILocation(line: 18, column: 7, scope: !44)
!54 = !DILocation(line: 19, column: 9, scope: !44)
!55 = !DILocation(line: 19, column: 5, scope: !44)
!56 = !DILocation(line: 20, column: 7, scope: !44)
!57 = !DILocation(line: 21, column: 7, scope: !44)
!58 = !DILocation(line: 22, column: 9, scope: !44)
!59 = !DILocation(line: 22, column: 5, scope: !44)
!60 = !DILocation(line: 24, column: 5, scope: !44)
