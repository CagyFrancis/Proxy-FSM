; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-context.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-context.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !11 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !16, metadata !DIExpression()), !dbg !17
  %3 = load i32*, i32** %2, align 8, !dbg !18
  ret i32* %3, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32** %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32** %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !31, metadata !DIExpression()), !dbg !33
  store i32** %2, i32*** %6, align 8, !dbg !33
  %7 = call i8* @malloc(i64 noundef 4), !dbg !34
  %8 = bitcast i8* %7 to i32*, !dbg !35
  store i32* %8, i32** %2, align 8, !dbg !36
  %9 = load i32*, i32** %2, align 8, !dbg !37
  %10 = call i32* @foo(i32* noundef %9), !dbg !38
  store i32* %10, i32** %4, align 8, !dbg !39
  %11 = load i32*, i32** %4, align 8, !dbg !40
  store i32* %11, i32** %3, align 8, !dbg !41
  %12 = call i8* @malloc(i64 noundef 4), !dbg !42
  %13 = bitcast i8* %12 to i32*, !dbg !43
  %14 = load i32**, i32*** %6, align 8, !dbg !44
  store i32* %13, i32** %14, align 8, !dbg !45
  %15 = load i32**, i32*** %6, align 8, !dbg !46
  %16 = load i32*, i32** %15, align 8, !dbg !47
  %17 = call i32* @foo(i32* noundef %16), !dbg !48
  store i32* %17, i32** %5, align 8, !dbg !49
  %18 = load i32*, i32** %5, align 8, !dbg !50
  store i32* %18, i32** %3, align 8, !dbg !51
  %19 = load i32*, i32** %4, align 8, !dbg !52
  %20 = bitcast i32* %19 to i8*, !dbg !52
  call void @free(i8* noundef %20), !dbg !53
  %21 = load i32*, i32** %5, align 8, !dbg !54
  %22 = bitcast i32* %21 to i8*, !dbg !54
  call void @free(i8* noundef %22), !dbg !55
  ret i32 0, !dbg !56
}

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-context.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "foo", scope: !12, file: !12, line: 3, type: !13, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-context.c", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{!3, !3}
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !11, file: !12, line: 3, type: !3)
!17 = !DILocation(line: 3, column: 15, scope: !11)
!18 = !DILocation(line: 5, column: 12, scope: !11)
!19 = !DILocation(line: 5, column: 5, scope: !11)
!20 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 8, type: !21, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!21 = !DISubroutineType(types: !22)
!22 = !{!4}
!23 = !DILocalVariable(name: "x", scope: !20, file: !12, line: 10, type: !3)
!24 = !DILocation(line: 10, column: 10, scope: !20)
!25 = !DILocalVariable(name: "y", scope: !20, file: !12, line: 10, type: !3)
!26 = !DILocation(line: 10, column: 14, scope: !20)
!27 = !DILocalVariable(name: "r1", scope: !20, file: !12, line: 11, type: !3)
!28 = !DILocation(line: 11, column: 10, scope: !20)
!29 = !DILocalVariable(name: "r2", scope: !20, file: !12, line: 11, type: !3)
!30 = !DILocation(line: 11, column: 15, scope: !20)
!31 = !DILocalVariable(name: "p", scope: !20, file: !12, line: 12, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!33 = !DILocation(line: 12, column: 11, scope: !20)
!34 = !DILocation(line: 14, column: 16, scope: !20)
!35 = !DILocation(line: 14, column: 9, scope: !20)
!36 = !DILocation(line: 14, column: 7, scope: !20)
!37 = !DILocation(line: 15, column: 14, scope: !20)
!38 = !DILocation(line: 15, column: 10, scope: !20)
!39 = !DILocation(line: 15, column: 8, scope: !20)
!40 = !DILocation(line: 16, column: 9, scope: !20)
!41 = !DILocation(line: 16, column: 7, scope: !20)
!42 = !DILocation(line: 18, column: 17, scope: !20)
!43 = !DILocation(line: 18, column: 10, scope: !20)
!44 = !DILocation(line: 18, column: 6, scope: !20)
!45 = !DILocation(line: 18, column: 8, scope: !20)
!46 = !DILocation(line: 19, column: 15, scope: !20)
!47 = !DILocation(line: 19, column: 14, scope: !20)
!48 = !DILocation(line: 19, column: 10, scope: !20)
!49 = !DILocation(line: 19, column: 8, scope: !20)
!50 = !DILocation(line: 20, column: 9, scope: !20)
!51 = !DILocation(line: 20, column: 7, scope: !20)
!52 = !DILocation(line: 22, column: 10, scope: !20)
!53 = !DILocation(line: 22, column: 5, scope: !20)
!54 = !DILocation(line: 23, column: 10, scope: !20)
!55 = !DILocation(line: 23, column: 5, scope: !20)
!56 = !DILocation(line: 24, column: 5, scope: !20)
