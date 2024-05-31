; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-13.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-13.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.agg = type { i32** }

@agg = dso_local global %struct.agg zeroinitializer, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.agg, align 8
  %8 = alloca %struct.agg*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32** %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32** %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.agg* %7, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata %struct.agg** %8, metadata !34, metadata !DIExpression()), !dbg !36
  store %struct.agg* %7, %struct.agg** %8, align 8, !dbg !37
  %9 = load %struct.agg*, %struct.agg** %8, align 8, !dbg !38
  %10 = icmp ne %struct.agg* %9, null, !dbg !38
  br i1 %10, label %11, label %18, !dbg !40

11:                                               ; preds = %0
  %12 = load i32, i32* %5, align 4, !dbg !41
  %13 = icmp ne i32 %12, 0, !dbg !41
  br i1 %13, label %14, label %17, !dbg !44

14:                                               ; preds = %11
  %15 = load %struct.agg*, %struct.agg** %8, align 8, !dbg !45
  %16 = getelementptr inbounds %struct.agg, %struct.agg* %15, i32 0, i32 0, !dbg !47
  store i32** %3, i32*** %16, align 8, !dbg !48
  store i32* %5, i32** %2, align 8, !dbg !49
  br label %17, !dbg !50

17:                                               ; preds = %14, %11
  br label %21, !dbg !51

18:                                               ; preds = %0
  %19 = load %struct.agg*, %struct.agg** %8, align 8, !dbg !52
  %20 = getelementptr inbounds %struct.agg, %struct.agg* %19, i32 0, i32 0, !dbg !54
  store i32** %4, i32*** %20, align 8, !dbg !55
  store i32* %6, i32** %2, align 8, !dbg !56
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i32*, i32** %2, align 8, !dbg !57
  %23 = load %struct.agg*, %struct.agg** %8, align 8, !dbg !58
  %24 = getelementptr inbounds %struct.agg, %struct.agg* %23, i32 0, i32 0, !dbg !59
  %25 = load i32**, i32*** %24, align 8, !dbg !59
  store i32* %22, i32** %25, align 8, !dbg !60
  ret i32 0, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "agg", scope: !2, file: !5, line: 4, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-13.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-13.c", directory: "")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agg", file: !5, line: 1, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !6, file: !5, line: 3, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 6, type: !19, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!11}
!21 = !{}
!22 = !DILocalVariable(name: "b", scope: !18, file: !5, line: 8, type: !10)
!23 = !DILocation(line: 8, column: 7, scope: !18)
!24 = !DILocalVariable(name: "c", scope: !18, file: !5, line: 8, type: !10)
!25 = !DILocation(line: 8, column: 11, scope: !18)
!26 = !DILocalVariable(name: "d", scope: !18, file: !5, line: 8, type: !10)
!27 = !DILocation(line: 8, column: 15, scope: !18)
!28 = !DILocalVariable(name: "f", scope: !18, file: !5, line: 8, type: !11)
!29 = !DILocation(line: 8, column: 18, scope: !18)
!30 = !DILocalVariable(name: "w", scope: !18, file: !5, line: 8, type: !11)
!31 = !DILocation(line: 8, column: 21, scope: !18)
!32 = !DILocalVariable(name: "ag1", scope: !18, file: !5, line: 9, type: !6)
!33 = !DILocation(line: 9, column: 13, scope: !18)
!34 = !DILocalVariable(name: "a", scope: !18, file: !5, line: 9, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!36 = !DILocation(line: 9, column: 19, scope: !18)
!37 = !DILocation(line: 10, column: 4, scope: !18)
!38 = !DILocation(line: 12, column: 6, scope: !39)
!39 = distinct !DILexicalBlock(scope: !18, file: !5, line: 12, column: 6)
!40 = !DILocation(line: 12, column: 6, scope: !18)
!41 = !DILocation(line: 14, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !5, line: 14, column: 7)
!43 = distinct !DILexicalBlock(scope: !39, file: !5, line: 13, column: 2)
!44 = !DILocation(line: 14, column: 7, scope: !43)
!45 = !DILocation(line: 16, column: 4, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !5, line: 15, column: 3)
!47 = !DILocation(line: 16, column: 7, scope: !46)
!48 = !DILocation(line: 16, column: 9, scope: !46)
!49 = !DILocation(line: 17, column: 6, scope: !46)
!50 = !DILocation(line: 18, column: 3, scope: !46)
!51 = !DILocation(line: 19, column: 2, scope: !43)
!52 = !DILocation(line: 22, column: 3, scope: !53)
!53 = distinct !DILexicalBlock(scope: !39, file: !5, line: 21, column: 2)
!54 = !DILocation(line: 22, column: 6, scope: !53)
!55 = !DILocation(line: 22, column: 8, scope: !53)
!56 = !DILocation(line: 23, column: 5, scope: !53)
!57 = !DILocation(line: 25, column: 12, scope: !18)
!58 = !DILocation(line: 25, column: 4, scope: !18)
!59 = !DILocation(line: 25, column: 7, scope: !18)
!60 = !DILocation(line: 25, column: 10, scope: !18)
!61 = !DILocation(line: 27, column: 2, scope: !18)
