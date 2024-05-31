; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-path-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-path-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @h() #0 !dbg !8 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !15, metadata !DIExpression()), !dbg !16
  %2 = call i8* @malloc(i64 noundef 20), !dbg !17
  store i8* %2, i8** %1, align 8, !dbg !16
  %3 = load i8*, i8** %1, align 8, !dbg !18
  ret i8* %3, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @g() #0 !dbg !20 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !21, metadata !DIExpression()), !dbg !22
  %2 = call i8* @malloc(i64 noundef 10), !dbg !23
  store i8* %2, i8** %1, align 8, !dbg !22
  %3 = load i8*, i8** %1, align 8, !dbg !24
  ret i8* %3, !dbg !25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i32 noundef %0) #0 !dbg !26 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !30, metadata !DIExpression()), !dbg !31
  %4 = load i32, i32* %3, align 4, !dbg !32
  %5 = icmp eq i32 %4, 1, !dbg !34
  br i1 %5, label %6, label %8, !dbg !35

6:                                                ; preds = %1
  %7 = call i8* @h(), !dbg !36
  store i8* %7, i8** %2, align 8, !dbg !37
  br label %10, !dbg !37

8:                                                ; preds = %1
  %9 = call i8* @g(), !dbg !38
  store i8* %9, i8** %2, align 8, !dbg !39
  br label %10, !dbg !39

10:                                               ; preds = %8, %6
  %11 = load i8*, i8** %2, align 8, !dbg !40
  ret i8* %11, !dbg !40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !44, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %3, metadata !49, metadata !DIExpression()), !dbg !50
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !51
  %7 = load i8, i8* %6, align 16, !dbg !51
  %8 = sext i8 %7 to i32, !dbg !51
  store i32 %8, i32* %3, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i8** %5, metadata !54, metadata !DIExpression()), !dbg !55
  %9 = load i32, i32* %3, align 4, !dbg !56
  %10 = icmp eq i32 %9, 1, !dbg !58
  br i1 %10, label %11, label %14, !dbg !59

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4, !dbg !60
  %13 = call i8* @f(i32 noundef %12), !dbg !62
  store i8* %13, i8** %4, align 8, !dbg !63
  br label %17, !dbg !64

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4, !dbg !65
  %16 = call i8* @f(i32 noundef %15), !dbg !67
  store i8* %16, i8** %5, align 8, !dbg !68
  br label %17

17:                                               ; preds = %14, %11
  ret i32 0, !dbg !69
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-path-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "h", scope: !9, file: !9, line: 3, type: !10, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-path-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 5, type: !12)
!16 = !DILocation(line: 5, column: 11, scope: !8)
!17 = !DILocation(line: 5, column: 15, scope: !8)
!18 = !DILocation(line: 6, column: 12, scope: !8)
!19 = !DILocation(line: 6, column: 5, scope: !8)
!20 = distinct !DISubprogram(name: "g", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!21 = !DILocalVariable(name: "a", scope: !20, file: !9, line: 11, type: !12)
!22 = !DILocation(line: 11, column: 11, scope: !20)
!23 = !DILocation(line: 11, column: 15, scope: !20)
!24 = !DILocation(line: 12, column: 12, scope: !20)
!25 = !DILocation(line: 12, column: 5, scope: !20)
!26 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 15, type: !27, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!27 = !DISubroutineType(types: !28)
!28 = !{!12, !29}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "flag", arg: 1, scope: !26, file: !9, line: 15, type: !29)
!31 = !DILocation(line: 15, column: 13, scope: !26)
!32 = !DILocation(line: 17, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !9, line: 17, column: 9)
!34 = !DILocation(line: 17, column: 14, scope: !33)
!35 = !DILocation(line: 17, column: 9, scope: !26)
!36 = !DILocation(line: 18, column: 16, scope: !33)
!37 = !DILocation(line: 18, column: 9, scope: !33)
!38 = !DILocation(line: 20, column: 16, scope: !33)
!39 = !DILocation(line: 20, column: 9, scope: !33)
!40 = !DILocation(line: 21, column: 1, scope: !26)
!41 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 23, type: !42, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!42 = !DISubroutineType(types: !43)
!43 = !{!29}
!44 = !DILocalVariable(name: "a", scope: !41, file: !9, line: 25, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 20)
!48 = !DILocation(line: 25, column: 10, scope: !41)
!49 = !DILocalVariable(name: "flag", scope: !41, file: !9, line: 26, type: !29)
!50 = !DILocation(line: 26, column: 9, scope: !41)
!51 = !DILocation(line: 26, column: 16, scope: !41)
!52 = !DILocalVariable(name: "pa", scope: !41, file: !9, line: 27, type: !12)
!53 = !DILocation(line: 27, column: 11, scope: !41)
!54 = !DILocalVariable(name: "pb", scope: !41, file: !9, line: 27, type: !12)
!55 = !DILocation(line: 27, column: 16, scope: !41)
!56 = !DILocation(line: 29, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !41, file: !9, line: 29, column: 9)
!58 = !DILocation(line: 29, column: 14, scope: !57)
!59 = !DILocation(line: 29, column: 9, scope: !41)
!60 = !DILocation(line: 31, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !9, line: 30, column: 5)
!62 = !DILocation(line: 31, column: 14, scope: !61)
!63 = !DILocation(line: 31, column: 12, scope: !61)
!64 = !DILocation(line: 32, column: 5, scope: !61)
!65 = !DILocation(line: 35, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !9, line: 34, column: 5)
!67 = !DILocation(line: 35, column: 14, scope: !66)
!68 = !DILocation(line: 35, column: 12, scope: !66)
!69 = !DILocation(line: 38, column: 5, scope: !41)
