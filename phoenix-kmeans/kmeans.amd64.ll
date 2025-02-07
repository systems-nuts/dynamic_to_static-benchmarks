; ModuleID = 'kmeans.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_400ff0__rodata_type = type <{ [4 x i8], [9 x i8], [82 x i8], [71 x i8], [16 x i8], [25 x i8], [23 x i8], [29 x i8], [13 x i8] }>

%seg_601e00__init_array_type = type <{ i64, i64 }>

%seg_601ff0__got_type = type <{ i64, i64 }>

%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }>

%seg_602068__bss_type = type <{ [8 x i8], [4 x i8] }>

%modified_type = type <{ [4 x i8] }>

%num_points_type = type <{ [4 x i8] }>

%grid_size_type = type <{ [4 x i8] }>

%num_means_type = type <{ [4 x i8] }>

%dim_type = type <{ [4 x i8] }>

%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }

%struct.ArchState = type { i32, i32, %union.anon }

%union.VectorReg = type { %union.vec512_t }

%union.vec512_t = type { %struct.uint64v8_t }

%struct.uint64v8_t = type { [8 x i64] }

%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }

%union.SegmentSelector = type { i16 }

%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }

%struct.Reg = type { %union.anon }

%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }

%struct.X87Stack = type { [8 x %struct.anon.3] }

%struct.anon.3 = type { i64, double }

%struct.MMX = type { [8 x %struct.anon.4] }

%struct.anon.4 = type { i64, %union.vec64_t }

%union.vec64_t = type { %struct.uint64v1_t }

%struct.uint64v1_t = type { [1 x i64] }

%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }

%union.FPU = type { %struct.anon.13 }

%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }

%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }

%union.FPUAbridgedTagWord = type { i8 }

%union.FPUControlStatus = type { i32 }

%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }

%union.anon.11 = type { %struct.float80_t }

%struct.float80_t = type { [10 x i8] }

%union.vec128_t = type { %struct.uint128v1_t }

%struct.uint128v1_t = type { [1 x i128] }

%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }

%struct.SegmentShadow = type { %union.anon, i32, i32 }

%struct.Memory = type opaque



@DR0 = external global i64, align 8

@DR1 = external global i64, align 8

@DR2 = external global i64, align 8

@DR3 = external global i64, align 8

@DR4 = external global i64, align 8

@DR5 = external global i64, align 8

@DR6 = external global i64, align 8

@DR7 = external global i64, align 8

@gCR0 = external global %union.anon, align 1

@gCR1 = external global %union.anon, align 1

@gCR2 = external global %union.anon, align 1

@gCR3 = external global %union.anon, align 1

@gCR4 = external global %union.anon, align 1

@gCR8 = external global %union.anon, align 1

@optarg = external global i64, align 8

@seg_400ff0__rodata = internal constant %seg_400ff0__rodata_type <{ [4 x i8] c"\01\00\02\00", [9 x i8] c"d:c:p:s:\00", [82 x i8] c"Usage: %s -d <vector dimension> -c <num clusters> -p <num points> -s <grid size>\0A\00", [71 x i8] c"Illegal argument value. All values must be numeric and greater than 0\0A\00", [16 x i8] c"Dimension = %d\0A\00", [25 x i8] c"Number of clusters = %d\0A\00", [23 x i8] c"Number of points = %d\0A\00", [29 x i8] c"Size of each dimension = %d\0A\00", [13 x i8] c"Cleaning up\0A\00" }>

@seg_601e00__init_array = internal global %seg_601e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400710_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4006e0___do_global_dtors_aux to i64) }>

@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] c"\10\1E`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSmemset to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSgetopt to i64), i64 ptrtoint (i64 (i64)* @SSSSSatoi to i64), i64 ptrtoint (i64 (i64)* @SSSSSexit to i64), i64 ptrtoint (i64 ()* @SSSSSrand to i64) }>
@seg_602068__bss = internal global %seg_602068__bss_type zeroinitializer

@modified = global %modified_type zeroinitializer

@num_points = global %num_points_type zeroinitializer

@grid_size = global %grid_size_type zeroinitializer

@num_means = global %num_means_type zeroinitializer

@dim = global %dim_type zeroinitializer

@__mcsema_reg_state = internal thread_local global %struct.State zeroinitializer

@__mcsema_stack = internal thread_local global [131072 x i64] zeroinitializer

@__mcsema_tls = internal thread_local global [512 x i64] zeroinitializer

@0 = internal global i1 false

@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]



; Function Attrs: nounwind readnone speculatable

declare i32 @llvm.ctpop.i32(i32) #0



; Function Attrs: noduplicate noinline nounwind optnone

define %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {

  call void @llvm.trap()

  unreachable

}



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSexit(i64) #2
declare i64 @exit(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #2
declare i64 @malloc(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgetopt(i64, i64, i64) #2
declare i64 @getopt(i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfree(i64) #2
declare i64 @free(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSrand() #2
declare i64 @rand() #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSatoi(i64) #2
declare i64 @atoi(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmemset(i64, i64, i64) #2
declare i64 @memset(i64, i64, i64) #2


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400f70___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400f70:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %11 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %18 = load i64, i64* %17, align 8

  %19 = load i64, i64* %12, align 8, !tbaa !1240

  %20 = add i64 %19, -8

  %21 = inttoptr i64 %20 to i64*

  store i64 %18, i64* %21

  %22 = load i64, i64* %16, align 8

  %23 = add i64 %19, -16

  %24 = inttoptr i64 %23 to i64*

  store i64 %22, i64* %24

  %25 = load i64, i64* %9, align 8

  store i64 %25, i64* %17, align 8, !tbaa !1240

  %26 = load i64, i64* %15, align 8

  %27 = add i64 %19, -24

  %28 = inttoptr i64 %27 to i64*

  store i64 %26, i64* %28

  %29 = load i64, i64* %14, align 8

  %30 = add i64 %19, -32

  %31 = inttoptr i64 %30 to i64*

  store i64 %29, i64* %31

  store i64 ptrtoint (%seg_601e00__init_array_type* @seg_601e00__init_array to i64), i64* %14, align 8, !tbaa !1240

  %32 = load i64, i64* %13, align 8

  %33 = add i64 %19, -40

  %34 = inttoptr i64 %33 to i64*

  store i64 %32, i64* %34

  %35 = load i64, i64* %8, align 8

  %36 = add i64 %19, -48

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = load i32, i32* %5, align 4

  %39 = zext i32 %38 to i64

  store i64 %39, i64* %15, align 8, !tbaa !1240

  %40 = load i64, i64* %10, align 8

  store i64 %40, i64* %16, align 8, !tbaa !1240

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i64 ashr (i64 sub (i64 add (i64 ptrtoint (%seg_601e00__init_array_type* @seg_601e00__init_array to i64), i64 8), i64 ptrtoint (%seg_601e00__init_array_type* @seg_601e00__init_array to i64)), i64 3), i64* %13, align 8, !tbaa !1240

  %47 = add i64 %1, -2544

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400580__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_400fc6, label %block_400fa6



block_400fc6.loopexit:                            ; preds = %block_400fb0

  br label %block_400fc6



block_400fc6:                                     ; preds = %block_400fc6.loopexit, %block_400f70

  %57 = phi %struct.Memory* [ %51, %block_400f70 ], [ %119, %block_400fc6.loopexit ]

  %58 = load i64, i64* %12, align 8

  %59 = add i64 %58, 8

  %60 = icmp ugt i64 %58, -9

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %41, align 1, !tbaa !1244

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #9

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %42, align 1, !tbaa !1258

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %43, align 1, !tbaa !1259

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %44, align 1, !tbaa !1260

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %45, align 1, !tbaa !1261

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %46, align 1, !tbaa !1262

  %81 = add i64 %58, 16

  %82 = inttoptr i64 %59 to i64*

  %83 = load i64, i64* %82

  store i64 %83, i64* %8, align 8, !tbaa !1240

  %84 = add i64 %58, 24

  %85 = inttoptr i64 %81 to i64*

  %86 = load i64, i64* %85

  store i64 %86, i64* %13, align 8, !tbaa !1240

  %87 = add i64 %58, 32

  %88 = inttoptr i64 %84 to i64*

  %89 = load i64, i64* %88

  store i64 %89, i64* %14, align 8, !tbaa !1240

  %90 = add i64 %58, 40

  %91 = inttoptr i64 %87 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %15, align 8, !tbaa !1240

  %93 = add i64 %58, 48

  %94 = inttoptr i64 %90 to i64*

  %95 = load i64, i64* %94

  store i64 %95, i64* %16, align 8, !tbaa !1240

  %96 = add i64 %58, 56

  %97 = inttoptr i64 %93 to i64*

  %98 = load i64, i64* %97

  store i64 %98, i64* %17, align 8, !tbaa !1240

  %99 = inttoptr i64 %96 to i64*

  %100 = load i64, i64* %99

  store i64 %100, i64* %3, align 8, !tbaa !1240

  %101 = add i64 %58, 64

  store i64 %101, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %57



block_400fa6:                                     ; preds = %block_400f70

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1260

  store i8 0, i8* %45, align 1, !tbaa !1261

  store i8 0, i8* %46, align 1, !tbaa !1262

  store i8 0, i8* %43, align 1, !tbaa !1259

  %102 = add i64 %56, 10

  br label %block_400fb0



block_400fb0:                                     ; preds = %block_400fb0, %block_400fa6

  %103 = phi i64 [ 0, %block_400fa6 ], [ %122, %block_400fb0 ]

  %104 = phi i64 [ %102, %block_400fa6 ], [ %150, %block_400fb0 ]

  %105 = phi %struct.Memory* [ %51, %block_400fa6 ], [ %119, %block_400fb0 ]

  %106 = load i64, i64* %17, align 8

  store i64 %106, i64* %9, align 8, !tbaa !1240

  %107 = load i64, i64* %16, align 8

  store i64 %107, i64* %10, align 8, !tbaa !1240

  %108 = load i32, i32* %7, align 4

  %109 = zext i32 %108 to i64

  store i64 %109, i64* %11, align 8, !tbaa !1240

  %110 = load i64, i64* %14, align 8

  %111 = shl i64 %103, 3

  %112 = add i64 %111, %110

  %113 = add i64 %104, 13

  %114 = load i64, i64* %12, align 8, !tbaa !1240

  %115 = add i64 %114, -8

  %116 = inttoptr i64 %115 to i64*

  store i64 %113, i64* %116

  store i64 %115, i64* %12, align 8, !tbaa !1240

  %117 = inttoptr i64 %112 to i64*

  %118 = load i64, i64* %117

  store i64 %118, i64* %3, align 8, !tbaa !1240

  %119 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %118, %struct.Memory* %105)

  %120 = load i64, i64* %8, align 8

  %121 = load i64, i64* %3, align 8

  %122 = add i64 %120, 1

  store i64 %122, i64* %8, align 8, !tbaa !1240

  %123 = lshr i64 %122, 63

  %124 = load i64, i64* %13, align 8

  %125 = sub i64 %124, %122

  %126 = icmp ult i64 %124, %122

  %127 = zext i1 %126 to i8

  store i8 %127, i8* %41, align 1, !tbaa !1244

  %128 = trunc i64 %125 to i32

  %129 = and i32 %128, 255

  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #9

  %131 = trunc i32 %130 to i8

  %132 = and i8 %131, 1

  %133 = xor i8 %132, 1

  store i8 %133, i8* %42, align 1, !tbaa !1258

  %134 = xor i64 %122, %124

  %135 = xor i64 %134, %125

  %136 = lshr i64 %135, 4

  %137 = trunc i64 %136 to i8

  %138 = and i8 %137, 1

  store i8 %138, i8* %43, align 1, !tbaa !1259

  %139 = icmp eq i64 %125, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %44, align 1, !tbaa !1260

  %141 = lshr i64 %125, 63

  %142 = trunc i64 %141 to i8

  store i8 %142, i8* %45, align 1, !tbaa !1261

  %143 = lshr i64 %124, 63

  %144 = xor i64 %123, %143

  %145 = xor i64 %141, %143

  %146 = add nuw nsw i64 %145, %144

  %147 = icmp eq i64 %146, 2

  %148 = zext i1 %147 to i8

  store i8 %148, i8* %46, align 1, !tbaa !1262

  %149 = select i1 %139, i64 9, i64 -13

  %150 = add i64 %121, %149

  br i1 %139, label %block_400fc6.loopexit, label %block_400fb0

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400b10_get_sq_dist(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400b10:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %11 = load i64, i64* %10, align 8

  %12 = load i64, i64* %9, align 8, !tbaa !1240

  %13 = add i64 %12, -8

  %14 = inttoptr i64 %13 to i64*

  store i64 %11, i64* %14

  %15 = add i64 %12, -16

  %16 = load i64, i64* %8, align 8

  %17 = inttoptr i64 %15 to i64*

  store i64 %16, i64* %17

  %18 = add i64 %12, -24

  %19 = load i64, i64* %7, align 8

  %20 = inttoptr i64 %18 to i64*

  store i64 %19, i64* %20

  %21 = add i64 %12, -32

  %22 = inttoptr i64 %21 to i32*

  store i32 0, i32* %22

  %23 = add i64 %12, -28

  %24 = inttoptr i64 %23 to i32*

  store i32 0, i32* %24

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %28 = add i64 %12, -16

  %29 = add i64 %12, -24

  %30 = add i64 %12, -32

  br label %block_400b2a



block_400b7d:                                     ; preds = %block_400b2a

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %34 = icmp ult i32 %59, %60

  %35 = zext i1 %34 to i8

  %36 = and i32 %61, 255

  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #9

  %38 = trunc i32 %37 to i8

  %39 = and i8 %38, 1

  %40 = xor i8 %39, 1

  %41 = xor i32 %60, %59

  %42 = xor i32 %41, %61

  %43 = lshr i32 %42, 4

  %44 = trunc i32 %43 to i8

  %45 = and i8 %44, 1

  %46 = icmp eq i32 %61, 0

  %47 = zext i1 %46 to i8

  %48 = zext i1 %69 to i8

  store i8 %35, i8* %25, align 1, !tbaa !1244

  store i8 %40, i8* %31, align 1, !tbaa !1258

  store i8 %45, i8* %26, align 1, !tbaa !1259

  store i8 %47, i8* %32, align 1, !tbaa !1260

  store i8 %63, i8* %27, align 1, !tbaa !1261

  store i8 %48, i8* %33, align 1, !tbaa !1262

  %49 = inttoptr i64 %30 to i32*

  %50 = load i32, i32* %49

  %51 = zext i32 %50 to i64

  store i64 %51, i64* %4, align 8, !tbaa !1240

  %52 = inttoptr i64 %13 to i64*

  %53 = load i64, i64* %52

  store i64 %53, i64* %10, align 8, !tbaa !1240

  %54 = inttoptr i64 %12 to i64*

  %55 = load i64, i64* %54

  store i64 %55, i64* %3, align 8, !tbaa !1240

  %56 = add i64 %12, 8

  store i64 %56, i64* %9, align 8, !tbaa !1240

  ret %struct.Memory* %57



block_400b2a:                                     ; preds = %block_400b3a, %block_400b10

  %57 = phi %struct.Memory* [ %2, %block_400b10 ], [ %57, %block_400b3a ]

  %58 = inttoptr i64 %23 to i32*

  %59 = load i32, i32* %58

  %60 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %61 = sub i32 %59, %60

  %62 = lshr i32 %61, 31

  %63 = trunc i32 %62 to i8

  %64 = lshr i32 %59, 31

  %65 = lshr i32 %60, 31

  %66 = xor i32 %65, %64

  %67 = xor i32 %62, %64

  %68 = add nuw nsw i32 %67, %66

  %69 = icmp eq i32 %68, 2

  %70 = icmp ne i8 %63, 0

  %71 = xor i1 %70, %69

  br i1 %71, label %block_400b3a, label %block_400b7d



block_400b3a:                                     ; preds = %block_400b2a

  %72 = inttoptr i64 %28 to i64*

  %73 = load i64, i64* %72

  %74 = sext i32 %59 to i64

  %75 = shl nsw i64 %74, 2

  %76 = add i64 %75, %73

  %77 = inttoptr i64 %76 to i32*

  %78 = load i32, i32* %77

  %79 = inttoptr i64 %29 to i64*

  %80 = load i64, i64* %79

  %81 = add i64 %80, %75

  %82 = inttoptr i64 %81 to i32*

  %83 = load i32, i32* %82

  %84 = sub i32 %78, %83

  %85 = zext i32 %84 to i64

  store i64 %74, i64* %5, align 8, !tbaa !1240

  store i64 %85, i64* %7, align 8, !tbaa !1240

  %86 = mul i32 %84, %84

  %87 = inttoptr i64 %30 to i32*

  %88 = load i32, i32* %87

  %89 = add i32 %88, %86

  %90 = zext i32 %89 to i64

  store i64 %90, i64* %6, align 8, !tbaa !1240

  %91 = inttoptr i64 %30 to i32*

  store i32 %89, i32* %91

  %92 = inttoptr i64 %23 to i32*

  %93 = load i32, i32* %92

  %94 = add i32 %93, 1

  %95 = inttoptr i64 %23 to i32*

  store i32 %94, i32* %95

  br label %block_400b2a

}



; Function Attrs: noinline

define %struct.Memory* @sub_400720_parse_args(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400720:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 8, !tbaa !1240

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  store i64 %14, i64* %11, align 8, !tbaa !1240

  %16 = add i64 %13, -88

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = add i64 %13, -12

  %24 = load i32, i32* %5, align 4

  %25 = inttoptr i64 %23 to i32*

  store i32 %24, i32* %25

  %26 = add i64 %13, -24

  %27 = load i64, i64* %8, align 8

  %28 = inttoptr i64 %26 to i64*

  store i64 %27, i64* %28

  store i32 100000, i32* bitcast (%num_points_type* @num_points to i32*)

  store i32 100, i32* bitcast (%num_means_type* @num_means to i32*)

  store i32 3, i32* bitcast (%dim_type* @dim to i32*)

  %29 = add i64 %1, 59

  store i32 1000, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  br label %block_40075b



block_400874:                                     ; preds = %block_40075b

  %31 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1244

  %32 = and i32 %31, 255

  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #9

  %34 = trunc i32 %33 to i8

  %35 = and i8 %34, 1

  %36 = xor i8 %35, 1

  store i8 %36, i8* %18, align 1, !tbaa !1258

  store i8 0, i8* %19, align 1, !tbaa !1259

  %37 = icmp eq i32 %31, 0

  %38 = zext i1 %37 to i8

  store i8 %38, i8* %20, align 1, !tbaa !1260

  %39 = lshr i32 %31, 31

  %40 = trunc i32 %39 to i8

  store i8 %40, i8* %21, align 1, !tbaa !1261

  store i8 0, i8* %22, align 1, !tbaa !1262

  %41 = icmp ne i8 %40, 0

  %42 = or i1 %37, %41

  %43 = select i1 %42, i64 56, i64 14

  %44 = add i64 %81, %43

  br i1 %42, label %block_4008ac, label %block_400882



block_4007e6:                                     ; preds = %block_4007a5

  %45 = load i64, i64* @optarg

  %46 = add i64 %236, 13

  %47 = load i64, i64* %10, align 8, !tbaa !1240

  %48 = add i64 %47, -8

  %49 = inttoptr i64 %48 to i64*

  store i64 %46, i64* %49

  %50 = inttoptr i64 %48 to i64*

  %51 = load i64, i64* %50

  store i64 %51, i64* %3, align 8, !alias.scope !1263, !noalias !1266

  store i64 %47, i64* %10, align 8, !alias.scope !1263, !noalias !1266

  %52 = tail call i64 @atoi(i64 %45), !noalias !1263

  %53 = trunc i64 %52 to i32

  %54 = load i64, i64* %3, align 8

  store i32 %53, i32* bitcast (%dim_type* @dim to i32*)

  %55 = add i64 %54, 124

  br label %block_40086f



block_40075b:                                     ; preds = %block_40086f, %block_400720

  %56 = phi i64 [ %16, %block_400720 ], [ %256, %block_40086f ]

  %57 = phi i64 [ %14, %block_400720 ], [ %255, %block_40086f ]

  %58 = phi i64 [ %29, %block_400720 ], [ %254, %block_40086f ]

  %59 = phi %struct.Memory* [ %2, %block_400720 ], [ %253, %block_40086f ]

  store i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 4), i64* %7, align 8, !tbaa !1240

  %60 = add i64 %57, -4

  %61 = inttoptr i64 %60 to i32*

  %62 = load i32, i32* %61

  %63 = zext i32 %62 to i64

  %64 = add i64 %57, -16

  %65 = inttoptr i64 %64 to i64*

  %66 = load i64, i64* %65

  store i64 %66, i64* %8, align 8, !tbaa !1240

  %67 = add i64 %58, 22

  %68 = add i64 %56, -8

  %69 = inttoptr i64 %68 to i64*

  store i64 %67, i64* %69

  %70 = inttoptr i64 %68 to i64*

  %71 = load i64, i64* %70

  store i64 %71, i64* %3, align 8, !alias.scope !1268, !noalias !1271

  store i64 %56, i64* %10, align 8, !alias.scope !1268, !noalias !1271

  %72 = tail call i64 @getopt(i64 %63, i64 %66, i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 4)), !noalias !1268

  %73 = load i64, i64* %11, align 8

  %74 = add i64 %73, -20

  %75 = trunc i64 %72 to i32

  %76 = load i64, i64* %3, align 8

  %77 = inttoptr i64 %74 to i32*

  store i32 %75, i32* %77

  %78 = add i32 %75, 1

  %79 = icmp eq i32 %78, 0

  %80 = select i1 %79, i64 259, i64 12

  %81 = add i64 %76, %80

  br i1 %79, label %block_400874, label %block_40077d



block_4007cd:                                     ; preds = %block_4007b9

  %82 = inttoptr i64 %543 to i32*

  %83 = load i32, i32* %82

  %84 = add i32 %83, -115

  %85 = icmp eq i32 %84, 0

  %86 = add i64 %73, -44

  %87 = inttoptr i64 %86 to i32*

  store i32 %84, i32* %87

  %88 = select i1 %85, i64 100, i64 20

  %89 = add i64 %157, %88

  br i1 %85, label %block_400831, label %block_4007e1



block_40084a:                                     ; preds = %block_40077d

  %90 = add i64 %73, -16

  %91 = inttoptr i64 %90 to i64*

  %92 = load i64, i64* %91

  %93 = inttoptr i64 %92 to i64*

  %94 = load i64, i64* %93

  store i64 %94, i64* %8, align 8, !tbaa !1240

  %95 = add i64 %548, 24

  %96 = load i64, i64* %10, align 8, !tbaa !1240

  %97 = add i64 %96, -8

  %98 = inttoptr i64 %97 to i64*

  store i64 %95, i64* %98

  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %101 = load i64, i64* %7, align 8, !alias.scope !1273, !noalias !1276

  %102 = load i64, i64* %99, align 8, !alias.scope !1273, !noalias !1276

  %103 = load i64, i64* %100, align 8, !alias.scope !1273, !noalias !1276

  %104 = inttoptr i64 %96 to i64*

  %105 = load i64, i64* %104

  %106 = add i64 %96, 8

  %107 = inttoptr i64 %106 to i64*

  %108 = load i64, i64* %107

  %109 = add i64 %96, 16

  %110 = inttoptr i64 %109 to i64*

  %111 = load i64, i64* %110

  %112 = add i64 %96, 24

  %113 = inttoptr i64 %112 to i64*

  %114 = load i64, i64* %113

  %115 = add i64 %96, 32

  %116 = inttoptr i64 %115 to i64*

  %117 = load i64, i64* %116

  %118 = add i64 %96, 40

  %119 = inttoptr i64 %118 to i64*

  %120 = load i64, i64* %119

  %121 = add i64 %96, 48

  %122 = inttoptr i64 %121 to i64*

  %123 = load i64, i64* %122

  %124 = add i64 %96, 56

  %125 = inttoptr i64 %124 to i64*

  %126 = load i64, i64* %125

  %127 = add i64 %96, 64

  %128 = inttoptr i64 %127 to i64*

  %129 = load i64, i64* %128

  %130 = add i64 %96, 72

  %131 = inttoptr i64 %130 to i64*

  %132 = load i64, i64* %131

  %133 = inttoptr i64 %97 to i64*

  %134 = load i64, i64* %133

  store i64 %134, i64* %3, align 8, !alias.scope !1273, !noalias !1276

  store i64 %96, i64* %10, align 8, !alias.scope !1273, !noalias !1276

  %135 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 13), i64 %94, i64 %101, i64 %521, i64 %102, i64 %103, i64 %105, i64 %108, i64 %111, i64 %114, i64 %117, i64 %120, i64 %123, i64 %126, i64 %129, i64 %132), !noalias !1273

  %136 = load i64, i64* %3, align 8

  store i64 1, i64* %9, align 8, !tbaa !1240

  %137 = load i64, i64* %11, align 8

  %138 = add i64 %137, -48

  %139 = trunc i64 %135 to i32

  %140 = inttoptr i64 %138 to i32*

  store i32 %139, i32* %140

  %141 = add i64 %136, 13

  %142 = load i64, i64* %10, align 8, !tbaa !1240

  %143 = add i64 %142, -8

  %144 = inttoptr i64 %143 to i64*

  store i64 %141, i64* %144

  %145 = inttoptr i64 %143 to i64*

  %146 = load i64, i64* %145

  store i64 %146, i64* %3, align 8, !alias.scope !1278, !noalias !1281

  store i64 %142, i64* %10, align 8, !alias.scope !1278, !noalias !1281

  %147 = tail call i64 @exit(i64 1), !noalias !1278

  store i64 %147, i64* %30, align 8, !alias.scope !1278, !noalias !1281

  %148 = load i64, i64* %3, align 8

  %149 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %148, %struct.Memory* %59)

  ret %struct.Memory* %149



block_4007b9:                                     ; preds = %block_4007a5

  %150 = inttoptr i64 %543 to i32*

  %151 = load i32, i32* %150

  %152 = add i32 %151, -112

  %153 = icmp eq i32 %152, 0

  %154 = add i64 %73, -40

  %155 = inttoptr i64 %154 to i32*

  store i32 %152, i32* %155

  %156 = select i1 %153, i64 95, i64 20

  %157 = add i64 %236, %156

  br i1 %153, label %block_400818, label %block_4007cd



block_400831:                                     ; preds = %block_4007cd

  %158 = load i64, i64* @optarg

  %159 = add i64 %89, 13

  %160 = load i64, i64* %10, align 8, !tbaa !1240

  %161 = add i64 %160, -8

  %162 = inttoptr i64 %161 to i64*

  store i64 %159, i64* %162

  %163 = inttoptr i64 %161 to i64*

  %164 = load i64, i64* %163

  store i64 %164, i64* %3, align 8, !alias.scope !1283, !noalias !1286

  store i64 %160, i64* %10, align 8, !alias.scope !1283, !noalias !1286

  %165 = tail call i64 @atoi(i64 %158), !noalias !1283

  %166 = trunc i64 %165 to i32

  %167 = load i64, i64* %3, align 8

  store i32 %166, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %168 = add i64 %167, 49

  br label %block_40086f



block_4007e1:                                     ; preds = %block_4007cd

  %169 = add i64 %89, 142

  br label %block_40086f



