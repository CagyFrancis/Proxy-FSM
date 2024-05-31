; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-context.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-context.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@b = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global i32* null, align 8, !dbg !14
@x = dso_local global i32* null, align 8, !dbg !9
@p = dso_local global i32** null, align 8, !dbg !20
@a = dso_local global i32 0, align 4, !dbg !5
@r1 = dso_local global i32* null, align 8, !dbg !16
@y = dso_local global i32* null, align 8, !dbg !12
@r2 = dso_local global i32* null, align 8, !dbg !18

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !29 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i32*, i32** %2, align 8, !dbg !35
  ret i32* %3, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @b, i32** @z, align 8, !dbg !40
  store i32** @x, i32*** @p, align 8, !dbg !41
  store i32* @a, i32** @x, align 8, !dbg !42
  %2 = load i32*, i32** @x, align 8, !dbg !43
  %3 = call i32* @foo(i32* noundef %2), !dbg !44
  store i32* %3, i32** @r1, align 8, !dbg !45
  %4 = load i32*, i32** @r1, align 8, !dbg !46
  store i32* %4, i32** @y, align 8, !dbg !47
  %5 = load i32*, i32** @z, align 8, !dbg !48
  %6 = load i32**, i32*** @p, align 8, !dbg !49
  store i32* %5, i32** %6, align 8, !dbg !50
  %7 = load i32**, i32*** @p, align 8, !dbg !51
  %8 = load i32*, i32** %7, align 8, !dbg !52
  %9 = call i32* @foo(i32* noundef %8), !dbg !53
  store i32* %9, i32** @r2, align 8, !dbg !54
  %10 = load i32**, i32*** @p, align 8, !dbg !55
  %11 = load i32*, i32** %10, align 8, !dbg !56
  store i32* %11, i32** @y, align 8, !dbg !57
  ret i32 0, !dbg !58
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-context.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9, !12, !14, !16, !18, !20}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-context.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 2, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 2, type: !11, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 2, type: !11, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "r1", scope: !2, file: !7, line: 3, type: !11, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "r2", scope: !2, file: !7, line: 3, type: !11, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 4, type: !22, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!29 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 6, type: !30, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!11, !11}
!32 = !{}
!33 = !DILocalVariable(name: "p", arg: 1, scope: !29, file: !7, line: 6, type: !11)
!34 = !DILocation(line: 6, column: 15, scope: !29)
!35 = !DILocation(line: 8, column: 12, scope: !29)
!36 = !DILocation(line: 8, column: 5, scope: !29)
!37 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 11, type: !38, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !32)
!38 = !DISubroutineType(types: !39)
!39 = !{!8}
!40 = !DILocation(line: 13, column: 7, scope: !37)
!41 = !DILocation(line: 14, column: 7, scope: !37)
!42 = !DILocation(line: 16, column: 7, scope: !37)
!43 = !DILocation(line: 17, column: 14, scope: !37)
!44 = !DILocation(line: 17, column: 10, scope: !37)
!45 = !DILocation(line: 17, column: 8, scope: !37)
!46 = !DILocation(line: 18, column: 9, scope: !37)
!47 = !DILocation(line: 18, column: 7, scope: !37)
!48 = !DILocation(line: 20, column: 10, scope: !37)
!49 = !DILocation(line: 20, column: 6, scope: !37)
!50 = !DILocation(line: 20, column: 8, scope: !37)
!51 = !DILocation(line: 21, column: 15, scope: !37)
!52 = !DILocation(line: 21, column: 14, scope: !37)
!53 = !DILocation(line: 21, column: 10, scope: !37)
!54 = !DILocation(line: 21, column: 8, scope: !37)
!55 = !DILocation(line: 22, column: 10, scope: !37)
!56 = !DILocation(line: 22, column: 9, scope: !37)
!57 = !DILocation(line: 22, column: 7, scope: !37)
!58 = !DILocation(line: 24, column: 5, scope: !37)
