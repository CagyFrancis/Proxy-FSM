; ModuleID = 'd:\Projects\Python\PointerAnalysis\test-suite\src-bc\master-tests\heap-3.bc'
source_filename = "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests\\heap-3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.LinkNode = type { i8, %struct.LinkNode* }

@__const.main.a = private unnamed_addr constant [7 x i8] c"abcdefg", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClearList(%struct.LinkNode* noundef %0) #0 !dbg !20 {
  %2 = alloca %struct.LinkNode*, align 8
  %3 = alloca %struct.LinkNode*, align 8
  store %struct.LinkNode* %0, %struct.LinkNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !26, metadata !DIExpression()), !dbg !27
  %4 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !28
  %5 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %4, i32 0, i32 1, !dbg !29
  %6 = load %struct.LinkNode*, %struct.LinkNode** %5, align 8, !dbg !29
  store %struct.LinkNode* %6, %struct.LinkNode** %3, align 8, !dbg !27
  br label %7, !dbg !30

7:                                                ; preds = %10, %1
  %8 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !31
  %9 = icmp ne %struct.LinkNode* %8, null, !dbg !32
  br i1 %9, label %10, label %21, !dbg !30

10:                                               ; preds = %7
  %11 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !33
  %12 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %11, i32 0, i32 1, !dbg !35
  %13 = load %struct.LinkNode*, %struct.LinkNode** %12, align 8, !dbg !35
  store %struct.LinkNode* %13, %struct.LinkNode** %3, align 8, !dbg !36
  %14 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !37
  %15 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %14, i32 0, i32 1, !dbg !38
  %16 = load %struct.LinkNode*, %struct.LinkNode** %15, align 8, !dbg !38
  %17 = bitcast %struct.LinkNode* %16 to i8*, !dbg !37
  call void @free(i8* noundef %17), !dbg !39
  %18 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !40
  %19 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !41
  %20 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %19, i32 0, i32 1, !dbg !42
  store %struct.LinkNode* %18, %struct.LinkNode** %20, align 8, !dbg !43
  br label %7, !dbg !30, !llvm.loop !44

21:                                               ; preds = %7
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateList(%struct.LinkNode* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !48 {
  %4 = alloca %struct.LinkNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.LinkNode*, align 8
  %8 = alloca i32, align 4
  store %struct.LinkNode* %0, %struct.LinkNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %4, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %7, metadata !59, metadata !DIExpression()), !dbg !60
  %9 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !61
  call void @ClearList(%struct.LinkNode* noundef %9), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %8, metadata !63, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %8, align 4, !dbg !65
  br label %10, !dbg !66

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4, !dbg !67
  %12 = load i32, i32* %6, align 4, !dbg !69
  %13 = icmp slt i32 %11, %12, !dbg !70
  br i1 %13, label %14, label %35, !dbg !71

14:                                               ; preds = %10
  %15 = call i8* @malloc(i64 noundef 16), !dbg !72
  %16 = bitcast i8* %15 to %struct.LinkNode*, !dbg !74
  store %struct.LinkNode* %16, %struct.LinkNode** %7, align 8, !dbg !75
  %17 = load i8*, i8** %5, align 8, !dbg !76
  %18 = load i32, i32* %8, align 4, !dbg !77
  %19 = sext i32 %18 to i64, !dbg !76
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !76
  %21 = load i8, i8* %20, align 1, !dbg !76
  %22 = load %struct.LinkNode*, %struct.LinkNode** %7, align 8, !dbg !78
  %23 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %22, i32 0, i32 0, !dbg !79
  store i8 %21, i8* %23, align 8, !dbg !80
  %24 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !81
  %25 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %24, i32 0, i32 1, !dbg !82
  %26 = load %struct.LinkNode*, %struct.LinkNode** %25, align 8, !dbg !82
  %27 = load %struct.LinkNode*, %struct.LinkNode** %7, align 8, !dbg !83
  %28 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %27, i32 0, i32 1, !dbg !84
  store %struct.LinkNode* %26, %struct.LinkNode** %28, align 8, !dbg !85
  %29 = load %struct.LinkNode*, %struct.LinkNode** %7, align 8, !dbg !86
  %30 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !87
  %31 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %30, i32 0, i32 1, !dbg !88
  store %struct.LinkNode* %29, %struct.LinkNode** %31, align 8, !dbg !89
  br label %32, !dbg !90

32:                                               ; preds = %14
  %33 = load i32, i32* %8, align 4, !dbg !91
  %34 = add nsw i32 %33, 1, !dbg !91
  store i32 %34, i32* %8, align 4, !dbg !91
  br label %10, !dbg !92, !llvm.loop !93

35:                                               ; preds = %10
  ret void, !dbg !95
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsEmpty(%struct.LinkNode* noundef %0) #0 !dbg !96 {
  %2 = alloca %struct.LinkNode*, align 8
  store %struct.LinkNode* %0, %struct.LinkNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !99, metadata !DIExpression()), !dbg !100
  %3 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !101
  %4 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %3, i32 0, i32 1, !dbg !102
  %5 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !102
  %6 = icmp eq %struct.LinkNode* %5, null, !dbg !103
  %7 = zext i1 %6 to i32, !dbg !103
  ret i32 %7, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListLength(%struct.LinkNode* noundef %0) #0 !dbg !105 {
  %2 = alloca %struct.LinkNode*, align 8
  %3 = alloca %struct.LinkNode*, align 8
  %4 = alloca i32, align 4
  store %struct.LinkNode* %0, %struct.LinkNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %2, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !108, metadata !DIExpression()), !dbg !109
  %5 = load %struct.LinkNode*, %struct.LinkNode** %2, align 8, !dbg !110
  %6 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %5, i32 0, i32 1, !dbg !111
  %7 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !111
  store %struct.LinkNode* %7, %struct.LinkNode** %3, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %4, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %4, align 4, !dbg !113
  br label %8, !dbg !114

