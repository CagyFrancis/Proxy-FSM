; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-2.c"
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
define dso_local void @g(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  %4 = call i8* @f(i8* noundef %3), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !35, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !DIExpression()), !dbg !41
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !42
  %5 = call i8* @f(i8* noundef %4), !dbg !43
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !44
  call void @g(i8* noundef %6), !dbg !45
  ret i32 0, !dbg !46
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-2.c", directory: "")
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
!23 = distinct !DISubprogram(name: "g", scope: !9, file: !9, line: 8, type: !24, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !12}
!26 = !DILocalVariable(name: "a", arg: 1, scope: !23, file: !9, line: 8, type: !12)
!27 = !DILocation(line: 8, column: 14, scope: !23)
!28 = !DILocation(line: 10, column: 7, scope: !23)
!29 = !DILocation(line: 10, column: 5, scope: !23)
!30 = !DILocation(line: 11, column: 1, scope: !23)
!31 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !32, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!32 = !DISubroutineType(types: !33)
!33 = !{!34}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "a", scope: !31, file: !9, line: 15, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 10)
!39 = !DILocation(line: 15, column: 10, scope: !31)
!40 = !DILocalVariable(name: "c", scope: !31, file: !9, line: 16, type: !12)
!41 = !DILocation(line: 16, column: 11, scope: !31)
!42 = !DILocation(line: 18, column: 7, scope: !31)
!43 = !DILocation(line: 18, column: 5, scope: !31)
!44 = !DILocation(line: 19, column: 7, scope: !31)
!45 = !DILocation(line: 19, column: 5, scope: !31)
!46 = !DILocation(line: 21, column: 5, scope: !31)
