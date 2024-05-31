; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-indirect-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-indirect-0.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8*** noundef %0, i8*** noundef %1) #0 !dbg !8 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8*** %0, i8**** %3, align 8
  call void @llvm.dbg.declare(metadata i8**** %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i8*** %1, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %7, metadata !25, metadata !DIExpression()), !dbg !26
  %8 = load i8***, i8**** %3, align 8, !dbg !27
  %9 = load i8**, i8*** %8, align 8, !dbg !28
  store i8** %9, i8*** %5, align 8, !dbg !29
  %10 = load i8***, i8**** %4, align 8, !dbg !30
  %11 = load i8**, i8*** %10, align 8, !dbg !31
  store i8** %11, i8*** %6, align 8, !dbg !32
  %12 = load i8**, i8*** %5, align 8, !dbg !33
  %13 = load i8*, i8** %12, align 8, !dbg !34
  store i8* %13, i8** %7, align 8, !dbg !35
  %14 = load i8**, i8*** %6, align 8, !dbg !36
  %15 = load i8*, i8** %14, align 8, !dbg !37
  %16 = load i8**, i8*** %5, align 8, !dbg !38
  store i8* %15, i8** %16, align 8, !dbg !39
  %17 = load i8*, i8** %7, align 8, !dbg !40
  %18 = load i8**, i8*** %6, align 8, !dbg !41
  store i8* %17, i8** %18, align 8, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
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
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !48, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i8** %5, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %6, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i8** %7, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !65, metadata !DIExpression()), !dbg !66
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !67
  store i8* %10, i8** %4, align 8, !dbg !68
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !69
  store i8* %11, i8** %5, align 8, !dbg !70
  store i8** %4, i8*** %8, align 8, !dbg !71
  store i8** %5, i8*** %9, align 8, !dbg !72
  call void @swap(i8*** noundef %8, i8*** noundef %9), !dbg !73
  %12 = load i8**, i8*** %8, align 8, !dbg !74
  %13 = load i8*, i8** %12, align 8, !dbg !75
  store i8* %13, i8** %6, align 8, !dbg !76
  %14 = load i8**, i8*** %9, align 8, !dbg !77
  %15 = load i8*, i8** %14, align 8, !dbg !78
  store i8* %15, i8** %7, align 8, !dbg !79
  ret i32 0, !dbg !80
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-indirect-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "swap", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-indirect-0.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!18 = !DILocation(line: 1, column: 19, scope: !8)
!19 = !DILocalVariable(name: "b", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!20 = !DILocation(line: 1, column: 30, scope: !8)
!21 = !DILocalVariable(name: "a1", scope: !8, file: !9, line: 3, type: !13)
!22 = !DILocation(line: 3, column: 12, scope: !8)
!23 = !DILocalVariable(name: "b1", scope: !8, file: !9, line: 3, type: !13)
!24 = !DILocation(line: 3, column: 18, scope: !8)
!25 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 4, type: !14)
!26 = !DILocation(line: 4, column: 11, scope: !8)
!27 = !DILocation(line: 5, column: 11, scope: !8)
!28 = !DILocation(line: 5, column: 10, scope: !8)
!29 = !DILocation(line: 5, column: 8, scope: !8)
!30 = !DILocation(line: 6, column: 11, scope: !8)
!31 = !DILocation(line: 6, column: 10, scope: !8)
!32 = !DILocation(line: 6, column: 8, scope: !8)
!33 = !DILocation(line: 8, column: 10, scope: !8)
!34 = !DILocation(line: 8, column: 9, scope: !8)
!35 = !DILocation(line: 8, column: 7, scope: !8)
!36 = !DILocation(line: 9, column: 12, scope: !8)
!37 = !DILocation(line: 9, column: 11, scope: !8)
!38 = !DILocation(line: 9, column: 6, scope: !8)
!39 = !DILocation(line: 9, column: 9, scope: !8)
!40 = !DILocation(line: 10, column: 11, scope: !8)
!41 = !DILocation(line: 10, column: 6, scope: !8)
!42 = !DILocation(line: 10, column: 9, scope: !8)
!43 = !DILocation(line: 11, column: 1, scope: !8)
!44 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !45, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocalVariable(name: "b", scope: !44, file: !9, line: 15, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 20)
!52 = !DILocation(line: 15, column: 10, scope: !44)
!53 = !DILocalVariable(name: "a", scope: !44, file: !9, line: 16, type: !49)
!54 = !DILocation(line: 16, column: 10, scope: !44)
!55 = !DILocalVariable(name: "p1", scope: !44, file: !9, line: 17, type: !14)
!56 = !DILocation(line: 17, column: 11, scope: !44)
!57 = !DILocalVariable(name: "p2", scope: !44, file: !9, line: 17, type: !14)
!58 = !DILocation(line: 17, column: 16, scope: !44)
!59 = !DILocalVariable(name: "t1", scope: !44, file: !9, line: 17, type: !14)
!60 = !DILocation(line: 17, column: 21, scope: !44)
!61 = !DILocalVariable(name: "t2", scope: !44, file: !9, line: 17, type: !14)
!62 = !DILocation(line: 17, column: 26, scope: !44)
!63 = !DILocalVariable(name: "pa", scope: !44, file: !9, line: 18, type: !13)
!64 = !DILocation(line: 18, column: 12, scope: !44)
!65 = !DILocalVariable(name: "pb", scope: !44, file: !9, line: 18, type: !13)
!66 = !DILocation(line: 18, column: 18, scope: !44)
!67 = !DILocation(line: 20, column: 10, scope: !44)
!68 = !DILocation(line: 20, column: 8, scope: !44)
!69 = !DILocation(line: 21, column: 10, scope: !44)
!70 = !DILocation(line: 21, column: 8, scope: !44)
!71 = !DILocation(line: 23, column: 8, scope: !44)
!72 = !DILocation(line: 24, column: 8, scope: !44)
!73 = !DILocation(line: 26, column: 5, scope: !44)
!74 = !DILocation(line: 28, column: 11, scope: !44)
!75 = !DILocation(line: 28, column: 10, scope: !44)
!76 = !DILocation(line: 28, column: 8, scope: !44)
!77 = !DILocation(line: 29, column: 11, scope: !44)
!78 = !DILocation(line: 29, column: 10, scope: !44)
!79 = !DILocation(line: 29, column: 8, scope: !44)
!80 = !DILocation(line: 31, column: 5, scope: !44)
