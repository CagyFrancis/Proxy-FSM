; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-context-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-context-0.c"
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
define dso_local void @f(i8** noundef %0, i8** noundef %1) #0 !dbg !41 {
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
define dso_local void @g(i8** noundef %0, i8** noundef %1) #0 !dbg !50 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !51, metadata !DIExpression()), !dbg !52
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !53, metadata !DIExpression()), !dbg !54
  %5 = load i8**, i8*** %3, align 8, !dbg !55
  %6 = load i8**, i8*** %4, align 8, !dbg !56
  call void @swap(i8** noundef %5, i8** noundef %6), !dbg !57
  %7 = load i8**, i8*** %3, align 8, !dbg !58
  %8 = load i8**, i8*** %4, align 8, !dbg !59
  call void @swap(i8** noundef %7, i8** noundef %8), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h(i8** noundef %0, i8** noundef %1) #0 !dbg !62 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !63, metadata !DIExpression()), !dbg !64
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = load i8**, i8*** %3, align 8, !dbg !67
  %6 = load i8**, i8*** %4, align 8, !dbg !68
  call void @f(i8** noundef %5, i8** noundef %6), !dbg !69
  %7 = load i8**, i8*** %3, align 8, !dbg !70
  %8 = load i8**, i8*** %4, align 8, !dbg !71
  call void @f(i8** noundef %7, i8** noundef %8), !dbg !72
  %9 = load i8**, i8*** %3, align 8, !dbg !73
  %10 = load i8**, i8*** %4, align 8, !dbg !74
  call void @g(i8** noundef %9, i8** noundef %10), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !77 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i8** %5, metadata !87, metadata !DIExpression()), !dbg !88
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @a, i64 0, i64 0), i8** %2, align 8, !dbg !89
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @b, i64 0, i64 0), i8** %3, align 8, !dbg !90
  call void @h(i8** noundef %2, i8** noundef %3), !dbg !91
  call void @g(i8** noundef %2, i8** noundef %3), !dbg !92
  call void @f(i8** noundef %2, i8** noundef %3), !dbg !93
  call void @g(i8** noundef %2, i8** noundef %3), !dbg !94
  %6 = load i8*, i8** %3, align 8, !dbg !95
  store i8* %6, i8** %4, align 8, !dbg !96
  %7 = load i8*, i8** %2, align 8, !dbg !97
  store i8* %7, i8** %5, align 8, !dbg !98
  ret i32 0, !dbg !99
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-context-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-context-0.c", directory: "")
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
!41 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 12, type: !19, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!42 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !7, line: 12, type: !21)
!43 = !DILocation(line: 12, column: 15, scope: !41)
!44 = !DILocalVariable(name: "b", arg: 2, scope: !41, file: !7, line: 12, type: !21)
!45 = !DILocation(line: 12, column: 25, scope: !41)
!46 = !DILocation(line: 14, column: 10, scope: !41)
!47 = !DILocation(line: 14, column: 13, scope: !41)
!48 = !DILocation(line: 14, column: 5, scope: !41)
!49 = !DILocation(line: 15, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "g", scope: !7, file: !7, line: 17, type: !19, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!51 = !DILocalVariable(name: "a", arg: 1, scope: !50, file: !7, line: 17, type: !21)
!52 = !DILocation(line: 17, column: 15, scope: !50)
!53 = !DILocalVariable(name: "b", arg: 2, scope: !50, file: !7, line: 17, type: !21)
!54 = !DILocation(line: 17, column: 25, scope: !50)
!55 = !DILocation(line: 19, column: 10, scope: !50)
!56 = !DILocation(line: 19, column: 13, scope: !50)
!57 = !DILocation(line: 19, column: 5, scope: !50)
!58 = !DILocation(line: 20, column: 10, scope: !50)
!59 = !DILocation(line: 20, column: 13, scope: !50)
!60 = !DILocation(line: 20, column: 5, scope: !50)
!61 = !DILocation(line: 21, column: 1, scope: !50)
!62 = distinct !DISubprogram(name: "h", scope: !7, file: !7, line: 23, type: !19, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!63 = !DILocalVariable(name: "a", arg: 1, scope: !62, file: !7, line: 23, type: !21)
!64 = !DILocation(line: 23, column: 15, scope: !62)
!65 = !DILocalVariable(name: "b", arg: 2, scope: !62, file: !7, line: 23, type: !21)
!66 = !DILocation(line: 23, column: 25, scope: !62)
!67 = !DILocation(line: 25, column: 7, scope: !62)
!68 = !DILocation(line: 25, column: 10, scope: !62)
!69 = !DILocation(line: 25, column: 5, scope: !62)
!70 = !DILocation(line: 26, column: 7, scope: !62)
!71 = !DILocation(line: 26, column: 10, scope: !62)
!72 = !DILocation(line: 26, column: 5, scope: !62)
!73 = !DILocation(line: 27, column: 7, scope: !62)
!74 = !DILocation(line: 27, column: 10, scope: !62)
!75 = !DILocation(line: 27, column: 5, scope: !62)
!76 = !DILocation(line: 28, column: 1, scope: !62)
!77 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 30, type: !78, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!78 = !DISubroutineType(types: !79)
!79 = !{!80}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DILocalVariable(name: "p1", scope: !77, file: !7, line: 32, type: !22)
!82 = !DILocation(line: 32, column: 11, scope: !77)
!83 = !DILocalVariable(name: "p2", scope: !77, file: !7, line: 32, type: !22)
!84 = !DILocation(line: 32, column: 16, scope: !77)
!85 = !DILocalVariable(name: "pa", scope: !77, file: !7, line: 33, type: !22)
!86 = !DILocation(line: 33, column: 11, scope: !77)
!87 = !DILocalVariable(name: "pb", scope: !77, file: !7, line: 33, type: !22)
!88 = !DILocation(line: 33, column: 16, scope: !77)
!89 = !DILocation(line: 35, column: 8, scope: !77)
!90 = !DILocation(line: 36, column: 8, scope: !77)
!91 = !DILocation(line: 38, column: 5, scope: !77)
!92 = !DILocation(line: 39, column: 5, scope: !77)
!93 = !DILocation(line: 40, column: 5, scope: !77)
!94 = !DILocation(line: 41, column: 5, scope: !77)
!95 = !DILocation(line: 43, column: 10, scope: !77)
!96 = !DILocation(line: 43, column: 8, scope: !77)
!97 = !DILocation(line: 44, column: 10, scope: !77)
!98 = !DILocation(line: 44, column: 8, scope: !77)
!99 = !DILocation(line: 46, column: 5, scope: !77)
