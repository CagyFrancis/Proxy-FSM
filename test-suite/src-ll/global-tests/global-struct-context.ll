; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-struct-context.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-struct-context.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

@b = dso_local global i32 0, align 4, !dbg !0
@z = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !21
@x = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !12
@q = dso_local global %struct.mystruct* null, align 8, !dbg !28
@a = dso_local global i32 0, align 4, !dbg !5
@r1 = dso_local global %struct.mystruct* null, align 8, !dbg !23
@p = dso_local global i32* null, align 8, !dbg !9
@r2 = dso_local global %struct.mystruct* null, align 8, !dbg !26
@y = dso_local global %struct.mystruct zeroinitializer, align 8, !dbg !19

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mystruct* @foo(%struct.mystruct* noundef %0) #0 !dbg !36 {
  %2 = alloca %struct.mystruct*, align 8
  store %struct.mystruct* %0, %struct.mystruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mystruct** %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load %struct.mystruct*, %struct.mystruct** %2, align 8, !dbg !42
  ret %struct.mystruct* %3, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* @b, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @z, i32 0, i32 1), align 8, !dbg !47
  store %struct.mystruct* @x, %struct.mystruct** @q, align 8, !dbg !48
  store i32* @a, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @x, i32 0, i32 0), align 8, !dbg !49
  %2 = call %struct.mystruct* @foo(%struct.mystruct* noundef @x), !dbg !50
  store %struct.mystruct* %2, %struct.mystruct** @r1, align 8, !dbg !51
  %3 = load %struct.mystruct*, %struct.mystruct** @r1, align 8, !dbg !52
  %4 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %3, i32 0, i32 0, !dbg !53
  %5 = load i32*, i32** %4, align 8, !dbg !53
  store i32* %5, i32** @p, align 8, !dbg !54
  %6 = load i32*, i32** getelementptr inbounds (%struct.mystruct, %struct.mystruct* @z, i32 0, i32 1), align 8, !dbg !55
  %7 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !56
  %8 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 0, !dbg !57
  store i32* %6, i32** %8, align 8, !dbg !58
  %9 = load %struct.mystruct*, %struct.mystruct** @q, align 8, !dbg !59
  %10 = call %struct.mystruct* @foo(%struct.mystruct* noundef %9), !dbg !60
  store %struct.mystruct* %10, %struct.mystruct** @r2, align 8, !dbg !61
  %11 = load %struct.mystruct*, %struct.mystruct** @r2, align 8, !dbg !62
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %11, i32 0, i32 0, !dbg !63
  %13 = load i32*, i32** %12, align 8, !dbg !63
  store i32* %13, i32** @p, align 8, !dbg !64
  ret i32 0, !dbg !65
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-struct-context.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !9, !12, !19, !21, !23, !26, !28}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-struct-context.c", directory: "")
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
!24 = distinct !DIGlobalVariable(name: "r1", scope: !2, file: !7, line: 10, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "r2", scope: !2, file: !7, line: 10, type: !25, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 11, type: !25, isLocal: false, isDefinition: true)
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!36 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 13, type: !37, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!25, !25}
!39 = !{}
!40 = !DILocalVariable(name: "p", arg: 1, scope: !36, file: !7, line: 13, type: !25)
!41 = !DILocation(line: 13, column: 25, scope: !36)
!42 = !DILocation(line: 15, column: 12, scope: !36)
!43 = !DILocation(line: 15, column: 5, scope: !36)
!44 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 18, type: !45, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!45 = !DISubroutineType(types: !46)
!46 = !{!8}
!47 = !DILocation(line: 20, column: 10, scope: !44)
!48 = !DILocation(line: 21, column: 7, scope: !44)
!49 = !DILocation(line: 23, column: 10, scope: !44)
!50 = !DILocation(line: 24, column: 10, scope: !44)
!51 = !DILocation(line: 24, column: 8, scope: !44)
!52 = !DILocation(line: 25, column: 9, scope: !44)
!53 = !DILocation(line: 25, column: 13, scope: !44)
!54 = !DILocation(line: 25, column: 7, scope: !44)
!55 = !DILocation(line: 27, column: 17, scope: !44)
!56 = !DILocation(line: 27, column: 7, scope: !44)
!57 = !DILocation(line: 27, column: 10, scope: !44)
!58 = !DILocation(line: 27, column: 13, scope: !44)
!59 = !DILocation(line: 28, column: 14, scope: !44)
!60 = !DILocation(line: 28, column: 10, scope: !44)
!61 = !DILocation(line: 28, column: 8, scope: !44)
!62 = !DILocation(line: 29, column: 9, scope: !44)
!63 = !DILocation(line: 29, column: 13, scope: !44)
!64 = !DILocation(line: 29, column: 7, scope: !44)
!65 = !DILocation(line: 31, column: 5, scope: !44)
