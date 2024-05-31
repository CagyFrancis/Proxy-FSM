; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-funptr.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-funptr.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { void (...)*, i32* }

@y = dso_local global i32 0, align 4, !dbg !0
@p = dso_local global i32* null, align 8, !dbg !19
@x = dso_local global i32 0, align 4, !dbg !17
@context = dso_local global %struct.MyStruct { void (...)* bitcast (void ()* @foo to void (...)*), i32* @x }, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 !dbg !27 {
  store i32* @y, i32** @p, align 8, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !33 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = load void (...)*, void (...)** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @context, i32 0, i32 0), align 8, !dbg !36
  %4 = bitcast void (...)* %3 to void ()*, !dbg !37
  call void %4(), !dbg !37
  call void @llvm.dbg.declare(metadata i32** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %5 = load i32*, i32** @p, align 8, !dbg !40
  store i32* %5, i32** %2, align 8, !dbg !39
  ret i32 0, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 6, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-funptr.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !17, !0, !19}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !7, line: 20, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-funptr.c", directory: "")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !7, line: 14, size: 128, elements: !9)
!9 = !{!10, !14}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !8, file: !7, line: 16, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, null}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !8, file: !7, line: 17, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 6, type: !16, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 7, type: !15, isLocal: false, isDefinition: true)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!27 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 9, type: !28, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null}
!30 = !{}
!31 = !DILocation(line: 11, column: 4, scope: !27)
!32 = !DILocation(line: 12, column: 1, scope: !27)
!33 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 22, type: !34, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !30)
!34 = !DISubroutineType(types: !35)
!35 = !{!16}
!36 = !DILocation(line: 24, column: 12, scope: !33)
!37 = !DILocation(line: 24, column: 2, scope: !33)
!38 = !DILocalVariable(name: "q", scope: !33, file: !7, line: 25, type: !15)
!39 = !DILocation(line: 25, column: 7, scope: !33)
!40 = !DILocation(line: 25, column: 11, scope: !33)
!41 = !DILocation(line: 27, column: 2, scope: !33)
