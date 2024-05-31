; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-context-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-context-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@a = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !0
@b = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !18 {
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
define dso_local void @f1(i8** noundef %0, i8** noundef %1) #0 !dbg !41 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !42, metadata !DIExpression()), !dbg !43
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = load i8**, i8*** %3, align 8, !dbg !46
  %6 = load i8**, i8*** %4, align 8, !dbg !47
  call void @swap(i8** noundef %5, i8** noundef %6), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2(i8** noundef %0, i8** noundef %1) #0 !dbg !50 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !51, metadata !DIExpression()), !dbg !52
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !53, metadata !DIExpression()), !dbg !54
  %5 = load i8**, i8*** %3, align 8, !dbg !55
  %6 = load i8**, i8*** %4, align 8, !dbg !56
  call void @swap(i8** noundef %5, i8** noundef %6), !dbg !57
  %7 = load i8**, i8*** %4, align 8, !dbg !58
  %8 = load i8**, i8*** %3, align 8, !dbg !59
  call void @f1(i8** noundef %7, i8** noundef %8), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f3(i8** noundef %0, i8** noundef %1) #0 !dbg !62 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !63, metadata !DIExpression()), !dbg !64
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = load i8**, i8*** %3, align 8, !dbg !67
  %6 = load i8**, i8*** %4, align 8, !dbg !68
  call void @f1(i8** noundef %5, i8** noundef %6), !dbg !69
  %7 = load i8**, i8*** %4, align 8, !dbg !70
  %8 = load i8**, i8*** %3, align 8, !dbg !71
  call void @f2(i8** noundef %7, i8** noundef %8), !dbg !72
  ret void, !dbg !73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f5(i8** noundef %0, i8** noundef %1) #0 !dbg !74 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !75, metadata !DIExpression()), !dbg !76
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !77, metadata !DIExpression()), !dbg !78
  %5 = load i8**, i8*** %3, align 8, !dbg !79
  %6 = load i8**, i8*** %4, align 8, !dbg !80
  call void @f3(i8** noundef %5, i8** noundef %6), !dbg !81
  %7 = load i8**, i8*** %4, align 8, !dbg !82
  %8 = load i8**, i8*** %3, align 8, !dbg !83
  call void @f2(i8** noundef %7, i8** noundef %8), !dbg !84
  ret void, !dbg !85
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f8(i8** noundef %0, i8** noundef %1) #0 !dbg !86 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !87, metadata !DIExpression()), !dbg !88
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !89, metadata !DIExpression()), !dbg !90
  %5 = load i8**, i8*** %3, align 8, !dbg !91
  %6 = load i8**, i8*** %4, align 8, !dbg !92
  call void @f3(i8** noundef %5, i8** noundef %6), !dbg !93
  %7 = load i8**, i8*** %3, align 8, !dbg !94
  %8 = load i8**, i8*** %4, align 8, !dbg !95
  call void @f5(i8** noundef %7, i8** noundef %8), !dbg !96
  ret void, !dbg !97
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g(i8** noundef %0, i8** noundef %1) #0 !dbg !98 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !99, metadata !DIExpression()), !dbg !100
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !101, metadata !DIExpression()), !dbg !102
  %5 = load i8**, i8*** %3, align 8, !dbg !103
  %6 = load i8**, i8*** %4, align 8, !dbg !104
  call void @swap(i8** noundef %5, i8** noundef %6), !dbg !105
  %7 = load i8**, i8*** %3, align 8, !dbg !106
  %8 = load i8**, i8*** %4, align 8, !dbg !107
  call void @swap(i8** noundef %7, i8** noundef %8), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h(i8** noundef %0, i8** noundef %1) #0 !dbg !110 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !111, metadata !DIExpression()), !dbg !112
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !113, metadata !DIExpression()), !dbg !114
  %5 = load i8**, i8*** %3, align 8, !dbg !115
  %6 = load i8**, i8*** %4, align 8, !dbg !116
  call void @f8(i8** noundef %5, i8** noundef %6), !dbg !117
  %7 = load i8**, i8*** %3, align 8, !dbg !118
  %8 = load i8**, i8*** %4, align 8, !dbg !119
  call void @f5(i8** noundef %7, i8** noundef %8), !dbg !120
  %9 = load i8**, i8*** %3, align 8, !dbg !121
  %10 = load i8**, i8*** %4, align 8, !dbg !122
  call void @g(i8** noundef %9, i8** noundef %10), !dbg !123
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %3, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i8** %4, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %5, metadata !135, metadata !DIExpression()), !dbg !136
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @a, i64 0, i64 0), i8** %2, align 8, !dbg !137
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @b, i64 0, i64 0), i8** %3, align 8, !dbg !138
  call void @h(i8** noundef %2, i8** noundef %3), !dbg !139
  call void @g(i8** noundef %3, i8** noundef %2), !dbg !140
  call void @f5(i8** noundef %2, i8** noundef %3), !dbg !141
  call void @g(i8** noundef %3, i8** noundef %2), !dbg !142
  %6 = load i8*, i8** %3, align 8, !dbg !143
  store i8* %6, i8** %4, align 8, !dbg !144
  %7 = load i8*, i8** %2, align 8, !dbg !145
  store i8* %7, i8** %5, align 8, !dbg !146
  ret i32 0, !dbg !147
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-context-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-context-1.c", directory: "")
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
!18 = distinct !DISubprogram(name: "swap", scope: !7, file: !7, line: 4, type: !19, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!23 = !{}
!24 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !7, line: 4, type: !21)
!25 = !DILocation(line: 4, column: 18, scope: !18)
!26 = !DILocalVariable(name: "b", arg: 2, scope: !18, file: !7, line: 4, type: !21)
!27 = !DILocation(line: 4, column: 28, scope: !18)
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
!41 = distinct !DISubprogram(name: "f1", scope: !7, file: !7, line: 12, type: !19, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!42 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !7, line: 12, type: !21)
!43 = !DILocation(line: 12, column: 16, scope: !41)
!44 = !DILocalVariable(name: "b", arg: 2, scope: !41, file: !7, line: 12, type: !21)
!45 = !DILocation(line: 12, column: 26, scope: !41)
!46 = !DILocation(line: 14, column: 10, scope: !41)
!47 = !DILocation(line: 14, column: 13, scope: !41)
!48 = !DILocation(line: 14, column: 5, scope: !41)
!49 = !DILocation(line: 15, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "f2", scope: !7, file: !7, line: 17, type: !19, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!51 = !DILocalVariable(name: "a", arg: 1, scope: !50, file: !7, line: 17, type: !21)
!52 = !DILocation(line: 17, column: 16, scope: !50)
!53 = !DILocalVariable(name: "b", arg: 2, scope: !50, file: !7, line: 17, type: !21)
!54 = !DILocation(line: 17, column: 26, scope: !50)
!55 = !DILocation(line: 19, column: 10, scope: !50)
!56 = !DILocation(line: 19, column: 13, scope: !50)
!57 = !DILocation(line: 19, column: 5, scope: !50)
!58 = !DILocation(line: 20, column: 8, scope: !50)
!59 = !DILocation(line: 20, column: 11, scope: !50)
!60 = !DILocation(line: 20, column: 5, scope: !50)
!61 = !DILocation(line: 21, column: 1, scope: !50)
!62 = distinct !DISubprogram(name: "f3", scope: !7, file: !7, line: 23, type: !19, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!63 = !DILocalVariable(name: "a", arg: 1, scope: !62, file: !7, line: 23, type: !21)
!64 = !DILocation(line: 23, column: 16, scope: !62)
!65 = !DILocalVariable(name: "b", arg: 2, scope: !62, file: !7, line: 23, type: !21)
!66 = !DILocation(line: 23, column: 26, scope: !62)
!67 = !DILocation(line: 25, column: 8, scope: !62)
!68 = !DILocation(line: 25, column: 11, scope: !62)
!69 = !DILocation(line: 25, column: 5, scope: !62)
!70 = !DILocation(line: 26, column: 8, scope: !62)
!71 = !DILocation(line: 26, column: 11, scope: !62)
!72 = !DILocation(line: 26, column: 5, scope: !62)
!73 = !DILocation(line: 27, column: 1, scope: !62)
!74 = distinct !DISubprogram(name: "f5", scope: !7, file: !7, line: 29, type: !19, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!75 = !DILocalVariable(name: "a", arg: 1, scope: !74, file: !7, line: 29, type: !21)
!76 = !DILocation(line: 29, column: 16, scope: !74)
!77 = !DILocalVariable(name: "b", arg: 2, scope: !74, file: !7, line: 29, type: !21)
!78 = !DILocation(line: 29, column: 26, scope: !74)
!79 = !DILocation(line: 31, column: 8, scope: !74)
!80 = !DILocation(line: 31, column: 11, scope: !74)
!81 = !DILocation(line: 31, column: 5, scope: !74)
!82 = !DILocation(line: 32, column: 8, scope: !74)
!83 = !DILocation(line: 32, column: 11, scope: !74)
!84 = !DILocation(line: 32, column: 5, scope: !74)
!85 = !DILocation(line: 33, column: 1, scope: !74)
!86 = distinct !DISubprogram(name: "f8", scope: !7, file: !7, line: 35, type: !19, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!87 = !DILocalVariable(name: "a", arg: 1, scope: !86, file: !7, line: 35, type: !21)
!88 = !DILocation(line: 35, column: 16, scope: !86)
!89 = !DILocalVariable(name: "b", arg: 2, scope: !86, file: !7, line: 35, type: !21)
!90 = !DILocation(line: 35, column: 26, scope: !86)
!91 = !DILocation(line: 37, column: 8, scope: !86)
!92 = !DILocation(line: 37, column: 11, scope: !86)
!93 = !DILocation(line: 37, column: 5, scope: !86)
!94 = !DILocation(line: 38, column: 8, scope: !86)
!95 = !DILocation(line: 38, column: 11, scope: !86)
!96 = !DILocation(line: 38, column: 5, scope: !86)
!97 = !DILocation(line: 39, column: 1, scope: !86)
!98 = distinct !DISubprogram(name: "g", scope: !7, file: !7, line: 41, type: !19, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!99 = !DILocalVariable(name: "a", arg: 1, scope: !98, file: !7, line: 41, type: !21)
!100 = !DILocation(line: 41, column: 15, scope: !98)
!101 = !DILocalVariable(name: "b", arg: 2, scope: !98, file: !7, line: 41, type: !21)
!102 = !DILocation(line: 41, column: 25, scope: !98)
!103 = !DILocation(line: 43, column: 10, scope: !98)
!104 = !DILocation(line: 43, column: 13, scope: !98)
!105 = !DILocation(line: 43, column: 5, scope: !98)
!106 = !DILocation(line: 44, column: 10, scope: !98)
!107 = !DILocation(line: 44, column: 13, scope: !98)
!108 = !DILocation(line: 44, column: 5, scope: !98)
!109 = !DILocation(line: 45, column: 1, scope: !98)
!110 = distinct !DISubprogram(name: "h", scope: !7, file: !7, line: 47, type: !19, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!111 = !DILocalVariable(name: "a", arg: 1, scope: !110, file: !7, line: 47, type: !21)
!112 = !DILocation(line: 47, column: 15, scope: !110)
!113 = !DILocalVariable(name: "b", arg: 2, scope: !110, file: !7, line: 47, type: !21)
!114 = !DILocation(line: 47, column: 25, scope: !110)
!115 = !DILocation(line: 49, column: 8, scope: !110)
!116 = !DILocation(line: 49, column: 11, scope: !110)
!117 = !DILocation(line: 49, column: 5, scope: !110)
!118 = !DILocation(line: 50, column: 8, scope: !110)
!119 = !DILocation(line: 50, column: 11, scope: !110)
!120 = !DILocation(line: 50, column: 5, scope: !110)
!121 = !DILocation(line: 51, column: 7, scope: !110)
!122 = !DILocation(line: 51, column: 10, scope: !110)
!123 = !DILocation(line: 51, column: 5, scope: !110)
!124 = !DILocation(line: 52, column: 1, scope: !110)
!125 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 54, type: !126, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!126 = !DISubroutineType(types: !127)
!127 = !{!128}
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DILocalVariable(name: "p1", scope: !125, file: !7, line: 56, type: !22)
!130 = !DILocation(line: 56, column: 11, scope: !125)
!131 = !DILocalVariable(name: "p2", scope: !125, file: !7, line: 56, type: !22)
!132 = !DILocation(line: 56, column: 16, scope: !125)
!133 = !DILocalVariable(name: "pa", scope: !125, file: !7, line: 57, type: !22)
!134 = !DILocation(line: 57, column: 11, scope: !125)
!135 = !DILocalVariable(name: "pb", scope: !125, file: !7, line: 57, type: !22)
!136 = !DILocation(line: 57, column: 16, scope: !125)
!137 = !DILocation(line: 59, column: 8, scope: !125)
!138 = !DILocation(line: 60, column: 8, scope: !125)
!139 = !DILocation(line: 62, column: 5, scope: !125)
!140 = !DILocation(line: 63, column: 5, scope: !125)
!141 = !DILocation(line: 64, column: 5, scope: !125)
!142 = !DILocation(line: 65, column: 5, scope: !125)
!143 = !DILocation(line: 67, column: 10, scope: !125)
!144 = !DILocation(line: 67, column: 8, scope: !125)
!145 = !DILocation(line: 68, column: 10, scope: !125)
!146 = !DILocation(line: 68, column: 8, scope: !125)
!147 = !DILocation(line: 70, column: 5, scope: !125)
