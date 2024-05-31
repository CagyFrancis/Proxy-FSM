; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@c = dso_local global i8* null, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !14 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !19, metadata !DIExpression()), !dbg !20
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  %6 = load i8**, i8*** %4, align 8, !dbg !25
  %7 = load i8*, i8** %6, align 8, !dbg !26
  store i8* %7, i8** %5, align 8, !dbg !24
  %8 = load i8**, i8*** %3, align 8, !dbg !27
  %9 = load i8*, i8** %8, align 8, !dbg !28
  %10 = load i8**, i8*** %4, align 8, !dbg !29
  store i8* %9, i8** %10, align 8, !dbg !30
  %11 = load i8*, i8** %5, align 8, !dbg !31
  %12 = load i8**, i8*** %3, align 8, !dbg !32
  store i8* %11, i8** %12, align 8, !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @g(i8* noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %2, align 8, !dbg !40
  ret i8* %3, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8** %3, metadata !45, metadata !DIExpression()), !dbg !46
  %4 = load i8*, i8** %2, align 8, !dbg !47
  store i8* %4, i8** %3, align 8, !dbg !48
  %5 = load i8*, i8** %3, align 8, !dbg !49
  %6 = call i8* @g(i8* noundef %5), !dbg !50
  ret i8* %6, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !56, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %4, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %5, metadata !65, metadata !DIExpression()), !dbg !66
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !67
  store i8* %6, i8** %4, align 8, !dbg !68
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !69
  store i8* %7, i8** %5, align 8, !dbg !70
  call void @swap(i8** noundef %4, i8** noundef %5), !dbg !71
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !72
  store i8* %8, i8** @c, align 8, !dbg !73
  %9 = load i8*, i8** @c, align 8, !dbg !74
  %10 = call i8* @f(i8* noundef %9), !dbg !75
  store i8* %10, i8** @c, align 8, !dbg !76
  %11 = load i8*, i8** @c, align 8, !dbg !77
  %12 = call i8* @g(i8* noundef %11), !dbg !78
  ret i32 0, !dbg !79
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !5, line: 20, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-1.c", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "swap", scope: !5, file: !5, line: 1, type: !15, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !14, file: !5, line: 1, type: !17)
!20 = !DILocation(line: 1, column: 18, scope: !14)
!21 = !DILocalVariable(name: "y", arg: 2, scope: !14, file: !5, line: 1, type: !17)
!22 = !DILocation(line: 1, column: 28, scope: !14)
!23 = !DILocalVariable(name: "t", scope: !14, file: !5, line: 3, type: !6)
!24 = !DILocation(line: 3, column: 11, scope: !14)
!25 = !DILocation(line: 3, column: 16, scope: !14)
!26 = !DILocation(line: 3, column: 15, scope: !14)
!27 = !DILocation(line: 4, column: 11, scope: !14)
!28 = !DILocation(line: 4, column: 10, scope: !14)
!29 = !DILocation(line: 4, column: 6, scope: !14)
!30 = !DILocation(line: 4, column: 8, scope: !14)
!31 = !DILocation(line: 5, column: 10, scope: !14)
!32 = !DILocation(line: 5, column: 6, scope: !14)
!33 = !DILocation(line: 5, column: 8, scope: !14)
!34 = !DILocation(line: 6, column: 1, scope: !14)
!35 = distinct !DISubprogram(name: "g", scope: !5, file: !5, line: 8, type: !36, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!36 = !DISubroutineType(types: !37)
!37 = !{!6, !6}
!38 = !DILocalVariable(name: "a", arg: 1, scope: !35, file: !5, line: 8, type: !6)
!39 = !DILocation(line: 8, column: 15, scope: !35)
!40 = !DILocation(line: 10, column: 12, scope: !35)
!41 = !DILocation(line: 10, column: 5, scope: !35)
!42 = distinct !DISubprogram(name: "f", scope: !5, file: !5, line: 13, type: !36, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!43 = !DILocalVariable(name: "a", arg: 1, scope: !42, file: !5, line: 13, type: !6)
!44 = !DILocation(line: 13, column: 15, scope: !42)
!45 = !DILocalVariable(name: "b", scope: !42, file: !5, line: 15, type: !6)
!46 = !DILocation(line: 15, column: 11, scope: !42)
!47 = !DILocation(line: 16, column: 9, scope: !42)
!48 = !DILocation(line: 16, column: 7, scope: !42)
!49 = !DILocation(line: 17, column: 14, scope: !42)
!50 = !DILocation(line: 17, column: 12, scope: !42)
!51 = !DILocation(line: 17, column: 5, scope: !42)
!52 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 21, type: !53, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!53 = !DISubroutineType(types: !54)
!54 = !{!55}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocalVariable(name: "b", scope: !52, file: !5, line: 23, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 20)
!60 = !DILocation(line: 23, column: 10, scope: !52)
!61 = !DILocalVariable(name: "a", scope: !52, file: !5, line: 24, type: !57)
!62 = !DILocation(line: 24, column: 10, scope: !52)
!63 = !DILocalVariable(name: "p1", scope: !52, file: !5, line: 25, type: !6)
!64 = !DILocation(line: 25, column: 11, scope: !52)
!65 = !DILocalVariable(name: "p2", scope: !52, file: !5, line: 25, type: !6)
!66 = !DILocation(line: 25, column: 16, scope: !52)
!67 = !DILocation(line: 27, column: 10, scope: !52)
!68 = !DILocation(line: 27, column: 8, scope: !52)
!69 = !DILocation(line: 28, column: 10, scope: !52)
!70 = !DILocation(line: 28, column: 8, scope: !52)
!71 = !DILocation(line: 30, column: 5, scope: !52)
!72 = !DILocation(line: 31, column: 9, scope: !52)
!73 = !DILocation(line: 31, column: 7, scope: !52)
!74 = !DILocation(line: 32, column: 11, scope: !52)
!75 = !DILocation(line: 32, column: 9, scope: !52)
!76 = !DILocation(line: 32, column: 7, scope: !52)
!77 = !DILocation(line: 33, column: 7, scope: !52)
!78 = !DILocation(line: 33, column: 5, scope: !52)
!79 = !DILocation(line: 35, column: 5, scope: !52)
