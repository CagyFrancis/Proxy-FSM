; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-field-multi-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-field-multi-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, %struct.MyStruct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.MyStruct, align 8
  %5 = alloca %struct.MyStruct, align 8
  %6 = alloca %struct.MyStruct*, align 8
  %7 = alloca %struct.MyStruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32** %3, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %4, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %6, metadata !29, metadata !DIExpression()), !dbg !31
  store %struct.MyStruct* %4, %struct.MyStruct** %6, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %7, metadata !32, metadata !DIExpression()), !dbg !33
  store %struct.MyStruct* %5, %struct.MyStruct** %7, align 8, !dbg !33
  %8 = load %struct.MyStruct*, %struct.MyStruct** %6, align 8, !dbg !34
  %9 = load %struct.MyStruct*, %struct.MyStruct** %7, align 8, !dbg !35
  %10 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %9, i32 0, i32 1, !dbg !36
  store %struct.MyStruct* %8, %struct.MyStruct** %10, align 8, !dbg !37
  %11 = load %struct.MyStruct*, %struct.MyStruct** %6, align 8, !dbg !38
  %12 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %11, i32 0, i32 0, !dbg !39
  store i32* %2, i32** %12, align 8, !dbg !40
  %13 = load %struct.MyStruct*, %struct.MyStruct** %7, align 8, !dbg !41
  %14 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %13, i32 0, i32 1, !dbg !42
  %15 = load %struct.MyStruct*, %struct.MyStruct** %14, align 8, !dbg !42
  %16 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %15, i32 0, i32 0, !dbg !43
  %17 = load i32*, i32** %16, align 8, !dbg !43
  store i32* %17, i32** %3, align 8, !dbg !44
  %18 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %4, i32 0, i32 0, !dbg !45
  %19 = load i32*, i32** %18, align 8, !dbg !45
  store i32* %19, i32** %3, align 8, !dbg !46
  %20 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %5, i32 0, i32 1, !dbg !47
  %21 = load %struct.MyStruct*, %struct.MyStruct** %20, align 8, !dbg !47
  %22 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %21, i32 0, i32 0, !dbg !48
  %23 = load i32*, i32** %22, align 8, !dbg !48
  store i32* %23, i32** %3, align 8, !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-field-multi-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-field-multi-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 15, type: !12)
!15 = !DILocation(line: 15, column: 6, scope: !8)
!16 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 16, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!18 = !DILocation(line: 16, column: 7, scope: !8)
!19 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 17, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "MyStruct", file: !9, line: 11, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !9, line: 7, size: 128, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !21, file: !9, line: 9, baseType: !17, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !21, file: !9, line: 10, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!26 = !DILocation(line: 17, column: 11, scope: !8)
!27 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 17, type: !20)
!28 = !DILocation(line: 17, column: 14, scope: !8)
!29 = !DILocalVariable(name: "xx", scope: !8, file: !9, line: 18, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!31 = !DILocation(line: 18, column: 12, scope: !8)
!32 = !DILocalVariable(name: "yy", scope: !8, file: !9, line: 18, type: !30)
!33 = !DILocation(line: 18, column: 22, scope: !8)
!34 = !DILocation(line: 20, column: 11, scope: !8)
!35 = !DILocation(line: 20, column: 2, scope: !8)
!36 = !DILocation(line: 20, column: 6, scope: !8)
!37 = !DILocation(line: 20, column: 9, scope: !8)
!38 = !DILocation(line: 21, column: 2, scope: !8)
!39 = !DILocation(line: 21, column: 6, scope: !8)
!40 = !DILocation(line: 21, column: 9, scope: !8)
!41 = !DILocation(line: 22, column: 6, scope: !8)
!42 = !DILocation(line: 22, column: 10, scope: !8)
!43 = !DILocation(line: 22, column: 14, scope: !8)
!44 = !DILocation(line: 22, column: 4, scope: !8)
!45 = !DILocation(line: 23, column: 8, scope: !8)
!46 = !DILocation(line: 23, column: 4, scope: !8)
!47 = !DILocation(line: 24, column: 8, scope: !8)
!48 = !DILocation(line: 24, column: 12, scope: !8)
!49 = !DILocation(line: 24, column: 4, scope: !8)
!50 = !DILocation(line: 26, column: 2, scope: !8)
