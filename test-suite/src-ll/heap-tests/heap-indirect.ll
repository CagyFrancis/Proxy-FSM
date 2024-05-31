; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-indirect.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-indirect.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malloc_two(i32** noundef %0, i32** noundef %1) #0 !dbg !11 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = call i8* @malloc(i64 noundef 4), !dbg !21
  %6 = bitcast i8* %5 to i32*, !dbg !22
  %7 = load i32**, i32*** %3, align 8, !dbg !23
  store i32* %6, i32** %7, align 8, !dbg !24
  %8 = call i8* @malloc(i64 noundef 4), !dbg !25
  %9 = bitcast i8* %8 to i32*, !dbg !26
  %10 = load i32**, i32*** %4, align 8, !dbg !27
  store i32* %9, i32** %10, align 8, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = call i8* @malloc(i64 noundef 8), !dbg !37
  %6 = bitcast i8* %5 to i32**, !dbg !37
  store i32** %6, i32*** %3, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !38, metadata !DIExpression()), !dbg !39
  %7 = call i8* @malloc(i64 noundef 8), !dbg !40
  %8 = bitcast i8* %7 to i32**, !dbg !40
  store i32** %8, i32*** %4, align 8, !dbg !39
  %9 = load i32**, i32*** %3, align 8, !dbg !41
  %10 = load i32**, i32*** %4, align 8, !dbg !42
  call void @malloc_two(i32** noundef %9, i32** noundef %10), !dbg !43
  %11 = load i32**, i32*** %3, align 8, !dbg !44
  %12 = load i32*, i32** %11, align 8, !dbg !45
  store i32* %12, i32** %2, align 8, !dbg !46
  %13 = load i32**, i32*** %4, align 8, !dbg !47
  %14 = load i32*, i32** %13, align 8, !dbg !48
  store i32* %14, i32** %2, align 8, !dbg !49
  ret i32 0, !dbg !50
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-indirect.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "malloc_two", scope: !12, file: !12, line: 11, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-indirect.c", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!16 = !{}
!17 = !DILocalVariable(name: "p", arg: 1, scope: !11, file: !12, line: 11, type: !15)
!18 = !DILocation(line: 11, column: 23, scope: !11)
!19 = !DILocalVariable(name: "q", arg: 2, scope: !11, file: !12, line: 11, type: !15)
!20 = !DILocation(line: 11, column: 32, scope: !11)
!21 = !DILocation(line: 13, column: 14, scope: !11)
!22 = !DILocation(line: 13, column: 7, scope: !11)
!23 = !DILocation(line: 13, column: 3, scope: !11)
!24 = !DILocation(line: 13, column: 5, scope: !11)
!25 = !DILocation(line: 14, column: 14, scope: !11)
!26 = !DILocation(line: 14, column: 7, scope: !11)
!27 = !DILocation(line: 14, column: 3, scope: !11)
!28 = !DILocation(line: 14, column: 5, scope: !11)
!29 = !DILocation(line: 15, column: 1, scope: !11)
!30 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 17, type: !31, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!31 = !DISubroutineType(types: !32)
!32 = !{!4}
!33 = !DILocalVariable(name: "p", scope: !30, file: !12, line: 19, type: !3)
!34 = !DILocation(line: 19, column: 7, scope: !30)
!35 = !DILocalVariable(name: "o1", scope: !30, file: !12, line: 20, type: !15)
!36 = !DILocation(line: 20, column: 8, scope: !30)
!37 = !DILocation(line: 20, column: 13, scope: !30)
!38 = !DILocalVariable(name: "o2", scope: !30, file: !12, line: 21, type: !15)
!39 = !DILocation(line: 21, column: 8, scope: !30)
!40 = !DILocation(line: 21, column: 13, scope: !30)
!41 = !DILocation(line: 22, column: 13, scope: !30)
!42 = !DILocation(line: 22, column: 17, scope: !30)
!43 = !DILocation(line: 22, column: 2, scope: !30)
!44 = !DILocation(line: 24, column: 7, scope: !30)
!45 = !DILocation(line: 24, column: 6, scope: !30)
!46 = !DILocation(line: 24, column: 4, scope: !30)
!47 = !DILocation(line: 25, column: 7, scope: !30)
!48 = !DILocation(line: 25, column: 6, scope: !30)
!49 = !DILocation(line: 25, column: 4, scope: !30)
!50 = !DILocation(line: 27, column: 2, scope: !30)
