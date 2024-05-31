; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-2.c"
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
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %5, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @a, i64 0, i64 0), i8** %2, align 8, !dbg !53
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @b, i64 0, i64 0), i8** %3, align 8, !dbg !54
  call void @swap(i8** noundef %2, i8** noundef %3), !dbg !55
  call void @swap(i8** noundef %2, i8** noundef %3), !dbg !56
  call void @swap(i8** noundef %3, i8** noundef %2), !dbg !57
  call void @swap(i8** noundef %2, i8** noundef %3), !dbg !58
  %6 = load i8*, i8** %3, align 8, !dbg !59
  store i8* %6, i8** %4, align 8, !dbg !60
  %7 = load i8*, i8** %2, align 8, !dbg !61
  store i8* %7, i8** %5, align 8, !dbg !62
  ret i32 0, !dbg !63
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-2.c", directory: "")
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
!41 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 12, type: !42, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "p1", scope: !41, file: !7, line: 14, type: !22)
!46 = !DILocation(line: 14, column: 11, scope: !41)
!47 = !DILocalVariable(name: "p2", scope: !41, file: !7, line: 14, type: !22)
!48 = !DILocation(line: 14, column: 16, scope: !41)
!49 = !DILocalVariable(name: "pa", scope: !41, file: !7, line: 15, type: !22)
!50 = !DILocation(line: 15, column: 11, scope: !41)
!51 = !DILocalVariable(name: "pb", scope: !41, file: !7, line: 15, type: !22)
!52 = !DILocation(line: 15, column: 16, scope: !41)
!53 = !DILocation(line: 17, column: 8, scope: !41)
!54 = !DILocation(line: 18, column: 8, scope: !41)
!55 = !DILocation(line: 20, column: 5, scope: !41)
!56 = !DILocation(line: 21, column: 5, scope: !41)
!57 = !DILocation(line: 22, column: 5, scope: !41)
!58 = !DILocation(line: 23, column: 5, scope: !41)
!59 = !DILocation(line: 25, column: 10, scope: !41)
!60 = !DILocation(line: 25, column: 8, scope: !41)
!61 = !DILocation(line: 26, column: 10, scope: !41)
!62 = !DILocation(line: 26, column: 8, scope: !41)
!63 = !DILocation(line: 28, column: 5, scope: !41)
