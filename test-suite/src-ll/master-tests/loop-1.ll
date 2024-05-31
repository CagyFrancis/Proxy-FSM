; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\loop-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\loop-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %5, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %6, metadata !23, metadata !DIExpression()), !dbg !24
  store i32* %2, i32** %6, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %7, metadata !26, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %7, align 4, !dbg !28
  br label %8, !dbg !29

8:                                                ; preds = %19, %0
  %9 = load i32, i32* %7, align 4, !dbg !30
  %10 = icmp slt i32 %9, 10, !dbg !32
  br i1 %10, label %11, label %22, !dbg !33

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4, !dbg !34
  %13 = icmp sge i32 %12, 5, !dbg !37
  br i1 %13, label %14, label %16, !dbg !38

14:                                               ; preds = %11
  %15 = load i32*, i32** %6, align 8, !dbg !39
  store i32* %15, i32** %5, align 8, !dbg !41
  store i32* %3, i32** %6, align 8, !dbg !42
  br label %18, !dbg !43

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8, !dbg !44
  store i32* %17, i32** %5, align 8, !dbg !46
  store i32* %4, i32** %6, align 8, !dbg !47
  br label %18

18:                                               ; preds = %16, %14
  br label %19, !dbg !48

19:                                               ; preds = %18
  %20 = load i32, i32* %7, align 4, !dbg !49
  %21 = add nsw i32 %20, 1, !dbg !49
  store i32 %21, i32* %7, align 4, !dbg !49
  br label %8, !dbg !50, !llvm.loop !51

22:                                               ; preds = %8
  ret i32 0, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/loop-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/loop-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 9, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 12, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 15, scope: !8)
!20 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 4, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !DILocation(line: 4, column: 10, scope: !8)
!23 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 4, type: !21)
!24 = !DILocation(line: 4, column: 14, scope: !8)
!25 = !DILocation(line: 5, column: 7, scope: !8)
!26 = !DILocalVariable(name: "i", scope: !27, file: !9, line: 7, type: !12)
!27 = distinct !DILexicalBlock(scope: !8, file: !9, line: 7, column: 5)
!28 = !DILocation(line: 7, column: 14, scope: !27)
!29 = !DILocation(line: 7, column: 10, scope: !27)
!30 = !DILocation(line: 7, column: 21, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !9, line: 7, column: 5)
!32 = !DILocation(line: 7, column: 23, scope: !31)
!33 = !DILocation(line: 7, column: 5, scope: !27)
!34 = !DILocation(line: 9, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !9, line: 9, column: 13)
!36 = distinct !DILexicalBlock(scope: !31, file: !9, line: 8, column: 5)
!37 = !DILocation(line: 9, column: 15, scope: !35)
!38 = !DILocation(line: 9, column: 13, scope: !36)
!39 = !DILocation(line: 11, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !9, line: 10, column: 9)
!41 = !DILocation(line: 11, column: 15, scope: !40)
!42 = !DILocation(line: 12, column: 15, scope: !40)
!43 = !DILocation(line: 13, column: 9, scope: !40)
!44 = !DILocation(line: 16, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !35, file: !9, line: 15, column: 9)
!46 = !DILocation(line: 16, column: 15, scope: !45)
!47 = !DILocation(line: 17, column: 15, scope: !45)
!48 = !DILocation(line: 19, column: 5, scope: !36)
!49 = !DILocation(line: 7, column: 30, scope: !31)
!50 = !DILocation(line: 7, column: 5, scope: !31)
!51 = distinct !{!51, !33, !52, !53}
!52 = !DILocation(line: 19, column: 5, scope: !27)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !DILocation(line: 21, column: 5, scope: !8)
