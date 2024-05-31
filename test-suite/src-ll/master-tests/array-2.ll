; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\array-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\array-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@__const.main.a = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* noundef %0) #0 !dbg !8 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !15, metadata !DIExpression()), !dbg !16
  ret void, !dbg !17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2 x i32]* %2, metadata !21, metadata !DIExpression()), !dbg !25
  %4 = bitcast [2 x i32]* %2 to i8*, !dbg !25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([2 x i32]* @__const.main.a to i8*), i64 8, i1 false), !dbg !25
  call void @llvm.dbg.declare(metadata i32** %3, metadata !26, metadata !DIExpression()), !dbg !27
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1, !dbg !28
  store i32* %5, i32** %3, align 8, !dbg !27
  %6 = load i32*, i32** %3, align 8, !dbg !29
  call void @foo(i32* noundef %6), !dbg !30
  ret i32 0, !dbg !31
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/array-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 1, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/array-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocation(line: 1, column: 15, scope: !8)
!17 = !DILocation(line: 3, column: 5, scope: !8)
!18 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !19, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!19 = !DISubroutineType(types: !20)
!20 = !{!13}
!21 = !DILocalVariable(name: "a", scope: !18, file: !9, line: 8, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 2)
!25 = !DILocation(line: 8, column: 6, scope: !18)
!26 = !DILocalVariable(name: "p", scope: !18, file: !9, line: 9, type: !12)
!27 = !DILocation(line: 9, column: 7, scope: !18)
!28 = !DILocation(line: 9, column: 12, scope: !18)
!29 = !DILocation(line: 11, column: 9, scope: !18)
!30 = !DILocation(line: 11, column: 5, scope: !18)
!31 = !DILocation(line: 13, column: 5, scope: !18)