8:                                                ; preds = %11, %1
  %9 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !115
  %10 = icmp ne %struct.LinkNode* %9, null, !dbg !116
  br i1 %10, label %11, label %17, !dbg !114

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !117
  %13 = add nsw i32 %12, 1, !dbg !117
  store i32 %13, i32* %4, align 4, !dbg !117
  %14 = load %struct.LinkNode*, %struct.LinkNode** %3, align 8, !dbg !119
  %15 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %14, i32 0, i32 1, !dbg !120
  %16 = load %struct.LinkNode*, %struct.LinkNode** %15, align 8, !dbg !120
  store %struct.LinkNode* %16, %struct.LinkNode** %3, align 8, !dbg !121
  br label %8, !dbg !114, !llvm.loop !122

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4, !dbg !124
  ret i32 %18, !dbg !125
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetElem(%struct.LinkNode* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !126 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.LinkNode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.LinkNode*, align 8
  %9 = alloca i32, align 4
  store %struct.LinkNode* %0, %struct.LinkNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %5, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !131, metadata !DIExpression()), !dbg !132
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %8, metadata !135, metadata !DIExpression()), !dbg !136
  %10 = load %struct.LinkNode*, %struct.LinkNode** %5, align 8, !dbg !137
  %11 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %10, i32 0, i32 1, !dbg !138
  %12 = load %struct.LinkNode*, %struct.LinkNode** %11, align 8, !dbg !138
  store %struct.LinkNode* %12, %struct.LinkNode** %8, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %9, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 1, i32* %9, align 4, !dbg !140
  %13 = load i32, i32* %6, align 4, !dbg !141
  %14 = icmp sle i32 %13, 0, !dbg !143
  br i1 %14, label %15, label %16, !dbg !144

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !145
  br label %41, !dbg !145

16:                                               ; preds = %3
  br label %17, !dbg !146

17:                                               ; preds = %26, %16
  %18 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !147
  %19 = icmp ne %struct.LinkNode* %18, null, !dbg !148
  br i1 %19, label %20, label %24, !dbg !149

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !150
  %22 = load i32, i32* %6, align 4, !dbg !151
  %23 = icmp slt i32 %21, %22, !dbg !152
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ], !dbg !153
  br i1 %25, label %26, label %32, !dbg !146

26:                                               ; preds = %24
  %27 = load i32, i32* %9, align 4, !dbg !154
  %28 = add nsw i32 %27, 1, !dbg !154
  store i32 %28, i32* %9, align 4, !dbg !154
  %29 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !156
  %30 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %29, i32 0, i32 1, !dbg !157
  %31 = load %struct.LinkNode*, %struct.LinkNode** %30, align 8, !dbg !157
  store %struct.LinkNode* %31, %struct.LinkNode** %8, align 8, !dbg !158
  br label %17, !dbg !146, !llvm.loop !159

32:                                               ; preds = %24
  %33 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !161
  %34 = icmp eq %struct.LinkNode* %33, null, !dbg !163
  br i1 %34, label %35, label %36, !dbg !164

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4, !dbg !165
  br label %41, !dbg !165

36:                                               ; preds = %32
  %37 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !166
  %38 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %37, i32 0, i32 0, !dbg !168
  %39 = load i8, i8* %38, align 8, !dbg !168
  %40 = load i8*, i8** %7, align 8, !dbg !169
  store i8 %39, i8* %40, align 1, !dbg !170
  store i32 1, i32* %4, align 4, !dbg !171
  br label %41, !dbg !171

41:                                               ; preds = %36, %35, %15
  %42 = load i32, i32* %4, align 4, !dbg !172
  ret i32 %42, !dbg !172
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LocateElem(%struct.LinkNode* noundef %0, i8 noundef %1) #0 !dbg !173 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LinkNode*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.LinkNode*, align 8
  %7 = alloca i32, align 4
  store %struct.LinkNode* %0, %struct.LinkNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %4, metadata !176, metadata !DIExpression()), !dbg !177
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %6, metadata !180, metadata !DIExpression()), !dbg !181
  %8 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !182
  %9 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %8, i32 0, i32 1, !dbg !183
  %10 = load %struct.LinkNode*, %struct.LinkNode** %9, align 8, !dbg !183
  store %struct.LinkNode* %10, %struct.LinkNode** %6, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %7, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 1, i32* %7, align 4, !dbg !185
  br label %11, !dbg !186

11:                                               ; preds = %24, %2
  %12 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !187
  %13 = icmp ne %struct.LinkNode* %12, null, !dbg !188
  br i1 %13, label %14, label %22, !dbg !189

14:                                               ; preds = %11
  %15 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !190
  %16 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %15, i32 0, i32 0, !dbg !191
  %17 = load i8, i8* %16, align 8, !dbg !191
  %18 = sext i8 %17 to i32, !dbg !190
  %19 = load i8, i8* %5, align 1, !dbg !192
  %20 = sext i8 %19 to i32, !dbg !192
  %21 = icmp ne i32 %18, %20, !dbg !193
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ], !dbg !194
  br i1 %23, label %24, label %30, !dbg !186

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4, !dbg !195
  %26 = add nsw i32 %25, 1, !dbg !195
  store i32 %26, i32* %7, align 4, !dbg !195
  %27 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !197
  %28 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %27, i32 0, i32 1, !dbg !198
  %29 = load %struct.LinkNode*, %struct.LinkNode** %28, align 8, !dbg !198
  store %struct.LinkNode* %29, %struct.LinkNode** %6, align 8, !dbg !199
  br label %11, !dbg !186, !llvm.loop !200

