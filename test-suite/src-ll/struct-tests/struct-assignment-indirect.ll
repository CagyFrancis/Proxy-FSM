; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-assignment-indirect.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-assignment-indirect.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ss = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ss, align 8
  %5 = alloca %struct.ss, align 8
  %6 = alloca %struct.ss*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32** %3, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata %struct.ss* %4, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.ss* %5, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.ss** %6, metadata !26, metadata !DIExpression()), !dbg !28
  %7 = getelementptr inbounds %struct.ss, %struct.ss* %4, i32 0, i32 0, !dbg !29
  store i32* %2, i32** %7, align 8, !dbg !30
  store %struct.ss* %5, %struct.ss** %6, align 8, !dbg !31
  %8 = load %struct.ss*, %struct.ss** %6, align 8, !dbg !32
  %9 = bitcast %struct.ss* %8 to i8*, !dbg !33
  %10 = bitcast %struct.ss* %4 to i8*, !dbg !33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false), !dbg !33
  %11 = getelementptr inbounds %struct.ss, %struct.ss* %5, i32 0, i32 0, !dbg !34
  %12 = load i32*, i32** %11, align 8, !dbg !34
  store i32* %12, i32** %3, align 8, !dbg !35
  ret i32 0, !dbg !36
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
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-assignment-indirect.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !10, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-assignment-indirect.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 14, type: !12)
!15 = !DILocation(line: 14, column: 6, scope: !8)
!16 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 15, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!18 = !DILocation(line: 15, column: 7, scope: !8)
!19 = !DILocalVariable(name: "s1", scope: !8, file: !9, line: 16, type: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ss", file: !9, line: 7, size: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !20, file: !9, line: 9, baseType: !17, size: 64)
!23 = !DILocation(line: 16, column: 12, scope: !8)
!24 = !DILocalVariable(name: "s2", scope: !8, file: !9, line: 16, type: !20)
!25 = !DILocation(line: 16, column: 16, scope: !8)
!26 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 17, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!28 = !DILocation(line: 17, column: 13, scope: !8)
!29 = !DILocation(line: 19, column: 5, scope: !8)
!30 = !DILocation(line: 19, column: 8, scope: !8)
!31 = !DILocation(line: 20, column: 4, scope: !8)
!32 = !DILocation(line: 21, column: 3, scope: !8)
!33 = !DILocation(line: 21, column: 7, scope: !8)
!34 = !DILocation(line: 22, column: 9, scope: !8)
!35 = !DILocation(line: 22, column: 4, scope: !8)
!36 = !DILocation(line: 24, column: 2, scope: !8)
