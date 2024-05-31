; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-recursive-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-recursive-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.list = type { i32, %struct.list*, %struct.list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @construct(%struct.list* noundef %0, i32 noundef %1) #0 !dbg !8 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !23
  %7 = load i32, i32* %5, align 4, !dbg !24
  %8 = icmp ugt i32 %7, 0, !dbg !26
  br i1 %8, label %9, label %26, !dbg !27

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.list** %6, metadata !28, metadata !DIExpression()), !dbg !30
  %10 = call i8* @malloc(i64 noundef 24), !dbg !31
  %11 = bitcast i8* %10 to %struct.list*, !dbg !31
  store %struct.list* %11, %struct.list** %6, align 8, !dbg !30
  %12 = load %struct.list*, %struct.list** %6, align 8, !dbg !32
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0, !dbg !33
  store i32 0, i32* %13, align 8, !dbg !34
  %14 = load %struct.list*, %struct.list** %4, align 8, !dbg !35
  %15 = load %struct.list*, %struct.list** %6, align 8, !dbg !36
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 1, !dbg !37
  store %struct.list* %14, %struct.list** %16, align 8, !dbg !38
  %17 = load %struct.list*, %struct.list** %6, align 8, !dbg !39
  %18 = load %struct.list*, %struct.list** %4, align 8, !dbg !40
  %19 = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 2, !dbg !41
  store %struct.list* %17, %struct.list** %19, align 8, !dbg !42
  %20 = load %struct.list*, %struct.list** %6, align 8, !dbg !43
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 2, !dbg !44
  store %struct.list* null, %struct.list** %21, align 8, !dbg !45
  %22 = load %struct.list*, %struct.list** %6, align 8, !dbg !46
  %23 = load i32, i32* %5, align 4, !dbg !47
  %24 = add i32 %23, -1, !dbg !47
  store i32 %24, i32* %5, align 4, !dbg !47
  %25 = call %struct.list* @construct(%struct.list* noundef %22, i32 noundef %23), !dbg !48
  store %struct.list* %25, %struct.list** %3, align 8, !dbg !49
  br label %28, !dbg !49

26:                                               ; preds = %2
  %27 = load %struct.list*, %struct.list** %4, align 8, !dbg !50
  store %struct.list* %27, %struct.list** %3, align 8, !dbg !51
  br label %28, !dbg !51

28:                                               ; preds = %26, %9
  %29 = load %struct.list*, %struct.list** %3, align 8, !dbg !52
  ret %struct.list* %29, !dbg !52
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.list*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !57, metadata !DIExpression()), !dbg !58
  %3 = call i8* @malloc(i64 noundef 24), !dbg !59
  %4 = bitcast i8* %3 to %struct.list*, !dbg !59
  store %struct.list* %4, %struct.list** %2, align 8, !dbg !60
  %5 = load %struct.list*, %struct.list** %2, align 8, !dbg !61
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 0, !dbg !62
  store i32 0, i32* %6, align 8, !dbg !63
  %7 = load %struct.list*, %struct.list** %2, align 8, !dbg !64
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 1, !dbg !65
  store %struct.list* null, %struct.list** %8, align 8, !dbg !66
  %9 = load %struct.list*, %struct.list** %2, align 8, !dbg !67
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 2, !dbg !68
  store %struct.list* null, %struct.list** %10, align 8, !dbg !69
  %11 = load %struct.list*, %struct.list** %2, align 8, !dbg !70
  %12 = call %struct.list* @construct(%struct.list* noundef %11, i32 noundef 10), !dbg !71
  store %struct.list* %12, %struct.list** %2, align 8, !dbg !72
  ret i32 0, !dbg !73
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-recursive-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "construct", scope: !9, file: !9, line: 10, type: !10, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-recursive-3.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !16}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !9, line: 3, size: 192, elements: !14)
!14 = !{!15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !13, file: !9, line: 5, baseType: !16, size: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !9, line: 6, baseType: !12, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !9, line: 7, baseType: !12, size: 64, offset: 128)
!19 = !{}
!20 = !DILocalVariable(name: "head", arg: 1, scope: !8, file: !9, line: 10, type: !12)
!21 = !DILocation(line: 10, column: 37, scope: !8)
!22 = !DILocalVariable(name: "i", arg: 2, scope: !8, file: !9, line: 10, type: !16)
!23 = !DILocation(line: 10, column: 52, scope: !8)
!24 = !DILocation(line: 12, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !8, file: !9, line: 12, column: 9)
!26 = !DILocation(line: 12, column: 11, scope: !25)
!27 = !DILocation(line: 12, column: 9, scope: !8)
!28 = !DILocalVariable(name: "tmp", scope: !29, file: !9, line: 14, type: !12)
!29 = distinct !DILexicalBlock(scope: !25, file: !9, line: 13, column: 5)
!30 = !DILocation(line: 14, column: 22, scope: !29)
!31 = !DILocation(line: 14, column: 28, scope: !29)
!32 = !DILocation(line: 15, column: 9, scope: !29)
!33 = !DILocation(line: 15, column: 14, scope: !29)
!34 = !DILocation(line: 15, column: 20, scope: !29)
!35 = !DILocation(line: 16, column: 21, scope: !29)
!36 = !DILocation(line: 16, column: 9, scope: !29)
!37 = !DILocation(line: 16, column: 14, scope: !29)
!38 = !DILocation(line: 16, column: 19, scope: !29)
!39 = !DILocation(line: 17, column: 22, scope: !29)
!40 = !DILocation(line: 17, column: 9, scope: !29)
!41 = !DILocation(line: 17, column: 15, scope: !29)
!42 = !DILocation(line: 17, column: 20, scope: !29)
!43 = !DILocation(line: 18, column: 9, scope: !29)
!44 = !DILocation(line: 18, column: 14, scope: !29)
!45 = !DILocation(line: 18, column: 19, scope: !29)
!46 = !DILocation(line: 20, column: 26, scope: !29)
!47 = !DILocation(line: 20, column: 32, scope: !29)
!48 = !DILocation(line: 20, column: 16, scope: !29)
!49 = !DILocation(line: 20, column: 9, scope: !29)
!50 = !DILocation(line: 22, column: 12, scope: !8)
!51 = !DILocation(line: 22, column: 5, scope: !8)
!52 = !DILocation(line: 23, column: 1, scope: !8)
!53 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 25, type: !54, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!54 = !DISubroutineType(types: !55)
!55 = !{!56}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DILocalVariable(name: "head", scope: !53, file: !9, line: 27, type: !12)
!58 = !DILocation(line: 27, column: 18, scope: !53)
!59 = !DILocation(line: 29, column: 12, scope: !53)
!60 = !DILocation(line: 29, column: 10, scope: !53)
!61 = !DILocation(line: 30, column: 5, scope: !53)
!62 = !DILocation(line: 30, column: 11, scope: !53)
!63 = !DILocation(line: 30, column: 17, scope: !53)
!64 = !DILocation(line: 31, column: 5, scope: !53)
!65 = !DILocation(line: 31, column: 11, scope: !53)
!66 = !DILocation(line: 31, column: 16, scope: !53)
!67 = !DILocation(line: 32, column: 5, scope: !53)
!68 = !DILocation(line: 32, column: 11, scope: !53)
!69 = !DILocation(line: 32, column: 16, scope: !53)
!70 = !DILocation(line: 34, column: 22, scope: !53)
!71 = !DILocation(line: 34, column: 12, scope: !53)
!72 = !DILocation(line: 34, column: 10, scope: !53)
!73 = !DILocation(line: 36, column: 5, scope: !53)
