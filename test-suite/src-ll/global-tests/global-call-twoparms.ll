; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-call-twoparms.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-call-twoparms.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32, void (i32**, i32**)* }

@x = dso_local global i32 0, align 4, !dbg !0
@y = dso_local global i32 0, align 4, !dbg !18
@global = dso_local global %struct.MyStruct zeroinitializer, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !26 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !28, metadata !DIExpression()), !dbg !29
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !30, metadata !DIExpression()), !dbg !31
  %5 = load i32**, i32*** %3, align 8, !dbg !32
  store i32* @x, i32** %5, align 8, !dbg !33
  %6 = load i32**, i32*** %4, align 8, !dbg !34
  store i32* @y, i32** %6, align 8, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0, i32** noundef %1) #0 !dbg !37 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !40, metadata !DIExpression()), !dbg !41
  %5 = load i32**, i32*** %3, align 8, !dbg !42
  store i32* @x, i32** %5, align 8, !dbg !43
  %6 = load i32**, i32*** %4, align 8, !dbg !44
  store i32* @x, i32** %6, align 8, !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init() #0 !dbg !47 {
  store void (i32**, i32**)* @foo, void (i32**, i32**)** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @global, i32 0, i32 1), align 8, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init2() #0 !dbg !52 {
  store void (i32**, i32**)* @bar, void (i32**, i32**)** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @global, i32 0, i32 1), align 8, !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run(i32** noundef %0, i32** noundef %1) #0 !dbg !55 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !56, metadata !DIExpression()), !dbg !57
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !58, metadata !DIExpression()), !dbg !59
  %5 = load void (i32**, i32**)*, void (i32**, i32**)** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @global, i32 0, i32 1), align 8, !dbg !60
  %6 = load i32**, i32*** %3, align 8, !dbg !61
  %7 = load i32**, i32*** %4, align 8, !dbg !62
  call void %5(i32** noundef %6, i32** noundef %7), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32** %3, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !74, metadata !DIExpression()), !dbg !75
  store i32** %2, i32*** %4, align 8, !dbg !76
  store i32** %3, i32*** %5, align 8, !dbg !77
  call void @init(), !dbg !78
  %6 = load i32**, i32*** %4, align 8, !dbg !79
  %7 = load i32**, i32*** %5, align 8, !dbg !80
  call void @run(i32** noundef %6, i32** noundef %7), !dbg !81
  ret i32 0, !dbg !82
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 13, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-call-twoparms.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0, !18}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !7, line: 12, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-call-twoparms.c", directory: "")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !7, line: 6, size: 128, elements: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !8, file: !7, line: 8, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !8, file: !7, line: 9, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 13, type: !11, isLocal: false, isDefinition: true)
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!26 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 15, type: !14, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !27)
!27 = !{}
!28 = !DILocalVariable(name: "pp", arg: 1, scope: !26, file: !7, line: 15, type: !16)
!29 = !DILocation(line: 15, column: 16, scope: !26)
!30 = !DILocalVariable(name: "qq", arg: 2, scope: !26, file: !7, line: 15, type: !16)
!31 = !DILocation(line: 15, column: 26, scope: !26)
!32 = !DILocation(line: 17, column: 3, scope: !26)
!33 = !DILocation(line: 17, column: 6, scope: !26)
!34 = !DILocation(line: 18, column: 3, scope: !26)
!35 = !DILocation(line: 18, column: 6, scope: !26)
!36 = !DILocation(line: 19, column: 1, scope: !26)
!37 = distinct !DISubprogram(name: "bar", scope: !7, file: !7, line: 21, type: !14, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !27)
!38 = !DILocalVariable(name: "pp", arg: 1, scope: !37, file: !7, line: 21, type: !16)
!39 = !DILocation(line: 21, column: 16, scope: !37)
!40 = !DILocalVariable(name: "qq", arg: 2, scope: !37, file: !7, line: 21, type: !16)
!41 = !DILocation(line: 21, column: 26, scope: !37)
!42 = !DILocation(line: 23, column: 3, scope: !37)
!43 = !DILocation(line: 23, column: 6, scope: !37)
!44 = !DILocation(line: 24, column: 3, scope: !37)
!45 = !DILocation(line: 24, column: 6, scope: !37)
!46 = !DILocation(line: 25, column: 1, scope: !37)
!47 = distinct !DISubprogram(name: "init", scope: !7, file: !7, line: 27, type: !48, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !27)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !DILocation(line: 29, column: 12, scope: !47)
!51 = !DILocation(line: 30, column: 1, scope: !47)
!52 = distinct !DISubprogram(name: "init2", scope: !7, file: !7, line: 32, type: !48, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !27)
!53 = !DILocation(line: 34, column: 12, scope: !52)
!54 = !DILocation(line: 35, column: 1, scope: !52)
!55 = distinct !DISubprogram(name: "run", scope: !7, file: !7, line: 37, type: !14, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !27)
!56 = !DILocalVariable(name: "pp", arg: 1, scope: !55, file: !7, line: 37, type: !16)
!57 = !DILocation(line: 37, column: 16, scope: !55)
!58 = !DILocalVariable(name: "qq", arg: 2, scope: !55, file: !7, line: 37, type: !16)
!59 = !DILocation(line: 37, column: 26, scope: !55)
!60 = !DILocation(line: 39, column: 11, scope: !55)
!61 = !DILocation(line: 39, column: 15, scope: !55)
!62 = !DILocation(line: 39, column: 19, scope: !55)
!63 = !DILocation(line: 39, column: 2, scope: !55)
!64 = !DILocation(line: 40, column: 1, scope: !55)
!65 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 42, type: !66, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !27)
!66 = !DISubroutineType(types: !67)
!67 = !{!11}
!68 = !DILocalVariable(name: "p", scope: !65, file: !7, line: 44, type: !17)
!69 = !DILocation(line: 44, column: 7, scope: !65)
!70 = !DILocalVariable(name: "q", scope: !65, file: !7, line: 44, type: !17)
!71 = !DILocation(line: 44, column: 11, scope: !65)
!72 = !DILocalVariable(name: "pp", scope: !65, file: !7, line: 45, type: !16)
!73 = !DILocation(line: 45, column: 8, scope: !65)
!74 = !DILocalVariable(name: "qq", scope: !65, file: !7, line: 45, type: !16)
!75 = !DILocation(line: 45, column: 14, scope: !65)
!76 = !DILocation(line: 46, column: 5, scope: !65)
!77 = !DILocation(line: 47, column: 5, scope: !65)
!78 = !DILocation(line: 48, column: 2, scope: !65)
!79 = !DILocation(line: 49, column: 6, scope: !65)
!80 = !DILocation(line: 49, column: 10, scope: !65)
!81 = !DILocation(line: 49, column: 2, scope: !65)
!82 = !DILocation(line: 53, column: 2, scope: !65)
