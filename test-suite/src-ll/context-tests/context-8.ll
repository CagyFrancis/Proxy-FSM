; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-8.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-8.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@obj1 = dso_local global i32 0, align 4, !dbg !0
@obj2 = dso_local global i32 0, align 4, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1) #0 !dbg !15 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !21, metadata !DIExpression()), !dbg !22
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !23, metadata !DIExpression()), !dbg !24
  %5 = load i32**, i32*** %3, align 8, !dbg !25
  store i32* @obj1, i32** %5, align 8, !dbg !26
  %6 = load i32**, i32*** %4, align 8, !dbg !27
  store i32* @obj2, i32** %6, align 8, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %4, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %5, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %6, metadata !41, metadata !DIExpression()), !dbg !42
  %7 = load i32**, i32*** %2, align 8, !dbg !43
  %8 = icmp ne i32** %7, null, !dbg !43
  br i1 %8, label %9, label %10, !dbg !45

9:                                                ; preds = %0
  store i32** %4, i32*** %2, align 8, !dbg !46
  store i32** %5, i32*** %3, align 8, !dbg !48
  br label %11, !dbg !49

10:                                               ; preds = %0
  store i32** %6, i32*** %2, align 8, !dbg !50
  store i32** %6, i32*** %3, align 8, !dbg !52
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32**, i32*** %2, align 8, !dbg !53
  %13 = load i32**, i32*** %3, align 8, !dbg !54
  call void @foo(i32** noundef %12, i32** noundef %13), !dbg !55
  ret i32 0, !dbg !56
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obj1", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-8.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obj2", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-8.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!15 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 3, type: !16, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !{}
!21 = !DILocalVariable(name: "p", arg: 1, scope: !15, file: !7, line: 3, type: !18)
!22 = !DILocation(line: 3, column: 16, scope: !15)
!23 = !DILocalVariable(name: "q", arg: 2, scope: !15, file: !7, line: 3, type: !18)
!24 = !DILocation(line: 3, column: 25, scope: !15)
!25 = !DILocation(line: 5, column: 3, scope: !15)
!26 = !DILocation(line: 5, column: 5, scope: !15)
!27 = !DILocation(line: 6, column: 3, scope: !15)
!28 = !DILocation(line: 6, column: 5, scope: !15)
!29 = !DILocation(line: 7, column: 1, scope: !15)
!30 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 9, type: !31, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!31 = !DISubroutineType(types: !32)
!32 = !{!8}
!33 = !DILocalVariable(name: "a", scope: !30, file: !7, line: 11, type: !18)
!34 = !DILocation(line: 11, column: 8, scope: !30)
!35 = !DILocalVariable(name: "b", scope: !30, file: !7, line: 11, type: !18)
!36 = !DILocation(line: 11, column: 13, scope: !30)
!37 = !DILocalVariable(name: "x", scope: !30, file: !7, line: 11, type: !19)
!38 = !DILocation(line: 11, column: 17, scope: !30)
!39 = !DILocalVariable(name: "y", scope: !30, file: !7, line: 11, type: !19)
!40 = !DILocation(line: 11, column: 21, scope: !30)
!41 = !DILocalVariable(name: "z", scope: !30, file: !7, line: 11, type: !19)
!42 = !DILocation(line: 11, column: 25, scope: !30)
!43 = !DILocation(line: 12, column: 6, scope: !44)
!44 = distinct !DILexicalBlock(scope: !30, file: !7, line: 12, column: 6)
!45 = !DILocation(line: 12, column: 6, scope: !30)
!46 = !DILocation(line: 14, column: 5, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !7, line: 13, column: 2)
!48 = !DILocation(line: 15, column: 5, scope: !47)
!49 = !DILocation(line: 16, column: 2, scope: !47)
!50 = !DILocation(line: 19, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !7, line: 18, column: 2)
!52 = !DILocation(line: 20, column: 5, scope: !51)
!53 = !DILocation(line: 22, column: 6, scope: !30)
!54 = !DILocation(line: 22, column: 9, scope: !30)
!55 = !DILocation(line: 22, column: 2, scope: !30)
!56 = !DILocation(line: 24, column: 2, scope: !30)