block_4008ac:                                     ; preds = %block_400882, %block_400890, %block_40089e, %block_400874

  %170 = phi i64 [ %562, %block_400882 ], [ %517, %block_400890 ], [ %251, %block_40089e ], [ %44, %block_400874 ]

  %171 = add i64 %170, 17

  %172 = load i64, i64* %10, align 8, !tbaa !1240

  %173 = add i64 %172, -8

  %174 = inttoptr i64 %173 to i64*

  store i64 %171, i64* %174

  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %178 = load i64, i64* %8, align 8, !alias.scope !1288, !noalias !1291

  %179 = load i64, i64* %7, align 8, !alias.scope !1288, !noalias !1291

  %180 = load i64, i64* %175, align 8, !alias.scope !1288, !noalias !1291

  %181 = load i64, i64* %176, align 8, !alias.scope !1288, !noalias !1291

  %182 = load i64, i64* %177, align 8, !alias.scope !1288, !noalias !1291

  %183 = inttoptr i64 %172 to i64*

  %184 = load i64, i64* %183

  %185 = add i64 %172, 8

  %186 = inttoptr i64 %185 to i64*

  %187 = load i64, i64* %186

  %188 = add i64 %172, 16

  %189 = inttoptr i64 %188 to i64*

  %190 = load i64, i64* %189

  %191 = add i64 %172, 24

  %192 = inttoptr i64 %191 to i64*

  %193 = load i64, i64* %192

  %194 = add i64 %172, 32

  %195 = inttoptr i64 %194 to i64*

  %196 = load i64, i64* %195

  %197 = add i64 %172, 40

  %198 = inttoptr i64 %197 to i64*

  %199 = load i64, i64* %198

  %200 = add i64 %172, 48

  %201 = inttoptr i64 %200 to i64*

  %202 = load i64, i64* %201

  %203 = add i64 %172, 56

  %204 = inttoptr i64 %203 to i64*

  %205 = load i64, i64* %204

  %206 = add i64 %172, 64

  %207 = inttoptr i64 %206 to i64*

  %208 = load i64, i64* %207

  %209 = add i64 %172, 72

  %210 = inttoptr i64 %209 to i64*

  %211 = load i64, i64* %210

  %212 = inttoptr i64 %173 to i64*

  %213 = load i64, i64* %212

  store i64 %213, i64* %3, align 8, !alias.scope !1288, !noalias !1291

  store i64 %172, i64* %10, align 8, !alias.scope !1288, !noalias !1291

  %214 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 95), i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199, i64 %202, i64 %205, i64 %208, i64 %211), !noalias !1288

  %215 = load i64, i64* %3, align 8

  store i64 1, i64* %9, align 8, !tbaa !1240

  %216 = load i64, i64* %11, align 8

  %217 = add i64 %216, -52

  %218 = trunc i64 %214 to i32

  %219 = inttoptr i64 %217 to i32*

  store i32 %218, i32* %219

  %220 = add i64 %215, 13

  %221 = load i64, i64* %10, align 8, !tbaa !1240

  %222 = add i64 %221, -8

  %223 = inttoptr i64 %222 to i64*

  store i64 %220, i64* %223

  %224 = inttoptr i64 %222 to i64*

  %225 = load i64, i64* %224

  store i64 %225, i64* %3, align 8, !alias.scope !1293, !noalias !1296

  store i64 %221, i64* %10, align 8, !alias.scope !1293, !noalias !1296

  %226 = tail call i64 @exit(i64 1), !noalias !1293

  store i64 %226, i64* %30, align 8, !alias.scope !1293, !noalias !1296

  %227 = load i64, i64* %3, align 8

  %228 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %227, %struct.Memory* %59)

  ret %struct.Memory* %228



block_4007a5:                                     ; preds = %block_400791

  %229 = inttoptr i64 %543 to i32*

  %230 = load i32, i32* %229

  %231 = add i32 %230, -100

  %232 = icmp eq i32 %231, 0

  %233 = add i64 %73, -36

  %234 = inttoptr i64 %233 to i32*

  store i32 %231, i32* %234

  %235 = select i1 %232, i64 65, i64 20

  %236 = add i64 %275, %235

  br i1 %232, label %block_4007e6, label %block_4007b9



block_40089e:                                     ; preds = %block_400890

  %237 = load i32, i32* bitcast (%grid_size_type* @grid_size to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1244

  %238 = and i32 %237, 255

  %239 = tail call i32 @llvm.ctpop.i32(i32 %238) #9

  %240 = trunc i32 %239 to i8

  %241 = and i8 %240, 1

  %242 = xor i8 %241, 1

  store i8 %242, i8* %18, align 1, !tbaa !1258

  store i8 0, i8* %19, align 1, !tbaa !1259

  %243 = icmp eq i32 %237, 0

  %244 = zext i1 %243 to i8

  store i8 %244, i8* %20, align 1, !tbaa !1260

  %245 = lshr i32 %237, 31

  %246 = trunc i32 %245 to i8

  store i8 %246, i8* %21, align 1, !tbaa !1261

  store i8 0, i8* %22, align 1, !tbaa !1262

  %247 = xor i1 %243, true

  %248 = icmp eq i8 %246, 0

  %249 = and i1 %248, %247

  %250 = select i1 %249, i64 44, i64 14

  %251 = add i64 %517, %250

  br i1 %249, label %block_4008ca, label %block_4008ac



block_40086f:                                     ; preds = %block_4007ff, %block_400818, %block_4007e1, %block_400831, %block_4007e6

  %252 = phi i64 [ %286, %block_4007ff ], [ %267, %block_400818 ], [ %169, %block_4007e1 ], [ %168, %block_400831 ], [ %55, %block_4007e6 ]

  %253 = phi %struct.Memory* [ %59, %block_4007ff ], [ %59, %block_400818 ], [ %59, %block_4007e1 ], [ %59, %block_400831 ], [ %59, %block_4007e6 ]

  %254 = add i64 %252, -276

  %255 = load i64, i64* %11, align 8

  %256 = load i64, i64* %10, align 8, !tbaa !1240

  br label %block_40075b



block_400818:                                     ; preds = %block_4007b9

  %257 = load i64, i64* @optarg

  %258 = add i64 %157, 13

  %259 = load i64, i64* %10, align 8, !tbaa !1240

  %260 = add i64 %259, -8

  %261 = inttoptr i64 %260 to i64*

  store i64 %258, i64* %261

  %262 = inttoptr i64 %260 to i64*

  %263 = load i64, i64* %262

  store i64 %263, i64* %3, align 8, !alias.scope !1298, !noalias !1301

  store i64 %259, i64* %10, align 8, !alias.scope !1298, !noalias !1301

  %264 = tail call i64 @atoi(i64 %257), !noalias !1298

  %265 = trunc i64 %264 to i32

  %266 = load i64, i64* %3, align 8

  store i32 %265, i32* bitcast (%num_points_type* @num_points to i32*)

  %267 = add i64 %266, 74

  br label %block_40086f



block_400791:                                     ; preds = %block_40077d

  %268 = inttoptr i64 %543 to i32*

  %269 = load i32, i32* %268

  %270 = add i32 %269, -99

  %271 = icmp eq i32 %270, 0

  %272 = add i64 %73, -32

  %273 = inttoptr i64 %272 to i32*

  store i32 %270, i32* %273

  %274 = select i1 %271, i64 110, i64 20

  %275 = add i64 %548, %274

  br i1 %271, label %block_4007ff, label %block_4007a5



block_4007ff:                                     ; preds = %block_400791

  %276 = load i64, i64* @optarg

  %277 = add i64 %275, 13

  %278 = load i64, i64* %10, align 8, !tbaa !1240

  %279 = add i64 %278, -8

  %280 = inttoptr i64 %279 to i64*

  store i64 %277, i64* %280

  %281 = inttoptr i64 %279 to i64*

  %282 = load i64, i64* %281

  store i64 %282, i64* %3, align 8, !alias.scope !1303, !noalias !1306

  store i64 %278, i64* %10, align 8, !alias.scope !1303, !noalias !1306

  %283 = tail call i64 @atoi(i64 %276), !noalias !1303

  %284 = trunc i64 %283 to i32

  %285 = load i64, i64* %3, align 8

  store i32 %284, i32* bitcast (%num_means_type* @num_means to i32*)

  %286 = add i64 %285, 99

  br label %block_40086f



block_4008ca:                                     ; preds = %block_40089e

  %287 = zext i32 %31 to i64

  %288 = add i64 %251, 24

  %289 = load i64, i64* %10, align 8, !tbaa !1240

  %290 = add i64 %289, -8

  %291 = inttoptr i64 %290 to i64*

  store i64 %288, i64* %291

  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %295 = load i64, i64* %7, align 8, !alias.scope !1308, !noalias !1311

  %296 = load i64, i64* %292, align 8, !alias.scope !1308, !noalias !1311

  %297 = load i64, i64* %293, align 8, !alias.scope !1308, !noalias !1311

  %298 = load i64, i64* %294, align 8, !alias.scope !1308, !noalias !1311

  %299 = inttoptr i64 %289 to i64*

  %300 = load i64, i64* %299

  %301 = add i64 %289, 8

  %302 = inttoptr i64 %301 to i64*

  %303 = load i64, i64* %302

  %304 = add i64 %289, 16

  %305 = inttoptr i64 %304 to i64*

  %306 = load i64, i64* %305

  %307 = add i64 %289, 24

  %308 = inttoptr i64 %307 to i64*

  %309 = load i64, i64* %308

  %310 = add i64 %289, 32

  %311 = inttoptr i64 %310 to i64*

  %312 = load i64, i64* %311

  %313 = add i64 %289, 40

  %314 = inttoptr i64 %313 to i64*

  %315 = load i64, i64* %314

  %316 = add i64 %289, 48

  %317 = inttoptr i64 %316 to i64*

  %318 = load i64, i64* %317

  %319 = add i64 %289, 56

  %320 = inttoptr i64 %319 to i64*

  %321 = load i64, i64* %320

  %322 = add i64 %289, 64

  %323 = inttoptr i64 %322 to i64*

  %324 = load i64, i64* %323

  %325 = add i64 %289, 72

  %326 = inttoptr i64 %325 to i64*

  %327 = load i64, i64* %326

  %328 = inttoptr i64 %290 to i64*

  %329 = load i64, i64* %328

  store i64 %329, i64* %3, align 8, !alias.scope !1308, !noalias !1311

  store i64 %289, i64* %10, align 8, !alias.scope !1308, !noalias !1311

  %330 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 166), i64 %287, i64 %295, i64 %296, i64 %297, i64 %298, i64 %300, i64 %303, i64 %306, i64 %309, i64 %312, i64 %315, i64 %318, i64 %321, i64 %324, i64 %327), !noalias !1308

  %331 = load i64, i64* %3, align 8

  %332 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %333 = zext i32 %332 to i64

  %334 = load i64, i64* %11, align 8

  %335 = add i64 %334, -56

  %336 = trunc i64 %330 to i32

  %337 = inttoptr i64 %335 to i32*

  store i32 %336, i32* %337

  %338 = add i64 %331, 27

  %339 = load i64, i64* %10, align 8, !tbaa !1240

  %340 = add i64 %339, -8

  %341 = inttoptr i64 %340 to i64*

  store i64 %338, i64* %341

  %342 = load i64, i64* %7, align 8, !alias.scope !1313, !noalias !1316

  %343 = load i64, i64* %292, align 8, !alias.scope !1313, !noalias !1316

  %344 = load i64, i64* %293, align 8, !alias.scope !1313, !noalias !1316

  %345 = load i64, i64* %294, align 8, !alias.scope !1313, !noalias !1316

  %346 = inttoptr i64 %339 to i64*

  %347 = load i64, i64* %346

  %348 = add i64 %339, 8

  %349 = inttoptr i64 %348 to i64*

  %350 = load i64, i64* %349

  %351 = add i64 %339, 16

  %352 = inttoptr i64 %351 to i64*

  %353 = load i64, i64* %352

  %354 = add i64 %339, 24

  %355 = inttoptr i64 %354 to i64*

  %356 = load i64, i64* %355

  %357 = add i64 %339, 32

  %358 = inttoptr i64 %357 to i64*

  %359 = load i64, i64* %358

  %360 = add i64 %339, 40

  %361 = inttoptr i64 %360 to i64*

  %362 = load i64, i64* %361

  %363 = add i64 %339, 48

  %364 = inttoptr i64 %363 to i64*

  %365 = load i64, i64* %364

  %366 = add i64 %339, 56

  %367 = inttoptr i64 %366 to i64*

  %368 = load i64, i64* %367

  %369 = add i64 %339, 64

  %370 = inttoptr i64 %369 to i64*

  %371 = load i64, i64* %370

  %372 = add i64 %339, 72

  %373 = inttoptr i64 %372 to i64*

  %374 = load i64, i64* %373

  %375 = inttoptr i64 %340 to i64*

  %376 = load i64, i64* %375

  store i64 %376, i64* %3, align 8, !alias.scope !1313, !noalias !1316

  store i64 %339, i64* %10, align 8, !alias.scope !1313, !noalias !1316

  %377 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 182), i64 %333, i64 %342, i64 %343, i64 %344, i64 %345, i64 %347, i64 %350, i64 %353, i64 %356, i64 %359, i64 %362, i64 %365, i64 %368, i64 %371, i64 %374), !noalias !1313

  %378 = load i64, i64* %3, align 8

  %379 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %380 = zext i32 %379 to i64

  %381 = load i64, i64* %11, align 8

  %382 = add i64 %381, -60

  %383 = trunc i64 %377 to i32

  %384 = inttoptr i64 %382 to i32*

  store i32 %383, i32* %384

  %385 = add i64 %378, 27

  %386 = load i64, i64* %10, align 8, !tbaa !1240

  %387 = add i64 %386, -8

  %388 = inttoptr i64 %387 to i64*

  store i64 %385, i64* %388

  %389 = load i64, i64* %7, align 8, !alias.scope !1318, !noalias !1321

  %390 = load i64, i64* %292, align 8, !alias.scope !1318, !noalias !1321

  %391 = load i64, i64* %293, align 8, !alias.scope !1318, !noalias !1321

  %392 = load i64, i64* %294, align 8, !alias.scope !1318, !noalias !1321

  %393 = inttoptr i64 %386 to i64*

  %394 = load i64, i64* %393

  %395 = add i64 %386, 8

  %396 = inttoptr i64 %395 to i64*

  %397 = load i64, i64* %396

  %398 = add i64 %386, 16

  %399 = inttoptr i64 %398 to i64*

  %400 = load i64, i64* %399

  %401 = add i64 %386, 24

  %402 = inttoptr i64 %401 to i64*

  %403 = load i64, i64* %402

  %404 = add i64 %386, 32

  %405 = inttoptr i64 %404 to i64*

  %406 = load i64, i64* %405

  %407 = add i64 %386, 40

  %408 = inttoptr i64 %407 to i64*

  %409 = load i64, i64* %408

  %410 = add i64 %386, 48

  %411 = inttoptr i64 %410 to i64*

  %412 = load i64, i64* %411

  %413 = add i64 %386, 56

  %414 = inttoptr i64 %413 to i64*

  %415 = load i64, i64* %414

  %416 = add i64 %386, 64

  %417 = inttoptr i64 %416 to i64*

  %418 = load i64, i64* %417

  %419 = add i64 %386, 72

  %420 = inttoptr i64 %419 to i64*

  %421 = load i64, i64* %420

  %422 = inttoptr i64 %387 to i64*

  %423 = load i64, i64* %422

  store i64 %423, i64* %3, align 8, !alias.scope !1318, !noalias !1321

  store i64 %386, i64* %10, align 8, !alias.scope !1318, !noalias !1321

  %424 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 207), i64 %380, i64 %389, i64 %390, i64 %391, i64 %392, i64 %394, i64 %397, i64 %400, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418, i64 %421), !noalias !1318

  %425 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 230), i64* %9, align 8, !tbaa !1240

  %426 = load i32, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %427 = zext i32 %426 to i64

  store i64 %427, i64* %8, align 8, !tbaa !1240

  %428 = load i64, i64* %11, align 8

  %429 = add i64 %428, -64

  %430 = trunc i64 %424 to i32

  %431 = inttoptr i64 %429 to i32*

  store i32 %430, i32* %431

  %432 = add i64 %425, 27

  %433 = load i64, i64* %10, align 8, !tbaa !1240

  %434 = add i64 %433, -8

  %435 = inttoptr i64 %434 to i64*

  store i64 %432, i64* %435

  %436 = load i64, i64* %7, align 8, !alias.scope !1323, !noalias !1326

  %437 = load i64, i64* %292, align 8, !alias.scope !1323, !noalias !1326

  %438 = load i64, i64* %293, align 8, !alias.scope !1323, !noalias !1326

  %439 = load i64, i64* %294, align 8, !alias.scope !1323, !noalias !1326

  %440 = inttoptr i64 %433 to i64*

  %441 = load i64, i64* %440

  %442 = add i64 %433, 8

  %443 = inttoptr i64 %442 to i64*

  %444 = load i64, i64* %443

  %445 = add i64 %433, 16

  %446 = inttoptr i64 %445 to i64*

  %447 = load i64, i64* %446

  %448 = add i64 %433, 24

  %449 = inttoptr i64 %448 to i64*

  %450 = load i64, i64* %449

  %451 = add i64 %433, 32

  %452 = inttoptr i64 %451 to i64*

  %453 = load i64, i64* %452

  %454 = add i64 %433, 40

  %455 = inttoptr i64 %454 to i64*

  %456 = load i64, i64* %455

  %457 = add i64 %433, 48

  %458 = inttoptr i64 %457 to i64*

  %459 = load i64, i64* %458

  %460 = add i64 %433, 56

  %461 = inttoptr i64 %460 to i64*

  %462 = load i64, i64* %461

  %463 = add i64 %433, 64

  %464 = inttoptr i64 %463 to i64*

  %465 = load i64, i64* %464

  %466 = add i64 %433, 72

  %467 = inttoptr i64 %466 to i64*

  %468 = load i64, i64* %467

  store i64 %433, i64* %10, align 8, !alias.scope !1323, !noalias !1326

  %469 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 230), i64 %427, i64 %436, i64 %437, i64 %438, i64 %439, i64 %441, i64 %444, i64 %447, i64 %450, i64 %453, i64 %456, i64 %459, i64 %462, i64 %465, i64 %468), !noalias !1323

  store i64 %469, i64* %30, align 8, !alias.scope !1323, !noalias !1326

  %470 = load i64, i64* %11, align 8

  %471 = add i64 %470, -68

  %472 = trunc i64 %469 to i32

  %473 = inttoptr i64 %471 to i32*

  store i32 %472, i32* %473

  %474 = load i64, i64* %10, align 8

  %475 = add i64 %474, 80

  %476 = icmp ugt i64 %474, -81

  %477 = zext i1 %476 to i8

  store i8 %477, i8* %17, align 1, !tbaa !1244

  %478 = trunc i64 %475 to i32

  %479 = and i32 %478, 255

  %480 = tail call i32 @llvm.ctpop.i32(i32 %479) #9

  %481 = trunc i32 %480 to i8

  %482 = and i8 %481, 1

  %483 = xor i8 %482, 1

  store i8 %483, i8* %18, align 1, !tbaa !1258

  %484 = xor i64 %474, 16

  %485 = xor i64 %484, %475

  %486 = lshr i64 %485, 4

  %487 = trunc i64 %486 to i8

  %488 = and i8 %487, 1

  store i8 %488, i8* %19, align 1, !tbaa !1259

  %489 = icmp eq i64 %475, 0

  %490 = zext i1 %489 to i8

  store i8 %490, i8* %20, align 1, !tbaa !1260

  %491 = lshr i64 %475, 63

  %492 = trunc i64 %491 to i8

  store i8 %492, i8* %21, align 1, !tbaa !1261

  %493 = lshr i64 %474, 63

  %494 = xor i64 %491, %493

  %495 = add nuw nsw i64 %494, %491

  %496 = icmp eq i64 %495, 2

  %497 = zext i1 %496 to i8

  store i8 %497, i8* %22, align 1, !tbaa !1262

  %498 = add i64 %474, 88

  %499 = inttoptr i64 %475 to i64*

  %500 = load i64, i64* %499

  store i64 %500, i64* %11, align 8, !tbaa !1240

  %501 = inttoptr i64 %498 to i64*

  %502 = load i64, i64* %501

  store i64 %502, i64* %3, align 8, !tbaa !1240

  %503 = add i64 %474, 96

  store i64 %503, i64* %10, align 8, !tbaa !1240

  ret %struct.Memory* %59



block_400890:                                     ; preds = %block_400882

  %504 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1244

  %505 = and i32 %504, 255

  %506 = tail call i32 @llvm.ctpop.i32(i32 %505) #9

  %507 = trunc i32 %506 to i8

  %508 = and i8 %507, 1

  %509 = xor i8 %508, 1

  store i8 %509, i8* %18, align 1, !tbaa !1258

  store i8 0, i8* %19, align 1, !tbaa !1259

  %510 = icmp eq i32 %504, 0

  %511 = zext i1 %510 to i8

  store i8 %511, i8* %20, align 1, !tbaa !1260

  %512 = lshr i32 %504, 31

  %513 = trunc i32 %512 to i8

  store i8 %513, i8* %21, align 1, !tbaa !1261

  store i8 0, i8* %22, align 1, !tbaa !1262

  %514 = icmp ne i8 %513, 0

  %515 = or i1 %510, %514

  %516 = select i1 %515, i64 28, i64 14

  %517 = add i64 %562, %516

  br i1 %515, label %block_4008ac, label %block_40089e



block_40077d:                                     ; preds = %block_40075b

  %518 = inttoptr i64 %74 to i32*

  %519 = load i32, i32* %518

  %520 = add i32 %519, -63

  %521 = zext i32 %520 to i64

  store i64 %521, i64* %6, align 8, !tbaa !1240

  %522 = icmp ult i32 %519, 63

  %523 = zext i1 %522 to i8

  store i8 %523, i8* %17, align 1, !tbaa !1244

  %524 = and i32 %520, 255

  %525 = tail call i32 @llvm.ctpop.i32(i32 %524) #9

  %526 = trunc i32 %525 to i8

  %527 = and i8 %526, 1

  %528 = xor i8 %527, 1

  store i8 %528, i8* %18, align 1, !tbaa !1258

  %529 = xor i32 %519, 16

  %530 = xor i32 %529, %520

  %531 = lshr i32 %530, 4

  %532 = trunc i32 %531 to i8

  %533 = and i8 %532, 1

  store i8 %533, i8* %19, align 1, !tbaa !1259

  %534 = icmp eq i32 %520, 0

  %535 = zext i1 %534 to i8

  store i8 %535, i8* %20, align 1, !tbaa !1260

  %536 = lshr i32 %520, 31

  %537 = trunc i32 %536 to i8

  store i8 %537, i8* %21, align 1, !tbaa !1261

  %538 = lshr i32 %519, 31

  %539 = xor i32 %536, %538

  %540 = add nuw nsw i32 %539, %538

  %541 = icmp eq i32 %540, 2

  %542 = zext i1 %541 to i8

  store i8 %542, i8* %22, align 1, !tbaa !1262

  %543 = add i64 %73, -24

  %544 = inttoptr i64 %543 to i32*

  store i32 %519, i32* %544

  %545 = add i64 %73, -28

  %546 = inttoptr i64 %545 to i32*

  store i32 %520, i32* %546

  %547 = select i1 %534, i64 205, i64 20

  %548 = add i64 %81, %547

  br i1 %534, label %block_40084a, label %block_400791



