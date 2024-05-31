; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-call-struct.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-call-struct.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { [20 x i8], i32, i32* }

@x = dso_local global i32 0, align 4, !dbg !0
@global = dso_local global %struct.MyStruct { [20 x i8] c"abcdefg\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 20, i32* @x }, align 8, !dbg !5
@y = dso_local global i32 0, align 4, !dbg !19

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !27 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !32, metadata !DIExpression()), !dbg !33
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !34, metadata !DIExpression()), !dbg !35
  %5 = load i32**, i32*** %3, align 8, !dbg !36
  store i32* @x, i32** %5, align 8, !dbg !37
  %6 = load i32**, i32*** %4, align 8, !dbg !38
  store i32* @y, i32** %6, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0, i32** noundef %1) #0 !dbg !41 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !42, metadata !DIExpression()), !dbg !43
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = load i32**, i32*** %3, align 8, !dbg !46
  store i32* @x, i32** %5, align 8, !dbg !47
  %6 = load i32**, i32*** %4, align 8, !dbg !48
  store i32* @x, i32** %6, align 8, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32** %3, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32** %4, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !62, metadata !DIExpression()), !dbg !63
  store i32** %2, i32*** %5, align 8, !dbg !64
  store i32** %3, i32*** %6, align 8, !dbg !65
  %7 = load i32**, i32*** %5, align 8, !dbg !66
  %8 = load i32**, i32*** %6, align 8, !dbg !67
  call void @bar(i32** noundef %7, i32** noundef %8), !dbg !68
  %9 = load i32*, i32** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @global, i32 0, i32 2), align 8, !dbg !69
  store i32* %9, i32** %4, align 8, !dbg !70
  ret i32 0, !dbg !71
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 13, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-call-struct.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !19}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !7, line: 14, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-call-struct.c", directory: "")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !7, line: 6, size: 256, elements: !9)
!9 = !{!10, !15, !17}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !8, file: !7, line: 8, baseType: !11, size: 160)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !13)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 20)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !8, file: !7, line: 9, baseType: !16, size: 32, offset: 160)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !8, file: !7, line: 10, baseType: !18, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 13, type: !16, isLocal: false, isDefinition: true)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!27 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 16, type: !28, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!31 = !{}
!32 = !DILocalVariable(name: "pp", arg: 1, scope: !27, file: !7, line: 16, type: !30)
!33 = !DILocation(line: 16, column: 16, scope: !27)
!34 = !DILocalVariable(name: "qq", arg: 2, scope: !27, file: !7, line: 16, type: !30)
!35 = !DILocation(line: 16, column: 26, scope: !27)
!36 = !DILocation(line: 18, column: 3, scope: !27)
!37 = !DILocation(line: 18, column: 6, scope: !27)
!38 = !DILocation(line: 19, column: 3, scope: !27)
!39 = !DILocation(line: 19, column: 6, scope: !27)
!40 = !DILocation(line: 20, column: 1, scope: !27)
!41 = distinct !DISubprogram(name: "bar", scope: !7, file: !7, line: 22, type: !28, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!42 = !DILocalVariable(name: "pp", arg: 1, scope: !41, file: !7, line: 22, type: !30)
!43 = !DILocation(line: 22, column: 16, scope: !41)
!44 = !DILocalVariable(name: "qq", arg: 2, scope: !41, file: !7, line: 22, type: !30)
!45 = !DILocation(line: 22, column: 26, scope: !41)
!46 = !DILocation(line: 24, column: 3, scope: !41)
!47 = !DILocation(line: 24, column: 6, scope: !41)
!48 = !DILocation(line: 25, column: 3, scope: !41)
!49 = !DILocation(line: 25, column: 6, scope: !41)
!50 = !DILocation(line: 26, column: 1, scope: !41)
!51 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 28, type: !52, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!52 = !DISubroutineType(types: !53)
!53 = !{!16}
!54 = !DILocalVariable(name: "p", scope: !51, file: !7, line: 30, type: !18)
!55 = !DILocation(line: 30, column: 7, scope: !51)
!56 = !DILocalVariable(name: "q", scope: !51, file: !7, line: 30, type: !18)
!57 = !DILocation(line: 30, column: 11, scope: !51)
!58 = !DILocalVariable(name: "r", scope: !51, file: !7, line: 30, type: !18)
!59 = !DILocation(line: 30, column: 15, scope: !51)
!60 = !DILocalVariable(name: "pp", scope: !51, file: !7, line: 31, type: !30)
!61 = !DILocation(line: 31, column: 8, scope: !51)
!62 = !DILocalVariable(name: "qq", scope: !51, file: !7, line: 31, type: !30)
!63 = !DILocation(line: 31, column: 14, scope: !51)
!64 = !DILocation(line: 33, column: 5, scope: !51)
!65 = !DILocation(line: 34, column: 5, scope: !51)
!66 = !DILocation(line: 35, column: 6, scope: !51)
!67 = !DILocation(line: 35, column: 10, scope: !51)
!68 = !DILocation(line: 35, column: 2, scope: !51)
!69 = !DILocation(line: 36, column: 13, scope: !51)
!70 = !DILocation(line: 36, column: 4, scope: !51)
!71 = !DILocation(line: 38, column: 2, scope: !51)
