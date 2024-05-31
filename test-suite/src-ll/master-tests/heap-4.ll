; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\heap-4.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\heap-4.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.node = type { i32, %struct.node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @foo(%struct.node* noundef %0) #0 !dbg !8 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.node** %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = call i8* @malloc(i64 noundef 16), !dbg !23
  %4 = bitcast i8* %3 to %struct.node*, !dbg !23
  %5 = load %struct.node*, %struct.node** %2, align 8, !dbg !24
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1, !dbg !25
  store %struct.node* %4, %struct.node** %6, align 8, !dbg !26
  %7 = load %struct.node*, %struct.node** %2, align 8, !dbg !27
  ret %struct.node* %7, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar() #0 !dbg !29 {
  %1 = alloca %struct.node, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  call void @llvm.dbg.declare(metadata %struct.node* %1, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata %struct.node** %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %struct.node** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = call %struct.node* @foo(%struct.node* noundef %1), !dbg !38
  store %struct.node* %4, %struct.node** %2, align 8, !dbg !39
  %5 = load %struct.node*, %struct.node** %2, align 8, !dbg !40
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1, !dbg !41
  %7 = load %struct.node*, %struct.node** %6, align 8, !dbg !41
  store %struct.node* %7, %struct.node** %3, align 8, !dbg !42
  %8 = load %struct.node*, %struct.node** %2, align 8, !dbg !43
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1, !dbg !44
  %10 = load %struct.node*, %struct.node** %9, align 8, !dbg !44
  %11 = bitcast %struct.node* %10 to i8*, !dbg !43
  call void @free(i8* noundef %11), !dbg !45
  ret void, !dbg !46
}

declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !47 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @bar(), !dbg !50
  ret i32 0, !dbg !51
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/heap-4.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 9, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!9 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/heap-4.c", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !9, line: 7, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !9, line: 3, size: 128, elements: !15)
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !9, line: 5, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !14, file: !9, line: 6, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!20 = !{}
!21 = !DILocalVariable(name: "root", arg: 1, scope: !8, file: !9, line: 9, type: !12)
!22 = !DILocation(line: 9, column: 17, scope: !8)
!23 = !DILocation(line: 11, column: 18, scope: !8)
!24 = !DILocation(line: 11, column: 5, scope: !8)
!25 = !DILocation(line: 11, column: 11, scope: !8)
!26 = !DILocation(line: 11, column: 16, scope: !8)
!27 = !DILocation(line: 12, column: 12, scope: !8)
!28 = !DILocation(line: 12, column: 5, scope: !8)
!29 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 15, type: !30, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !DILocalVariable(name: "head", scope: !29, file: !9, line: 17, type: !13)
!33 = !DILocation(line: 17, column: 10, scope: !29)
!34 = !DILocalVariable(name: "r1", scope: !29, file: !9, line: 18, type: !12)
!35 = !DILocation(line: 18, column: 11, scope: !29)
!36 = !DILocalVariable(name: "r2", scope: !29, file: !9, line: 18, type: !12)
!37 = !DILocation(line: 18, column: 16, scope: !29)
!38 = !DILocation(line: 20, column: 10, scope: !29)
!39 = !DILocation(line: 20, column: 8, scope: !29)
!40 = !DILocation(line: 21, column: 10, scope: !29)
!41 = !DILocation(line: 21, column: 14, scope: !29)
!42 = !DILocation(line: 21, column: 8, scope: !29)
!43 = !DILocation(line: 23, column: 10, scope: !29)
!44 = !DILocation(line: 23, column: 14, scope: !29)
!45 = !DILocation(line: 23, column: 5, scope: !29)
!46 = !DILocation(line: 24, column: 1, scope: !29)
!47 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 26, type: !48, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!48 = !DISubroutineType(types: !49)
!49 = !{!17}
!50 = !DILocation(line: 28, column: 5, scope: !47)
!51 = !DILocation(line: 29, column: 5, scope: !47)
