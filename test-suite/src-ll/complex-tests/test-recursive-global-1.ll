; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-recursive-global-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-recursive-global-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global i8* null, align 8, !dbg !0
@q = dso_local global i8* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap() #0 !dbg !16 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !21
  %2 = load i8*, i8** @p, align 8, !dbg !22
  store i8* %2, i8** %1, align 8, !dbg !21
  %3 = load i8*, i8** @q, align 8, !dbg !23
  store i8* %3, i8** @p, align 8, !dbg !24
  %4 = load i8*, i8** %1, align 8, !dbg !25
  store i8* %4, i8** @q, align 8, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recursion(i32 noundef %0) #0 !dbg !28 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i32, i32* %2, align 4, !dbg !34
  %4 = icmp eq i32 %3, 0, !dbg !36
  br i1 %4, label %5, label %6, !dbg !37

5:                                                ; preds = %1
  br label %9, !dbg !38

6:                                                ; preds = %1
  call void @swap(), !dbg !40
  %7 = load i32, i32* %2, align 4, !dbg !41
  %8 = add i32 %7, -1, !dbg !41
  store i32 %8, i32* %2, align 4, !dbg !41
  call void @recursion(i32 noundef %7), !dbg !42
  br label %9, !dbg !43

9:                                                ; preds = %6, %5
  ret void, !dbg !43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !48, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !53, metadata !DIExpression()), !dbg !54
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !55
  store i8* %4, i8** @p, align 8, !dbg !56
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !57
  store i8* %5, i8** @q, align 8, !dbg !58
  call void @recursion(i32 noundef 10), !dbg !59
  ret i32 0, !dbg !60
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-recursive-global-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-recursive-global-1.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "swap", scope: !7, file: !7, line: 4, type: !17, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !{}
!20 = !DILocalVariable(name: "c", scope: !16, file: !7, line: 6, type: !8)
!21 = !DILocation(line: 6, column: 11, scope: !16)
!22 = !DILocation(line: 6, column: 15, scope: !16)
!23 = !DILocation(line: 7, column: 9, scope: !16)
!24 = !DILocation(line: 7, column: 7, scope: !16)
!25 = !DILocation(line: 8, column: 9, scope: !16)
!26 = !DILocation(line: 8, column: 7, scope: !16)
!27 = !DILocation(line: 9, column: 1, scope: !16)
!28 = distinct !DISubprogram(name: "recursion", scope: !7, file: !7, line: 11, type: !29, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DILocalVariable(name: "i", arg: 1, scope: !28, file: !7, line: 11, type: !31)
!33 = !DILocation(line: 11, column: 25, scope: !28)
!34 = !DILocation(line: 13, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !7, line: 13, column: 9)
!36 = !DILocation(line: 13, column: 11, scope: !35)
!37 = !DILocation(line: 13, column: 9, scope: !28)
!38 = !DILocation(line: 15, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !7, line: 14, column: 5)
!40 = !DILocation(line: 17, column: 5, scope: !28)
!41 = !DILocation(line: 18, column: 16, scope: !28)
!42 = !DILocation(line: 18, column: 5, scope: !28)
!43 = !DILocation(line: 19, column: 1, scope: !28)
!44 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 21, type: !45, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocalVariable(name: "a", scope: !44, file: !7, line: 23, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DILocation(line: 23, column: 10, scope: !44)
!53 = !DILocalVariable(name: "b", scope: !44, file: !7, line: 24, type: !49)
!54 = !DILocation(line: 24, column: 10, scope: !44)
!55 = !DILocation(line: 26, column: 9, scope: !44)
!56 = !DILocation(line: 26, column: 7, scope: !44)
!57 = !DILocation(line: 27, column: 9, scope: !44)
!58 = !DILocation(line: 27, column: 7, scope: !44)
!59 = !DILocation(line: 29, column: 5, scope: !44)
!60 = !DILocation(line: 31, column: 5, scope: !44)
