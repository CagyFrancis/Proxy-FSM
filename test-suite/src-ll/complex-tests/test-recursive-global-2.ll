; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-recursive-global-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-recursive-global-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global i8* null, align 8, !dbg !0
@q = dso_local global i8* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32 noundef %0) #0 !dbg !16 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  %4 = load i8*, i8** @p, align 8, !dbg !25
  store i8* %4, i8** %3, align 8, !dbg !24
  %5 = load i8*, i8** @q, align 8, !dbg !26
  store i8* %5, i8** @p, align 8, !dbg !27
  %6 = load i8*, i8** %3, align 8, !dbg !28
  store i8* %6, i8** @q, align 8, !dbg !29
  %7 = load i32, i32* %2, align 4, !dbg !30
  %8 = add i32 %7, -1, !dbg !30
  store i32 %8, i32* %2, align 4, !dbg !30
  call void @recursion(i32 noundef %7), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recursion(i32 noundef %0) #0 !dbg !33 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load i32, i32* %2, align 4, !dbg !36
  %4 = icmp eq i32 %3, 0, !dbg !38
  br i1 %4, label %5, label %6, !dbg !39

5:                                                ; preds = %1
  br label %8, !dbg !40

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !42
  call void @swap(i32 noundef %7), !dbg !43
  br label %8, !dbg !44

8:                                                ; preds = %6, %5
  ret void, !dbg !44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !45 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !49, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !54, metadata !DIExpression()), !dbg !55
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !56
  store i8* %4, i8** @p, align 8, !dbg !57
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !58
  store i8* %5, i8** @q, align 8, !dbg !59
  call void @recursion(i32 noundef 10), !dbg !60
  ret i32 0, !dbg !61
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-recursive-global-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-recursive-global-2.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "swap", scope: !7, file: !7, line: 7, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "i", arg: 1, scope: !16, file: !7, line: 7, type: !19)
!22 = !DILocation(line: 7, column: 20, scope: !16)
!23 = !DILocalVariable(name: "c", scope: !16, file: !7, line: 9, type: !8)
!24 = !DILocation(line: 9, column: 11, scope: !16)
!25 = !DILocation(line: 9, column: 15, scope: !16)
!26 = !DILocation(line: 10, column: 9, scope: !16)
!27 = !DILocation(line: 10, column: 7, scope: !16)
!28 = !DILocation(line: 11, column: 9, scope: !16)
!29 = !DILocation(line: 11, column: 7, scope: !16)
!30 = !DILocation(line: 13, column: 16, scope: !16)
!31 = !DILocation(line: 13, column: 5, scope: !16)
!32 = !DILocation(line: 14, column: 1, scope: !16)
!33 = distinct !DISubprogram(name: "recursion", scope: !7, file: !7, line: 16, type: !17, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!34 = !DILocalVariable(name: "i", arg: 1, scope: !33, file: !7, line: 16, type: !19)
!35 = !DILocation(line: 16, column: 25, scope: !33)
!36 = !DILocation(line: 18, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !7, line: 18, column: 9)
!38 = !DILocation(line: 18, column: 11, scope: !37)
!39 = !DILocation(line: 18, column: 9, scope: !33)
!40 = !DILocation(line: 20, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !7, line: 19, column: 5)
!42 = !DILocation(line: 22, column: 10, scope: !33)
!43 = !DILocation(line: 22, column: 5, scope: !33)
!44 = !DILocation(line: 23, column: 1, scope: !33)
!45 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 25, type: !46, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!46 = !DISubroutineType(types: !47)
!47 = !{!48}
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DILocalVariable(name: "a", scope: !45, file: !7, line: 27, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 10)
!53 = !DILocation(line: 27, column: 10, scope: !45)
!54 = !DILocalVariable(name: "b", scope: !45, file: !7, line: 28, type: !50)
!55 = !DILocation(line: 28, column: 10, scope: !45)
!56 = !DILocation(line: 30, column: 9, scope: !45)
!57 = !DILocation(line: 30, column: 7, scope: !45)
!58 = !DILocation(line: 31, column: 9, scope: !45)
!59 = !DILocation(line: 31, column: 7, scope: !45)
!60 = !DILocation(line: 33, column: 5, scope: !45)
!61 = !DILocation(line: 35, column: 5, scope: !45)
