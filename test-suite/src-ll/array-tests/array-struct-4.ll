; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\array-tests\array-struct-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests\\array-struct-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.MyStruct], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.MyStruct*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [2 x %struct.MyStruct]* %2, metadata !14, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %3, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 1, i32* %4, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %5, metadata !29, metadata !DIExpression()), !dbg !31
  %7 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !32
  store %struct.MyStruct* %7, %struct.MyStruct** %5, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i32** %6, metadata !33, metadata !DIExpression()), !dbg !34
  %8 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 0, !dbg !35
  %9 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %8, i32 0, i32 0, !dbg !36
  store i32* %3, i32** %9, align 16, !dbg !37
  %10 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %2, i64 0, i64 1, !dbg !38
  %11 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %10, i32 0, i32 1, !dbg !39
  store i32* %4, i32** %11, align 8, !dbg !40
  %12 = load %struct.MyStruct*, %struct.MyStruct** %5, align 8, !dbg !41
  %13 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %12, i32 0, i32 0, !dbg !42
  %14 = load i32*, i32** %13, align 8, !dbg !42
  store i32* %14, i32** %6, align 8, !dbg !43
  %15 = load %struct.MyStruct*, %struct.MyStruct** %5, align 8, !dbg !44
  %16 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %15, i64 1, !dbg !45
  %17 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %16, i32 0, i32 1, !dbg !46
  %18 = load i32*, i32** %17, align 8, !dbg !46
  store i32* %18, i32** %6, align 8, !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\array-tests/array-struct-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/array-tests/array-struct-4.c", directory: "")
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
!29 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 13, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!31 = !DILocation(line: 13, column: 12, scope: !8)
!32 = !DILocation(line: 13, column: 16, scope: !8)
!33 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 14, type: !20)
!34 = !DILocation(line: 14, column: 7, scope: !8)
!35 = !DILocation(line: 16, column: 2, scope: !8)
!36 = !DILocation(line: 16, column: 7, scope: !8)
!37 = !DILocation(line: 16, column: 10, scope: !8)
!38 = !DILocation(line: 17, column: 2, scope: !8)
!39 = !DILocation(line: 17, column: 7, scope: !8)
!40 = !DILocation(line: 17, column: 10, scope: !8)
!41 = !DILocation(line: 19, column: 6, scope: !8)
!42 = !DILocation(line: 19, column: 9, scope: !8)
!43 = !DILocation(line: 19, column: 4, scope: !8)
!44 = !DILocation(line: 20, column: 7, scope: !8)
!45 = !DILocation(line: 20, column: 9, scope: !8)
!46 = !DILocation(line: 20, column: 15, scope: !8)
!47 = !DILocation(line: 20, column: 4, scope: !8)
!48 = !DILocation(line: 22, column: 2, scope: !8)
