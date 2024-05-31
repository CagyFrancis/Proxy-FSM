; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-18.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-18.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@b = dso_local global i32 0, align 4, !dbg !0
@obj = dso_local global i32 0, align 4, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0) #0 !dbg !15 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = load i32**, i32*** %2, align 8, !dbg !23
  store i32* @b, i32** %3, align 8, !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !26 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i32**, i32*** %2, align 8, !dbg !29
  store i32* @obj, i32** %3, align 8, !dbg !30
  %4 = load i32**, i32*** %2, align 8, !dbg !31
  call void @bar(i32** noundef %4), !dbg !32
  ret void, !dbg !33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %3, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %4, metadata !41, metadata !DIExpression()), !dbg !42
  store i32** %3, i32*** %2, align 8, !dbg !43
  %5 = load i32**, i32*** %2, align 8, !dbg !44
  call void @foo(i32** noundef %5), !dbg !45
  store i32** %4, i32*** %2, align 8, !dbg !46
  %6 = load i32**, i32*** %2, align 8, !dbg !47
  call void @foo(i32** noundef %6), !dbg !48
  ret i32 0, !dbg !49
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-18.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-18.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!15 = distinct !DISubprogram(name: "bar", scope: !7, file: !7, line: 3, type: !16, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !{}
!21 = !DILocalVariable(name: "s", arg: 1, scope: !15, file: !7, line: 3, type: !18)
!22 = !DILocation(line: 3, column: 16, scope: !15)
!23 = !DILocation(line: 5, column: 3, scope: !15)
!24 = !DILocation(line: 5, column: 5, scope: !15)
!25 = !DILocation(line: 6, column: 1, scope: !15)
!26 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 8, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!27 = !DILocalVariable(name: "p", arg: 1, scope: !26, file: !7, line: 8, type: !18)
!28 = !DILocation(line: 8, column: 16, scope: !26)
!29 = !DILocation(line: 10, column: 3, scope: !26)
!30 = !DILocation(line: 10, column: 5, scope: !26)
!31 = !DILocation(line: 11, column: 6, scope: !26)
!32 = !DILocation(line: 11, column: 2, scope: !26)
!33 = !DILocation(line: 12, column: 1, scope: !26)
!34 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 14, type: !35, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!35 = !DISubroutineType(types: !36)
!36 = !{!8}
!37 = !DILocalVariable(name: "x", scope: !34, file: !7, line: 16, type: !18)
!38 = !DILocation(line: 16, column: 8, scope: !34)
!39 = !DILocalVariable(name: "a", scope: !34, file: !7, line: 17, type: !19)
!40 = !DILocation(line: 17, column: 7, scope: !34)
!41 = !DILocalVariable(name: "c", scope: !34, file: !7, line: 17, type: !19)
!42 = !DILocation(line: 17, column: 11, scope: !34)
!43 = !DILocation(line: 19, column: 4, scope: !34)
!44 = !DILocation(line: 20, column: 6, scope: !34)
!45 = !DILocation(line: 20, column: 2, scope: !34)
!46 = !DILocation(line: 21, column: 4, scope: !34)
!47 = !DILocation(line: 22, column: 6, scope: !34)
!48 = !DILocation(line: 22, column: 2, scope: !34)
!49 = !DILocation(line: 24, column: 2, scope: !34)