block_400882:                                     ; preds = %block_400874

  %549 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1244

  %550 = and i32 %549, 255

  %551 = tail call i32 @llvm.ctpop.i32(i32 %550) #9

  %552 = trunc i32 %551 to i8

  %553 = and i8 %552, 1

  %554 = xor i8 %553, 1

  store i8 %554, i8* %18, align 1, !tbaa !1258

  store i8 0, i8* %19, align 1, !tbaa !1259

  %555 = icmp eq i32 %549, 0

  %556 = zext i1 %555 to i8

  store i8 %556, i8* %20, align 1, !tbaa !1260

  %557 = lshr i32 %549, 31

  %558 = trunc i32 %557 to i8

  store i8 %558, i8* %21, align 1, !tbaa !1261

  store i8 0, i8* %22, align 1, !tbaa !1262

  %559 = icmp ne i8 %558, 0

  %560 = or i1 %555, %559

  %561 = select i1 %560, i64 42, i64 14

  %562 = add i64 %44, %561

  br i1 %560, label %block_4008ac, label %block_400890

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400a10_find_clusters(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400a10:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = load i64, i64* %12, align 8

  %14 = load i64, i64* %11, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %12, align 8, !tbaa !1240

  %17 = add i64 %14, -56

  store i64 %17, i64* %11, align 8, !tbaa !1240

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %24 = add i64 %14, -16

  %25 = load i64, i64* %10, align 8

  %26 = inttoptr i64 %24 to i64*

  store i64 %25, i64* %26

  %27 = add i64 %14, -24

  %28 = load i64, i64* %9, align 8

  %29 = inttoptr i64 %27 to i64*

  store i64 %28, i64* %29

  %30 = add i64 %14, -32

  %31 = load i64, i64* %8, align 8

  %32 = inttoptr i64 %30 to i64*

  store i64 %31, i64* %32

  %33 = add i64 %14, -36

  %34 = add i64 %1, 27

  %35 = inttoptr i64 %33 to i32*

  store i32 0, i32* %35

  br label %block_400a2b



block_400aff:                                     ; preds = %block_400a2b

  %36 = load i64, i64* %11, align 8

  %37 = add i64 %36, 48

  %38 = icmp ugt i64 %36, -49

  %39 = zext i1 %38 to i8

  store i8 %39, i8* %18, align 1, !tbaa !1244

  %40 = trunc i64 %37 to i32

  %41 = and i32 %40, 255

  %42 = tail call i32 @llvm.ctpop.i32(i32 %41) #9

  %43 = trunc i32 %42 to i8

  %44 = and i8 %43, 1

  %45 = xor i8 %44, 1

  store i8 %45, i8* %19, align 1, !tbaa !1258

  %46 = xor i64 %36, 16

  %47 = xor i64 %46, %37

  %48 = lshr i64 %47, 4

  %49 = trunc i64 %48 to i8

  %50 = and i8 %49, 1

  store i8 %50, i8* %20, align 1, !tbaa !1259

  %51 = icmp eq i64 %37, 0

  %52 = zext i1 %51 to i8

  store i8 %52, i8* %21, align 1, !tbaa !1260

  %53 = lshr i64 %37, 63

  %54 = trunc i64 %53 to i8

  store i8 %54, i8* %22, align 1, !tbaa !1261

  %55 = lshr i64 %36, 63

  %56 = xor i64 %53, %55

  %57 = add nuw nsw i64 %56, %53

  %58 = icmp eq i64 %57, 2

  %59 = zext i1 %58 to i8

  store i8 %59, i8* %23, align 1, !tbaa !1262

  %60 = add i64 %36, 56

  %61 = inttoptr i64 %37 to i64*

  %62 = load i64, i64* %61

  store i64 %62, i64* %12, align 8, !tbaa !1240

  %63 = inttoptr i64 %60 to i64*

  %64 = load i64, i64* %63

  store i64 %64, i64* %3, align 8, !tbaa !1240

  %65 = add i64 %36, 64

  store i64 %65, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %163



block_400abf:                                     ; preds = %block_400a64

  %66 = add i64 %190, -24

  %67 = inttoptr i64 %66 to i64*

  %68 = load i64, i64* %67

  %69 = add i64 %190, -28

  %70 = inttoptr i64 %69 to i32*

  %71 = load i32, i32* %70

  %72 = sext i32 %71 to i64

  store i64 %72, i64* %7, align 8, !tbaa !1240

  %73 = shl nsw i64 %72, 2

  %74 = add i64 %73, %68

  %75 = inttoptr i64 %74 to i32*

  %76 = load i32, i32* %75

  %77 = zext i32 %76 to i64

  store i64 %77, i64* %8, align 8, !tbaa !1240

  %78 = add i64 %190, -44

  %79 = inttoptr i64 %78 to i32*

  %80 = load i32, i32* %79

  %81 = sub i32 %76, %80

  %82 = icmp eq i32 %81, 0

  %83 = select i1 %82, i64 45, i64 20

  %84 = add i64 %208, %83

  br i1 %82, label %block_400aec, label %block_400ad3



block_400a3b:                                     ; preds = %block_400a2b

  %85 = add i64 %162, -8

  %86 = inttoptr i64 %85 to i64*

  %87 = load i64, i64* %86

  %88 = sext i32 %166 to i64

  store i64 %88, i64* %7, align 8, !tbaa !1240

  %89 = shl nsw i64 %88, 3

  %90 = add i64 %89, %87

  %91 = inttoptr i64 %90 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %10, align 8, !tbaa !1240

  %93 = add i64 %162, -16

  %94 = inttoptr i64 %93 to i64*

  %95 = load i64, i64* %94

  %96 = inttoptr i64 %95 to i64*

  %97 = load i64, i64* %96

  store i64 %97, i64* %9, align 8, !tbaa !1240

  %98 = add i64 %181, 213

  %99 = add i64 %181, 24

  %100 = load i64, i64* %11, align 8, !tbaa !1240

  %101 = add i64 %100, -8

  %102 = inttoptr i64 %101 to i64*

  store i64 %99, i64* %102

  store i64 %101, i64* %11, align 8, !tbaa !1240

  %103 = tail call %struct.Memory* @sub_400b10_get_sq_dist(%struct.State* nonnull %0, i64 %98, %struct.Memory* %163)

  %104 = load i64, i64* %12, align 8

  %105 = add i64 %104, -36

  %106 = load i32, i32* %5, align 4

  %107 = load i64, i64* %3, align 8

  %108 = inttoptr i64 %105 to i32*

  store i32 %106, i32* %108

  %109 = add i64 %104, -44

  %110 = inttoptr i64 %109 to i32*

  store i32 0, i32* %110

  %111 = add i64 %104, -32

  %112 = add i64 %107, 17

  %113 = inttoptr i64 %111 to i32*

  store i32 1, i32* %113

  br label %block_400a64



block_400a74:                                     ; preds = %block_400a64

  %114 = add i64 %190, -8

  %115 = inttoptr i64 %114 to i64*

  %116 = load i64, i64* %115

  %117 = add i64 %190, -28

  %118 = inttoptr i64 %117 to i32*

  %119 = load i32, i32* %118

  %120 = sext i32 %119 to i64

  %121 = shl nsw i64 %120, 3

  %122 = add i64 %121, %116

  %123 = inttoptr i64 %122 to i64*

  %124 = load i64, i64* %123

  store i64 %124, i64* %10, align 8, !tbaa !1240

  %125 = add i64 %190, -16

  %126 = inttoptr i64 %125 to i64*

  %127 = load i64, i64* %126

  %128 = sext i32 %194 to i64

  store i64 %128, i64* %7, align 8, !tbaa !1240

  %129 = shl nsw i64 %128, 3

  %130 = add i64 %129, %127

  %131 = inttoptr i64 %130 to i64*

  %132 = load i64, i64* %131

  store i64 %132, i64* %9, align 8, !tbaa !1240

  %133 = add i64 %208, 156

  %134 = add i64 %208, 29

  %135 = load i64, i64* %11, align 8, !tbaa !1240

  %136 = add i64 %135, -8

  %137 = inttoptr i64 %136 to i64*

  store i64 %134, i64* %137

  store i64 %136, i64* %11, align 8, !tbaa !1240

  %138 = tail call %struct.Memory* @sub_400b10_get_sq_dist(%struct.State* nonnull %0, i64 %133, %struct.Memory* %191)

  %139 = load i64, i64* %12, align 8

  %140 = add i64 %139, -40

  %141 = load i32, i32* %5, align 4

  %142 = load i64, i64* %3, align 8

  %143 = inttoptr i64 %140 to i32*

  store i32 %141, i32* %143

  %144 = inttoptr i64 %140 to i32*

  %145 = load i32, i32* %144

  %146 = add i64 %139, -36

  %147 = inttoptr i64 %146 to i32*

  %148 = load i32, i32* %147

  %149 = icmp ult i32 %145, %148

  %150 = select i1 %149, i64 15, i64 27

  %151 = add i64 %142, %150

  br i1 %149, label %block_400aa0, label %block_400a74.block_400aac_crit_edge



block_400a74.block_400aac_crit_edge:              ; preds = %block_400a74

  %152 = add i64 %139, -32

  br label %block_400aac



block_400aac:                                     ; preds = %block_400aa0, %block_400a74.block_400aac_crit_edge

  %153 = phi i64 [ %152, %block_400a74.block_400aac_crit_edge ], [ %212, %block_400aa0 ]

  %154 = phi i64 [ %151, %block_400a74.block_400aac_crit_edge ], [ %216, %block_400aa0 ]

  %155 = phi %struct.Memory* [ %138, %block_400a74.block_400aac_crit_edge ], [ %138, %block_400aa0 ]

  %156 = inttoptr i64 %153 to i32*

  %157 = load i32, i32* %156

  %158 = add i32 %157, 1

  %159 = inttoptr i64 %153 to i32*

  store i32 %158, i32* %159

  %160 = add i64 %154, -72

  br label %block_400a64



block_400a2b:                                     ; preds = %block_400aec, %block_400a10

  %161 = phi i64 [ %34, %block_400a10 ], [ %188, %block_400aec ]

  %162 = phi i64 [ %15, %block_400a10 ], [ %190, %block_400aec ]

  %163 = phi %struct.Memory* [ %2, %block_400a10 ], [ %183, %block_400aec ]

  %164 = add i64 %162, -28

  %165 = inttoptr i64 %164 to i32*

  %166 = load i32, i32* %165

  %167 = zext i32 %166 to i64

  store i64 %167, i64* %6, align 8, !tbaa !1240

  %168 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %169 = sub i32 %166, %168

  %170 = lshr i32 %169, 31

  %171 = trunc i32 %170 to i8

  %172 = lshr i32 %166, 31

  %173 = lshr i32 %168, 31

  %174 = xor i32 %173, %172

  %175 = xor i32 %170, %172

  %176 = add nuw nsw i32 %175, %174

  %177 = icmp eq i32 %176, 2

  %178 = icmp ne i8 %171, 0

  %179 = xor i1 %178, %177

  %180 = select i1 %179, i64 16, i64 212

  %181 = add i64 %161, %180

  br i1 %179, label %block_400a3b, label %block_400aff



block_400aec:                                     ; preds = %block_400ad3, %block_400abf

  %182 = phi i64 [ %84, %block_400abf ], [ %210, %block_400ad3 ]

  %183 = phi %struct.Memory* [ %191, %block_400abf ], [ %191, %block_400ad3 ]

  %184 = inttoptr i64 %69 to i32*

  %185 = load i32, i32* %184

  %186 = add i32 %185, 1

  %187 = inttoptr i64 %69 to i32*

  store i32 %186, i32* %187

  %188 = add i64 %182, -193

  br label %block_400a2b



block_400a64:                                     ; preds = %block_400aac, %block_400a3b

  %189 = phi i64 [ %112, %block_400a3b ], [ %160, %block_400aac ]

  %190 = phi i64 [ %104, %block_400a3b ], [ %139, %block_400aac ]

  %191 = phi %struct.Memory* [ %103, %block_400a3b ], [ %155, %block_400aac ]

  %192 = add i64 %190, -32

  %193 = inttoptr i64 %192 to i32*

  %194 = load i32, i32* %193

  %195 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %196 = sub i32 %194, %195

  %197 = lshr i32 %196, 31

  %198 = trunc i32 %197 to i8

  %199 = lshr i32 %194, 31

  %200 = lshr i32 %195, 31

  %201 = xor i32 %200, %199

  %202 = xor i32 %197, %199

  %203 = add nuw nsw i32 %202, %201

  %204 = icmp eq i32 %203, 2

  %205 = icmp ne i8 %198, 0

  %206 = xor i1 %205, %204

  %207 = select i1 %206, i64 16, i64 91

  %208 = add i64 %189, %207

  br i1 %206, label %block_400a74, label %block_400abf



block_400ad3:                                     ; preds = %block_400abf

  store i64 %68, i64* %7, align 8, !tbaa !1240

  store i64 %72, i64* %8, align 8, !tbaa !1240

  %209 = inttoptr i64 %74 to i32*

  store i32 %80, i32* %209

  %210 = add i64 %84, 25

  store i32 1, i32* bitcast (%modified_type* @modified to i32*)

  br label %block_400aec



block_400aa0:                                     ; preds = %block_400a74

  %211 = inttoptr i64 %146 to i32*

  store i32 %145, i32* %211

  %212 = add i64 %139, -32

  %213 = inttoptr i64 %212 to i32*

  %214 = load i32, i32* %213

  %215 = add i64 %139, -44

  %216 = add i64 %151, 12

  %217 = inttoptr i64 %215 to i32*

  store i32 %214, i32* %217

  br label %block_400aac

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4009c0_add_to_sum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4009c0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %11 = load i64, i64* %10, align 8

  %12 = load i64, i64* %9, align 8, !tbaa !1240

  %13 = add i64 %12, -8

  %14 = inttoptr i64 %13 to i64*

  store i64 %11, i64* %14

  %15 = add i64 %12, -16

  %16 = load i64, i64* %8, align 8

  %17 = inttoptr i64 %15 to i64*

  store i64 %16, i64* %17

  %18 = add i64 %12, -24

  %19 = load i64, i64* %7, align 8

  %20 = inttoptr i64 %18 to i64*

  store i64 %19, i64* %20

  %21 = add i64 %12, -28

  %22 = inttoptr i64 %21 to i32*

  store i32 0, i32* %22

  %23 = add i64 %12, -28

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %27 = add i64 %12, -24

  %28 = add i64 %12, -16

  br label %block_4009d3



block_4009d3:                                     ; preds = %block_4009e3, %block_4009c0

  %29 = phi %struct.Memory* [ %2, %block_4009c0 ], [ %29, %block_4009e3 ]

  %30 = inttoptr i64 %23 to i32*

  %31 = load i32, i32* %30

  %32 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %33 = sub i32 %31, %32

  %34 = lshr i32 %33, 31

  %35 = trunc i32 %34 to i8

  %36 = lshr i32 %31, 31

  %37 = lshr i32 %32, 31

  %38 = xor i32 %37, %36

  %39 = xor i32 %34, %36

  %40 = add nuw nsw i32 %39, %38

  %41 = icmp eq i32 %40, 2

  %42 = icmp ne i8 %35, 0

  %43 = xor i1 %42, %41

  br i1 %43, label %block_4009e3, label %block_400a0a



block_400a0a:                                     ; preds = %block_4009d3

  %44 = zext i32 %31 to i64

  store i64 %44, i64* %4, align 8, !tbaa !1240

  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %48 = icmp ult i32 %31, %32

  %49 = zext i1 %48 to i8

  %50 = and i32 %33, 255

  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #9

  %52 = trunc i32 %51 to i8

  %53 = and i8 %52, 1

  %54 = xor i8 %53, 1

  %55 = xor i32 %32, %31

  %56 = xor i32 %55, %33

  %57 = lshr i32 %56, 4

  %58 = trunc i32 %57 to i8

  %59 = and i8 %58, 1

  %60 = icmp eq i32 %33, 0

  %61 = zext i1 %60 to i8

  %62 = zext i1 %41 to i8

  store i8 %49, i8* %24, align 1, !tbaa !1244

  store i8 %54, i8* %45, align 1, !tbaa !1258

  store i8 %59, i8* %25, align 1, !tbaa !1259

  store i8 %61, i8* %46, align 1, !tbaa !1260

  store i8 %35, i8* %26, align 1, !tbaa !1261

  store i8 %62, i8* %47, align 1, !tbaa !1262

  %63 = inttoptr i64 %13 to i64*

  %64 = load i64, i64* %63

  store i64 %64, i64* %10, align 8, !tbaa !1240

  %65 = inttoptr i64 %12 to i64*

  %66 = load i64, i64* %65

  store i64 %66, i64* %3, align 8, !tbaa !1240

  %67 = add i64 %12, 8

  store i64 %67, i64* %9, align 8, !tbaa !1240

  ret %struct.Memory* %29



block_4009e3:                                     ; preds = %block_4009d3

  %68 = inttoptr i64 %27 to i64*

  %69 = load i64, i64* %68

  %70 = sext i32 %31 to i64

  %71 = shl nsw i64 %70, 2

  %72 = add i64 %71, %69

  %73 = inttoptr i64 %72 to i32*

  %74 = load i32, i32* %73

  %75 = inttoptr i64 %28 to i64*

  %76 = load i64, i64* %75

  store i64 %70, i64* %5, align 8, !tbaa !1240

  %77 = add i64 %76, %71

  %78 = inttoptr i64 %77 to i32*

  %79 = load i32, i32* %78

  %80 = add i32 %79, %74

  %81 = zext i32 %80 to i64

  store i64 %81, i64* %6, align 8, !tbaa !1240

  %82 = inttoptr i64 %77 to i32*

  store i32 %80, i32* %82

  %83 = inttoptr i64 %23 to i32*

  %84 = load i32, i32* %83

  %85 = add i32 %84, 1

  %86 = inttoptr i64 %23 to i32*

  store i32 %85, i32* %86

  br label %block_4009d3

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400fe4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400fe4:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %5 = load i64, i64* %4, align 8

  %6 = add i64 %5, -8

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %9 = xor i64 %6, %5

  %10 = lshr i64 %9, 4

  %11 = trunc i64 %10 to i8

  %12 = and i8 %11, 1

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %15 = lshr i64 %6, 63

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %17 = lshr i64 %5, 63

  %18 = xor i64 %15, %17

  %19 = add nuw nsw i64 %18, %17

  %20 = icmp eq i64 %19, 2

  %21 = zext i1 %20 to i8

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = icmp ult i64 %5, 8

  %24 = zext i1 %23 to i8

  store i8 %24, i8* %7, align 1, !tbaa !1244

  %25 = trunc i64 %5 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %8, align 1, !tbaa !1258

  store i8 %12, i8* %13, align 1, !tbaa !1259

  %31 = icmp eq i64 %5, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %14, align 1, !tbaa !1260

  %33 = trunc i64 %17 to i8

  store i8 %33, i8* %16, align 1, !tbaa !1261

  store i8 %21, i8* %22, align 1, !tbaa !1262

  %34 = inttoptr i64 %5 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %3, align 8, !tbaa !1240

  %36 = add i64 %5, 8

  store i64 %36, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400630__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400630:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  store i64 0, i64* %10, align 8, !tbaa !1240

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %19 = load i64, i64* %6, align 8

  store i64 %19, i64* %12, align 8, !tbaa !1240

  %20 = load i64, i64* %9, align 8, !tbaa !1240

  %21 = add i64 %20, 8

  %22 = inttoptr i64 %20 to i64*

  %23 = load i64, i64* %22

  store i64 %23, i64* %7, align 8, !tbaa !1240

  store i64 %21, i64* %6, align 8, !tbaa !1240

  %24 = and i64 %21, -16

  store i8 0, i8* %13, align 1, !tbaa !1244

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 240

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %14, align 1, !tbaa !1258

  %31 = icmp eq i64 %24, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %15, align 1, !tbaa !1260

  %33 = lshr i64 %21, 63

  %34 = trunc i64 %33 to i8

  store i8 %34, i8* %16, align 1, !tbaa !1261

  store i8 0, i8* %17, align 1, !tbaa !1262

  store i8 0, i8* %18, align 1, !tbaa !1259

  %35 = load i64, i64* %4, align 8

  %36 = add i64 %24, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = add i64 %24, -16

  %39 = inttoptr i64 %38 to i64*

  store i64 %36, i64* %39

  store i64 ptrtoint (i64 ()* @callback_sub_400fe0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_400f70___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

  store i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64* %8, align 8, !tbaa !1240

  %40 = add i64 %1, 42

  %41 = add i64 %24, -24

  %42 = inttoptr i64 %41 to i64*

  store i64 %40, i64* %42

  %43 = inttoptr i64 %38 to i64*

  %44 = load i64, i64* %43

  %45 = add i64 %24, -8

  %46 = inttoptr i64 %45 to i64*

  %47 = load i64, i64* %46

  %48 = inttoptr i64 %41 to i64*

  %49 = load i64, i64* %48

  store i64 %38, i64* %9, align 8, !alias.scope !1328, !noalias !1331

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_400f70___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_400fe0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1328

  store i64 %50, i64* %4, align 8, !alias.scope !1328, !noalias !1331

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400cd0_dump_matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400cd0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 8, !tbaa !1240

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  %16 = add i64 %13, -16

  %17 = load i64, i64* %9, align 8

  %18 = inttoptr i64 %16 to i64*

  store i64 %17, i64* %18

  %19 = add i64 %13, -20

  %20 = load i32, i32* %7, align 4

  %21 = inttoptr i64 %19 to i32*

  store i32 %20, i32* %21

  %22 = add i64 %13, -24

  %23 = load i32, i32* %5, align 4

  %24 = inttoptr i64 %22 to i32*

  store i32 %23, i32* %24

  %25 = add i64 %13, -28

  %26 = inttoptr i64 %25 to i32*

  store i32 0, i32* %26

  %27 = add i64 %13, -20

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %31 = add i64 %13, -32

  br label %block_400ce5



block_400cf8:                                     ; preds = %block_400d04, %block_400cf1

  %32 = phi %struct.Memory* [ %76, %block_400cf1 ], [ %32, %block_400d04 ]

  %33 = inttoptr i64 %31 to i32*

  %34 = load i32, i32* %33

  %35 = inttoptr i64 %22 to i32*

  %36 = load i32, i32* %35

  %37 = sub i32 %34, %36

  %38 = lshr i32 %37, 31

  %39 = lshr i32 %34, 31

  %40 = lshr i32 %36, 31

  %41 = xor i32 %40, %39

  %42 = xor i32 %38, %39

  %43 = add nuw nsw i32 %42, %41

  %44 = icmp eq i32 %43, 2

  %45 = icmp ne i32 %38, 0

  %46 = xor i1 %45, %44

  br i1 %46, label %block_400d04, label %block_400d1c



block_400cf1:                                     ; preds = %block_400ce5

  %47 = inttoptr i64 %31 to i32*

  store i32 0, i32* %47

  br label %block_400cf8



block_400d2a:                                     ; preds = %block_400ce5

  %48 = zext i32 %78 to i64

  store i64 %48, i64* %8, align 8, !tbaa !1240

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %52 = icmp ult i32 %78, %80

  %53 = zext i1 %52 to i8

  %54 = and i32 %81, 255

  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9

  %56 = trunc i32 %55 to i8

  %57 = and i8 %56, 1

  %58 = xor i8 %57, 1

  %59 = xor i32 %80, %78

  %60 = xor i32 %59, %81

  %61 = lshr i32 %60, 4

  %62 = trunc i32 %61 to i8

  %63 = and i8 %62, 1

  %64 = icmp eq i32 %81, 0

  %65 = zext i1 %64 to i8

  %66 = zext i1 %89 to i8

  store i8 %53, i8* %28, align 1, !tbaa !1244

  store i8 %58, i8* %49, align 1, !tbaa !1258

  store i8 %63, i8* %29, align 1, !tbaa !1259

  store i8 %65, i8* %50, align 1, !tbaa !1260

  store i8 %83, i8* %30, align 1, !tbaa !1261

  store i8 %66, i8* %51, align 1, !tbaa !1262

  %67 = inttoptr i64 %14 to i64*

  %68 = load i64, i64* %67

  store i64 %68, i64* %11, align 8, !tbaa !1240

  %69 = inttoptr i64 %13 to i64*

  %70 = load i64, i64* %69

  store i64 %70, i64* %3, align 8, !tbaa !1240

  %71 = add i64 %13, 8

  store i64 %71, i64* %10, align 8, !tbaa !1240

  ret %struct.Memory* %76



block_400d1c:                                     ; preds = %block_400cf8

  %72 = inttoptr i64 %25 to i32*

  %73 = load i32, i32* %72

  %74 = add i32 %73, 1

  %75 = inttoptr i64 %25 to i32*

  store i32 %74, i32* %75

  br label %block_400ce5



block_400ce5:                                     ; preds = %block_400d1c, %block_400cd0

  %76 = phi %struct.Memory* [ %2, %block_400cd0 ], [ %32, %block_400d1c ]

  %77 = inttoptr i64 %25 to i32*

  %78 = load i32, i32* %77

  %79 = inttoptr i64 %27 to i32*

  %80 = load i32, i32* %79

  %81 = sub i32 %78, %80

  %82 = lshr i32 %81, 31

  %83 = trunc i32 %82 to i8

  %84 = lshr i32 %78, 31

  %85 = lshr i32 %80, 31

  %86 = xor i32 %85, %84

  %87 = xor i32 %82, %84

  %88 = add nuw nsw i32 %87, %86

  %89 = icmp eq i32 %88, 2

  %90 = icmp ne i8 %83, 0

  %91 = xor i1 %90, %89

  br i1 %91, label %block_400cf1, label %block_400d2a



block_400d04:                                     ; preds = %block_400cf8

  %92 = add i32 %34, 1

  %93 = inttoptr i64 %31 to i32*

  store i32 %92, i32* %93

  br label %block_400cf8

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400710_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400710:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i64, i64* %4, align 8

  %6 = load i64, i64* %3, align 8, !tbaa !1240

  %7 = add i64 %6, -8

  %8 = inttoptr i64 %7 to i64*

  store i64 %5, i64* %8

  %9 = inttoptr i64 %7 to i64*

  %10 = load i64, i64* %9

  store i64 %10, i64* %4, align 8, !tbaa !1240

  store i64 %6, i64* %3, align 8, !tbaa !1240

  %11 = add i64 %1, -112

  %12 = tail call %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400670_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400670:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64* %4, align 8, !tbaa !1240

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)) to i8), i8* %11, align 1, !tbaa !1244

  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)) to i32), i32 255)) #9

  %13 = trunc i32 %12 to i8

  %14 = and i8 %13, 1

  %15 = xor i8 %14, 1

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %15, i8* %16, align 1, !tbaa !1258

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64))), i64 4) to i8), i8 1), i8* %17, align 1, !tbaa !1259

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 0) to i8), i8* %18, align 1, !tbaa !1260

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 63) to i8), i8* %19, align 1, !tbaa !1261

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 63), i64 lshr (i64 ptrtoint (i64* @optarg to i64), i64 63))), i64 2) to i8), i8* %20, align 1, !tbaa !1262

  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 0), label %block_400698, label %block_400681



block_400698:                                     ; preds = %block_400681, %block_400670

  %21 = inttoptr i64 %9 to i64*

  %22 = load i64, i64* %21

  store i64 %22, i64* %6, align 8, !tbaa !1240

  %23 = inttoptr i64 %8 to i64*

  %24 = load i64, i64* %23

  store i64 %24, i64* %3, align 8, !tbaa !1240

  %25 = add i64 %8, 8

  store i64 %25, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_400681:                                     ; preds = %block_400670

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %11, align 1, !tbaa !1244

  store i8 1, i8* %16, align 1, !tbaa !1258

  store i8 1, i8* %18, align 1, !tbaa !1260

  store i8 0, i8* %19, align 1, !tbaa !1261

  store i8 0, i8* %20, align 1, !tbaa !1262

  store i8 0, i8* %17, align 1, !tbaa !1259

  br label %block_400698

}



; Function Attrs: noinline

define %struct.Memory* @sub_400b90_calc_means(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400b90:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = load i64, i64* %12, align 8

  %14 = load i64, i64* %11, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %12, align 8, !tbaa !1240

  %17 = add i64 %14, -56

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %24 = add i64 %14, -16

  %25 = load i64, i64* %10, align 8

  %26 = inttoptr i64 %24 to i64*

  store i64 %25, i64* %26

  %27 = add i64 %14, -24

  %28 = load i64, i64* %9, align 8

  %29 = inttoptr i64 %27 to i64*

  store i64 %28, i64* %29

  %30 = add i64 %14, -32

  %31 = load i64, i64* %8, align 8

  %32 = inttoptr i64 %30 to i64*

  store i64 %31, i64* %32

  %33 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %34 = sext i32 %33 to i64

  %35 = shl nsw i64 %34, 2

  store i64 %35, i64* %8, align 8, !tbaa !1240

  store i64 %35, i64* %10, align 8, !tbaa !1240

  %36 = add i64 %1, 40

  %37 = add i64 %14, -64

  %38 = inttoptr i64 %37 to i64*

  store i64 %36, i64* %38

  %39 = inttoptr i64 %37 to i64*

  %40 = load i64, i64* %39

  store i64 %40, i64* %3, align 8, !alias.scope !1333, !noalias !1336

  store i64 %17, i64* %11, align 8, !alias.scope !1333, !noalias !1336

  %41 = tail call i64 @malloc(i64 %35)

  %42 = load i64, i64* %12, align 8

  %43 = add i64 %42, -48

  %44 = load i64, i64* %3, align 8

  %45 = inttoptr i64 %43 to i64*

  store i64 %41, i64* %45

  %46 = add i64 %42, -28

  %47 = add i64 %44, 11

  %48 = inttoptr i64 %46 to i32*

  store i32 0, i32* %48

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  br label %block_400bc3



block_400c74:                                     ; preds = %block_400c6a

  %50 = add i64 %102, -48

  %51 = inttoptr i64 %50 to i64*

  %52 = load i64, i64* %51

  %53 = sext i32 %106 to i64

  store i64 %53, i64* %7, align 8, !tbaa !1240

  %54 = shl nsw i64 %53, 2

  %55 = add i64 %54, %52

  %56 = inttoptr i64 %55 to i32*

  %57 = load i32, i32* %56

  %58 = zext i32 %57 to i64

  store i64 %58, i64* %6, align 8, !tbaa !1240

  %59 = sext i32 %57 to i64

  %60 = lshr i64 %59, 32

  store i64 %60, i64* %49, align 8, !tbaa !1240

  %61 = add i64 %150, 15

  store i64 %61, i64* %3, align 8

  %62 = sext i32 %139 to i64

  %63 = shl nuw i64 %60, 32

  %64 = or i64 %63, %58

  %65 = sdiv i64 %64, %62

  %66 = shl i64 %65, 32

  %67 = ashr exact i64 %66, 32

  %68 = icmp eq i64 %65, %67

  br i1 %68, label %74, label %69



; <label>:69:                                     ; preds = %block_400c74

  %70 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %61, %struct.Memory* %103) #12

  %71 = load i64, i64* %12, align 8

  %72 = load i64, i64* %3, align 8

  %73 = load i32, i32* %5, align 4

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:74:                                     ; preds = %block_400c74

  %75 = srem i64 %64, %62

  %76 = and i64 %75, 4294967295

  store i64 %76, i64* %8, align 8, !tbaa !1240

  %77 = trunc i64 %65 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %74, %69

  %78 = phi i32 [ %73, %69 ], [ %77, %74 ]

  %79 = phi i64 [ %72, %69 ], [ %61, %74 ]

  %80 = phi i64 [ %71, %69 ], [ %102, %74 ]

  %81 = phi %struct.Memory* [ %70, %69 ], [ %103, %74 ]

  %82 = add i64 %80, -16

  %83 = inttoptr i64 %82 to i64*

  %84 = load i64, i64* %83

  %85 = add i64 %80, -28

  %86 = inttoptr i64 %85 to i32*

  %87 = load i32, i32* %86

  %88 = sext i32 %87 to i64

  %89 = shl nsw i64 %88, 3

  %90 = add i64 %89, %84

  %91 = inttoptr i64 %90 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %7, align 8, !tbaa !1240

  %93 = add i64 %80, -32

  %94 = inttoptr i64 %93 to i32*

  %95 = load i32, i32* %94

  %96 = sext i32 %95 to i64

  store i64 %96, i64* %9, align 8, !tbaa !1240

  %97 = shl nsw i64 %96, 2

  %98 = add i64 %97, %92

  %99 = add i64 %79, 19

  %100 = inttoptr i64 %98 to i32*

  store i32 %78, i32* %100

  br label %block_400c96



