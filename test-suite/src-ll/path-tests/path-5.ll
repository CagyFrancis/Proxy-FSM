; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\path-tests\path-5.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests\\path-5.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.agg = type { i32*, i32 }

@agg = dso_local global %struct.agg zeroinitializer, align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agg*, align 8
  %7 = alloca %struct.agg*, align 8
  %8 = alloca %struct.agg, align 8
  %9 = alloca %struct.agg, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32** %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct.agg** %6, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct.agg** %7, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct.agg* %8, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.agg* %9, metadata !37, metadata !DIExpression()), !dbg !38
  store %struct.agg* null, %struct.agg** %7, align 8, !dbg !39
  store %struct.agg* null, %struct.agg** %6, align 8, !dbg !40
  %10 = load i32, i32* %4, align 4, !dbg !41
  %11 = icmp ne i32 %10, 0, !dbg !41
  br i1 %11, label %12, label %13, !dbg !43

12:                                               ; preds = %0
  store %struct.agg* %8, %struct.agg** %6, align 8, !dbg !44
  store i32* %4, i32** %2, align 8, !dbg !46
  br label %14, !dbg !47

13:                                               ; preds = %0
  store %struct.agg* %9, %struct.agg** %7, align 8, !dbg !48
  store i32* %5, i32** %2, align 8, !dbg !50
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32*, i32** %2, align 8, !dbg !51
  %16 = load %struct.agg*, %struct.agg** %6, align 8, !dbg !52
  %17 = getelementptr inbounds %struct.agg, %struct.agg* %16, i32 0, i32 0, !dbg !53
  store i32* %15, i32** %17, align 8, !dbg !54
  %18 = load i32*, i32** %2, align 8, !dbg !55
  %19 = load %struct.agg*, %struct.agg** %7, align 8, !dbg !56
  %20 = getelementptr inbounds %struct.agg, %struct.agg* %19, i32 0, i32 0, !dbg !57
  store i32* %18, i32** %20, align 8, !dbg !58
  %21 = getelementptr inbounds %struct.agg, %struct.agg* %8, i32 0, i32 0, !dbg !59
  %22 = load i32*, i32** %21, align 8, !dbg !59
  store i32* %22, i32** %3, align 8, !dbg !60
  %23 = getelementptr inbounds %struct.agg, %struct.agg* %9, i32 0, i32 0, !dbg !61
  %24 = load i32*, i32** %23, align 8, !dbg !61
  store i32* %24, i32** %3, align 8, !dbg !62
  ret i32 0, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "agg", scope: !2, file: !5, line: 7, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\path-tests/path-5.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!0}
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/path-tests/path-5.c", directory: "")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agg", file: !5, line: 3, size: 128, elements: !7)
!7 = !{!8, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "pi", scope: !6, file: !5, line: 5, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !6, file: !5, line: 6, baseType: !10, size: 32, offset: 64)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 9, type: !19, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!10}
!21 = !{}
!22 = !DILocalVariable(name: "s", scope: !18, file: !5, line: 11, type: !9)
!23 = !DILocation(line: 11, column: 10, scope: !18)
!24 = !DILocalVariable(name: "p", scope: !18, file: !5, line: 11, type: !9)
!25 = !DILocation(line: 11, column: 14, scope: !18)
!26 = !DILocalVariable(name: "k1", scope: !18, file: !5, line: 11, type: !10)
!27 = !DILocation(line: 11, column: 17, scope: !18)
!28 = !DILocalVariable(name: "k2", scope: !18, file: !5, line: 11, type: !10)
!29 = !DILocation(line: 11, column: 21, scope: !18)
!30 = !DILocalVariable(name: "a", scope: !18, file: !5, line: 12, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!32 = !DILocation(line: 12, column: 17, scope: !18)
!33 = !DILocalVariable(name: "b", scope: !18, file: !5, line: 12, type: !31)
!34 = !DILocation(line: 12, column: 21, scope: !18)
!35 = !DILocalVariable(name: "obj1", scope: !18, file: !5, line: 12, type: !6)
!36 = !DILocation(line: 12, column: 24, scope: !18)
!37 = !DILocalVariable(name: "obj2", scope: !18, file: !5, line: 12, type: !6)
!38 = !DILocation(line: 12, column: 30, scope: !18)
!39 = !DILocation(line: 15, column: 11, scope: !18)
!40 = !DILocation(line: 15, column: 7, scope: !18)
!41 = !DILocation(line: 17, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !5, line: 17, column: 9)
!43 = !DILocation(line: 17, column: 9, scope: !18)
!44 = !DILocation(line: 19, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !5, line: 18, column: 5)
!46 = !DILocation(line: 20, column: 11, scope: !45)
!47 = !DILocation(line: 21, column: 5, scope: !45)
!48 = !DILocation(line: 24, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !5, line: 23, column: 5)
!50 = !DILocation(line: 25, column: 11, scope: !49)
!51 = !DILocation(line: 28, column: 13, scope: !18)
!52 = !DILocation(line: 28, column: 5, scope: !18)
!53 = !DILocation(line: 28, column: 8, scope: !18)
!54 = !DILocation(line: 28, column: 11, scope: !18)
!55 = !DILocation(line: 29, column: 13, scope: !18)
!56 = !DILocation(line: 29, column: 5, scope: !18)
!57 = !DILocation(line: 29, column: 8, scope: !18)
!58 = !DILocation(line: 29, column: 11, scope: !18)
!59 = !DILocation(line: 30, column: 14, scope: !18)
!60 = !DILocation(line: 30, column: 7, scope: !18)
!61 = !DILocation(line: 31, column: 14, scope: !18)
!62 = !DILocation(line: 31, column: 7, scope: !18)
!63 = !DILocation(line: 33, column: 5, scope: !18)
