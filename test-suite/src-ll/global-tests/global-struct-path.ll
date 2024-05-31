; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-struct-path.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-struct-path.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

@b = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !23
@c = dso_local global i32 0, align 4, !dbg !9
@w = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !25
@x = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !14
@q = dso_local global %struct.mystruct* null, align 8, !dbg !27
@a = dso_local global i32 0, align 4, !dbg !5
@y = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !21
@p = dso_local global i32* null, align 8, !dbg !11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @b, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @z, i32 0, i32 1), align 8, !dbg !40
  store i32* @c, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @w, i32 0, i32 1), align 8, !dbg !41
  store %struct.mystruct* @x, %struct.mystruct** @q, align 8, !dbg !42
  %2 = load i32, i32* @c, align 4, !dbg !43
  %3 = icmp ne i32 %2, 0, !dbg !43
  br i1 %3, label %4, label %5, !dbg !45

4:                                                ; preds = %0
  store i32* @a, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @x, i32 0, i32 0), align 8, !dbg !46
  br label %6, !dbg !47

5:                                                ; preds = %0
  store i32* @b, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @x, i32 0, i32 0), align 8, !dbg !48
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @x, i32 0, i32 0), align 8, !dbg !49
  store i32* %7, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !50
  %8 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !51
  store i32* %8, i32** @p, align 8, !dbg !52
  %9 = load i32, i32* @c, align 4, !dbg !53
  %10 = icmp ne i32 %9, 0, !dbg !53
  br i1 %10, label %11, label %15, !dbg !55

11:                                               ; preds = %6
  %12 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @z, i32 0, i32 1), align 8, !dbg !56
  %13 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !57
  %14 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %13, i32 0, i32 0, !dbg !58
  store i32* %12, i32** %14, align 8, !dbg !59
  br label %19, !dbg !60

15:                                               ; preds = %6
  %16 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @w, i32 0, i32 1), align 8, !dbg !61
  %17 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !62
  %18 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %17, i32 0, i32 0, !dbg !63
  store i32* %16, i32** %18, align 8, !dbg !64
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !65
  %21 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %20, i32 0, i32 0, !dbg !66
  %22 = load i32*, i32** %21, align 8, !dbg !66
  store i32* %22, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !67
  %23 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @y, i32 0, i32 1), align 8, !dbg !68
  store i32* %23, i32** @p, align 8, !dbg !69
  ret i32 0, !dbg !70
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-struct-path.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9, !11, !14, !21, !23, !25, !27}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-struct-path.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 8, type: !13, isLocal: false, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 9, type: !16, isLocal: false, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !7, line: 5, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !7, line: 1, size: 128, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !17, file: !7, line: 3, baseType: !13, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !17, file: !7, line: 4, baseType: !13, size: 64, offset: 64)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 9, type: !16, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 9, type: !16, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "w", scope: !2, file: !7, line: 9, type: !16, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 10, type: !29, isLocal: false, isDefinition: true)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!36 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 12, type: !37, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!8}
!39 = !{}
!40 = !DILocation(line: 14, column: 10, scope: !36)
!41 = !DILocation(line: 15, column: 10, scope: !36)
!42 = !DILocation(line: 16, column: 7, scope: !36)
!43 = !DILocation(line: 18, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !36, file: !7, line: 18, column: 9)
!45 = !DILocation(line: 18, column: 9, scope: !36)
!46 = !DILocation(line: 19, column: 14, scope: !44)
!47 = !DILocation(line: 19, column: 9, scope: !44)
!48 = !DILocation(line: 21, column: 14, scope: !44)
!49 = !DILocation(line: 22, column: 14, scope: !36)
!50 = !DILocation(line: 22, column: 10, scope: !36)
!51 = !DILocation(line: 23, column: 11, scope: !36)
!52 = !DILocation(line: 23, column: 7, scope: !36)
!53 = !DILocation(line: 25, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !36, file: !7, line: 25, column: 9)
!55 = !DILocation(line: 25, column: 9, scope: !36)
!56 = !DILocation(line: 26, column: 21, scope: !54)
!57 = !DILocation(line: 26, column: 11, scope: !54)
!58 = !DILocation(line: 26, column: 14, scope: !54)
!59 = !DILocation(line: 26, column: 17, scope: !54)
!60 = !DILocation(line: 26, column: 9, scope: !54)
!61 = !DILocation(line: 28, column: 21, scope: !54)
!62 = !DILocation(line: 28, column: 11, scope: !54)
!63 = !DILocation(line: 28, column: 14, scope: !54)
!64 = !DILocation(line: 28, column: 17, scope: !54)
!65 = !DILocation(line: 29, column: 14, scope: !36)
!66 = !DILocation(line: 29, column: 17, scope: !36)
!67 = !DILocation(line: 29, column: 10, scope: !36)
!68 = !DILocation(line: 30, column: 11, scope: !36)
!69 = !DILocation(line: 30, column: 7, scope: !36)
!70 = !DILocation(line: 32, column: 5, scope: !36)
