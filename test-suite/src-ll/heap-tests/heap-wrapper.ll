; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-wrapper.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-wrapper.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @my_alloc() #0 !dbg !11 {
  %1 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %1, metadata !15, metadata !DIExpression()), !dbg !16
  %2 = call i8* @malloc(i64 noundef 4), !dbg !17
  %3 = bitcast i8* %2 to i32*, !dbg !18
  store i32* %3, i32** %1, align 8, !dbg !16
  %4 = load i32*, i32** %1, align 8, !dbg !19
  ret i32* %4, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !21 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !24, metadata !DIExpression()), !dbg !25
  %4 = call i32* @my_alloc(), !dbg !26
  store i32* %4, i32** %2, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i32** %3, metadata !27, metadata !DIExpression()), !dbg !28
  %5 = call i32* @my_alloc(), !dbg !29
  store i32* %5, i32** %3, align 8, !dbg !28
  ret i32 0, !dbg !30
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-wrapper.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "my_alloc", scope: !12, file: !12, line: 11, type: !13, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-wrapper.c", directory: "")
!13 = !DISubroutineType(types: !2)
!14 = !{}
!15 = !DILocalVariable(name: "p", scope: !11, file: !12, line: 13, type: !3)
!16 = !DILocation(line: 13, column: 7, scope: !11)
!17 = !DILocation(line: 13, column: 18, scope: !11)
!18 = !DILocation(line: 13, column: 11, scope: !11)
!19 = !DILocation(line: 14, column: 9, scope: !11)
!20 = !DILocation(line: 14, column: 2, scope: !11)
!21 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 17, type: !22, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!22 = !DISubroutineType(types: !23)
!23 = !{!4}
!24 = !DILocalVariable(name: "o1", scope: !21, file: !12, line: 19, type: !3)
!25 = !DILocation(line: 19, column: 7, scope: !21)
!26 = !DILocation(line: 19, column: 12, scope: !21)
!27 = !DILocalVariable(name: "o2", scope: !21, file: !12, line: 20, type: !3)
!28 = !DILocation(line: 20, column: 7, scope: !21)
!29 = !DILocation(line: 20, column: 12, scope: !21)
!30 = !DILocation(line: 22, column: 2, scope: !21)
