; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-recursive-global-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-recursive-global-0.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global i8* null, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8 @accessA(i32 noundef %0) #0 !dbg !14 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !19, metadata !DIExpression()), !dbg !20
  %3 = load i8*, i8** @p, align 8, !dbg !21
  %4 = load i32, i32* %2, align 4, !dbg !22
  %5 = zext i32 %4 to i64, !dbg !23
  %6 = getelementptr inbounds i8, i8* %3, i64 %5, !dbg !23
  %7 = load i8, i8* %6, align 1, !dbg !24
  ret i8 %7, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recursion(i32 noundef %0) #0 !dbg !26 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i32, i32* %2, align 4, !dbg !31
  %4 = call i8 @accessA(i32 noundef %3), !dbg !33
  %5 = sext i8 %4 to i32, !dbg !33
  %6 = icmp sgt i32 %5, 0, !dbg !34
  br i1 %6, label %7, label %8, !dbg !35

7:                                                ; preds = %1
  br label %11, !dbg !36

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !37
  %10 = add i32 %9, 1, !dbg !37
  store i32 %10, i32* %2, align 4, !dbg !37
  call void @recursion(i32 noundef %9), !dbg !38
  br label %11, !dbg !39

11:                                               ; preds = %8, %7
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %2, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !46, metadata !DIExpression()), !dbg !50
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !51
  store i8* %4, i8** @p, align 8, !dbg !52
  call void @recursion(i32 noundef 0), !dbg !53
  ret i32 0, !dbg !54
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-recursive-global-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-recursive-global-0.c", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "accessA", scope: !5, file: !5, line: 3, type: !15, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!7, !17}
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{}
!19 = !DILocalVariable(name: "i", arg: 1, scope: !14, file: !5, line: 3, type: !17)
!20 = !DILocation(line: 3, column: 23, scope: !14)
!21 = !DILocation(line: 5, column: 11, scope: !14)
!22 = !DILocation(line: 5, column: 15, scope: !14)
!23 = !DILocation(line: 5, column: 13, scope: !14)
!24 = !DILocation(line: 5, column: 9, scope: !14)
!25 = !DILocation(line: 5, column: 2, scope: !14)
!26 = distinct !DISubprogram(name: "recursion", scope: !5, file: !5, line: 8, type: !27, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !17}
!29 = !DILocalVariable(name: "i", arg: 1, scope: !26, file: !5, line: 8, type: !17)
!30 = !DILocation(line: 8, column: 25, scope: !26)
!31 = !DILocation(line: 10, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !5, line: 10, column: 6)
!33 = !DILocation(line: 10, column: 6, scope: !32)
!34 = !DILocation(line: 10, column: 17, scope: !32)
!35 = !DILocation(line: 10, column: 6, scope: !26)
!36 = !DILocation(line: 11, column: 3, scope: !32)
!37 = !DILocation(line: 12, column: 13, scope: !26)
!38 = !DILocation(line: 12, column: 2, scope: !26)
!39 = !DILocation(line: 13, column: 1, scope: !26)
!40 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 15, type: !41, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!41 = !DISubroutineType(types: !42)
!42 = !{!43}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "i", scope: !40, file: !5, line: 17, type: !17)
!45 = !DILocation(line: 17, column: 11, scope: !40)
!46 = !DILocalVariable(name: "a", scope: !40, file: !5, line: 18, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 80, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 10)
!50 = !DILocation(line: 18, column: 7, scope: !40)
!51 = !DILocation(line: 19, column: 6, scope: !40)
!52 = !DILocation(line: 19, column: 4, scope: !40)
!53 = !DILocation(line: 20, column: 2, scope: !40)
!54 = !DILocation(line: 22, column: 2, scope: !40)