block_400c5a:                                     ; preds = %block_400c53, %block_400c96

  %101 = phi i64 [ %282, %block_400c53 ], [ %189, %block_400c96 ]

  %102 = phi i64 [ %191, %block_400c53 ], [ %181, %block_400c96 ]

  %103 = phi %struct.Memory* [ %192, %block_400c53 ], [ %183, %block_400c96 ]

  %104 = add i64 %102, -32

  %105 = inttoptr i64 %104 to i32*

  %106 = load i32, i32* %105

  %107 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %108 = sub i32 %106, %107

  %109 = lshr i32 %108, 31

  %110 = trunc i32 %109 to i8

  %111 = lshr i32 %106, 31

  %112 = lshr i32 %107, 31

  %113 = xor i32 %112, %111

  %114 = xor i32 %109, %111

  %115 = add nuw nsw i32 %114, %113

  %116 = icmp eq i32 %115, 2

  %117 = icmp ne i8 %110, 0

  %118 = xor i1 %117, %116

  %119 = select i1 %118, i64 16, i64 79

  %120 = add i64 %101, %119

  br i1 %118, label %block_400c6a, label %block_400ca9



block_400c0e:                                     ; preds = %block_400bfe

  %121 = add i64 %191, -24

  %122 = inttoptr i64 %121 to i64*

  %123 = load i64, i64* %122

  %124 = sext i32 %195 to i64

  store i64 %124, i64* %7, align 8, !tbaa !1240

  %125 = shl nsw i64 %124, 2

  %126 = add i64 %125, %123

  %127 = inttoptr i64 %126 to i32*

  %128 = load i32, i32* %127

  %129 = zext i32 %128 to i64

  store i64 %129, i64* %8, align 8, !tbaa !1240

  %130 = add i64 %191, -28

  %131 = inttoptr i64 %130 to i32*

  %132 = load i32, i32* %131

  %133 = sub i32 %128, %132

  %134 = icmp eq i32 %133, 0

  %135 = select i1 %134, i64 20, i64 50

  %136 = add i64 %209, %135

  br i1 %134, label %block_400c22, label %block_400c40



block_400c6a:                                     ; preds = %block_400c5a

  %137 = add i64 %102, -36

  %138 = inttoptr i64 %137 to i32*

  %139 = load i32, i32* %138

  store i8 0, i8* %18, align 1, !tbaa !1244

  %140 = and i32 %139, 255

  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #9

  %142 = trunc i32 %141 to i8

  %143 = and i8 %142, 1

  %144 = xor i8 %143, 1

  store i8 %144, i8* %19, align 1, !tbaa !1258

  store i8 0, i8* %20, align 1, !tbaa !1259

  %145 = icmp eq i32 %139, 0

  %146 = zext i1 %145 to i8

  store i8 %146, i8* %21, align 1, !tbaa !1260

  %147 = lshr i32 %139, 31

  %148 = trunc i32 %147 to i8

  store i8 %148, i8* %22, align 1, !tbaa !1261

  store i8 0, i8* %23, align 1, !tbaa !1262

  %149 = select i1 %145, i64 44, i64 10

  %150 = add i64 %120, %149

  br i1 %145, label %block_400c96, label %block_400c74



block_400cbc:                                     ; preds = %block_400bc3

  %151 = load i64, i64* %11, align 8

  %152 = add i64 %151, 48

  %153 = icmp ugt i64 %151, -49

  %154 = zext i1 %153 to i8

  store i8 %154, i8* %18, align 1, !tbaa !1244

  %155 = trunc i64 %152 to i32

  %156 = and i32 %155, 255

  %157 = tail call i32 @llvm.ctpop.i32(i32 %156) #9

  %158 = trunc i32 %157 to i8

  %159 = and i8 %158, 1

  %160 = xor i8 %159, 1

  store i8 %160, i8* %19, align 1, !tbaa !1258

  %161 = xor i64 %151, 16

  %162 = xor i64 %161, %152

  %163 = lshr i64 %162, 4

  %164 = trunc i64 %163 to i8

  %165 = and i8 %164, 1

  store i8 %165, i8* %20, align 1, !tbaa !1259

  %166 = icmp eq i64 %152, 0

  %167 = zext i1 %166 to i8

  store i8 %167, i8* %21, align 1, !tbaa !1260

  %168 = lshr i64 %152, 63

  %169 = trunc i64 %168 to i8

  store i8 %169, i8* %22, align 1, !tbaa !1261

  %170 = lshr i64 %151, 63

  %171 = xor i64 %168, %170

  %172 = add nuw nsw i64 %171, %168

  %173 = icmp eq i64 %172, 2

  %174 = zext i1 %173 to i8

  store i8 %174, i8* %23, align 1, !tbaa !1262

  %175 = add i64 %151, 56

  %176 = inttoptr i64 %152 to i64*

  %177 = load i64, i64* %176

  store i64 %177, i64* %12, align 8, !tbaa !1240

  %178 = inttoptr i64 %175 to i64*

  %179 = load i64, i64* %178

  store i64 %179, i64* %3, align 8, !tbaa !1240

  %180 = add i64 %151, 64

  store i64 %180, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %238



block_400c96:                                     ; preds = %block_400c6a, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

  %181 = phi i64 [ %102, %block_400c6a ], [ %80, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %182 = phi i64 [ %150, %block_400c6a ], [ %99, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %183 = phi %struct.Memory* [ %103, %block_400c6a ], [ %81, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %184 = add i64 %181, -32

  %185 = inttoptr i64 %184 to i32*

  %186 = load i32, i32* %185

  %187 = add i32 %186, 1

  %188 = inttoptr i64 %184 to i32*

  store i32 %187, i32* %188

  %189 = add i64 %182, -60

  br label %block_400c5a



block_400bfe:                                     ; preds = %block_400c40, %block_400bd3

  %190 = phi i64 [ %234, %block_400bd3 ], [ %292, %block_400c40 ]

  %191 = phi i64 [ %229, %block_400bd3 ], [ %284, %block_400c40 ]

  %192 = phi %struct.Memory* [ %238, %block_400bd3 ], [ %286, %block_400c40 ]

  %193 = add i64 %191, -32

  %194 = inttoptr i64 %193 to i32*

  %195 = load i32, i32* %194

  %196 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %197 = sub i32 %195, %196

  %198 = lshr i32 %197, 31

  %199 = trunc i32 %198 to i8

  %200 = lshr i32 %195, 31

  %201 = lshr i32 %196, 31

  %202 = xor i32 %201, %200

  %203 = xor i32 %198, %200

  %204 = add nuw nsw i32 %203, %202

  %205 = icmp eq i32 %204, 2

  %206 = icmp ne i8 %199, 0

  %207 = xor i1 %206, %205

  %208 = select i1 %207, i64 16, i64 85

  %209 = add i64 %190, %208

  br i1 %207, label %block_400c0e, label %block_400c53



block_400ca9:                                     ; preds = %block_400c5a

  %210 = add i64 %102, -28

  %211 = inttoptr i64 %210 to i32*

  %212 = load i32, i32* %211

  %213 = add i32 %212, 1

  %214 = inttoptr i64 %210 to i32*

  store i32 %213, i32* %214

  %215 = add i64 %120, -230

  br label %block_400bc3



block_400bd3:                                     ; preds = %block_400bc3

  store i64 0, i64* %9, align 8, !tbaa !1240

  %216 = add i64 %237, -48

  %217 = inttoptr i64 %216 to i64*

  %218 = load i64, i64* %217

  %219 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %220 = sext i32 %219 to i64

  %221 = shl nsw i64 %220, 2

  store i64 %221, i64* %7, align 8, !tbaa !1240

  store i64 %218, i64* %10, align 8, !tbaa !1240

  store i64 %221, i64* %8, align 8, !tbaa !1240

  %222 = add i64 %256, 29

  %223 = load i64, i64* %11, align 8, !tbaa !1240

  %224 = add i64 %223, -8

  %225 = inttoptr i64 %224 to i64*

  store i64 %222, i64* %225

  %226 = inttoptr i64 %224 to i64*

  %227 = load i64, i64* %226

  store i64 %227, i64* %3, align 8, !alias.scope !1338, !noalias !1341

  store i64 %223, i64* %11, align 8, !alias.scope !1338, !noalias !1341

  %228 = tail call i64 @memset(i64 %218, i64 0, i64 %221), !noalias !1338

  %229 = load i64, i64* %12, align 8

  %230 = add i64 %229, -36

  %231 = load i64, i64* %3, align 8

  %232 = inttoptr i64 %230 to i32*

  store i32 0, i32* %232

  %233 = add i64 %229, -32

  %234 = add i64 %231, 14

  %235 = inttoptr i64 %233 to i32*

  store i32 0, i32* %235

  br label %block_400bfe



block_400bc3:                                     ; preds = %block_400ca9, %block_400b90

  %236 = phi i64 [ %47, %block_400b90 ], [ %215, %block_400ca9 ]

  %237 = phi i64 [ %42, %block_400b90 ], [ %102, %block_400ca9 ]

  %238 = phi %struct.Memory* [ %2, %block_400b90 ], [ %103, %block_400ca9 ]

  %239 = add i64 %237, -28

  %240 = inttoptr i64 %239 to i32*

  %241 = load i32, i32* %240

  %242 = zext i32 %241 to i64

  store i64 %242, i64* %6, align 8, !tbaa !1240

  %243 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %244 = sub i32 %241, %243

  %245 = lshr i32 %244, 31

  %246 = trunc i32 %245 to i8

  %247 = lshr i32 %241, 31

  %248 = lshr i32 %243, 31

  %249 = xor i32 %248, %247

  %250 = xor i32 %245, %247

  %251 = add nuw nsw i32 %250, %249

  %252 = icmp eq i32 %251, 2

  %253 = icmp ne i8 %246, 0

  %254 = xor i1 %253, %252

  %255 = select i1 %254, i64 16, i64 249

  %256 = add i64 %236, %255

  br i1 %254, label %block_400bd3, label %block_400cbc



block_400c22:                                     ; preds = %block_400c0e

  %257 = add i64 %191, -48

  %258 = inttoptr i64 %257 to i64*

  %259 = load i64, i64* %258

  store i64 %259, i64* %10, align 8, !tbaa !1240

  %260 = add i64 %191, -8

  %261 = inttoptr i64 %260 to i64*

  %262 = load i64, i64* %261

  store i64 %124, i64* %7, align 8, !tbaa !1240

  %263 = shl nsw i64 %124, 3

  %264 = add i64 %263, %262

  %265 = inttoptr i64 %264 to i64*

  %266 = load i64, i64* %265

  store i64 %266, i64* %9, align 8, !tbaa !1240

  %267 = add i64 %136, -610

  %268 = add i64 %136, 21

  %269 = load i64, i64* %11, align 8, !tbaa !1240

  %270 = add i64 %269, -8

  %271 = inttoptr i64 %270 to i64*

  store i64 %268, i64* %271

  store i64 %270, i64* %11, align 8, !tbaa !1240

  %272 = tail call %struct.Memory* @sub_4009c0_add_to_sum(%struct.State* nonnull %0, i64 %267, %struct.Memory* %192)

  %273 = load i64, i64* %12, align 8

  %274 = add i64 %273, -36

  %275 = load i64, i64* %3, align 8

  %276 = inttoptr i64 %274 to i32*

  %277 = load i32, i32* %276

  %278 = add i32 %277, 1

  %279 = zext i32 %278 to i64

  store i64 %279, i64* %8, align 8, !tbaa !1240

  %280 = add i64 %275, 9

  %281 = inttoptr i64 %274 to i32*

  store i32 %278, i32* %281

  br label %block_400c40



block_400c53:                                     ; preds = %block_400bfe

  %282 = add i64 %209, 7

  %283 = inttoptr i64 %193 to i32*

  store i32 0, i32* %283

  br label %block_400c5a



block_400c40:                                     ; preds = %block_400c22, %block_400c0e

  %284 = phi i64 [ %191, %block_400c0e ], [ %273, %block_400c22 ]

  %285 = phi i64 [ %136, %block_400c0e ], [ %280, %block_400c22 ]

  %286 = phi %struct.Memory* [ %192, %block_400c0e ], [ %272, %block_400c22 ]

  %287 = add i64 %284, -32

  %288 = inttoptr i64 %287 to i32*

  %289 = load i32, i32* %288

  %290 = add i32 %289, 1

  %291 = inttoptr i64 %287 to i32*

  store i32 %290, i32* %291

  %292 = add i64 %285, -66

  br label %block_400bfe

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4006e0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602068__bss_type* @seg_602068__bss to i64), i64 8) to i8*)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1244

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #9

  %9 = trunc i32 %8 to i8

  %10 = and i8 %9, 1

  %11 = xor i8 %10, 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %11, i8* %12, align 1, !tbaa !1258

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1259

  %14 = icmp eq i8 %5, 0

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %15, i8* %16, align 1, !tbaa !1260

  %17 = lshr i8 %5, 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %17, i8* %18, align 1, !tbaa !1261

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %19, align 1, !tbaa !1262

  %20 = select i1 %14, i64 9, i64 32

  %21 = add i64 %20, %1

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  br i1 %14, label %block_4006e9, label %block_400700



block_400700:                                     ; preds = %block_4006e0

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4006e9:                                     ; preds = %block_4006e0

  %27 = load i64, i64* %4, align 8

  %28 = load i64, i64* %22, align 8, !tbaa !1240

  %29 = add i64 %28, -8

  %30 = inttoptr i64 %29 to i64*

  store i64 %27, i64* %30

  store i64 %29, i64* %4, align 8, !tbaa !1240

  %31 = add i64 %21, -121

  %32 = add i64 %21, 9

  %33 = add i64 %28, -16

  %34 = inttoptr i64 %33 to i64*

  store i64 %32, i64* %34

  store i64 %33, i64* %22, align 8, !tbaa !1240

  %35 = tail call %struct.Memory* @sub_400670_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602068__bss_type* @seg_602068__bss to i64), i64 8) to i8*)

  %36 = load i64, i64* %22, align 8, !tbaa !1240

  %37 = add i64 %36, 8

  %38 = inttoptr i64 %36 to i64*

  %39 = load i64, i64* %38

  store i64 %39, i64* %4, align 8, !tbaa !1240

  %40 = inttoptr i64 %37 to i64*

  %41 = load i64, i64* %40

  store i64 %41, i64* %3, align 8, !tbaa !1240

  %42 = add i64 %36, 16

  store i64 %42, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %35

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400660__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400660:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %5 = load i64, i64* %4, align 8, !tbaa !1240

  %6 = inttoptr i64 %5 to i64*

  %7 = load i64, i64* %6

  store i64 %7, i64* %3, align 8, !tbaa !1240

  %8 = add i64 %5, 8

  store i64 %8, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400d30_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400d30:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %6 = bitcast %union.anon* %5 to i32*

  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = load i64, i64* %12, align 8

  %14 = load i64, i64* %11, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %12, align 8, !tbaa !1240

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = add i64 %14, -12

  %24 = inttoptr i64 %23 to i32*

  store i32 0, i32* %24

  %25 = add i64 %14, -16

  %26 = load i32, i32* %6, align 4

  %27 = inttoptr i64 %25 to i32*

  store i32 %26, i32* %27

  %28 = add i64 %14, -24

  %29 = load i64, i64* %9, align 8

  %30 = inttoptr i64 %28 to i64*

  store i64 %29, i64* %30

  %31 = inttoptr i64 %25 to i32*

  %32 = load i32, i32* %31

  %33 = zext i32 %32 to i64

  store i64 %33, i64* %10, align 8, !tbaa !1240

  %34 = inttoptr i64 %28 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %9, align 8, !tbaa !1240

  %36 = add i64 %1, -1552

  %37 = add i64 %1, 34

  %38 = add i64 %14, -80

  %39 = inttoptr i64 %38 to i64*

  store i64 %37, i64* %39

  store i64 %38, i64* %11, align 8, !tbaa !1240

  %40 = tail call %struct.Memory* @sub_400720_parse_args(%struct.State* nonnull %0, i64 %36, %struct.Memory* %2)

  %41 = load i64, i64* %3, align 8

  %42 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %43 = sext i32 %42 to i64

  %44 = shl nsw i64 %43, 3

  %45 = add i64 %41, 20

  %46 = load i64, i64* %11, align 8, !tbaa !1240

  %47 = add i64 %46, -8

  %48 = inttoptr i64 %47 to i64*

  store i64 %45, i64* %48

  %49 = inttoptr i64 %47 to i64*

  %50 = load i64, i64* %49

  store i64 %50, i64* %3, align 8, !alias.scope !1343, !noalias !1346

  store i64 %46, i64* %11, align 8, !alias.scope !1343, !noalias !1346

  %51 = tail call i64 @malloc(i64 %44)

  %52 = load i64, i64* %12, align 8

  %53 = add i64 %52, -24

  %54 = load i64, i64* %3, align 8

  %55 = inttoptr i64 %53 to i64*

  store i64 %51, i64* %55

  %56 = add i64 %52, -44

  %57 = add i64 %54, 11

  %58 = inttoptr i64 %56 to i32*

  store i32 0, i32* %58

  br label %block_400d71



block_400f35:                                     ; preds = %block_400f25

  %59 = sext i32 %347 to i64

  store i64 %59, i64* %8, align 8, !tbaa !1240

  %60 = shl nsw i64 %59, 3

  %61 = add i64 %60, %364

  %62 = inttoptr i64 %61 to i64*

  %63 = load i64, i64* %62

  %64 = add i64 %361, 20

  %65 = load i64, i64* %11, align 8, !tbaa !1240

  %66 = add i64 %65, -8

  %67 = inttoptr i64 %66 to i64*

  store i64 %64, i64* %67

  %68 = inttoptr i64 %66 to i64*

  %69 = load i64, i64* %68

  store i64 %69, i64* %3, align 8, !alias.scope !1348, !noalias !1351

  store i64 %65, i64* %11, align 8, !alias.scope !1348, !noalias !1351

  %70 = tail call i64 @free(i64 %63), !noalias !1348

  %71 = load i64, i64* %12, align 8

  %72 = add i64 %71, -44

  %73 = load i64, i64* %3, align 8

  %74 = inttoptr i64 %72 to i32*

  %75 = load i32, i32* %74

  %76 = add i32 %75, 1

  %77 = inttoptr i64 %72 to i32*

  store i32 %76, i32* %77

  %78 = add i64 %73, -36

  br label %block_400f25



block_400ef0:                                     ; preds = %block_400ee0

  %79 = sext i32 %446 to i64

  store i64 %79, i64* %8, align 8, !tbaa !1240

  %80 = shl nsw i64 %79, 3

  %81 = add i64 %80, %463

  %82 = inttoptr i64 %81 to i64*

  %83 = load i64, i64* %82

  %84 = add i64 %460, 20

  %85 = load i64, i64* %11, align 8, !tbaa !1240

  %86 = add i64 %85, -8

  %87 = inttoptr i64 %86 to i64*

  store i64 %84, i64* %87

  %88 = inttoptr i64 %86 to i64*

  %89 = load i64, i64* %88

  store i64 %89, i64* %3, align 8, !alias.scope !1353, !noalias !1356

  store i64 %85, i64* %11, align 8, !alias.scope !1353, !noalias !1356

  %90 = tail call i64 @free(i64 %83), !noalias !1353

  %91 = load i64, i64* %12, align 8

  %92 = add i64 %91, -44

  %93 = load i64, i64* %3, align 8

  %94 = inttoptr i64 %92 to i32*

  %95 = load i32, i32* %94

  %96 = add i32 %95, 1

  %97 = inttoptr i64 %92 to i32*

  store i32 %96, i32* %97

  %98 = add i64 %93, -36

  br label %block_400ee0



block_400e7c:                                     ; preds = %block_400e6e

  store i32 0, i32* bitcast (%modified_type* @modified to i32*)

  %99 = load i64, i64* %12, align 8

  %100 = add i64 %99, -24

  %101 = inttoptr i64 %100 to i64*

  %102 = load i64, i64* %101

  store i64 %102, i64* %10, align 8, !tbaa !1240

  %103 = add i64 %99, -32

  %104 = inttoptr i64 %103 to i64*

  %105 = load i64, i64* %104

  store i64 %105, i64* %9, align 8, !tbaa !1240

  %106 = add i64 %99, -40

  %107 = inttoptr i64 %106 to i64*

  %108 = load i64, i64* %107

  store i64 %108, i64* %274, align 8, !tbaa !1240

  %109 = add i64 %440, -1132

  %110 = add i64 %440, 28

  %111 = load i64, i64* %11, align 8, !tbaa !1240

  %112 = add i64 %111, -8

  %113 = inttoptr i64 %112 to i64*

  store i64 %110, i64* %113

  store i64 %112, i64* %11, align 8, !tbaa !1240

  %114 = tail call %struct.Memory* @sub_400a10_find_clusters(%struct.State* nonnull %0, i64 %109, %struct.Memory* %436)

  %115 = load i64, i64* %12, align 8

  %116 = add i64 %115, -24

  %117 = load i64, i64* %3, align 8

  %118 = inttoptr i64 %116 to i64*

  %119 = load i64, i64* %118

  store i64 %119, i64* %10, align 8, !tbaa !1240

  %120 = add i64 %115, -32

  %121 = inttoptr i64 %120 to i64*

  %122 = load i64, i64* %121

  store i64 %122, i64* %9, align 8, !tbaa !1240

  %123 = add i64 %115, -40

  %124 = inttoptr i64 %123 to i64*

  %125 = load i64, i64* %124

  store i64 %125, i64* %274, align 8, !tbaa !1240

  %126 = add i64 %117, -776

  %127 = add i64 %117, 17

  %128 = load i64, i64* %11, align 8, !tbaa !1240

  %129 = add i64 %128, -8

  %130 = inttoptr i64 %129 to i64*

  store i64 %127, i64* %130

  store i64 %129, i64* %11, align 8, !tbaa !1240

  %131 = tail call %struct.Memory* @sub_400b90_calc_means(%struct.State* nonnull %0, i64 %126, %struct.Memory* %114)

  %132 = load i64, i64* %3, align 8

  %133 = add i64 %132, -59

  br label %block_400e6e



block_400eae:                                     ; preds = %block_400e6e

  %134 = load i64, i64* %12, align 8

  %135 = add i64 %134, -32

  %136 = inttoptr i64 %135 to i64*

  %137 = load i64, i64* %136

  store i64 %137, i64* %10, align 8, !tbaa !1240

  %138 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %139 = zext i32 %138 to i64

  store i64 %139, i64* %9, align 8, !tbaa !1240

  %140 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %141 = zext i32 %140 to i64

  store i64 %141, i64* %274, align 8, !tbaa !1240

  %142 = add i64 %440, -478

  %143 = add i64 %440, 23

  %144 = load i64, i64* %11, align 8, !tbaa !1240

  %145 = add i64 %144, -8

  %146 = inttoptr i64 %145 to i64*

  store i64 %143, i64* %146

  store i64 %145, i64* %11, align 8, !tbaa !1240

  %147 = tail call %struct.Memory* @sub_400cd0_dump_matrix(%struct.State* nonnull %0, i64 %142, %struct.Memory* %436)

  %148 = load i64, i64* %3, align 8

  %149 = add i64 %148, 17

  %150 = load i64, i64* %11, align 8, !tbaa !1240

  %151 = add i64 %150, -8

  %152 = inttoptr i64 %151 to i64*

  store i64 %149, i64* %152

  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %155 = load i64, i64* %9, align 8, !alias.scope !1358, !noalias !1361

  %156 = load i64, i64* %274, align 8, !alias.scope !1358, !noalias !1361

  %157 = load i64, i64* %8, align 8, !alias.scope !1358, !noalias !1361

  %158 = load i64, i64* %153, align 8, !alias.scope !1358, !noalias !1361

  %159 = load i64, i64* %154, align 8, !alias.scope !1358, !noalias !1361

  %160 = inttoptr i64 %150 to i64*

  %161 = load i64, i64* %160

  %162 = add i64 %150, 8

  %163 = inttoptr i64 %162 to i64*

  %164 = load i64, i64* %163

  %165 = add i64 %150, 16

  %166 = inttoptr i64 %165 to i64*

  %167 = load i64, i64* %166

  %168 = add i64 %150, 24

  %169 = inttoptr i64 %168 to i64*

  %170 = load i64, i64* %169

  %171 = add i64 %150, 32

  %172 = inttoptr i64 %171 to i64*

  %173 = load i64, i64* %172

  %174 = add i64 %150, 40

  %175 = inttoptr i64 %174 to i64*

  %176 = load i64, i64* %175

  %177 = add i64 %150, 48

  %178 = inttoptr i64 %177 to i64*

  %179 = load i64, i64* %178

  %180 = add i64 %150, 56

  %181 = inttoptr i64 %180 to i64*

  %182 = load i64, i64* %181

  %183 = add i64 %150, 64

  %184 = inttoptr i64 %183 to i64*

  %185 = load i64, i64* %184

  %186 = add i64 %150, 72

  %187 = inttoptr i64 %186 to i64*

  %188 = load i64, i64* %187

  %189 = inttoptr i64 %151 to i64*

  %190 = load i64, i64* %189

  store i64 %190, i64* %3, align 8, !alias.scope !1358, !noalias !1361

  store i64 %150, i64* %11, align 8, !alias.scope !1358, !noalias !1361

  %191 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400ff0__rodata_type* @seg_400ff0__rodata to i64), i64 259), i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %161, i64 %164, i64 %167, i64 %170, i64 %173, i64 %176, i64 %179, i64 %182, i64 %185, i64 %188), !noalias !1358

  %192 = load i64, i64* %12, align 8

  %193 = add i64 %192, -44

  %194 = load i64, i64* %3, align 8

  %195 = inttoptr i64 %193 to i32*

  store i32 0, i32* %195

  %196 = add i64 %192, -60

  %197 = trunc i64 %191 to i32

  %198 = add i64 %194, 10

  %199 = inttoptr i64 %196 to i32*

  store i32 %197, i32* %199

  br label %block_400ee0



