; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-context-indirect.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-context-indirect.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@a = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !0
@b = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap1(i8** noundef %0, i8** noundef %1) #0 !dbg !18 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !24, metadata !DIExpression()), !dbg !25
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %5, metadata !28, metadata !DIExpression()), !dbg !29
  %6 = load i8**, i8*** %3, align 8, !dbg !30
  %7 = load i8*, i8** %6, align 8, !dbg !31
  store i8* %7, i8** %5, align 8, !dbg !32
  %8 = load i8**, i8*** %4, align 8, !dbg !33
  %9 = load i8*, i8** %8, align 8, !dbg !34
  %10 = load i8**, i8*** %3, align 8, !dbg !35
  store i8* %9, i8** %10, align 8, !dbg !36
  %11 = load i8*, i8** %5, align 8, !dbg !37
  %12 = load i8**, i8*** %4, align 8, !dbg !38
  store i8* %11, i8** %12, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8*** noundef %0, i8*** noundef %1) #0 !dbg !41 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !45, metadata !DIExpression()), !dbg !46
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !51, metadata !DIExpression()), !dbg !52
  %7 = load i8***, i8**** %3, align 8, !dbg !53
  %8 = load i8**, i8*** %7, align 8, !dbg !54
  store i8** %8, i8*** %5, align 8, !dbg !55
  %9 = load i8***, i8**** %4, align 8, !dbg !56
  %10 = load i8**, i8*** %9, align 8, !dbg !57
  store i8** %10, i8*** %6, align 8, !dbg !58
  %11 = load i8**, i8*** %5, align 8, !dbg !59
  %12 = load i8**, i8*** %6, align 8, !dbg !60
  call void @swap1(i8** noundef %11, i8** noundef %12), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i8*** noundef %0, i8*** noundef %1) #0 !dbg !63 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !64, metadata !DIExpression()), !dbg !65
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !66, metadata !DIExpression()), !dbg !67
  %5 = load i8***, i8**** %3, align 8, !dbg !68
  %6 = load i8***, i8**** %4, align 8, !dbg !69
  call void @swap(i8*** noundef %5, i8*** noundef %6), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g(i8*** noundef %0, i8*** noundef %1) #0 !dbg !72 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !73, metadata !DIExpression()), !dbg !74
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !75, metadata !DIExpression()), !dbg !76
  %5 = load i8***, i8**** %3, align 8, !dbg !77
  %6 = load i8***, i8**** %4, align 8, !dbg !78
  call void @swap(i8*** noundef %5, i8*** noundef %6), !dbg !79
  %7 = load i8***, i8**** %3, align 8, !dbg !80
  %8 = load i8***, i8**** %4, align 8, !dbg !81
  call void @swap(i8*** noundef %7, i8*** noundef %8), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h(i8*** noundef %0, i8*** noundef %1) #0 !dbg !84 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !85, metadata !DIExpression()), !dbg !86
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !87, metadata !DIExpression()), !dbg !88
  %5 = load i8***, i8**** %3, align 8, !dbg !89
  %6 = load i8***, i8**** %4, align 8, !dbg !90
  call void @f(i8*** noundef %5, i8*** noundef %6), !dbg !91
  %7 = load i8***, i8**** %3, align 8, !dbg !92
  %8 = load i8***, i8**** %4, align 8, !dbg !93
  call void @f(i8*** noundef %7, i8*** noundef %8), !dbg !94
  %9 = load i8***, i8**** %3, align 8, !dbg !95
  %10 = load i8***, i8**** %4, align 8, !dbg !96
  call void @g(i8*** noundef %9, i8*** noundef %10), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %4, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %5, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %6, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %7, metadata !113, metadata !DIExpression()), !dbg !114
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @a, i64 0, i64 0), i8** %4, align 8, !dbg !115
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @b, i64 0, i64 0), i8** %5, align 8, !dbg !116
  store i8** %4, i8*** %2, align 8, !dbg !117
  store i8** %5, i8*** %3, align 8, !dbg !118
  call void @h(i8*** noundef %2, i8*** noundef %3), !dbg !119
  call void @g(i8*** noundef %2, i8*** noundef %3), !dbg !120
  call void @f(i8*** noundef %2, i8*** noundef %3), !dbg !121
  call void @g(i8*** noundef %2, i8*** noundef %3), !dbg !122
  %8 = load i8**, i8*** %3, align 8, !dbg !123
  %9 = load i8*, i8** %8, align 8, !dbg !124
  store i8* %9, i8** %6, align 8, !dbg !125
  %10 = load i8**, i8*** %2, align 8, !dbg !126
  %11 = load i8*, i8** %10, align 8, !dbg !127
  store i8* %11, i8** %7, align 8, !dbg !128
  ret i32 0, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-context-indirect.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-context-indirect.c", directory: "")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "swap1", scope: !7, file: !7, line: 4, type: !19, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!23 = !{}
