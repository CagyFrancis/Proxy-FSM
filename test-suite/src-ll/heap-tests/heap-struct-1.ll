; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-struct-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-struct-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mystruct*, align 8
  %6 = alloca %struct.mystruct**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32** %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %struct.mystruct** %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %struct.mystruct*** %6, metadata !30, metadata !DIExpression()), !dbg !32
  store %struct.mystruct** %5, %struct.mystruct*** %6, align 8, !dbg !32
  %7 = call i8* @malloc(i64 noundef 16), !dbg !33
  %8 = bitcast i8* %7 to %struct.mystruct*, !dbg !34
  store %struct.mystruct* %8, %struct.mystruct** %5, align 8, !dbg !35
  %9 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !36
  %10 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %9, i32 0, i32 0, !dbg !37
  store i32* %2, i32** %10, align 8, !dbg !38
  %11 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !39
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %11, i32 0, i32 0, !dbg !40
  %13 = load i32*, i32** %12, align 8, !dbg !40
  store i32* %13, i32** %4, align 8, !dbg !41
  %14 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !42
  %15 = bitcast %struct.mystruct* %14 to i8*, !dbg !42
  call void @free(i8* noundef %15), !dbg !43
  %16 = call i8* @malloc(i64 noundef 16), !dbg !44
  %17 = bitcast i8* %16 to %struct.mystruct*, !dbg !45
  %18 = load %struct.mystruct**, %struct.mystruct*** %6, align 8, !dbg !46
  store %struct.mystruct* %17, %struct.mystruct** %18, align 8, !dbg !47
  %19 = load %struct.mystruct**, %struct.mystruct*** %6, align 8, !dbg !48
  %20 = load %struct.mystruct*, %struct.mystruct** %19, align 8, !dbg !49
  %21 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %20, i32 0, i32 1, !dbg !50
  store i32* %3, i32** %21, align 8, !dbg !51
  %22 = load %struct.mystruct**, %struct.mystruct*** %6, align 8, !dbg !52
  %23 = load %struct.mystruct*, %struct.mystruct** %22, align 8, !dbg !53
  %24 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %23, i32 0, i32 1, !dbg !54
  %25 = load i32*, i32** %24, align 8, !dbg !54
  store i32* %25, i32** %4, align 8, !dbg !55
  %26 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !56
  %27 = bitcast %struct.mystruct* %26 to i8*, !dbg !56
  call void @free(i8* noundef %27), !dbg !57
  ret i32 0, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-struct-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !5, line: 7, baseType: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-struct-1.c", directory: "")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !5, line: 3, size: 128, elements: !7)
!7 = !{!8, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !6, file: !5, line: 5, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !6, file: !5, line: 6, baseType: !9, size: 64, offset: 64)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 9, type: !19, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!10}
!21 = !{}
!22 = !DILocalVariable(name: "a", scope: !18, file: !5, line: 11, type: !10)
!23 = !DILocation(line: 11, column: 9, scope: !18)
!24 = !DILocalVariable(name: "b", scope: !18, file: !5, line: 11, type: !10)
!25 = !DILocation(line: 11, column: 12, scope: !18)
!26 = !DILocalVariable(name: "p", scope: !18, file: !5, line: 12, type: !9)
!27 = !DILocation(line: 12, column: 10, scope: !18)
!28 = !DILocalVariable(name: "x", scope: !18, file: !5, line: 13, type: !3)
!29 = !DILocation(line: 13, column: 15, scope: !18)
!30 = !DILocalVariable(name: "q", scope: !18, file: !5, line: 14, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!32 = !DILocation(line: 14, column: 16, scope: !18)
!33 = !DILocation(line: 16, column: 21, scope: !18)
!34 = !DILocation(line: 16, column: 9, scope: !18)
!35 = !DILocation(line: 16, column: 7, scope: !18)
!36 = !DILocation(line: 17, column: 5, scope: !18)
!37 = !DILocation(line: 17, column: 8, scope: !18)
!38 = !DILocation(line: 17, column: 11, scope: !18)
!39 = !DILocation(line: 18, column: 9, scope: !18)
!40 = !DILocation(line: 18, column: 12, scope: !18)
!41 = !DILocation(line: 18, column: 7, scope: !18)
!42 = !DILocation(line: 19, column: 10, scope: !18)
!43 = !DILocation(line: 19, column: 5, scope: !18)
!44 = !DILocation(line: 21, column: 22, scope: !18)
!45 = !DILocation(line: 21, column: 10, scope: !18)
!46 = !DILocation(line: 21, column: 6, scope: !18)
!47 = !DILocation(line: 21, column: 8, scope: !18)
!48 = !DILocation(line: 22, column: 7, scope: !18)
!49 = !DILocation(line: 22, column: 6, scope: !18)
!50 = !DILocation(line: 22, column: 11, scope: !18)
!51 = !DILocation(line: 22, column: 14, scope: !18)
!52 = !DILocation(line: 23, column: 11, scope: !18)
!53 = !DILocation(line: 23, column: 10, scope: !18)
!54 = !DILocation(line: 23, column: 15, scope: !18)
!55 = !DILocation(line: 23, column: 7, scope: !18)
!56 = !DILocation(line: 25, column: 10, scope: !18)
!57 = !DILocation(line: 25, column: 5, scope: !18)
!58 = !DILocation(line: 26, column: 5, scope: !18)