block_400d71:                                     ; preds = %block_400d81, %block_400d30

  %200 = phi i64 [ %57, %block_400d30 ], [ %434, %block_400d81 ]

  %201 = phi i64 [ %52, %block_400d30 ], [ %418, %block_400d81 ]

  %202 = phi %struct.Memory* [ %40, %block_400d30 ], [ %202, %block_400d81 ]

  %203 = add i64 %201, -44

  %204 = inttoptr i64 %203 to i32*

  %205 = load i32, i32* %204

  %206 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %207 = sub i32 %205, %206

  %208 = lshr i32 %207, 31

  %209 = trunc i32 %208 to i8

  %210 = lshr i32 %205, 31

  %211 = lshr i32 %206, 31

  %212 = xor i32 %211, %210

  %213 = xor i32 %208, %210

  %214 = add nuw nsw i32 %213, %212

  %215 = icmp eq i32 %214, 2

  %216 = icmp ne i8 %209, 0

  %217 = xor i1 %216, %215

  %218 = select i1 %217, i64 16, i64 62

  %219 = add i64 %200, %218

  br i1 %217, label %block_400d81, label %block_400daf



block_400ddb:                                     ; preds = %block_400deb, %block_400daf

  %220 = phi i64 [ %301, %block_400daf ], [ %329, %block_400deb ]

  %221 = phi i64 [ %296, %block_400daf ], [ %313, %block_400deb ]

  %222 = phi %struct.Memory* [ %284, %block_400daf ], [ %222, %block_400deb ]

  %223 = add i64 %221, -44

  %224 = inttoptr i64 %223 to i32*

  %225 = load i32, i32* %224

  %226 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %227 = sub i32 %225, %226

  %228 = lshr i32 %227, 31

  %229 = trunc i32 %228 to i8

  %230 = lshr i32 %225, 31

  %231 = lshr i32 %226, 31

  %232 = xor i32 %231, %230

  %233 = xor i32 %228, %230

  %234 = add nuw nsw i32 %233, %232

  %235 = icmp eq i32 %234, 2

  %236 = icmp ne i8 %229, 0

  %237 = xor i1 %236, %235

  %238 = select i1 %237, i64 16, i64 62

  %239 = add i64 %220, %238

  br i1 %237, label %block_400deb, label %block_400e19



block_400f57:                                     ; preds = %block_400f25

  store i64 %364, i64* %10, align 8, !tbaa !1240

  %240 = add i64 %361, 12

  %241 = load i64, i64* %11, align 8, !tbaa !1240

  %242 = add i64 %241, -8

  %243 = inttoptr i64 %242 to i64*

  store i64 %240, i64* %243

  store i64 %241, i64* %11, align 8, !alias.scope !1363, !noalias !1366

  %244 = tail call i64 @free(i64 %364)

  store i64 0, i64* %7, align 8, !tbaa !1240

  %245 = load i64, i64* %11, align 8

  %246 = add i64 %245, 64

  %247 = icmp ugt i64 %245, -65

  %248 = zext i1 %247 to i8

  store i8 %248, i8* %17, align 1, !tbaa !1244

  %249 = trunc i64 %246 to i32

  %250 = and i32 %249, 255

  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #9

  %252 = trunc i32 %251 to i8

  %253 = and i8 %252, 1

  %254 = xor i8 %253, 1

  store i8 %254, i8* %18, align 1, !tbaa !1258

  %255 = xor i64 %246, %245

  %256 = lshr i64 %255, 4

  %257 = trunc i64 %256 to i8

  %258 = and i8 %257, 1

  store i8 %258, i8* %19, align 1, !tbaa !1259

  %259 = icmp eq i64 %246, 0

  %260 = zext i1 %259 to i8

  store i8 %260, i8* %20, align 1, !tbaa !1260

  %261 = lshr i64 %246, 63

  %262 = trunc i64 %261 to i8

  store i8 %262, i8* %21, align 1, !tbaa !1261

  %263 = lshr i64 %245, 63

  %264 = xor i64 %261, %263

  %265 = add nuw nsw i64 %264, %261

  %266 = icmp eq i64 %265, 2

  %267 = zext i1 %266 to i8

  store i8 %267, i8* %22, align 1, !tbaa !1262

  %268 = add i64 %245, 72

  %269 = inttoptr i64 %246 to i64*

  %270 = load i64, i64* %269

  store i64 %270, i64* %12, align 8, !tbaa !1240

  %271 = inttoptr i64 %268 to i64*

  %272 = load i64, i64* %271

  store i64 %272, i64* %3, align 8, !tbaa !1240

  %273 = add i64 %245, 80

  store i64 %273, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %344



block_400daf:                                     ; preds = %block_400d71

  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %275 = add i64 %201, -24

  %276 = inttoptr i64 %275 to i64*

  %277 = load i64, i64* %276

  store i64 %277, i64* %10, align 8, !tbaa !1240

  %278 = zext i32 %206 to i64

  store i64 %278, i64* %9, align 8, !tbaa !1240

  %279 = add i64 %219, -1135

  %280 = add i64 %219, 16

  %281 = load i64, i64* %11, align 8, !tbaa !1240

  %282 = add i64 %281, -8

  %283 = inttoptr i64 %282 to i64*

  store i64 %280, i64* %283

  store i64 %282, i64* %11, align 8, !tbaa !1240

  %284 = tail call %struct.Memory* @sub_400940_generate_points(%struct.State* nonnull %0, i64 %279, %struct.Memory* %202)

  %285 = load i64, i64* %3, align 8

  %286 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %287 = sext i32 %286 to i64

  %288 = shl nsw i64 %287, 3

  %289 = add i64 %285, 17

  %290 = load i64, i64* %11, align 8, !tbaa !1240

  %291 = add i64 %290, -8

  %292 = inttoptr i64 %291 to i64*

  store i64 %289, i64* %292

  %293 = inttoptr i64 %291 to i64*

  %294 = load i64, i64* %293

  store i64 %294, i64* %3, align 8, !alias.scope !1368, !noalias !1371

  store i64 %290, i64* %11, align 8, !alias.scope !1368, !noalias !1371

  %295 = tail call i64 @malloc(i64 %288)

  %296 = load i64, i64* %12, align 8

  %297 = add i64 %296, -32

  %298 = load i64, i64* %3, align 8

  %299 = inttoptr i64 %297 to i64*

  store i64 %295, i64* %299

  %300 = add i64 %296, -44

  %301 = add i64 %298, 11

  %302 = inttoptr i64 %300 to i32*

  store i32 0, i32* %302

  br label %block_400ddb



block_400deb:                                     ; preds = %block_400ddb

  %303 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %304 = sext i32 %303 to i64

  %305 = shl nsw i64 %304, 2

  %306 = add i64 %239, 20

  %307 = load i64, i64* %11, align 8, !tbaa !1240

  %308 = add i64 %307, -8

  %309 = inttoptr i64 %308 to i64*

  store i64 %306, i64* %309

  %310 = inttoptr i64 %308 to i64*

  %311 = load i64, i64* %310

  store i64 %311, i64* %3, align 8, !alias.scope !1373, !noalias !1376

  store i64 %307, i64* %11, align 8, !alias.scope !1373, !noalias !1376

  %312 = tail call i64 @malloc(i64 %305)

  %313 = load i64, i64* %12, align 8

  %314 = add i64 %313, -32

  %315 = load i64, i64* %3, align 8

  %316 = inttoptr i64 %314 to i64*

  %317 = load i64, i64* %316

  %318 = add i64 %313, -44

  %319 = inttoptr i64 %318 to i32*

  %320 = load i32, i32* %319

  %321 = sext i32 %320 to i64

  store i64 %321, i64* %8, align 8, !tbaa !1240

  %322 = shl nsw i64 %321, 3

  %323 = add i64 %322, %317

  %324 = inttoptr i64 %323 to i64*

  store i64 %312, i64* %324

  %325 = inttoptr i64 %318 to i32*

  %326 = load i32, i32* %325

  %327 = add i32 %326, 1

  %328 = inttoptr i64 %318 to i32*

  store i32 %327, i32* %328

  %329 = add i64 %315, -36

  br label %block_400ddb



block_400f12:                                     ; preds = %block_400ee0

  %330 = add i64 %460, 12

  %331 = load i64, i64* %11, align 8, !tbaa !1240

  %332 = add i64 %331, -8

  %333 = inttoptr i64 %332 to i64*

  store i64 %330, i64* %333

  %334 = inttoptr i64 %332 to i64*

  %335 = load i64, i64* %334

  store i64 %335, i64* %3, align 8, !alias.scope !1378, !noalias !1381

  store i64 %331, i64* %11, align 8, !alias.scope !1378, !noalias !1381

  %336 = tail call i64 @free(i64 %463), !noalias !1378

  %337 = load i64, i64* %12, align 8

  %338 = add i64 %337, -44

  %339 = load i64, i64* %3, align 8

  %340 = add i64 %339, 7

  %341 = inttoptr i64 %338 to i32*

  store i32 0, i32* %341

  br label %block_400f25



block_400f25:                                     ; preds = %block_400f12, %block_400f35

  %342 = phi i64 [ %340, %block_400f12 ], [ %78, %block_400f35 ]

  %343 = phi i64 [ %337, %block_400f12 ], [ %71, %block_400f35 ]

  %344 = phi %struct.Memory* [ %443, %block_400f12 ], [ %344, %block_400f35 ]

  %345 = add i64 %343, -44

  %346 = inttoptr i64 %345 to i32*

  %347 = load i32, i32* %346

  %348 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %349 = sub i32 %347, %348

  %350 = lshr i32 %349, 31

  %351 = trunc i32 %350 to i8

  %352 = lshr i32 %347, 31

  %353 = lshr i32 %348, 31

  %354 = xor i32 %353, %352

  %355 = xor i32 %350, %352

  %356 = add nuw nsw i32 %355, %354

  %357 = icmp eq i32 %356, 2

  %358 = icmp ne i8 %351, 0

  %359 = xor i1 %358, %357

  %360 = select i1 %359, i64 16, i64 50

  %361 = add i64 %342, %360

  %362 = add i64 %343, -24

  %363 = inttoptr i64 %362 to i64*

  %364 = load i64, i64* %363

  br i1 %359, label %block_400f35, label %block_400f57



block_400e19:                                     ; preds = %block_400ddb

  %365 = add i64 %221, -32

  %366 = inttoptr i64 %365 to i64*

  %367 = load i64, i64* %366

  store i64 %367, i64* %10, align 8, !tbaa !1240

  %368 = zext i32 %226 to i64

  store i64 %368, i64* %9, align 8, !tbaa !1240

  %369 = add i64 %239, -1241

  %370 = add i64 %239, 16

  %371 = load i64, i64* %11, align 8, !tbaa !1240

  %372 = add i64 %371, -8

  %373 = inttoptr i64 %372 to i64*

  store i64 %370, i64* %373

  store i64 %372, i64* %11, align 8, !tbaa !1240

  %374 = tail call %struct.Memory* @sub_400940_generate_points(%struct.State* nonnull %0, i64 %369, %struct.Memory* %222)

  %375 = load i64, i64* %3, align 8

  %376 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %377 = sext i32 %376 to i64

  %378 = shl nsw i64 %377, 2

  %379 = add i64 %375, 17

  %380 = load i64, i64* %11, align 8, !tbaa !1240

  %381 = add i64 %380, -8

  %382 = inttoptr i64 %381 to i64*

  store i64 %379, i64* %382

  %383 = inttoptr i64 %381 to i64*

  %384 = load i64, i64* %383

  store i64 %384, i64* %3, align 8, !alias.scope !1383, !noalias !1386

  store i64 %380, i64* %11, align 8, !alias.scope !1383, !noalias !1386

  %385 = tail call i64 @malloc(i64 %378)

  %386 = load i64, i64* %3, align 8

  %387 = load i64, i64* %12, align 8

  %388 = add i64 %387, -40

  %389 = inttoptr i64 %388 to i64*

  store i64 %385, i64* %389

  %390 = inttoptr i64 %388 to i64*

  %391 = load i64, i64* %390

  %392 = load i32, i32* bitcast (%num_points_type* @num_points to i32*)

  %393 = sext i32 %392 to i64

  %394 = shl nsw i64 %393, 2

  %395 = add i64 %387, -56

  %396 = inttoptr i64 %395 to i64*

  store i64 %394, i64* %396

  %397 = inttoptr i64 %395 to i64*

  %398 = load i64, i64* %397

  %399 = add i64 %386, 41

  %400 = load i64, i64* %11, align 8, !tbaa !1240

  %401 = add i64 %400, -8

  %402 = inttoptr i64 %401 to i64*

  store i64 %399, i64* %402

  %403 = inttoptr i64 %401 to i64*

  %404 = load i64, i64* %403

  store i64 %404, i64* %3, align 8, !alias.scope !1388, !noalias !1391

  store i64 %400, i64* %11, align 8, !alias.scope !1388, !noalias !1391

  %405 = tail call i64 @memset(i64 %391, i64 255, i64 %398), !noalias !1388

  %406 = load i64, i64* %3, align 8

  %407 = add i64 %406, 11

  store i32 1, i32* bitcast (%modified_type* @modified to i32*)

  br label %block_400e6e



block_400d81:                                     ; preds = %block_400d71

  %408 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %409 = sext i32 %408 to i64

  %410 = shl nsw i64 %409, 2

  %411 = add i64 %219, 20

  %412 = load i64, i64* %11, align 8, !tbaa !1240

  %413 = add i64 %412, -8

  %414 = inttoptr i64 %413 to i64*

  store i64 %411, i64* %414

  %415 = inttoptr i64 %413 to i64*

  %416 = load i64, i64* %415

  store i64 %416, i64* %3, align 8, !alias.scope !1393, !noalias !1396

  store i64 %412, i64* %11, align 8, !alias.scope !1393, !noalias !1396

  %417 = tail call i64 @malloc(i64 %410)

  %418 = load i64, i64* %12, align 8

  %419 = add i64 %418, -24

  %420 = load i64, i64* %3, align 8

  %421 = inttoptr i64 %419 to i64*

  %422 = load i64, i64* %421

  %423 = add i64 %418, -44

  %424 = inttoptr i64 %423 to i32*

  %425 = load i32, i32* %424

  %426 = sext i32 %425 to i64

  store i64 %426, i64* %8, align 8, !tbaa !1240

  %427 = shl nsw i64 %426, 3

  %428 = add i64 %427, %422

  %429 = inttoptr i64 %428 to i64*

  store i64 %417, i64* %429

  %430 = inttoptr i64 %423 to i32*

  %431 = load i32, i32* %430

  %432 = add i32 %431, 1

  %433 = inttoptr i64 %423 to i32*

  store i32 %432, i32* %433

  %434 = add i64 %420, -36

  br label %block_400d71



block_400e6e:                                     ; preds = %block_400e19, %block_400e7c

  %435 = phi i64 [ %407, %block_400e19 ], [ %133, %block_400e7c ]

  %436 = phi %struct.Memory* [ %374, %block_400e19 ], [ %131, %block_400e7c ]

  %437 = load i32, i32* bitcast (%modified_type* @modified to i32*)

  %438 = icmp eq i32 %437, 0

  %439 = select i1 %438, i64 64, i64 14

  %440 = add i64 %435, %439

  br i1 %438, label %block_400eae, label %block_400e7c



block_400ee0:                                     ; preds = %block_400eae, %block_400ef0

  %441 = phi i64 [ %198, %block_400eae ], [ %98, %block_400ef0 ]

  %442 = phi i64 [ %192, %block_400eae ], [ %91, %block_400ef0 ]

  %443 = phi %struct.Memory* [ %147, %block_400eae ], [ %443, %block_400ef0 ]

  %444 = add i64 %442, -44

  %445 = inttoptr i64 %444 to i32*

  %446 = load i32, i32* %445

  %447 = load i32, i32* bitcast (%num_means_type* @num_means to i32*)

  %448 = sub i32 %446, %447

  %449 = lshr i32 %448, 31

  %450 = trunc i32 %449 to i8

  %451 = lshr i32 %446, 31

  %452 = lshr i32 %447, 31

  %453 = xor i32 %452, %451

  %454 = xor i32 %449, %451

  %455 = add nuw nsw i32 %454, %453

  %456 = icmp eq i32 %455, 2

  %457 = icmp ne i8 %450, 0

  %458 = xor i1 %457, %456

  %459 = select i1 %458, i64 16, i64 50

  %460 = add i64 %441, %459

  %461 = add i64 %442, -32

  %462 = inttoptr i64 %461 to i64*

  %463 = load i64, i64* %462

  br i1 %458, label %block_400ef0, label %block_400f12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400580__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400580:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = load i64, i64* %5, align 8

  %7 = add i64 %6, -8

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %14 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*)

  store i64 %14, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %8, align 1, !tbaa !1244

  %15 = trunc i64 %14 to i32

  %16 = and i32 %15, 255

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9

  %18 = trunc i32 %17 to i8

  %19 = and i8 %18, 1

  %20 = xor i8 %19, 1

  store i8 %20, i8* %9, align 1, !tbaa !1258

  %21 = icmp eq i64 %14, 0

  %22 = zext i1 %21 to i8

  store i8 %22, i8* %11, align 1, !tbaa !1260

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1261

  store i8 0, i8* %13, align 1, !tbaa !1262

  store i8 0, i8* %10, align 1, !tbaa !1259

  %25 = select i1 %21, i64 18, i64 16

  %26 = add i64 %25, %1

  br i1 %21, label %block_400592, label %block_400590



block_400592:                                     ; preds = %block_400590, %block_400580

  %27 = phi i64 [ %7, %block_400580 ], [ %58, %block_400590 ]

  %28 = phi %struct.Memory* [ %2, %block_400580 ], [ %57, %block_400590 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1244

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9

  %35 = trunc i32 %34 to i8

  %36 = and i8 %35, 1

  %37 = xor i8 %36, 1

  store i8 %37, i8* %9, align 1, !tbaa !1258

  %38 = xor i64 %29, %27

  %39 = lshr i64 %38, 4

  %40 = trunc i64 %39 to i8

  %41 = and i8 %40, 1

  store i8 %41, i8* %10, align 1, !tbaa !1259

  %42 = icmp eq i64 %29, 0

  %43 = zext i1 %42 to i8

  store i8 %43, i8* %11, align 1, !tbaa !1260

  %44 = lshr i64 %29, 63

  %45 = trunc i64 %44 to i8

  store i8 %45, i8* %12, align 1, !tbaa !1261

  %46 = lshr i64 %27, 63

  %47 = xor i64 %44, %46

  %48 = add nuw nsw i64 %47, %44

  %49 = icmp eq i64 %48, 2

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1262

  %51 = inttoptr i64 %29 to i64*

  %52 = load i64, i64* %51

  store i64 %52, i64* %3, align 8, !tbaa !1240

  %53 = add i64 %27, 16

  store i64 %53, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %28



block_400590:                                     ; preds = %block_400580

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_400592

}



; Function Attrs: noinline

define %struct.Memory* @sub_400940_generate_points(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400940:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %14 = load i64, i64* %13, align 8

  %15 = load i64, i64* %12, align 8, !tbaa !1240

  %16 = add i64 %15, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %14, i64* %17

  store i64 %16, i64* %13, align 8, !tbaa !1240

  %18 = add i64 %15, -40

  store i64 %18, i64* %12, align 8, !tbaa !1240

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %25 = add i64 %15, -16

  %26 = load i64, i64* %11, align 8

  %27 = inttoptr i64 %25 to i64*

  store i64 %26, i64* %27

  %28 = add i64 %15, -20

  %29 = load i32, i32* %7, align 4

  %30 = inttoptr i64 %28 to i32*

  store i32 %29, i32* %30

  %31 = add i64 %15, -24

  %32 = add i64 %1, 22

  %33 = inttoptr i64 %31 to i32*

  store i32 0, i32* %33

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %36 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  br label %block_400956



block_400979:                                     ; preds = %block_400969

  %37 = load i64, i64* %12, align 8, !tbaa !1240

  %38 = add i64 %37, -8

  %39 = inttoptr i64 %38 to i64*

  store i64 %127, i64* %39

  %40 = inttoptr i64 %38 to i64*

  %41 = load i64, i64* %40

  store i64 %41, i64* %3, align 8, !alias.scope !1398, !noalias !1401

  store i64 %37, i64* %12, align 8, !alias.scope !1398, !noalias !1401

  %42 = tail call i64 @rand(), !noalias !1398

  store i64 %42, i64* %34, align 8, !alias.scope !1398, !noalias !1401

  %43 = load i64, i64* %3, align 8

  %44 = shl i64 %42, 32

  %45 = ashr exact i64 %44, 32

  %46 = lshr i64 %45, 32

  store i64 %46, i64* %35, align 8, !tbaa !1240

  %47 = add i64 %43, 8

  store i64 %47, i64* %3, align 8

  %48 = and i64 %42, 4294967295

  %49 = load i32, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %50 = sext i32 %49 to i64

  %51 = shl nuw i64 %46, 32

  %52 = or i64 %51, %48

  %53 = sdiv i64 %52, %50

  %54 = shl i64 %53, 32

  %55 = ashr exact i64 %54, 32

  %56 = icmp eq i64 %53, %55

  br i1 %56, label %61, label %57



; <label>:57:                                     ; preds = %block_400979

  %58 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %47, %struct.Memory* %94) #12

  %59 = load i64, i64* %3, align 8

  %60 = load i32, i32* %5, align 4

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:61:                                     ; preds = %block_400979

  %62 = srem i64 %52, %50

  %63 = and i64 %62, 4294967295

  store i64 %63, i64* %36, align 8, !tbaa !1240

  %64 = trunc i64 %62 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %61, %57

  %65 = phi i32 [ %60, %57 ], [ %64, %61 ]

  %66 = phi i64 [ %59, %57 ], [ %47, %61 ]

  %67 = phi %struct.Memory* [ %58, %57 ], [ %94, %61 ]

  %68 = load i64, i64* %13, align 8

  %69 = add i64 %68, -8

  %70 = inttoptr i64 %69 to i64*

  %71 = load i64, i64* %70

  %72 = add i64 %68, -16

  %73 = inttoptr i64 %72 to i32*

  %74 = load i32, i32* %73

  %75 = sext i32 %74 to i64

  %76 = shl nsw i64 %75, 3

  %77 = add i64 %76, %71

  %78 = inttoptr i64 %77 to i64*

  %79 = load i64, i64* %78

  store i64 %79, i64* %9, align 8, !tbaa !1240

  %80 = add i64 %68, -20

  %81 = inttoptr i64 %80 to i32*

  %82 = load i32, i32* %81

  %83 = sext i32 %82 to i64

  store i64 %83, i64* %10, align 8, !tbaa !1240

  %84 = shl nsw i64 %83, 2

  %85 = add i64 %84, %79

  %86 = inttoptr i64 %85 to i32*

  store i32 %65, i32* %86

  %87 = inttoptr i64 %80 to i32*

  %88 = load i32, i32* %87

  %89 = add i32 %88, 1

  %90 = inttoptr i64 %80 to i32*

  store i32 %89, i32* %90

  %91 = add i64 %66, -29

  br label %block_400969



block_400969:                                     ; preds = %block_400962, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

  %92 = phi i64 [ %164, %block_400962 ], [ %91, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %93 = phi i64 [ %167, %block_400962 ], [ %68, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %94 = phi %struct.Memory* [ %168, %block_400962 ], [ %67, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %95 = add i64 %93, -20

  %96 = inttoptr i64 %95 to i32*

  %97 = load i32, i32* %96

  %98 = load i32, i32* bitcast (%dim_type* @dim to i32*)

  %99 = sub i32 %97, %98

  %100 = icmp ult i32 %97, %98

  %101 = zext i1 %100 to i8

  store i8 %101, i8* %19, align 1, !tbaa !1244

  %102 = and i32 %99, 255

  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #9

  %104 = trunc i32 %103 to i8

  %105 = and i8 %104, 1

  %106 = xor i8 %105, 1

  store i8 %106, i8* %20, align 1, !tbaa !1258

  %107 = xor i32 %98, %97

  %108 = xor i32 %107, %99

  %109 = lshr i32 %108, 4

  %110 = trunc i32 %109 to i8

  %111 = and i8 %110, 1

  store i8 %111, i8* %21, align 1, !tbaa !1259

  %112 = icmp eq i32 %99, 0

  %113 = zext i1 %112 to i8

  store i8 %113, i8* %22, align 1, !tbaa !1260

  %114 = lshr i32 %99, 31

  %115 = trunc i32 %114 to i8

  store i8 %115, i8* %23, align 1, !tbaa !1261

  %116 = lshr i32 %97, 31

  %117 = lshr i32 %98, 31

  %118 = xor i32 %117, %116

  %119 = xor i32 %114, %116

  %120 = add nuw nsw i32 %119, %118

  %121 = icmp eq i32 %120, 2

  %122 = zext i1 %121 to i8

  store i8 %122, i8* %24, align 1, !tbaa !1262

  %123 = icmp ne i8 %115, 0

  %124 = xor i1 %123, %121

  %125 = select i1 %124, i64 16, i64 62

  %126 = add i64 %92, %125

  %127 = add i64 %126, 5

  br i1 %124, label %block_400979, label %block_4009a7



block_4009a7:                                     ; preds = %block_400969

  %128 = add i64 %93, -16

  %129 = inttoptr i64 %128 to i32*

  %130 = load i32, i32* %129

  %131 = add i32 %130, 1

  %132 = inttoptr i64 %128 to i32*

  store i32 %131, i32* %132

  %133 = add i64 %126, -81

  br label %block_400956



block_4009ba:                                     ; preds = %block_400956

  %134 = load i64, i64* %12, align 8

  %135 = add i64 %134, 32

  %136 = icmp ugt i64 %134, -33

  %137 = zext i1 %136 to i8

  store i8 %137, i8* %19, align 1, !tbaa !1244

  %138 = trunc i64 %135 to i32

  %139 = and i32 %138, 255

  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #9

  %141 = trunc i32 %140 to i8

  %142 = and i8 %141, 1

  %143 = xor i8 %142, 1

  store i8 %143, i8* %20, align 1, !tbaa !1258

  %144 = xor i64 %135, %134

  %145 = lshr i64 %144, 4

  %146 = trunc i64 %145 to i8

  %147 = and i8 %146, 1

  store i8 %147, i8* %21, align 1, !tbaa !1259

  %148 = icmp eq i64 %135, 0

  %149 = zext i1 %148 to i8

  store i8 %149, i8* %22, align 1, !tbaa !1260

  %150 = lshr i64 %135, 63

  %151 = trunc i64 %150 to i8

  store i8 %151, i8* %23, align 1, !tbaa !1261

  %152 = lshr i64 %134, 63

  %153 = xor i64 %150, %152

  %154 = add nuw nsw i64 %153, %150

  %155 = icmp eq i64 %154, 2

  %156 = zext i1 %155 to i8

  store i8 %156, i8* %24, align 1, !tbaa !1262

  %157 = add i64 %134, 40

  %158 = inttoptr i64 %135 to i64*

  %159 = load i64, i64* %158

  store i64 %159, i64* %13, align 8, !tbaa !1240

  %160 = inttoptr i64 %157 to i64*

  %161 = load i64, i64* %160

  store i64 %161, i64* %3, align 8, !tbaa !1240

  %162 = add i64 %134, 48

  store i64 %162, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %168



block_400962:                                     ; preds = %block_400956

  %163 = add i64 %167, -20

  %164 = add i64 %188, 7

  %165 = inttoptr i64 %163 to i32*

  store i32 0, i32* %165

  br label %block_400969



block_400956:                                     ; preds = %block_4009a7, %block_400940

  %166 = phi i64 [ %32, %block_400940 ], [ %133, %block_4009a7 ]

  %167 = phi i64 [ %16, %block_400940 ], [ %93, %block_4009a7 ]

  %168 = phi %struct.Memory* [ %2, %block_400940 ], [ %94, %block_4009a7 ]

  %169 = add i64 %167, -16

  %170 = inttoptr i64 %169 to i32*

  %171 = load i32, i32* %170

  %172 = zext i32 %171 to i64

  store i64 %172, i64* %8, align 8, !tbaa !1240

  %173 = add i64 %167, -12

  %174 = inttoptr i64 %173 to i32*

  %175 = load i32, i32* %174

  %176 = sub i32 %171, %175

  %177 = lshr i32 %176, 31

  %178 = trunc i32 %177 to i8

  %179 = lshr i32 %171, 31

  %180 = lshr i32 %175, 31

  %181 = xor i32 %180, %179

  %182 = xor i32 %177, %179

  %183 = add nuw nsw i32 %182, %181

  %184 = icmp eq i32 %183, 2

  %185 = icmp ne i8 %178, 0

  %186 = xor i1 %185, %184

  %187 = select i1 %186, i64 12, i64 100

  %188 = add i64 %166, %187

  br i1 %186, label %block_400962, label %block_4009ba

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4006a0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %8 = load i64, i64* %7, align 8

  %9 = load i64, i64* %6, align 8, !tbaa !1240

  %10 = add i64 %9, -8

  %11 = inttoptr i64 %10 to i64*

  store i64 %8, i64* %11

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64* %4, align 8, !tbaa !1240

  store i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64* %5, align 8, !tbaa !1240

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !1403

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1) to i32), i32 255)) #9

  %19 = trunc i32 %18 to i8

  %20 = and i8 %19, 1

  %21 = xor i8 %20, 1

  store i8 %21, i8* %13, align 1, !tbaa !1403

  store i8 0, i8* %14, align 1, !tbaa !1403

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !1403

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !1403

  store i8 0, i8* %17, align 1, !tbaa !1403

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64 0), label %block_4006d8, label %block_4006c3



