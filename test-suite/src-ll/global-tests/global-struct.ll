; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-struct.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-struct.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

@b = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !21
@x = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !12
@q = dso_local global %struct.mystruct* null, align 8, !dbg !23
@a = dso_local global i32 0, align 4, !dbg !5
@y = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !19
@p = dso_local global i32* null, align 8, !dbg !9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @b, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @z, i32 0, i32 1), align 8, !dbg !36
  store %struct.mystruct* @x, %struct.mystruct** @q, align 8, !dbg !37
  store i32* @a, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @x, i32 0, i32 0), align 8, !dbg !38
  %2 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @x, i32 0, i32 0), align 8, !dbg !39
  store i32* %2, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !40
  %3 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !41
  store i32* %3, i32** @p, align 8, !dbg !42
  %4 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @z, i32 0, i32 1), align 8, !dbg !43
  %5 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !44
  %6 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 0, !dbg !45
  store i32* %4, i32** %6, align 8, !dbg !46
  %7 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !47
  %8 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 0, !dbg !48
  %9 = load i32*, i32** %8, align 8, !dbg !48
  store i32* %9, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !49
  %10 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !50
  store i32* %10, i32** @p, align 8, !dbg !51
  ret i32 0, !dbg !52
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-struct.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9, !12, !19, !21, !23}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-struct.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 8, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 9, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !7, line: 5, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !7, line: 1, size: 128, elements: !16)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !15, file: !7, line: 3, baseType: !11, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !15, file: !7, line: 4, baseType: !11, size: 64, offset: 64)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 9, type: !14, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 9, type: !14, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 10, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!32 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 12, type: !33, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!8}
!35 = !{}
!36 = !DILocation(line: 14, column: 10, scope: !32)
!37 = !DILocation(line: 15, column: 7, scope: !32)
!38 = !DILocation(line: 17, column: 10, scope: !32)
!39 = !DILocation(line: 18, column: 14, scope: !32)
!40 = !DILocation(line: 18, column: 10, scope: !32)
!41 = !DILocation(line: 19, column: 11, scope: !32)
!42 = !DILocation(line: 19, column: 7, scope: !32)
!43 = !DILocation(line: 21, column: 17, scope: !32)
!44 = !DILocation(line: 21, column: 7, scope: !32)
!45 = !DILocation(line: 21, column: 10, scope: !32)
!46 = !DILocation(line: 21, column: 13, scope: !32)
!47 = !DILocation(line: 22, column: 14, scope: !32)
!48 = !DILocation(line: 22, column: 17, scope: !32)
!49 = !DILocation(line: 22, column: 10, scope: !32)
!50 = !DILocation(line: 23, column: 11, scope: !32)
!51 = !DILocation(line: 23, column: 7, scope: !32)
!52 = !DILocation(line: 25, column: 5, scope: !32)
