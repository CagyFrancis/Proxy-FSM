; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-6.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-6.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i8* noundef %0) #0 !dbg !8 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %3, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = load i8*, i8** %2, align 8, !dbg !19
  store i8* %4, i8** %3, align 8, !dbg !20
  %5 = load i8*, i8** %3, align 8, !dbg !21
  ret i8* %5, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !34
  %5 = call i8* @f(i8* noundef %4), !dbg !35
  store i8* %5, i8** %3, align 8, !dbg !36
  %6 = load i8*, i8** %3, align 8, !dbg !37
  %7 = call i8* @f(i8* noundef %6), !dbg !38
  store i8* %7, i8** %3, align 8, !dbg !39
  %8 = load i8*, i8** %3, align 8, !dbg !40
  %9 = call i8* @f(i8* noundef %8), !dbg !41
  store i8* %9, i8** %3, align 8, !dbg !42
  %10 = load i8*, i8** %3, align 8, !dbg !43
  %11 = call i8* @f(i8* noundef %10), !dbg !44
  store i8* %11, i8** %3, align 8, !dbg !45
  ret i32 0, !dbg !46
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-6.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-6.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 11, scope: !8)
!19 = !DILocation(line: 4, column: 9, scope: !8)
!20 = !DILocation(line: 4, column: 7, scope: !8)
!21 = !DILocation(line: 5, column: 12, scope: !8)
!22 = !DILocation(line: 5, column: 5, scope: !8)
!23 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 8, type: !24, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "a", scope: !23, file: !9, line: 10, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = !DILocation(line: 10, column: 10, scope: !23)
!32 = !DILocalVariable(name: "c", scope: !23, file: !9, line: 11, type: !12)
!33 = !DILocation(line: 11, column: 11, scope: !23)
!34 = !DILocation(line: 13, column: 11, scope: !23)
!35 = !DILocation(line: 13, column: 9, scope: !23)
!36 = !DILocation(line: 13, column: 7, scope: !23)
!37 = !DILocation(line: 14, column: 11, scope: !23)
!38 = !DILocation(line: 14, column: 9, scope: !23)
!39 = !DILocation(line: 14, column: 7, scope: !23)
!40 = !DILocation(line: 15, column: 11, scope: !23)
!41 = !DILocation(line: 15, column: 9, scope: !23)
!42 = !DILocation(line: 15, column: 7, scope: !23)
!43 = !DILocation(line: 16, column: 11, scope: !23)
!44 = !DILocation(line: 16, column: 9, scope: !23)
!45 = !DILocation(line: 16, column: 7, scope: !23)
!46 = !DILocation(line: 18, column: 5, scope: !23)
