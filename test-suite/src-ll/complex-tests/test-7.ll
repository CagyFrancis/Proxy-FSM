; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-7.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-7.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i8** noundef %0) #0 !dbg !8 {
  %2 = alloca i8**, align 8
  %3 = alloca [10 x i32], align 16
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata [10 x i32]* %3, metadata !18, metadata !DIExpression()), !dbg !23
  %4 = load i8**, i8*** %2, align 8, !dbg !24
  %5 = load i8*, i8** %4, align 8, !dbg !25
  %6 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !25
  store i8* %6, i8** %4, align 8, !dbg !25
  ret void, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !35
  store i8* %4, i8** %3, align 8, !dbg !36
  call void @f(i8** noundef %3), !dbg !37
  call void @f(i8** noundef %3), !dbg !38
  ret i32 0, !dbg !39
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-7.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-7.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 15, scope: !8)
!18 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 3, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, elements: !21)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22}
!22 = !DISubrange(count: 10)
!23 = !DILocation(line: 3, column: 9, scope: !8)
!24 = !DILocation(line: 4, column: 7, scope: !8)
!25 = !DILocation(line: 4, column: 9, scope: !8)
!26 = !DILocation(line: 5, column: 1, scope: !8)
!27 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !28, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!28 = !DISubroutineType(types: !29)
!29 = !{!20}
!30 = !DILocalVariable(name: "a", scope: !27, file: !9, line: 9, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !21)
!32 = !DILocation(line: 9, column: 10, scope: !27)
!33 = !DILocalVariable(name: "c", scope: !27, file: !9, line: 10, type: !13)
!34 = !DILocation(line: 10, column: 11, scope: !27)
!35 = !DILocation(line: 12, column: 9, scope: !27)
!36 = !DILocation(line: 12, column: 7, scope: !27)
!37 = !DILocation(line: 14, column: 5, scope: !27)
!38 = !DILocation(line: 15, column: 5, scope: !27)
!39 = !DILocation(line: 17, column: 5, scope: !27)
