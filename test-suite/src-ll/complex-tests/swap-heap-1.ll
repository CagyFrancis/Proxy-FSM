; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-heap-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-heap-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@ga = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !16 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !22, metadata !DIExpression()), !dbg !23
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %5, metadata !26, metadata !DIExpression()), !dbg !27
  %6 = load i8**, i8*** %3, align 8, !dbg !28
  %7 = load i8*, i8** %6, align 8, !dbg !29
  store i8* %7, i8** %5, align 8, !dbg !30
  %8 = load i8**, i8*** %4, align 8, !dbg !31
  %9 = load i8*, i8** %8, align 8, !dbg !32
  %10 = load i8**, i8*** %3, align 8, !dbg !33
  store i8* %9, i8** %10, align 8, !dbg !34
  %11 = load i8*, i8** %5, align 8, !dbg !35
  %12 = load i8**, i8*** %4, align 8, !dbg !36
  store i8* %11, i8** %12, align 8, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mymalloc(i32 noundef %0) #0 !dbg !39 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i32, i32* %2, align 4, !dbg !46
  %4 = zext i32 %3 to i64, !dbg !46
  %5 = call i8* @malloc(i64 noundef %4), !dbg !47
  ret i8* %5, !dbg !48
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @my_malloc(i32 noundef %0, i8** noundef %1) #0 !dbg !49 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !52, metadata !DIExpression()), !dbg !53
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %5, metadata !56, metadata !DIExpression()), !dbg !57
  %6 = load i32, i32* %3, align 4, !dbg !58
  %7 = call i8* @mymalloc(i32 noundef %6), !dbg !59
  store i8* %7, i8** %5, align 8, !dbg !60
  %8 = load i8*, i8** %5, align 8, !dbg !61
  %9 = load i8**, i8*** %4, align 8, !dbg !62
  store i8* %8, i8** %9, align 8, !dbg !63
  %10 = load i8*, i8** %5, align 8, !dbg !64
  ret i8* %10, !dbg !65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !66 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i8** %3, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i8** %4, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !DIExpression()), !dbg !77
  %6 = call i8* @my_malloc(i32 noundef 10, i8** noundef %2), !dbg !78
  %7 = call i8* @my_malloc(i32 noundef 20, i8** noundef %3), !dbg !79
  call void @swap(i8** noundef %2, i8** noundef %3), !dbg !80
  %8 = load i8*, i8** %3, align 8, !dbg !81
  store i8* %8, i8** %4, align 8, !dbg !82
  %9 = load i8*, i8** %2, align 8, !dbg !83
  store i8* %9, i8** %5, align 8, !dbg !84
  ret i32 0, !dbg !85
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ga", scope: !2, file: !5, line: 3, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-heap-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-heap-1.c", directory: "")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 20)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "swap", scope: !5, file: !5, line: 5, type: !17, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!21 = !{}
!22 = !DILocalVariable(name: "a", arg: 1, scope: !16, file: !5, line: 5, type: !19)
!23 = !DILocation(line: 5, column: 18, scope: !16)
!24 = !DILocalVariable(name: "b", arg: 2, scope: !16, file: !5, line: 5, type: !19)
!25 = !DILocation(line: 5, column: 28, scope: !16)
!26 = !DILocalVariable(name: "c", scope: !16, file: !5, line: 7, type: !20)
!27 = !DILocation(line: 7, column: 11, scope: !16)
!28 = !DILocation(line: 8, column: 10, scope: !16)
!29 = !DILocation(line: 8, column: 9, scope: !16)
!30 = !DILocation(line: 8, column: 7, scope: !16)
!31 = !DILocation(line: 9, column: 11, scope: !16)
!32 = !DILocation(line: 9, column: 10, scope: !16)
!33 = !DILocation(line: 9, column: 6, scope: !16)
!34 = !DILocation(line: 9, column: 8, scope: !16)
!35 = !DILocation(line: 10, column: 10, scope: !16)
!36 = !DILocation(line: 10, column: 6, scope: !16)
!37 = !DILocation(line: 10, column: 8, scope: !16)
!38 = !DILocation(line: 11, column: 1, scope: !16)
!39 = distinct !DISubprogram(name: "mymalloc", scope: !5, file: !5, line: 13, type: !40, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "i", arg: 1, scope: !39, file: !5, line: 13, type: !43)
!45 = !DILocation(line: 13, column: 25, scope: !39)
!46 = !DILocation(line: 15, column: 19, scope: !39)
!47 = !DILocation(line: 15, column: 12, scope: !39)
!48 = !DILocation(line: 15, column: 5, scope: !39)
!49 = distinct !DISubprogram(name: "my_malloc", scope: !5, file: !5, line: 18, type: !50, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!50 = !DISubroutineType(types: !51)
!51 = !{!42, !43, !19}
!52 = !DILocalVariable(name: "i", arg: 1, scope: !49, file: !5, line: 18, type: !43)
!53 = !DILocation(line: 18, column: 26, scope: !49)
!54 = !DILocalVariable(name: "ret", arg: 2, scope: !49, file: !5, line: 18, type: !19)
!55 = !DILocation(line: 18, column: 36, scope: !49)
!56 = !DILocalVariable(name: "p", scope: !49, file: !5, line: 20, type: !20)
!57 = !DILocation(line: 20, column: 11, scope: !49)
!58 = !DILocation(line: 21, column: 18, scope: !49)
!59 = !DILocation(line: 21, column: 9, scope: !49)
!60 = !DILocation(line: 21, column: 7, scope: !49)
!61 = !DILocation(line: 22, column: 12, scope: !49)
!62 = !DILocation(line: 22, column: 6, scope: !49)
!63 = !DILocation(line: 22, column: 10, scope: !49)
!64 = !DILocation(line: 23, column: 12, scope: !49)
!65 = !DILocation(line: 23, column: 5, scope: !49)
!66 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 26, type: !67, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!67 = !DISubroutineType(types: !68)
!68 = !{!69}
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DILocalVariable(name: "p1", scope: !66, file: !5, line: 28, type: !20)
!71 = !DILocation(line: 28, column: 11, scope: !66)
!72 = !DILocalVariable(name: "p2", scope: !66, file: !5, line: 28, type: !20)
!73 = !DILocation(line: 28, column: 16, scope: !66)
!74 = !DILocalVariable(name: "pa", scope: !66, file: !5, line: 29, type: !20)
!75 = !DILocation(line: 29, column: 11, scope: !66)
!76 = !DILocalVariable(name: "pb", scope: !66, file: !5, line: 29, type: !20)
!77 = !DILocation(line: 29, column: 16, scope: !66)
!78 = !DILocation(line: 31, column: 5, scope: !66)
!79 = !DILocation(line: 32, column: 5, scope: !66)
!80 = !DILocation(line: 34, column: 5, scope: !66)
!81 = !DILocation(line: 36, column: 10, scope: !66)
!82 = !DILocation(line: 36, column: 8, scope: !66)
!83 = !DILocation(line: 37, column: 10, scope: !66)
!84 = !DILocation(line: 37, column: 8, scope: !66)
!85 = !DILocation(line: 39, column: 5, scope: !66)
