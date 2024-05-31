; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\struct-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\struct-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.A = type { i32*, i32* }
%struct.B = type { i32*, %struct.A }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.A, align 8
  %7 = alloca %struct.A, align 8
  %8 = alloca %struct.B, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 10, i32* %2, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 20, i32* %3, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 30, i32* %4, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32** %5, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata %struct.A* %6, metadata !23, metadata !DIExpression()), !dbg !29
  %9 = getelementptr inbounds %struct.A, %struct.A* %6, i32 0, i32 0, !dbg !30
  store i32* %2, i32** %9, align 8, !dbg !30
  %10 = getelementptr inbounds %struct.A, %struct.A* %6, i32 0, i32 1, !dbg !30
  store i32* %3, i32** %10, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata %struct.A* %7, metadata !31, metadata !DIExpression()), !dbg !32
  %11 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 0, !dbg !33
  store i32* %3, i32** %11, align 8, !dbg !33
  %12 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 1, !dbg !33
  store i32* %4, i32** %12, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct.B* %8, metadata !34, metadata !DIExpression()), !dbg !40
  %13 = getelementptr inbounds %struct.B, %struct.B* %8, i32 0, i32 0, !dbg !41
  store i32* %3, i32** %13, align 8, !dbg !41
  %14 = getelementptr inbounds %struct.B, %struct.B* %8, i32 0, i32 1, !dbg !41
  %15 = bitcast %struct.A* %14 to i8*, !dbg !42
  %16 = bitcast %struct.A* %6 to i8*, !dbg !42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false), !dbg !42
  %17 = getelementptr inbounds %struct.B, %struct.B* %8, i32 0, i32 1, !dbg !43
  %18 = bitcast %struct.A* %17 to i8*, !dbg !44
  %19 = bitcast %struct.A* %7 to i8*, !dbg !44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false), !dbg !44
  %20 = getelementptr inbounds %struct.B, %struct.B* %8, i32 0, i32 1, !dbg !45
  %21 = getelementptr inbounds %struct.A, %struct.A* %20, i32 0, i32 0, !dbg !46
  %22 = load i32*, i32** %21, align 8, !dbg !46
  store i32* %22, i32** %5, align 8, !dbg !47
  %23 = getelementptr inbounds %struct.B, %struct.B* %8, i32 0, i32 1, !dbg !48
  %24 = getelementptr inbounds %struct.A, %struct.A* %23, i32 0, i32 1, !dbg !49
  %25 = load i32*, i32** %24, align 8, !dbg !49
  store i32* %25, i32** %5, align 8, !dbg !50
  ret i32 0, !dbg !51
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
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/struct-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/struct-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 15, type: !12)
!15 = !DILocation(line: 15, column: 9, scope: !8)
!16 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 15, type: !12)
!17 = !DILocation(line: 15, column: 17, scope: !8)
!18 = !DILocalVariable(name: "w", scope: !8, file: !9, line: 15, type: !12)
!19 = !DILocation(line: 15, column: 25, scope: !8)
!20 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 16, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !DILocation(line: 16, column: 10, scope: !8)
!23 = !DILocalVariable(name: "a1", scope: !8, file: !9, line: 17, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "A", file: !9, line: 5, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "A", file: !9, line: 1, size: 128, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !25, file: !9, line: 3, baseType: !21, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !25, file: !9, line: 4, baseType: !21, size: 64, offset: 64)
!29 = !DILocation(line: 17, column: 7, scope: !8)
!30 = !DILocation(line: 17, column: 12, scope: !8)
!31 = !DILocalVariable(name: "a2", scope: !8, file: !9, line: 18, type: !24)
!32 = !DILocation(line: 18, column: 7, scope: !8)
!33 = !DILocation(line: 18, column: 12, scope: !8)
!34 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 19, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "B", file: !9, line: 11, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "B", file: !9, line: 7, size: 192, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !36, file: !9, line: 9, baseType: !21, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !36, file: !9, line: 10, baseType: !24, size: 128, offset: 64)
!40 = !DILocation(line: 19, column: 7, scope: !8)
!41 = !DILocation(line: 19, column: 11, scope: !8)
!42 = !DILocation(line: 19, column: 16, scope: !8)
!43 = !DILocation(line: 21, column: 7, scope: !8)
!44 = !DILocation(line: 21, column: 12, scope: !8)
!45 = !DILocation(line: 23, column: 11, scope: !8)
!46 = !DILocation(line: 23, column: 14, scope: !8)
!47 = !DILocation(line: 23, column: 7, scope: !8)
!48 = !DILocation(line: 24, column: 11, scope: !8)
!49 = !DILocation(line: 24, column: 14, scope: !8)
!50 = !DILocation(line: 24, column: 7, scope: !8)
!51 = !DILocation(line: 26, column: 5, scope: !8)
