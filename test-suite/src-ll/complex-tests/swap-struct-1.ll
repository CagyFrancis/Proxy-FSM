; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\swap-struct-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\swap-struct-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ptrstruct = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(%struct.ptrstruct* noundef %0) #0 !dbg !8 {
  %2 = alloca %struct.ptrstruct*, align 8
  %3 = alloca i8*, align 8
  store %struct.ptrstruct* %0, %struct.ptrstruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ptrstruct** %2, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !DIExpression()), !dbg !23
  %4 = load %struct.ptrstruct*, %struct.ptrstruct** %2, align 8, !dbg !24
  %5 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %4, i32 0, i32 0, !dbg !25
  %6 = load i8*, i8** %5, align 8, !dbg !25
  store i8* %6, i8** %3, align 8, !dbg !26
  %7 = load %struct.ptrstruct*, %struct.ptrstruct** %2, align 8, !dbg !27
  %8 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %7, i32 0, i32 1, !dbg !28
  %9 = load i8*, i8** %8, align 8, !dbg !28
  %10 = load %struct.ptrstruct*, %struct.ptrstruct** %2, align 8, !dbg !29
  %11 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %10, i32 0, i32 0, !dbg !30
  store i8* %9, i8** %11, align 8, !dbg !31
  %12 = load i8*, i8** %3, align 8, !dbg !32
  %13 = load %struct.ptrstruct*, %struct.ptrstruct** %2, align 8, !dbg !33
  %14 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %13, i32 0, i32 1, !dbg !34
  store i8* %12, i8** %14, align 8, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ptrstruct, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca [20 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.ptrstruct* %2, metadata !41, metadata !DIExpression()), !dbg !42
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
  call void @swap(%struct.ptrstruct* noundef %2), !dbg !60
  %11 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 1, !dbg !61
  %12 = load i8*, i8** %11, align 8, !dbg !61
  store i8* %12, i8** %3, align 8, !dbg !62
  %13 = getelementptr inbounds %struct.ptrstruct, %struct.ptrstruct* %2, i32 0, i32 0, !dbg !63
  %14 = load i8*, i8** %13, align 8, !dbg !63
  store i8* %14, i8** %4, align 8, !dbg !64
  ret i32 0, !dbg !65
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/swap-struct-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "swap", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/swap-struct-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptrstruct", file: !9, line: 1, size: 128, elements: !14)
!14 = !{!15, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !13, file: !9, line: 3, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !13, file: !9, line: 4, baseType: !16, size: 64, offset: 64)
!19 = !{}
!20 = !DILocalVariable(name: "P", arg: 1, scope: !8, file: !9, line: 7, type: !12)
!21 = !DILocation(line: 7, column: 29, scope: !8)
!22 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 9, type: !16)
!23 = !DILocation(line: 9, column: 11, scope: !8)
!24 = !DILocation(line: 10, column: 9, scope: !8)
!25 = !DILocation(line: 10, column: 12, scope: !8)
!26 = !DILocation(line: 10, column: 7, scope: !8)
!27 = !DILocation(line: 11, column: 13, scope: !8)
!28 = !DILocation(line: 11, column: 16, scope: !8)
!29 = !DILocation(line: 11, column: 5, scope: !8)
!30 = !DILocation(line: 11, column: 8, scope: !8)
!31 = !DILocation(line: 11, column: 11, scope: !8)
!32 = !DILocation(line: 12, column: 13, scope: !8)
!33 = !DILocation(line: 12, column: 5, scope: !8)
!34 = !DILocation(line: 12, column: 8, scope: !8)
!35 = !DILocation(line: 12, column: 11, scope: !8)
!36 = !DILocation(line: 13, column: 1, scope: !8)
!37 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 15, type: !38, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DILocalVariable(name: "PSt", scope: !37, file: !9, line: 17, type: !13)
!42 = !DILocation(line: 17, column: 22, scope: !37)
!43 = !DILocalVariable(name: "pa", scope: !37, file: !9, line: 18, type: !16)
!44 = !DILocation(line: 18, column: 11, scope: !37)
!45 = !DILocalVariable(name: "pb", scope: !37, file: !9, line: 18, type: !16)
!46 = !DILocation(line: 18, column: 16, scope: !37)
!47 = !DILocalVariable(name: "b", scope: !37, file: !9, line: 19, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 20)
!51 = !DILocation(line: 19, column: 10, scope: !37)
!52 = !DILocalVariable(name: "a", scope: !37, file: !9, line: 20, type: !48)
!53 = !DILocation(line: 20, column: 10, scope: !37)
!54 = !DILocation(line: 22, column: 14, scope: !37)
!55 = !DILocation(line: 22, column: 9, scope: !37)
!56 = !DILocation(line: 22, column: 12, scope: !37)
!57 = !DILocation(line: 23, column: 14, scope: !37)
!58 = !DILocation(line: 23, column: 9, scope: !37)
!59 = !DILocation(line: 23, column: 12, scope: !37)
!60 = !DILocation(line: 25, column: 5, scope: !37)
!61 = !DILocation(line: 27, column: 14, scope: !37)
!62 = !DILocation(line: 27, column: 8, scope: !37)
!63 = !DILocation(line: 28, column: 14, scope: !37)
!64 = !DILocation(line: 28, column: 8, scope: !37)
!65 = !DILocation(line: 30, column: 5, scope: !37)
