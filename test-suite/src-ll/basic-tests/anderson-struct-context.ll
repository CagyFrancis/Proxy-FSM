; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\basic-tests\anderson-struct-context.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests\\anderson-struct-context.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.mystruct = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(%struct.mystruct* noalias sret(%struct.mystruct) align 8 %0, %struct.mystruct* noundef %1) #0 !dbg !8 {
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.mystruct* %0 to i8*
  store i8* %4, i8** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mystruct* %1, metadata !20, metadata !DIExpression()), !dbg !21
  %5 = bitcast %struct.mystruct* %0 to i8*, !dbg !22
  %6 = bitcast %struct.mystruct* %1 to i8*, !dbg !22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false), !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mystruct, align 8
  %6 = alloca %struct.mystruct, align 8
  %7 = alloca %struct.mystruct, align 8
  %8 = alloca %struct.mystruct, align 8
  %9 = alloca %struct.mystruct, align 8
  %10 = alloca %struct.mystruct*, align 8
  %11 = alloca %struct.mystruct, align 8
  %12 = alloca %struct.mystruct, align 8
  %13 = alloca %struct.mystruct, align 8
  %14 = alloca %struct.mystruct, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct.mystruct* %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct.mystruct* %6, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.mystruct* %7, metadata !37, metadata !DIExpression()), !dbg !38
  %15 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 0, !dbg !39
  store i32* %2, i32** %15, align 8, !dbg !39
  %16 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !39
  store i32* %3, i32** %16, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata %struct.mystruct* %8, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata %struct.mystruct* %9, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata %struct.mystruct** %10, metadata !44, metadata !DIExpression()), !dbg !46
  store %struct.mystruct* %5, %struct.mystruct** %10, align 8, !dbg !46
  %17 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %5, i32 0, i32 0, !dbg !47
  store i32* %2, i32** %17, align 8, !dbg !48
  %18 = bitcast %struct.mystruct* %12 to i8*, !dbg !49
  %19 = bitcast %struct.mystruct* %5 to i8*, !dbg !49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false), !dbg !49
  call void @foo(%struct.mystruct* sret(%struct.mystruct) align 8 %11, %struct.mystruct* noundef %12), !dbg !49
  %20 = bitcast %struct.mystruct* %8 to i8*, !dbg !49
  %21 = bitcast %struct.mystruct* %11 to i8*, !dbg !49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false), !dbg !49
  %22 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %8, i32 0, i32 0, !dbg !50
  %23 = load i32*, i32** %22, align 8, !dbg !50
  store i32* %23, i32** %4, align 8, !dbg !51
  %24 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %7, i32 0, i32 1, !dbg !52
  %25 = load i32*, i32** %24, align 8, !dbg !52
  %26 = load %struct.mystruct*, %struct.mystruct** %10, align 8, !dbg !53
  %27 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %26, i32 0, i32 0, !dbg !54
  store i32* %25, i32** %27, align 8, !dbg !55
  %28 = load %struct.mystruct*, %struct.mystruct** %10, align 8, !dbg !56
  %29 = bitcast %struct.mystruct* %14 to i8*, !dbg !57
  %30 = bitcast %struct.mystruct* %28 to i8*, !dbg !57
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false), !dbg !57
  call void @foo(%struct.mystruct* sret(%struct.mystruct) align 8 %13, %struct.mystruct* noundef %14), !dbg !57
  %31 = bitcast %struct.mystruct* %9 to i8*, !dbg !57
  %32 = bitcast %struct.mystruct* %13 to i8*, !dbg !57
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false), !dbg !57
  %33 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %9, i32 0, i32 0, !dbg !58
  %34 = load i32*, i32** %33, align 8, !dbg !58
  store i32* %34, i32** %4, align 8, !dbg !59
  ret i32 0, !dbg !60
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\basic-tests/anderson-struct-context.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 7, type: !10, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/basic-tests/anderson-struct-context.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "mystruct", file: !9, line: 5, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mystruct", file: !9, line: 1, size: 128, elements: !14)
!14 = !{!15, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !13, file: !9, line: 3, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !13, file: !9, line: 4, baseType: !16, size: 64, offset: 64)
!19 = !{}
!20 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 7, type: !12)
!21 = !DILocation(line: 7, column: 23, scope: !8)
!22 = !DILocation(line: 9, column: 12, scope: !8)
!23 = !DILocation(line: 9, column: 5, scope: !8)
!24 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !25, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!25 = !DISubroutineType(types: !26)
!26 = !{!17}
!27 = !DILocalVariable(name: "a", scope: !24, file: !9, line: 14, type: !17)
!28 = !DILocation(line: 14, column: 9, scope: !24)
!29 = !DILocalVariable(name: "b", scope: !24, file: !9, line: 14, type: !17)
!30 = !DILocation(line: 14, column: 12, scope: !24)
!31 = !DILocalVariable(name: "p", scope: !24, file: !9, line: 15, type: !16)
!32 = !DILocation(line: 15, column: 10, scope: !24)
!33 = !DILocalVariable(name: "x", scope: !24, file: !9, line: 16, type: !12)
!34 = !DILocation(line: 16, column: 14, scope: !24)
!35 = !DILocalVariable(name: "y", scope: !24, file: !9, line: 16, type: !12)
!36 = !DILocation(line: 16, column: 17, scope: !24)
!37 = !DILocalVariable(name: "z", scope: !24, file: !9, line: 16, type: !12)
!38 = !DILocation(line: 16, column: 20, scope: !24)
!39 = !DILocation(line: 16, column: 24, scope: !24)
!40 = !DILocalVariable(name: "r1", scope: !24, file: !9, line: 17, type: !12)
!41 = !DILocation(line: 17, column: 14, scope: !24)
!42 = !DILocalVariable(name: "r2", scope: !24, file: !9, line: 17, type: !12)
!43 = !DILocation(line: 17, column: 18, scope: !24)
!44 = !DILocalVariable(name: "q", scope: !24, file: !9, line: 18, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!46 = !DILocation(line: 18, column: 15, scope: !24)
!47 = !DILocation(line: 20, column: 7, scope: !24)
!48 = !DILocation(line: 20, column: 10, scope: !24)
!49 = !DILocation(line: 21, column: 10, scope: !24)
!50 = !DILocation(line: 22, column: 12, scope: !24)
!51 = !DILocation(line: 22, column: 7, scope: !24)
!52 = !DILocation(line: 24, column: 17, scope: !24)
!53 = !DILocation(line: 24, column: 7, scope: !24)
!54 = !DILocation(line: 24, column: 10, scope: !24)
!55 = !DILocation(line: 24, column: 13, scope: !24)
!56 = !DILocation(line: 25, column: 15, scope: !24)
!57 = !DILocation(line: 25, column: 10, scope: !24)
!58 = !DILocation(line: 26, column: 12, scope: !24)
!59 = !DILocation(line: 26, column: 7, scope: !24)
!60 = !DILocation(line: 28, column: 5, scope: !24)
