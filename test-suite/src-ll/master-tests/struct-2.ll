; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\struct-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\struct-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.B = type { i32*, [2 x i32*] }
%struct.A = type { i32*, [2 x i32*], %struct.B*, [2 x %struct.B*] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.B, align 8
  %7 = alloca %struct.A, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 10, i32* %2, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 20, i32* %3, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 30, i32* %4, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32** %5, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata %struct.B* %6, metadata !23, metadata !DIExpression()), !dbg !32
  %8 = getelementptr inbounds %struct.B, %struct.B* %6, i32 0, i32 0, !dbg !33
  store i32* %2, i32** %8, align 8, !dbg !33
  %9 = getelementptr inbounds %struct.B, %struct.B* %6, i32 0, i32 1, !dbg !33
  %10 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0, !dbg !34
  store i32* %3, i32** %10, align 8, !dbg !34
  %11 = getelementptr inbounds i32*, i32** %10, i64 1, !dbg !34
  store i32* %4, i32** %11, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct.A* %7, metadata !35, metadata !DIExpression()), !dbg !45
  %12 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 0, !dbg !46
  store i32* %2, i32** %12, align 8, !dbg !46
  %13 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 1, !dbg !46
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0, !dbg !47
  store i32* %3, i32** %14, align 8, !dbg !47
  %15 = getelementptr inbounds i32*, i32** %14, i64 1, !dbg !47
  store i32* %4, i32** %15, align 8, !dbg !47
  %16 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 2, !dbg !46
  store %struct.B* %6, %struct.B** %16, align 8, !dbg !46
  %17 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 3, !dbg !46
  %18 = getelementptr inbounds [2 x %struct.B*], [2 x %struct.B*]* %17, i64 0, i64 0, !dbg !48
  store %struct.B* %6, %struct.B** %18, align 8, !dbg !48
  %19 = getelementptr inbounds %struct.B*, %struct.B** %18, i64 1, !dbg !48
  store %struct.B* %6, %struct.B** %19, align 8, !dbg !48
  %20 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 2, !dbg !49
  %21 = load %struct.B*, %struct.B** %20, align 8, !dbg !49
  %22 = getelementptr inbounds %struct.B, %struct.B* %21, i32 0, i32 1, !dbg !50
  %23 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i64 0, i64 1, !dbg !51
  %24 = load i32*, i32** %23, align 8, !dbg !51
  store i32* %24, i32** %5, align 8, !dbg !52
  %25 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 3, !dbg !53
  %26 = getelementptr inbounds [2 x %struct.B*], [2 x %struct.B*]* %25, i64 0, i64 1, !dbg !54
  %27 = load %struct.B*, %struct.B** %26, align 8, !dbg !54
  %28 = getelementptr inbounds %struct.B, %struct.B* %27, i32 0, i32 1, !dbg !55
  %29 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 1, !dbg !54
  %30 = load i32*, i32** %29, align 8, !dbg !54
  store i32* %30, i32** %5, align 8, !dbg !56
  ret i32 0, !dbg !57
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/struct-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 15, type: !10, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/struct-2.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 17, type: !12)
!15 = !DILocation(line: 17, column: 9, scope: !8)
!16 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 17, type: !12)
!17 = !DILocation(line: 17, column: 17, scope: !8)
!18 = !DILocalVariable(name: "w", scope: !8, file: !9, line: 17, type: !12)
!19 = !DILocation(line: 17, column: 25, scope: !8)
!20 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 18, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !DILocation(line: 18, column: 10, scope: !8)
!23 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 19, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "B", file: !9, line: 5, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "B", file: !9, line: 1, size: 192, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !25, file: !9, line: 3, baseType: !21, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !25, file: !9, line: 4, baseType: !29, size: 128, offset: 64)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = !DILocation(line: 19, column: 7, scope: !8)
!33 = !DILocation(line: 19, column: 11, scope: !8)
!34 = !DILocation(line: 19, column: 16, scope: !8)
!35 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 20, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "A", file: !9, line: 13, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "A", file: !9, line: 7, size: 384, elements: !38)
!38 = !{!39, !40, !41, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !37, file: !9, line: 9, baseType: !21, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !37, file: !9, line: 10, baseType: !29, size: 128, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !37, file: !9, line: 11, baseType: !42, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !37, file: !9, line: 12, baseType: !44, size: 128, offset: 256)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !30)
!45 = !DILocation(line: 20, column: 7, scope: !8)
!46 = !DILocation(line: 20, column: 11, scope: !8)
!47 = !DILocation(line: 20, column: 16, scope: !8)
!48 = !DILocation(line: 20, column: 30, scope: !8)
!49 = !DILocation(line: 22, column: 11, scope: !8)
!50 = !DILocation(line: 22, column: 15, scope: !8)
!51 = !DILocation(line: 22, column: 9, scope: !8)
!52 = !DILocation(line: 22, column: 7, scope: !8)
!53 = !DILocation(line: 23, column: 11, scope: !8)
!54 = !DILocation(line: 23, column: 9, scope: !8)
!55 = !DILocation(line: 23, column: 18, scope: !8)
!56 = !DILocation(line: 23, column: 7, scope: !8)
!57 = !DILocation(line: 25, column: 5, scope: !8)
