; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-simple.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-simple.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %3, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %4, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !22, metadata !DIExpression()), !dbg !24
  store i32** %2, i32*** %5, align 8, !dbg !24
  %6 = call i8* @malloc(i64 noundef 4), !dbg !25
  %7 = bitcast i8* %6 to i32*, !dbg !26
  store i32* %7, i32** %2, align 8, !dbg !27
  %8 = load i32*, i32** %2, align 8, !dbg !28
  store i32* %8, i32** %3, align 8, !dbg !29
  %9 = load i32*, i32** %3, align 8, !dbg !30
  %10 = bitcast i32* %9 to i8*, !dbg !30
  call void @free(i8* noundef %10), !dbg !31
  %11 = call i8* @malloc(i64 noundef 4), !dbg !32
  %12 = bitcast i8* %11 to i32*, !dbg !33
  %13 = load i32**, i32*** %5, align 8, !dbg !34
  store i32* %12, i32** %13, align 8, !dbg !35
  %14 = load i32**, i32*** %5, align 8, !dbg !36
  %15 = load i32*, i32** %14, align 8, !dbg !37
  store i32* %15, i32** %3, align 8, !dbg !38
  %16 = load i32*, i32** %3, align 8, !dbg !39
  %17 = bitcast i32* %16 to i8*, !dbg !39
  call void @free(i8* noundef %17), !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-simple.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 3, type: !13, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-simple.c", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{!4}
!15 = !{}
!16 = !DILocalVariable(name: "x", scope: !11, file: !12, line: 5, type: !3)
!17 = !DILocation(line: 5, column: 10, scope: !11)
!18 = !DILocalVariable(name: "y", scope: !11, file: !12, line: 5, type: !3)
!19 = !DILocation(line: 5, column: 14, scope: !11)
!20 = !DILocalVariable(name: "z", scope: !11, file: !12, line: 5, type: !3)
!21 = !DILocation(line: 5, column: 18, scope: !11)
!22 = !DILocalVariable(name: "p", scope: !11, file: !12, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!24 = !DILocation(line: 6, column: 11, scope: !11)
!25 = !DILocation(line: 8, column: 16, scope: !11)
!26 = !DILocation(line: 8, column: 9, scope: !11)
!27 = !DILocation(line: 8, column: 7, scope: !11)
!28 = !DILocation(line: 9, column: 9, scope: !11)
!29 = !DILocation(line: 9, column: 7, scope: !11)
!30 = !DILocation(line: 10, column: 10, scope: !11)
!31 = !DILocation(line: 10, column: 5, scope: !11)
!32 = !DILocation(line: 12, column: 17, scope: !11)
!33 = !DILocation(line: 12, column: 10, scope: !11)
!34 = !DILocation(line: 12, column: 6, scope: !11)
!35 = !DILocation(line: 12, column: 8, scope: !11)
!36 = !DILocation(line: 13, column: 10, scope: !11)
!37 = !DILocation(line: 13, column: 9, scope: !11)
!38 = !DILocation(line: 13, column: 7, scope: !11)
!39 = !DILocation(line: 14, column: 10, scope: !11)
!40 = !DILocation(line: 14, column: 5, scope: !11)
!41 = !DILocation(line: 16, column: 5, scope: !11)
