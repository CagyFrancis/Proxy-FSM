; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-nested-array.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-nested-array.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.ArrayStruct = type { i32, i8, %struct.MidArrayStruct, i32* }
%struct.MidArrayStruct = type { i8, [5 x %struct.InnerArrayStruct], [20 x double] }
%struct.InnerArrayStruct = type { [10 x i32*], i8, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ArrayStruct*, align 8
  %3 = alloca %struct.ArrayStruct, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.ArrayStruct** %2, metadata !14, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata %struct.ArrayStruct* %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %5, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32** %6, metadata !51, metadata !DIExpression()), !dbg !52
  %7 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %3, i32 0, i32 3, !dbg !53
  store i32* %4, i32** %7, align 8, !dbg !54
  store %struct.ArrayStruct* %3, %struct.ArrayStruct** %2, align 8, !dbg !55
  %8 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %3, i32 0, i32 3, !dbg !56
  %9 = load i32*, i32** %8, align 8, !dbg !56
  %10 = load %struct.ArrayStruct*, %struct.ArrayStruct** %2, align 8, !dbg !57
  %11 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %10, i32 0, i32 2, !dbg !58
  %12 = getelementptr inbounds %struct.MidArrayStruct, %struct.MidArrayStruct* %11, i32 0, i32 1, !dbg !59
  %13 = getelementptr inbounds [5 x %struct.InnerArrayStruct], [5 x %struct.InnerArrayStruct]* %12, i64 0, i64 2, !dbg !57
  %14 = getelementptr inbounds %struct.InnerArrayStruct, %struct.InnerArrayStruct* %13, i32 0, i32 0, !dbg !60
  %15 = getelementptr inbounds [10 x i32*], [10 x i32*]* %14, i64 0, i64 2, !dbg !57
  store i32* %9, i32** %15, align 8, !dbg !61
  %16 = load %struct.ArrayStruct*, %struct.ArrayStruct** %2, align 8, !dbg !62
  %17 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %16, i32 0, i32 2, !dbg !63
  %18 = getelementptr inbounds %struct.MidArrayStruct, %struct.MidArrayStruct* %17, i32 0, i32 1, !dbg !64
  %19 = getelementptr inbounds [5 x %struct.InnerArrayStruct], [5 x %struct.InnerArrayStruct]* %18, i64 0, i64 3, !dbg !62
  %20 = getelementptr inbounds %struct.InnerArrayStruct, %struct.InnerArrayStruct* %19, i32 0, i32 0, !dbg !65
  %21 = getelementptr inbounds [10 x i32*], [10 x i32*]* %20, i64 0, i64 3, !dbg !62
  store i32* %5, i32** %21, align 8, !dbg !66
  %22 = load %struct.ArrayStruct*, %struct.ArrayStruct** %2, align 8, !dbg !67
  %23 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %22, i32 0, i32 2, !dbg !68
  %24 = getelementptr inbounds %struct.MidArrayStruct, %struct.MidArrayStruct* %23, i32 0, i32 1, !dbg !69
  %25 = getelementptr inbounds [5 x %struct.InnerArrayStruct], [5 x %struct.InnerArrayStruct]* %24, i64 0, i64 1, !dbg !67
  %26 = getelementptr inbounds %struct.InnerArrayStruct, %struct.InnerArrayStruct* %25, i32 0, i32 0, !dbg !70
  %27 = getelementptr inbounds [10 x i32*], [10 x i32*]* %26, i64 0, i64 1, !dbg !67
  %28 = load i32*, i32** %27, align 8, !dbg !67
  store i32* %28, i32** %6, align 8, !dbg !71
  %29 = getelementptr inbounds %struct.ArrayStruct, %struct.ArrayStruct* %3, i32 0, i32 2, !dbg !72
  %30 = getelementptr inbounds %struct.MidArrayStruct, %struct.MidArrayStruct* %29, i32 0, i32 1, !dbg !73
  %31 = getelementptr inbounds [5 x %struct.InnerArrayStruct], [5 x %struct.InnerArrayStruct]* %30, i64 0, i64 3, !dbg !74
  %32 = getelementptr inbounds %struct.InnerArrayStruct, %struct.InnerArrayStruct* %31, i32 0, i32 0, !dbg !75
  %33 = getelementptr inbounds [10 x i32*], [10 x i32*]* %32, i64 0, i64 0, !dbg !74
  %34 = load i32*, i32** %33, align 8, !dbg !74
  store i32* %34, i32** %6, align 8, !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-nested-array.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 29, type: !10, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-nested-array.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 31, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArrayStruct", file: !9, line: 21, size: 5312, elements: !17)
