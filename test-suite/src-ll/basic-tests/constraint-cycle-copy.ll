; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\constraint-cycle-copy.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\constraint-cycle-copy.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !14, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32** %5, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32** %6, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32** %7, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32** %8, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %9, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %10, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %11, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %12, metadata !36, metadata !DIExpression()), !dbg !37
  store i32* %9, i32** %5, align 8, !dbg !38
  store i32* %10, i32** %6, align 8, !dbg !39
  store i32* %11, i32** %7, align 8, !dbg !40
  store i32** %5, i32*** %2, align 8, !dbg !41
  store i32** %6, i32*** %3, align 8, !dbg !42
  store i32** %7, i32*** %4, align 8, !dbg !43
  %13 = load i32, i32* %12, align 4, !dbg !44
  %14 = icmp ne i32 %13, 0, !dbg !44
  br i1 %14, label %15, label %16, !dbg !46

15:                                               ; preds = %0
  store i32** %8, i32*** %3, align 8, !dbg !47
  store i32* %12, i32** %8, align 8, !dbg !49
  br label %16, !dbg !50

16:                                               ; preds = %15, %0
  %17 = load i32**, i32*** %3, align 8, !dbg !51
  %18 = load i32*, i32** %17, align 8, !dbg !52
  %19 = load i32**, i32*** %2, align 8, !dbg !53
  store i32* %18, i32** %19, align 8, !dbg !54
  %20 = load i32**, i32*** %4, align 8, !dbg !55
  %21 = load i32*, i32** %20, align 8, !dbg !56
  %22 = load i32**, i32*** %3, align 8, !dbg !57
  store i32* %21, i32** %22, align 8, !dbg !58
  %23 = load i32**, i32*** %2, align 8, !dbg !59
  %24 = load i32*, i32** %23, align 8, !dbg !60
  %25 = load i32**, i32*** %4, align 8, !dbg !61
  store i32* %24, i32** %25, align 8, !dbg !62
  ret i32 0, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/constraint-cycle-copy.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/constraint-cycle-copy.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x1", scope: !8, file: !9, line: 9, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DILocation(line: 9, column: 8, scope: !8)
!18 = !DILocalVariable(name: "y1", scope: !8, file: !9, line: 9, type: !15)
!19 = !DILocation(line: 9, column: 14, scope: !8)
!20 = !DILocalVariable(name: "z1", scope: !8, file: !9, line: 9, type: !15)
!21 = !DILocation(line: 9, column: 20, scope: !8)
!22 = !DILocalVariable(name: "x2", scope: !8, file: !9, line: 10, type: !16)
!23 = !DILocation(line: 10, column: 7, scope: !8)
!24 = !DILocalVariable(name: "y2", scope: !8, file: !9, line: 10, type: !16)
!25 = !DILocation(line: 10, column: 12, scope: !8)
!26 = !DILocalVariable(name: "z2", scope: !8, file: !9, line: 10, type: !16)
!27 = !DILocation(line: 10, column: 17, scope: !8)
!28 = !DILocalVariable(name: "y2_", scope: !8, file: !9, line: 10, type: !16)
!29 = !DILocation(line: 10, column: 22, scope: !8)
!30 = !DILocalVariable(name: "x3", scope: !8, file: !9, line: 11, type: !12)
!31 = !DILocation(line: 11, column: 6, scope: !8)
!32 = !DILocalVariable(name: "y3", scope: !8, file: !9, line: 11, type: !12)
!33 = !DILocation(line: 11, column: 10, scope: !8)
!34 = !DILocalVariable(name: "z3", scope: !8, file: !9, line: 11, type: !12)
!35 = !DILocation(line: 11, column: 14, scope: !8)
!36 = !DILocalVariable(name: "y3_", scope: !8, file: !9, line: 11, type: !12)
!37 = !DILocation(line: 11, column: 18, scope: !8)
!38 = !DILocation(line: 12, column: 5, scope: !8)
!39 = !DILocation(line: 12, column: 15, scope: !8)
!40 = !DILocation(line: 12, column: 25, scope: !8)
!41 = !DILocation(line: 13, column: 5, scope: !8)
!42 = !DILocation(line: 13, column: 15, scope: !8)
!43 = !DILocation(line: 13, column: 25, scope: !8)
!44 = !DILocation(line: 18, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !8, file: !9, line: 18, column: 6)
!46 = !DILocation(line: 18, column: 6, scope: !8)
!47 = !DILocation(line: 20, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !9, line: 19, column: 2)
!49 = !DILocation(line: 21, column: 7, scope: !48)
!50 = !DILocation(line: 22, column: 2, scope: !48)
!51 = !DILocation(line: 23, column: 9, scope: !8)
!52 = !DILocation(line: 23, column: 8, scope: !8)
!53 = !DILocation(line: 23, column: 3, scope: !8)
!54 = !DILocation(line: 23, column: 6, scope: !8)
!55 = !DILocation(line: 24, column: 9, scope: !8)
!56 = !DILocation(line: 24, column: 8, scope: !8)
!57 = !DILocation(line: 24, column: 3, scope: !8)
!58 = !DILocation(line: 24, column: 6, scope: !8)
!59 = !DILocation(line: 25, column: 9, scope: !8)
!60 = !DILocation(line: 25, column: 8, scope: !8)
!61 = !DILocation(line: 25, column: 3, scope: !8)
!62 = !DILocation(line: 25, column: 6, scope: !8)
!63 = !DILocation(line: 29, column: 2, scope: !8)
