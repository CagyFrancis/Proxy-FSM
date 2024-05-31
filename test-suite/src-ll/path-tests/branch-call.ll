; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\branch-call.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\branch-call.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* noundef %0, i32* noundef %1) #0 !dbg !8 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !15, metadata !DIExpression()), !dbg !16
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32** %5, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32** %6, metadata !21, metadata !DIExpression()), !dbg !22
  %7 = load i32*, i32** %3, align 8, !dbg !23
  store i32* %7, i32** %5, align 8, !dbg !24
  %8 = load i32*, i32** %4, align 8, !dbg !25
  store i32* %8, i32** %6, align 8, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32** %3, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %6, metadata !39, metadata !DIExpression()), !dbg !40
  %7 = load i32, i32* %6, align 4, !dbg !41
  %8 = icmp ne i32 %7, 0, !dbg !41
  br i1 %8, label %9, label %12, !dbg !43

9:                                                ; preds = %0
  store i32* %4, i32** %2, align 8, !dbg !44
  store i32* %5, i32** %3, align 8, !dbg !46
  %10 = load i32*, i32** %2, align 8, !dbg !47
  %11 = load i32*, i32** %3, align 8, !dbg !48
  call void @foo(i32* noundef %10, i32* noundef %11), !dbg !49
  br label %15, !dbg !50

12:                                               ; preds = %0
  store i32* %5, i32** %2, align 8, !dbg !51
  store i32* %6, i32** %3, align 8, !dbg !53
  %13 = load i32*, i32** %2, align 8, !dbg !54
  %14 = load i32*, i32** %3, align 8, !dbg !55
  call void @foo(i32* noundef %13, i32* noundef %14), !dbg !56
  br label %15

15:                                               ; preds = %12, %9
  ret i32 0, !dbg !57
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/branch-call.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/branch-call.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "m", arg: 1, scope: !8, file: !9, line: 7, type: !12)
!16 = !DILocation(line: 7, column: 15, scope: !8)
!17 = !DILocalVariable(name: "n", arg: 2, scope: !8, file: !9, line: 7, type: !12)
!18 = !DILocation(line: 7, column: 23, scope: !8)
!19 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 9, type: !12)
!20 = !DILocation(line: 9, column: 7, scope: !8)
!21 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 9, type: !12)
!22 = !DILocation(line: 9, column: 11, scope: !8)
!23 = !DILocation(line: 10, column: 6, scope: !8)
!24 = !DILocation(line: 10, column: 4, scope: !8)
!25 = !DILocation(line: 11, column: 6, scope: !8)
!26 = !DILocation(line: 11, column: 4, scope: !8)
!27 = !DILocation(line: 12, column: 1, scope: !8)
!28 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 14, type: !29, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!29 = !DISubroutineType(types: !30)
!30 = !{!13}
!31 = !DILocalVariable(name: "p", scope: !28, file: !9, line: 16, type: !12)
!32 = !DILocation(line: 16, column: 7, scope: !28)
!33 = !DILocalVariable(name: "q", scope: !28, file: !9, line: 16, type: !12)
!34 = !DILocation(line: 16, column: 11, scope: !28)
!35 = !DILocalVariable(name: "a", scope: !28, file: !9, line: 17, type: !13)
!36 = !DILocation(line: 17, column: 6, scope: !28)
!37 = !DILocalVariable(name: "b", scope: !28, file: !9, line: 17, type: !13)
!38 = !DILocation(line: 17, column: 9, scope: !28)
!39 = !DILocalVariable(name: "c", scope: !28, file: !9, line: 17, type: !13)
!40 = !DILocation(line: 17, column: 12, scope: !28)
!41 = !DILocation(line: 19, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !9, line: 19, column: 6)
!43 = !DILocation(line: 19, column: 6, scope: !28)
!44 = !DILocation(line: 21, column: 5, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !9, line: 20, column: 2)
!46 = !DILocation(line: 22, column: 5, scope: !45)
!47 = !DILocation(line: 23, column: 7, scope: !45)
!48 = !DILocation(line: 23, column: 10, scope: !45)
!49 = !DILocation(line: 23, column: 3, scope: !45)
!50 = !DILocation(line: 24, column: 2, scope: !45)
!51 = !DILocation(line: 27, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !42, file: !9, line: 26, column: 2)
!53 = !DILocation(line: 28, column: 5, scope: !52)
!54 = !DILocation(line: 29, column: 7, scope: !52)
!55 = !DILocation(line: 29, column: 10, scope: !52)
!56 = !DILocation(line: 29, column: 3, scope: !52)
!57 = !DILocation(line: 32, column: 2, scope: !28)