!17 = !{!18, !19, !21, !43}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "out1", scope: !16, file: !9, line: 23, baseType: !12, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "out2", scope: !16, file: !9, line: 24, baseType: !20, size: 8, offset: 32)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "out3", scope: !16, file: !9, line: 25, baseType: !22, size: 5184, offset: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MidArrayStruct", file: !9, line: 14, size: 5184, elements: !23)
!23 = !{!24, !25, !39}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mid1", scope: !22, file: !9, line: 16, baseType: !20, size: 8)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "mid2", scope: !22, file: !9, line: 17, baseType: !26, size: 3840, offset: 64)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 3840, elements: !37)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InnerArrayStruct", file: !9, line: 7, size: 768, elements: !28)
!28 = !{!29, !34, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "in1", scope: !27, file: !9, line: 9, baseType: !30, size: 640)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!32 = !{!33}
!33 = !DISubrange(count: 10)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "in2", scope: !27, file: !9, line: 10, baseType: !20, size: 8, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "in3", scope: !27, file: !9, line: 11, baseType: !36, size: 64, offset: 704)
!36 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!37 = !{!38}
!38 = !DISubrange(count: 5)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mid3", scope: !22, file: !9, line: 18, baseType: !40, size: 1280, offset: 3904)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1280, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 20)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "out4", scope: !16, file: !9, line: 26, baseType: !31, size: 64, offset: 5248)
!44 = !DILocation(line: 31, column: 22, scope: !8)
!45 = !DILocalVariable(name: "s", scope: !8, file: !9, line: 32, type: !16)
!46 = !DILocation(line: 32, column: 21, scope: !8)
!47 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 33, type: !12)
!48 = !DILocation(line: 33, column: 6, scope: !8)
!49 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 33, type: !12)
!50 = !DILocation(line: 33, column: 9, scope: !8)
!51 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 34, type: !31)
!52 = !DILocation(line: 34, column: 7, scope: !8)
!53 = !DILocation(line: 36, column: 4, scope: !8)
!54 = !DILocation(line: 36, column: 9, scope: !8)
!55 = !DILocation(line: 37, column: 4, scope: !8)
!56 = !DILocation(line: 38, column: 29, scope: !8)
!57 = !DILocation(line: 38, column: 2, scope: !8)
!58 = !DILocation(line: 38, column: 5, scope: !8)
!59 = !DILocation(line: 38, column: 10, scope: !8)
!60 = !DILocation(line: 38, column: 18, scope: !8)
!61 = !DILocation(line: 38, column: 25, scope: !8)
!62 = !DILocation(line: 39, column: 2, scope: !8)
!63 = !DILocation(line: 39, column: 5, scope: !8)
!64 = !DILocation(line: 39, column: 10, scope: !8)
!65 = !DILocation(line: 39, column: 18, scope: !8)
!66 = !DILocation(line: 39, column: 25, scope: !8)
!67 = !DILocation(line: 41, column: 6, scope: !8)
!68 = !DILocation(line: 41, column: 9, scope: !8)
!69 = !DILocation(line: 41, column: 14, scope: !8)
!70 = !DILocation(line: 41, column: 22, scope: !8)
!71 = !DILocation(line: 41, column: 4, scope: !8)
!72 = !DILocation(line: 42, column: 8, scope: !8)
!73 = !DILocation(line: 42, column: 13, scope: !8)
!74 = !DILocation(line: 42, column: 6, scope: !8)
!75 = !DILocation(line: 42, column: 21, scope: !8)
!76 = !DILocation(line: 42, column: 4, scope: !8)
!77 = !DILocation(line: 44, column: 2, scope: !8)
