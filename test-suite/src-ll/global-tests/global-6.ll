; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-6.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-6.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@g = dso_local global i32 0, align 4, !dbg !0
@obj = dso_local global i32* @g, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Xray() #0 !dbg !16 {
  %1 = alloca i32**, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32*** %1, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i32** %2, i32*** %1, align 8, !dbg !29
  store i32* %4, i32** %3, align 8, !dbg !30
  %5 = load i32**, i32*** %1, align 8, !dbg !31
  %6 = load i32*, i32** %3, align 8, !dbg !32
  call void @Zulu(i32** noundef %5, i32* noundef %6), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Zulu(i32** noundef %0, i32* noundef %1) #0 !dbg !35 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !40, metadata !DIExpression()), !dbg !41
  %5 = load i32*, i32** %4, align 8, !dbg !42
  %6 = load i32**, i32*** %3, align 8, !dbg !43
  store i32* %5, i32** %6, align 8, !dbg !44
  %7 = load i32*, i32** @obj, align 8, !dbg !45
  %8 = load i32**, i32*** %3, align 8, !dbg !46
  store i32* %7, i32** %8, align 8, !dbg !47
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
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-6.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-6.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!16 = distinct !DISubprogram(name: "Xray", scope: !7, file: !7, line: 6, type: !17, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !{}
!20 = !DILocalVariable(name: "x", scope: !16, file: !7, line: 9, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !DILocation(line: 9, column: 8, scope: !16)
!23 = !DILocalVariable(name: "b", scope: !16, file: !7, line: 9, type: !8)
!24 = !DILocation(line: 9, column: 12, scope: !16)
!25 = !DILocalVariable(name: "w", scope: !16, file: !7, line: 9, type: !8)
!26 = !DILocation(line: 9, column: 16, scope: !16)
!27 = !DILocalVariable(name: "d", scope: !16, file: !7, line: 9, type: !9)
!28 = !DILocation(line: 9, column: 19, scope: !16)
!29 = !DILocation(line: 10, column: 4, scope: !16)
!30 = !DILocation(line: 11, column: 4, scope: !16)
!31 = !DILocation(line: 12, column: 7, scope: !16)
!32 = !DILocation(line: 12, column: 10, scope: !16)
!33 = !DILocation(line: 12, column: 2, scope: !16)
!34 = !DILocation(line: 13, column: 1, scope: !16)
!35 = distinct !DISubprogram(name: "Zulu", scope: !7, file: !7, line: 15, type: !36, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !21, !8}
!38 = !DILocalVariable(name: "p", arg: 1, scope: !35, file: !7, line: 15, type: !21)
!39 = !DILocation(line: 15, column: 17, scope: !35)
!40 = !DILocalVariable(name: "q", arg: 2, scope: !35, file: !7, line: 15, type: !8)
!41 = !DILocation(line: 15, column: 25, scope: !35)
!42 = !DILocation(line: 17, column: 7, scope: !35)
!43 = !DILocation(line: 17, column: 3, scope: !35)
!44 = !DILocation(line: 17, column: 5, scope: !35)
!45 = !DILocation(line: 18, column: 7, scope: !35)
!46 = !DILocation(line: 18, column: 3, scope: !35)
!47 = !DILocation(line: 18, column: 5, scope: !35)
!48 = !DILocation(line: 19, column: 1, scope: !35)
!49 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 21, type: !50, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!50 = !DISubroutineType(types: !51)
!51 = !{!9}
!52 = !DILocation(line: 23, column: 2, scope: !49)
!53 = !DILocation(line: 24, column: 2, scope: !49)
