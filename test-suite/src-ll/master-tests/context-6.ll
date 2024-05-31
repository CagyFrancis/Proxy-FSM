; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\context-6.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\context-6.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0, i32* noundef %1) #0 !dbg !8 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32*, i32** %4, align 8, !dbg !20
  %6 = load i32**, i32*** %3, align 8, !dbg !21
  store i32* %5, i32** %6, align 8, !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32** noundef %0, i32* noundef %1, i32* noundef %2) #0 !dbg !24 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !31, metadata !DIExpression()), !dbg !32
  %7 = load i32**, i32*** %4, align 8, !dbg !33
  %8 = load i32*, i32** %5, align 8, !dbg !34
  call void @bar(i32** noundef %7, i32* noundef %8), !dbg !35
  %9 = load i32**, i32*** %4, align 8, !dbg !36
  %10 = load i32*, i32** %6, align 8, !dbg !37
  call void @bar(i32** noundef %9, i32* noundef %10), !dbg !38
  %11 = load i32**, i32*** %4, align 8, !dbg !39
  %12 = load i32*, i32** %11, align 8, !dbg !40
  ret i32* %12, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 10, i32* %2, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 20, i32* %3, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32** %4, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32** %5, metadata !51, metadata !DIExpression()), !dbg !52
  %6 = call i32* @foo(i32** noundef %4, i32* noundef %2, i32* noundef %3), !dbg !53
  store i32* %6, i32** %5, align 8, !dbg !54
  ret i32 0, !dbg !55
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/context-6.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/context-6.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "q", arg: 2, scope: !8, file: !9, line: 1, type: !13)
!19 = !DILocation(line: 1, column: 24, scope: !8)
!20 = !DILocation(line: 3, column: 10, scope: !8)
!21 = !DILocation(line: 3, column: 6, scope: !8)
!22 = !DILocation(line: 3, column: 8, scope: !8)
!23 = !DILocation(line: 4, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 6, type: !25, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !12, !13, !13}
!27 = !DILocalVariable(name: "p", arg: 1, scope: !24, file: !9, line: 6, type: !12)
!28 = !DILocation(line: 6, column: 16, scope: !24)
!29 = !DILocalVariable(name: "a1", arg: 2, scope: !24, file: !9, line: 6, type: !13)
!30 = !DILocation(line: 6, column: 24, scope: !24)
!31 = !DILocalVariable(name: "a2", arg: 3, scope: !24, file: !9, line: 6, type: !13)
!32 = !DILocation(line: 6, column: 33, scope: !24)
!33 = !DILocation(line: 8, column: 9, scope: !24)
!34 = !DILocation(line: 8, column: 12, scope: !24)
!35 = !DILocation(line: 8, column: 5, scope: !24)
!36 = !DILocation(line: 9, column: 9, scope: !24)
!37 = !DILocation(line: 9, column: 12, scope: !24)
!38 = !DILocation(line: 9, column: 5, scope: !24)
!39 = !DILocation(line: 10, column: 13, scope: !24)
!40 = !DILocation(line: 10, column: 12, scope: !24)
!41 = !DILocation(line: 10, column: 5, scope: !24)
!42 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !43, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!43 = !DISubroutineType(types: !44)
!44 = !{!14}
!45 = !DILocalVariable(name: "o1", scope: !42, file: !9, line: 15, type: !14)
!46 = !DILocation(line: 15, column: 9, scope: !42)
!47 = !DILocalVariable(name: "o2", scope: !42, file: !9, line: 15, type: !14)
!48 = !DILocation(line: 15, column: 18, scope: !42)
!49 = !DILocalVariable(name: "p", scope: !42, file: !9, line: 16, type: !13)
!50 = !DILocation(line: 16, column: 10, scope: !42)
!51 = !DILocalVariable(name: "v", scope: !42, file: !9, line: 16, type: !13)
!52 = !DILocation(line: 16, column: 14, scope: !42)
!53 = !DILocation(line: 18, column: 9, scope: !42)
!54 = !DILocation(line: 18, column: 7, scope: !42)
!55 = !DILocation(line: 20, column: 5, scope: !42)
