; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-struct-context-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-struct-context-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @foo(i32* noundef %0) #0 !dbg !11 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !16, metadata !DIExpression()), !dbg !17
  %3 = load i32*, i32** %2, align 8, !dbg !18
  ret i32* %3, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mystruct, align 8
  %4 = alloca %struct.mystruct, align 8
  %5 = alloca %struct.mystruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.mystruct* %3, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.mystruct* %4, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata %struct.mystruct** %5, metadata !34, metadata !DIExpression()), !dbg !36
  store %struct.mystruct* %3, %struct.mystruct** %5, align 8, !dbg !36
  %6 = call i8* @malloc(i64 noundef 4), !dbg !37
  %7 = bitcast i8* %6 to i32*, !dbg !38
  %8 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %3, i32 0, i32 0, !dbg !39
  store i32* %7, i32** %8, align 8, !dbg !40
  %9 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %3, i32 0, i32 0, !dbg !41
  %10 = load i32*, i32** %9, align 8, !dbg !41
  %11 = call i32* @foo(i32* noundef %10), !dbg !42
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !43
  store i32* %11, i32** %12, align 8, !dbg !44
  %13 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !45
  %14 = load i32*, i32** %13, align 8, !dbg !45
  store i32* %14, i32** %2, align 8, !dbg !46
  %15 = load i32*, i32** %2, align 8, !dbg !47
  %16 = bitcast i32* %15 to i8*, !dbg !47
  call void @free(i8* noundef %16), !dbg !48
  %17 = call i8* @malloc(i64 noundef 4), !dbg !49
  %18 = bitcast i8* %17 to i32*, !dbg !50
  %19 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !51
  %20 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %19, i32 0, i32 0, !dbg !52
  store i32* %18, i32** %20, align 8, !dbg !53
  %21 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !54
  %22 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %21, i32 0, i32 0, !dbg !55
  %23 = load i32*, i32** %22, align 8, !dbg !55
  %24 = call i32* @foo(i32* noundef %23), !dbg !56
  %25 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !57
  store i32* %24, i32** %25, align 8, !dbg !58
  %26 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !59
  %27 = load i32*, i32** %26, align 8, !dbg !59
  store i32* %27, i32** %2, align 8, !dbg !60
  %28 = load i32*, i32** %2, align 8, !dbg !61
  %29 = bitcast i32* %28 to i8*, !dbg !61
  call void @free(i8* noundef %29), !dbg !62
  ret i32 0, !dbg !63
}

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-struct-context-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "foo", scope: !12, file: !12, line: 9, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-struct-context-2.c", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{!3, !3}
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !11, file: !12, line: 9, type: !3)
!17 = !DILocation(line: 9, column: 15, scope: !11)
!18 = !DILocation(line: 11, column: 12, scope: !11)
!19 = !DILocation(line: 11, column: 5, scope: !11)
!20 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 14, type: !21, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!21 = !DISubroutineType(types: !22)
!22 = !{!4}
!23 = !DILocalVariable(name: "p", scope: !20, file: !12, line: 16, type: !3)
!24 = !DILocation(line: 16, column: 10, scope: !20)
!25 = !DILocalVariable(name: "x", scope: !20, file: !12, line: 17, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !12, line: 7, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !12, line: 3, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !27, file: !12, line: 5, baseType: !3, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !27, file: !12, line: 6, baseType: !3, size: 64, offset: 64)
!31 = !DILocation(line: 17, column: 14, scope: !20)
!32 = !DILocalVariable(name: "y", scope: !20, file: !12, line: 17, type: !26)
!33 = !DILocation(line: 17, column: 17, scope: !20)
!34 = !DILocalVariable(name: "q", scope: !20, file: !12, line: 18, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!36 = !DILocation(line: 18, column: 15, scope: !20)
!37 = !DILocation(line: 20, column: 19, scope: !20)
!38 = !DILocation(line: 20, column: 12, scope: !20)
!39 = !DILocation(line: 20, column: 7, scope: !20)
!40 = !DILocation(line: 20, column: 10, scope: !20)
!41 = !DILocation(line: 21, column: 18, scope: !20)
!42 = !DILocation(line: 21, column: 12, scope: !20)
!43 = !DILocation(line: 21, column: 7, scope: !20)
!44 = !DILocation(line: 21, column: 10, scope: !20)
!45 = !DILocation(line: 22, column: 11, scope: !20)
!46 = !DILocation(line: 22, column: 7, scope: !20)
!47 = !DILocation(line: 23, column: 10, scope: !20)
!48 = !DILocation(line: 23, column: 5, scope: !20)
!49 = !DILocation(line: 25, column: 22, scope: !20)
!50 = !DILocation(line: 25, column: 15, scope: !20)
!51 = !DILocation(line: 25, column: 7, scope: !20)
!52 = !DILocation(line: 25, column: 10, scope: !20)
!53 = !DILocation(line: 25, column: 13, scope: !20)
!54 = !DILocation(line: 26, column: 18, scope: !20)
!55 = !DILocation(line: 26, column: 21, scope: !20)
!56 = !DILocation(line: 26, column: 12, scope: !20)
!57 = !DILocation(line: 26, column: 7, scope: !20)
!58 = !DILocation(line: 26, column: 10, scope: !20)
!59 = !DILocation(line: 27, column: 11, scope: !20)
!60 = !DILocation(line: 27, column: 7, scope: !20)
!61 = !DILocation(line: 28, column: 10, scope: !20)
!62 = !DILocation(line: 28, column: 5, scope: !20)
!63 = !DILocation(line: 30, column: 5, scope: !20)
