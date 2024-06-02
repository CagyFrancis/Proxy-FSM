; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\main-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\main-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quz() #0 !dbg !11 {
  %1 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %1, metadata !15, metadata !DIExpression()), !dbg !16
  %2 = call i8* @malloc(i64 noundef 4), !dbg !17
  %3 = bitcast i8* %2 to i32*, !dbg !18
  store i32* %3, i32** %1, align 8, !dbg !16
  %4 = load i32*, i32** %1, align 8, !dbg !19
  ret i32* %4, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bar(i32* noundef %0) #0 !dbg !21 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !24, metadata !DIExpression()), !dbg !25
  %3 = load i32*, i32** %2, align 8, !dbg !26
  ret i32* %3, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !28 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32** %3, metadata !31, metadata !DIExpression()), !dbg !32
  %5 = load i32*, i32** %2, align 8, !dbg !33
  %6 = call i32* @bar(i32* noundef %5), !dbg !34
  store i32* %6, i32** %3, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i32** %4, metadata !35, metadata !DIExpression()), !dbg !36
  %7 = load i32*, i32** %3, align 8, !dbg !37
  %8 = call i32* @bar(i32* noundef %7), !dbg !38
  store i32* %8, i32** %4, align 8, !dbg !36
  %9 = load i32*, i32** %4, align 8, !dbg !39
  ret i32* %9, !dbg !40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32** %4, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32** %5, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32** %6, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = call i32* @foo(i32* noundef %2), !dbg !54
  store i32* %7, i32** %4, align 8, !dbg !55
  %8 = call i32* @foo(i32* noundef %3), !dbg !56
  store i32* %8, i32** %5, align 8, !dbg !57
  %9 = call i32* @quz(), !dbg !58
  store i32* %9, i32** %6, align 8, !dbg !59
  ret i32 0, !dbg !60
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/main-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "quz", scope: !12, file: !12, line: 3, type: !13, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/main-1.c", directory: "")
!13 = !DISubroutineType(types: !2)
!14 = !{}
!15 = !DILocalVariable(name: "r", scope: !11, file: !12, line: 4, type: !3)
!16 = !DILocation(line: 4, column: 10, scope: !11)
!17 = !DILocation(line: 4, column: 21, scope: !11)
!18 = !DILocation(line: 4, column: 14, scope: !11)
!19 = !DILocation(line: 5, column: 12, scope: !11)
!20 = !DILocation(line: 5, column: 5, scope: !11)
!21 = distinct !DISubprogram(name: "bar", scope: !12, file: !12, line: 8, type: !22, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!22 = !DISubroutineType(types: !23)
!23 = !{!3, !3}
!24 = !DILocalVariable(name: "q", arg: 1, scope: !21, file: !12, line: 8, type: !3)
!25 = !DILocation(line: 8, column: 15, scope: !21)
!26 = !DILocation(line: 9, column: 12, scope: !21)
!27 = !DILocation(line: 9, column: 5, scope: !21)
!28 = distinct !DISubprogram(name: "foo", scope: !12, file: !12, line: 12, type: !22, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!29 = !DILocalVariable(name: "p", arg: 1, scope: !28, file: !12, line: 12, type: !3)
!30 = !DILocation(line: 12, column: 15, scope: !28)
!31 = !DILocalVariable(name: "t", scope: !28, file: !12, line: 13, type: !3)
!32 = !DILocation(line: 13, column: 10, scope: !28)
!33 = !DILocation(line: 13, column: 18, scope: !28)
!34 = !DILocation(line: 13, column: 14, scope: !28)
!35 = !DILocalVariable(name: "s", scope: !28, file: !12, line: 14, type: !3)
!36 = !DILocation(line: 14, column: 10, scope: !28)
!37 = !DILocation(line: 14, column: 18, scope: !28)
!38 = !DILocation(line: 14, column: 14, scope: !28)
!39 = !DILocation(line: 15, column: 12, scope: !28)
!40 = !DILocation(line: 15, column: 5, scope: !28)
!41 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 18, type: !42, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!42 = !DISubroutineType(types: !43)
!43 = !{!4}
!44 = !DILocalVariable(name: "a", scope: !41, file: !12, line: 19, type: !4)
!45 = !DILocation(line: 19, column: 9, scope: !41)
!46 = !DILocalVariable(name: "b", scope: !41, file: !12, line: 19, type: !4)
!47 = !DILocation(line: 19, column: 12, scope: !41)
!48 = !DILocalVariable(name: "r1", scope: !41, file: !12, line: 20, type: !3)
!49 = !DILocation(line: 20, column: 10, scope: !41)
!50 = !DILocalVariable(name: "r2", scope: !41, file: !12, line: 20, type: !3)
!51 = !DILocation(line: 20, column: 15, scope: !41)
!52 = !DILocalVariable(name: "r3", scope: !41, file: !12, line: 20, type: !3)
!53 = !DILocation(line: 20, column: 20, scope: !41)
!54 = !DILocation(line: 22, column: 10, scope: !41)
!55 = !DILocation(line: 22, column: 8, scope: !41)
!56 = !DILocation(line: 23, column: 10, scope: !41)
!57 = !DILocation(line: 23, column: 8, scope: !41)
!58 = !DILocation(line: 24, column: 10, scope: !41)
!59 = !DILocation(line: 24, column: 8, scope: !41)
!60 = !DILocation(line: 26, column: 5, scope: !41)
