; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\recursion-9.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\recursion-9.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@z = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !16 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !20, metadata !DIExpression()), !dbg !21
  %3 = load i32, i32* @z, align 4, !dbg !22
  %4 = icmp sgt i32 %3, 5, !dbg !24
  br i1 %4, label %5, label %6, !dbg !25

5:                                                ; preds = %1
  br label %11, !dbg !26

6:                                                ; preds = %1
  %7 = load i32, i32* @z, align 4, !dbg !27
  %8 = add nsw i32 %7, 1, !dbg !27
  store i32 %8, i32* @z, align 4, !dbg !27
  %9 = load i32**, i32*** %2, align 8, !dbg !28
  store i32* @z, i32** %9, align 8, !dbg !29
  %10 = load i32**, i32*** %2, align 8, !dbg !30
  call void @bar(i32** noundef %10), !dbg !31
  br label %11, !dbg !32

11:                                               ; preds = %6, %5
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0) #0 !dbg !33 {
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = call i8* @malloc(i64 noundef 8), !dbg !38
  %5 = bitcast i8* %4 to i32**, !dbg !39
  store i32** %5, i32*** %3, align 8, !dbg !37
  %6 = load i32**, i32*** %3, align 8, !dbg !40
  call void @foo(i32** noundef %6), !dbg !41
  ret void, !dbg !42
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !43 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32** %3, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32** %4, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %5, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %6, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* %5, i32** %3, align 8, !dbg !56
  store i32** %3, i32*** %2, align 8, !dbg !57
  %7 = load i32**, i32*** %2, align 8, !dbg !58
  call void @foo(i32** noundef %7), !dbg !59
  store i32** %4, i32*** %2, align 8, !dbg !60
  %8 = load i32**, i32*** %2, align 8, !dbg !61
  call void @foo(i32** noundef %8), !dbg !62
  ret i32 0, !dbg !63
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !9, line: 3, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/recursion-9.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/recursion-9.c", directory: "")
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 8, type: !17, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !5}
!19 = !{}
!20 = !DILocalVariable(name: "a", arg: 1, scope: !16, file: !9, line: 8, type: !5)
!21 = !DILocation(line: 8, column: 16, scope: !16)
!22 = !DILocation(line: 10, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !9, line: 10, column: 9)
!24 = !DILocation(line: 10, column: 11, scope: !23)
!25 = !DILocation(line: 10, column: 9, scope: !16)
!26 = !DILocation(line: 11, column: 9, scope: !23)
!27 = !DILocation(line: 12, column: 6, scope: !16)
!28 = !DILocation(line: 13, column: 6, scope: !16)
!29 = !DILocation(line: 13, column: 8, scope: !16)
!30 = !DILocation(line: 14, column: 9, scope: !16)
!31 = !DILocation(line: 14, column: 5, scope: !16)
!32 = !DILocation(line: 15, column: 1, scope: !16)
!33 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 17, type: !17, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!34 = !DILocalVariable(name: "q", arg: 1, scope: !33, file: !9, line: 17, type: !5)
!35 = !DILocation(line: 17, column: 16, scope: !33)
!36 = !DILocalVariable(name: "a", scope: !33, file: !9, line: 19, type: !5)
!37 = !DILocation(line: 19, column: 11, scope: !33)
!38 = !DILocation(line: 19, column: 23, scope: !33)
!39 = !DILocation(line: 19, column: 15, scope: !33)
!40 = !DILocation(line: 20, column: 9, scope: !33)
!41 = !DILocation(line: 20, column: 5, scope: !33)
!42 = !DILocation(line: 21, column: 1, scope: !33)
!43 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 24, type: !44, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!44 = !DISubroutineType(types: !45)
!45 = !{!7}
!46 = !DILocalVariable(name: "a", scope: !43, file: !9, line: 26, type: !5)
!47 = !DILocation(line: 26, column: 11, scope: !43)
!48 = !DILocalVariable(name: "b", scope: !43, file: !9, line: 26, type: !6)
!49 = !DILocation(line: 26, column: 15, scope: !43)
!50 = !DILocalVariable(name: "c", scope: !43, file: !9, line: 26, type: !6)
!51 = !DILocation(line: 26, column: 19, scope: !43)
!52 = !DILocalVariable(name: "b1", scope: !43, file: !9, line: 26, type: !7)
!53 = !DILocation(line: 26, column: 22, scope: !43)
!54 = !DILocalVariable(name: "c1", scope: !43, file: !9, line: 26, type: !7)
!55 = !DILocation(line: 26, column: 26, scope: !43)
!56 = !DILocation(line: 28, column: 7, scope: !43)
!57 = !DILocation(line: 29, column: 7, scope: !43)
!58 = !DILocation(line: 30, column: 9, scope: !43)
!59 = !DILocation(line: 30, column: 5, scope: !43)
!60 = !DILocation(line: 31, column: 7, scope: !43)
!61 = !DILocation(line: 32, column: 9, scope: !43)
!62 = !DILocation(line: 32, column: 5, scope: !43)
!63 = !DILocation(line: 34, column: 5, scope: !43)
