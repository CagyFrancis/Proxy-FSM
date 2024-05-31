; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-global-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-global-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p1 = dso_local global i8* null, align 8, !dbg !0
@p2 = dso_local global i8* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap() #0 !dbg !16 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !21
  %2 = load i8*, i8** @p1, align 8, !dbg !22
  store i8* %2, i8** %1, align 8, !dbg !23
  %3 = load i8*, i8** @p2, align 8, !dbg !24
  store i8* %3, i8** @p1, align 8, !dbg !25
  %4 = load i8*, i8** %1, align 8, !dbg !26
  store i8* %4, i8** @p2, align 8, !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i8** %4, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %5, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !44
  store i8* %6, i8** @p1, align 8, !dbg !45
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !46
  store i8* %7, i8** @p2, align 8, !dbg !47
  call void @swap(), !dbg !48
  %8 = load i8*, i8** @p1, align 8, !dbg !49
  store i8* %8, i8** %4, align 8, !dbg !50
  %9 = load i8*, i8** @p2, align 8, !dbg !51
  store i8* %9, i8** %5, align 8, !dbg !52
  ret i32 0, !dbg !53
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p1", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-global-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "p2", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-global-1.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "swap", scope: !7, file: !7, line: 3, type: !17, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !{}
!20 = !DILocalVariable(name: "c", scope: !16, file: !7, line: 5, type: !8)
!21 = !DILocation(line: 5, column: 11, scope: !16)
!22 = !DILocation(line: 6, column: 9, scope: !16)
!23 = !DILocation(line: 6, column: 7, scope: !16)
!24 = !DILocation(line: 7, column: 10, scope: !16)
!25 = !DILocation(line: 7, column: 8, scope: !16)
!26 = !DILocation(line: 8, column: 10, scope: !16)
!27 = !DILocation(line: 8, column: 8, scope: !16)
!28 = !DILocation(line: 9, column: 1, scope: !16)
!29 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 11, type: !30, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocalVariable(name: "b", scope: !29, file: !7, line: 13, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 20)
!37 = !DILocation(line: 13, column: 10, scope: !29)
!38 = !DILocalVariable(name: "a", scope: !29, file: !7, line: 14, type: !34)
!39 = !DILocation(line: 14, column: 10, scope: !29)
!40 = !DILocalVariable(name: "pa", scope: !29, file: !7, line: 15, type: !8)
!41 = !DILocation(line: 15, column: 11, scope: !29)
!42 = !DILocalVariable(name: "pb", scope: !29, file: !7, line: 15, type: !8)
!43 = !DILocation(line: 15, column: 16, scope: !29)
!44 = !DILocation(line: 17, column: 10, scope: !29)
!45 = !DILocation(line: 17, column: 8, scope: !29)
!46 = !DILocation(line: 18, column: 10, scope: !29)
!47 = !DILocation(line: 18, column: 8, scope: !29)
!48 = !DILocation(line: 20, column: 5, scope: !29)
!49 = !DILocation(line: 22, column: 10, scope: !29)
!50 = !DILocation(line: 22, column: 8, scope: !29)
!51 = !DILocation(line: 23, column: 10, scope: !29)
!52 = !DILocation(line: 23, column: 8, scope: !29)
!53 = !DILocation(line: 25, column: 5, scope: !29)
