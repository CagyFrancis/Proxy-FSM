; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-call-noparam.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-call-noparam.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@p = dso_local global i32* null, align 8, !dbg !0
@q = dso_local global i32* null, align 8, !dbg !5
@c = dso_local global i32 0, align 4, !dbg !10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 !dbg !18 {
  ret void, !dbg !22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar() #0 !dbg !23 {
  store i32* @c, i32** @q, align 8, !dbg !24
  ret void, !dbg !25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  store i32* %2, i32** @p, align 8, !dbg !33
  %4 = load i32*, i32** @p, align 8, !dbg !34
  store i32* %4, i32** @q, align 8, !dbg !35
  store i32* @c, i32** @p, align 8, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !7, line: 8, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-call-noparam.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0, !5, !10}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !7, line: 9, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-call-noparam.c", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !7, line: 10, type: !9, isLocal: false, isDefinition: true)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "foo", scope: !7, file: !7, line: 12, type: !19, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !{}
!22 = !DILocation(line: 14, column: 2, scope: !18)
!23 = distinct !DISubprogram(name: "bar", scope: !7, file: !7, line: 17, type: !19, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!24 = !DILocation(line: 19, column: 4, scope: !23)
!25 = !DILocation(line: 20, column: 1, scope: !23)
!26 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 22, type: !27, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!27 = !DISubroutineType(types: !28)
!28 = !{!9}
!29 = !DILocalVariable(name: "a", scope: !26, file: !7, line: 24, type: !9)
!30 = !DILocation(line: 24, column: 6, scope: !26)
!31 = !DILocalVariable(name: "b", scope: !26, file: !7, line: 24, type: !9)
!32 = !DILocation(line: 24, column: 9, scope: !26)
!33 = !DILocation(line: 26, column: 4, scope: !26)
!34 = !DILocation(line: 27, column: 6, scope: !26)
!35 = !DILocation(line: 27, column: 4, scope: !26)
!36 = !DILocation(line: 28, column: 4, scope: !26)
!37 = !DILocation(line: 30, column: 2, scope: !26)