block_4006d8:                                     ; preds = %block_4006c3, %block_4006a0

  %22 = inttoptr i64 %10 to i64*

  %23 = load i64, i64* %22

  store i64 %23, i64* %7, align 8, !tbaa !1240

  %24 = inttoptr i64 %9 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %9, 8

  store i64 %26, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4006c3:                                     ; preds = %block_4006a0

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1244

  store i8 1, i8* %13, align 1, !tbaa !1258

  store i8 1, i8* %15, align 1, !tbaa !1260

  store i8 0, i8* %16, align 1, !tbaa !1261

  store i8 0, i8* %17, align 1, !tbaa !1262

  store i8 0, i8* %14, align 1, !tbaa !1259

  br label %block_4006d8

}



; Function Attrs: noinline

define %struct.Memory* @sub_4005a0(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4005a0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 8) to i64*)

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = load i64, i64* %5, align 8, !tbaa !1240

  %7 = add i64 %6, -8

  %8 = inttoptr i64 %7 to i64*

  store i64 %4, i64* %8

  store i64 %7, i64* %5, align 8, !tbaa !1240

  %9 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 16) to i64*)

  store i64 %9, i64* %3, align 8, !tbaa !1240

  %10 = icmp eq i64 %9, 4195756

  br i1 %10, label %block_4005ac, label %17



block_4005ac:                                     ; preds = %block_4005a0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %13 = load i64, i64* %12, align 8, !alias.scope !1404, !noalias !1407

  %14 = inttoptr i64 %7 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %3, align 8, !alias.scope !1404, !noalias !1407

  store i64 %6, i64* %5, align 8, !alias.scope !1404, !noalias !1407

  %16 = tail call i64 @free(i64 %13), !noalias !1404

  store i64 %16, i64* %11, align 8, !alias.scope !1404, !noalias !1407

  ret %struct.Memory* %2



; <label>:17:                                     ; preds = %block_4005a0

  %18 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %18

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400fe0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400fe0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %5 = load i64, i64* %4, align 8, !tbaa !1240

  %6 = inttoptr i64 %5 to i64*

  %7 = load i64, i64* %6

  store i64 %7, i64* %3, align 8, !tbaa !1240

  %8 = add i64 %5, 8

  store i64 %8, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400630__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195888, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400630__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195888, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: norecurse nounwind

define void @__mcsema_verify_reg_state() local_unnamed_addr #6 {

entry:

  %0 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %1 = icmp eq i64 %0, 0

  br i1 %1, label %is_null, label %end



is_null:                                          ; preds = %entry

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %end



end:                                              ; preds = %is_null, %entry

  ret void

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400710_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196112, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400710_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196112, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4006e0___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196064, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196064, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: noinline nounwind

define %struct.Memory* @__mcsema_detach_call_value(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %13 = load i64, i64* %9, align 8

  %14 = load i64, i64* %8, align 8

  %15 = load i64, i64* %7, align 8

  %16 = load i64, i64* %6, align 8

  %17 = load i64, i64* %11, align 8

  %18 = load i64, i64* %12, align 8

  %19 = load i64, i64* %10, align 8

  %20 = add i64 %19, 8

  %21 = inttoptr i64 %20 to i64*

  %22 = load i64, i64* %21

  %23 = add i64 %19, 16

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  %26 = inttoptr i64 %1 to i64 (i64, i64, i64, i64, i64, i64, i64, i64)*

  %27 = tail call i64 %26(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25) #9

  store i64 %27, i64* %5, align 8

  %28 = inttoptr i64 %19 to i64*

  %29 = load i64, i64* %28

  store i64 %29, i64* %4, align 8

  store i64 %20, i64* %10, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400600_atoi(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = load i64, i64* %6, align 8

  %9 = load i64, i64* %7, align 8

  %10 = inttoptr i64 %9 to i64*

  %11 = load i64, i64* %10

  store i64 %11, i64* %4, align 8

  %12 = add i64 %9, 8

  store i64 %12, i64* %7, align 8

  %13 = tail call i64 @atoi(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020b8_getopt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8

  %12 = load i64, i64* %6, align 8

  %13 = load i64, i64* %9, align 8

  %14 = inttoptr i64 %13 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %4, align 8

  %16 = add i64 %13, 8

  store i64 %16, i64* %9, align 8

  %17 = tail call i64 @getopt(i64 %10, i64 %11, i64 %12)

  store i64 %17, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602098_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %13 = load i64, i64* %9, align 8

  %14 = load i64, i64* %8, align 8

  %15 = load i64, i64* %7, align 8

  %16 = load i64, i64* %6, align 8

  %17 = load i64, i64* %11, align 8

  %18 = load i64, i64* %12, align 8

  %19 = load i64, i64* %10, align 8

  %20 = add i64 %19, 8

  %21 = inttoptr i64 %20 to i64*

  %22 = load i64, i64* %21

  %23 = add i64 %19, 16

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  %26 = add i64 %19, 24

  %27 = inttoptr i64 %26 to i64*

  %28 = load i64, i64* %27

  %29 = add i64 %19, 32

  %30 = inttoptr i64 %29 to i64*

  %31 = load i64, i64* %30

  %32 = add i64 %19, 40

  %33 = inttoptr i64 %32 to i64*

  %34 = load i64, i64* %33

  %35 = add i64 %19, 48

  %36 = inttoptr i64 %35 to i64*

  %37 = load i64, i64* %36

  %38 = add i64 %19, 56

  %39 = inttoptr i64 %38 to i64*

  %40 = load i64, i64* %39

  %41 = add i64 %19, 64

  %42 = inttoptr i64 %41 to i64*

  %43 = load i64, i64* %42

  %44 = add i64 %19, 72

  %45 = inttoptr i64 %44 to i64*

  %46 = load i64, i64* %45

  %47 = add i64 %19, 80

  %48 = inttoptr i64 %47 to i64*

  %49 = load i64, i64* %48

  %50 = inttoptr i64 %19 to i64*

  %51 = load i64, i64* %50

  store i64 %51, i64* %4, align 8

  store i64 %20, i64* %10, align 8

  %52 = tail call i64 @printf(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49)

  store i64 %52, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020c8_exit(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = load i64, i64* %6, align 8

  %9 = load i64, i64* %7, align 8

  %10 = inttoptr i64 %9 to i64*

  %11 = load i64, i64* %10

  store i64 %11, i64* %4, align 8

  %12 = add i64 %9, 8

  store i64 %12, i64* %7, align 8

  %13 = tail call i64 @exit(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400fe0___libc_csu_fini() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198368, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_400fe0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4198368, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400f70___libc_csu_init() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198256, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_400f70___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4198256, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline

define i64 @main(i64, i64, i64) #5 {

  %4 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %5 = icmp eq i64 %4, 0

  br i1 %5, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %3

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %3

  %6 = phi i64 [ %4, %3 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197680, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %7 = load volatile i1, i1* @0, align 1

  br i1 %7, label %__mcsema_early_init.exit, label %8



; <label>:8:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %8, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  %9 = add i64 %6, -8

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = tail call %struct.Memory* @sub_400d30_main(%struct.State* nonnull @__mcsema_reg_state, i64 4197680, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %11

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020a8___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %13 = load i64, i64* %9, align 8

  %14 = load i64, i64* %8, align 8

  %15 = load i64, i64* %7, align 8

  %16 = load i64, i64* %6, align 8

  %17 = load i64, i64* %11, align 8

  %18 = load i64, i64* %12, align 8

  %19 = load i64, i64* %10, align 8

  %20 = add i64 %19, 8

  %21 = inttoptr i64 %20 to i64*

  %22 = load i64, i64* %21

  %23 = add i64 %19, 16

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  %26 = inttoptr i64 %19 to i64*

  %27 = load i64, i64* %26

  store i64 %27, i64* %4, align 8

  store i64 %20, i64* %10, align 8

  %28 = tail call i64 @__libc_start_main(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25)

  store i64 %28, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_4005e0_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = load i64, i64* %6, align 8

  %9 = load i64, i64* %7, align 8

  %10 = inttoptr i64 %9 to i64*

  %11 = load i64, i64* %10

  store i64 %11, i64* %4, align 8

  %12 = add i64 %9, 8

  store i64 %12, i64* %7, align 8

  %13 = tail call i64 @malloc(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_4005d0_memset(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8

  %12 = load i64, i64* %6, align 8

  %13 = load i64, i64* %9, align 8

  %14 = inttoptr i64 %13 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %4, align 8

  %16 = add i64 %13, 8

  store i64 %16, i64* %9, align 8

  %17 = tail call i64 @memset(i64 %10, i64 %11, i64 %12)

  store i64 %17, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_4005b0_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = load i64, i64* %6, align 8

  %9 = load i64, i64* %7, align 8

  %10 = inttoptr i64 %9 to i64*

  %11 = load i64, i64* %10

  store i64 %11, i64* %4, align 8

  %12 = add i64 %9, 8

  store i64 %12, i64* %7, align 8

  %13 = tail call i64 @free(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020d0_rand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = inttoptr i64 %7 to i64*

  %9 = load i64, i64* %8

  store i64 %9, i64* %4, align 8

  %10 = add i64 %7, 8

  store i64 %10, i64* %6, align 8

  %11 = tail call i64 @rand()

  store i64 %11, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @dump_matrix(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197584, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400cd0_dump_matrix(%struct.State* nonnull @__mcsema_reg_state, i64 4197584, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @.term_proc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198372, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400fe4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4198372, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @parse_args(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196128, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400720_parse_args(%struct.State* nonnull @__mcsema_reg_state, i64 4196128, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @generate_points(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196672, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400940_generate_points(%struct.State* nonnull @__mcsema_reg_state, i64 4196672, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @calc_means(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197264, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400b90_calc_means(%struct.State* nonnull @__mcsema_reg_state, i64 4197264, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @find_clusters(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196880, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400a10_find_clusters(%struct.State* nonnull @__mcsema_reg_state, i64 4196880, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @.init_proc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195712, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_400580__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195712, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @add_to_sum(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196800, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %14 = inttoptr i64 %11 to i64*

  store i64 %7, i64* %14

  %15 = add i64 %11, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %6, i64* %16

  %17 = add i64 %11, -24

  store i64 %17, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %18 = tail call %struct.Memory* @sub_4009c0_add_to_sum(%struct.State* nonnull @__mcsema_reg_state, i64 4196800, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nounwind

define internal void @__mcsema_constructor() #9 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_400f70___libc_csu_init()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #9 {

  %1 = tail call i64 @callback_sub_400fe0___libc_csu_fini()

  ret void

}



; Function Attrs: noinline optnone

define %struct.State* @__mcsema_debug_get_reg_state() #10 {

  ret %struct.State* @__mcsema_reg_state

}



; Function Attrs: noreturn nounwind

declare void @llvm.trap() #11



attributes #0 = { nounwind readnone speculatable }

attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #2 = { noinline }

attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #4 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #5 = { nobuiltin noinline }

attributes #6 = { norecurse nounwind }

attributes #7 = { nobuiltin noinline nounwind }

attributes #8 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #9 = { nounwind }

attributes #10 = { noinline optnone }

attributes #11 = { noreturn nounwind }

attributes #12 = { alwaysinline nobuiltin nounwind }



!llvm.ident = !{!0, !0}

!llvm.dbg.cu = !{!1}

!llvm.module.flags = !{!1238, !1239}



!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}

!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)

!2 = !DIFile(filename: "/home/antonio/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}

!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")

!5 = !DIFile(filename: "/home/antonio/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")

!7 = !{}

!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)

!9 = !DIFile(filename: "/home/antonio/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)

!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}

!12 = !DIEnumerator(name: "kInvalid", value: 0)

!13 = !DIEnumerator(name: "kX86Int1", value: 1)

!14 = !DIEnumerator(name: "kX86Int3", value: 2)

!15 = !DIEnumerator(name: "kX86IntO", value: 3)

!16 = !DIEnumerator(name: "kX86IntN", value: 4)

!17 = !DIEnumerator(name: "kX86Bound", value: 5)

!18 = !DIEnumerator(name: "kX86IRet", value: 6)

!19 = !DIEnumerator(name: "kX86SysCall", value: 7)

!20 = !DIEnumerator(name: "kX86SysRet", value: 8)

!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)

!22 = !DIEnumerator(name: "kX86SysExit", value: 10)

!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)

!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)

!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)

!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")

!27 = !DIFile(filename: "/home/antonio/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)

!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)

!30 = !{!31, !32, !33, !34}

!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)

!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)

!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)

!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)

!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")

!36 = !{!37, !38}

!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)

!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)

!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")

!40 = !{!41, !42, !43, !44}

!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)

!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)

!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)

!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)

!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")

!46 = !{!47, !48, !49, !50}

!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)

!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)

!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)

!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)

!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")

!52 = !{!53, !54}

!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)

!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)

!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")

!56 = !{!57, !58, !59, !60}

!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)

!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)

!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)

!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)

!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")

!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)

!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)

!64 = !{!65, !66}

!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)

!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)

!67 = !{!68}

!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)

!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)

!70 = !{!71, !75, !81, !84, !91, !95, !100, !102, !110, !114, !118, !130, !134, !138, !142, !146, !151, !155, !159, !163, !167, !175, !179, !183, !185, !189, !193, !197, !203, !207, !211, !213, !221, !225, !233, !235, !239, !243, !247, !251, !256, !261, !266, !267, !268, !269, !272, !273, !274, !275, !276, !277, !278, !334, !338, !354, !357, !362, !370, !375, !379, !383, !387, !391, !393, !395, !399, !405, !409, !415, !421, !423, !427, !431, !435, !439, !450, !452, !456, !460, !464, !466, !470, !474, !478, !480, !482, !486, !494, !498, !502, !506, !508, !514, !516, !522, !526, !530, !534, !538, !542, !546, !548, !550, !554, !558, !562, !564, !568, !572, !574, !576, !580, !584, !588, !592, !593, !594, !522, !450, !456, !464, !592, !593, !594, !595, !598, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !626, !627, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !657, !661, !666, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !698, !704, !709, !713, !715, !717, !719, !721, !728, !732, !736, !740, !744, !748, !753, !757, !759, !763, !769, !773, !778, !780, !782, !786, !790, !794, !796, !798, !800, !802, !806, !808, !810, !814, !818, !822, !826, !830, !832, !834, !838, !842, !846, !850, !852, !854, !858, !862, !863, !864, !865, !866, !867, !872, !874, !876, !880, !882, !884, !886, !888, !890, !892, !894, !899, !903, !905, !907, !912, !914, !916, !918, !920, !922, !924, !927, !929, !931, !935, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !963, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !1001, !1005, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1031, !1035, !1039, !1041, !1043, !1045, !1049, !1053, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1085, !1089, !1093, !1095, !1097, !1099, !1101, !1105, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1125, !1129, !1131, !1133, !1135, !1137, !1141, !1145, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1165, !1169, !1173, !1175, !1179, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1199, !1201, !1204, !1209, !1211, !1217, !1219, !1221, !1223, !1228, !1230, !1236, !1195, !1199, !1201, !1204, !1209, !1211, !1217, !1219, !1221, !1223, !1228, !1230, !1236}

!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !73)

!72 = !DINamespace(name: "__gnu_debug", scope: null)

!73 = !DINamespace(name: "__debug", scope: !74)

!74 = !DINamespace(name: "std", scope: null)

!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !76)

!76 = !DISubprogram(name: "abs", scope: !77, file: !77, line: 837, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!77 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!78 = !DISubroutineType(types: !79)

!79 = !{!80, !80}

!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)

!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !82)

!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !77, line: 62, baseType: !83)

!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")

!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !85)

!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !77, line: 70, baseType: !86)

!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 66, size: 128, elements: !87, identifier: "_ZTS6ldiv_t")

!87 = !{!88, !90}

!88 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !86, file: !77, line: 68, baseType: !89, size: 64)

!89 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)

!90 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !86, file: !77, line: 69, baseType: !89, size: 64, offset: 64)

!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !92)

!92 = !DISubprogram(name: "abort", scope: !77, file: !77, line: 588, type: !93, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)

!93 = !DISubroutineType(types: !94)

!94 = !{null}

!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !96)

!96 = !DISubprogram(name: "atexit", scope: !77, file: !77, line: 592, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!97 = !DISubroutineType(types: !98)

!98 = !{!80, !99}

!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)

!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !101)

!101 = !DISubprogram(name: "at_quick_exit", scope: !77, file: !77, line: 597, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !103)

!103 = !DISubprogram(name: "atof", scope: !77, file: !77, line: 101, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!104 = !DISubroutineType(types: !105)

!105 = !{!106, !107}

!106 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)

!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)

!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)

!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)

!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !111)

!111 = !DISubprogram(name: "atoi", scope: !77, file: !77, line: 104, type: !112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!112 = !DISubroutineType(types: !113)

!113 = !{!80, !107}

!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !115)

!115 = !DISubprogram(name: "atol", scope: !77, file: !77, line: 107, type: !116, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!116 = !DISubroutineType(types: !117)

!117 = !{!89, !107}

!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !119)

!119 = !DISubprogram(name: "bsearch", scope: !77, file: !77, line: 817, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!120 = !DISubroutineType(types: !121)

!121 = !{!122, !68, !68, !123, !123, !126}

!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)

!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 62, baseType: !125)

!124 = !DIFile(filename: "/home/antonio/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)

!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !77, line: 805, baseType: !127)

!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)

!128 = !DISubroutineType(types: !129)

!129 = !{!80, !68, !68}

!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !131)

!131 = !DISubprogram(name: "calloc", scope: !77, file: !77, line: 541, type: !132, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!132 = !DISubroutineType(types: !133)

!133 = !{!122, !123, !123}

!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !135)

!135 = !DISubprogram(name: "div", scope: !77, file: !77, line: 849, type: !136, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!136 = !DISubroutineType(types: !137)

!137 = !{!82, !80, !80}

!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !139)

!139 = !DISubprogram(name: "exit", scope: !77, file: !77, line: 614, type: !140, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)

!140 = !DISubroutineType(types: !141)

!141 = !{null, !80}

!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !143)

!143 = !DISubprogram(name: "free", scope: !77, file: !77, line: 563, type: !144, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!144 = !DISubroutineType(types: !145)

!145 = !{null, !122}

!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !147)

!147 = !DISubprogram(name: "getenv", scope: !77, file: !77, line: 631, type: !148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!148 = !DISubroutineType(types: !149)

!149 = !{!150, !107}

!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)

!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !152)

!152 = !DISubprogram(name: "labs", scope: !77, file: !77, line: 838, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!153 = !DISubroutineType(types: !154)

!154 = !{!89, !89}

!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !156)

!156 = !DISubprogram(name: "ldiv", scope: !77, file: !77, line: 851, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!157 = !DISubroutineType(types: !158)

!158 = !{!85, !89, !89}

!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !160)

!160 = !DISubprogram(name: "malloc", scope: !77, file: !77, line: 539, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!161 = !DISubroutineType(types: !162)

!162 = !{!122, !123}

!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !164)

!164 = !DISubprogram(name: "mblen", scope: !77, file: !77, line: 919, type: !165, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!165 = !DISubroutineType(types: !166)

!166 = !{!80, !107, !123}

!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !168)

!168 = !DISubprogram(name: "mbstowcs", scope: !77, file: !77, line: 930, type: !169, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!169 = !DISubroutineType(types: !170)

!170 = !{!123, !171, !174, !123}

!171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)

!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)

!173 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)

!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)

!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !176)

!176 = !DISubprogram(name: "mbtowc", scope: !77, file: !77, line: 922, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!177 = !DISubroutineType(types: !178)

!178 = !{!80, !171, !174, !123}

!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !180)

!180 = !DISubprogram(name: "qsort", scope: !77, file: !77, line: 827, type: !181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!181 = !DISubroutineType(types: !182)

!182 = !{null, !122, !123, !123, !126}

!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !184)

!184 = !DISubprogram(name: "quick_exit", scope: !77, file: !77, line: 620, type: !140, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)

!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !186)

!186 = !DISubprogram(name: "rand", scope: !77, file: !77, line: 453, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!187 = !DISubroutineType(types: !188)

!188 = !{!80}

!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !190)

!190 = !DISubprogram(name: "realloc", scope: !77, file: !77, line: 549, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!191 = !DISubroutineType(types: !192)

!192 = !{!122, !122, !123}

!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !194)

!194 = !DISubprogram(name: "srand", scope: !77, file: !77, line: 455, type: !195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!195 = !DISubroutineType(types: !196)

!196 = !{null, !10}

!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !198)

!198 = !DISubprogram(name: "strtod", scope: !77, file: !77, line: 117, type: !199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!199 = !DISubroutineType(types: !200)

!200 = !{!106, !174, !201}

!201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)

!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)

!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !204)

!204 = !DISubprogram(name: "strtol", scope: !77, file: !77, line: 176, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!205 = !DISubroutineType(types: !206)

!206 = !{!89, !174, !201, !80}

!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !208)

!208 = !DISubprogram(name: "strtoul", scope: !77, file: !77, line: 180, type: !209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!209 = !DISubroutineType(types: !210)

!210 = !{!125, !174, !201, !80}

!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !212)

!212 = !DISubprogram(name: "system", scope: !77, file: !77, line: 781, type: !112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !214)

!214 = !DISubprogram(name: "wcstombs", scope: !77, file: !77, line: 933, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!215 = !DISubroutineType(types: !216)

!216 = !{!123, !217, !218, !123}

!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)

!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)

!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)

!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)

!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !222)

!222 = !DISubprogram(name: "wctomb", scope: !77, file: !77, line: 926, type: !223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!223 = !DISubroutineType(types: !224)

!224 = !{!80, !150, !173}

!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !227)

!226 = !DINamespace(name: "__gnu_cxx", scope: null)

!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !77, line: 80, baseType: !228)

!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 76, size: 128, elements: !229, identifier: "_ZTS7lldiv_t")

!229 = !{!230, !232}

!230 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !228, file: !77, line: 78, baseType: !231, size: 64)

!231 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)

!232 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !228, file: !77, line: 79, baseType: !231, size: 64, offset: 64)

!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !234)

!234 = !DISubprogram(name: "_Exit", scope: !77, file: !77, line: 626, type: !140, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)

!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !236)

!236 = !DISubprogram(name: "llabs", scope: !77, file: !77, line: 841, type: !237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!237 = !DISubroutineType(types: !238)

!238 = !{!231, !231}

!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !240)

!240 = !DISubprogram(name: "lldiv", scope: !77, file: !77, line: 855, type: !241, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!241 = !DISubroutineType(types: !242)

!242 = !{!227, !231, !231}

!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !244)

!244 = !DISubprogram(name: "atoll", scope: !77, file: !77, line: 112, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!245 = !DISubroutineType(types: !246)

!246 = !{!231, !107}

!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !248)

!248 = !DISubprogram(name: "strtoll", scope: !77, file: !77, line: 200, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!249 = !DISubroutineType(types: !250)

!250 = !{!231, !174, !201, !80}

!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !252)

!252 = !DISubprogram(name: "strtoull", scope: !77, file: !77, line: 205, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!253 = !DISubroutineType(types: !254)

!254 = !{!255, !174, !201, !80}

!255 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)

!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !257)

!257 = !DISubprogram(name: "strtof", scope: !77, file: !77, line: 123, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!258 = !DISubroutineType(types: !259)

!259 = !{!260, !174, !201}

!260 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)

!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !262)

!262 = !DISubprogram(name: "strtold", scope: !77, file: !77, line: 126, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!263 = !DISubroutineType(types: !264)

!264 = !{!265, !174, !201}

!265 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)

!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !227)

!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !234)

!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !236)

!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !270)

!270 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !226, file: !271, line: 213, type: !241, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!271 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/c++/7.3.0/cstdlib", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !240)

!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !244)

!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !257)

!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !248)

!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !252)

!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !262)

!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !279)

!279 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !281, file: !280, line: 79, size: 64, elements: !282, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")

!280 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/c++/7.3.0/bits/exception_ptr.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!281 = !DINamespace(name: "__exception_ptr", scope: !74)

!282 = !{!283, !284, !288, !291, !292, !297, !298, !302, !308, !312, !316, !319, !320, !323, !327}

!283 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !279, file: !280, line: 81, baseType: !122, size: 64)

!284 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 83, type: !285, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)

!285 = !DISubroutineType(types: !286)

!286 = !{null, !287, !122}

!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)

!288 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !279, file: !280, line: 85, type: !289, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)

!289 = !DISubroutineType(types: !290)

!290 = !{null, !287}

!291 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !279, file: !280, line: 86, type: !289, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)

!292 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !279, file: !280, line: 88, type: !293, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)

!293 = !DISubroutineType(types: !294)

!294 = !{!122, !295}

!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)

!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)

!297 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 96, type: !289, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!298 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 98, type: !299, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!299 = !DISubroutineType(types: !300)

!300 = !{null, !287, !301}

!301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !296, size: 64)