30:                                               ; preds = %22
  %31 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !202
  %32 = icmp eq %struct.LinkNode* %31, null, !dbg !204
  br i1 %32, label %33, label %34, !dbg !205

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4, !dbg !206
  br label %36, !dbg !206

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4, !dbg !207
  store i32 %35, i32* %3, align 4, !dbg !208
  br label %36, !dbg !208

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %3, align 4, !dbg !209
  ret i32 %37, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InsertElem(%struct.LinkNode* noundef %0, i32 noundef %1, i8 noundef %2) #0 !dbg !210 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.LinkNode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.LinkNode*, align 8
  %9 = alloca %struct.LinkNode*, align 8
  %10 = alloca i32, align 4
  store %struct.LinkNode* %0, %struct.LinkNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %5, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !215, metadata !DIExpression()), !dbg !216
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %8, metadata !219, metadata !DIExpression()), !dbg !220
  %11 = load %struct.LinkNode*, %struct.LinkNode** %5, align 8, !dbg !221
  store %struct.LinkNode* %11, %struct.LinkNode** %8, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %9, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %10, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 0, i32* %10, align 4, !dbg !225
  %12 = load i32, i32* %6, align 4, !dbg !226
  %13 = icmp sle i32 %12, 0, !dbg !228
  br i1 %13, label %14, label %15, !dbg !229

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !230
  br label %50, !dbg !230

15:                                               ; preds = %3
  br label %16, !dbg !231

16:                                               ; preds = %26, %15
  %17 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !232
  %18 = icmp ne %struct.LinkNode* %17, null, !dbg !233
  br i1 %18, label %19, label %24, !dbg !234

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4, !dbg !235
  %21 = load i32, i32* %6, align 4, !dbg !236
  %22 = sub nsw i32 %21, 1, !dbg !237
  %23 = icmp slt i32 %20, %22, !dbg !238
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ], !dbg !239
  br i1 %25, label %26, label %32, !dbg !231

26:                                               ; preds = %24
  %27 = load i32, i32* %10, align 4, !dbg !240
  %28 = add nsw i32 %27, 1, !dbg !240
  store i32 %28, i32* %10, align 4, !dbg !240
  %29 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !242
  %30 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %29, i32 0, i32 1, !dbg !243
  %31 = load %struct.LinkNode*, %struct.LinkNode** %30, align 8, !dbg !243
  store %struct.LinkNode* %31, %struct.LinkNode** %8, align 8, !dbg !244
  br label %16, !dbg !231, !llvm.loop !245

32:                                               ; preds = %24
  %33 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !247
  %34 = icmp eq %struct.LinkNode* %33, null, !dbg !249
  br i1 %34, label %35, label %36, !dbg !250

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4, !dbg !251
  br label %50, !dbg !251

36:                                               ; preds = %32
  %37 = call i8* @malloc(i64 noundef 16), !dbg !252
  %38 = bitcast i8* %37 to %struct.LinkNode*, !dbg !254
  store %struct.LinkNode* %38, %struct.LinkNode** %9, align 8, !dbg !255
  %39 = load i8, i8* %7, align 1, !dbg !256
  %40 = load %struct.LinkNode*, %struct.LinkNode** %9, align 8, !dbg !257
  %41 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %40, i32 0, i32 0, !dbg !258
  store i8 %39, i8* %41, align 8, !dbg !259
  %42 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !260
  %43 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %42, i32 0, i32 1, !dbg !261
  %44 = load %struct.LinkNode*, %struct.LinkNode** %43, align 8, !dbg !261
  %45 = load %struct.LinkNode*, %struct.LinkNode** %9, align 8, !dbg !262
  %46 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %45, i32 0, i32 1, !dbg !263
  store %struct.LinkNode* %44, %struct.LinkNode** %46, align 8, !dbg !264
  %47 = load %struct.LinkNode*, %struct.LinkNode** %9, align 8, !dbg !265
  %48 = load %struct.LinkNode*, %struct.LinkNode** %8, align 8, !dbg !266
  %49 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %48, i32 0, i32 1, !dbg !267
  store %struct.LinkNode* %47, %struct.LinkNode** %49, align 8, !dbg !268
  store i32 1, i32* %4, align 4, !dbg !269
  br label %50, !dbg !269

50:                                               ; preds = %36, %35, %14
  %51 = load i32, i32* %4, align 4, !dbg !270
  ret i32 %51, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeleteElem(%struct.LinkNode* noundef %0, i32 noundef %1) #0 !dbg !271 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LinkNode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.LinkNode*, align 8
  %7 = alloca %struct.LinkNode*, align 8
  %8 = alloca i32, align 4
  store %struct.LinkNode* %0, %struct.LinkNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %4, metadata !274, metadata !DIExpression()), !dbg !275
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %6, metadata !278, metadata !DIExpression()), !dbg !279
  %9 = load %struct.LinkNode*, %struct.LinkNode** %4, align 8, !dbg !280
  store %struct.LinkNode* %9, %struct.LinkNode** %6, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %7, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %8, metadata !283, metadata !DIExpression()), !dbg !284
  store i32 0, i32* %8, align 4, !dbg !284
  %10 = load i32, i32* %5, align 4, !dbg !285
  %11 = icmp sle i32 %10, 0, !dbg !287
  br i1 %11, label %12, label %13, !dbg !288

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !289
  br label %50, !dbg !289

