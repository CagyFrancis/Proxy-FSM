; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\array-tests\array-struct-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests\\array-struct-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.MyStruct], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2 x %struct.MyStruct]* %2, metadata !14, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %3, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 1, i32* %4, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32** %5, metadata !29, metadata !DIExpression()), !dbg !30
  %6 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !31
  %7 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0, !dbg !32
  store i32* %3, i32** %7, align 16, !dbg !33
  %8 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 1, !dbg !34
  %9 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %8, i32 0, i32 1, !dbg !35
  store i32* %4, i32** %9, align 8, !dbg !36
  %10 = load i32, i32* %3, align 4, !dbg !37
  %11 = sext i32 %10 to i64, !dbg !38
  %12 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 %11, !dbg !38
  %13 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %12, i32 0, i32 0, !dbg !39
  %14 = load i32*, i32** %13, align 16, !dbg !39
  store i32* %14, i32** %5, align 8, !dbg !40
  %15 = load i32, i32* %4, align 4, !dbg !41
  %16 = sext i32 %15 to i64, !dbg !42
  %17 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 %16, !dbg !42
  %18 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %17, i32 0, i32 1, !dbg !43
  %19 = load i32*, i32** %18, align 8, !dbg !43
  store i32* %19, i32** %5, align 8, !dbg !44
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests/array-struct-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/array-tests/array-struct-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 11, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !22)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "MyStruct", file: !9, line: 7, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !9, line: 3, size: 128, elements: !18)
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !17, file: !9, line: 5, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !17, file: !9, line: 6, baseType: !20, size: 64, offset: 64)
!22 = !{!23}
!23 = !DISubrange(count: 2)
!24 = !DILocation(line: 11, column: 11, scope: !8)
!25 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 12, type: !12)
!26 = !DILocation(line: 12, column: 6, scope: !8)
!27 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 12, type: !12)
!28 = !DILocation(line: 12, column: 13, scope: !8)
!29 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 13, type: !20)
!30 = !DILocation(line: 13, column: 7, scope: !8)
!31 = !DILocation(line: 15, column: 2, scope: !8)
!32 = !DILocation(line: 15, column: 7, scope: !8)
!33 = !DILocation(line: 15, column: 10, scope: !8)
!34 = !DILocation(line: 16, column: 2, scope: !8)
!35 = !DILocation(line: 16, column: 7, scope: !8)
!36 = !DILocation(line: 16, column: 10, scope: !8)
!37 = !DILocation(line: 18, column: 8, scope: !8)
!38 = !DILocation(line: 18, column: 6, scope: !8)
!39 = !DILocation(line: 18, column: 11, scope: !8)
!40 = !DILocation(line: 18, column: 4, scope: !8)
!41 = !DILocation(line: 19, column: 8, scope: !8)
!42 = !DILocation(line: 19, column: 6, scope: !8)
!43 = !DILocation(line: 19, column: 11, scope: !8)
!44 = !DILocation(line: 19, column: 4, scope: !8)
!45 = !DILocation(line: 21, column: 2, scope: !8)
