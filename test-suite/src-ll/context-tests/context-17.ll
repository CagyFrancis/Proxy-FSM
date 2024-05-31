; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-17.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-17.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(i32** noundef %0, i32** noundef %1) #0 !dbg !8 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32** %1, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32**, i32*** %4, align 8, !dbg !20
  %6 = load i32*, i32** %5, align 8, !dbg !21
  %7 = load i32**, i32*** %3, align 8, !dbg !22
  store i32* %6, i32** %7, align 8, !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0, i32** noundef %1, i32** noundef %2) #0 !dbg !25 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  call void @llvm.dbg.declare(metadata i32*** %4, metadata !28, metadata !DIExpression()), !dbg !29
  store i32** %1, i32*** %5, align 8
  call void @llvm.dbg.declare(metadata i32*** %5, metadata !30, metadata !DIExpression()), !dbg !31
  store i32** %2, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %7, metadata !34, metadata !DIExpression()), !dbg !35
  %8 = load i32**, i32*** %5, align 8, !dbg !36
  store i32* %7, i32** %8, align 8, !dbg !37
  %9 = load i32**, i32*** %4, align 8, !dbg !38
  %10 = load i32*, i32** %9, align 8, !dbg !39
  %11 = load i32**, i32*** %6, align 8, !dbg !40
  store i32* %10, i32** %11, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !43 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32** %3, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32** %4, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32** %5, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32** %6, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32** %7, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %8, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32*** %10, metadata !62, metadata !DIExpression()), !dbg !63
  store i32** %2, i32*** %10, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32*** %11, metadata !64, metadata !DIExpression()), !dbg !65
  store i32** %3, i32*** %11, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32*** %12, metadata !66, metadata !DIExpression()), !dbg !67
  store i32** %4, i32*** %12, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i32*** %13, metadata !68, metadata !DIExpression()), !dbg !69
  store i32** %5, i32*** %13, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i32*** %14, metadata !70, metadata !DIExpression()), !dbg !71
  store i32** %6, i32*** %14, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i32*** %15, metadata !72, metadata !DIExpression()), !dbg !73
  store i32** %7, i32*** %15, align 8, !dbg !73
  store i32* %8, i32** %3, align 8, !dbg !74
  store i32* %9, i32** %5, align 8, !dbg !75
  %16 = load i32**, i32*** %10, align 8, !dbg !76
  %17 = load i32**, i32*** %11, align 8, !dbg !77
  call void @bar(i32** noundef %16, i32** noundef %17), !dbg !78
  %18 = load i32**, i32*** %10, align 8, !dbg !79
  %19 = load i32**, i32*** %11, align 8, !dbg !80
  %20 = load i32**, i32*** %12, align 8, !dbg !81
  call void @foo(i32** noundef %18, i32** noundef %19, i32** noundef %20), !dbg !82
  %21 = load i32**, i32*** %13, align 8, !dbg !83
  %22 = load i32**, i32*** %14, align 8, !dbg !84
  %23 = load i32**, i32*** %15, align 8, !dbg !85
  call void @foo(i32** noundef %21, i32** noundef %22, i32** noundef %23), !dbg !86
  ret i32 0, !dbg !87
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-17.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-17.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "k", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 16, scope: !8)
!18 = !DILocalVariable(name: "s", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 25, scope: !8)
!20 = !DILocation(line: 3, column: 8, scope: !8)
!21 = !DILocation(line: 3, column: 7, scope: !8)
!22 = !DILocation(line: 3, column: 3, scope: !8)
!23 = !DILocation(line: 3, column: 5, scope: !8)
!24 = !DILocation(line: 4, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 6, type: !26, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !12, !12, !12}
!28 = !DILocalVariable(name: "x", arg: 1, scope: !25, file: !9, line: 6, type: !12)
!29 = !DILocation(line: 6, column: 16, scope: !25)
!30 = !DILocalVariable(name: "y", arg: 2, scope: !25, file: !9, line: 6, type: !12)
!31 = !DILocation(line: 6, column: 25, scope: !25)
!32 = !DILocalVariable(name: "z", arg: 3, scope: !25, file: !9, line: 6, type: !12)
!33 = !DILocation(line: 6, column: 34, scope: !25)
!34 = !DILocalVariable(name: "t", scope: !25, file: !9, line: 8, type: !14)
!35 = !DILocation(line: 8, column: 6, scope: !25)
!36 = !DILocation(line: 9, column: 3, scope: !25)
!37 = !DILocation(line: 9, column: 5, scope: !25)
!38 = !DILocation(line: 10, column: 8, scope: !25)
!39 = !DILocation(line: 10, column: 7, scope: !25)
!40 = !DILocation(line: 10, column: 3, scope: !25)
!41 = !DILocation(line: 10, column: 5, scope: !25)
!42 = !DILocation(line: 11, column: 1, scope: !25)
!43 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !44, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!44 = !DISubroutineType(types: !45)
!45 = !{!14}
!46 = !DILocalVariable(name: "p1", scope: !43, file: !9, line: 15, type: !13)
!47 = !DILocation(line: 15, column: 7, scope: !43)
!48 = !DILocalVariable(name: "q1", scope: !43, file: !9, line: 15, type: !13)
!49 = !DILocation(line: 15, column: 12, scope: !43)
!50 = !DILocalVariable(name: "r1", scope: !43, file: !9, line: 15, type: !13)
!51 = !DILocation(line: 15, column: 17, scope: !43)
!52 = !DILocalVariable(name: "a1", scope: !43, file: !9, line: 15, type: !13)
!53 = !DILocation(line: 15, column: 22, scope: !43)
!54 = !DILocalVariable(name: "b1", scope: !43, file: !9, line: 15, type: !13)
!55 = !DILocation(line: 15, column: 27, scope: !43)
!56 = !DILocalVariable(name: "c1", scope: !43, file: !9, line: 15, type: !13)
!57 = !DILocation(line: 15, column: 32, scope: !43)
!58 = !DILocalVariable(name: "q2", scope: !43, file: !9, line: 15, type: !14)
!59 = !DILocation(line: 15, column: 36, scope: !43)
!60 = !DILocalVariable(name: "a2", scope: !43, file: !9, line: 15, type: !14)
!61 = !DILocation(line: 15, column: 40, scope: !43)
!62 = !DILocalVariable(name: "p", scope: !43, file: !9, line: 16, type: !12)
!63 = !DILocation(line: 16, column: 8, scope: !43)
!64 = !DILocalVariable(name: "q", scope: !43, file: !9, line: 17, type: !12)
!65 = !DILocation(line: 17, column: 8, scope: !43)
!66 = !DILocalVariable(name: "r", scope: !43, file: !9, line: 18, type: !12)
!67 = !DILocation(line: 18, column: 8, scope: !43)
!68 = !DILocalVariable(name: "a", scope: !43, file: !9, line: 19, type: !12)
!69 = !DILocation(line: 19, column: 8, scope: !43)
!70 = !DILocalVariable(name: "b", scope: !43, file: !9, line: 20, type: !12)
!71 = !DILocation(line: 20, column: 8, scope: !43)
!72 = !DILocalVariable(name: "c", scope: !43, file: !9, line: 21, type: !12)
!73 = !DILocation(line: 21, column: 8, scope: !43)
!74 = !DILocation(line: 23, column: 5, scope: !43)
!75 = !DILocation(line: 24, column: 5, scope: !43)
!76 = !DILocation(line: 25, column: 6, scope: !43)
!77 = !DILocation(line: 25, column: 9, scope: !43)
!78 = !DILocation(line: 25, column: 2, scope: !43)
!79 = !DILocation(line: 26, column: 6, scope: !43)
!80 = !DILocation(line: 26, column: 9, scope: !43)
!81 = !DILocation(line: 26, column: 12, scope: !43)
!82 = !DILocation(line: 26, column: 2, scope: !43)
!83 = !DILocation(line: 27, column: 6, scope: !43)
!84 = !DILocation(line: 27, column: 9, scope: !43)
!85 = !DILocation(line: 27, column: 12, scope: !43)
!86 = !DILocation(line: 27, column: 2, scope: !43)
!87 = !DILocation(line: 29, column: 2, scope: !43)
