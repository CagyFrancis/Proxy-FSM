; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\branch-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\branch-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@t = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !13 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %4, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %5, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32** %6, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32** %7, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %8, metadata !31, metadata !DIExpression()), !dbg !32
  store i32** %4, i32*** %2, align 8, !dbg !33
  %9 = load i32**, i32*** %2, align 8, !dbg !34
  store i32* %8, i32** %9, align 8, !dbg !35
  store i32 0, i32* @t, align 4, !dbg !36
  br label %10, !dbg !38

10:                                               ; preds = %19, %0
  %11 = load i32, i32* @t, align 4, !dbg !39
  %12 = icmp slt i32 %11, 10, !dbg !41
  br i1 %12, label %13, label %22, !dbg !42

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4, !dbg !43
  %15 = icmp ne i32 %14, 0, !dbg !43
  br i1 %15, label %16, label %17, !dbg !45

16:                                               ; preds = %13
  store i32** %6, i32*** %2, align 8, !dbg !46
  br label %18, !dbg !48

17:                                               ; preds = %13
  store i32** %7, i32*** %2, align 8, !dbg !49
  br label %18

18:                                               ; preds = %17, %16
  br label %19, !dbg !43

19:                                               ; preds = %18
  %20 = load i32, i32* @t, align 4, !dbg !51
  %21 = add nsw i32 %20, 1, !dbg !51
  store i32 %21, i32* @t, align 4, !dbg !51
  br label %10, !dbg !52, !llvm.loop !53

22:                                               ; preds = %10
  %23 = load i32**, i32*** %2, align 8, !dbg !56
  store i32* @t, i32** %23, align 8, !dbg !57
  ret i32 0, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/branch-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/branch-2.c", directory: "")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 3, type: !14, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!6}
!16 = !{}
!17 = !DILocalVariable(name: "x", scope: !13, file: !5, line: 5, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!20 = !DILocation(line: 5, column: 8, scope: !13)
!21 = !DILocalVariable(name: "y", scope: !13, file: !5, line: 5, type: !18)
!22 = !DILocation(line: 5, column: 13, scope: !13)
!23 = !DILocalVariable(name: "a", scope: !13, file: !5, line: 6, type: !19)
!24 = !DILocation(line: 6, column: 7, scope: !13)
!25 = !DILocalVariable(name: "b", scope: !13, file: !5, line: 6, type: !19)
!26 = !DILocation(line: 6, column: 11, scope: !13)
!27 = !DILocalVariable(name: "c", scope: !13, file: !5, line: 6, type: !19)
!28 = !DILocation(line: 6, column: 15, scope: !13)
!29 = !DILocalVariable(name: "d", scope: !13, file: !5, line: 6, type: !19)
!30 = !DILocation(line: 6, column: 19, scope: !13)
!31 = !DILocalVariable(name: "e", scope: !13, file: !5, line: 6, type: !6)
!32 = !DILocation(line: 6, column: 22, scope: !13)
!33 = !DILocation(line: 8, column: 4, scope: !13)
!34 = !DILocation(line: 9, column: 3, scope: !13)
!35 = !DILocation(line: 9, column: 5, scope: !13)
!36 = !DILocation(line: 10, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !13, file: !5, line: 10, column: 2)
!38 = !DILocation(line: 10, column: 7, scope: !37)
!39 = !DILocation(line: 10, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !5, line: 10, column: 2)
!41 = !DILocation(line: 10, column: 16, scope: !40)
!42 = !DILocation(line: 10, column: 2, scope: !37)
!43 = !DILocation(line: 11, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !5, line: 11, column: 7)
!45 = !DILocation(line: 11, column: 7, scope: !40)
!46 = !DILocation(line: 13, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !5, line: 12, column: 3)
!48 = !DILocation(line: 14, column: 3, scope: !47)
!49 = !DILocation(line: 17, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !5, line: 16, column: 3)
!51 = !DILocation(line: 10, column: 23, scope: !40)
!52 = !DILocation(line: 10, column: 2, scope: !40)
!53 = distinct !{!53, !42, !54, !55}
!54 = !DILocation(line: 18, column: 3, scope: !37)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 19, column: 3, scope: !13)
!57 = !DILocation(line: 19, column: 5, scope: !13)
!58 = !DILocation(line: 21, column: 2, scope: !13)
