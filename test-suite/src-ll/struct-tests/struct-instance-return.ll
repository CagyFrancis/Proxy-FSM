; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\struct-tests\struct-instance-return.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests\\struct-instance-return.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, i8 }

@x = dso_local global i32 0, align 4, !dbg !0
@y = dso_local global i32 0, align 4, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(%struct.MyStruct* noalias sret(%struct.MyStruct) align 8 %0) #0 !dbg !15 {
  %2 = alloca i8*, align 8
  %3 = bitcast %struct.MyStruct* %0 to i8*
  store i8* %3, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !25, metadata !DIExpression(DW_OP_deref)), !dbg !26
  %4 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %0, i32 0, i32 0, !dbg !27
  store i32* @x, i32** %4, align 8, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MyStruct, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.MyStruct, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.MyStruct* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32** %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @foo(%struct.MyStruct* sret(%struct.MyStruct) align 8 %4), !dbg !37
  %5 = bitcast %struct.MyStruct* %2 to i8*, !dbg !37
  %6 = bitcast %struct.MyStruct* %4 to i8*, !dbg !37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false), !dbg !37
  %7 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %2, i32 0, i32 0, !dbg !38
  %8 = load i32*, i32** %7, align 8, !dbg !38
  store i32* %8, i32** %3, align 8, !dbg !39
  ret i32 0, !dbg !40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 13, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\struct-tests/struct-instance-return.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 13, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/struct-tests/struct-instance-return.c", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!15 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 15, type: !16, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !7, line: 7, size: 128, elements: !19)
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !18, file: !7, line: 9, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !18, file: !7, line: 10, baseType: !23, size: 8, offset: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "m", scope: !15, file: !7, line: 17, type: !18)
!26 = !DILocation(line: 17, column: 18, scope: !15)
!27 = !DILocation(line: 18, column: 4, scope: !15)
!28 = !DILocation(line: 18, column: 7, scope: !15)
!29 = !DILocation(line: 19, column: 2, scope: !15)
!30 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 22, type: !31, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!31 = !DISubroutineType(types: !32)
!32 = !{!8}
!33 = !DILocalVariable(name: "m", scope: !30, file: !7, line: 24, type: !18)
!34 = !DILocation(line: 24, column: 18, scope: !30)
!35 = !DILocalVariable(name: "p", scope: !30, file: !7, line: 25, type: !21)
!36 = !DILocation(line: 25, column: 7, scope: !30)
!37 = !DILocation(line: 27, column: 6, scope: !30)
!38 = !DILocation(line: 28, column: 8, scope: !30)
!39 = !DILocation(line: 28, column: 4, scope: !30)
!40 = !DILocation(line: 30, column: 2, scope: !30)
