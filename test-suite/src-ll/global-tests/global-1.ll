; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@g = dso_local global i32* null, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* noundef %0) #0 !dbg !14 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i32*, i32** %2, align 8, !dbg !20
  store i32* %3, i32** @g, align 8, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 10, i32* %2, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32** %3, metadata !28, metadata !DIExpression()), !dbg !29
  call void @foo(i32* noundef %2), !dbg !30
  %4 = load i32*, i32** @g, align 8, !dbg !31
  store i32* %4, i32** %3, align 8, !dbg !32
  ret i32 0, !dbg !33
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-1.c", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 3, type: !15, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !6}
!17 = !{}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !14, file: !5, line: 3, type: !6)
!19 = !DILocation(line: 3, column: 15, scope: !14)
!20 = !DILocation(line: 5, column: 9, scope: !14)
!21 = !DILocation(line: 5, column: 7, scope: !14)
!22 = !DILocation(line: 6, column: 1, scope: !14)
!23 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 8, type: !24, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{!7}
!26 = !DILocalVariable(name: "a", scope: !23, file: !5, line: 10, type: !7)
!27 = !DILocation(line: 10, column: 9, scope: !23)
!28 = !DILocalVariable(name: "p", scope: !23, file: !5, line: 11, type: !6)
!29 = !DILocation(line: 11, column: 10, scope: !23)
!30 = !DILocation(line: 13, column: 5, scope: !23)
!31 = !DILocation(line: 14, column: 9, scope: !23)
!32 = !DILocation(line: 14, column: 7, scope: !23)
!33 = !DILocation(line: 16, column: 5, scope: !23)
