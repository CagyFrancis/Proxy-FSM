; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-20.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-20.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@b = dso_local global i32* null, align 8, !dbg !0
@x = dso_local global i32** null, align 8, !dbg !10
@d = dso_local global i32 0, align 4, !dbg !15
@w = dso_local global i32* null, align 8, !dbg !13
@a = dso_local global i32* null, align 8, !dbg !19
@z = dso_local global i32** null, align 8, !dbg !17
@c = dso_local global i32 0, align 4, !dbg !23
@y = dso_local global i32* null, align 8, !dbg !21
@obj = dso_local global i32* null, align 8, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Zulu(i32** noundef %0, i32* noundef %1) #0 !dbg !31 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  call void @llvm.dbg.declare(metadata i32*** %3, metadata !35, metadata !DIExpression()), !dbg !36
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !37, metadata !DIExpression()), !dbg !38
  %5 = load i32*, i32** %4, align 8, !dbg !39
  %6 = load i32**, i32*** %3, align 8, !dbg !40
  store i32* %5, i32** %6, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Xray() #0 !dbg !43 {
  store i32** @b, i32*** @x, align 8, !dbg !46
  store i32* @d, i32** @w, align 8, !dbg !47
  %1 = load i32**, i32*** @x, align 8, !dbg !48
  %2 = load i32*, i32** @w, align 8, !dbg !49
  call void @Zulu(i32** noundef %1, i32* noundef %2), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Yank() #0 !dbg !52 {
  store i32** @a, i32*** @z, align 8, !dbg !53
  store i32* @c, i32** @y, align 8, !dbg !54
  %1 = load i32**, i32*** @z, align 8, !dbg !55
  %2 = load i32*, i32** @y, align 8, !dbg !56
  call void @Zulu(i32** noundef %1, i32* noundef %2), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !59 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @Xray(), !dbg !62
  call void @Yank(), !dbg !63
  ret i32 0, !dbg !64
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-20.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5, !10, !0, !13, !15, !17, !19, !21, !23}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-20.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !7, line: 2, type: !12, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "w", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !7, line: 2, type: !9, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !7, line: 3, type: !12, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !7, line: 3, type: !9, isLocal: false, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!31 = distinct !DISubprogram(name: "Zulu", scope: !7, file: !7, line: 5, type: !32, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !12, !8}
!34 = !{}
!35 = !DILocalVariable(name: "p", arg: 1, scope: !31, file: !7, line: 5, type: !12)
!36 = !DILocation(line: 5, column: 17, scope: !31)
!37 = !DILocalVariable(name: "q", arg: 2, scope: !31, file: !7, line: 5, type: !8)
!38 = !DILocation(line: 5, column: 25, scope: !31)
!39 = !DILocation(line: 7, column: 7, scope: !31)
!40 = !DILocation(line: 7, column: 3, scope: !31)
!41 = !DILocation(line: 7, column: 5, scope: !31)
!42 = !DILocation(line: 8, column: 1, scope: !31)
!43 = distinct !DISubprogram(name: "Xray", scope: !7, file: !7, line: 10, type: !44, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!44 = !DISubroutineType(types: !45)
!45 = !{null}
!46 = !DILocation(line: 12, column: 4, scope: !43)
!47 = !DILocation(line: 13, column: 4, scope: !43)
!48 = !DILocation(line: 14, column: 7, scope: !43)
!49 = !DILocation(line: 14, column: 10, scope: !43)
!50 = !DILocation(line: 14, column: 2, scope: !43)
!51 = !DILocation(line: 15, column: 1, scope: !43)
!52 = distinct !DISubprogram(name: "Yank", scope: !7, file: !7, line: 17, type: !44, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!53 = !DILocation(line: 19, column: 4, scope: !52)
!54 = !DILocation(line: 20, column: 4, scope: !52)
!55 = !DILocation(line: 21, column: 7, scope: !52)
!56 = !DILocation(line: 21, column: 10, scope: !52)
!57 = !DILocation(line: 21, column: 2, scope: !52)
!58 = !DILocation(line: 22, column: 1, scope: !52)
!59 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 24, type: !60, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!60 = !DISubroutineType(types: !61)
!61 = !{!9}
!62 = !DILocation(line: 26, column: 2, scope: !59)
!63 = !DILocation(line: 27, column: 2, scope: !59)
!64 = !DILocation(line: 28, column: 2, scope: !59)
