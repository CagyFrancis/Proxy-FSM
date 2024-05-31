; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-recursion.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-recursion.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@n = internal global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap1(i8** noundef %0, i8** noundef %1) #0 !dbg !13 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !22, metadata !DIExpression()), !dbg !23
  %5 = load i8**, i8*** %3, align 8, !dbg !24
  %6 = load i8**, i8*** %4, align 8, !dbg !25
  call void @swap(i8** noundef %5, i8** noundef %6), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !28 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !29, metadata !DIExpression()), !dbg !30
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  %6 = load i8**, i8*** %3, align 8, !dbg !35
  %7 = load i8*, i8** %6, align 8, !dbg !36
  store i8* %7, i8** %5, align 8, !dbg !37
  %8 = load i8**, i8*** %4, align 8, !dbg !38
  %9 = load i8*, i8** %8, align 8, !dbg !39
  %10 = load i8**, i8*** %3, align 8, !dbg !40
  store i8* %9, i8** %10, align 8, !dbg !41
  %11 = load i8*, i8** %5, align 8, !dbg !42
  %12 = load i8**, i8*** %4, align 8, !dbg !43
  store i8* %11, i8** %12, align 8, !dbg !44
  %13 = load i32, i32* @n, align 4, !dbg !45
  %14 = add nsw i32 %13, -1, !dbg !45
  store i32 %14, i32* @n, align 4, !dbg !45
  %15 = load i32, i32* @n, align 4, !dbg !46
  %16 = icmp sgt i32 %15, 0, !dbg !48
  br i1 %16, label %17, label %20, !dbg !49

17:                                               ; preds = %2
  %18 = load i8**, i8*** %3, align 8, !dbg !50
  %19 = load i8**, i8*** %4, align 8, !dbg !51
  call void @swap1(i8** noundef %18, i8** noundef %19), !dbg !52
  br label %20, !dbg !52

20:                                               ; preds = %17, %2
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !57, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i8** %4, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %5, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i8** %6, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %7, metadata !70, metadata !DIExpression()), !dbg !71
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !72
  store i8* %8, i8** %4, align 8, !dbg !73
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !74
  store i8* %9, i8** %5, align 8, !dbg !75
  call void @swap(i8** noundef %4, i8** noundef %5), !dbg !76
  %10 = load i8*, i8** %5, align 8, !dbg !77
  store i8* %10, i8** %6, align 8, !dbg !78
  %11 = load i8*, i8** %4, align 8, !dbg !79
  store i8* %11, i8** %7, align 8, !dbg !80
  ret i32 0, !dbg !81
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !5, line: 1, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-recursion.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-recursion.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "swap1", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{}
!20 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !5, line: 3, type: !16)
!21 = !DILocation(line: 3, column: 19, scope: !13)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !13, file: !5, line: 3, type: !16)
!23 = !DILocation(line: 3, column: 29, scope: !13)
!24 = !DILocation(line: 5, column: 10, scope: !13)
!25 = !DILocation(line: 5, column: 13, scope: !13)
!26 = !DILocation(line: 5, column: 5, scope: !13)
!27 = !DILocation(line: 6, column: 1, scope: !13)
!28 = distinct !DISubprogram(name: "swap", scope: !5, file: !5, line: 8, type: !14, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!29 = !DILocalVariable(name: "a", arg: 1, scope: !28, file: !5, line: 8, type: !16)
!30 = !DILocation(line: 8, column: 18, scope: !28)
!31 = !DILocalVariable(name: "b", arg: 2, scope: !28, file: !5, line: 8, type: !16)
!32 = !DILocation(line: 8, column: 28, scope: !28)
!33 = !DILocalVariable(name: "c", scope: !28, file: !5, line: 10, type: !17)
!34 = !DILocation(line: 10, column: 11, scope: !28)
!35 = !DILocation(line: 11, column: 10, scope: !28)
!36 = !DILocation(line: 11, column: 9, scope: !28)
!37 = !DILocation(line: 11, column: 7, scope: !28)
!38 = !DILocation(line: 12, column: 11, scope: !28)
!39 = !DILocation(line: 12, column: 10, scope: !28)
!40 = !DILocation(line: 12, column: 6, scope: !28)
!41 = !DILocation(line: 12, column: 8, scope: !28)
!42 = !DILocation(line: 13, column: 10, scope: !28)
!43 = !DILocation(line: 13, column: 6, scope: !28)
!44 = !DILocation(line: 13, column: 8, scope: !28)
!45 = !DILocation(line: 15, column: 6, scope: !28)
!46 = !DILocation(line: 16, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !28, file: !5, line: 16, column: 9)
!48 = !DILocation(line: 16, column: 11, scope: !47)
!49 = !DILocation(line: 16, column: 9, scope: !28)
!50 = !DILocation(line: 17, column: 15, scope: !47)
!51 = !DILocation(line: 17, column: 18, scope: !47)
!52 = !DILocation(line: 17, column: 9, scope: !47)
!53 = !DILocation(line: 18, column: 1, scope: !28)
!54 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 20, type: !55, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!55 = !DISubroutineType(types: !56)
!56 = !{!6}
!57 = !DILocalVariable(name: "b", scope: !54, file: !5, line: 22, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 20)
!61 = !DILocation(line: 22, column: 10, scope: !54)
!62 = !DILocalVariable(name: "a", scope: !54, file: !5, line: 23, type: !58)
!63 = !DILocation(line: 23, column: 10, scope: !54)
!64 = !DILocalVariable(name: "p1", scope: !54, file: !5, line: 24, type: !17)
!65 = !DILocation(line: 24, column: 11, scope: !54)
!66 = !DILocalVariable(name: "p2", scope: !54, file: !5, line: 24, type: !17)
!67 = !DILocation(line: 24, column: 16, scope: !54)
!68 = !DILocalVariable(name: "pa", scope: !54, file: !5, line: 25, type: !17)
!69 = !DILocation(line: 25, column: 11, scope: !54)
!70 = !DILocalVariable(name: "pb", scope: !54, file: !5, line: 25, type: !17)
!71 = !DILocation(line: 25, column: 16, scope: !54)
!72 = !DILocation(line: 27, column: 10, scope: !54)
!73 = !DILocation(line: 27, column: 8, scope: !54)
!74 = !DILocation(line: 28, column: 10, scope: !54)
!75 = !DILocation(line: 28, column: 8, scope: !54)
!76 = !DILocation(line: 30, column: 5, scope: !54)
!77 = !DILocation(line: 32, column: 10, scope: !54)
!78 = !DILocation(line: 32, column: 8, scope: !54)
!79 = !DILocation(line: 33, column: 10, scope: !54)
!80 = !DILocation(line: 33, column: 8, scope: !54)
!81 = !DILocation(line: 35, column: 5, scope: !54)
