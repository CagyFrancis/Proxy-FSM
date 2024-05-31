; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-struct-context-1.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-struct-context-1.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mystruct* @foo(%struct.mystruct* noundef %0) #0 !dbg !18 {
  %2 = alloca %struct.mystruct*, align 8
  store %struct.mystruct* %0, %struct.mystruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mystruct** %2, metadata !22, metadata !DIExpression()), !dbg !23
  %3 = load %struct.mystruct*, %struct.mystruct** %2, align 8, !dbg !24
  ret %struct.mystruct* %3, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mystruct*, align 8
  %6 = alloca %struct.mystruct*, align 8
  %7 = alloca %struct.mystruct*, align 8
  %8 = alloca %struct.mystruct**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32** %4, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct.mystruct** %5, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.mystruct** %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata %struct.mystruct** %7, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata %struct.mystruct*** %8, metadata !41, metadata !DIExpression()), !dbg !43
  store %struct.mystruct** %5, %struct.mystruct*** %8, align 8, !dbg !43
  %9 = call i8* @malloc(i64 noundef 16), !dbg !44
  %10 = bitcast i8* %9 to %struct.mystruct*, !dbg !45
  store %struct.mystruct* %10, %struct.mystruct** %5, align 8, !dbg !46
  %11 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !47
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %11, i32 0, i32 0, !dbg !48
  store i32* %2, i32** %12, align 8, !dbg !49
  %13 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !50
  %14 = call %struct.mystruct* @foo(%struct.mystruct* noundef %13), !dbg !51
  store %struct.mystruct* %14, %struct.mystruct** %6, align 8, !dbg !52
  %15 = load %struct.mystruct*, %struct.mystruct** %6, align 8, !dbg !53
  %16 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %15, i32 0, i32 0, !dbg !54
  %17 = load i32*, i32** %16, align 8, !dbg !54
  store i32* %17, i32** %4, align 8, !dbg !55
  %18 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !56
  %19 = bitcast %struct.mystruct* %18 to i8*, !dbg !56
  call void @free(i8* noundef %19), !dbg !57
  %20 = call i8* @malloc(i64 noundef 16), !dbg !58
  %21 = bitcast i8* %20 to %struct.mystruct*, !dbg !59
  %22 = load %struct.mystruct**, %struct.mystruct*** %8, align 8, !dbg !60
  store %struct.mystruct* %21, %struct.mystruct** %22, align 8, !dbg !61
  %23 = load %struct.mystruct**, %struct.mystruct*** %8, align 8, !dbg !62
  %24 = load %struct.mystruct*, %struct.mystruct** %23, align 8, !dbg !63
  %25 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %24, i32 0, i32 0, !dbg !64
  store i32* %3, i32** %25, align 8, !dbg !65
  %26 = load %struct.mystruct**, %struct.mystruct*** %8, align 8, !dbg !66
  %27 = load %struct.mystruct*, %struct.mystruct** %26, align 8, !dbg !67
  %28 = call %struct.mystruct* @foo(%struct.mystruct* noundef %27), !dbg !68
  store %struct.mystruct* %28, %struct.mystruct** %7, align 8, !dbg !69
  %29 = load %struct.mystruct*, %struct.mystruct** %7, align 8, !dbg !70
  %30 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %29, i32 0, i32 0, !dbg !71
  %31 = load i32*, i32** %30, align 8, !dbg !71
  store i32* %31, i32** %4, align 8, !dbg !72
  %32 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !73
  %33 = bitcast %struct.mystruct* %32 to i8*, !dbg !73
  call void @free(i8* noundef %33), !dbg !74
  ret i32 0, !dbg !75
}

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-struct-context-1.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !5, line: 7, baseType: !6)
!5 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-struct-context-1.c", directory: "")
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
!18 = distinct !DISubprogram(name: "foo", scope: !5, file: !5, line: 9, type: !19, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!3, !3}
!21 = !{}
!22 = !DILocalVariable(name: "p", arg: 1, scope: !18, file: !5, line: 9, type: !3)
!23 = !DILocation(line: 9, column: 25, scope: !18)
!24 = !DILocation(line: 11, column: 12, scope: !18)
!25 = !DILocation(line: 11, column: 5, scope: !18)
!26 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 14, type: !27, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!27 = !DISubroutineType(types: !28)
!28 = !{!10}
!29 = !DILocalVariable(name: "a", scope: !26, file: !5, line: 16, type: !10)
!30 = !DILocation(line: 16, column: 9, scope: !26)
!31 = !DILocalVariable(name: "b", scope: !26, file: !5, line: 16, type: !10)
!32 = !DILocation(line: 16, column: 12, scope: !26)
!33 = !DILocalVariable(name: "p", scope: !26, file: !5, line: 17, type: !9)
!34 = !DILocation(line: 17, column: 10, scope: !26)
!35 = !DILocalVariable(name: "x", scope: !26, file: !5, line: 18, type: !3)
!36 = !DILocation(line: 18, column: 15, scope: !26)
!37 = !DILocalVariable(name: "r1", scope: !26, file: !5, line: 18, type: !3)
!38 = !DILocation(line: 18, column: 19, scope: !26)
!39 = !DILocalVariable(name: "r2", scope: !26, file: !5, line: 18, type: !3)
!40 = !DILocation(line: 18, column: 24, scope: !26)
!41 = !DILocalVariable(name: "q", scope: !26, file: !5, line: 19, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!43 = !DILocation(line: 19, column: 16, scope: !26)
!44 = !DILocation(line: 21, column: 21, scope: !26)
!45 = !DILocation(line: 21, column: 9, scope: !26)
!46 = !DILocation(line: 21, column: 7, scope: !26)
!47 = !DILocation(line: 22, column: 5, scope: !26)
!48 = !DILocation(line: 22, column: 8, scope: !26)
!49 = !DILocation(line: 22, column: 11, scope: !26)
!50 = !DILocation(line: 23, column: 14, scope: !26)
!51 = !DILocation(line: 23, column: 10, scope: !26)
!52 = !DILocation(line: 23, column: 8, scope: !26)
!53 = !DILocation(line: 24, column: 9, scope: !26)
!54 = !DILocation(line: 24, column: 13, scope: !26)
!55 = !DILocation(line: 24, column: 7, scope: !26)
!56 = !DILocation(line: 25, column: 10, scope: !26)
!57 = !DILocation(line: 25, column: 5, scope: !26)
!58 = !DILocation(line: 27, column: 22, scope: !26)
!59 = !DILocation(line: 27, column: 10, scope: !26)
!60 = !DILocation(line: 27, column: 6, scope: !26)
!61 = !DILocation(line: 27, column: 8, scope: !26)
!62 = !DILocation(line: 28, column: 7, scope: !26)
!63 = !DILocation(line: 28, column: 6, scope: !26)
!64 = !DILocation(line: 28, column: 11, scope: !26)
!65 = !DILocation(line: 28, column: 14, scope: !26)
!66 = !DILocation(line: 29, column: 15, scope: !26)
!67 = !DILocation(line: 29, column: 14, scope: !26)
!68 = !DILocation(line: 29, column: 10, scope: !26)
!69 = !DILocation(line: 29, column: 8, scope: !26)
!70 = !DILocation(line: 30, column: 9, scope: !26)
!71 = !DILocation(line: 30, column: 13, scope: !26)
!72 = !DILocation(line: 30, column: 7, scope: !26)
!73 = !DILocation(line: 32, column: 10, scope: !26)
!74 = !DILocation(line: 32, column: 5, scope: !26)
!75 = !DILocation(line: 33, column: 5, scope: !26)
