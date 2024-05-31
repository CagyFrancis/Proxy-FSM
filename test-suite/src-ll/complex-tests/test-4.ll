; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i8* noundef %0) #0 !dbg !8 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %3, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = call i8* @malloc(i64 noundef 10), !dbg !19
  store i8* %4, i8** %3, align 8, !dbg !18
  %5 = load i8*, i8** %3, align 8, !dbg !20
  ret i8* %5, !dbg !21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @g(i8* noundef %0) #0 !dbg !22 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i8*, i8** %2, align 8, !dbg !25
  %4 = call i8* @f(i8* noundef %3), !dbg !26
  ret i8* %4, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @h(i8* noundef %0) #0 !dbg !28 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i8*, i8** %2, align 8, !dbg !31
  %4 = call i8* @g(i8* noundef %3), !dbg !32
  ret i8* %4, !dbg !33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !35, metadata !DIExpression()), !dbg !36
  %3 = load i8*, i8** %2, align 8, !dbg !37
  %4 = call i8* @g(i8* noundef %3), !dbg !38
  ret i8* %4, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !44, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i8** %3, metadata !49, metadata !DIExpression()), !dbg !50
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !51
  %5 = load i8, i8* %4, align 1, !dbg !51
  %6 = sext i8 %5 to i32, !dbg !51
  %7 = icmp eq i32 %6, 1, !dbg !53
  br i1 %7, label %8, label %11, !dbg !54

8:                                                ; preds = %0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !55
  %10 = call i8* @h(i8* noundef %9), !dbg !56
  store i8* %10, i8** %3, align 8, !dbg !57
  br label %14, !dbg !58

11:                                               ; preds = %0
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !59
  %13 = call i8* @i(i8* noundef %12), !dbg !60
  store i8* %13, i8** %3, align 8, !dbg !61
  br label %14

14:                                               ; preds = %11, %8
  ret i32 0, !dbg !62
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "f", scope: !9, file: !9, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 3, type: !12)
!16 = !DILocation(line: 3, column: 15, scope: !8)
!17 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 11, scope: !8)
!19 = !DILocation(line: 5, column: 15, scope: !8)
!20 = !DILocation(line: 6, column: 12, scope: !8)
!21 = !DILocation(line: 6, column: 5, scope: !8)
!22 = distinct !DISubprogram(name: "g", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!23 = !DILocalVariable(name: "a", arg: 1, scope: !22, file: !9, line: 9, type: !12)
!24 = !DILocation(line: 9, column: 15, scope: !22)
!25 = !DILocation(line: 11, column: 14, scope: !22)
!26 = !DILocation(line: 11, column: 12, scope: !22)
!27 = !DILocation(line: 11, column: 5, scope: !22)
!28 = distinct !DISubprogram(name: "h", scope: !9, file: !9, line: 14, type: !10, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!29 = !DILocalVariable(name: "a", arg: 1, scope: !28, file: !9, line: 14, type: !12)
!30 = !DILocation(line: 14, column: 15, scope: !28)
!31 = !DILocation(line: 16, column: 14, scope: !28)
!32 = !DILocation(line: 16, column: 12, scope: !28)
!33 = !DILocation(line: 16, column: 5, scope: !28)
!34 = distinct !DISubprogram(name: "i", scope: !9, file: !9, line: 19, type: !10, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!35 = !DILocalVariable(name: "a", arg: 1, scope: !34, file: !9, line: 19, type: !12)
!36 = !DILocation(line: 19, column: 15, scope: !34)
!37 = !DILocation(line: 21, column: 14, scope: !34)
!38 = !DILocation(line: 21, column: 12, scope: !34)
!39 = !DILocation(line: 21, column: 5, scope: !34)
!40 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 24, type: !41, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!41 = !DISubroutineType(types: !42)
!42 = !{!43}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "a", scope: !40, file: !9, line: 26, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 10)
!48 = !DILocation(line: 26, column: 10, scope: !40)
!49 = !DILocalVariable(name: "c", scope: !40, file: !9, line: 27, type: !12)
!50 = !DILocation(line: 27, column: 11, scope: !40)
!51 = !DILocation(line: 29, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !40, file: !9, line: 29, column: 9)
!53 = !DILocation(line: 29, column: 14, scope: !52)
!54 = !DILocation(line: 29, column: 9, scope: !40)
!55 = !DILocation(line: 30, column: 15, scope: !52)
!56 = !DILocation(line: 30, column: 13, scope: !52)
!57 = !DILocation(line: 30, column: 11, scope: !52)
!58 = !DILocation(line: 30, column: 9, scope: !52)
!59 = !DILocation(line: 32, column: 15, scope: !52)
!60 = !DILocation(line: 32, column: 13, scope: !52)
!61 = !DILocation(line: 32, column: 11, scope: !52)
!62 = !DILocation(line: 34, column: 5, scope: !40)
