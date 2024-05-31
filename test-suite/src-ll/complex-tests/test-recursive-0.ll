; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\complex-tests\test-recursive-0.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests\\test-recursive-0.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.list = type { %struct.list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @construct(%struct.list* noundef %0) #0 !dbg !8 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !21
  %6 = load i32, i32* %4, align 4, !dbg !22
  %7 = icmp sgt i32 %6, 0, !dbg !24
  br i1 %7, label %8, label %16, !dbg !25

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.list** %5, metadata !26, metadata !DIExpression()), !dbg !28
  %9 = call i8* @malloc(i64 noundef 8), !dbg !29
  %10 = bitcast i8* %9 to %struct.list*, !dbg !29
  store %struct.list* %10, %struct.list** %5, align 8, !dbg !28
  %11 = load %struct.list*, %struct.list** %5, align 8, !dbg !30
  %12 = load %struct.list*, %struct.list** %3, align 8, !dbg !31
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0, !dbg !32
  store %struct.list* %11, %struct.list** %13, align 8, !dbg !33
  %14 = load %struct.list*, %struct.list** %5, align 8, !dbg !34
  %15 = call %struct.list* @construct(%struct.list* noundef %14), !dbg !35
  store %struct.list* %15, %struct.list** %2, align 8, !dbg !36
  br label %18, !dbg !36

16:                                               ; preds = %1
  %17 = load %struct.list*, %struct.list** %3, align 8, !dbg !37
  store %struct.list* %17, %struct.list** %2, align 8, !dbg !38
  br label %18, !dbg !38

18:                                               ; preds = %16, %8
  %19 = load %struct.list*, %struct.list** %2, align 8, !dbg !39
  ret %struct.list* %19, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.list*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.list** %2, metadata !43, metadata !DIExpression()), !dbg !44
  %3 = call i8* @malloc(i64 noundef 8), !dbg !45
  %4 = bitcast i8* %3 to %struct.list*, !dbg !45
  store %struct.list* %4, %struct.list** %2, align 8, !dbg !46
  %5 = load %struct.list*, %struct.list** %2, align 8, !dbg !47
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 0, !dbg !48
  store %struct.list* null, %struct.list** %6, align 8, !dbg !49
  %7 = load %struct.list*, %struct.list** %2, align 8, !dbg !50
  %8 = call %struct.list* @construct(%struct.list* noundef %7), !dbg !51
  store %struct.list* %8, %struct.list** %2, align 8, !dbg !52
  %9 = load %struct.list*, %struct.list** %2, align 8, !dbg !53
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 0, !dbg !54
  %11 = load %struct.list*, %struct.list** %10, align 8, !dbg !54
  store %struct.list* %11, %struct.list** %2, align 8, !dbg !55
  ret i32 0, !dbg !56
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\complex-tests/test-recursive-0.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "construct", scope: !9, file: !9, line: 8, type: !10, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/complex-tests/test-recursive-0.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !9, line: 3, size: 64, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !9, line: 5, baseType: !12, size: 64)
!16 = !{}
!17 = !DILocalVariable(name: "head", arg: 1, scope: !8, file: !9, line: 8, type: !12)
!18 = !DILocation(line: 8, column: 37, scope: !8)
!19 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 10, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocation(line: 10, column: 9, scope: !8)
!22 = !DILocation(line: 11, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !8, file: !9, line: 11, column: 9)
!24 = !DILocation(line: 11, column: 11, scope: !23)
!25 = !DILocation(line: 11, column: 9, scope: !8)
!26 = !DILocalVariable(name: "tmp", scope: !27, file: !9, line: 13, type: !12)
!27 = distinct !DILexicalBlock(scope: !23, file: !9, line: 12, column: 5)
!28 = !DILocation(line: 13, column: 22, scope: !27)
!29 = !DILocation(line: 13, column: 28, scope: !27)
!30 = !DILocation(line: 14, column: 22, scope: !27)
!31 = !DILocation(line: 14, column: 9, scope: !27)
!32 = !DILocation(line: 14, column: 15, scope: !27)
!33 = !DILocation(line: 14, column: 20, scope: !27)
!34 = !DILocation(line: 15, column: 26, scope: !27)
!35 = !DILocation(line: 15, column: 16, scope: !27)
!36 = !DILocation(line: 15, column: 9, scope: !27)
!37 = !DILocation(line: 17, column: 12, scope: !8)
!38 = !DILocation(line: 17, column: 5, scope: !8)
!39 = !DILocation(line: 18, column: 1, scope: !8)
!40 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 19, type: !41, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!41 = !DISubroutineType(types: !42)
!42 = !{!20}
!43 = !DILocalVariable(name: "head", scope: !40, file: !9, line: 21, type: !12)
!44 = !DILocation(line: 21, column: 18, scope: !40)
!45 = !DILocation(line: 22, column: 12, scope: !40)
!46 = !DILocation(line: 22, column: 10, scope: !40)
!47 = !DILocation(line: 23, column: 5, scope: !40)
!48 = !DILocation(line: 23, column: 11, scope: !40)
!49 = !DILocation(line: 23, column: 16, scope: !40)
!50 = !DILocation(line: 25, column: 22, scope: !40)
!51 = !DILocation(line: 25, column: 12, scope: !40)
!52 = !DILocation(line: 25, column: 10, scope: !40)
!53 = !DILocation(line: 26, column: 12, scope: !40)
!54 = !DILocation(line: 26, column: 18, scope: !40)
!55 = !DILocation(line: 26, column: 10, scope: !40)
!56 = !DILocation(line: 28, column: 5, scope: !40)
