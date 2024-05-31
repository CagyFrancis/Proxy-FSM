; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-nested-layer.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-nested-layer.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct1 = type { i32*, %struct.MyStruct2 }
%struct.MyStruct2 = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MyStruct1, align 8
  %3 = alloca %struct.MyStruct1*, align 8
  %4 = alloca %struct.MyStruct2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.MyStruct1* %2, metadata !14, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.MyStruct1** %3, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %struct.MyStruct2** %4, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %5, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %6, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %7, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %8, metadata !37, metadata !DIExpression()), !dbg !38
  %9 = getelementptr inbounds %struct.MyStruct1, %struct.MyStruct1* %2, i32 0, i32 0, !dbg !39
  store i32* %7, i32** %9, align 8, !dbg !40
  %10 = getelementptr inbounds %struct.MyStruct1, %struct.MyStruct1* %2, i32 0, i32 1, !dbg !41
  %11 = getelementptr inbounds %struct.MyStruct2, %struct.MyStruct2* %10, i32 0, i32 0, !dbg !42
  store i32* %5, i32** %11, align 8, !dbg !43
  %12 = getelementptr inbounds %struct.MyStruct1, %struct.MyStruct1* %2, i32 0, i32 1, !dbg !44
  %13 = getelementptr inbounds %struct.MyStruct2, %struct.MyStruct2* %12, i32 0, i32 1, !dbg !45
  store i32* %6, i32** %13, align 8, !dbg !46
  store %struct.MyStruct1* %2, %struct.MyStruct1** %3, align 8, !dbg !47
  %14 = getelementptr inbounds %struct.MyStruct1, %struct.MyStruct1* %2, i32 0, i32 1, !dbg !48
  store %struct.MyStruct2* %14, %struct.MyStruct2** %4, align 8, !dbg !49
  %15 = load %struct.MyStruct2*, %struct.MyStruct2** %4, align 8, !dbg !50
  %16 = getelementptr inbounds %struct.MyStruct2, %struct.MyStruct2* %15, i32 0, i32 1, !dbg !51
  %17 = load i32*, i32** %16, align 8, !dbg !51
  store i32* %17, i32** %8, align 8, !dbg !52
  %18 = load %struct.MyStruct2*, %struct.MyStruct2** %4, align 8, !dbg !53
  %19 = getelementptr inbounds %struct.MyStruct2, %struct.MyStruct2* %18, i32 0, i32 0, !dbg !54
  %20 = load i32*, i32** %19, align 8, !dbg !54
  store i32* %20, i32** %8, align 8, !dbg !55
  %21 = load %struct.MyStruct1*, %struct.MyStruct1** %3, align 8, !dbg !56
  %22 = getelementptr inbounds %struct.MyStruct1, %struct.MyStruct1* %21, i32 0, i32 1, !dbg !57
  %23 = getelementptr inbounds %struct.MyStruct2, %struct.MyStruct2* %22, i32 0, i32 0, !dbg !58
  %24 = load i32*, i32** %23, align 8, !dbg !58
  store i32* %24, i32** %8, align 8, !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-nested-layer.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 19, type: !10, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-nested-layer.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "ms", scope: !8, file: !9, line: 21, type: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct1", file: !9, line: 13, size: 192, elements: !16)
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !15, file: !9, line: 15, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !15, file: !9, line: 16, baseType: !20, size: 128, offset: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct2", file: !9, line: 7, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !20, file: !9, line: 9, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !20, file: !9, line: 10, baseType: !18, size: 64, offset: 64)
!24 = !DILocation(line: 21, column: 19, scope: !8)
!25 = !DILocalVariable(name: "pms1", scope: !8, file: !9, line: 22, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!27 = !DILocation(line: 22, column: 20, scope: !8)
!28 = !DILocalVariable(name: "pms2", scope: !8, file: !9, line: 23, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!30 = !DILocation(line: 23, column: 20, scope: !8)
!31 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 24, type: !12)
!32 = !DILocation(line: 24, column: 6, scope: !8)
!33 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 24, type: !12)
!34 = !DILocation(line: 24, column: 9, scope: !8)
!35 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 24, type: !12)
!36 = !DILocation(line: 24, column: 12, scope: !8)
!37 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 25, type: !18)
!38 = !DILocation(line: 25, column: 7, scope: !8)
!39 = !DILocation(line: 27, column: 5, scope: !8)
!40 = !DILocation(line: 27, column: 8, scope: !8)
!41 = !DILocation(line: 28, column: 5, scope: !8)
!42 = !DILocation(line: 28, column: 8, scope: !8)
!43 = !DILocation(line: 28, column: 11, scope: !8)
!44 = !DILocation(line: 29, column: 5, scope: !8)
!45 = !DILocation(line: 29, column: 8, scope: !8)
!46 = !DILocation(line: 29, column: 11, scope: !8)
!47 = !DILocation(line: 30, column: 7, scope: !8)
!48 = !DILocation(line: 31, column: 13, scope: !8)
!49 = !DILocation(line: 31, column: 7, scope: !8)
!50 = !DILocation(line: 33, column: 6, scope: !8)
!51 = !DILocation(line: 33, column: 12, scope: !8)
!52 = !DILocation(line: 33, column: 4, scope: !8)
!53 = !DILocation(line: 34, column: 6, scope: !8)
!54 = !DILocation(line: 34, column: 12, scope: !8)
!55 = !DILocation(line: 34, column: 4, scope: !8)
!56 = !DILocation(line: 35, column: 6, scope: !8)
!57 = !DILocation(line: 35, column: 12, scope: !8)
!58 = !DILocation(line: 35, column: 15, scope: !8)
!59 = !DILocation(line: 35, column: 4, scope: !8)
!60 = !DILocation(line: 37, column: 2, scope: !8)
