; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-9.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-9.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.agg = type { i32*, %struct.subagg }
%struct.subagg = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.agg, align 8
  %8 = alloca %struct.agg, align 8
  %9 = alloca %struct.agg*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32** %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.agg* %7, metadata !25, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %struct.agg* %8, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata %struct.agg** %9, metadata !38, metadata !DIExpression()), !dbg !40
  store %struct.agg* %7, %struct.agg** %9, align 8, !dbg !40
  %10 = load i32, i32* %4, align 4, !dbg !41
  %11 = icmp ne i32 %10, 0, !dbg !41
  br i1 %11, label %12, label %13, !dbg !43

12:                                               ; preds = %0
  store %struct.agg* %8, %struct.agg** %9, align 8, !dbg !44
  store i32* %4, i32** %2, align 8, !dbg !46
  br label %14, !dbg !47

13:                                               ; preds = %0
  store i32* %5, i32** %2, align 8, !dbg !48
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32*, i32** %2, align 8, !dbg !50
  %16 = load %struct.agg*, %struct.agg** %9, align 8, !dbg !51
  %17 = getelementptr inbounds %struct.agg, %struct.agg* %16, i32 0, i32 1, !dbg !52
  %18 = getelementptr inbounds %struct.subagg, %struct.subagg* %17, i32 0, i32 0, !dbg !53
  store i32* %15, i32** %18, align 8, !dbg !54
  %19 = getelementptr inbounds %struct.agg, %struct.agg* %7, i32 0, i32 1, !dbg !55
  %20 = getelementptr inbounds %struct.subagg, %struct.subagg* %19, i32 0, i32 0, !dbg !56
  %21 = load i32*, i32** %20, align 8, !dbg !56
  store i32* %21, i32** %6, align 8, !dbg !57
  %22 = getelementptr inbounds %struct.agg, %struct.agg* %8, i32 0, i32 1, !dbg !58
  %23 = getelementptr inbounds %struct.subagg, %struct.subagg* %22, i32 0, i32 0, !dbg !59
  %24 = load i32*, i32** %23, align 8, !dbg !59
  store i32* %24, i32** %6, align 8, !dbg !60
  ret i32 0, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-9.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !10, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-9.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 14, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!16 = !DILocation(line: 14, column: 10, scope: !8)
!17 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 14, type: !15)
!18 = !DILocation(line: 14, column: 14, scope: !8)
!19 = !DILocalVariable(name: "k1", scope: !8, file: !9, line: 14, type: !12)
!20 = !DILocation(line: 14, column: 17, scope: !8)
!21 = !DILocalVariable(name: "k2", scope: !8, file: !9, line: 14, type: !12)
!22 = !DILocation(line: 14, column: 21, scope: !8)
!23 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 14, type: !15)
!24 = !DILocation(line: 14, column: 26, scope: !8)
!25 = !DILocalVariable(name: "g1", scope: !8, file: !9, line: 15, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "agg", file: !9, line: 10, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agg", file: !9, line: 6, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !27, file: !9, line: 8, baseType: !15, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !27, file: !9, line: 9, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "subagg", file: !9, line: 4, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subagg", file: !9, line: 1, size: 64, elements: !33)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !32, file: !9, line: 3, baseType: !15, size: 64)
!35 = !DILocation(line: 15, column: 9, scope: !8)
!36 = !DILocalVariable(name: "g2", scope: !8, file: !9, line: 15, type: !26)
!37 = !DILocation(line: 15, column: 13, scope: !8)
!38 = !DILocalVariable(name: "g", scope: !8, file: !9, line: 16, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!40 = !DILocation(line: 16, column: 10, scope: !8)
!41 = !DILocation(line: 18, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !9, line: 18, column: 9)
!43 = !DILocation(line: 18, column: 9, scope: !8)
!44 = !DILocation(line: 20, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !9, line: 19, column: 5)
!46 = !DILocation(line: 21, column: 11, scope: !45)
!47 = !DILocation(line: 22, column: 5, scope: !45)
!48 = !DILocation(line: 25, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !9, line: 24, column: 5)
!50 = !DILocation(line: 28, column: 16, scope: !8)
!51 = !DILocation(line: 28, column: 5, scope: !8)
!52 = !DILocation(line: 28, column: 8, scope: !8)
!53 = !DILocation(line: 28, column: 12, scope: !8)
!54 = !DILocation(line: 28, column: 14, scope: !8)
!55 = !DILocation(line: 29, column: 12, scope: !8)
!56 = !DILocation(line: 29, column: 16, scope: !8)
!57 = !DILocation(line: 29, column: 7, scope: !8)
!58 = !DILocation(line: 30, column: 12, scope: !8)
!59 = !DILocation(line: 30, column: 16, scope: !8)
!60 = !DILocation(line: 30, column: 7, scope: !8)
!61 = !DILocation(line: 32, column: 5, scope: !8)
