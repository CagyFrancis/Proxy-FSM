; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\array-tests\array-context-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests\\array-context-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @foo(i32** noundef %0) #0 !dbg !8 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !16, metadata !DIExpression()), !dbg !17
  %3 = load i32**, i32*** %2, align 8, !dbg !18
  ret i32** %3, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32*], align 16
  %6 = alloca [2 x i32*], align 16
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %2, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [2 x i32*]* %5, metadata !29, metadata !DIExpression()), !dbg !33
  %10 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0, !dbg !34
  store i32* %2, i32** %10, align 8, !dbg !34
  %11 = getelementptr inbounds i32*, i32** %10, i64 1, !dbg !34
  store i32* %3, i32** %11, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata [2 x i32*]* %6, metadata !35, metadata !DIExpression()), !dbg !36
  %12 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0, !dbg !37
  store i32* %3, i32** %12, align 8, !dbg !37
  %13 = getelementptr inbounds i32*, i32** %12, i64 1, !dbg !37
  store i32* %4, i32** %13, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32*** %8, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32** %9, metadata !42, metadata !DIExpression()), !dbg !43
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0, !dbg !44
  %15 = call i32** @foo(i32** noundef %14), !dbg !45
  store i32** %15, i32*** %7, align 8, !dbg !46
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0, !dbg !47
  %17 = call i32** @foo(i32** noundef %16), !dbg !48
  store i32** %17, i32*** %8, align 8, !dbg !49
  %18 = load i32**, i32*** %7, align 8, !dbg !50
  %19 = load i32, i32* %2, align 4, !dbg !51
  %20 = sext i32 %19 to i64, !dbg !50
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20, !dbg !50
  %22 = load i32*, i32** %21, align 8, !dbg !50
  store i32* %22, i32** %9, align 8, !dbg !52
  %23 = load i32**, i32*** %8, align 8, !dbg !53
  %24 = load i32, i32* %2, align 4, !dbg !54
  %25 = add nsw i32 %24, 1, !dbg !55
  %26 = sext i32 %25 to i64, !dbg !53
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26, !dbg !53
  %28 = load i32*, i32** %27, align 8, !dbg !53
  store i32* %28, i32** %9, align 8, !dbg !56
  ret i32 0, !dbg !57
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests/array-context-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/array-tests/array-context-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 17, scope: !8)
!18 = !DILocation(line: 5, column: 9, scope: !8)
!19 = !DILocation(line: 5, column: 2, scope: !8)
!20 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 8, type: !21, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!21 = !DISubroutineType(types: !22)
!22 = !{!14}
!23 = !DILocalVariable(name: "a", scope: !20, file: !9, line: 10, type: !14)
!24 = !DILocation(line: 10, column: 6, scope: !20)
!25 = !DILocalVariable(name: "b", scope: !20, file: !9, line: 10, type: !14)
!26 = !DILocation(line: 10, column: 13, scope: !20)
!27 = !DILocalVariable(name: "c", scope: !20, file: !9, line: 10, type: !14)
!28 = !DILocation(line: 10, column: 16, scope: !20)
!29 = !DILocalVariable(name: "x", scope: !20, file: !9, line: 11, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 2)
!33 = !DILocation(line: 11, column: 7, scope: !20)
!34 = !DILocation(line: 11, column: 14, scope: !20)
!35 = !DILocalVariable(name: "y", scope: !20, file: !9, line: 12, type: !30)
!36 = !DILocation(line: 12, column: 7, scope: !20)
!37 = !DILocation(line: 12, column: 14, scope: !20)
!38 = !DILocalVariable(name: "r1", scope: !20, file: !9, line: 13, type: !12)
!39 = !DILocation(line: 13, column: 8, scope: !20)
!40 = !DILocalVariable(name: "r2", scope: !20, file: !9, line: 13, type: !12)
!41 = !DILocation(line: 13, column: 14, scope: !20)
!42 = !DILocalVariable(name: "p", scope: !20, file: !9, line: 14, type: !13)
!43 = !DILocation(line: 14, column: 7, scope: !20)
!44 = !DILocation(line: 16, column: 11, scope: !20)
!45 = !DILocation(line: 16, column: 7, scope: !20)
!46 = !DILocation(line: 16, column: 5, scope: !20)
!47 = !DILocation(line: 17, column: 11, scope: !20)
!48 = !DILocation(line: 17, column: 7, scope: !20)
!49 = !DILocation(line: 17, column: 5, scope: !20)
!50 = !DILocation(line: 19, column: 6, scope: !20)
!51 = !DILocation(line: 19, column: 9, scope: !20)
!52 = !DILocation(line: 19, column: 4, scope: !20)
!53 = !DILocation(line: 20, column: 6, scope: !20)
!54 = !DILocation(line: 20, column: 9, scope: !20)
!55 = !DILocation(line: 20, column: 11, scope: !20)
!56 = !DILocation(line: 20, column: 4, scope: !20)
!57 = !DILocation(line: 22, column: 2, scope: !20)
