; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-13.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-13.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@foo.k = internal global i32* @ss, align 8, !dbg !0
@ss = dso_local global i32 0, align 4, !dbg !11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* noundef %0) #0 !dbg !2 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !20, metadata !DIExpression()), !dbg !21
  %3 = load i32*, i32** %2, align 8, !dbg !22
  store i32* %3, i32** @foo.k, align 8, !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32** %3, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %4, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %5, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %4, i32** %2, align 8, !dbg !36
  %6 = load i32*, i32** %2, align 8, !dbg !37
  call void @foo(i32* noundef %6), !dbg !38
  store i32* %5, i32** %3, align 8, !dbg !39
  %7 = load i32*, i32** %3, align 8, !dbg !40
  call void @foo(i32* noundef %7), !dbg !41
  ret i32 0, !dbg !42
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "k", scope: !2, file: !3, line: 5, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 3, type: !4, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !13)
!3 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-13.c", directory: "")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !10, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-13.c", directory: "D:/Projects/Python/PointerAnalysis")
!10 = !{!0, !11}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "ss", scope: !8, file: !3, line: 1, type: !7, isLocal: false, isDefinition: true)
!13 = !{}
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !2, file: !3, line: 3, type: !6)
!21 = !DILocation(line: 3, column: 15, scope: !2)
!22 = !DILocation(line: 6, column: 9, scope: !2)
!23 = !DILocation(line: 6, column: 7, scope: !2)
!24 = !DILocation(line: 7, column: 1, scope: !2)
!25 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 9, type: !26, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !13)
!26 = !DISubroutineType(types: !27)
!27 = !{!7}
!28 = !DILocalVariable(name: "a", scope: !25, file: !3, line: 11, type: !6)
!29 = !DILocation(line: 11, column: 10, scope: !25)
!30 = !DILocalVariable(name: "b", scope: !25, file: !3, line: 11, type: !6)
!31 = !DILocation(line: 11, column: 14, scope: !25)
!32 = !DILocalVariable(name: "obj", scope: !25, file: !3, line: 11, type: !7)
!33 = !DILocation(line: 11, column: 17, scope: !25)
!34 = !DILocalVariable(name: "t", scope: !25, file: !3, line: 11, type: !7)
!35 = !DILocation(line: 11, column: 22, scope: !25)
!36 = !DILocation(line: 13, column: 7, scope: !25)
!37 = !DILocation(line: 14, column: 9, scope: !25)
!38 = !DILocation(line: 14, column: 5, scope: !25)
!39 = !DILocation(line: 15, column: 7, scope: !25)
!40 = !DILocation(line: 16, column: 9, scope: !25)
!41 = !DILocation(line: 16, column: 5, scope: !25)
!42 = !DILocation(line: 18, column: 5, scope: !25)
