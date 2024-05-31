; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-assignment-nested.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-assignment-nested.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ArrayStruct = type { i8, %struct.MidArrayStruct, i32* }
%struct.MidArrayStruct = type { [10 x i8], [5 x %struct.InnerArrayStruct] }
%struct.InnerArrayStruct = type { [10 x i32*], [20 x i32*], i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ArrayStruct*, align 8
  %3 = alloca %struct.ArrayStruct, align 8
  %4 = alloca %struct.ArrayStruct, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.ArrayStruct** %2, metadata !14, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata %struct.ArrayStruct* %3, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata %struct.ArrayStruct* %4, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %6, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32** %7, metadata !51, metadata !DIExpression()), !dbg !52
  %8 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %3, i32 0, i32 2, !dbg !53
  store i32* %5, i32** %8, align 8, !dbg !54
  store %struct.ArrayStruct* %3, %struct.ArrayStruct** %2, align 8, !dbg !55
  %9 = load %struct.ArrayStruct*, %struct.ArrayStruct** %2, align 8, !dbg !56
  %10 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %9, i32 0, i32 1, !dbg !57
  %11 = getelementptr inbounds %struct.MidArrayStruct, %struct.MidArrayStruct* %10, i32 0, i32 1, !dbg !58
  %12 = getelementptr inbounds [5 x %struct.InnerArrayStruct], [5 x %struct.InnerArrayStruct]* %11, i64 0, i64 3, !dbg !56
  %13 = getelementptr inbounds %struct.InnerArrayStruct, %struct.InnerArrayStruct* %12, i32 0, i32 0, !dbg !59
  %14 = getelementptr inbounds [10 x i32*], [10 x i32*]* %13, i64 0, i64 3, !dbg !56
  store i32* %6, i32** %14, align 8, !dbg !60
  %15 = bitcast %struct.ArrayStruct* %4 to i8*, !dbg !61
  %16 = bitcast %struct.ArrayStruct* %3 to i8*, !dbg !61
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 1272, i1 false), !dbg !61
  %17 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %4, i32 0, i32 1, !dbg !62
  %18 = getelementptr inbounds %struct.MidArrayStruct, %struct.MidArrayStruct* %17, i32 0, i32 1, !dbg !63
  %19 = getelementptr inbounds [5 x %struct.InnerArrayStruct], [5 x %struct.InnerArrayStruct]* %18, i64 0, i64 3, !dbg !64
  %20 = getelementptr inbounds %struct.InnerArrayStruct, %struct.InnerArrayStruct* %19, i32 0, i32 0, !dbg !65
  %21 = getelementptr inbounds [10 x i32*], [10 x i32*]* %20, i64 0, i64 3, !dbg !64
  %22 = load i32*, i32** %21, align 8, !dbg !64
  store i32* %22, i32** %7, align 8, !dbg !66
  %23 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %4, i32 0, i32 2, !dbg !67
  %24 = load i32*, i32** %23, align 8, !dbg !67
  store i32* %24, i32** %7, align 8, !dbg !68
  ret i32 0, !dbg !69
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
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-assignment-nested.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 27, type: !10, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-assignment-nested.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 29, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArrayStruct", file: !9, line: 20, size: 10176, elements: !17)
!17 = !{!18, !20, !41}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "out2", scope: !16, file: !9, line: 22, baseType: !19, size: 8)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "out3", scope: !16, file: !9, line: 23, baseType: !21, size: 10048, offset: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MidArrayStruct", file: !9, line: 14, size: 10048, elements: !22)
!22 = !{!23, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mid1", scope: !21, file: !9, line: 16, baseType: !24, size: 80)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 80, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 10)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "mid2", scope: !21, file: !9, line: 17, baseType: !28, size: 9920, offset: 128)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 9920, elements: !39)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InnerArrayStruct", file: !9, line: 7, size: 1984, elements: !30)
!30 = !{!31, !34, !38}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "in1", scope: !29, file: !9, line: 9, baseType: !32, size: 640)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !25)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "in2", scope: !29, file: !9, line: 10, baseType: !35, size: 1280, offset: 640)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1280, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 20)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "in3", scope: !29, file: !9, line: 11, baseType: !19, size: 8, offset: 1920)
!39 = !{!40}
!40 = !DISubrange(count: 5)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "out4", scope: !16, file: !9, line: 24, baseType: !33, size: 64, offset: 10112)
!42 = !DILocation(line: 29, column: 22, scope: !8)
!43 = !DILocalVariable(name: "s1", scope: !8, file: !9, line: 30, type: !16)
!44 = !DILocation(line: 30, column: 21, scope: !8)
!45 = !DILocalVariable(name: "s2", scope: !8, file: !9, line: 30, type: !16)
!46 = !DILocation(line: 30, column: 25, scope: !8)
!47 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 31, type: !12)
!48 = !DILocation(line: 31, column: 6, scope: !8)
!49 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 31, type: !12)
!50 = !DILocation(line: 31, column: 9, scope: !8)
!51 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 32, type: !33)
!52 = !DILocation(line: 32, column: 7, scope: !8)
!53 = !DILocation(line: 34, column: 5, scope: !8)
!54 = !DILocation(line: 34, column: 10, scope: !8)
!55 = !DILocation(line: 35, column: 4, scope: !8)
!56 = !DILocation(line: 36, column: 2, scope: !8)
!57 = !DILocation(line: 36, column: 5, scope: !8)
!58 = !DILocation(line: 36, column: 10, scope: !8)
!59 = !DILocation(line: 36, column: 18, scope: !8)
!60 = !DILocation(line: 36, column: 25, scope: !8)
!61 = !DILocation(line: 37, column: 7, scope: !8)
!62 = !DILocation(line: 39, column: 9, scope: !8)
!63 = !DILocation(line: 39, column: 14, scope: !8)
!64 = !DILocation(line: 39, column: 6, scope: !8)
!65 = !DILocation(line: 39, column: 22, scope: !8)
!66 = !DILocation(line: 39, column: 4, scope: !8)
!67 = !DILocation(line: 40, column: 9, scope: !8)
!68 = !DILocation(line: 40, column: 4, scope: !8)
!69 = !DILocation(line: 42, column: 2, scope: !8)
