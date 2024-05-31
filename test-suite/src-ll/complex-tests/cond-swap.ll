; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\cond-swap.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\cond-swap.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1, i32 noundef %2) #0 !dbg !8 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !17, metadata !DIExpression()), !dbg !18
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %7, metadata !23, metadata !DIExpression()), !dbg !24
  %8 = load i32, i32* %6, align 4, !dbg !25
  %9 = icmp eq i32 %8, 1, !dbg !27
  br i1 %9, label %10, label %18, !dbg !28

10:                                               ; preds = %3
  %11 = load i8**, i8*** %4, align 8, !dbg !29
  %12 = load i8*, i8** %11, align 8, !dbg !31
  store i8* %12, i8** %7, align 8, !dbg !32
  %13 = load i8**, i8*** %5, align 8, !dbg !33
  %14 = load i8*, i8** %13, align 8, !dbg !34
  %15 = load i8**, i8*** %4, align 8, !dbg !35
  store i8* %14, i8** %15, align 8, !dbg !36
  %16 = load i8*, i8** %7, align 8, !dbg !37
  %17 = load i8**, i8*** %5, align 8, !dbg !38
  store i8* %16, i8** %17, align 8, !dbg !39
  br label %18, !dbg !40

18:                                               ; preds = %10, %3
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !45, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i8** %5, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %6, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %7, metadata !58, metadata !DIExpression()), !dbg !59
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !60
  store i8* %8, i8** %4, align 8, !dbg !61
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !62
  store i8* %9, i8** %5, align 8, !dbg !63
  call void @swap(i8** noundef %4, i8** noundef %5, i32 noundef 1), !dbg !64
  call void @swap(i8** noundef %4, i8** noundef %5, i32 noundef 1), !dbg !65
  call void @swap(i8** noundef %4, i8** noundef %5, i32 noundef 1), !dbg !66
  call void @swap(i8** noundef %4, i8** noundef %5, i32 noundef 0), !dbg !67
  %10 = load i8*, i8** %5, align 8, !dbg !68
  store i8* %10, i8** %6, align 8, !dbg !69
  %11 = load i8*, i8** %4, align 8, !dbg !70
  store i8* %11, i8** %7, align 8, !dbg !71
  ret i32 0, !dbg !72
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/cond-swap.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "swap", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/cond-swap.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!18 = !DILocation(line: 1, column: 18, scope: !8)
!19 = !DILocalVariable(name: "b", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!20 = !DILocation(line: 1, column: 28, scope: !8)
!21 = !DILocalVariable(name: "flag", arg: 3, scope: !8, file: !9, line: 1, type: !15)
!22 = !DILocation(line: 1, column: 35, scope: !8)
!23 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 3, type: !13)
!24 = !DILocation(line: 3, column: 11, scope: !8)
!25 = !DILocation(line: 4, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !8, file: !9, line: 4, column: 9)
!27 = !DILocation(line: 4, column: 14, scope: !26)
!28 = !DILocation(line: 4, column: 9, scope: !8)
!29 = !DILocation(line: 6, column: 14, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !9, line: 5, column: 5)
!31 = !DILocation(line: 6, column: 13, scope: !30)
!32 = !DILocation(line: 6, column: 11, scope: !30)
!33 = !DILocation(line: 7, column: 15, scope: !30)
!34 = !DILocation(line: 7, column: 14, scope: !30)
!35 = !DILocation(line: 7, column: 10, scope: !30)
!36 = !DILocation(line: 7, column: 12, scope: !30)
!37 = !DILocation(line: 8, column: 14, scope: !30)
!38 = !DILocation(line: 8, column: 10, scope: !30)
!39 = !DILocation(line: 8, column: 12, scope: !30)
!40 = !DILocation(line: 9, column: 5, scope: !30)
!41 = !DILocation(line: 10, column: 1, scope: !8)
!42 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !43, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!43 = !DISubroutineType(types: !44)
!44 = !{!15}
!45 = !DILocalVariable(name: "b", scope: !42, file: !9, line: 14, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 20)
!49 = !DILocation(line: 14, column: 10, scope: !42)
!50 = !DILocalVariable(name: "a", scope: !42, file: !9, line: 15, type: !46)
!51 = !DILocation(line: 15, column: 10, scope: !42)
!52 = !DILocalVariable(name: "p1", scope: !42, file: !9, line: 16, type: !13)
!53 = !DILocation(line: 16, column: 11, scope: !42)
!54 = !DILocalVariable(name: "p2", scope: !42, file: !9, line: 16, type: !13)
!55 = !DILocation(line: 16, column: 16, scope: !42)
!56 = !DILocalVariable(name: "pa", scope: !42, file: !9, line: 17, type: !13)
!57 = !DILocation(line: 17, column: 11, scope: !42)
!58 = !DILocalVariable(name: "pb", scope: !42, file: !9, line: 17, type: !13)
!59 = !DILocation(line: 17, column: 16, scope: !42)
!60 = !DILocation(line: 19, column: 10, scope: !42)
!61 = !DILocation(line: 19, column: 8, scope: !42)
!62 = !DILocation(line: 20, column: 10, scope: !42)
!63 = !DILocation(line: 20, column: 8, scope: !42)
!64 = !DILocation(line: 22, column: 5, scope: !42)
!65 = !DILocation(line: 23, column: 5, scope: !42)
!66 = !DILocation(line: 24, column: 5, scope: !42)
!67 = !DILocation(line: 25, column: 5, scope: !42)
!68 = !DILocation(line: 27, column: 10, scope: !42)
!69 = !DILocation(line: 27, column: 8, scope: !42)
!70 = !DILocation(line: 28, column: 10, scope: !42)
!71 = !DILocation(line: 28, column: 8, scope: !42)
!72 = !DILocation(line: 30, column: 5, scope: !42)
