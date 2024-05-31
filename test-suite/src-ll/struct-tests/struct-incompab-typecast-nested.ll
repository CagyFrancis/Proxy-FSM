; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-incompab-typecast-nested.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-incompab-typecast-nested.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.DstStruct = type { [10 x i32*], [20 x i8], [5 x %struct.InnerStruct] }
%struct.InnerStruct = type { i8, i32* }
%struct.SrcStruct = type { [10 x i32*], [10 x i8], [5 x %struct.InnerStruct], i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DstStruct*, align 8
  %3 = alloca %struct.SrcStruct*, align 8
  %4 = alloca %struct.SrcStruct, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.DstStruct** %2, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata %struct.SrcStruct** %3, metadata !38, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata %struct.SrcStruct* %4, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %5, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %6, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %7, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32** %8, metadata !56, metadata !DIExpression()), !dbg !57
  store %struct.SrcStruct* %4, %struct.SrcStruct** %3, align 8, !dbg !58
  %9 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !59
  %10 = getelementptr inbounds %struct.SrcStruct, %struct.SrcStruct* %9, i32 0, i32 0, !dbg !60
  %11 = getelementptr inbounds [10 x i32*], [10 x i32*]* %10, i64 0, i64 3, !dbg !59
  store i32* %5, i32** %11, align 8, !dbg !61
  %12 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !62
  %13 = getelementptr inbounds %struct.SrcStruct, %struct.SrcStruct* %12, i32 0, i32 2, !dbg !63
  %14 = getelementptr inbounds [5 x %struct.InnerStruct], [5 x %struct.InnerStruct]* %13, i64 0, i64 2, !dbg !62
  %15 = getelementptr inbounds %struct.InnerStruct, %struct.InnerStruct* %14, i32 0, i32 1, !dbg !64
  store i32* %6, i32** %15, align 8, !dbg !65
  %16 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !66
  %17 = bitcast %struct.SrcStruct* %16 to %struct.DstStruct*, !dbg !67
  store %struct.DstStruct* %17, %struct.DstStruct** %2, align 8, !dbg !68
  %18 = load %struct.DstStruct*, %struct.DstStruct** %2, align 8, !dbg !69
  %19 = getelementptr inbounds %struct.DstStruct, %struct.DstStruct* %18, i32 0, i32 0, !dbg !70
  %20 = getelementptr inbounds [10 x i32*], [10 x i32*]* %19, i64 0, i64 9, !dbg !69
  %21 = load i32*, i32** %20, align 8, !dbg !69
  store i32* %21, i32** %8, align 8, !dbg !71
  %22 = load %struct.DstStruct*, %struct.DstStruct** %2, align 8, !dbg !72
  %23 = getelementptr inbounds %struct.DstStruct, %struct.DstStruct* %22, i32 0, i32 2, !dbg !73
  %24 = getelementptr inbounds [5 x %struct.InnerStruct], [5 x %struct.InnerStruct]* %23, i64 0, i64 3, !dbg !72
  %25 = getelementptr inbounds %struct.InnerStruct, %struct.InnerStruct* %24, i32 0, i32 1, !dbg !74
  %26 = load i32*, i32** %25, align 8, !dbg !74
  store i32* %26, i32** %8, align 8, !dbg !75
  %27 = load %struct.SrcStruct*, %struct.SrcStruct** %3, align 8, !dbg !76
  %28 = getelementptr inbounds %struct.SrcStruct, %struct.SrcStruct* %27, i32 0, i32 0, !dbg !77
  %29 = getelementptr inbounds [10 x i32*], [10 x i32*]* %28, i64 0, i64 2, !dbg !76
  %30 = load i32*, i32** %29, align 8, !dbg !76
  store i32* %30, i32** %8, align 8, !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-incompab-typecast-nested.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DstStruct", file: !5, line: 21, size: 1472, elements: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-incompab-typecast-nested.c", directory: "")
!6 = !{!7, !13, !18}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !4, file: !5, line: 23, baseType: !8, size: 640)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 10)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !4, file: !5, line: 24, baseType: !14, size: 160, offset: 640)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !16)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17}
!17 = !DISubrange(count: 20)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !4, file: !5, line: 25, baseType: !19, size: 640, offset: 832)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !24)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InnerStruct", file: !5, line: 7, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "in1", scope: !20, file: !5, line: 9, baseType: !15, size: 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "in2", scope: !20, file: !5, line: 10, baseType: !9, size: 64, offset: 64)
!24 = !{!25}
!25 = !DISubrange(count: 5)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!32 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 28, type: !33, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!10}
!35 = !{}
!36 = !DILocalVariable(name: "pdst", scope: !32, file: !5, line: 30, type: !3)
!37 = !DILocation(line: 30, column: 20, scope: !32)
!38 = !DILocalVariable(name: "psrc", scope: !32, file: !5, line: 31, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SrcStruct", file: !5, line: 13, size: 1472, elements: !41)
!41 = !{!42, !43, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !40, file: !5, line: 15, baseType: !8, size: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !40, file: !5, line: 16, baseType: !44, size: 80, offset: 640)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !11)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !40, file: !5, line: 17, baseType: !19, size: 640, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !40, file: !5, line: 18, baseType: !15, size: 8, offset: 1408)
!47 = !DILocation(line: 31, column: 20, scope: !32)
!48 = !DILocalVariable(name: "s", scope: !32, file: !5, line: 32, type: !40)
!49 = !DILocation(line: 32, column: 19, scope: !32)
!50 = !DILocalVariable(name: "x", scope: !32, file: !5, line: 33, type: !10)
!51 = !DILocation(line: 33, column: 6, scope: !32)
!52 = !DILocalVariable(name: "y", scope: !32, file: !5, line: 33, type: !10)
!53 = !DILocation(line: 33, column: 9, scope: !32)
!54 = !DILocalVariable(name: "z", scope: !32, file: !5, line: 33, type: !10)
!55 = !DILocation(line: 33, column: 12, scope: !32)
!56 = !DILocalVariable(name: "p", scope: !32, file: !5, line: 34, type: !9)
!57 = !DILocation(line: 34, column: 7, scope: !32)
!58 = !DILocation(line: 36, column: 7, scope: !32)
!59 = !DILocation(line: 37, column: 2, scope: !32)
!60 = !DILocation(line: 37, column: 8, scope: !32)
!61 = !DILocation(line: 37, column: 14, scope: !32)
!62 = !DILocation(line: 38, column: 2, scope: !32)
!63 = !DILocation(line: 38, column: 8, scope: !32)
!64 = !DILocation(line: 38, column: 14, scope: !32)
!65 = !DILocation(line: 38, column: 18, scope: !32)
!66 = !DILocation(line: 40, column: 29, scope: !32)
!67 = !DILocation(line: 40, column: 9, scope: !32)
!68 = !DILocation(line: 40, column: 7, scope: !32)
!69 = !DILocation(line: 42, column: 6, scope: !32)
!70 = !DILocation(line: 42, column: 12, scope: !32)
!71 = !DILocation(line: 42, column: 4, scope: !32)
!72 = !DILocation(line: 43, column: 6, scope: !32)
!73 = !DILocation(line: 43, column: 12, scope: !32)
!74 = !DILocation(line: 43, column: 18, scope: !32)
!75 = !DILocation(line: 43, column: 4, scope: !32)
!76 = !DILocation(line: 44, column: 6, scope: !32)
!77 = !DILocation(line: 44, column: 12, scope: !32)
!78 = !DILocation(line: 44, column: 4, scope: !32)
!79 = !DILocation(line: 46, column: 2, scope: !32)
