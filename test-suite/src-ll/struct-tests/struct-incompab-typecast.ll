; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-incompab-typecast.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-incompab-typecast.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.DstStruct = type { i8, i32*, i32* }
%struct.SrcStruct = type { i32*, i32*, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DstStruct*, align 8
  %3 = alloca %struct.SrcStruct*, align 8
  %4 = alloca %struct.SrcStruct, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.DstStruct** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.SrcStruct** %3, metadata !25, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct.SrcStruct* %4, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %5, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %7, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %8, metadata !41, metadata !DIExpression()), !dbg !42
  store %struct.SrcStruct* %4, %struct.SrcStruct** %3, align 8, !dbg !43
  %9 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !44
  %10 = getelementptr inbounds %struct.SrcStruct, %struct.SrcStruct* %9, i32 0, i32 0, !dbg !45
  store i32* %5, i32** %10, align 8, !dbg !46
  %11 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !47
  %12 = getelementptr inbounds %struct.SrcStruct, %struct.SrcStruct* %11, i32 0, i32 1, !dbg !48
  store i32* %6, i32** %12, align 8, !dbg !49
  %13 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !50
  %14 = bitcast %struct.SrcStruct* %13 to %struct.DstStruct*, !dbg !51
  store %struct.DstStruct* %14, %struct.DstStruct** %2, align 8, !dbg !52
  %15 = load %struct.DstStruct*, %struct.DstStruct** %2, align 8, !dbg !53
  %16 = getelementptr inbounds %struct.DstStruct, %struct.DstStruct* %15, i32 0, i32 1, !dbg !54
  %17 = load i32*, i32** %16, align 8, !dbg !54
  store i32* %17, i32** %8, align 8, !dbg !55
  %18 = load %struct.DstStruct*, %struct.DstStruct** %2, align 8, !dbg !56
  %19 = getelementptr inbounds %struct.DstStruct, %struct.DstStruct* %18, i32 0, i32 2, !dbg !57
  %20 = load i32*, i32** %19, align 8, !dbg !57
  store i32* %20, i32** %8, align 8, !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-incompab-typecast.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DstStruct", file: !5, line: 14, size: 192, elements: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-incompab-typecast.c", directory: "")
!6 = !{!7, !9, !12}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !4, file: !5, line: 16, baseType: !8, size: 8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !4, file: !5, line: 17, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !4, file: !5, line: 18, baseType: !10, size: 64, offset: 128)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!19 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 21, type: !20, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!11}
!22 = !{}
!23 = !DILocalVariable(name: "pdst", scope: !19, file: !5, line: 23, type: !3)
!24 = !DILocation(line: 23, column: 20, scope: !19)
!25 = !DILocalVariable(name: "psrc", scope: !19, file: !5, line: 24, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SrcStruct", file: !5, line: 7, size: 192, elements: !28)
!28 = !{!29, !30, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !27, file: !5, line: 9, baseType: !10, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !27, file: !5, line: 10, baseType: !10, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !27, file: !5, line: 11, baseType: !8, size: 8, offset: 128)
!32 = !DILocation(line: 24, column: 20, scope: !19)
!33 = !DILocalVariable(name: "s", scope: !19, file: !5, line: 25, type: !27)
!34 = !DILocation(line: 25, column: 19, scope: !19)
!35 = !DILocalVariable(name: "x", scope: !19, file: !5, line: 26, type: !11)
!36 = !DILocation(line: 26, column: 6, scope: !19)
!37 = !DILocalVariable(name: "y", scope: !19, file: !5, line: 26, type: !11)
!38 = !DILocation(line: 26, column: 9, scope: !19)
!39 = !DILocalVariable(name: "z", scope: !19, file: !5, line: 26, type: !11)
!40 = !DILocation(line: 26, column: 12, scope: !19)
!41 = !DILocalVariable(name: "p", scope: !19, file: !5, line: 27, type: !10)
!42 = !DILocation(line: 27, column: 7, scope: !19)
!43 = !DILocation(line: 29, column: 7, scope: !19)
!44 = !DILocation(line: 30, column: 2, scope: !19)
!45 = !DILocation(line: 30, column: 8, scope: !19)
!46 = !DILocation(line: 30, column: 11, scope: !19)
!47 = !DILocation(line: 31, column: 2, scope: !19)
!48 = !DILocation(line: 31, column: 8, scope: !19)
!49 = !DILocation(line: 31, column: 11, scope: !19)
!50 = !DILocation(line: 33, column: 29, scope: !19)
!51 = !DILocation(line: 33, column: 9, scope: !19)
!52 = !DILocation(line: 33, column: 7, scope: !19)
!53 = !DILocation(line: 35, column: 6, scope: !19)
!54 = !DILocation(line: 35, column: 12, scope: !19)
!55 = !DILocation(line: 35, column: 4, scope: !19)
!56 = !DILocation(line: 36, column: 6, scope: !19)
!57 = !DILocation(line: 36, column: 12, scope: !19)
!58 = !DILocation(line: 36, column: 4, scope: !19)
!59 = !DILocation(line: 38, column: 2, scope: !19)
