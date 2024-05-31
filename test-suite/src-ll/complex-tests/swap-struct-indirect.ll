; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-struct-indirect.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-struct-indirect.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ptrstruct = type { i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(%struct.ptrstruct** noundef %0) #0 !dbg !8 {
  %2 = alloca %struct.ptrstruct**, align 8
  %3 = alloca %struct.ptrstruct*, align 8
  %4 = alloca i8*, align 8
  store %struct.ptrstruct** %0, %struct.ptrstruct*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ptrstruct*** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.ptrstruct** %3, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = load %struct.ptrstruct**, %struct.ptrstruct*** %2, align 8, !dbg !27
  %6 = load %struct.ptrstruct*, %struct.ptrstruct** %5, align 8, !dbg !28
  store %struct.ptrstruct* %6, %struct.ptrstruct** %3, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  %7 = load %struct.ptrstruct*, %struct.ptrstruct** %3, align 8, !dbg !31
  %8 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %7, i32 0, i32 1, !dbg !32
  %9 = load i8*, i8** %8, align 8, !dbg !32
  store i8* %9, i8** %4, align 8, !dbg !33
  %10 = load %struct.ptrstruct*, %struct.ptrstruct** %3, align 8, !dbg !34
  %11 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %10, i32 0, i32 2, !dbg !35
  %12 = load i8*, i8** %11, align 8, !dbg !35
  %13 = load %struct.ptrstruct*, %struct.ptrstruct** %3, align 8, !dbg !36
  %14 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %13, i32 0, i32 1, !dbg !37
  store i8* %12, i8** %14, align 8, !dbg !38
  %15 = load i8*, i8** %4, align 8, !dbg !39
  %16 = load %struct.ptrstruct*, %struct.ptrstruct** %3, align 8, !dbg !40
  %17 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %16, i32 0, i32 2, !dbg !41
  store i8* %15, i8** %17, align 8, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ptrstruct, align 8
  %3 = alloca %struct.ptrstruct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.ptrstruct* %2, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct.ptrstruct** %3, metadata !49, metadata !DIExpression()), !dbg !50
  store %struct.ptrstruct* %2, %struct.ptrstruct** %3, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata i8** %4, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i8** %5, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !55, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !60, metadata !DIExpression()), !dbg !61
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !62
  %9 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 1, !dbg !63
  store i8* %8, i8** %9, align 8, !dbg !64
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !65
  %11 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 2, !dbg !66
  store i8* %10, i8** %11, align 8, !dbg !67
  call void @swap(%struct.ptrstruct** noundef %3), !dbg !68
  %12 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 2, !dbg !69
  %13 = load i8*, i8** %12, align 8, !dbg !69
  store i8* %13, i8** %4, align 8, !dbg !70
  %14 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 1, !dbg !71
  %15 = load i8*, i8** %14, align 8, !dbg !71
  store i8* %15, i8** %5, align 8, !dbg !72
  ret i32 0, !dbg !73
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-struct-indirect.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "swap", scope: !9, file: !9, line: 8, type: !10, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-struct-indirect.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptrstruct", file: !9, line: 1, size: 192, elements: !15)
!15 = !{!16, !18, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !14, file: !9, line: 3, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !14, file: !9, line: 4, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !14, file: !9, line: 5, baseType: !19, size: 64, offset: 128)
!22 = !{}
!23 = !DILocalVariable(name: "pstruct", arg: 1, scope: !8, file: !9, line: 8, type: !12)
!24 = !DILocation(line: 8, column: 30, scope: !8)
!25 = !DILocalVariable(name: "P", scope: !8, file: !9, line: 10, type: !13)
!26 = !DILocation(line: 10, column: 23, scope: !8)
!27 = !DILocation(line: 10, column: 28, scope: !8)
!28 = !DILocation(line: 10, column: 27, scope: !8)
!29 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 11, type: !19)
!30 = !DILocation(line: 11, column: 11, scope: !8)
!31 = !DILocation(line: 12, column: 9, scope: !8)
!32 = !DILocation(line: 12, column: 12, scope: !8)
!33 = !DILocation(line: 12, column: 7, scope: !8)
!34 = !DILocation(line: 13, column: 13, scope: !8)
!35 = !DILocation(line: 13, column: 16, scope: !8)
!36 = !DILocation(line: 13, column: 5, scope: !8)
!37 = !DILocation(line: 13, column: 8, scope: !8)
!38 = !DILocation(line: 13, column: 11, scope: !8)
!39 = !DILocation(line: 14, column: 13, scope: !8)
!40 = !DILocation(line: 14, column: 5, scope: !8)
!41 = !DILocation(line: 14, column: 8, scope: !8)
!42 = !DILocation(line: 14, column: 11, scope: !8)
!43 = !DILocation(line: 15, column: 1, scope: !8)
!44 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 17, type: !45, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!45 = !DISubroutineType(types: !46)
!46 = !{!17}
!47 = !DILocalVariable(name: "PSt", scope: !44, file: !9, line: 19, type: !14)
!48 = !DILocation(line: 19, column: 22, scope: !44)
!49 = !DILocalVariable(name: "pstruct", scope: !44, file: !9, line: 20, type: !13)
!50 = !DILocation(line: 20, column: 23, scope: !44)
!51 = !DILocalVariable(name: "pa", scope: !44, file: !9, line: 21, type: !19)
!52 = !DILocation(line: 21, column: 11, scope: !44)
!53 = !DILocalVariable(name: "pb", scope: !44, file: !9, line: 21, type: !19)
!54 = !DILocation(line: 21, column: 16, scope: !44)
!55 = !DILocalVariable(name: "b", scope: !44, file: !9, line: 22, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 20)
!59 = !DILocation(line: 22, column: 10, scope: !44)
!60 = !DILocalVariable(name: "a", scope: !44, file: !9, line: 23, type: !56)
!61 = !DILocation(line: 23, column: 10, scope: !44)
!62 = !DILocation(line: 25, column: 14, scope: !44)
!63 = !DILocation(line: 25, column: 9, scope: !44)
!64 = !DILocation(line: 25, column: 12, scope: !44)
!65 = !DILocation(line: 26, column: 14, scope: !44)
!66 = !DILocation(line: 26, column: 9, scope: !44)
!67 = !DILocation(line: 26, column: 12, scope: !44)
!68 = !DILocation(line: 28, column: 5, scope: !44)
!69 = !DILocation(line: 30, column: 14, scope: !44)
!70 = !DILocation(line: 30, column: 8, scope: !44)
!71 = !DILocation(line: 31, column: 14, scope: !44)
!72 = !DILocation(line: 31, column: 8, scope: !44)
!73 = !DILocation(line: 33, column: 5, scope: !44)
