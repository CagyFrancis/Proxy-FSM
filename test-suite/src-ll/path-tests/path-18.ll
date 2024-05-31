; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-18.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-18.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@x = dso_local global i32 0, align 4, !dbg !0
@f = dso_local global i32* null, align 8, !dbg !12
@e = dso_local global i32* null, align 8, !dbg !14
@y = dso_local global i32 0, align 4, !dbg !5
@q = dso_local global i32* null, align 8, !dbg !9
@d = dso_local global i32 0, align 4, !dbg !16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !24 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* @x, i32** @f, align 8, !dbg !31
  %3 = load i32, i32* @x, align 4, !dbg !32
  %4 = icmp ne i32 %3, 0, !dbg !32
  br i1 %4, label %5, label %6, !dbg !34

5:                                                ; preds = %1
  store i32** @e, i32*** %2, align 8, !dbg !35
  store i32* @y, i32** @f, align 8, !dbg !37
  br label %6, !dbg !38

6:                                                ; preds = %5, %1
  %7 = load i32*, i32** @f, align 8, !dbg !39
  %8 = load i32**, i32*** %2, align 8, !dbg !40
  store i32* %7, i32** %8, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !43 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %3, metadata !48, metadata !DIExpression()), !dbg !49
  store i32** @q, i32*** %2, align 8, !dbg !50
  store i32* @d, i32** @f, align 8, !dbg !51
  %4 = load i32**, i32*** %2, align 8, !dbg !52
  call void @foo(i32** noundef %4), !dbg !53
  ret i32 0, !dbg !54
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-18.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !9, !12, !14, !16}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-18.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 1, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !7, line: 1, type: !11, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !7, line: 1, type: !11, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!24 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 3, type: !25, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!28 = !{}
!29 = !DILocalVariable(name: "p", arg: 1, scope: !24, file: !7, line: 3, type: !27)
!30 = !DILocation(line: 3, column: 16, scope: !24)
!31 = !DILocation(line: 5, column: 4, scope: !24)
!32 = !DILocation(line: 6, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !7, line: 6, column: 6)
!34 = !DILocation(line: 6, column: 6, scope: !24)
!35 = !DILocation(line: 8, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !7, line: 7, column: 2)
!37 = !DILocation(line: 9, column: 5, scope: !36)
!38 = !DILocation(line: 10, column: 2, scope: !36)
!39 = !DILocation(line: 11, column: 7, scope: !24)
!40 = !DILocation(line: 11, column: 3, scope: !24)
!41 = !DILocation(line: 11, column: 5, scope: !24)
!42 = !DILocation(line: 12, column: 1, scope: !24)
!43 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 14, type: !44, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!44 = !DISubroutineType(types: !45)
!45 = !{!8}
!46 = !DILocalVariable(name: "a", scope: !43, file: !7, line: 16, type: !27)
!47 = !DILocation(line: 16, column: 8, scope: !43)
!48 = !DILocalVariable(name: "c", scope: !43, file: !7, line: 16, type: !8)
!49 = !DILocation(line: 16, column: 11, scope: !43)
!50 = !DILocation(line: 17, column: 4, scope: !43)
!51 = !DILocation(line: 18, column: 4, scope: !43)
!52 = !DILocation(line: 19, column: 6, scope: !43)
!53 = !DILocation(line: 19, column: 2, scope: !43)
!54 = !DILocation(line: 21, column: 2, scope: !43)