!24 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !7, line: 4, type: !21)
!25 = !DILocation(line: 4, column: 19, scope: !18)
!26 = !DILocalVariable(name: "b", arg: 2, scope: !18, file: !7, line: 4, type: !21)
!27 = !DILocation(line: 4, column: 29, scope: !18)
!28 = !DILocalVariable(name: "c", scope: !18, file: !7, line: 6, type: !22)
!29 = !DILocation(line: 6, column: 11, scope: !18)
!30 = !DILocation(line: 7, column: 10, scope: !18)
!31 = !DILocation(line: 7, column: 9, scope: !18)
!32 = !DILocation(line: 7, column: 7, scope: !18)
!33 = !DILocation(line: 8, column: 11, scope: !18)
!34 = !DILocation(line: 8, column: 10, scope: !18)
!35 = !DILocation(line: 8, column: 6, scope: !18)
!36 = !DILocation(line: 8, column: 8, scope: !18)
!37 = !DILocation(line: 9, column: 10, scope: !18)
!38 = !DILocation(line: 9, column: 6, scope: !18)
!39 = !DILocation(line: 9, column: 8, scope: !18)
!40 = !DILocation(line: 10, column: 1, scope: !18)
!41 = distinct !DISubprogram(name: "swap", scope: !7, file: !7, line: 12, type: !42, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!45 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !7, line: 12, type: !44)
!46 = !DILocation(line: 12, column: 19, scope: !41)
!47 = !DILocalVariable(name: "b", arg: 2, scope: !41, file: !7, line: 12, type: !44)
!48 = !DILocation(line: 12, column: 30, scope: !41)
!49 = !DILocalVariable(name: "c", scope: !41, file: !7, line: 14, type: !21)
!50 = !DILocation(line: 14, column: 12, scope: !41)
!51 = !DILocalVariable(name: "d", scope: !41, file: !7, line: 15, type: !21)
!52 = !DILocation(line: 15, column: 12, scope: !41)
!53 = !DILocation(line: 17, column: 10, scope: !41)
!54 = !DILocation(line: 17, column: 9, scope: !41)
!55 = !DILocation(line: 17, column: 7, scope: !41)
!56 = !DILocation(line: 18, column: 10, scope: !41)
!57 = !DILocation(line: 18, column: 9, scope: !41)
!58 = !DILocation(line: 18, column: 7, scope: !41)
!59 = !DILocation(line: 19, column: 11, scope: !41)
!60 = !DILocation(line: 19, column: 14, scope: !41)
!61 = !DILocation(line: 19, column: 5, scope: !41)
!62 = !DILocation(line: 20, column: 1, scope: !41)
!63 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 22, type: !42, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!64 = !DILocalVariable(name: "a", arg: 1, scope: !63, file: !7, line: 22, type: !44)
!65 = !DILocation(line: 22, column: 16, scope: !63)
!66 = !DILocalVariable(name: "b", arg: 2, scope: !63, file: !7, line: 22, type: !44)
!67 = !DILocation(line: 22, column: 27, scope: !63)
!68 = !DILocation(line: 24, column: 10, scope: !63)
!69 = !DILocation(line: 24, column: 13, scope: !63)
!70 = !DILocation(line: 24, column: 5, scope: !63)
!71 = !DILocation(line: 25, column: 1, scope: !63)
!72 = distinct !DISubprogram(name: "g", scope: !7, file: !7, line: 27, type: !42, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!73 = !DILocalVariable(name: "a", arg: 1, scope: !72, file: !7, line: 27, type: !44)
!74 = !DILocation(line: 27, column: 16, scope: !72)
!75 = !DILocalVariable(name: "b", arg: 2, scope: !72, file: !7, line: 27, type: !44)
!76 = !DILocation(line: 27, column: 27, scope: !72)
!77 = !DILocation(line: 29, column: 10, scope: !72)
!78 = !DILocation(line: 29, column: 13, scope: !72)
!79 = !DILocation(line: 29, column: 5, scope: !72)
!80 = !DILocation(line: 30, column: 10, scope: !72)
!81 = !DILocation(line: 30, column: 13, scope: !72)
!82 = !DILocation(line: 30, column: 5, scope: !72)
!83 = !DILocation(line: 31, column: 1, scope: !72)
!84 = distinct !DISubprogram(name: "h", scope: !7, file: !7, line: 33, type: !42, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!85 = !DILocalVariable(name: "a", arg: 1, scope: !84, file: !7, line: 33, type: !44)
!86 = !DILocation(line: 33, column: 16, scope: !84)
!87 = !DILocalVariable(name: "b", arg: 2, scope: !84, file: !7, line: 33, type: !44)
!88 = !DILocation(line: 33, column: 27, scope: !84)
!89 = !DILocation(line: 35, column: 7, scope: !84)
!90 = !DILocation(line: 35, column: 10, scope: !84)
!91 = !DILocation(line: 35, column: 5, scope: !84)
!92 = !DILocation(line: 36, column: 7, scope: !84)
!93 = !DILocation(line: 36, column: 10, scope: !84)
!94 = !DILocation(line: 36, column: 5, scope: !84)
!95 = !DILocation(line: 37, column: 7, scope: !84)
!96 = !DILocation(line: 37, column: 10, scope: !84)
!97 = !DILocation(line: 37, column: 5, scope: !84)
!98 = !DILocation(line: 38, column: 1, scope: !84)
!99 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 40, type: !100, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!100 = !DISubroutineType(types: !101)
!101 = !{!102}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DILocalVariable(name: "p1", scope: !99, file: !7, line: 42, type: !21)
!104 = !DILocation(line: 42, column: 12, scope: !99)
!105 = !DILocalVariable(name: "p2", scope: !99, file: !7, line: 42, type: !21)
!106 = !DILocation(line: 42, column: 18, scope: !99)
!107 = !DILocalVariable(name: "pa", scope: !99, file: !7, line: 43, type: !22)
!108 = !DILocation(line: 43, column: 11, scope: !99)
!109 = !DILocalVariable(name: "pb", scope: !99, file: !7, line: 43, type: !22)
!110 = !DILocation(line: 43, column: 16, scope: !99)
!111 = !DILocalVariable(name: "pa1", scope: !99, file: !7, line: 44, type: !22)
!112 = !DILocation(line: 44, column: 11, scope: !99)
!113 = !DILocalVariable(name: "pb1", scope: !99, file: !7, line: 44, type: !22)
!114 = !DILocation(line: 44, column: 17, scope: !99)
!115 = !DILocation(line: 46, column: 8, scope: !99)
!116 = !DILocation(line: 47, column: 8, scope: !99)
!117 = !DILocation(line: 49, column: 8, scope: !99)
!118 = !DILocation(line: 50, column: 8, scope: !99)
!119 = !DILocation(line: 52, column: 5, scope: !99)
!120 = !DILocation(line: 53, column: 5, scope: !99)
!121 = !DILocation(line: 54, column: 5, scope: !99)
!122 = !DILocation(line: 55, column: 5, scope: !99)
!123 = !DILocation(line: 57, column: 12, scope: !99)
!124 = !DILocation(line: 57, column: 11, scope: !99)
!125 = !DILocation(line: 57, column: 9, scope: !99)
!126 = !DILocation(line: 58, column: 12, scope: !99)
!127 = !DILocation(line: 58, column: 11, scope: !99)
!128 = !DILocation(line: 58, column: 9, scope: !99)
!129 = !DILocation(line: 60, column: 5, scope: !99)
