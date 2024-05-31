; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-indirect-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-indirect-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap1(i8** noundef %0, i8** noundef %1) #0 !dbg !8 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %5, metadata !20, metadata !DIExpression()), !dbg !21
  %6 = load i8**, i8*** %3, align 8, !dbg !22
  %7 = load i8*, i8** %6, align 8, !dbg !23
  store i8* %7, i8** %5, align 8, !dbg !24
  %8 = load i8**, i8*** %4, align 8, !dbg !25
  %9 = load i8*, i8** %8, align 8, !dbg !26
  %10 = load i8**, i8*** %3, align 8, !dbg !27
  store i8* %9, i8** %10, align 8, !dbg !28
  %11 = load i8*, i8** %5, align 8, !dbg !29
  %12 = load i8**, i8*** %4, align 8, !dbg !30
  store i8* %11, i8** %12, align 8, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8*** noundef %0, i8*** noundef %1) #0 !dbg !33 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !39, metadata !DIExpression()), !dbg !40
  %5 = load i8***, i8**** %3, align 8, !dbg !41
  %6 = load i8**, i8*** %5, align 8, !dbg !42
  %7 = load i8***, i8**** %4, align 8, !dbg !43
  %8 = load i8**, i8*** %7, align 8, !dbg !44
  call void @swap1(i8** noundef %6, i8** noundef %8), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i8*** noundef %0, i8*** noundef %1) #0 !dbg !47 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !48, metadata !DIExpression()), !dbg !49
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !50, metadata !DIExpression()), !dbg !51
  %5 = load i8***, i8**** %3, align 8, !dbg !52
  %6 = load i8***, i8**** %4, align 8, !dbg !53
  call void @swap(i8*** noundef %5, i8*** noundef %6), !dbg !54
  %7 = load i8***, i8**** %3, align 8, !dbg !55
  %8 = load i8***, i8**** %4, align 8, !dbg !56
  call void @swap(i8*** noundef %7, i8*** noundef %8), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !59 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !63, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %4, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i8** %5, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i8** %6, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %7, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !80, metadata !DIExpression()), !dbg !81
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !82
  store i8* %10, i8** %4, align 8, !dbg !83
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !84
  store i8* %11, i8** %5, align 8, !dbg !85
  store i8** %4, i8*** %8, align 8, !dbg !86
  store i8** %5, i8*** %9, align 8, !dbg !87
  call void @f(i8*** noundef %8, i8*** noundef %9), !dbg !88
  %12 = load i8**, i8*** %8, align 8, !dbg !89
  %13 = load i8*, i8** %12, align 8, !dbg !90
  store i8* %13, i8** %6, align 8, !dbg !91
  %14 = load i8**, i8*** %9, align 8, !dbg !92
  %15 = load i8*, i8** %14, align 8, !dbg !93
  store i8* %15, i8** %7, align 8, !dbg !94
  ret i32 0, !dbg !95
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-indirect-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "swap1", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-indirect-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 19, scope: !8)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 29, scope: !8)
!20 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 11, scope: !8)
!22 = !DILocation(line: 4, column: 10, scope: !8)
!23 = !DILocation(line: 4, column: 9, scope: !8)
!24 = !DILocation(line: 4, column: 7, scope: !8)
!25 = !DILocation(line: 5, column: 11, scope: !8)
!26 = !DILocation(line: 5, column: 10, scope: !8)
!27 = !DILocation(line: 5, column: 6, scope: !8)
!28 = !DILocation(line: 5, column: 8, scope: !8)
!29 = !DILocation(line: 6, column: 10, scope: !8)
!30 = !DILocation(line: 6, column: 6, scope: !8)
!31 = !DILocation(line: 6, column: 8, scope: !8)
!32 = !DILocation(line: 7, column: 1, scope: !8)
!33 = distinct !DISubprogram(name: "swap", scope: !9, file: !9, line: 9, type: !34, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!37 = !DILocalVariable(name: "a", arg: 1, scope: !33, file: !9, line: 9, type: !36)
!38 = !DILocation(line: 9, column: 19, scope: !33)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !33, file: !9, line: 9, type: !36)
!40 = !DILocation(line: 9, column: 30, scope: !33)
!41 = !DILocation(line: 11, column: 12, scope: !33)
!42 = !DILocation(line: 11, column: 11, scope: !33)
!43 = !DILocation(line: 11, column: 16, scope: !33)
!44 = !DILocation(line: 11, column: 15, scope: !33)
!45 = !DILocation(line: 11, column: 5, scope: !33)
!46 = !DILocation(line: 12, column: 1, scope: !33)
!47 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 14, type: !34, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!48 = !DILocalVariable(name: "a", arg: 1, scope: !47, file: !9, line: 14, type: !36)
!49 = !DILocation(line: 14, column: 16, scope: !47)
!50 = !DILocalVariable(name: "b", arg: 2, scope: !47, file: !9, line: 14, type: !36)
!51 = !DILocation(line: 14, column: 27, scope: !47)
!52 = !DILocation(line: 16, column: 10, scope: !47)
!53 = !DILocation(line: 16, column: 13, scope: !47)
!54 = !DILocation(line: 16, column: 5, scope: !47)
!55 = !DILocation(line: 17, column: 10, scope: !47)
!56 = !DILocation(line: 17, column: 13, scope: !47)
!57 = !DILocation(line: 17, column: 5, scope: !47)
!58 = !DILocation(line: 18, column: 1, scope: !47)
!59 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 20, type: !60, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!60 = !DISubroutineType(types: !61)
!61 = !{!62}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DILocalVariable(name: "b", scope: !59, file: !9, line: 22, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 20)
!67 = !DILocation(line: 22, column: 10, scope: !59)
!68 = !DILocalVariable(name: "a", scope: !59, file: !9, line: 23, type: !64)
!69 = !DILocation(line: 23, column: 10, scope: !59)
!70 = !DILocalVariable(name: "p1", scope: !59, file: !9, line: 24, type: !13)
!71 = !DILocation(line: 24, column: 11, scope: !59)
!72 = !DILocalVariable(name: "p2", scope: !59, file: !9, line: 24, type: !13)
!73 = !DILocation(line: 24, column: 16, scope: !59)
!74 = !DILocalVariable(name: "t1", scope: !59, file: !9, line: 24, type: !13)
!75 = !DILocation(line: 24, column: 21, scope: !59)
!76 = !DILocalVariable(name: "t2", scope: !59, file: !9, line: 24, type: !13)
!77 = !DILocation(line: 24, column: 26, scope: !59)
!78 = !DILocalVariable(name: "pa", scope: !59, file: !9, line: 25, type: !12)
!79 = !DILocation(line: 25, column: 12, scope: !59)
!80 = !DILocalVariable(name: "pb", scope: !59, file: !9, line: 25, type: !12)
!81 = !DILocation(line: 25, column: 18, scope: !59)
!82 = !DILocation(line: 27, column: 10, scope: !59)
!83 = !DILocation(line: 27, column: 8, scope: !59)
!84 = !DILocation(line: 28, column: 10, scope: !59)
!85 = !DILocation(line: 28, column: 8, scope: !59)
!86 = !DILocation(line: 30, column: 8, scope: !59)
!87 = !DILocation(line: 31, column: 8, scope: !59)
!88 = !DILocation(line: 33, column: 5, scope: !59)
!89 = !DILocation(line: 35, column: 11, scope: !59)
!90 = !DILocation(line: 35, column: 10, scope: !59)
!91 = !DILocation(line: 35, column: 8, scope: !59)
!92 = !DILocation(line: 36, column: 11, scope: !59)
!93 = !DILocation(line: 36, column: 10, scope: !59)
!94 = !DILocation(line: 36, column: 8, scope: !59)
!95 = !DILocation(line: 38, column: 5, scope: !59)
