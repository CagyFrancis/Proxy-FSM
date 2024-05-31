; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-funcptr-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-funcptr-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global void (i8**, i8**)* null, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !18 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %5, metadata !24, metadata !DIExpression()), !dbg !25
  %6 = load i8**, i8*** %3, align 8, !dbg !26
  %7 = load i8*, i8** %6, align 8, !dbg !27
  store i8* %7, i8** %5, align 8, !dbg !28
  %8 = load i8**, i8*** %4, align 8, !dbg !29
  %9 = load i8*, i8** %8, align 8, !dbg !30
  %10 = load i8**, i8*** %3, align 8, !dbg !31
  store i8* %9, i8** %10, align 8, !dbg !32
  %11 = load i8*, i8** %5, align 8, !dbg !33
  %12 = load i8**, i8*** %4, align 8, !dbg !34
  store i8* %11, i8** %12, align 8, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registerhandle(void (i8**, i8**)* noundef %0) #0 !dbg !37 {
  %2 = alloca void (i8**, i8**)*, align 8
  store void (i8**, i8**)* %0, void (i8**, i8**)** %2, align 8
  call void @llvm.dbg.declare(metadata void (i8**, i8**)** %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load void (i8**, i8**)*, void (i8**, i8**)** %2, align 8, !dbg !42
  store void (i8**, i8**)* %3, void (i8**, i8**)** @p, align 8, !dbg !43
  ret void, !dbg !44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !45 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %3, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i8** %5, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !57, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !62, metadata !DIExpression()), !dbg !63
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !64
  store i8* %8, i8** %2, align 8, !dbg !65
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !66
  store i8* %9, i8** %3, align 8, !dbg !67
  call void @registerhandle(void (i8**, i8**)* noundef @swap), !dbg !68
  %10 = load void (i8**, i8**)*, void (i8**, i8**)** @p, align 8, !dbg !69
  call void %10(i8** noundef %2, i8** noundef %3), !dbg !70
  %11 = load i8*, i8** %3, align 8, !dbg !71
  store i8* %11, i8** %4, align 8, !dbg !72
  %12 = load i8*, i8** %2, align 8, !dbg !73
  store i8* %12, i8** %5, align 8, !dbg !74
  ret i32 0, !dbg !75
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-funcptr-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-funcptr-1.c", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "swap", scope: !5, file: !5, line: 3, type: !7, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!19 = !{}
!20 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !5, line: 3, type: !9)
!21 = !DILocation(line: 3, column: 18, scope: !18)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !18, file: !5, line: 3, type: !9)
!23 = !DILocation(line: 3, column: 28, scope: !18)
!24 = !DILocalVariable(name: "c", scope: !18, file: !5, line: 5, type: !10)
!25 = !DILocation(line: 5, column: 11, scope: !18)
!26 = !DILocation(line: 6, column: 10, scope: !18)
!27 = !DILocation(line: 6, column: 9, scope: !18)
!28 = !DILocation(line: 6, column: 7, scope: !18)
!29 = !DILocation(line: 7, column: 11, scope: !18)
!30 = !DILocation(line: 7, column: 10, scope: !18)
!31 = !DILocation(line: 7, column: 6, scope: !18)
!32 = !DILocation(line: 7, column: 8, scope: !18)
!33 = !DILocation(line: 8, column: 10, scope: !18)
!34 = !DILocation(line: 8, column: 6, scope: !18)
!35 = !DILocation(line: 8, column: 8, scope: !18)
!36 = !DILocation(line: 9, column: 1, scope: !18)
!37 = distinct !DISubprogram(name: "registerhandle", scope: !5, file: !5, line: 11, type: !38, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !6}
!40 = !DILocalVariable(name: "f", arg: 1, scope: !37, file: !5, line: 11, type: !6)
!41 = !DILocation(line: 11, column: 28, scope: !37)
!42 = !DILocation(line: 13, column: 9, scope: !37)
!43 = !DILocation(line: 13, column: 7, scope: !37)
!44 = !DILocation(line: 14, column: 1, scope: !37)
!45 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 16, type: !46, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!46 = !DISubroutineType(types: !47)
!47 = !{!48}
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DILocalVariable(name: "p1", scope: !45, file: !5, line: 18, type: !10)
!50 = !DILocation(line: 18, column: 11, scope: !45)
!51 = !DILocalVariable(name: "p2", scope: !45, file: !5, line: 18, type: !10)
!52 = !DILocation(line: 18, column: 16, scope: !45)
!53 = !DILocalVariable(name: "pa", scope: !45, file: !5, line: 19, type: !10)
!54 = !DILocation(line: 19, column: 11, scope: !45)
!55 = !DILocalVariable(name: "pb", scope: !45, file: !5, line: 19, type: !10)
!56 = !DILocation(line: 19, column: 16, scope: !45)
!57 = !DILocalVariable(name: "b", scope: !45, file: !5, line: 20, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 20)
!61 = !DILocation(line: 20, column: 10, scope: !45)
!62 = !DILocalVariable(name: "a", scope: !45, file: !5, line: 21, type: !58)
!63 = !DILocation(line: 21, column: 10, scope: !45)
!64 = !DILocation(line: 23, column: 10, scope: !45)
!65 = !DILocation(line: 23, column: 8, scope: !45)
!66 = !DILocation(line: 24, column: 10, scope: !45)
!67 = !DILocation(line: 24, column: 8, scope: !45)
!68 = !DILocation(line: 26, column: 5, scope: !45)
!69 = !DILocation(line: 28, column: 7, scope: !45)
!70 = !DILocation(line: 28, column: 5, scope: !45)
!71 = !DILocation(line: 30, column: 10, scope: !45)
!72 = !DILocation(line: 30, column: 8, scope: !45)
!73 = !DILocation(line: 31, column: 10, scope: !45)
!74 = !DILocation(line: 31, column: 8, scope: !45)
!75 = !DILocation(line: 33, column: 5, scope: !45)
