; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\heap-tests\heap-struct-2.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests\\heap-struct-2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mystruct, align 8
  %4 = alloca %struct.mystruct, align 8
  %5 = alloca %struct.mystruct*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32** %2, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata %struct.mystruct* %3, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.mystruct* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.mystruct** %5, metadata !27, metadata !DIExpression()), !dbg !29
  store %struct.mystruct* %3, %struct.mystruct** %5, align 8, !dbg !29
  %6 = call i8* @malloc(i64 noundef 4), !dbg !30
  %7 = bitcast i8* %6 to i32*, !dbg !31
  %8 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %3, i32 0, i32 0, !dbg !32
  store i32* %7, i32** %8, align 8, !dbg !33
  %9 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %3, i32 0, i32 0, !dbg !34
  %10 = load i32*, i32** %9, align 8, !dbg !34
  %11 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !35
  store i32* %10, i32** %11, align 8, !dbg !36
  %12 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !37
  %13 = load i32*, i32** %12, align 8, !dbg !37
  store i32* %13, i32** %2, align 8, !dbg !38
  %14 = load i32*, i32** %2, align 8, !dbg !39
  %15 = bitcast i32* %14 to i8*, !dbg !39
  call void @free(i8* noundef %15), !dbg !40
  %16 = call i8* @malloc(i64 noundef 4), !dbg !41
  %17 = bitcast i8* %16 to i32*, !dbg !42
  %18 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !43
  %19 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %18, i32 0, i32 0, !dbg !44
  store i32* %17, i32** %19, align 8, !dbg !45
  %20 = load %struct.mystruct*, %struct.mystruct** %5, align 8, !dbg !46
  %21 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %20, i32 0, i32 0, !dbg !47
  %22 = load i32*, i32** %21, align 8, !dbg !47
  %23 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !48
  store i32* %22, i32** %23, align 8, !dbg !49
  %24 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %4, i32 0, i32 1, !dbg !50
  %25 = load i32*, i32** %24, align 8, !dbg !50
  store i32* %25, i32** %2, align 8, !dbg !51
  %26 = load i32*, i32** %2, align 8, !dbg !52
  %27 = bitcast i32* %26 to i8*, !dbg !52
  call void @free(i8* noundef %27), !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\heap-tests/heap-struct-2.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 9, type: !13, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/heap-tests/heap-struct-2.c", directory: "")
!13 = !DISubroutineType(types: !14)
!14 = !{!4}
!15 = !{}
!16 = !DILocalVariable(name: "p", scope: !11, file: !12, line: 11, type: !3)
!17 = !DILocation(line: 11, column: 10, scope: !11)
!18 = !DILocalVariable(name: "x", scope: !11, file: !12, line: 12, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !12, line: 7, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !12, line: 3, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !20, file: !12, line: 5, baseType: !3, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !20, file: !12, line: 6, baseType: !3, size: 64, offset: 64)
!24 = !DILocation(line: 12, column: 14, scope: !11)
!25 = !DILocalVariable(name: "y", scope: !11, file: !12, line: 12, type: !19)
!26 = !DILocation(line: 12, column: 17, scope: !11)
!27 = !DILocalVariable(name: "q", scope: !11, file: !12, line: 13, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!29 = !DILocation(line: 13, column: 15, scope: !11)
!30 = !DILocation(line: 15, column: 19, scope: !11)
!31 = !DILocation(line: 15, column: 12, scope: !11)
!32 = !DILocation(line: 15, column: 7, scope: !11)
!33 = !DILocation(line: 15, column: 10, scope: !11)
!34 = !DILocation(line: 16, column: 14, scope: !11)
!35 = !DILocation(line: 16, column: 7, scope: !11)
!36 = !DILocation(line: 16, column: 10, scope: !11)
!37 = !DILocation(line: 17, column: 11, scope: !11)
!38 = !DILocation(line: 17, column: 7, scope: !11)
!39 = !DILocation(line: 18, column: 10, scope: !11)
!40 = !DILocation(line: 18, column: 5, scope: !11)
!41 = !DILocation(line: 20, column: 22, scope: !11)
!42 = !DILocation(line: 20, column: 15, scope: !11)
!43 = !DILocation(line: 20, column: 7, scope: !11)
!44 = !DILocation(line: 20, column: 10, scope: !11)
!45 = !DILocation(line: 20, column: 13, scope: !11)
!46 = !DILocation(line: 21, column: 14, scope: !11)
!47 = !DILocation(line: 21, column: 17, scope: !11)
!48 = !DILocation(line: 21, column: 7, scope: !11)
!49 = !DILocation(line: 21, column: 10, scope: !11)
!50 = !DILocation(line: 22, column: 11, scope: !11)
!51 = !DILocation(line: 22, column: 7, scope: !11)
!52 = !DILocation(line: 23, column: 10, scope: !11)
!53 = !DILocation(line: 23, column: 5, scope: !11)
!54 = !DILocation(line: 25, column: 5, scope: !11)
