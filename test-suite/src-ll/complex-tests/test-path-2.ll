; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-path-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-path-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @h(i8* noundef %0) #0 !dbg !8 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i8*, i8** %2, align 8, !dbg !17
  ret i8* %3, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !19 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !27, metadata !DIExpression()), !dbg !28
  %8 = load i32, i32* %7, align 4, !dbg !29
  %9 = icmp eq i32 %8, 1, !dbg !31
  br i1 %9, label %10, label %13, !dbg !32

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !33
  %12 = call i8* @h(i8* noundef %11), !dbg !34
  store i8* %12, i8** %4, align 8, !dbg !35
  br label %16, !dbg !35

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8, !dbg !36
  %15 = call i8* @h(i8* noundef %14), !dbg !37
  store i8* %15, i8** %4, align 8, !dbg !38
  br label %16, !dbg !38

16:                                               ; preds = %13, %10
  %17 = load i8*, i8** %4, align 8, !dbg !39
  ret i8* %17, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !44, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %4, metadata !51, metadata !DIExpression()), !dbg !52
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !53
  %8 = load i8, i8* %7, align 16, !dbg !53
  %9 = sext i8 %8 to i32, !dbg !53
  store i32 %9, i32* %4, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i8** %5, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %6, metadata !56, metadata !DIExpression()), !dbg !57
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !58
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !59
  %12 = call i8* @f(i8* noundef %10, i8* noundef %11, i32 noundef 0), !dbg !60
  store i8* %12, i8** %5, align 8, !dbg !61
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !62
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !63
  %15 = call i8* @f(i8* noundef %13, i8* noundef %14, i32 noundef 1), !dbg !64
  store i8* %15, i8** %6, align 8, !dbg !65
  ret i32 0, !dbg !66
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-path-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "h", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-path-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocation(line: 3, column: 12, scope: !8)
!18 = !DILocation(line: 3, column: 5, scope: !8)
!19 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 6, type: !20, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DISubroutineType(types: !21)
!21 = !{!12, !12, !12, !22}
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "a", arg: 1, scope: !19, file: !9, line: 6, type: !12)
!24 = !DILocation(line: 6, column: 15, scope: !19)
!25 = !DILocalVariable(name: "b", arg: 2, scope: !19, file: !9, line: 6, type: !12)
!26 = !DILocation(line: 6, column: 24, scope: !19)
!27 = !DILocalVariable(name: "flag", arg: 3, scope: !19, file: !9, line: 6, type: !22)
!28 = !DILocation(line: 6, column: 36, scope: !19)
!29 = !DILocation(line: 8, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !19, file: !9, line: 8, column: 9)
!31 = !DILocation(line: 8, column: 14, scope: !30)
!32 = !DILocation(line: 8, column: 9, scope: !19)
!33 = !DILocation(line: 9, column: 18, scope: !30)
!34 = !DILocation(line: 9, column: 16, scope: !30)
!35 = !DILocation(line: 9, column: 9, scope: !30)
!36 = !DILocation(line: 11, column: 18, scope: !30)
!37 = !DILocation(line: 11, column: 16, scope: !30)
!38 = !DILocation(line: 11, column: 9, scope: !30)
!39 = !DILocation(line: 12, column: 1, scope: !19)
!40 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 14, type: !41, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!41 = !DISubroutineType(types: !42)
!42 = !{!43}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "b", scope: !40, file: !9, line: 16, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 20)
!48 = !DILocation(line: 16, column: 10, scope: !40)
!49 = !DILocalVariable(name: "a", scope: !40, file: !9, line: 17, type: !45)
!50 = !DILocation(line: 17, column: 10, scope: !40)
!51 = !DILocalVariable(name: "flag", scope: !40, file: !9, line: 18, type: !43)
!52 = !DILocation(line: 18, column: 9, scope: !40)
!53 = !DILocation(line: 18, column: 16, scope: !40)
!54 = !DILocalVariable(name: "pa", scope: !40, file: !9, line: 19, type: !12)
!55 = !DILocation(line: 19, column: 11, scope: !40)
!56 = !DILocalVariable(name: "pb", scope: !40, file: !9, line: 20, type: !12)
!57 = !DILocation(line: 20, column: 11, scope: !40)
!58 = !DILocation(line: 22, column: 12, scope: !40)
!59 = !DILocation(line: 22, column: 15, scope: !40)
!60 = !DILocation(line: 22, column: 10, scope: !40)
!61 = !DILocation(line: 22, column: 8, scope: !40)
!62 = !DILocation(line: 23, column: 12, scope: !40)
!63 = !DILocation(line: 23, column: 15, scope: !40)
!64 = !DILocation(line: 23, column: 10, scope: !40)
!65 = !DILocation(line: 23, column: 8, scope: !40)
!66 = !DILocation(line: 25, column: 5, scope: !40)