!302 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 101, type: !303, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!303 = !DISubroutineType(types: !304)

!304 = !{null, !287, !305}

!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !74, file: !306, line: 235, baseType: !307)

!306 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/x86_64-linux-gnu/c++/7.3.0/bits/c++config.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!307 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")

!308 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 105, type: !309, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!309 = !DISubroutineType(types: !310)

!310 = !{null, !287, !311}

!311 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !279, size: 64)

!312 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !279, file: !280, line: 118, type: !313, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!313 = !DISubroutineType(types: !314)

!314 = !{!315, !287, !301}

!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !279, size: 64)

!316 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !279, file: !280, line: 122, type: !317, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!317 = !DISubroutineType(types: !318)

!318 = !{!315, !287, !311}

!319 = !DISubprogram(name: "~exception_ptr", scope: !279, file: !280, line: 129, type: !289, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!320 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !279, file: !280, line: 132, type: !321, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!321 = !DISubroutineType(types: !322)

!322 = !{null, !287, !315}

!323 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !279, file: !280, line: 144, type: !324, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)

!324 = !DISubroutineType(types: !325)

!325 = !{!326, !295}

!326 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)

!327 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !279, file: !280, line: 153, type: !328, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)

!328 = !DISubroutineType(types: !329)

!329 = !{!330, !295}

!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)

!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)

!332 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !74, file: !333, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")

!333 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/c++/7.3.0/typeinfo", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !281, entity: !335)

!335 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !74, file: !280, line: 69, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)

!336 = !DISubroutineType(types: !337)

!337 = !{null, !279}

!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !339)

!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !340, line: 6, baseType: !341)

!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !342, line: 21, baseType: !343)

!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 13, size: 64, elements: !344, identifier: "_ZTS11__mbstate_t")

!344 = !{!345, !346}

!345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !342, line: 15, baseType: !80, size: 32)

!346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !342, line: 20, baseType: !347, size: 32, offset: 32)

!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !342, line: 16, size: 32, elements: !348, identifier: "_ZTSN11__mbstate_tUt_E")

!348 = !{!349, !350}

!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !347, file: !342, line: 18, baseType: !10, size: 32)

!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !347, file: !342, line: 19, baseType: !351, size: 32)

!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 32, elements: !352)

!352 = !{!353}

!353 = !DISubrange(count: 4)

!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !355)

!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !356, line: 20, baseType: !10)

!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !358)

!358 = !DISubprogram(name: "btowc", scope: !359, file: !359, line: 284, type: !360, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!359 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!360 = !DISubroutineType(types: !361)

!361 = !{!355, !80}

!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !363)

!363 = !DISubprogram(name: "fgetwc", scope: !359, file: !359, line: 727, type: !364, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!364 = !DISubroutineType(types: !365)

!365 = !{!355, !366}

!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)

!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !368, line: 5, baseType: !369)

!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !368, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")

!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !371)

!371 = !DISubprogram(name: "fgetws", scope: !359, file: !359, line: 756, type: !372, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!372 = !DISubroutineType(types: !373)

!373 = !{!172, !171, !80, !374}

!374 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !366)

!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !376)

!376 = !DISubprogram(name: "fputwc", scope: !359, file: !359, line: 741, type: !377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!377 = !DISubroutineType(types: !378)

!378 = !{!355, !173, !366}

!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !380)

!380 = !DISubprogram(name: "fputws", scope: !359, file: !359, line: 763, type: !381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!381 = !DISubroutineType(types: !382)

!382 = !{!80, !218, !374}

!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !384)

!384 = !DISubprogram(name: "fwide", scope: !359, file: !359, line: 573, type: !385, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!385 = !DISubroutineType(types: !386)

!386 = !{!80, !366, !80}

!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !388)

!388 = !DISubprogram(name: "fwprintf", scope: !359, file: !359, line: 580, type: !389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!389 = !DISubroutineType(types: !390)

!390 = !{!80, !374, !218, null}

!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !392)

!392 = !DISubprogram(name: "fwscanf", scope: !359, file: !359, line: 621, type: !389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !394)

!394 = !DISubprogram(name: "getwc", scope: !359, file: !359, line: 728, type: !364, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !396)

!396 = !DISubprogram(name: "getwchar", scope: !359, file: !359, line: 734, type: !397, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!397 = !DISubroutineType(types: !398)

!398 = !{!355}

!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !400)

!400 = !DISubprogram(name: "mbrlen", scope: !359, file: !359, line: 307, type: !401, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!401 = !DISubroutineType(types: !402)

!402 = !{!123, !174, !123, !403}

!403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !404)

!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)

!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !406)

!406 = !DISubprogram(name: "mbrtowc", scope: !359, file: !359, line: 296, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!407 = !DISubroutineType(types: !408)

!408 = !{!123, !171, !174, !123, !403}

!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !410)

!410 = !DISubprogram(name: "mbsinit", scope: !359, file: !359, line: 292, type: !411, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!411 = !DISubroutineType(types: !412)

!412 = !{!80, !413}

!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)

!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)

!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !416)

!416 = !DISubprogram(name: "mbsrtowcs", scope: !359, file: !359, line: 337, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!417 = !DISubroutineType(types: !418)

!418 = !{!123, !171, !419, !123, !403}

!419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !420)

!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)

!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !422)

!422 = !DISubprogram(name: "putwc", scope: !359, file: !359, line: 742, type: !377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !424)

!424 = !DISubprogram(name: "putwchar", scope: !359, file: !359, line: 748, type: !425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!425 = !DISubroutineType(types: !426)

!426 = !{!355, !173}

!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !428)

!428 = !DISubprogram(name: "swprintf", scope: !359, file: !359, line: 590, type: !429, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!429 = !DISubroutineType(types: !430)

!430 = !{!80, !171, !123, !218, null}

!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !432)

!432 = !DISubprogram(name: "swscanf", scope: !359, file: !359, line: 631, type: !433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!433 = !DISubroutineType(types: !434)

!434 = !{!80, !218, !218, null}

!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !436)

!436 = !DISubprogram(name: "ungetwc", scope: !359, file: !359, line: 771, type: !437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!437 = !DISubroutineType(types: !438)

!438 = !{!355, !355, !366}

!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !440)

!440 = !DISubprogram(name: "vfwprintf", scope: !359, file: !359, line: 598, type: !441, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!441 = !DISubroutineType(types: !442)

!442 = !{!80, !374, !218, !443}

!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)

!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !445, identifier: "_ZTS13__va_list_tag")

!445 = !{!446, !447, !448, !449}

!446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !444, file: !2, baseType: !10, size: 32)

!447 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !444, file: !2, baseType: !10, size: 32, offset: 32)

!448 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !444, file: !2, baseType: !122, size: 64, offset: 64)

!449 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !444, file: !2, baseType: !122, size: 64, offset: 128)

!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !451)

!451 = !DISubprogram(name: "vfwscanf", scope: !359, file: !359, line: 673, type: !441, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !453)

!453 = !DISubprogram(name: "vswprintf", scope: !359, file: !359, line: 611, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!454 = !DISubroutineType(types: !455)

!455 = !{!80, !171, !123, !218, !443}

!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !457)

!457 = !DISubprogram(name: "vswscanf", scope: !359, file: !359, line: 685, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!458 = !DISubroutineType(types: !459)

!459 = !{!80, !218, !218, !443}

!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !461)

!461 = !DISubprogram(name: "vwprintf", scope: !359, file: !359, line: 606, type: !462, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!462 = !DISubroutineType(types: !463)

!463 = !{!80, !218, !443}

!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !465)

!465 = !DISubprogram(name: "vwscanf", scope: !359, file: !359, line: 681, type: !462, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !467)

!467 = !DISubprogram(name: "wcrtomb", scope: !359, file: !359, line: 301, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!468 = !DISubroutineType(types: !469)

!469 = !{!123, !217, !173, !403}

!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !471)

!471 = !DISubprogram(name: "wcscat", scope: !359, file: !359, line: 97, type: !472, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!472 = !DISubroutineType(types: !473)

!473 = !{!172, !171, !218}

!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !475)

!475 = !DISubprogram(name: "wcscmp", scope: !359, file: !359, line: 106, type: !476, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!476 = !DISubroutineType(types: !477)

!477 = !{!80, !219, !219}

!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !479)

!479 = !DISubprogram(name: "wcscoll", scope: !359, file: !359, line: 131, type: !476, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !481)

!481 = !DISubprogram(name: "wcscpy", scope: !359, file: !359, line: 87, type: !472, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !483)

!483 = !DISubprogram(name: "wcscspn", scope: !359, file: !359, line: 187, type: !484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!484 = !DISubroutineType(types: !485)

!485 = !{!123, !219, !219}

!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !487)

!487 = !DISubprogram(name: "wcsftime", scope: !359, file: !359, line: 835, type: !488, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!488 = !DISubroutineType(types: !489)

!489 = !{!123, !171, !123, !218, !490}

!490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)

!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)

!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)

!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !359, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")

!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !495)

!495 = !DISubprogram(name: "wcslen", scope: !359, file: !359, line: 222, type: !496, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!496 = !DISubroutineType(types: !497)

!497 = !{!123, !219}

!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !499)

!499 = !DISubprogram(name: "wcsncat", scope: !359, file: !359, line: 101, type: !500, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!500 = !DISubroutineType(types: !501)

!501 = !{!172, !171, !218, !123}

!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !503)

!503 = !DISubprogram(name: "wcsncmp", scope: !359, file: !359, line: 109, type: !504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!504 = !DISubroutineType(types: !505)

!505 = !{!80, !219, !219, !123}

!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !507)

!507 = !DISubprogram(name: "wcsncpy", scope: !359, file: !359, line: 92, type: !500, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !509)

!509 = !DISubprogram(name: "wcsrtombs", scope: !359, file: !359, line: 343, type: !510, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!510 = !DISubroutineType(types: !511)

!511 = !{!123, !217, !512, !123, !403}

!512 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !513)

!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)

!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !515)

!515 = !DISubprogram(name: "wcsspn", scope: !359, file: !359, line: 191, type: !484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !517)

!517 = !DISubprogram(name: "wcstod", scope: !359, file: !359, line: 377, type: !518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!518 = !DISubroutineType(types: !519)

!519 = !{!106, !218, !520}

!520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !521)

!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)

!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !523)

!523 = !DISubprogram(name: "wcstof", scope: !359, file: !359, line: 382, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!524 = !DISubroutineType(types: !525)

!525 = !{!260, !218, !520}

!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !527)

!527 = !DISubprogram(name: "wcstok", scope: !359, file: !359, line: 217, type: !528, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!528 = !DISubroutineType(types: !529)

!529 = !{!172, !171, !218, !520}

!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !531)

!531 = !DISubprogram(name: "wcstol", scope: !359, file: !359, line: 428, type: !532, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!532 = !DISubroutineType(types: !533)

!533 = !{!89, !218, !520, !80}

!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !535)

!535 = !DISubprogram(name: "wcstoul", scope: !359, file: !359, line: 433, type: !536, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!536 = !DISubroutineType(types: !537)

!537 = !{!125, !218, !520, !80}

!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !539)

!539 = !DISubprogram(name: "wcsxfrm", scope: !359, file: !359, line: 135, type: !540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!540 = !DISubroutineType(types: !541)

!541 = !{!123, !171, !218, !123}

!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !543)

!543 = !DISubprogram(name: "wctob", scope: !359, file: !359, line: 288, type: !544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!544 = !DISubroutineType(types: !545)

!545 = !{!80, !355}

!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !547)

!547 = !DISubprogram(name: "wmemcmp", scope: !359, file: !359, line: 258, type: !504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !549)

!549 = !DISubprogram(name: "wmemcpy", scope: !359, file: !359, line: 262, type: !500, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !551)

!551 = !DISubprogram(name: "wmemmove", scope: !359, file: !359, line: 267, type: !552, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!552 = !DISubroutineType(types: !553)

!553 = !{!172, !172, !219, !123}

!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !555)

!555 = !DISubprogram(name: "wmemset", scope: !359, file: !359, line: 271, type: !556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!556 = !DISubroutineType(types: !557)

!557 = !{!172, !172, !173, !123}

!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !559)

!559 = !DISubprogram(name: "wprintf", scope: !359, file: !359, line: 587, type: !560, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!560 = !DISubroutineType(types: !561)

!561 = !{!80, !218, null}

!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !563)

!563 = !DISubprogram(name: "wscanf", scope: !359, file: !359, line: 628, type: !560, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !565)

!565 = !DISubprogram(name: "wcschr", scope: !359, file: !359, line: 164, type: !566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!566 = !DISubroutineType(types: !567)

!567 = !{!172, !219, !173}

!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !569)

!569 = !DISubprogram(name: "wcspbrk", scope: !359, file: !359, line: 201, type: !570, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!570 = !DISubroutineType(types: !571)

!571 = !{!172, !219, !219}

!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !573)

!573 = !DISubprogram(name: "wcsrchr", scope: !359, file: !359, line: 174, type: !566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !575)

!575 = !DISubprogram(name: "wcsstr", scope: !359, file: !359, line: 212, type: !570, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !577)

!577 = !DISubprogram(name: "wmemchr", scope: !359, file: !359, line: 253, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!578 = !DISubroutineType(types: !579)

!579 = !{!172, !219, !173, !123}

!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !581)

!581 = !DISubprogram(name: "wcstold", scope: !359, file: !359, line: 384, type: !582, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!582 = !DISubroutineType(types: !583)

!583 = !{!265, !218, !520}

!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !585)

!585 = !DISubprogram(name: "wcstoll", scope: !359, file: !359, line: 441, type: !586, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!586 = !DISubroutineType(types: !587)

!587 = !{!231, !218, !520, !80}

!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !589)

!589 = !DISubprogram(name: "wcstoull", scope: !359, file: !359, line: 448, type: !590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!590 = !DISubroutineType(types: !591)

!591 = !{!255, !218, !520, !80}

!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !581)

!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !585)

!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !589)

!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !596)

!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !597)

!597 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)

!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !599)

!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !600)

!600 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)

!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !602)

!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !80)

!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !604)

!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !89)

!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !606)

!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !596)

!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !608)

!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !599)

!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !610)

!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !602)

!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !612)

!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !604)

!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !614)

!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !596)

!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !616)

!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !599)

!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !618)

!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !602)

!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !620)

!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !604)

!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !622)

!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !89)

!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !624)

!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !604)

!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !62)

!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !28)

!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !8)

!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !629)

!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !125)

!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !631)

!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)

!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !633)

!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)

!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !635)

!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)

!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !637)

!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !629)

!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !639)

!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)

!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !641)

!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)

!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !643)

!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)

!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !645)

!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !629)

!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !647)

!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !125)

!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !649)

!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !629)

!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !651)

!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !74, file: !306, line: 231, baseType: !125)

!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !653)

!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !74, file: !306, line: 232, baseType: !89)

!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !655)

!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !656, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")

!656 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !658)

!658 = !DISubprogram(name: "setlocale", scope: !656, file: !656, line: 122, type: !659, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!659 = !DISubroutineType(types: !660)

!660 = !{!150, !80, !107}

!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !662)

!662 = !DISubprogram(name: "localeconv", scope: !656, file: !656, line: 125, type: !663, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!663 = !DISubroutineType(types: !664)

!664 = !{!665}

!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)

!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !667)

!667 = !DISubprogram(name: "isalnum", scope: !668, file: !668, line: 108, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!668 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !670)

!670 = !DISubprogram(name: "isalpha", scope: !668, file: !668, line: 109, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !672)

!672 = !DISubprogram(name: "iscntrl", scope: !668, file: !668, line: 110, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !674)

!674 = !DISubprogram(name: "isdigit", scope: !668, file: !668, line: 111, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !676)

!676 = !DISubprogram(name: "isgraph", scope: !668, file: !668, line: 113, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !678)

!678 = !DISubprogram(name: "islower", scope: !668, file: !668, line: 112, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !680)

!680 = !DISubprogram(name: "isprint", scope: !668, file: !668, line: 114, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !682)

!682 = !DISubprogram(name: "ispunct", scope: !668, file: !668, line: 115, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !684)

!684 = !DISubprogram(name: "isspace", scope: !668, file: !668, line: 116, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !686)

!686 = !DISubprogram(name: "isupper", scope: !668, file: !668, line: 117, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !688)

!688 = !DISubprogram(name: "isxdigit", scope: !668, file: !668, line: 118, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !690)

!690 = !DISubprogram(name: "tolower", scope: !668, file: !668, line: 122, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !692)

!692 = !DISubprogram(name: "toupper", scope: !668, file: !668, line: 125, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !694)

!694 = !DISubprogram(name: "isblank", scope: !668, file: !668, line: 130, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !696)

!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !697, line: 7, baseType: !369)

!697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !699)

!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !700, line: 78, baseType: !701)

!700 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !702, line: 30, baseType: !703)

!702 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")

!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !705)

!705 = !DISubprogram(name: "clearerr", scope: !700, file: !700, line: 757, type: !706, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!706 = !DISubroutineType(types: !707)

!707 = !{null, !708}

!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)

!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !710)

!710 = !DISubprogram(name: "fclose", scope: !700, file: !700, line: 199, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!711 = !DISubroutineType(types: !712)

!712 = !{!80, !708}

!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !714)

!714 = !DISubprogram(name: "feof", scope: !700, file: !700, line: 759, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !716)

!716 = !DISubprogram(name: "ferror", scope: !700, file: !700, line: 761, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !718)

!718 = !DISubprogram(name: "fflush", scope: !700, file: !700, line: 204, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !720)

!720 = !DISubprogram(name: "fgetc", scope: !700, file: !700, line: 477, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !722)

!722 = !DISubprogram(name: "fgetpos", scope: !700, file: !700, line: 731, type: !723, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!723 = !DISubroutineType(types: !724)

!724 = !{!80, !725, !726}

!725 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !708)

!726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !727)

!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)

!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !729)

!729 = !DISubprogram(name: "fgets", scope: !700, file: !700, line: 564, type: !730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!730 = !DISubroutineType(types: !731)

!731 = !{!150, !217, !80, !725}

!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !733)

!733 = !DISubprogram(name: "fopen", scope: !700, file: !700, line: 232, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!734 = !DISubroutineType(types: !735)

!735 = !{!708, !174, !174}

!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !737)

!737 = !DISubprogram(name: "fprintf", scope: !700, file: !700, line: 312, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!738 = !DISubroutineType(types: !739)

!739 = !{!80, !725, !174, null}

!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !741)

!741 = !DISubprogram(name: "fputc", scope: !700, file: !700, line: 517, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!742 = !DISubroutineType(types: !743)

!743 = !{!80, !80, !708}

!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !745)

!745 = !DISubprogram(name: "fputs", scope: !700, file: !700, line: 626, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!746 = !DISubroutineType(types: !747)

!747 = !{!80, !174, !725}

!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !749)

!749 = !DISubprogram(name: "fread", scope: !700, file: !700, line: 646, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!750 = !DISubroutineType(types: !751)

!751 = !{!123, !752, !123, !123, !725}

!752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)

!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !754)

!754 = !DISubprogram(name: "freopen", scope: !700, file: !700, line: 238, type: !755, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!755 = !DISubroutineType(types: !756)

!756 = !{!708, !174, !174, !725}

!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !758)

!758 = !DISubprogram(name: "fscanf", scope: !700, file: !700, line: 377, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !760)

!760 = !DISubprogram(name: "fseek", scope: !700, file: !700, line: 684, type: !761, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!761 = !DISubroutineType(types: !762)

!762 = !{!80, !708, !89, !80}

!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !764)

!764 = !DISubprogram(name: "fsetpos", scope: !700, file: !700, line: 736, type: !765, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!765 = !DISubroutineType(types: !766)

!766 = !{!80, !708, !767}

!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)

!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)

!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !770)

!770 = !DISubprogram(name: "ftell", scope: !700, file: !700, line: 689, type: !771, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!771 = !DISubroutineType(types: !772)

!772 = !{!89, !708}

!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !774)

!774 = !DISubprogram(name: "fwrite", scope: !700, file: !700, line: 652, type: !775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!775 = !DISubroutineType(types: !776)

!776 = !{!123, !777, !123, !123, !725}

!777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)

!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !779)

!779 = !DISubprogram(name: "getc", scope: !700, file: !700, line: 478, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !781)

!781 = !DISubprogram(name: "getchar", scope: !700, file: !700, line: 484, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !783)

!783 = !DISubprogram(name: "gets", scope: !700, file: !700, line: 577, type: !784, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!784 = !DISubroutineType(types: !785)

!785 = !{!150, !150}

!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !787)

!787 = !DISubprogram(name: "perror", scope: !700, file: !700, line: 775, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!788 = !DISubroutineType(types: !789)

!789 = !{null, !107}

!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !791)

!791 = !DISubprogram(name: "printf", scope: !700, file: !700, line: 318, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!792 = !DISubroutineType(types: !793)

!793 = !{!80, !174, null}

!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !795)

!795 = !DISubprogram(name: "putc", scope: !700, file: !700, line: 518, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !797)

!797 = !DISubprogram(name: "putchar", scope: !700, file: !700, line: 524, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !799)

!799 = !DISubprogram(name: "puts", scope: !700, file: !700, line: 632, type: !112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !801)

!801 = !DISubprogram(name: "remove", scope: !700, file: !700, line: 144, type: !112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !803)

!803 = !DISubprogram(name: "rename", scope: !700, file: !700, line: 146, type: !804, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!804 = !DISubroutineType(types: !805)

!805 = !{!80, !107, !107}

!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !807)

!807 = !DISubprogram(name: "rewind", scope: !700, file: !700, line: 694, type: !706, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !809)

!809 = !DISubprogram(name: "scanf", scope: !700, file: !700, line: 383, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !811)

!811 = !DISubprogram(name: "setbuf", scope: !700, file: !700, line: 290, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!812 = !DISubroutineType(types: !813)

!813 = !{null, !725, !217}

!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !815)

!815 = !DISubprogram(name: "setvbuf", scope: !700, file: !700, line: 294, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!816 = !DISubroutineType(types: !817)

!817 = !{!80, !725, !217, !80, !123}

!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !819)

!819 = !DISubprogram(name: "sprintf", scope: !700, file: !700, line: 320, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!820 = !DISubroutineType(types: !821)

!821 = !{!80, !217, !174, null}

!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !823)

!823 = !DISubprogram(name: "sscanf", scope: !700, file: !700, line: 385, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!824 = !DISubroutineType(types: !825)

!825 = !{!80, !174, !174, null}

!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !827)

!827 = !DISubprogram(name: "tmpfile", scope: !700, file: !700, line: 159, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!828 = !DISubroutineType(types: !829)

!829 = !{!708}

!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !831)

!831 = !DISubprogram(name: "tmpnam", scope: !700, file: !700, line: 173, type: !784, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !833)

!833 = !DISubprogram(name: "ungetc", scope: !700, file: !700, line: 639, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !835)

!835 = !DISubprogram(name: "vfprintf", scope: !700, file: !700, line: 327, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!836 = !DISubroutineType(types: !837)

!837 = !{!80, !725, !174, !443}

!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !839)

!839 = !DISubprogram(name: "vprintf", scope: !700, file: !700, line: 333, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!840 = !DISubroutineType(types: !841)

!841 = !{!80, !174, !443}

!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !843)

!843 = !DISubprogram(name: "vsprintf", scope: !700, file: !700, line: 335, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!844 = !DISubroutineType(types: !845)

!845 = !{!80, !217, !174, !443}

!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !847)

!847 = !DISubprogram(name: "snprintf", scope: !700, file: !700, line: 340, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!848 = !DISubroutineType(types: !849)

!849 = !{!80, !217, !123, !174, null}

!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !851)

!851 = !DISubprogram(name: "vfscanf", scope: !700, file: !700, line: 420, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !853)

!853 = !DISubprogram(name: "vscanf", scope: !700, file: !700, line: 428, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !855)

!855 = !DISubprogram(name: "vsnprintf", scope: !700, file: !700, line: 344, type: !856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!856 = !DISubroutineType(types: !857)

!857 = !{!80, !217, !123, !174, !443}

!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !859)

!859 = !DISubprogram(name: "vsscanf", scope: !700, file: !700, line: 432, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!860 = !DISubroutineType(types: !861)

!861 = !{!80, !174, !174, !443}

!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !847)

!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !851)

!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !853)

!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !855)

!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !859)

!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !868)

!868 = !DISubprogram(name: "acos", scope: !869, file: !869, line: 53, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!869 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!870 = !DISubroutineType(types: !871)

!871 = !{!106, !106}

!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !873)

!873 = !DISubprogram(name: "asin", scope: !869, file: !869, line: 55, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !875)

!875 = !DISubprogram(name: "atan", scope: !869, file: !869, line: 57, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !877)

!877 = !DISubprogram(name: "atan2", scope: !869, file: !869, line: 59, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!878 = !DISubroutineType(types: !879)

!879 = !{!106, !106, !106}

!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !881)

!881 = !DISubprogram(name: "ceil", scope: !869, file: !869, line: 159, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !883)

!883 = !DISubprogram(name: "cos", scope: !869, file: !869, line: 62, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !885)

!885 = !DISubprogram(name: "cosh", scope: !869, file: !869, line: 71, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !887)

!887 = !DISubprogram(name: "exp", scope: !869, file: !869, line: 95, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !889)

!889 = !DISubprogram(name: "fabs", scope: !869, file: !869, line: 162, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !891)

!891 = !DISubprogram(name: "floor", scope: !869, file: !869, line: 165, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !893)

!893 = !DISubprogram(name: "fmod", scope: !869, file: !869, line: 168, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !895)

!895 = !DISubprogram(name: "frexp", scope: !869, file: !869, line: 98, type: !896, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!896 = !DISubroutineType(types: !897)

!897 = !{!106, !106, !898}

!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)

!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !900)

!900 = !DISubprogram(name: "ldexp", scope: !869, file: !869, line: 101, type: !901, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!901 = !DISubroutineType(types: !902)

!902 = !{!106, !106, !80}

!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !904)

!904 = !DISubprogram(name: "log", scope: !869, file: !869, line: 104, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !906)

!906 = !DISubprogram(name: "log10", scope: !869, file: !869, line: 107, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !908)

!908 = !DISubprogram(name: "modf", scope: !869, file: !869, line: 110, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!909 = !DISubroutineType(types: !910)

!910 = !{!106, !106, !911}

!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)

!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !913)

!913 = !DISubprogram(name: "pow", scope: !869, file: !869, line: 140, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !915)

!915 = !DISubprogram(name: "sin", scope: !869, file: !869, line: 64, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !917)

!917 = !DISubprogram(name: "sinh", scope: !869, file: !869, line: 73, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !919)

!919 = !DISubprogram(name: "sqrt", scope: !869, file: !869, line: 143, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !921)

!921 = !DISubprogram(name: "tan", scope: !869, file: !869, line: 66, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !923)

!923 = !DISubprogram(name: "tanh", scope: !869, file: !869, line: 75, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !925)

!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !926, line: 150, baseType: !106)

!926 = !DIFile(filename: "/usr/include/math.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !928)

!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !926, line: 149, baseType: !260)

!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !930)

!930 = !DISubprogram(name: "acosh", scope: !869, file: !869, line: 85, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !932)

!932 = !DISubprogram(name: "acoshf", scope: !869, file: !869, line: 85, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!933 = !DISubroutineType(types: !934)

!934 = !{!260, !260}

!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !936)

