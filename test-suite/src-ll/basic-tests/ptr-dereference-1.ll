; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\ptr-dereference-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\ptr-dereference-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %4, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32** %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i32* %2, i32** %4, align 8, !dbg !23
  store i32* %2, i32** %5, align 8, !dbg !24
  store i32* %3, i32** %4, align 8, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/ptr-dereference-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/ptr-dereference-1.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 9, type: !12)
!15 = !DILocation(line: 9, column: 6, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 9, type: !12)
!17 = !DILocation(line: 9, column: 9, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 9, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!20 = !DILocation(line: 9, column: 13, scope: !8)
!21 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 9, type: !19)
!22 = !DILocation(line: 9, column: 17, scope: !8)
!23 = !DILocation(line: 11, column: 4, scope: !8)
!24 = !DILocation(line: 12, column: 4, scope: !8)
!25 = !DILocation(line: 13, column: 4, scope: !8)
!26 = !DILocation(line: 19, column: 2, scope: !8)
