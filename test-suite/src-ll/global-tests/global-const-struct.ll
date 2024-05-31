; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-const-struct.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-const-struct.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MYFILE = type { i32 (i32*)* }
%struct.MyStruct = type { %struct.MYFILE* }

@pts = dso_local constant %struct.MYFILE { i32 (i32*)* @my_sn_write }, align 8, !dbg !0
@ms = dso_local constant %struct.MyStruct { %struct.MYFILE* @pts }, align 8, !dbg !5
@g = dso_local global i32 0, align 4, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_sn_write(i32* noundef %0) #0 !dbg !30 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !32, metadata !DIExpression()), !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_vfprintf(%struct.MyStruct* noundef %0) #0 !dbg !35 {
  %2 = alloca %struct.MyStruct*, align 8
  %3 = alloca i32*, align 8
  store %struct.MyStruct* %0, %struct.MyStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %3, metadata !41, metadata !DIExpression()), !dbg !42
  store i32* @g, i32** %3, align 8, !dbg !42
  %4 = load %struct.MyStruct*, %struct.MyStruct** %2, align 8, !dbg !43
  %5 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %4, i32 0, i32 0, !dbg !44
  %6 = load %struct.MYFILE*, %struct.MYFILE** %5, align 8, !dbg !44
  %7 = getelementptr inbounds %struct.MYFILE, %struct.MYFILE* %6, i32 0, i32 0, !dbg !45
  %8 = load i32 (i32*)*, i32 (i32*)** %7, align 8, !dbg !45
  %9 = load i32*, i32** %3, align 8, !dbg !46
  %10 = call i32 %8(i32* noundef %9), !dbg !43
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !48 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @my_vfprintf(%struct.MyStruct* noundef @ms), !dbg !51
  ret i32 0, !dbg !52
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pts", scope: !2, file: !7, line: 18, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-const-struct.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !22}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "ms", scope: !2, file: !7, line: 19, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-const-struct.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !7, line: 13, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "myfile", scope: !9, file: !7, line: 15, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYFILE", file: !7, line: 8, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !14, file: !7, line: 10, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !7, line: 1, type: !20, isLocal: false, isDefinition: true)
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!30 = distinct !DISubprogram(name: "my_sn_write", scope: !7, file: !7, line: 3, type: !18, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !31)
!31 = !{}
!32 = !DILocalVariable(name: "p", arg: 1, scope: !30, file: !7, line: 3, type: !21)
!33 = !DILocation(line: 3, column: 29, scope: !30)
!34 = !DILocation(line: 5, column: 5, scope: !30)
!35 = distinct !DISubprogram(name: "my_vfprintf", scope: !7, file: !7, line: 21, type: !36, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!39 = !DILocalVariable(name: "ms", arg: 1, scope: !35, file: !7, line: 21, type: !38)
!40 = !DILocation(line: 21, column: 41, scope: !35)
!41 = !DILocalVariable(name: "p", scope: !35, file: !7, line: 23, type: !21)
!42 = !DILocation(line: 23, column: 10, scope: !35)
!43 = !DILocation(line: 24, column: 5, scope: !35)
!44 = !DILocation(line: 24, column: 9, scope: !35)
!45 = !DILocation(line: 24, column: 17, scope: !35)
!46 = !DILocation(line: 24, column: 20, scope: !35)
!47 = !DILocation(line: 25, column: 1, scope: !35)
!48 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 27, type: !49, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !31)
!49 = !DISubroutineType(types: !50)
!50 = !{!20}
!51 = !DILocation(line: 29, column: 5, scope: !48)
!52 = !DILocation(line: 30, column: 5, scope: !48)