!936 = !DISubprogram(name: "acoshl", scope: !869, file: !869, line: 85, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!937 = !DISubroutineType(types: !938)

!938 = !{!265, !265}

!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !940)

!940 = !DISubprogram(name: "asinh", scope: !869, file: !869, line: 87, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !942)

!942 = !DISubprogram(name: "asinhf", scope: !869, file: !869, line: 87, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !944)

!944 = !DISubprogram(name: "asinhl", scope: !869, file: !869, line: 87, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !946)

!946 = !DISubprogram(name: "atanh", scope: !869, file: !869, line: 89, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !948)

!948 = !DISubprogram(name: "atanhf", scope: !869, file: !869, line: 89, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !950)

!950 = !DISubprogram(name: "atanhl", scope: !869, file: !869, line: 89, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !952)

!952 = !DISubprogram(name: "cbrt", scope: !869, file: !869, line: 152, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !954)

!954 = !DISubprogram(name: "cbrtf", scope: !869, file: !869, line: 152, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !956)

!956 = !DISubprogram(name: "cbrtl", scope: !869, file: !869, line: 152, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !958)

!958 = !DISubprogram(name: "copysign", scope: !869, file: !869, line: 196, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !960)

!960 = !DISubprogram(name: "copysignf", scope: !869, file: !869, line: 196, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!961 = !DISubroutineType(types: !962)

!962 = !{!260, !260, !260}

!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !964)

!964 = !DISubprogram(name: "copysignl", scope: !869, file: !869, line: 196, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!965 = !DISubroutineType(types: !966)

!966 = !{!265, !265, !265}

!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !968)

!968 = !DISubprogram(name: "erf", scope: !869, file: !869, line: 228, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !970)

!970 = !DISubprogram(name: "erff", scope: !869, file: !869, line: 228, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !972)

!972 = !DISubprogram(name: "erfl", scope: !869, file: !869, line: 228, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !974)

!974 = !DISubprogram(name: "erfc", scope: !869, file: !869, line: 229, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !976)

!976 = !DISubprogram(name: "erfcf", scope: !869, file: !869, line: 229, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !978)

!978 = !DISubprogram(name: "erfcl", scope: !869, file: !869, line: 229, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !980)

!980 = !DISubprogram(name: "exp2", scope: !869, file: !869, line: 130, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !982)

!982 = !DISubprogram(name: "exp2f", scope: !869, file: !869, line: 130, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !984)

!984 = !DISubprogram(name: "exp2l", scope: !869, file: !869, line: 130, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !986)

!986 = !DISubprogram(name: "expm1", scope: !869, file: !869, line: 119, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !988)

!988 = !DISubprogram(name: "expm1f", scope: !869, file: !869, line: 119, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !990)

!990 = !DISubprogram(name: "expm1l", scope: !869, file: !869, line: 119, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !992)

!992 = !DISubprogram(name: "fdim", scope: !869, file: !869, line: 326, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !994)

!994 = !DISubprogram(name: "fdimf", scope: !869, file: !869, line: 326, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !996)

!996 = !DISubprogram(name: "fdiml", scope: !869, file: !869, line: 326, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !998)

!998 = !DISubprogram(name: "fma", scope: !869, file: !869, line: 335, type: !999, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!999 = !DISubroutineType(types: !1000)

!1000 = !{!106, !106, !106, !106}

!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1002)

!1002 = !DISubprogram(name: "fmaf", scope: !869, file: !869, line: 335, type: !1003, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1003 = !DISubroutineType(types: !1004)

!1004 = !{!260, !260, !260, !260}

!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1006)

!1006 = !DISubprogram(name: "fmal", scope: !869, file: !869, line: 335, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1007 = !DISubroutineType(types: !1008)

!1008 = !{!265, !265, !265, !265}

!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1010)

!1010 = !DISubprogram(name: "fmax", scope: !869, file: !869, line: 329, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1012)

!1012 = !DISubprogram(name: "fmaxf", scope: !869, file: !869, line: 329, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1014)

!1014 = !DISubprogram(name: "fmaxl", scope: !869, file: !869, line: 329, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1016)

!1016 = !DISubprogram(name: "fmin", scope: !869, file: !869, line: 332, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1018)

!1018 = !DISubprogram(name: "fminf", scope: !869, file: !869, line: 332, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1020)

!1020 = !DISubprogram(name: "fminl", scope: !869, file: !869, line: 332, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1022)

!1022 = !DISubprogram(name: "hypot", scope: !869, file: !869, line: 147, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1024)

!1024 = !DISubprogram(name: "hypotf", scope: !869, file: !869, line: 147, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1026)

!1026 = !DISubprogram(name: "hypotl", scope: !869, file: !869, line: 147, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1028)

!1028 = !DISubprogram(name: "ilogb", scope: !869, file: !869, line: 280, type: !1029, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1029 = !DISubroutineType(types: !1030)

!1030 = !{!80, !106}

!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1032)

!1032 = !DISubprogram(name: "ilogbf", scope: !869, file: !869, line: 280, type: !1033, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1033 = !DISubroutineType(types: !1034)

!1034 = !{!80, !260}

!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1036)

!1036 = !DISubprogram(name: "ilogbl", scope: !869, file: !869, line: 280, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1037 = !DISubroutineType(types: !1038)

!1038 = !{!80, !265}

!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1040)

!1040 = !DISubprogram(name: "lgamma", scope: !869, file: !869, line: 230, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1042)

!1042 = !DISubprogram(name: "lgammaf", scope: !869, file: !869, line: 230, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1044)

!1044 = !DISubprogram(name: "lgammal", scope: !869, file: !869, line: 230, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1046)

!1046 = !DISubprogram(name: "llrint", scope: !869, file: !869, line: 316, type: !1047, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1047 = !DISubroutineType(types: !1048)

!1048 = !{!231, !106}

!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1050)

!1050 = !DISubprogram(name: "llrintf", scope: !869, file: !869, line: 316, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1051 = !DISubroutineType(types: !1052)

!1052 = !{!231, !260}

!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1054)

!1054 = !DISubprogram(name: "llrintl", scope: !869, file: !869, line: 316, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1055 = !DISubroutineType(types: !1056)

!1056 = !{!231, !265}

!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1058)

!1058 = !DISubprogram(name: "llround", scope: !869, file: !869, line: 322, type: !1047, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1060)

!1060 = !DISubprogram(name: "llroundf", scope: !869, file: !869, line: 322, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1062)

!1062 = !DISubprogram(name: "llroundl", scope: !869, file: !869, line: 322, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1064)

!1064 = !DISubprogram(name: "log1p", scope: !869, file: !869, line: 122, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1066)

!1066 = !DISubprogram(name: "log1pf", scope: !869, file: !869, line: 122, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1068)

!1068 = !DISubprogram(name: "log1pl", scope: !869, file: !869, line: 122, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1070)

!1070 = !DISubprogram(name: "log2", scope: !869, file: !869, line: 133, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1072)

!1072 = !DISubprogram(name: "log2f", scope: !869, file: !869, line: 133, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1074)

!1074 = !DISubprogram(name: "log2l", scope: !869, file: !869, line: 133, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1076)

!1076 = !DISubprogram(name: "logb", scope: !869, file: !869, line: 125, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1078)

!1078 = !DISubprogram(name: "logbf", scope: !869, file: !869, line: 125, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1080)

!1080 = !DISubprogram(name: "logbl", scope: !869, file: !869, line: 125, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1082)

!1082 = !DISubprogram(name: "lrint", scope: !869, file: !869, line: 314, type: !1083, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1083 = !DISubroutineType(types: !1084)

!1084 = !{!89, !106}

!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1086)

!1086 = !DISubprogram(name: "lrintf", scope: !869, file: !869, line: 314, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1087 = !DISubroutineType(types: !1088)

!1088 = !{!89, !260}

!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1090)

!1090 = !DISubprogram(name: "lrintl", scope: !869, file: !869, line: 314, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1091 = !DISubroutineType(types: !1092)

!1092 = !{!89, !265}

!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1094)

!1094 = !DISubprogram(name: "lround", scope: !869, file: !869, line: 320, type: !1083, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1096)

!1096 = !DISubprogram(name: "lroundf", scope: !869, file: !869, line: 320, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1098)

!1098 = !DISubprogram(name: "lroundl", scope: !869, file: !869, line: 320, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1100)

!1100 = !DISubprogram(name: "nan", scope: !869, file: !869, line: 201, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1102)

!1102 = !DISubprogram(name: "nanf", scope: !869, file: !869, line: 201, type: !1103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1103 = !DISubroutineType(types: !1104)

!1104 = !{!260, !107}

!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1106)

!1106 = !DISubprogram(name: "nanl", scope: !869, file: !869, line: 201, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1107 = !DISubroutineType(types: !1108)

!1108 = !{!265, !107}

!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1110)

!1110 = !DISubprogram(name: "nearbyint", scope: !869, file: !869, line: 294, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1112)

!1112 = !DISubprogram(name: "nearbyintf", scope: !869, file: !869, line: 294, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1114)

!1114 = !DISubprogram(name: "nearbyintl", scope: !869, file: !869, line: 294, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1116)

!1116 = !DISubprogram(name: "nextafter", scope: !869, file: !869, line: 259, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1118)

!1118 = !DISubprogram(name: "nextafterf", scope: !869, file: !869, line: 259, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1120)

!1120 = !DISubprogram(name: "nextafterl", scope: !869, file: !869, line: 259, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1122)

!1122 = !DISubprogram(name: "nexttoward", scope: !869, file: !869, line: 261, type: !1123, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1123 = !DISubroutineType(types: !1124)

!1124 = !{!106, !106, !265}

!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1126)

!1126 = !DISubprogram(name: "nexttowardf", scope: !869, file: !869, line: 261, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1127 = !DISubroutineType(types: !1128)

!1128 = !{!260, !260, !265}

!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1130)

!1130 = !DISubprogram(name: "nexttowardl", scope: !869, file: !869, line: 261, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1132)

!1132 = !DISubprogram(name: "remainder", scope: !869, file: !869, line: 272, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1134)

!1134 = !DISubprogram(name: "remainderf", scope: !869, file: !869, line: 272, type: !961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1136)

!1136 = !DISubprogram(name: "remainderl", scope: !869, file: !869, line: 272, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1138)

!1138 = !DISubprogram(name: "remquo", scope: !869, file: !869, line: 307, type: !1139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1139 = !DISubroutineType(types: !1140)

!1140 = !{!106, !106, !106, !898}

!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1142)

!1142 = !DISubprogram(name: "remquof", scope: !869, file: !869, line: 307, type: !1143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1143 = !DISubroutineType(types: !1144)

!1144 = !{!260, !260, !260, !898}

!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1146)

!1146 = !DISubprogram(name: "remquol", scope: !869, file: !869, line: 307, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1147 = !DISubroutineType(types: !1148)

!1148 = !{!265, !265, !265, !898}

!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1150)

!1150 = !DISubprogram(name: "rint", scope: !869, file: !869, line: 256, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1152)

!1152 = !DISubprogram(name: "rintf", scope: !869, file: !869, line: 256, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1154)

!1154 = !DISubprogram(name: "rintl", scope: !869, file: !869, line: 256, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1156)

!1156 = !DISubprogram(name: "round", scope: !869, file: !869, line: 298, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1158)

!1158 = !DISubprogram(name: "roundf", scope: !869, file: !869, line: 298, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1160)

!1160 = !DISubprogram(name: "roundl", scope: !869, file: !869, line: 298, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1162)

!1162 = !DISubprogram(name: "scalbln", scope: !869, file: !869, line: 290, type: !1163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1163 = !DISubroutineType(types: !1164)

!1164 = !{!106, !106, !89}

!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1166)

!1166 = !DISubprogram(name: "scalblnf", scope: !869, file: !869, line: 290, type: !1167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1167 = !DISubroutineType(types: !1168)

!1168 = !{!260, !260, !89}

!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1170)

!1170 = !DISubprogram(name: "scalblnl", scope: !869, file: !869, line: 290, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1171 = !DISubroutineType(types: !1172)

!1172 = !{!265, !265, !89}

!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1174)

!1174 = !DISubprogram(name: "scalbn", scope: !869, file: !869, line: 276, type: !901, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1176)

!1176 = !DISubprogram(name: "scalbnf", scope: !869, file: !869, line: 276, type: !1177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1177 = !DISubroutineType(types: !1178)

!1178 = !{!260, !260, !80}

!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1180)

!1180 = !DISubprogram(name: "scalbnl", scope: !869, file: !869, line: 276, type: !1181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1181 = !DISubroutineType(types: !1182)

!1182 = !{!265, !265, !80}

!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1184)

!1184 = !DISubprogram(name: "tgamma", scope: !869, file: !869, line: 235, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1186)

!1186 = !DISubprogram(name: "tgammaf", scope: !869, file: !869, line: 235, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1188)

!1188 = !DISubprogram(name: "tgammal", scope: !869, file: !869, line: 235, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1190)

!1190 = !DISubprogram(name: "trunc", scope: !869, file: !869, line: 302, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1192)

!1192 = !DISubprogram(name: "truncf", scope: !869, file: !869, line: 302, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1194)

!1194 = !DISubprogram(name: "truncl", scope: !869, file: !869, line: 302, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1196)

!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1197, line: 94, baseType: !1198)

!1197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")

!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1200)

!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1197, line: 68, baseType: !29)

!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1202)

!1202 = !DISubprogram(name: "feclearexcept", scope: !1203, file: !1203, line: 71, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1203 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/antonio/remill-build/remill/Arch/X86/Runtime")

!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1205)

!1205 = !DISubprogram(name: "fegetexceptflag", scope: !1203, file: !1203, line: 75, type: !1206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1206 = !DISubroutineType(types: !1207)

!1207 = !{!80, !1208, !80}

!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)

!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1210)

!1210 = !DISubprogram(name: "feraiseexcept", scope: !1203, file: !1203, line: 78, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1212)

!1212 = !DISubprogram(name: "fesetexceptflag", scope: !1203, file: !1203, line: 88, type: !1213, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1213 = !DISubroutineType(types: !1214)

!1214 = !{!80, !1215, !80}

!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)

!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)

!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1218)

!1218 = !DISubprogram(name: "fetestexcept", scope: !1203, file: !1203, line: 92, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1220)

!1220 = !DISubprogram(name: "fegetround", scope: !1203, file: !1203, line: 104, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1222)

!1222 = !DISubprogram(name: "fesetround", scope: !1203, file: !1203, line: 107, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1224)

!1224 = !DISubprogram(name: "fegetenv", scope: !1203, file: !1203, line: 114, type: !1225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1225 = !DISubroutineType(types: !1226)

!1226 = !{!80, !1227}

!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)

!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1229)

!1229 = !DISubprogram(name: "feholdexcept", scope: !1203, file: !1203, line: 119, type: !1225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1231)

!1231 = !DISubprogram(name: "fesetenv", scope: !1203, file: !1203, line: 123, type: !1232, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1232 = !DISubroutineType(types: !1233)

!1233 = !{!80, !1234}

!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)

!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)

!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1237)

!1237 = !DISubprogram(name: "feupdateenv", scope: !1203, file: !1203, line: 128, type: !1232, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)

!1238 = !{i32 2, !"Dwarf Version", i32 4}

!1239 = !{i32 2, !"Debug Info Version", i32 3}

!1240 = !{!1241, !1241, i64 0}

!1241 = !{!"long", !1242, i64 0}

!1242 = !{!"omnipotent char", !1243, i64 0}

!1243 = !{!"Simple C++ TBAA"}

!1244 = !{!1245, !1242, i64 2065}

!1245 = !{!"_ZTS5State", !1242, i64 16, !1246, i64 2064, !1242, i64 2080, !1247, i64 2088, !1249, i64 2112, !1251, i64 2208, !1252, i64 2480, !1253, i64 2608, !1254, i64 2736, !1242, i64 2760, !1242, i64 2768, !1255, i64 3280}

!1246 = !{!"_ZTS10ArithFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15}

!1247 = !{!"_ZTS8Segments", !1248, i64 0, !1242, i64 2, !1248, i64 4, !1242, i64 6, !1248, i64 8, !1242, i64 10, !1248, i64 12, !1242, i64 14, !1248, i64 16, !1242, i64 18, !1248, i64 20, !1242, i64 22}

!1248 = !{!"short", !1242, i64 0}

!1249 = !{!"_ZTS12AddressSpace", !1241, i64 0, !1250, i64 8, !1241, i64 16, !1250, i64 24, !1241, i64 32, !1250, i64 40, !1241, i64 48, !1250, i64 56, !1241, i64 64, !1250, i64 72, !1241, i64 80, !1250, i64 88}

!1250 = !{!"_ZTS3Reg", !1242, i64 0}

!1251 = !{!"_ZTS3GPR", !1241, i64 0, !1250, i64 8, !1241, i64 16, !1250, i64 24, !1241, i64 32, !1250, i64 40, !1241, i64 48, !1250, i64 56, !1241, i64 64, !1250, i64 72, !1241, i64 80, !1250, i64 88, !1241, i64 96, !1250, i64 104, !1241, i64 112, !1250, i64 120, !1241, i64 128, !1250, i64 136, !1241, i64 144, !1250, i64 152, !1241, i64 160, !1250, i64 168, !1241, i64 176, !1250, i64 184, !1241, i64 192, !1250, i64 200, !1241, i64 208, !1250, i64 216, !1241, i64 224, !1250, i64 232, !1241, i64 240, !1250, i64 248, !1241, i64 256, !1250, i64 264}

!1252 = !{!"_ZTS8X87Stack", !1242, i64 0}

!1253 = !{!"_ZTS3MMX", !1242, i64 0}

!1254 = !{!"_ZTS14FPUStatusFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15, !1242, i64 16, !1242, i64 17, !1242, i64 18, !1242, i64 19, !1242, i64 20}

!1255 = !{!"_ZTS13SegmentCaches", !1256, i64 0, !1256, i64 16, !1256, i64 32, !1256, i64 48, !1256, i64 64, !1256, i64 80}

!1256 = !{!"_ZTS13SegmentShadow", !1242, i64 0, !1257, i64 8, !1257, i64 12}

!1257 = !{!"int", !1242, i64 0}

!1258 = !{!1245, !1242, i64 2067}

!1259 = !{!1245, !1242, i64 2069}

!1260 = !{!1245, !1242, i64 2071}

!1261 = !{!1245, !1242, i64 2073}

!1262 = !{!1245, !1242, i64 2077}

!1263 = !{!1264}

!1264 = distinct !{!1264, !1265, !"ext_400600_atoi: argument 0"}

!1265 = distinct !{!1265, !"ext_400600_atoi"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_400600_atoi: argument 1"}

!1268 = !{!1269}

!1269 = distinct !{!1269, !1270, !"ext_6020b8_getopt: argument 0"}

!1270 = distinct !{!1270, !"ext_6020b8_getopt"}

!1271 = !{!1272}

!1272 = distinct !{!1272, !1270, !"ext_6020b8_getopt: argument 1"}

!1273 = !{!1274}

!1274 = distinct !{!1274, !1275, !"ext_602098_printf: argument 0"}

!1275 = distinct !{!1275, !"ext_602098_printf"}

!1276 = !{!1277}

!1277 = distinct !{!1277, !1275, !"ext_602098_printf: argument 1"}

!1278 = !{!1279}

!1279 = distinct !{!1279, !1280, !"ext_6020c8_exit: argument 0"}

!1280 = distinct !{!1280, !"ext_6020c8_exit"}

!1281 = !{!1282}

!1282 = distinct !{!1282, !1280, !"ext_6020c8_exit: argument 1"}

!1283 = !{!1284}

!1284 = distinct !{!1284, !1285, !"ext_400600_atoi: argument 0"}

!1285 = distinct !{!1285, !"ext_400600_atoi"}

!1286 = !{!1287}

!1287 = distinct !{!1287, !1285, !"ext_400600_atoi: argument 1"}

!1288 = !{!1289}

!1289 = distinct !{!1289, !1290, !"ext_602098_printf: argument 0"}

!1290 = distinct !{!1290, !"ext_602098_printf"}

!1291 = !{!1292}

!1292 = distinct !{!1292, !1290, !"ext_602098_printf: argument 1"}

!1293 = !{!1294}

!1294 = distinct !{!1294, !1295, !"ext_6020c8_exit: argument 0"}

!1295 = distinct !{!1295, !"ext_6020c8_exit"}

!1296 = !{!1297}

!1297 = distinct !{!1297, !1295, !"ext_6020c8_exit: argument 1"}

!1298 = !{!1299}

!1299 = distinct !{!1299, !1300, !"ext_400600_atoi: argument 0"}

!1300 = distinct !{!1300, !"ext_400600_atoi"}

!1301 = !{!1302}

!1302 = distinct !{!1302, !1300, !"ext_400600_atoi: argument 1"}

!1303 = !{!1304}

!1304 = distinct !{!1304, !1305, !"ext_400600_atoi: argument 0"}

!1305 = distinct !{!1305, !"ext_400600_atoi"}

!1306 = !{!1307}

!1307 = distinct !{!1307, !1305, !"ext_400600_atoi: argument 1"}

!1308 = !{!1309}

!1309 = distinct !{!1309, !1310, !"ext_602098_printf: argument 0"}

!1310 = distinct !{!1310, !"ext_602098_printf"}

!1311 = !{!1312}

!1312 = distinct !{!1312, !1310, !"ext_602098_printf: argument 1"}

!1313 = !{!1314}

!1314 = distinct !{!1314, !1315, !"ext_602098_printf: argument 0"}

!1315 = distinct !{!1315, !"ext_602098_printf"}

!1316 = !{!1317}

!1317 = distinct !{!1317, !1315, !"ext_602098_printf: argument 1"}

!1318 = !{!1319}

!1319 = distinct !{!1319, !1320, !"ext_602098_printf: argument 0"}

!1320 = distinct !{!1320, !"ext_602098_printf"}

!1321 = !{!1322}

!1322 = distinct !{!1322, !1320, !"ext_602098_printf: argument 1"}

!1323 = !{!1324}

!1324 = distinct !{!1324, !1325, !"ext_602098_printf: argument 0"}

!1325 = distinct !{!1325, !"ext_602098_printf"}

!1326 = !{!1327}

!1327 = distinct !{!1327, !1325, !"ext_602098_printf: argument 1"}

!1328 = !{!1329}

!1329 = distinct !{!1329, !1330, !"ext_6020a8___libc_start_main: argument 0"}

!1330 = distinct !{!1330, !"ext_6020a8___libc_start_main"}

!1331 = !{!1332}

!1332 = distinct !{!1332, !1330, !"ext_6020a8___libc_start_main: argument 1"}

!1333 = !{!1334}

!1334 = distinct !{!1334, !1335, !"ext_4005e0_malloc: argument 0"}

!1335 = distinct !{!1335, !"ext_4005e0_malloc"}

!1336 = !{!1337}

!1337 = distinct !{!1337, !1335, !"ext_4005e0_malloc: argument 1"}

!1338 = !{!1339}

!1339 = distinct !{!1339, !1340, !"ext_4005d0_memset: argument 0"}

!1340 = distinct !{!1340, !"ext_4005d0_memset"}

!1341 = !{!1342}

!1342 = distinct !{!1342, !1340, !"ext_4005d0_memset: argument 1"}

!1343 = !{!1344}

!1344 = distinct !{!1344, !1345, !"ext_4005e0_malloc: argument 0"}

!1345 = distinct !{!1345, !"ext_4005e0_malloc"}

!1346 = !{!1347}

!1347 = distinct !{!1347, !1345, !"ext_4005e0_malloc: argument 1"}

!1348 = !{!1349}

!1349 = distinct !{!1349, !1350, !"ext_4005b0_free: argument 0"}

!1350 = distinct !{!1350, !"ext_4005b0_free"}

!1351 = !{!1352}

!1352 = distinct !{!1352, !1350, !"ext_4005b0_free: argument 1"}

!1353 = !{!1354}

!1354 = distinct !{!1354, !1355, !"ext_4005b0_free: argument 0"}

!1355 = distinct !{!1355, !"ext_4005b0_free"}

!1356 = !{!1357}

!1357 = distinct !{!1357, !1355, !"ext_4005b0_free: argument 1"}

!1358 = !{!1359}

!1359 = distinct !{!1359, !1360, !"ext_602098_printf: argument 0"}

!1360 = distinct !{!1360, !"ext_602098_printf"}

!1361 = !{!1362}

!1362 = distinct !{!1362, !1360, !"ext_602098_printf: argument 1"}

!1363 = !{!1364}

!1364 = distinct !{!1364, !1365, !"ext_4005b0_free: argument 0"}

!1365 = distinct !{!1365, !"ext_4005b0_free"}

!1366 = !{!1367}

!1367 = distinct !{!1367, !1365, !"ext_4005b0_free: argument 1"}

!1368 = !{!1369}

!1369 = distinct !{!1369, !1370, !"ext_4005e0_malloc: argument 0"}

!1370 = distinct !{!1370, !"ext_4005e0_malloc"}

!1371 = !{!1372}

!1372 = distinct !{!1372, !1370, !"ext_4005e0_malloc: argument 1"}

!1373 = !{!1374}

!1374 = distinct !{!1374, !1375, !"ext_4005e0_malloc: argument 0"}

!1375 = distinct !{!1375, !"ext_4005e0_malloc"}

!1376 = !{!1377}

!1377 = distinct !{!1377, !1375, !"ext_4005e0_malloc: argument 1"}

!1378 = !{!1379}

!1379 = distinct !{!1379, !1380, !"ext_4005b0_free: argument 0"}

!1380 = distinct !{!1380, !"ext_4005b0_free"}

!1381 = !{!1382}

!1382 = distinct !{!1382, !1380, !"ext_4005b0_free: argument 1"}

!1383 = !{!1384}

!1384 = distinct !{!1384, !1385, !"ext_4005e0_malloc: argument 0"}

!1385 = distinct !{!1385, !"ext_4005e0_malloc"}

!1386 = !{!1387}

!1387 = distinct !{!1387, !1385, !"ext_4005e0_malloc: argument 1"}

!1388 = !{!1389}

!1389 = distinct !{!1389, !1390, !"ext_4005d0_memset: argument 0"}

!1390 = distinct !{!1390, !"ext_4005d0_memset"}

!1391 = !{!1392}

!1392 = distinct !{!1392, !1390, !"ext_4005d0_memset: argument 1"}

!1393 = !{!1394}

!1394 = distinct !{!1394, !1395, !"ext_4005e0_malloc: argument 0"}

!1395 = distinct !{!1395, !"ext_4005e0_malloc"}

!1396 = !{!1397}

!1397 = distinct !{!1397, !1395, !"ext_4005e0_malloc: argument 1"}

!1398 = !{!1399}

!1399 = distinct !{!1399, !1400, !"ext_6020d0_rand: argument 0"}

!1400 = distinct !{!1400, !"ext_6020d0_rand"}

!1401 = !{!1402}

!1402 = distinct !{!1402, !1400, !"ext_6020d0_rand: argument 1"}

!1403 = !{!1242, !1242, i64 0}

!1404 = !{!1405}

!1405 = distinct !{!1405, !1406, !"ext_4005b0_free: argument 0"}

!1406 = distinct !{!1406, !"ext_4005b0_free"}

!1407 = !{!1408}

!1408 = distinct !{!1408, !1406, !"ext_4005b0_free: argument 1"}

