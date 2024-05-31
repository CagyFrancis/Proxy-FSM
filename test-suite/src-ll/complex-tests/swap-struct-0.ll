; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-struct-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-struct-0.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ptrstruct = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8** noundef %0, i8** noundef %1) #0 !dbg !8 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %5, metadata !20, metadata !DIExpression()), !dbg !21
  %6 = load i8**, i8*** %3, align 8, !dbg !22
  %7 = load i8*, i8** %6, align 8, !dbg !23
  store i8* %7, i8** %5, align 8, !dbg !24
  %8 = load i8**, i8*** %4, align 8, !dbg !25
  %9 = load i8*, i8** %8, align 8, !dbg !26
  %10 = load i8**, i8*** %3, align 8, !dbg !27
  store i8* %9, i8** %10, align 8, !dbg !28
  %11 = load i8*, i8** %5, align 8, !dbg !29
  %12 = load i8**, i8*** %4, align 8, !dbg !30
  store i8* %11, i8** %12, align 8, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !33 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ptrstruct, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca [20 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.ptrstruct* %2, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata [20 x i8]* %5, metadata !47, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !54
  %8 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 0, !dbg !55
  store i8* %7, i8** %8, align 8, !dbg !56
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !57
  %10 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 1, !dbg !58
  store i8* %9, i8** %10, align 8, !dbg !59
  %11 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 0, !dbg !60
  %12 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 1, !dbg !61
  call void @swap(i8** noundef %11, i8** noundef %12), !dbg !62
  %13 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 1, !dbg !63
  %14 = load i8*, i8** %13, align 8, !dbg !63
  store i8* %14, i8** %3, align 8, !dbg !64
  %15 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 0, !dbg !65
  %16 = load i8*, i8** %15, align 8, !dbg !65
  store i8* %16, i8** %4, align 8, !dbg !66
  ret i32 0, !dbg !67
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-struct-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "swap", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-struct-0.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 18, scope: !8)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!19 = !DILocation(line: 1, column: 28, scope: !8)
!20 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 11, scope: !8)
!22 = !DILocation(line: 4, column: 10, scope: !8)
!23 = !DILocation(line: 4, column: 9, scope: !8)
!24 = !DILocation(line: 4, column: 7, scope: !8)
!25 = !DILocation(line: 5, column: 11, scope: !8)
!26 = !DILocation(line: 5, column: 10, scope: !8)
!27 = !DILocation(line: 5, column: 6, scope: !8)
!28 = !DILocation(line: 5, column: 8, scope: !8)
!29 = !DILocation(line: 6, column: 10, scope: !8)
!30 = !DILocation(line: 6, column: 6, scope: !8)
!31 = !DILocation(line: 6, column: 8, scope: !8)
!32 = !DILocation(line: 7, column: 1, scope: !8)
!33 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 15, type: !34, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!34 = !DISubroutineType(types: !35)
!35 = !{!36}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DILocalVariable(name: "PSt", scope: !33, file: !9, line: 17, type: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptrstruct", file: !9, line: 9, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !38, file: !9, line: 11, baseType: !13, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !38, file: !9, line: 12, baseType: !13, size: 64, offset: 64)
!42 = !DILocation(line: 17, column: 22, scope: !33)
!43 = !DILocalVariable(name: "pa", scope: !33, file: !9, line: 18, type: !13)
!44 = !DILocation(line: 18, column: 11, scope: !33)
!45 = !DILocalVariable(name: "pb", scope: !33, file: !9, line: 18, type: !13)
!46 = !DILocation(line: 18, column: 16, scope: !33)
!47 = !DILocalVariable(name: "b", scope: !33, file: !9, line: 19, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 20)
!51 = !DILocation(line: 19, column: 10, scope: !33)
!52 = !DILocalVariable(name: "a", scope: !33, file: !9, line: 20, type: !48)
!53 = !DILocation(line: 20, column: 10, scope: !33)
!54 = !DILocation(line: 22, column: 14, scope: !33)
!55 = !DILocation(line: 22, column: 9, scope: !33)
!56 = !DILocation(line: 22, column: 12, scope: !33)
!57 = !DILocation(line: 23, column: 14, scope: !33)
!58 = !DILocation(line: 23, column: 9, scope: !33)
!59 = !DILocation(line: 23, column: 12, scope: !33)
!60 = !DILocation(line: 25, column: 15, scope: !33)
!61 = !DILocation(line: 25, column: 24, scope: !33)
!62 = !DILocation(line: 25, column: 5, scope: !33)
!63 = !DILocation(line: 27, column: 14, scope: !33)
!64 = !DILocation(line: 27, column: 8, scope: !33)
!65 = !DILocation(line: 28, column: 14, scope: !33)
!66 = !DILocation(line: 28, column: 8, scope: !33)
!67 = !DILocation(line: 30, column: 5, scope: !33)
