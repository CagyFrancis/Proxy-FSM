; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\array-tests\array-path-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests\\array-path-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32*], align 16
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [2 x i32*]* %6, metadata !22, metadata !DIExpression()), !dbg !27
  %9 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0, !dbg !28
  store i32* %2, i32** %9, align 8, !dbg !28
  %10 = getelementptr inbounds i32*, i32** %9, i64 1, !dbg !28
  store i32* %3, i32** %10, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !29, metadata !DIExpression()), !dbg !31
  %11 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0, !dbg !32
  store i32** %11, i32*** %7, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i32** %8, metadata !33, metadata !DIExpression()), !dbg !34
  %12 = load i32, i32* %4, align 4, !dbg !35
  %13 = icmp ne i32 %12, 0, !dbg !35
  br i1 %13, label %14, label %17, !dbg !37

14:                                               ; preds = %0
  %15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0, !dbg !38
  store i32* %3, i32** %15, align 16, !dbg !40
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1, !dbg !41
  store i32* %4, i32** %16, align 8, !dbg !42
  br label %20, !dbg !43

17:                                               ; preds = %0
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0, !dbg !44
  store i32* %4, i32** %18, align 16, !dbg !46
  %19 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1, !dbg !47
  store i32* %5, i32** %19, align 8, !dbg !48
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32**, i32*** %7, align 8, !dbg !49
  %22 = load i32*, i32** %21, align 8, !dbg !50
  store i32* %22, i32** %8, align 8, !dbg !51
  %23 = load i32**, i32*** %7, align 8, !dbg !52
  %24 = getelementptr inbounds i32*, i32** %23, i64 1, !dbg !53
  %25 = load i32*, i32** %24, align 8, !dbg !54
  store i32* %25, i32** %8, align 8, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests/array-path-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 3, type: !10, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/array-tests/array-path-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 5, type: !12)
!15 = !DILocation(line: 5, column: 6, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 5, type: !12)
!17 = !DILocation(line: 5, column: 9, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 12, scope: !8)
!20 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 15, scope: !8)
!22 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !25)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = !DILocation(line: 6, column: 7, scope: !8)
!28 = !DILocation(line: 6, column: 14, scope: !8)
!29 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 7, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!31 = !DILocation(line: 7, column: 8, scope: !8)
!32 = !DILocation(line: 7, column: 12, scope: !8)
!33 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 8, type: !24)
!34 = !DILocation(line: 8, column: 7, scope: !8)
!35 = !DILocation(line: 10, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !8, file: !9, line: 10, column: 6)
!37 = !DILocation(line: 10, column: 6, scope: !8)
!38 = !DILocation(line: 12, column: 3, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !9, line: 11, column: 2)
!40 = !DILocation(line: 12, column: 8, scope: !39)
!41 = !DILocation(line: 13, column: 3, scope: !39)
!42 = !DILocation(line: 13, column: 8, scope: !39)
!43 = !DILocation(line: 14, column: 2, scope: !39)
!44 = !DILocation(line: 17, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !36, file: !9, line: 16, column: 2)
!46 = !DILocation(line: 17, column: 8, scope: !45)
!47 = !DILocation(line: 18, column: 3, scope: !45)
!48 = !DILocation(line: 18, column: 8, scope: !45)
!49 = !DILocation(line: 20, column: 7, scope: !8)
!50 = !DILocation(line: 20, column: 6, scope: !8)
!51 = !DILocation(line: 20, column: 4, scope: !8)
!52 = !DILocation(line: 21, column: 8, scope: !8)
!53 = !DILocation(line: 21, column: 10, scope: !8)
!54 = !DILocation(line: 21, column: 6, scope: !8)
!55 = !DILocation(line: 21, column: 4, scope: !8)
!56 = !DILocation(line: 23, column: 2, scope: !8)
