; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\path-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\path-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i32]* %2, metadata !14, metadata !DIExpression()), !dbg !18
  %5 = bitcast [100 x i32]* %2 to i8*, !dbg !18
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 400, i1 false), !dbg !18
  call void @llvm.dbg.declare(metadata i32** %3, metadata !19, metadata !DIExpression()), !dbg !21
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0, !dbg !22
  store i32* %6, i32** %3, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %4, align 4, !dbg !25
  br label %7, !dbg !26

7:                                                ; preds = %21, %0
  %8 = load i32, i32* %4, align 4, !dbg !27
  %9 = icmp slt i32 %8, 40, !dbg !29
  br i1 %9, label %10, label %24, !dbg !30

10:                                               ; preds = %7
  %11 = load i32*, i32** %3, align 8, !dbg !31
  %12 = load i32, i32* %11, align 4, !dbg !34
  %13 = icmp ne i32 %12, 0, !dbg !34
  br i1 %13, label %14, label %17, !dbg !35

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8, !dbg !36
  %16 = getelementptr inbounds i32, i32* %15, i64 1, !dbg !37
  store i32* %16, i32** %3, align 8, !dbg !38
  br label %20, !dbg !39

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8, !dbg !40
  %19 = getelementptr inbounds i32, i32* %18, i64 2, !dbg !41
  store i32* %19, i32** %3, align 8, !dbg !42
  br label %20

20:                                               ; preds = %17, %14
  br label %21, !dbg !43

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4, !dbg !44
  %23 = add nsw i32 %22, 1, !dbg !44
  store i32 %23, i32* %4, align 4, !dbg !44
  br label %7, !dbg !45, !llvm.loop !46

24:                                               ; preds = %7
  ret i32 0, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/path-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/path-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !DILocation(line: 3, column: 9, scope: !8)
!19 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 4, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!21 = !DILocation(line: 4, column: 10, scope: !8)
!22 = !DILocation(line: 4, column: 14, scope: !8)
!23 = !DILocalVariable(name: "i", scope: !24, file: !9, line: 6, type: !12)
!24 = distinct !DILexicalBlock(scope: !8, file: !9, line: 6, column: 5)
!25 = !DILocation(line: 6, column: 14, scope: !24)
!26 = !DILocation(line: 6, column: 10, scope: !24)
!27 = !DILocation(line: 6, column: 21, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !9, line: 6, column: 5)
!29 = !DILocation(line: 6, column: 23, scope: !28)
!30 = !DILocation(line: 6, column: 5, scope: !24)
!31 = !DILocation(line: 8, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !9, line: 8, column: 13)
!33 = distinct !DILexicalBlock(scope: !28, file: !9, line: 7, column: 5)
!34 = !DILocation(line: 8, column: 13, scope: !32)
!35 = !DILocation(line: 8, column: 13, scope: !33)
!36 = !DILocation(line: 9, column: 17, scope: !32)
!37 = !DILocation(line: 9, column: 19, scope: !32)
!38 = !DILocation(line: 9, column: 15, scope: !32)
!39 = !DILocation(line: 9, column: 13, scope: !32)
!40 = !DILocation(line: 11, column: 17, scope: !32)
!41 = !DILocation(line: 11, column: 19, scope: !32)
!42 = !DILocation(line: 11, column: 15, scope: !32)
!43 = !DILocation(line: 12, column: 5, scope: !33)
!44 = !DILocation(line: 6, column: 30, scope: !28)
!45 = !DILocation(line: 6, column: 5, scope: !28)
!46 = distinct !{!46, !30, !47, !48}
!47 = !DILocation(line: 12, column: 5, scope: !24)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 14, column: 5, scope: !8)
