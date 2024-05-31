; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ff = type { i32*, %struct.gg }
%struct.gg = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ff, align 8
  %6 = alloca %struct.gg, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.ff* %5, metadata !21, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.gg* %6, metadata !32, metadata !DIExpression()), !dbg !33
  %7 = getelementptr inbounds %struct.gg, %struct.gg* %6, i32 0, i32 0, !dbg !34
  store i32* %2, i32** %7, align 8, !dbg !35
  %8 = getelementptr inbounds %struct.ff, %struct.ff* %5, i32 0, i32 0, !dbg !36
  store i32* %3, i32** %8, align 8, !dbg !37
  %9 = getelementptr inbounds %struct.ff, %struct.ff* %5, i32 0, i32 1, !dbg !38
  %10 = bitcast %struct.gg* %9 to i8*, !dbg !39
  %11 = bitcast %struct.gg* %6 to i8*, !dbg !39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !39
  %12 = getelementptr inbounds %struct.ff, %struct.ff* %5, i32 0, i32 1, !dbg !40
  %13 = getelementptr inbounds %struct.gg, %struct.gg* %12, i32 0, i32 0, !dbg !41
  %14 = load i32*, i32** %13, align 8, !dbg !41
  store i32* %14, i32** %4, align 8, !dbg !42
  %15 = getelementptr inbounds %struct.ff, %struct.ff* %5, i32 0, i32 0, !dbg !43
  %16 = load i32*, i32** %15, align 8, !dbg !43
  store i32* %16, i32** %4, align 8, !dbg !44
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !10, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 14, type: !12)
!15 = !DILocation(line: 14, column: 9, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 14, type: !12)
!17 = !DILocation(line: 14, column: 12, scope: !8)
!18 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 15, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DILocation(line: 15, column: 10, scope: !8)
!21 = !DILocalVariable(name: "f", scope: !8, file: !9, line: 16, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ff", file: !9, line: 10, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff", file: !9, line: 6, size: 128, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !23, file: !9, line: 8, baseType: !19, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !23, file: !9, line: 9, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "gg", file: !9, line: 4, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gg", file: !9, line: 1, size: 64, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !28, file: !9, line: 3, baseType: !19, size: 64)
!31 = !DILocation(line: 16, column: 8, scope: !8)
!32 = !DILocalVariable(name: "g", scope: !8, file: !9, line: 17, type: !27)
!33 = !DILocation(line: 17, column: 8, scope: !8)
!34 = !DILocation(line: 19, column: 7, scope: !8)
!35 = !DILocation(line: 19, column: 10, scope: !8)
!36 = !DILocation(line: 20, column: 7, scope: !8)
!37 = !DILocation(line: 20, column: 10, scope: !8)
!38 = !DILocation(line: 21, column: 7, scope: !8)
!39 = !DILocation(line: 21, column: 12, scope: !8)
!40 = !DILocation(line: 23, column: 11, scope: !8)
!41 = !DILocation(line: 23, column: 14, scope: !8)
!42 = !DILocation(line: 23, column: 7, scope: !8)
!43 = !DILocation(line: 24, column: 11, scope: !8)
!44 = !DILocation(line: 24, column: 7, scope: !8)
!45 = !DILocation(line: 26, column: 5, scope: !8)