13:                                               ; preds = %2
  br label %14, !dbg !290

14:                                               ; preds = %24, %13
  %15 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !291
  %16 = icmp ne %struct.LinkNode* %15, null, !dbg !292
  br i1 %16, label %17, label %22, !dbg !293

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !294
  %19 = load i32, i32* %5, align 4, !dbg !295
  %20 = sub nsw i32 %19, 1, !dbg !296
  %21 = icmp slt i32 %18, %20, !dbg !297
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ], !dbg !298
  br i1 %23, label %24, label %30, !dbg !290

24:                                               ; preds = %22
  %25 = load i32, i32* %8, align 4, !dbg !299
  %26 = add nsw i32 %25, 1, !dbg !299
  store i32 %26, i32* %8, align 4, !dbg !299
  %27 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !301
  %28 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %27, i32 0, i32 1, !dbg !302
  %29 = load %struct.LinkNode*, %struct.LinkNode** %28, align 8, !dbg !302
  store %struct.LinkNode* %29, %struct.LinkNode** %6, align 8, !dbg !303
  br label %14, !dbg !290, !llvm.loop !304

30:                                               ; preds = %22
  %31 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !306
  %32 = icmp eq %struct.LinkNode* %31, null, !dbg !308
  br i1 %32, label %38, label %33, !dbg !309

33:                                               ; preds = %30
  %34 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !310
  %35 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %34, i32 0, i32 1, !dbg !311
  %36 = load %struct.LinkNode*, %struct.LinkNode** %35, align 8, !dbg !311
  %37 = icmp eq %struct.LinkNode* %36, null, !dbg !312
  br i1 %37, label %38, label %39, !dbg !313

38:                                               ; preds = %33, %30
  store i32 0, i32* %3, align 4, !dbg !314
  br label %50, !dbg !314

39:                                               ; preds = %33
  %40 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !315
  %41 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %40, i32 0, i32 1, !dbg !317
  %42 = load %struct.LinkNode*, %struct.LinkNode** %41, align 8, !dbg !317
  store %struct.LinkNode* %42, %struct.LinkNode** %7, align 8, !dbg !318
  %43 = load %struct.LinkNode*, %struct.LinkNode** %7, align 8, !dbg !319
  %44 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %43, i32 0, i32 1, !dbg !320
  %45 = load %struct.LinkNode*, %struct.LinkNode** %44, align 8, !dbg !320
  %46 = load %struct.LinkNode*, %struct.LinkNode** %6, align 8, !dbg !321
  %47 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %46, i32 0, i32 1, !dbg !322
  store %struct.LinkNode* %45, %struct.LinkNode** %47, align 8, !dbg !323
  %48 = load %struct.LinkNode*, %struct.LinkNode** %7, align 8, !dbg !324
  %49 = bitcast %struct.LinkNode* %48 to i8*, !dbg !324
  call void @free(i8* noundef %49), !dbg !325
  store i32 1, i32* %3, align 4, !dbg !326
  br label %50, !dbg !326

