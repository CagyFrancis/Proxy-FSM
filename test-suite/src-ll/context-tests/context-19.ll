; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-19.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-19.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@g = dso_local global i32 0, align 4, !dbg !0
@obj = dso_local global i32* @g, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Zulu(i32** noundef %0, i32* noundef %1) #0 !dbg !16 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !21, metadata !DIExpression()), !dbg !22
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !23, metadata !DIExpression()), !dbg !24
  %5 = load i32*, i32** %4, align 8, !dbg !25
  %6 = load i32**, i32*** %3, align 8, !dbg !26
  store i32* %5, i32** %6, align 8, !dbg !27
  %7 = load i32*, i32** @obj, align 8, !dbg !28
  %8 = load i32**, i32*** %3, align 8, !dbg !29
  store i32* %7, i32** %8, align 8, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Xray() #0 !dbg !32 {
  %1 = alloca i32**, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32*** %1, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32** %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32** %3, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !42
  store i32** %2, i32*** %1, align 8, !dbg !43
  store i32* %4, i32** %3, align 8, !dbg !44
  %5 = load i32**, i32*** %1, align 8, !dbg !45
  %6 = load i32*, i32** %3, align 8, !dbg !46
  call void @Zulu(i32** noundef %5, i32* noundef %6), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !49 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @Xray(), !dbg !52
  ret i32 0, !dbg !53
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !7, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-19.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-19.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "Zulu", scope: !7, file: !7, line: 4, type: !17, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !8}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !{}
!21 = !DILocalVariable(name: "p", arg: 1, scope: !16, file: !7, line: 4, type: !19)
!22 = !DILocation(line: 4, column: 17, scope: !16)
!23 = !DILocalVariable(name: "q", arg: 2, scope: !16, file: !7, line: 4, type: !8)
!24 = !DILocation(line: 4, column: 25, scope: !16)
!25 = !DILocation(line: 6, column: 7, scope: !16)
!26 = !DILocation(line: 6, column: 3, scope: !16)
!27 = !DILocation(line: 6, column: 5, scope: !16)
!28 = !DILocation(line: 7, column: 7, scope: !16)
!29 = !DILocation(line: 7, column: 3, scope: !16)
!30 = !DILocation(line: 7, column: 5, scope: !16)
!31 = !DILocation(line: 8, column: 1, scope: !16)
!32 = distinct !DISubprogram(name: "Xray", scope: !7, file: !7, line: 10, type: !33, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!33 = !DISubroutineType(types: !34)
!34 = !{null}
!35 = !DILocalVariable(name: "x", scope: !32, file: !7, line: 12, type: !19)
!36 = !DILocation(line: 12, column: 8, scope: !32)
!37 = !DILocalVariable(name: "b", scope: !32, file: !7, line: 12, type: !8)
!38 = !DILocation(line: 12, column: 12, scope: !32)
!39 = !DILocalVariable(name: "w", scope: !32, file: !7, line: 12, type: !8)
!40 = !DILocation(line: 12, column: 16, scope: !32)
!41 = !DILocalVariable(name: "d", scope: !32, file: !7, line: 12, type: !9)
!42 = !DILocation(line: 12, column: 19, scope: !32)
!43 = !DILocation(line: 13, column: 4, scope: !32)
!44 = !DILocation(line: 14, column: 4, scope: !32)
!45 = !DILocation(line: 15, column: 7, scope: !32)
!46 = !DILocation(line: 15, column: 10, scope: !32)
!47 = !DILocation(line: 15, column: 2, scope: !32)
!48 = !DILocation(line: 16, column: 1, scope: !32)
!49 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 18, type: !50, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !20)
!50 = !DISubroutineType(types: !51)
!51 = !{!9}
!52 = !DILocation(line: 20, column: 2, scope: !49)
!53 = !DILocation(line: 21, column: 2, scope: !49)
