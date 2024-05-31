; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-global-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-global-0.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p1 = dso_local global i8* null, align 8, !dbg !0
@p2 = dso_local global i8* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !16 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !21, metadata !DIExpression()), !dbg !22
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %5, metadata !25, metadata !DIExpression()), !dbg !26
  %6 = load i8**, i8*** %3, align 8, !dbg !27
  %7 = load i8*, i8** %6, align 8, !dbg !28
  store i8* %7, i8** %5, align 8, !dbg !29
  %8 = load i8**, i8*** %4, align 8, !dbg !30
  %9 = load i8*, i8** %8, align 8, !dbg !31
  %10 = load i8**, i8*** %3, align 8, !dbg !32
  store i8* %9, i8** %10, align 8, !dbg !33
  %11 = load i8*, i8** %5, align 8, !dbg !34
  %12 = load i8**, i8*** %4, align 8, !dbg !35
  store i8* %11, i8** %12, align 8, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !42, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %5, metadata !51, metadata !DIExpression()), !dbg !52
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !53
  store i8* %6, i8** @p1, align 8, !dbg !54
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !55
  store i8* %7, i8** @p2, align 8, !dbg !56
  call void @swap(i8** noundef @p1, i8** noundef @p2), !dbg !57
  %8 = load i8*, i8** @p1, align 8, !dbg !58
  store i8* %8, i8** %4, align 8, !dbg !59
  %9 = load i8*, i8** @p2, align 8, !dbg !60
  store i8* %9, i8** %5, align 8, !dbg !61
  ret i32 0, !dbg !62
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p1", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-global-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "p2", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-global-0.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "swap", scope: !7, file: !7, line: 3, type: !17, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !{}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !16, file: !7, line: 3, type: !19)
!22 = !DILocation(line: 3, column: 18, scope: !16)
!23 = !DILocalVariable(name: "b", arg: 2, scope: !16, file: !7, line: 3, type: !19)
!24 = !DILocation(line: 3, column: 28, scope: !16)
!25 = !DILocalVariable(name: "c", scope: !16, file: !7, line: 5, type: !8)
!26 = !DILocation(line: 5, column: 11, scope: !16)
!27 = !DILocation(line: 6, column: 10, scope: !16)
!28 = !DILocation(line: 6, column: 9, scope: !16)
!29 = !DILocation(line: 6, column: 7, scope: !16)
!30 = !DILocation(line: 7, column: 11, scope: !16)
!31 = !DILocation(line: 7, column: 10, scope: !16)
!32 = !DILocation(line: 7, column: 6, scope: !16)
!33 = !DILocation(line: 7, column: 8, scope: !16)
!34 = !DILocation(line: 8, column: 10, scope: !16)
!35 = !DILocation(line: 8, column: 6, scope: !16)
!36 = !DILocation(line: 8, column: 8, scope: !16)
!37 = !DILocation(line: 9, column: 1, scope: !16)
!38 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 11, type: !39, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!39 = !DISubroutineType(types: !40)
!40 = !{!41}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DILocalVariable(name: "b", scope: !38, file: !7, line: 13, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 20)
!46 = !DILocation(line: 13, column: 10, scope: !38)
!47 = !DILocalVariable(name: "a", scope: !38, file: !7, line: 14, type: !43)
!48 = !DILocation(line: 14, column: 10, scope: !38)
!49 = !DILocalVariable(name: "pa", scope: !38, file: !7, line: 15, type: !8)
!50 = !DILocation(line: 15, column: 11, scope: !38)
!51 = !DILocalVariable(name: "pb", scope: !38, file: !7, line: 15, type: !8)
!52 = !DILocation(line: 15, column: 16, scope: !38)
!53 = !DILocation(line: 17, column: 10, scope: !38)
!54 = !DILocation(line: 17, column: 8, scope: !38)
!55 = !DILocation(line: 18, column: 10, scope: !38)
!56 = !DILocation(line: 18, column: 8, scope: !38)
!57 = !DILocation(line: 20, column: 5, scope: !38)
!58 = !DILocation(line: 22, column: 10, scope: !38)
!59 = !DILocation(line: 22, column: 8, scope: !38)
!60 = !DILocation(line: 23, column: 10, scope: !38)
!61 = !DILocation(line: 23, column: 8, scope: !38)
!62 = !DILocation(line: 25, column: 5, scope: !38)