50:                                               ; preds = %39, %38, %12
  %51 = load i32, i32* %3, align 4, !dbg !327
  ret i32 %51, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !328 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LinkNode, align 8
  %3 = alloca %struct.LinkNode*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [7 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.LinkNode* %2, metadata !331, metadata !DIExpression()), !dbg !332
  %6 = bitcast %struct.LinkNode* %2 to i8*, !dbg !332
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false), !dbg !332
  call void @llvm.dbg.declare(metadata %struct.LinkNode** %3, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i8* %4, metadata !335, metadata !DIExpression()), !dbg !336
  store i8 0, i8* %4, align 1, !dbg !336
  call void @llvm.dbg.declare(metadata [7 x i8]* %5, metadata !337, metadata !DIExpression()), !dbg !341
  %7 = bitcast [7 x i8]* %5 to i8*, !dbg !341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.a, i32 0, i32 0), i64 7, i1 false), !dbg !341
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0, !dbg !342
  call void @CreateList(%struct.LinkNode* noundef %2, i8* noundef %8, i32 noundef 7), !dbg !343
  %9 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %2, i32 0, i32 1, !dbg !344
  %10 = load %struct.LinkNode*, %struct.LinkNode** %9, align 8, !dbg !344
  %11 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %10, i32 0, i32 1, !dbg !345
  %12 = load %struct.LinkNode*, %struct.LinkNode** %11, align 8, !dbg !345
  %13 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %12, i32 0, i32 1, !dbg !346
  %14 = load %struct.LinkNode*, %struct.LinkNode** %13, align 8, !dbg !346
  %15 = getelementptr inbounds %struct.LinkNode, %struct.LinkNode* %14, i32 0, i32 1, !dbg !347
  %16 = load %struct.LinkNode*, %struct.LinkNode** %15, align 8, !dbg !347
  store %struct.LinkNode* %16, %struct.LinkNode** %3, align 8, !dbg !348
  ret i32 0, !dbg !349
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "d:\\Projects\\Python\\PointerAnalysis\\test-suite\\src\\master-tests/heap-3.c", directory: "D:/Projects/Python/PointerAnalysis")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkNode", file: !6, line: 8, baseType: !7)
!6 = !DIFile(filename: "d:\\Projects/Python/PointerAnalysis/test-suite/src/master-tests/heap-3.c", directory: "")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LinkNode", file: !6, line: 4, size: 128, elements: !8)
!8 = !{!9, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 6, baseType: !10, size: 8)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemType", file: !6, line: 3, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !7, file: !6, line: 7, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!20 = distinct !DISubprogram(name: "ClearList", scope: !6, file: !6, line: 11, type: !21, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !4}
!23 = !{}
!24 = !DILocalVariable(name: "head", arg: 1, scope: !20, file: !6, line: 11, type: !4)
!25 = !DILocation(line: 11, column: 26, scope: !20)
!26 = !DILocalVariable(name: "p", scope: !20, file: !6, line: 13, type: !4)
!27 = !DILocation(line: 13, column: 12, scope: !20)
!28 = !DILocation(line: 13, column: 16, scope: !20)
!29 = !DILocation(line: 13, column: 22, scope: !20)
!30 = !DILocation(line: 14, column: 2, scope: !20)
!31 = !DILocation(line: 14, column: 9, scope: !20)
!32 = !DILocation(line: 14, column: 11, scope: !20)
!33 = !DILocation(line: 16, column: 7, scope: !34)
!34 = distinct !DILexicalBlock(scope: !20, file: !6, line: 15, column: 2)
!35 = !DILocation(line: 16, column: 10, scope: !34)
!36 = !DILocation(line: 16, column: 5, scope: !34)
!37 = !DILocation(line: 17, column: 8, scope: !34)
!38 = !DILocation(line: 17, column: 14, scope: !34)
!39 = !DILocation(line: 17, column: 3, scope: !34)
!40 = !DILocation(line: 18, column: 16, scope: !34)
!41 = !DILocation(line: 18, column: 3, scope: !34)
!42 = !DILocation(line: 18, column: 9, scope: !34)
!43 = !DILocation(line: 18, column: 14, scope: !34)
!44 = distinct !{!44, !30, !45, !46}
!45 = !DILocation(line: 19, column: 2, scope: !20)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 20, column: 1, scope: !20)
!48 = distinct !DISubprogram(name: "CreateList", scope: !6, file: !6, line: 23, type: !49, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !4, !51, !52}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "head", arg: 1, scope: !48, file: !6, line: 23, type: !4)
!54 = !DILocation(line: 23, column: 27, scope: !48)
!55 = !DILocalVariable(name: "a", arg: 2, scope: !48, file: !6, line: 23, type: !51)
!56 = !DILocation(line: 23, column: 42, scope: !48)
!57 = !DILocalVariable(name: "n", arg: 3, scope: !48, file: !6, line: 23, type: !52)
!58 = !DILocation(line: 23, column: 51, scope: !48)
!59 = !DILocalVariable(name: "tmp", scope: !48, file: !6, line: 25, type: !4)
!60 = !DILocation(line: 25, column: 12, scope: !48)
!61 = !DILocation(line: 27, column: 12, scope: !48)
!62 = !DILocation(line: 27, column: 2, scope: !48)
!63 = !DILocalVariable(name: "i", scope: !64, file: !6, line: 29, type: !52)
!64 = distinct !DILexicalBlock(scope: !48, file: !6, line: 29, column: 2)
!65 = !DILocation(line: 29, column: 11, scope: !64)
!66 = !DILocation(line: 29, column: 7, scope: !64)
!67 = !DILocation(line: 29, column: 18, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !6, line: 29, column: 2)
!69 = !DILocation(line: 29, column: 22, scope: !68)
!70 = !DILocation(line: 29, column: 20, scope: !68)
!71 = !DILocation(line: 29, column: 2, scope: !64)
!72 = !DILocation(line: 31, column: 21, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !6, line: 30, column: 2)
!74 = !DILocation(line: 31, column: 9, scope: !73)
!75 = !DILocation(line: 31, column: 7, scope: !73)
!76 = !DILocation(line: 32, column: 15, scope: !73)
!77 = !DILocation(line: 32, column: 17, scope: !73)
!78 = !DILocation(line: 32, column: 3, scope: !73)
!79 = !DILocation(line: 32, column: 8, scope: !73)
!80 = !DILocation(line: 32, column: 13, scope: !73)
!81 = !DILocation(line: 33, column: 15, scope: !73)
!82 = !DILocation(line: 33, column: 21, scope: !73)
!83 = !DILocation(line: 33, column: 3, scope: !73)
!84 = !DILocation(line: 33, column: 8, scope: !73)
!85 = !DILocation(line: 33, column: 13, scope: !73)
!86 = !DILocation(line: 34, column: 16, scope: !73)
!87 = !DILocation(line: 34, column: 3, scope: !73)
!88 = !DILocation(line: 34, column: 9, scope: !73)
!89 = !DILocation(line: 34, column: 14, scope: !73)
!90 = !DILocation(line: 35, column: 2, scope: !73)
!91 = !DILocation(line: 29, column: 26, scope: !68)
!92 = !DILocation(line: 29, column: 2, scope: !68)
!93 = distinct !{!93, !71, !94, !46}
!94 = !DILocation(line: 35, column: 2, scope: !64)
!95 = !DILocation(line: 36, column: 1, scope: !48)
!96 = distinct !DISubprogram(name: "IsEmpty", scope: !6, file: !6, line: 39, type: !97, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!97 = !DISubroutineType(types: !98)
!98 = !{!52, !4}
!99 = !DILocalVariable(name: "head", arg: 1, scope: !96, file: !6, line: 39, type: !4)
!100 = !DILocation(line: 39, column: 23, scope: !96)
!101 = !DILocation(line: 41, column: 9, scope: !96)
!102 = !DILocation(line: 41, column: 15, scope: !96)
!103 = !DILocation(line: 41, column: 20, scope: !96)
!104 = !DILocation(line: 41, column: 2, scope: !96)
!105 = distinct !DISubprogram(name: "ListLength", scope: !6, file: !6, line: 45, type: !97, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!106 = !DILocalVariable(name: "head", arg: 1, scope: !105, file: !6, line: 45, type: !4)
!107 = !DILocation(line: 45, column: 26, scope: !105)
!108 = !DILocalVariable(name: "p", scope: !105, file: !6, line: 47, type: !4)
!109 = !DILocation(line: 47, column: 12, scope: !105)
!110 = !DILocation(line: 47, column: 16, scope: !105)
!111 = !DILocation(line: 47, column: 22, scope: !105)
!112 = !DILocalVariable(name: "i", scope: !105, file: !6, line: 48, type: !52)
!113 = !DILocation(line: 48, column: 6, scope: !105)
!114 = !DILocation(line: 49, column: 2, scope: !105)
!115 = !DILocation(line: 49, column: 9, scope: !105)
!116 = !DILocation(line: 49, column: 11, scope: !105)
!117 = !DILocation(line: 51, column: 4, scope: !118)
!118 = distinct !DILexicalBlock(scope: !105, file: !6, line: 50, column: 2)
!119 = !DILocation(line: 52, column: 7, scope: !118)
!120 = !DILocation(line: 52, column: 10, scope: !118)
!121 = !DILocation(line: 52, column: 5, scope: !118)
!122 = distinct !{!122, !114, !123, !46}
!123 = !DILocation(line: 53, column: 2, scope: !105)
!124 = !DILocation(line: 54, column: 9, scope: !105)
!125 = !DILocation(line: 54, column: 2, scope: !105)
!126 = distinct !DISubprogram(name: "GetElem", scope: !6, file: !6, line: 58, type: !127, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!127 = !DISubroutineType(types: !128)
!128 = !{!52, !4, !52, !51}
!129 = !DILocalVariable(name: "head", arg: 1, scope: !126, file: !6, line: 58, type: !4)
!130 = !DILocation(line: 58, column: 23, scope: !126)
!131 = !DILocalVariable(name: "idx", arg: 2, scope: !126, file: !6, line: 58, type: !52)
!132 = !DILocation(line: 58, column: 33, scope: !126)
!133 = !DILocalVariable(name: "e", arg: 3, scope: !126, file: !6, line: 58, type: !51)
!134 = !DILocation(line: 58, column: 48, scope: !126)
!135 = !DILocalVariable(name: "p", scope: !126, file: !6, line: 60, type: !4)
!136 = !DILocation(line: 60, column: 12, scope: !126)
!137 = !DILocation(line: 60, column: 16, scope: !126)
!138 = !DILocation(line: 60, column: 22, scope: !126)
!139 = !DILocalVariable(name: "i", scope: !126, file: !6, line: 61, type: !52)
!140 = !DILocation(line: 61, column: 6, scope: !126)
!141 = !DILocation(line: 63, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !126, file: !6, line: 63, column: 6)
!143 = !DILocation(line: 63, column: 10, scope: !142)
!144 = !DILocation(line: 63, column: 6, scope: !126)
!145 = !DILocation(line: 64, column: 3, scope: !142)
!146 = !DILocation(line: 66, column: 2, scope: !126)
!147 = !DILocation(line: 66, column: 9, scope: !126)
!148 = !DILocation(line: 66, column: 11, scope: !126)
!149 = !DILocation(line: 66, column: 19, scope: !126)
!150 = !DILocation(line: 66, column: 22, scope: !126)
!151 = !DILocation(line: 66, column: 26, scope: !126)
!152 = !DILocation(line: 66, column: 24, scope: !126)
!153 = !DILocation(line: 0, scope: !126)
!154 = !DILocation(line: 68, column: 4, scope: !155)
!155 = distinct !DILexicalBlock(scope: !126, file: !6, line: 67, column: 2)
!156 = !DILocation(line: 69, column: 7, scope: !155)
!157 = !DILocation(line: 69, column: 10, scope: !155)
!158 = !DILocation(line: 69, column: 5, scope: !155)
!159 = distinct !{!159, !146, !160, !46}
!160 = !DILocation(line: 70, column: 2, scope: !126)
!161 = !DILocation(line: 72, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !126, file: !6, line: 72, column: 6)
!163 = !DILocation(line: 72, column: 8, scope: !162)
!164 = !DILocation(line: 72, column: 6, scope: !126)
!165 = !DILocation(line: 73, column: 3, scope: !162)
!166 = !DILocation(line: 76, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !6, line: 75, column: 2)
!168 = !DILocation(line: 76, column: 11, scope: !167)
!169 = !DILocation(line: 76, column: 4, scope: !167)
!170 = !DILocation(line: 76, column: 6, scope: !167)
!171 = !DILocation(line: 77, column: 3, scope: !167)
!172 = !DILocation(line: 79, column: 1, scope: !126)
!173 = distinct !DISubprogram(name: "LocateElem", scope: !6, file: !6, line: 82, type: !174, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!174 = !DISubroutineType(types: !175)
!175 = !{!52, !4, !10}
!176 = !DILocalVariable(name: "head", arg: 1, scope: !173, file: !6, line: 82, type: !4)
!177 = !DILocation(line: 82, column: 26, scope: !173)
!178 = !DILocalVariable(name: "e", arg: 2, scope: !173, file: !6, line: 82, type: !10)
!179 = !DILocation(line: 82, column: 41, scope: !173)
!180 = !DILocalVariable(name: "p", scope: !173, file: !6, line: 84, type: !4)
!181 = !DILocation(line: 84, column: 12, scope: !173)
!182 = !DILocation(line: 84, column: 16, scope: !173)
!183 = !DILocation(line: 84, column: 22, scope: !173)
!184 = !DILocalVariable(name: "i", scope: !173, file: !6, line: 85, type: !52)
!185 = !DILocation(line: 85, column: 6, scope: !173)
!186 = !DILocation(line: 87, column: 2, scope: !173)
!187 = !DILocation(line: 87, column: 9, scope: !173)
!188 = !DILocation(line: 87, column: 11, scope: !173)
!189 = !DILocation(line: 87, column: 19, scope: !173)
!190 = !DILocation(line: 87, column: 22, scope: !173)
!191 = !DILocation(line: 87, column: 25, scope: !173)
!192 = !DILocation(line: 87, column: 33, scope: !173)
!193 = !DILocation(line: 87, column: 30, scope: !173)
!194 = !DILocation(line: 0, scope: !173)
!195 = !DILocation(line: 89, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !173, file: !6, line: 88, column: 2)
!197 = !DILocation(line: 90, column: 7, scope: !196)
!198 = !DILocation(line: 90, column: 10, scope: !196)
!199 = !DILocation(line: 90, column: 5, scope: !196)
!200 = distinct !{!200, !186, !201, !46}
!201 = !DILocation(line: 91, column: 2, scope: !173)
!202 = !DILocation(line: 93, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !173, file: !6, line: 93, column: 6)
!204 = !DILocation(line: 93, column: 8, scope: !203)
!205 = !DILocation(line: 93, column: 6, scope: !173)
!206 = !DILocation(line: 94, column: 3, scope: !203)
!207 = !DILocation(line: 96, column: 10, scope: !203)
!208 = !DILocation(line: 96, column: 3, scope: !203)
!209 = !DILocation(line: 97, column: 1, scope: !173)
!210 = distinct !DISubprogram(name: "InsertElem", scope: !6, file: !6, line: 100, type: !211, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!211 = !DISubroutineType(types: !212)
!212 = !{!52, !4, !52, !10}
!213 = !DILocalVariable(name: "head", arg: 1, scope: !210, file: !6, line: 100, type: !4)
!214 = !DILocation(line: 100, column: 26, scope: !210)
!215 = !DILocalVariable(name: "idx", arg: 2, scope: !210, file: !6, line: 100, type: !52)
!216 = !DILocation(line: 100, column: 36, scope: !210)
!217 = !DILocalVariable(name: "e", arg: 3, scope: !210, file: !6, line: 100, type: !10)
!218 = !DILocation(line: 100, column: 50, scope: !210)
!219 = !DILocalVariable(name: "p", scope: !210, file: !6, line: 102, type: !4)
!220 = !DILocation(line: 102, column: 12, scope: !210)
!221 = !DILocation(line: 102, column: 16, scope: !210)
!222 = !DILocalVariable(name: "tmp", scope: !210, file: !6, line: 102, type: !4)
!223 = !DILocation(line: 102, column: 23, scope: !210)
!224 = !DILocalVariable(name: "i", scope: !210, file: !6, line: 103, type: !52)
!225 = !DILocation(line: 103, column: 6, scope: !210)
!226 = !DILocation(line: 105, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !210, file: !6, line: 105, column: 6)
!228 = !DILocation(line: 105, column: 10, scope: !227)
!229 = !DILocation(line: 105, column: 6, scope: !210)
!230 = !DILocation(line: 106, column: 3, scope: !227)
!231 = !DILocation(line: 108, column: 2, scope: !210)
!232 = !DILocation(line: 108, column: 9, scope: !210)
!233 = !DILocation(line: 108, column: 11, scope: !210)
!234 = !DILocation(line: 108, column: 19, scope: !210)
!235 = !DILocation(line: 108, column: 22, scope: !210)
!236 = !DILocation(line: 108, column: 26, scope: !210)
!237 = !DILocation(line: 108, column: 30, scope: !210)
!238 = !DILocation(line: 108, column: 24, scope: !210)
!239 = !DILocation(line: 0, scope: !210)
!240 = !DILocation(line: 110, column: 4, scope: !241)
!241 = distinct !DILexicalBlock(scope: !210, file: !6, line: 109, column: 2)
!242 = !DILocation(line: 111, column: 7, scope: !241)
!243 = !DILocation(line: 111, column: 10, scope: !241)
!244 = !DILocation(line: 111, column: 5, scope: !241)
!245 = distinct !{!245, !231, !246, !46}
!246 = !DILocation(line: 112, column: 2, scope: !210)
!247 = !DILocation(line: 114, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !210, file: !6, line: 114, column: 6)
!249 = !DILocation(line: 114, column: 8, scope: !248)
!250 = !DILocation(line: 114, column: 6, scope: !210)
!251 = !DILocation(line: 115, column: 3, scope: !248)
!252 = !DILocation(line: 119, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !6, line: 117, column: 2)
!254 = !DILocation(line: 119, column: 9, scope: !253)
!255 = !DILocation(line: 119, column: 7, scope: !253)
!256 = !DILocation(line: 120, column: 15, scope: !253)
!257 = !DILocation(line: 120, column: 3, scope: !253)
!258 = !DILocation(line: 120, column: 8, scope: !253)
!259 = !DILocation(line: 120, column: 13, scope: !253)
!260 = !DILocation(line: 121, column: 15, scope: !253)
!261 = !DILocation(line: 121, column: 18, scope: !253)
!262 = !DILocation(line: 121, column: 3, scope: !253)
!263 = !DILocation(line: 121, column: 8, scope: !253)
!264 = !DILocation(line: 121, column: 13, scope: !253)
!265 = !DILocation(line: 122, column: 13, scope: !253)
!266 = !DILocation(line: 122, column: 3, scope: !253)
!267 = !DILocation(line: 122, column: 6, scope: !253)
!268 = !DILocation(line: 122, column: 11, scope: !253)
!269 = !DILocation(line: 123, column: 3, scope: !253)
!270 = !DILocation(line: 125, column: 1, scope: !210)
!271 = distinct !DISubprogram(name: "DeleteElem", scope: !6, file: !6, line: 128, type: !272, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!272 = !DISubroutineType(types: !273)
!273 = !{!52, !4, !52}
!274 = !DILocalVariable(name: "head", arg: 1, scope: !271, file: !6, line: 128, type: !4)
!275 = !DILocation(line: 128, column: 26, scope: !271)
!276 = !DILocalVariable(name: "idx", arg: 2, scope: !271, file: !6, line: 128, type: !52)
!277 = !DILocation(line: 128, column: 36, scope: !271)
!278 = !DILocalVariable(name: "p", scope: !271, file: !6, line: 130, type: !4)
!279 = !DILocation(line: 130, column: 12, scope: !271)
!280 = !DILocation(line: 130, column: 16, scope: !271)
!281 = !DILocalVariable(name: "tmp", scope: !271, file: !6, line: 130, type: !4)
!282 = !DILocation(line: 130, column: 23, scope: !271)
!283 = !DILocalVariable(name: "i", scope: !271, file: !6, line: 131, type: !52)
!284 = !DILocation(line: 131, column: 6, scope: !271)
!285 = !DILocation(line: 133, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !271, file: !6, line: 133, column: 6)
!287 = !DILocation(line: 133, column: 10, scope: !286)
!288 = !DILocation(line: 133, column: 6, scope: !271)
!289 = !DILocation(line: 134, column: 3, scope: !286)
!290 = !DILocation(line: 136, column: 2, scope: !271)
!291 = !DILocation(line: 136, column: 9, scope: !271)
!292 = !DILocation(line: 136, column: 11, scope: !271)
!293 = !DILocation(line: 136, column: 19, scope: !271)
!294 = !DILocation(line: 136, column: 22, scope: !271)
!295 = !DILocation(line: 136, column: 26, scope: !271)
!296 = !DILocation(line: 136, column: 30, scope: !271)
!297 = !DILocation(line: 136, column: 24, scope: !271)
!298 = !DILocation(line: 0, scope: !271)
!299 = !DILocation(line: 138, column: 4, scope: !300)
!300 = distinct !DILexicalBlock(scope: !271, file: !6, line: 137, column: 2)
!301 = !DILocation(line: 139, column: 7, scope: !300)
!302 = !DILocation(line: 139, column: 10, scope: !300)
!303 = !DILocation(line: 139, column: 5, scope: !300)
!304 = distinct !{!304, !290, !305, !46}
!305 = !DILocation(line: 140, column: 2, scope: !271)
!306 = !DILocation(line: 142, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !271, file: !6, line: 142, column: 6)
!308 = !DILocation(line: 142, column: 8, scope: !307)
!309 = !DILocation(line: 142, column: 16, scope: !307)
!310 = !DILocation(line: 142, column: 19, scope: !307)
!311 = !DILocation(line: 142, column: 22, scope: !307)
!312 = !DILocation(line: 142, column: 27, scope: !307)
!313 = !DILocation(line: 142, column: 6, scope: !271)
!314 = !DILocation(line: 143, column: 3, scope: !307)
!315 = !DILocation(line: 147, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !307, file: !6, line: 145, column: 2)
!317 = !DILocation(line: 147, column: 12, scope: !316)
!318 = !DILocation(line: 147, column: 7, scope: !316)
!319 = !DILocation(line: 148, column: 13, scope: !316)
!320 = !DILocation(line: 148, column: 18, scope: !316)
!321 = !DILocation(line: 148, column: 3, scope: !316)
!322 = !DILocation(line: 148, column: 6, scope: !316)
!323 = !DILocation(line: 148, column: 11, scope: !316)
!324 = !DILocation(line: 149, column: 8, scope: !316)
!325 = !DILocation(line: 149, column: 3, scope: !316)
!326 = !DILocation(line: 150, column: 3, scope: !316)
!327 = !DILocation(line: 152, column: 1, scope: !271)
!328 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 155, type: !329, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!329 = !DISubroutineType(types: !330)
!330 = !{!52}
!331 = !DILocalVariable(name: "list", scope: !328, file: !6, line: 157, type: !5)
!332 = !DILocation(line: 157, column: 11, scope: !328)
!333 = !DILocalVariable(name: "p", scope: !328, file: !6, line: 158, type: !4)
!334 = !DILocation(line: 158, column: 12, scope: !328)
!335 = !DILocalVariable(name: "e", scope: !328, file: !6, line: 159, type: !10)
!336 = !DILocation(line: 159, column: 11, scope: !328)
!337 = !DILocalVariable(name: "a", scope: !328, file: !6, line: 160, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 56, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 7)
!341 = !DILocation(line: 160, column: 11, scope: !328)
!342 = !DILocation(line: 162, column: 20, scope: !328)
!343 = !DILocation(line: 162, column: 2, scope: !328)
!344 = !DILocation(line: 163, column: 11, scope: !328)
!345 = !DILocation(line: 163, column: 17, scope: !328)
!346 = !DILocation(line: 163, column: 23, scope: !328)
!347 = !DILocation(line: 163, column: 29, scope: !328)
!348 = !DILocation(line: 163, column: 4, scope: !328)
!349 = !DILocation(line: 165, column: 2, scope: !328)
