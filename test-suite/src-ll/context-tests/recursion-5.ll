; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-5.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-5.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@x1 = dso_local global i32* null, align 8, !dbg !0
@x = dso_local global i32** null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32** noundef %0) #0 !dbg !17 {
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32** %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %6, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %7, metadata !31, metadata !DIExpression()), !dbg !32
  store i32** %4, i32*** %3, align 8, !dbg !33
  store i32* %6, i32** %4, align 8, !dbg !34
  %8 = load i32, i32* %6, align 4, !dbg !35
  %9 = icmp eq i32 %8, 1, !dbg !37
  br i1 %9, label %10, label %15, !dbg !38

10:                                               ; preds = %1
  %11 = load i32**, i32*** %3, align 8, !dbg !39
  store i32* %7, i32** %11, align 8, !dbg !41
  %12 = load i32**, i32*** %3, align 8, !dbg !42
  %13 = load i32*, i32** %12, align 8, !dbg !43
  store i32* %13, i32** %5, align 8, !dbg !44
  %14 = load i32**, i32*** %3, align 8, !dbg !45
  call void @f(i32** noundef %14), !dbg !46
  br label %15, !dbg !47

15:                                               ; preds = %10, %1
  ret void, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !49 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32** @x1, i32*** @x, align 8, !dbg !52
  %2 = load i32**, i32*** @x, align 8, !dbg !53
  call void @f(i32** noundef %2), !dbg !54
  ret i32 0, !dbg !55
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x1", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-5.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-5.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!17 = distinct !DISubprogram(name: "f", scope: !7, file: !7, line: 3, type: !18, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !8}
!20 = !{}
!21 = !DILocalVariable(name: "m", arg: 1, scope: !17, file: !7, line: 3, type: !8)
!22 = !DILocation(line: 3, column: 14, scope: !17)
!23 = !DILocalVariable(name: "n", scope: !17, file: !7, line: 5, type: !8)
!24 = !DILocation(line: 5, column: 8, scope: !17)
!25 = !DILocalVariable(name: "y", scope: !17, file: !7, line: 5, type: !9)
!26 = !DILocation(line: 5, column: 12, scope: !17)
!27 = !DILocalVariable(name: "k", scope: !17, file: !7, line: 5, type: !9)
!28 = !DILocation(line: 5, column: 16, scope: !17)
!29 = !DILocalVariable(name: "z", scope: !17, file: !7, line: 5, type: !10)
!30 = !DILocation(line: 5, column: 19, scope: !17)
!31 = !DILocalVariable(name: "r", scope: !17, file: !7, line: 5, type: !10)
!32 = !DILocation(line: 5, column: 22, scope: !17)
!33 = !DILocation(line: 6, column: 4, scope: !17)
!34 = !DILocation(line: 7, column: 4, scope: !17)
!35 = !DILocation(line: 8, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !17, file: !7, line: 8, column: 6)
!37 = !DILocation(line: 8, column: 8, scope: !36)
!38 = !DILocation(line: 8, column: 6, scope: !17)
!39 = !DILocation(line: 10, column: 4, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !7, line: 9, column: 2)
!41 = !DILocation(line: 10, column: 6, scope: !40)
!42 = !DILocation(line: 11, column: 8, scope: !40)
!43 = !DILocation(line: 11, column: 7, scope: !40)
!44 = !DILocation(line: 11, column: 5, scope: !40)
!45 = !DILocation(line: 12, column: 5, scope: !40)
!46 = !DILocation(line: 12, column: 3, scope: !40)
!47 = !DILocation(line: 13, column: 2, scope: !40)
!48 = !DILocation(line: 14, column: 1, scope: !17)
!49 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 16, type: !50, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!50 = !DISubroutineType(types: !51)
!51 = !{!10}
!52 = !DILocation(line: 18, column: 4, scope: !49)
!53 = !DILocation(line: 19, column: 4, scope: !49)
!54 = !DILocation(line: 19, column: 2, scope: !49)
!55 = !DILocation(line: 20, column: 2, scope: !49)
