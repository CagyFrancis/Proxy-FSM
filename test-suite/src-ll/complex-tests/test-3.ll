; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i8* noundef %0) #0 !dbg !8 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = load i8*, i8** %2, align 8, !dbg !21
  store i8* %5, i8** %4, align 8, !dbg !22
  %6 = load i8*, i8** %4, align 8, !dbg !23
  ret i8* %6, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @g(i8* noundef %0) #0 !dbg !25 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  %4 = call i8* @f(i8* noundef %3), !dbg !29
  ret i8* %4, !dbg !30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @h(i8* noundef %0) #0 !dbg !31 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i8*, i8** %2, align 8, !dbg !34
  %4 = call i8* @g(i8* noundef %3), !dbg !35
  ret i8* %4, !dbg !36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i(i8* noundef %0) #0 !dbg !37 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %2, align 8, !dbg !40
  %4 = call i8* @g(i8* noundef %3), !dbg !41
  ret i8* %4, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !43 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !47, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %3, metadata !52, metadata !DIExpression()), !dbg !53
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !54
  %5 = load i8, i8* %4, align 1, !dbg !54
  %6 = sext i8 %5 to i32, !dbg !54
  %7 = icmp eq i32 %6, 1, !dbg !56
  br i1 %7, label %8, label %11, !dbg !57

8:                                                ; preds = %0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !58
  %10 = call i8* @h(i8* noundef %9), !dbg !59
  store i8* %10, i8** %3, align 8, !dbg !60
  br label %14, !dbg !61

11:                                               ; preds = %0
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !62
  %13 = call i8* @i(i8* noundef %12), !dbg !63
  store i8* %13, i8** %3, align 8, !dbg !64
  br label %14

14:                                               ; preds = %11, %8
  ret i32 0, !dbg !65
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 11, scope: !8)
!19 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 3, type: !12)
!20 = !DILocation(line: 3, column: 15, scope: !8)
!21 = !DILocation(line: 4, column: 9, scope: !8)
!22 = !DILocation(line: 4, column: 7, scope: !8)
!23 = !DILocation(line: 5, column: 12, scope: !8)
!24 = !DILocation(line: 5, column: 5, scope: !8)
!25 = distinct !DISubprogram(name: "g", scope: !9, file: !9, line: 8, type: !10, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!26 = !DILocalVariable(name: "a", arg: 1, scope: !25, file: !9, line: 8, type: !12)
!27 = !DILocation(line: 8, column: 15, scope: !25)
!28 = !DILocation(line: 10, column: 14, scope: !25)
!29 = !DILocation(line: 10, column: 12, scope: !25)
!30 = !DILocation(line: 10, column: 5, scope: !25)
!31 = distinct !DISubprogram(name: "h", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!32 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !9, line: 13, type: !12)
!33 = !DILocation(line: 13, column: 15, scope: !31)
!34 = !DILocation(line: 15, column: 14, scope: !31)
!35 = !DILocation(line: 15, column: 12, scope: !31)
!36 = !DILocation(line: 15, column: 5, scope: !31)
!37 = distinct !DISubprogram(name: "i", scope: !9, file: !9, line: 18, type: !10, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!38 = !DILocalVariable(name: "a", arg: 1, scope: !37, file: !9, line: 18, type: !12)
!39 = !DILocation(line: 18, column: 15, scope: !37)
!40 = !DILocation(line: 20, column: 14, scope: !37)
!41 = !DILocation(line: 20, column: 12, scope: !37)
!42 = !DILocation(line: 20, column: 5, scope: !37)
!43 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 23, type: !44, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!44 = !DISubroutineType(types: !45)
!45 = !{!46}
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DILocalVariable(name: "a", scope: !43, file: !9, line: 25, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 10)
!51 = !DILocation(line: 25, column: 10, scope: !43)
!52 = !DILocalVariable(name: "c", scope: !43, file: !9, line: 26, type: !12)
!53 = !DILocation(line: 26, column: 11, scope: !43)
!54 = !DILocation(line: 28, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !9, line: 28, column: 9)
!56 = !DILocation(line: 28, column: 14, scope: !55)
!57 = !DILocation(line: 28, column: 9, scope: !43)
!58 = !DILocation(line: 29, column: 15, scope: !55)
!59 = !DILocation(line: 29, column: 13, scope: !55)
!60 = !DILocation(line: 29, column: 11, scope: !55)
!61 = !DILocation(line: 29, column: 9, scope: !55)
!62 = !DILocation(line: 31, column: 15, scope: !55)
!63 = !DILocation(line: 31, column: 13, scope: !55)
!64 = !DILocation(line: 31, column: 11, scope: !55)
!65 = !DILocation(line: 33, column: 5, scope: !43)
