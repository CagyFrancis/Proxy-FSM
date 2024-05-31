; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\context-tests\context-16.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests\\context-16.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @alloc() #0 !dbg !11 {
  %1 = call i8* @malloc(i64 noundef 4), !dbg !15
  %2 = bitcast i8* %1 to i32*, !dbg !16
  ret i32* %2, !dbg !17
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32** noundef %0) #0 !dbg !18 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  call void @llvm.dbg.declare(metadata i32*** %2, metadata !22, metadata !DIExpression()), !dbg !23
  %3 = call i32* @alloc(), !dbg !24
  %4 = load i32**, i32*** %2, align 8, !dbg !25
  store i32* %3, i32** %4, align 8, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32** %3, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32** %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @foo(i32** noundef %2), !dbg !37
  call void @foo(i32** noundef %3), !dbg !38
  call void @foo(i32** noundef %4), !dbg !39
  ret i32 0, !dbg !40
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\context-tests/context-16.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "alloc", scope: !12, file: !12, line: 3, type: !13, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/context-tests/context-16.c", directory: "")
!13 = !DISubroutineType(types: !2)
!14 = !{}
!15 = !DILocation(line: 5, column: 16, scope: !11)
!16 = !DILocation(line: 5, column: 9, scope: !11)
!17 = !DILocation(line: 5, column: 2, scope: !11)
!18 = distinct !DISubprogram(name: "foo", scope: !12, file: !12, line: 8, type: !19, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!22 = !DILocalVariable(name: "p", arg: 1, scope: !18, file: !12, line: 8, type: !21)
!23 = !DILocation(line: 8, column: 16, scope: !18)
!24 = !DILocation(line: 10, column: 7, scope: !18)
!25 = !DILocation(line: 10, column: 3, scope: !18)
!26 = !DILocation(line: 10, column: 5, scope: !18)
!27 = !DILocation(line: 11, column: 1, scope: !18)
!28 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 13, type: !29, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!29 = !DISubroutineType(types: !30)
!30 = !{!4}
!31 = !DILocalVariable(name: "a", scope: !28, file: !12, line: 15, type: !3)
!32 = !DILocation(line: 15, column: 7, scope: !28)
!33 = !DILocalVariable(name: "b", scope: !28, file: !12, line: 15, type: !3)
!34 = !DILocation(line: 15, column: 11, scope: !28)
!35 = !DILocalVariable(name: "c", scope: !28, file: !12, line: 15, type: !3)
!36 = !DILocation(line: 15, column: 15, scope: !28)
!37 = !DILocation(line: 17, column: 2, scope: !28)
!38 = !DILocation(line: 18, column: 2, scope: !28)
!39 = !DILocation(line: 19, column: 2, scope: !28)
!40 = !DILocation(line: 21, column: 2, scope: !28)
