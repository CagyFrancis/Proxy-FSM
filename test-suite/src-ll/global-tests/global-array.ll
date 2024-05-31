; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\global-tests\global-array.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests\\global-array.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.MyStruct = type { i32*, [64 x i8] }

@context = dso_local global %struct.MyStruct zeroinitializer, align 8, !dbg !0
@padding = internal global <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update(%struct.MyStruct* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !27 {
  %4 = alloca %struct.MyStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MyStruct* %0, %struct.MyStruct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MyStruct** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %7, metadata !39, metadata !DIExpression()), !dbg !40
  %8 = load %struct.MyStruct*, %struct.MyStruct** %4, align 8, !dbg !41
  %9 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %8, i32 0, i32 1, !dbg !42
  %10 = load i32, i32* %7, align 4, !dbg !43
  %11 = sext i32 %10 to i64, !dbg !41
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %11, !dbg !41
  %13 = load i8*, i8** %5, align 8, !dbg !44
  %14 = load i32, i32* %6, align 4, !dbg !45
  call void @memcpy(i8* noundef %12, i8* noundef %13, i32 noundef %14), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memcpy(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !48 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %7, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %7, align 4, !dbg !59
  br label %8, !dbg !61

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4, !dbg !62
  %10 = load i32, i32* %6, align 4, !dbg !64
  %11 = icmp ult i32 %9, %10, !dbg !65
  br i1 %11, label %12, label %25, !dbg !66

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8, !dbg !67
  %14 = load i32, i32* %7, align 4, !dbg !68
  %15 = zext i32 %14 to i64, !dbg !67
  %16 = getelementptr inbounds i8, i8* %13, i64 %15, !dbg !67
  %17 = load i8, i8* %16, align 1, !dbg !67
  %18 = load i8*, i8** %4, align 8, !dbg !69
  %19 = load i32, i32* %7, align 4, !dbg !70
  %20 = zext i32 %19 to i64, !dbg !69
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !69
  store i8 %17, i8* %21, align 1, !dbg !71
  br label %22, !dbg !69

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4, !dbg !72
  %24 = add i32 %23, 1, !dbg !72
  store i32 %24, i32* %7, align 4, !dbg !72
  br label %8, !dbg !73, !llvm.loop !74

25:                                               ; preds = %8
  ret void, !dbg !77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !81, metadata !DIExpression()), !dbg !82
  %3 = load i32, i32* %2, align 4, !dbg !83
  call void @update(%struct.MyStruct* noundef @context, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* bitcast (<{ i8, [63 x i8] }>* @padding to [64 x i8]*), i64 0, i64 0), i32 noundef %3), !dbg !84
  ret i32 0, !dbg !85
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !6, line: 14, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\global-tests/global-array.c", directory: "D:/Projects/Python/PointerAnalysis")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINTER", file: !6, line: 6, baseType: !7)
!6 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/global-tests/global-array.c", directory: "")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{!0, !10}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "padding", scope: !2, file: !6, line: 16, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", file: !6, line: 8, size: 576, elements: !16)
!16 = !{!17, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !15, file: !6, line: 10, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !15, file: !6, line: 11, baseType: !12, size: 512, offset: 64)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!27 = distinct !DISubprogram(name: "update", scope: !6, file: !6, line: 28, type: !28, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !7, !31}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!31 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "context", arg: 1, scope: !27, file: !6, line: 28, type: !30)
!34 = !DILocation(line: 28, column: 30, scope: !27)
!35 = !DILocalVariable(name: "input", arg: 2, scope: !27, file: !6, line: 28, type: !7)
!36 = !DILocation(line: 28, column: 54, scope: !27)
!37 = !DILocalVariable(name: "length", arg: 3, scope: !27, file: !6, line: 28, type: !31)
!38 = !DILocation(line: 28, column: 75, scope: !27)
!39 = !DILocalVariable(name: "index", scope: !27, file: !6, line: 30, type: !19)
!40 = !DILocation(line: 30, column: 6, scope: !27)
!41 = !DILocation(line: 31, column: 19, scope: !27)
!42 = !DILocation(line: 31, column: 28, scope: !27)
!43 = !DILocation(line: 31, column: 31, scope: !27)
!44 = !DILocation(line: 31, column: 48, scope: !27)
!45 = !DILocation(line: 31, column: 55, scope: !27)
!46 = !DILocation(line: 31, column: 2, scope: !27)
!47 = !DILocation(line: 32, column: 1, scope: !27)
!48 = distinct !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 21, type: !49, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !32)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !5, !5, !31}
!51 = !DILocalVariable(name: "output", arg: 1, scope: !48, file: !6, line: 21, type: !5)
!52 = !DILocation(line: 21, column: 28, scope: !48)
!53 = !DILocalVariable(name: "input", arg: 2, scope: !48, file: !6, line: 21, type: !5)
!54 = !DILocation(line: 21, column: 44, scope: !48)
!55 = !DILocalVariable(name: "len", arg: 3, scope: !48, file: !6, line: 21, type: !31)
!56 = !DILocation(line: 21, column: 65, scope: !48)
!57 = !DILocalVariable(name: "i", scope: !48, file: !6, line: 23, type: !31)
!58 = !DILocation(line: 23, column: 16, scope: !48)
!59 = !DILocation(line: 24, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !6, line: 24, column: 2)
!61 = !DILocation(line: 24, column: 7, scope: !60)
!62 = !DILocation(line: 24, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !6, line: 24, column: 2)
!64 = !DILocation(line: 24, column: 18, scope: !63)
!65 = !DILocation(line: 24, column: 16, scope: !63)
!66 = !DILocation(line: 24, column: 2, scope: !60)
!67 = !DILocation(line: 25, column: 15, scope: !63)
!68 = !DILocation(line: 25, column: 21, scope: !63)
!69 = !DILocation(line: 25, column: 3, scope: !63)
!70 = !DILocation(line: 25, column: 10, scope: !63)
!71 = !DILocation(line: 25, column: 13, scope: !63)
!72 = !DILocation(line: 24, column: 24, scope: !63)
!73 = !DILocation(line: 24, column: 2, scope: !63)
!74 = distinct !{!74, !66, !75, !76}
!75 = !DILocation(line: 25, column: 22, scope: !60)
!76 = !{!"llvm.loop.mustprogress"}
!77 = !DILocation(line: 26, column: 1, scope: !48)
!78 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 34, type: !79, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !32)
!79 = !DISubroutineType(types: !80)
!80 = !{!19}
!81 = !DILocalVariable(name: "l", scope: !78, file: !6, line: 36, type: !19)
!82 = !DILocation(line: 36, column: 6, scope: !78)
!83 = !DILocation(line: 37, column: 28, scope: !78)
!84 = !DILocation(line: 37, column: 2, scope: !78)
!85 = !DILocation(line: 38, column: 2, scope: !78)
