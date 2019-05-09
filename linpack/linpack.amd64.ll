; ModuleID = 'linpack.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_4028d0__rodata_type = type <{ [112 x i8], [19 x i8], [12 x i8], [25 x i8], [52 x i8], [36 x i8], [7 x i8], [32 x i8], [21 x i8], [43 x i8], [106 x i8], [17 x i8], [43 x i8] }>

%seg_602e00__init_array_type = type <{ i64, i64 }>

%seg_602ff0__got_type = type <{ i64, i64 }>

%seg_603000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64 }>

%__bss_start_type = type <{ [8 x i8], [8 x i8] }>

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

@seg_4028d0__rodata = internal constant %seg_4028d0__rodata_type <{ [112 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\E0?\9A\99\99\99\99\99\C9?\00\00\00\00\00@\8F@\00\00\00\00\00\00Y@\00\00\00\00\80\84.A\00\00\00\00\00\00\D0@\00\00\00\00\00\00\E0@\00\00\00\00\00\00\F0\BF\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [19 x i8] c"LINPACK_ARRAY_SIZE\00", [12 x i8] c"Too small.\0A\00", [25 x i8] c"Memory required:  %ldK.\0A\00", [52 x i8] c"Not enough memory available for given array size.\0A\0A\00", [36 x i8] c"\0A\0ALINPACK benchmark, %s precision.\0A\00", [7 x i8] c"Double\00", [32 x i8] c"Machine precision:  %d digits.\0A\00", [21 x i8] c"Array size %d X %d.\0A\00", [43 x i8] c"Average rolled and unrolled performance:\0A\0A\00", [106 x i8] c"    Reps Time(s) DGEFA   DGESL  OVERHEAD    KFLOPS\0A\00----------------------------------------------------\0A\00", [17 x i8] c"time: %ld.%06ld\0A\00", [43 x i8] c"%8ld %6.2f %6.2f%% %6.2f%% %6.2f%%  %9.3f\0A\00" }>

@seg_602e00__init_array = internal global %seg_602e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400680_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400650___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c"\10.`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSgetenv to i64), i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 ()* @SSSSSclock to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSatoi to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer

@__mcsema_reg_state = internal thread_local global %struct.State zeroinitializer

@__mcsema_stack = internal thread_local global [131072 x i64] zeroinitializer

@__mcsema_tls = internal thread_local global [512 x i64] zeroinitializer

@0 = internal global i1 false

@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]



; Function Attrs: nounwind readnone speculatable

declare i32 @llvm.ctpop.i32(i32) #0



; Function Attrs: noduplicate noinline nounwind optnone

define %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {

  call void @llvm.trap()

  unreachable

}



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #2
declare i64 @malloc(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSclock() #2
declare i64 @clock() #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSatoi(i64) #2
declare i64 @atoi(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfree(i64) #2
declare i64 @free(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #2
declare i64 @gettimeofday(i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgetenv(i64) #2
declare i64 @getenv(i64) #2


; Function Attrs: noinline

define %struct.Memory* @sub_4005a0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4005a0:

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

  store i8 %32, i8* %15, align 1, !tbaa !1259

  %33 = lshr i64 %21, 63

  %34 = trunc i64 %33 to i8

  store i8 %34, i8* %16, align 1, !tbaa !1260

  store i8 0, i8* %17, align 1, !tbaa !1261

  store i8 0, i8* %18, align 1, !tbaa !1262

  %35 = load i64, i64* %4, align 8

  %36 = add i64 %24, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = add i64 %24, -16

  %39 = inttoptr i64 %38 to i64*

  store i64 %36, i64* %39

  store i64 ptrtoint (i64 ()* @callback_sub_4028c0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_402850___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  store i64 %38, i64* %9, align 8, !alias.scope !1263, !noalias !1266

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_402850___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_4028c0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1263

  store i64 %50, i64* %4, align 8, !alias.scope !1263, !noalias !1266

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401ea0_daxpy_r(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401ea0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %17 = load i64, i64* %15, align 8

  %18 = load i64, i64* %14, align 8, !tbaa !1240

  %19 = add i64 %18, -8

  %20 = inttoptr i64 %19 to i64*

  store i64 %17, i64* %20

  store i64 %19, i64* %14, align 8, !tbaa !1240

  store i64 %19, i64* %15, align 8, !tbaa !1240

  %21 = add i64 %18, -12

  %22 = load i32, i32* %7, align 4

  %23 = inttoptr i64 %21 to i32*

  store i32 %22, i32* %23

  %24 = add i64 %18, -24

  %25 = bitcast [32 x %union.VectorReg]* %16 to i8*

  %26 = bitcast [32 x %union.VectorReg]* %16 to double*

  %27 = load double, double* %26, align 1

  %28 = inttoptr i64 %24 to double*

  store double %27, double* %28

  %29 = add i64 %18, -32

  %30 = load i64, i64* %13, align 8

  %31 = inttoptr i64 %29 to i64*

  store i64 %30, i64* %31

  %32 = add i64 %18, -36

  %33 = load i32, i32* %5, align 4

  %34 = inttoptr i64 %32 to i32*

  store i32 %33, i32* %34

  %35 = add i64 %18, -48

  %36 = load i64, i64* %11, align 8

  %37 = inttoptr i64 %35 to i64*

  store i64 %36, i64* %37

  %38 = add i64 %18, -52

  %39 = load i32, i32* %9, align 4

  %40 = inttoptr i64 %38 to i32*

  store i32 %39, i32* %40

  %41 = add i64 %18, -12

  %42 = inttoptr i64 %41 to i32*

  %43 = load i32, i32* %42

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %44, align 1, !tbaa !1244

  %45 = and i32 %43, 255

  %46 = tail call i32 @llvm.ctpop.i32(i32 %45) #9

  %47 = trunc i32 %46 to i8

  %48 = and i8 %47, 1

  %49 = xor i8 %48, 1

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %49, i8* %50, align 1, !tbaa !1258

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %51, align 1, !tbaa !1262

  %52 = icmp eq i32 %43, 0

  %53 = zext i1 %52 to i8

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %53, i8* %54, align 1, !tbaa !1259

  %55 = lshr i32 %43, 31

  %56 = trunc i32 %55 to i8

  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %56, i8* %57, align 1, !tbaa !1260

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %58, align 1, !tbaa !1261

  %59 = xor i1 %52, true

  %60 = icmp eq i8 %56, 0

  %61 = and i1 %60, %59

  %62 = select i1 %61, i64 42, i64 37

  %63 = add i64 %62, %1

  br i1 %61, label %block_401eca, label %block_401ffa.sink.split



block_401f25:                                     ; preds = %block_401f13, %block_401efb

  %64 = phi i64 [ %110, %block_401efb ], [ %324, %block_401f13 ]

  %65 = phi i64 [ %284, %block_401efb ], [ %322, %block_401f13 ]

  %66 = phi %struct.Memory* [ %265, %block_401efb ], [ %265, %block_401f13 ]

  %67 = add i64 %65, -44

  %68 = add i64 %64, 4

  %69 = inttoptr i64 %67 to i32*

  %70 = load i32, i32* %69

  %71 = lshr i32 %70, 31

  %72 = trunc i32 %71 to i8

  %73 = icmp ne i8 %72, 0

  %74 = select i1 %73, i64 6, i64 24

  %75 = add i64 %68, %74

  br i1 %73, label %block_401f2f, label %block_401f41



block_401fbc:                                     ; preds = %block_401fb0

  %76 = inttoptr i64 %280 to i64*

  %77 = load i64, i64* %76

  %78 = sext i32 %206 to i64

  %79 = shl nsw i64 %78, 3

  %80 = add i64 %79, %77

  %81 = inttoptr i64 %80 to double*

  %82 = load double, double* %81

  %83 = inttoptr i64 %281 to double*

  %84 = load double, double* %83

  %85 = inttoptr i64 %282 to i64*

  %86 = load i64, i64* %85

  %87 = add i64 %79, %86

  %88 = inttoptr i64 %87 to double*

  %89 = load double, double* %88

  %90 = fmul double %84, %89

  store double %90, double* %233, align 1, !tbaa !1268

  store i64 0, i64* %234, align 1, !tbaa !1268

  %91 = fadd double %82, %90

  store double %91, double* %26, align 1, !tbaa !1268

  store i64 0, i64* %223, align 1, !tbaa !1268

  store i64 %78, i64* %11, align 8, !tbaa !1240

  %92 = inttoptr i64 %80 to double*

  store double %91, double* %92

  %93 = inttoptr i64 %276 to i32*

  %94 = load i32, i32* %93

  %95 = add i32 %94, 1

  %96 = inttoptr i64 %276 to i32*

  store i32 %95, i32* %96

  %97 = add i64 %221, -12

  br label %block_401fb0



block_401efb:                                     ; preds = %block_401ee7, %block_401ef1

  %98 = phi i64 [ %291, %block_401ee7 ], [ %275, %block_401ef1 ]

  %99 = add i64 %284, -52

  %100 = inttoptr i64 %99 to i32*

  store i32 1, i32* %100

  %101 = add i64 %284, -56

  %102 = inttoptr i64 %101 to i32*

  store i32 1, i32* %102

  %103 = add i64 %98, 18

  %104 = inttoptr i64 %285 to i32*

  %105 = load i32, i32* %104

  %106 = lshr i32 %105, 31

  %107 = trunc i32 %106 to i8

  %108 = icmp ne i8 %107, 0

  %109 = select i1 %108, i64 6, i64 24

  %110 = add i64 %103, %109

  br i1 %108, label %block_401f13, label %block_401f25



block_401ffa.sink.split.loopexit:                 ; preds = %block_401f48

  %111 = zext i32 %300 to i64

  store i64 %111, i64* %10, align 8, !tbaa !1240

  %112 = icmp ult i32 %300, %302

  %113 = zext i1 %112 to i8

  %114 = and i32 %303, 255

  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #9

  %116 = trunc i32 %115 to i8

  %117 = and i8 %116, 1

  %118 = xor i8 %117, 1

  %119 = xor i32 %302, %300

  %120 = xor i32 %119, %303

  %121 = lshr i32 %120, 4

  %122 = trunc i32 %121 to i8

  %123 = and i8 %122, 1

  %124 = icmp eq i32 %303, 0

  %125 = zext i1 %124 to i8

  %126 = zext i1 %311 to i8

  store i8 %113, i8* %44, align 1, !tbaa !1244

  store i8 %118, i8* %50, align 1, !tbaa !1258

  store i8 %123, i8* %51, align 1, !tbaa !1262

  store i8 %125, i8* %54, align 1, !tbaa !1259

  store i8 %305, i8* %57, align 1, !tbaa !1260

  store i8 %126, i8* %58, align 1, !tbaa !1261

  br label %block_401ffa.sink.split



block_401ffa.sink.split:                          ; preds = %block_401edc, %block_401ffa.sink.split.loopexit, %block_401ea0

  %127 = phi %struct.Memory* [ %265, %block_401edc ], [ %2, %block_401ea0 ], [ %298, %block_401ffa.sink.split.loopexit ]

  br label %block_401ffa



block_401ffa.loopexit:                            ; preds = %block_401fb0

  %128 = zext i32 %206 to i64

  store i64 %128, i64* %10, align 8, !tbaa !1240

  %129 = icmp ult i32 %206, %208

  %130 = zext i1 %129 to i8

  %131 = and i32 %209, 255

  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9

  %133 = trunc i32 %132 to i8

  %134 = and i8 %133, 1

  %135 = xor i8 %134, 1

  %136 = xor i32 %208, %206

  %137 = xor i32 %136, %209

  %138 = lshr i32 %137, 4

  %139 = trunc i32 %138 to i8

  %140 = and i8 %139, 1

  %141 = icmp eq i32 %209, 0

  %142 = zext i1 %141 to i8

  %143 = zext i1 %217 to i8

  store i8 %130, i8* %44, align 1, !tbaa !1244

  store i8 %135, i8* %50, align 1, !tbaa !1258

  store i8 %140, i8* %51, align 1, !tbaa !1262

  store i8 %142, i8* %54, align 1, !tbaa !1259

  store i8 %211, i8* %57, align 1, !tbaa !1260

  store i8 %143, i8* %58, align 1, !tbaa !1261

  br label %block_401ffa



block_401ffa:                                     ; preds = %block_401ffa.loopexit, %block_401ffa.sink.split

  %144 = phi %struct.Memory* [ %127, %block_401ffa.sink.split ], [ %204, %block_401ffa.loopexit ]

  %145 = load i64, i64* %14, align 8, !tbaa !1240

  %146 = add i64 %145, 8

  %147 = inttoptr i64 %145 to i64*

  %148 = load i64, i64* %147

  store i64 %148, i64* %15, align 8, !tbaa !1240

  %149 = inttoptr i64 %146 to i64*

  %150 = load i64, i64* %149

  store i64 %150, i64* %3, align 8, !tbaa !1240

  %151 = add i64 %145, 16

  store i64 %151, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %144



block_401f2f:                                     ; preds = %block_401f25

  %152 = add i64 %65, -4

  %153 = inttoptr i64 %152 to i32*

  %154 = load i32, i32* %153

  %155 = sub i32 1, %154

  %156 = mul i32 %70, %155

  %157 = add i32 %156, 1

  %158 = load i64, i64* %15, align 8

  %159 = add i64 %158, -56

  %160 = add i64 %75, 18

  %161 = inttoptr i64 %159 to i32*

  store i32 %157, i32* %161

  br label %block_401f41



block_401f54:                                     ; preds = %block_401f48

  %162 = inttoptr i64 %333 to i64*

  %163 = load i64, i64* %162

  %164 = inttoptr i64 %334 to i32*

  %165 = load i32, i32* %164

  %166 = sext i32 %165 to i64

  %167 = shl nsw i64 %166, 3

  %168 = add i64 %167, %163

  %169 = inttoptr i64 %168 to double*

  %170 = load double, double* %169

  %171 = inttoptr i64 %335 to double*

  %172 = load double, double* %171

  %173 = inttoptr i64 %336 to i64*

  %174 = load i64, i64* %173

  %175 = inttoptr i64 %337 to i32*

  %176 = load i32, i32* %175

  %177 = sext i32 %176 to i64

  %178 = shl nsw i64 %177, 3

  %179 = add i64 %178, %174

  %180 = inttoptr i64 %179 to double*

  %181 = load double, double* %180

  %182 = fmul double %172, %181

  store double %182, double* %233, align 1, !tbaa !1268

  store i64 0, i64* %234, align 1, !tbaa !1268

  %183 = fadd double %170, %182

  store double %183, double* %26, align 1, !tbaa !1268

  store i64 0, i64* %223, align 1, !tbaa !1268

  store i64 %166, i64* %11, align 8, !tbaa !1240

  %184 = inttoptr i64 %168 to double*

  store double %183, double* %184

  %185 = inttoptr i64 %337 to i32*

  %186 = load i32, i32* %185

  %187 = inttoptr i64 %338 to i32*

  %188 = load i32, i32* %187

  %189 = add i32 %188, %186

  %190 = inttoptr i64 %337 to i32*

  store i32 %189, i32* %190

  %191 = inttoptr i64 %334 to i32*

  %192 = load i32, i32* %191

  %193 = inttoptr i64 %339 to i32*

  %194 = load i32, i32* %193

  %195 = add i32 %194, %192

  %196 = zext i32 %195 to i64

  store i64 %196, i64* %12, align 8, !tbaa !1240

  %197 = inttoptr i64 %334 to i32*

  store i32 %195, i32* %197

  %198 = inttoptr i64 %329 to i32*

  %199 = load i32, i32* %198

  %200 = add i32 %199, 1

  %201 = inttoptr i64 %329 to i32*

  store i32 %200, i32* %201

  %202 = add i64 %315, -12

  br label %block_401f48



block_401fb0:                                     ; preds = %block_401fa9, %block_401fbc

  %203 = phi i64 [ %277, %block_401fa9 ], [ %97, %block_401fbc ]

  %204 = phi %struct.Memory* [ %265, %block_401fa9 ], [ %204, %block_401fbc ]

  %205 = inttoptr i64 %276 to i32*

  %206 = load i32, i32* %205

  %207 = inttoptr i64 %279 to i32*

  %208 = load i32, i32* %207

  %209 = sub i32 %206, %208

  %210 = lshr i32 %209, 31

  %211 = trunc i32 %210 to i8

  %212 = lshr i32 %206, 31

  %213 = lshr i32 %208, 31

  %214 = xor i32 %213, %212

  %215 = xor i32 %210, %212

  %216 = add nuw nsw i32 %215, %214

  %217 = icmp eq i32 %216, 2

  %218 = icmp ne i8 %211, 0

  %219 = xor i1 %218, %217

  %220 = select i1 %219, i64 12, i64 74

  %221 = add i64 %203, %220

  br i1 %219, label %block_401fbc, label %block_401ffa.loopexit



block_401eca:                                     ; preds = %block_401ea0

  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %224 = bitcast [32 x %union.VectorReg]* %16 to i32*

  store i32 0, i32* %224, align 1, !tbaa !1270

  %225 = getelementptr inbounds i8, i8* %25, i64 4

  %226 = bitcast i8* %225 to i32*

  store i32 0, i32* %226, align 1, !tbaa !1270

  %227 = bitcast i64* %223 to i32*

  store i32 0, i32* %227, align 1, !tbaa !1270

  %228 = getelementptr inbounds i8, i8* %25, i64 12

  %229 = bitcast i8* %228 to i32*

  store i32 0, i32* %229, align 1, !tbaa !1270

  %230 = add i64 %18, -24

  %231 = inttoptr i64 %230 to double*

  %232 = load double, double* %231

  %233 = bitcast %union.VectorReg* %222 to double*

  store double %232, double* %233, align 1, !tbaa !1268

  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %235 = bitcast i64* %234 to double*

  store double 0.000000e+00, double* %235, align 1, !tbaa !1268

  %236 = add i64 %63, 12

  store i64 %236, i64* %3, align 8

  %237 = load double, double* %26, align 1

  %238 = fcmp uno double %232, %237

  br i1 %238, label %239, label %251



; <label>:239:                                    ; preds = %block_401eca

  %240 = fadd double %232, %237

  %241 = bitcast double %240 to i64

  %242 = and i64 %241, 9221120237041090560

  %243 = icmp eq i64 %242, 9218868437227405312

  %244 = and i64 %241, 2251799813685247

  %245 = icmp ne i64 %244, 0

  %246 = and i1 %243, %245

  br i1 %246, label %247, label %257



; <label>:247:                                    ; preds = %239

  %248 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %236, %struct.Memory* %2) #12

  %249 = load i64, i64* %3, align 8

  %250 = load i8, i8* %54, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:251:                                    ; preds = %block_401eca

  %252 = fcmp ogt double %232, %237

  br i1 %252, label %257, label %253



; <label>:253:                                    ; preds = %251

  %254 = fcmp olt double %232, %237

  br i1 %254, label %257, label %255



; <label>:255:                                    ; preds = %253

  %256 = fcmp oeq double %232, %237

  br i1 %256, label %257, label %261



; <label>:257:                                    ; preds = %255, %253, %251, %239

  %258 = phi i8 [ 0, %251 ], [ 0, %253 ], [ 1, %255 ], [ 1, %239 ]

  %259 = phi i8 [ 0, %251 ], [ 0, %253 ], [ 0, %255 ], [ 1, %239 ]

  %260 = phi i8 [ 0, %251 ], [ 1, %253 ], [ 0, %255 ], [ 1, %239 ]

  store i8 %258, i8* %54, align 1, !tbaa !1271

  store i8 %259, i8* %50, align 1, !tbaa !1271

  store i8 %260, i8* %44, align 1, !tbaa !1271

  br label %261



; <label>:261:                                    ; preds = %257, %255

  %262 = phi i8 [ %258, %257 ], [ 0, %255 ]

  store i8 0, i8* %58, align 1, !tbaa !1271

  store i8 0, i8* %57, align 1, !tbaa !1271

  store i8 0, i8* %51, align 1, !tbaa !1271

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %261, %247

  %263 = phi i8 [ %250, %247 ], [ %262, %261 ]

  %264 = phi i64 [ %249, %247 ], [ %236, %261 ]

  %265 = phi %struct.Memory* [ %248, %247 ], [ %2, %261 ]

  %266 = icmp eq i8 %263, 0

  %267 = select i1 %266, i64 17, i64 6

  %268 = add i64 %264, %267

  br i1 %266, label %block_401ee7, label %block_401edc



block_401ef1:                                     ; preds = %block_401ee7

  %269 = add i64 %284, -44

  %270 = inttoptr i64 %269 to i32*

  %271 = load i32, i32* %270

  %272 = add i32 %271, -1

  %273 = icmp eq i32 %272, 0

  %274 = select i1 %273, i64 184, i64 10

  %275 = add i64 %291, %274

  br i1 %273, label %block_401fa9, label %block_401efb



block_401fa9:                                     ; preds = %block_401ef1

  %276 = add i64 %284, -48

  %277 = add i64 %275, 7

  %278 = inttoptr i64 %276 to i32*

  store i32 0, i32* %278

  %279 = add i64 %284, -4

  %280 = add i64 %284, -40

  %281 = add i64 %284, -16

  %282 = add i64 %284, -24

  br label %block_401fb0



block_401ee7:                                     ; preds = %block_401edc, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %283 = phi i64 [ %295, %block_401edc ], [ %268, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]

  %284 = load i64, i64* %15, align 8

  %285 = add i64 %284, -28

  %286 = inttoptr i64 %285 to i32*

  %287 = load i32, i32* %286

  %288 = add i32 %287, -1

  %289 = icmp eq i32 %288, 0

  %290 = select i1 %289, i64 10, i64 20

  %291 = add i64 %283, %290

  br i1 %289, label %block_401ef1, label %block_401efb



block_401edc:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %292 = load i8, i8* %50, align 1, !tbaa !1258

  %293 = icmp ne i8 %292, 0

  %294 = select i1 %293, i64 11, i64 6

  %295 = add i64 %268, %294

  %296 = icmp eq i8 %292, 1

  br i1 %296, label %block_401ee7, label %block_401ffa.sink.split



block_401f48:                                     ; preds = %block_401f41, %block_401f54

  %297 = phi i64 [ %330, %block_401f41 ], [ %202, %block_401f54 ]

  %298 = phi %struct.Memory* [ %328, %block_401f41 ], [ %298, %block_401f54 ]

  %299 = inttoptr i64 %329 to i32*

  %300 = load i32, i32* %299

  %301 = inttoptr i64 %332 to i32*

  %302 = load i32, i32* %301

  %303 = sub i32 %300, %302

  %304 = lshr i32 %303, 31

  %305 = trunc i32 %304 to i8

  %306 = lshr i32 %300, 31

  %307 = lshr i32 %302, 31

  %308 = xor i32 %307, %306

  %309 = xor i32 %304, %306

  %310 = add nuw nsw i32 %309, %308

  %311 = icmp eq i32 %310, 2

  %312 = icmp ne i8 %305, 0

  %313 = xor i1 %312, %311

  %314 = select i1 %313, i64 12, i64 92

  %315 = add i64 %297, %314

  br i1 %313, label %block_401f54, label %block_401ffa.sink.split.loopexit



block_401f13:                                     ; preds = %block_401efb

  %316 = add i64 %284, -4

  %317 = inttoptr i64 %316 to i32*

  %318 = load i32, i32* %317

  %319 = sub i32 1, %318

  %320 = mul i32 %105, %319

  %321 = add i32 %320, 1

  %322 = load i64, i64* %15, align 8

  %323 = add i64 %322, -52

  %324 = add i64 %110, 18

  %325 = inttoptr i64 %323 to i32*

  store i32 %321, i32* %325

  br label %block_401f25



block_401f41:                                     ; preds = %block_401f2f, %block_401f25

  %326 = phi i64 [ %75, %block_401f25 ], [ %160, %block_401f2f ]

  %327 = phi i64 [ %65, %block_401f25 ], [ %158, %block_401f2f ]

  %328 = phi %struct.Memory* [ %66, %block_401f25 ], [ %66, %block_401f2f ]

  %329 = add i64 %327, -48

  %330 = add i64 %326, 7

  %331 = inttoptr i64 %329 to i32*

  store i32 0, i32* %331

  %332 = add i64 %327, -4

  %333 = add i64 %327, -40

  %334 = add i64 %327, -56

  %335 = add i64 %327, -16

  %336 = add i64 %327, -24

  %337 = add i64 %327, -52

  %338 = add i64 %327, -28

  %339 = add i64 %327, -44

  br label %block_401f48

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4028c4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4028c4:

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

  store i8 %12, i8* %13, align 1, !tbaa !1262

  %31 = icmp eq i64 %5, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %14, align 1, !tbaa !1259

  %33 = trunc i64 %17 to i8

  store i8 %33, i8* %16, align 1, !tbaa !1260

  store i8 %21, i8* %22, align 1, !tbaa !1261

  %34 = inttoptr i64 %5 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %3, align 8, !tbaa !1240

  %36 = add i64 %5, 8

  store i64 %36, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400680_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400680:

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

  %12 = tail call %struct.Memory* @sub_400610_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4021e0_daxpy_ur(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4021e0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %17 = load i64, i64* %15, align 8

  %18 = load i64, i64* %14, align 8, !tbaa !1240

  %19 = add i64 %18, -8

  %20 = inttoptr i64 %19 to i64*

  store i64 %17, i64* %20

  store i64 %19, i64* %14, align 8, !tbaa !1240

  store i64 %19, i64* %15, align 8, !tbaa !1240

  %21 = add i64 %18, -12

  %22 = load i32, i32* %7, align 4

  %23 = inttoptr i64 %21 to i32*

  store i32 %22, i32* %23

  %24 = add i64 %18, -24

  %25 = bitcast [32 x %union.VectorReg]* %16 to i8*

  %26 = bitcast [32 x %union.VectorReg]* %16 to double*

  %27 = load double, double* %26, align 1

  %28 = inttoptr i64 %24 to double*

  store double %27, double* %28

  %29 = add i64 %18, -32

  %30 = load i64, i64* %13, align 8

  %31 = inttoptr i64 %29 to i64*

  store i64 %30, i64* %31

  %32 = add i64 %18, -36

  %33 = load i32, i32* %5, align 4

  %34 = inttoptr i64 %32 to i32*

  store i32 %33, i32* %34

  %35 = add i64 %18, -48

  %36 = load i64, i64* %11, align 8

  %37 = inttoptr i64 %35 to i64*

  store i64 %36, i64* %37

  %38 = add i64 %18, -52

  %39 = load i32, i32* %9, align 4

  %40 = inttoptr i64 %38 to i32*

  store i32 %39, i32* %40

  %41 = add i64 %18, -12

  %42 = inttoptr i64 %41 to i32*

  %43 = load i32, i32* %42

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %44, align 1, !tbaa !1244

  %45 = and i32 %43, 255

  %46 = tail call i32 @llvm.ctpop.i32(i32 %45) #9

  %47 = trunc i32 %46 to i8

  %48 = and i8 %47, 1

  %49 = xor i8 %48, 1

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %49, i8* %50, align 1, !tbaa !1258

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %51, align 1, !tbaa !1262

  %52 = icmp eq i32 %43, 0

  %53 = zext i1 %52 to i8

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %53, i8* %54, align 1, !tbaa !1259

  %55 = lshr i32 %43, 31

  %56 = trunc i32 %55 to i8

  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %56, i8* %57, align 1, !tbaa !1260

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %58, align 1, !tbaa !1261

  %59 = xor i1 %52, true

  %60 = icmp eq i8 %56, 0

  %61 = and i1 %60, %59

  %62 = select i1 %61, i64 42, i64 37

  %63 = add i64 %62, %1

  br i1 %61, label %block_40220a, label %block_402205



block_402374:                                     ; preds = %block_402380, %block_40236e

  %64 = phi i64 [ %102, %block_40236e ], [ %543, %block_402380 ]

  %65 = phi %struct.Memory* [ %98, %block_40236e ], [ %65, %block_402380 ]

  %66 = inttoptr i64 %236 to i32*

  %67 = load i32, i32* %66

  %68 = inttoptr i64 %96 to i32*

  %69 = load i32, i32* %68

  %70 = sub i32 %67, %69

  %71 = lshr i32 %70, 31

  %72 = trunc i32 %71 to i8

  %73 = lshr i32 %67, 31

  %74 = lshr i32 %69, 31

  %75 = xor i32 %74, %73

  %76 = xor i32 %71, %73

  %77 = add nuw nsw i32 %76, %75

  %78 = icmp eq i32 %77, 2

  %79 = icmp ne i8 %72, 0

  %80 = xor i1 %79, %78

  %81 = select i1 %80, i64 12, i64 263

  %82 = add i64 %64, %81

  br i1 %80, label %block_402380, label %block_40247b.loopexit



block_40226f:                                     ; preds = %block_402265

  %83 = add i64 %105, -4

  %84 = inttoptr i64 %83 to i32*

  %85 = load i32, i32* %84

  %86 = sub i32 1, %85

  %87 = mul i32 %110, %86

  %88 = add i32 %87, 1

  %89 = load i64, i64* %15, align 8

  %90 = add i64 %89, -56

  %91 = add i64 %115, 18

  %92 = inttoptr i64 %90 to i32*

  store i32 %88, i32* %92

  br label %block_402281



block_40236e:                                     ; preds = %block_402369, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge

  %93 = phi i64 [ %240, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge ], [ %400, %block_402369 ]

  %94 = phi i64 [ %239, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge ], [ %399, %block_402369 ]

  %95 = phi i64 [ %238, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge ], [ %398, %block_402369 ]

  %96 = phi i64 [ %237, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge ], [ %142, %block_402369 ]

  %97 = phi i64 [ %235, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge ], [ %446, %block_402369 ]

  %98 = phi %struct.Memory* [ %228, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge ], [ %323, %block_402369 ]

  %99 = bitcast i64* %350 to double*

  %100 = inttoptr i64 %229 to i32*

  %101 = load i32, i32* %100

  %102 = add i64 %97, 6

  %103 = inttoptr i64 %236 to i32*

  store i32 %101, i32* %103

  br label %block_402374



block_402265:                                     ; preds = %block_40223b, %block_402253

  %104 = phi i64 [ %253, %block_40223b ], [ %194, %block_402253 ]

  %105 = phi i64 [ %341, %block_40223b ], [ %192, %block_402253 ]

  %106 = phi %struct.Memory* [ %392, %block_40223b ], [ %392, %block_402253 ]

  %107 = add i64 %105, -44

  %108 = add i64 %104, 4

  %109 = inttoptr i64 %107 to i32*

  %110 = load i32, i32* %109

  %111 = lshr i32 %110, 31

  %112 = trunc i32 %111 to i8

  %113 = icmp ne i8 %112, 0

  %114 = select i1 %113, i64 6, i64 24

  %115 = add i64 %108, %114

  br i1 %113, label %block_40226f, label %block_402281



block_402364:                                     ; preds = %block_40235a

  br label %block_40247b.sink.split



block_40247b.sink.split:                          ; preds = %block_402205, %block_402222, %block_4022e4, %block_402364

  %116 = phi %struct.Memory* [ %2, %block_402205 ], [ %392, %block_402222 ], [ %428, %block_4022e4 ], [ %323, %block_402364 ]

  br label %block_40247b



block_40247b.loopexit:                            ; preds = %block_402374

  %117 = zext i32 %67 to i64

  store i64 %117, i64* %10, align 8, !tbaa !1240

  %118 = icmp ult i32 %67, %69

  %119 = zext i1 %118 to i8

  %120 = and i32 %70, 255

  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #9

  %122 = trunc i32 %121 to i8

  %123 = and i8 %122, 1

  %124 = xor i8 %123, 1

  %125 = xor i32 %69, %67

  %126 = xor i32 %125, %70

  %127 = lshr i32 %126, 4

  %128 = trunc i32 %127 to i8

  %129 = and i8 %128, 1

  %130 = icmp eq i32 %70, 0

  %131 = zext i1 %130 to i8

  %132 = zext i1 %78 to i8

  store i8 %119, i8* %44, align 1, !tbaa !1244

  store i8 %124, i8* %50, align 1, !tbaa !1258

  store i8 %129, i8* %51, align 1, !tbaa !1262

  store i8 %131, i8* %54, align 1, !tbaa !1259

  store i8 %72, i8* %57, align 1, !tbaa !1260

  store i8 %132, i8* %58, align 1, !tbaa !1261

  br label %block_40247b



block_40247b:                                     ; preds = %block_40247b.loopexit, %block_40247b.sink.split

  %133 = phi %struct.Memory* [ %116, %block_40247b.sink.split ], [ %65, %block_40247b.loopexit ]

  %134 = load i64, i64* %14, align 8, !tbaa !1240

  %135 = add i64 %134, 8

  %136 = inttoptr i64 %134 to i64*

  %137 = load i64, i64* %136

  store i64 %137, i64* %15, align 8, !tbaa !1240

  %138 = inttoptr i64 %135 to i64*

  %139 = load i64, i64* %138

  store i64 %139, i64* %3, align 8, !tbaa !1240

  %140 = add i64 %134, 16

  store i64 %140, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %133



block_40235a:                                     ; preds = %block_402310

  %141 = zext i32 %325 to i64

  store i64 %141, i64* %10, align 8, !tbaa !1240

  %142 = add i64 %227, -4

  %143 = inttoptr i64 %142 to i32*

  %144 = load i32, i32* %143

  %145 = add i32 %144, -4

  %146 = icmp ult i32 %144, 4

  %147 = zext i1 %146 to i8

  store i8 %147, i8* %44, align 1, !tbaa !1244

  %148 = and i32 %145, 255

  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #9

  %150 = trunc i32 %149 to i8

  %151 = and i8 %150, 1

  %152 = xor i8 %151, 1

  store i8 %152, i8* %50, align 1, !tbaa !1258

  %153 = xor i32 %145, %144

  %154 = lshr i32 %153, 4

  %155 = trunc i32 %154 to i8

  %156 = and i8 %155, 1

  store i8 %156, i8* %51, align 1, !tbaa !1262

  %157 = icmp eq i32 %145, 0

  %158 = zext i1 %157 to i8

  store i8 %158, i8* %54, align 1, !tbaa !1259

  %159 = lshr i32 %145, 31

  %160 = trunc i32 %159 to i8

  store i8 %160, i8* %57, align 1, !tbaa !1260

  %161 = lshr i32 %144, 31

  %162 = xor i32 %159, %161

  %163 = add nuw nsw i32 %162, %161

  %164 = icmp eq i32 %163, 2

  %165 = zext i1 %164 to i8

  store i8 %165, i8* %58, align 1, !tbaa !1261

  %166 = icmp ne i8 %160, 0

  %167 = xor i1 %166, %164

  %168 = select i1 %167, i64 10, i64 15

  %169 = add i64 %339, %168

  br i1 %167, label %block_402364, label %block_402369



block_4022e4:                                     ; preds = %block_402288

  %170 = zext i32 %430 to i64

  store i64 %170, i64* %10, align 8, !tbaa !1240

  %171 = icmp ult i32 %430, %432

  %172 = zext i1 %171 to i8

  %173 = and i32 %433, 255

  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #9

  %175 = trunc i32 %174 to i8

  %176 = and i8 %175, 1

  %177 = xor i8 %176, 1

  %178 = xor i32 %432, %430

  %179 = xor i32 %178, %433

  %180 = lshr i32 %179, 4

  %181 = trunc i32 %180 to i8

  %182 = and i8 %181, 1

  %183 = icmp eq i32 %433, 0

  %184 = zext i1 %183 to i8

  %185 = zext i1 %441 to i8

  store i8 %172, i8* %44, align 1, !tbaa !1244

  store i8 %177, i8* %50, align 1, !tbaa !1258

  store i8 %182, i8* %51, align 1, !tbaa !1262

  store i8 %184, i8* %54, align 1, !tbaa !1259

  store i8 %435, i8* %57, align 1, !tbaa !1260

  store i8 %185, i8* %58, align 1, !tbaa !1261

  br label %block_40247b.sink.split



block_402253:                                     ; preds = %block_40223b

  %186 = add i64 %341, -4

  %187 = inttoptr i64 %186 to i32*

  %188 = load i32, i32* %187

  %189 = sub i32 1, %188

  %190 = mul i32 %248, %189

  %191 = add i32 %190, 1

  %192 = load i64, i64* %15, align 8

  %193 = add i64 %192, -52

  %194 = add i64 %253, 18

  %195 = inttoptr i64 %193 to i32*

  store i32 %191, i32* %195

  br label %block_402265



block_4022e9:                                     ; preds = %block_402231

  %196 = add i64 %341, -4

  %197 = inttoptr i64 %196 to i32*

  %198 = load i32, i32* %197

  %199 = zext i32 %198 to i64

  %200 = add i64 %341, -64

  %201 = inttoptr i64 %200 to i32*

  store i32 4, i32* %201

  store i64 %199, i64* %10, align 8, !tbaa !1240

  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %203 = sext i32 %198 to i64

  %204 = lshr i64 %203, 32

  store i64 %204, i64* %202, align 8, !tbaa !1240

  %205 = inttoptr i64 %200 to i32*

  %206 = load i32, i32* %205

  %207 = zext i32 %206 to i64

  store i64 %207, i64* %11, align 8, !tbaa !1240

  %208 = add i64 %426, 19

  store i64 %208, i64* %3, align 8

  %209 = sext i32 %206 to i64

  %210 = shl nuw i64 %204, 32

  %211 = or i64 %210, %199

  %212 = sdiv i64 %211, %209

  %213 = shl i64 %212, 32

  %214 = ashr exact i64 %213, 32

  %215 = icmp eq i64 %212, %214

  br i1 %215, label %221, label %216



; <label>:216:                                    ; preds = %block_4022e9

  %217 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %208, %struct.Memory* %392) #12

  %218 = load i64, i64* %15, align 8

  %219 = load i32, i32* %5, align 4

  %220 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:221:                                    ; preds = %block_4022e9

  %222 = srem i64 %211, %209

  %223 = and i64 %222, 4294967295

  store i64 %223, i64* %12, align 8, !tbaa !1240

  %224 = trunc i64 %222 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %221, %216

  %225 = phi i64 [ %220, %216 ], [ %208, %221 ]

  %226 = phi i32 [ %219, %216 ], [ %224, %221 ]

  %227 = phi i64 [ %218, %216 ], [ %341, %221 ]

  %228 = phi %struct.Memory* [ %217, %216 ], [ %392, %221 ]

  %229 = add i64 %227, -60

  %230 = inttoptr i64 %229 to i32*

  store i32 %226, i32* %230

  %231 = inttoptr i64 %229 to i32*

  %232 = load i32, i32* %231

  %233 = icmp eq i32 %232, 0

  %234 = select i1 %233, i64 114, i64 13

  %235 = add i64 %225, %234

  %236 = add i64 %227, -48

  br i1 %233, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge, label %block_402309



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40236e_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %237 = add i64 %227, -4

  %238 = add i64 %227, -40

  %239 = add i64 %227, -16

  %240 = add i64 %227, -24

  br label %block_40236e



block_40223b:                                     ; preds = %block_402231, %block_402227

  %241 = phi i64 [ %426, %block_402231 ], [ %348, %block_402227 ]

  %242 = add i64 %341, -52

  %243 = inttoptr i64 %242 to i32*

  store i32 1, i32* %243

  %244 = add i64 %341, -56

  %245 = inttoptr i64 %244 to i32*

  store i32 1, i32* %245

  %246 = add i64 %241, 18

  %247 = inttoptr i64 %342 to i32*

  %248 = load i32, i32* %247

  %249 = lshr i32 %248, 31

  %250 = trunc i32 %249 to i8

  %251 = icmp ne i8 %250, 0

  %252 = select i1 %251, i64 6, i64 24

  %253 = add i64 %246, %252

  br i1 %251, label %block_402253, label %block_402265



block_40221c:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %254 = load i8, i8* %50, align 1, !tbaa !1258

  %255 = icmp ne i8 %254, 0

  %256 = select i1 %255, i64 11, i64 6

  %257 = add i64 %395, %256

  %258 = icmp eq i8 %254, 1

  br i1 %258, label %block_402227, label %block_402222



block_40231c:                                     ; preds = %block_402310

  %259 = inttoptr i64 %398 to i64*

  %260 = load i64, i64* %259

  %261 = sext i32 %325 to i64

  %262 = shl nsw i64 %261, 3

  %263 = add i64 %262, %260

  %264 = inttoptr i64 %263 to double*

  %265 = load double, double* %264

  %266 = inttoptr i64 %399 to double*

  %267 = load double, double* %266

  %268 = inttoptr i64 %400 to i64*

  %269 = load i64, i64* %268

  %270 = add i64 %262, %269

  %271 = inttoptr i64 %270 to double*

  %272 = load double, double* %271

  %273 = fmul double %267, %272

  store double %273, double* %360, align 1, !tbaa !1268

  store i64 0, i64* %361, align 1, !tbaa !1268

  %274 = fadd double %265, %273

  store double %274, double* %26, align 1, !tbaa !1268

  store i64 0, i64* %350, align 1, !tbaa !1268

  store i64 %261, i64* %11, align 8, !tbaa !1240

  %275 = inttoptr i64 %263 to double*

  store double %274, double* %275

  %276 = inttoptr i64 %236 to i32*

  %277 = load i32, i32* %276

  %278 = add i32 %277, 1

  %279 = inttoptr i64 %236 to i32*

  store i32 %278, i32* %279

  %280 = add i64 %339, -12

  br label %block_402310



block_402294:                                     ; preds = %block_402288

  %281 = inttoptr i64 %454 to i64*

  %282 = load i64, i64* %281

  %283 = inttoptr i64 %455 to i32*

  %284 = load i32, i32* %283

  %285 = sext i32 %284 to i64

  %286 = shl nsw i64 %285, 3

  %287 = add i64 %286, %282

  %288 = inttoptr i64 %287 to double*

  %289 = load double, double* %288

  %290 = inttoptr i64 %456 to double*

  %291 = load double, double* %290

  %292 = inttoptr i64 %457 to i64*

  %293 = load i64, i64* %292

  %294 = inttoptr i64 %458 to i32*

  %295 = load i32, i32* %294

  %296 = sext i32 %295 to i64

  %297 = shl nsw i64 %296, 3

  %298 = add i64 %297, %293

  %299 = inttoptr i64 %298 to double*

  %300 = load double, double* %299

  %301 = fmul double %291, %300

  store double %301, double* %360, align 1, !tbaa !1268

  store i64 0, i64* %361, align 1, !tbaa !1268

  %302 = fadd double %289, %301

  store double %302, double* %26, align 1, !tbaa !1268

  store i64 0, i64* %350, align 1, !tbaa !1268

  store i64 %285, i64* %11, align 8, !tbaa !1240

  %303 = inttoptr i64 %287 to double*

  store double %302, double* %303

  %304 = inttoptr i64 %458 to i32*

  %305 = load i32, i32* %304

  %306 = inttoptr i64 %459 to i32*

  %307 = load i32, i32* %306

  %308 = add i32 %307, %305

  %309 = inttoptr i64 %458 to i32*

  store i32 %308, i32* %309

  %310 = inttoptr i64 %455 to i32*

  %311 = load i32, i32* %310

  %312 = inttoptr i64 %460 to i32*

  %313 = load i32, i32* %312

  %314 = add i32 %313, %311

  %315 = zext i32 %314 to i64

  store i64 %315, i64* %12, align 8, !tbaa !1240

  %316 = inttoptr i64 %455 to i32*

  store i32 %314, i32* %316

  %317 = inttoptr i64 %450 to i32*

  %318 = load i32, i32* %317

  %319 = add i32 %318, 1

  %320 = inttoptr i64 %450 to i32*

  store i32 %319, i32* %320

  %321 = add i64 %445, -12

  br label %block_402288



block_402310:                                     ; preds = %block_402309, %block_40231c

  %322 = phi i64 [ %396, %block_402309 ], [ %280, %block_40231c ]

  %323 = phi %struct.Memory* [ %228, %block_402309 ], [ %323, %block_40231c ]

  %324 = inttoptr i64 %236 to i32*

  %325 = load i32, i32* %324

  %326 = inttoptr i64 %229 to i32*

  %327 = load i32, i32* %326

  %328 = sub i32 %325, %327

  %329 = lshr i32 %328, 31

  %330 = lshr i32 %325, 31

  %331 = lshr i32 %327, 31

  %332 = xor i32 %331, %330

  %333 = xor i32 %329, %330

  %334 = add nuw nsw i32 %333, %332

  %335 = icmp eq i32 %334, 2

  %336 = icmp ne i32 %329, 0

  %337 = xor i1 %336, %335

  %338 = select i1 %337, i64 12, i64 74

  %339 = add i64 %322, %338

  br i1 %337, label %block_40231c, label %block_40235a



block_402227:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_40221c

  %340 = phi i64 [ %395, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %257, %block_40221c ]

  %341 = load i64, i64* %15, align 8

  %342 = add i64 %341, -28

  %343 = inttoptr i64 %342 to i32*

  %344 = load i32, i32* %343

  %345 = add i32 %344, -1

  %346 = icmp eq i32 %345, 0

  %347 = select i1 %346, i64 10, i64 20

  %348 = add i64 %340, %347

  br i1 %346, label %block_402231, label %block_40223b



block_40220a:                                     ; preds = %block_4021e0

  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %351 = bitcast [32 x %union.VectorReg]* %16 to i32*

  store i32 0, i32* %351, align 1, !tbaa !1270

  %352 = getelementptr inbounds i8, i8* %25, i64 4

  %353 = bitcast i8* %352 to i32*

  store i32 0, i32* %353, align 1, !tbaa !1270

  %354 = bitcast i64* %350 to i32*

  store i32 0, i32* %354, align 1, !tbaa !1270

  %355 = getelementptr inbounds i8, i8* %25, i64 12

  %356 = bitcast i8* %355 to i32*

  store i32 0, i32* %356, align 1, !tbaa !1270

  %357 = add i64 %18, -24

  %358 = inttoptr i64 %357 to double*

  %359 = load double, double* %358

  %360 = bitcast %union.VectorReg* %349 to double*

  store double %359, double* %360, align 1, !tbaa !1268

  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %362 = bitcast i64* %361 to double*

  store double 0.000000e+00, double* %362, align 1, !tbaa !1268

  %363 = add i64 %63, 12

  store i64 %363, i64* %3, align 8

  %364 = load double, double* %26, align 1

  %365 = fcmp uno double %359, %364

  br i1 %365, label %366, label %378



; <label>:366:                                    ; preds = %block_40220a

  %367 = fadd double %359, %364

  %368 = bitcast double %367 to i64

  %369 = and i64 %368, 9221120237041090560

  %370 = icmp eq i64 %369, 9218868437227405312

  %371 = and i64 %368, 2251799813685247

  %372 = icmp ne i64 %371, 0

  %373 = and i1 %370, %372

  br i1 %373, label %374, label %384



; <label>:374:                                    ; preds = %366

  %375 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %363, %struct.Memory* %2) #12

  %376 = load i64, i64* %3, align 8

  %377 = load i8, i8* %54, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:378:                                    ; preds = %block_40220a

  %379 = fcmp ogt double %359, %364

  br i1 %379, label %384, label %380



; <label>:380:                                    ; preds = %378

  %381 = fcmp olt double %359, %364

  br i1 %381, label %384, label %382



; <label>:382:                                    ; preds = %380

  %383 = fcmp oeq double %359, %364

  br i1 %383, label %384, label %388



; <label>:384:                                    ; preds = %382, %380, %378, %366

  %385 = phi i8 [ 0, %378 ], [ 0, %380 ], [ 1, %382 ], [ 1, %366 ]

  %386 = phi i8 [ 0, %378 ], [ 0, %380 ], [ 0, %382 ], [ 1, %366 ]

  %387 = phi i8 [ 0, %378 ], [ 1, %380 ], [ 0, %382 ], [ 1, %366 ]

  store i8 %385, i8* %54, align 1, !tbaa !1271

  store i8 %386, i8* %50, align 1, !tbaa !1271

  store i8 %387, i8* %44, align 1, !tbaa !1271

  br label %388



; <label>:388:                                    ; preds = %384, %382

  %389 = phi i8 [ %385, %384 ], [ 0, %382 ]

  store i8 0, i8* %58, align 1, !tbaa !1271

  store i8 0, i8* %57, align 1, !tbaa !1271

  store i8 0, i8* %51, align 1, !tbaa !1271

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %388, %374

  %390 = phi i8 [ %377, %374 ], [ %389, %388 ]

  %391 = phi i64 [ %376, %374 ], [ %363, %388 ]

  %392 = phi %struct.Memory* [ %375, %374 ], [ %2, %388 ]

  %393 = icmp eq i8 %390, 0

  %394 = select i1 %393, i64 17, i64 6

  %395 = add i64 %391, %394

  br i1 %393, label %block_402227, label %block_40221c



block_402309:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %396 = add i64 %235, 7

  %397 = inttoptr i64 %236 to i32*

  store i32 0, i32* %397

  %398 = add i64 %227, -40

  %399 = add i64 %227, -16

  %400 = add i64 %227, -24

  br label %block_402310



block_402231:                                     ; preds = %block_402227

  %401 = add i64 %341, -44

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = add i32 %403, -1

  %405 = icmp eq i32 %403, 0

  %406 = zext i1 %405 to i8

  store i8 %406, i8* %44, align 1, !tbaa !1244

  %407 = and i32 %404, 255

  %408 = tail call i32 @llvm.ctpop.i32(i32 %407) #9

  %409 = trunc i32 %408 to i8

  %410 = and i8 %409, 1

  %411 = xor i8 %410, 1

  store i8 %411, i8* %50, align 1, !tbaa !1258

  %412 = xor i32 %404, %403

  %413 = lshr i32 %412, 4

  %414 = trunc i32 %413 to i8

  %415 = and i8 %414, 1

  store i8 %415, i8* %51, align 1, !tbaa !1262

  %416 = icmp eq i32 %404, 0

  %417 = zext i1 %416 to i8

  store i8 %417, i8* %54, align 1, !tbaa !1259

  %418 = lshr i32 %404, 31

  %419 = trunc i32 %418 to i8

  store i8 %419, i8* %57, align 1, !tbaa !1260

  %420 = lshr i32 %403, 31

  %421 = xor i32 %418, %420

  %422 = add nuw nsw i32 %421, %420

  %423 = icmp eq i32 %422, 2

  %424 = zext i1 %423 to i8

  store i8 %424, i8* %58, align 1, !tbaa !1261

  %425 = select i1 %416, i64 184, i64 10

  %426 = add i64 %348, %425

  br i1 %416, label %block_4022e9, label %block_40223b



block_402288:                                     ; preds = %block_402281, %block_402294

  %427 = phi i64 [ %451, %block_402281 ], [ %321, %block_402294 ]

  %428 = phi %struct.Memory* [ %449, %block_402281 ], [ %428, %block_402294 ]

  %429 = inttoptr i64 %450 to i32*

  %430 = load i32, i32* %429

  %431 = inttoptr i64 %453 to i32*

  %432 = load i32, i32* %431

  %433 = sub i32 %430, %432

  %434 = lshr i32 %433, 31

  %435 = trunc i32 %434 to i8

  %436 = lshr i32 %430, 31

  %437 = lshr i32 %432, 31

  %438 = xor i32 %437, %436

  %439 = xor i32 %434, %436

  %440 = add nuw nsw i32 %439, %438

  %441 = icmp eq i32 %440, 2

  %442 = icmp ne i8 %435, 0

  %443 = xor i1 %442, %441

  %444 = select i1 %443, i64 12, i64 92

  %445 = add i64 %427, %444

  br i1 %443, label %block_402294, label %block_4022e4



block_402222:                                     ; preds = %block_40221c

  br label %block_40247b.sink.split



block_402205:                                     ; preds = %block_4021e0

  br label %block_40247b.sink.split



block_402369:                                     ; preds = %block_40235a

  %446 = add i64 %169, 5

  br label %block_40236e



block_402281:                                     ; preds = %block_402265, %block_40226f

  %447 = phi i64 [ %115, %block_402265 ], [ %91, %block_40226f ]

  %448 = phi i64 [ %105, %block_402265 ], [ %89, %block_40226f ]

  %449 = phi %struct.Memory* [ %106, %block_402265 ], [ %106, %block_40226f ]

  %450 = add i64 %448, -48

  %451 = add i64 %447, 7

  %452 = inttoptr i64 %450 to i32*

  store i32 0, i32* %452

  %453 = add i64 %448, -4

  %454 = add i64 %448, -40

  %455 = add i64 %448, -56

  %456 = add i64 %448, -16

  %457 = add i64 %448, -24

  %458 = add i64 %448, -52

  %459 = add i64 %448, -28

  %460 = add i64 %448, -44

  br label %block_402288



block_402380:                                     ; preds = %block_402374

  %461 = inttoptr i64 %95 to i64*

  %462 = load i64, i64* %461

  %463 = sext i32 %67 to i64

  %464 = shl nsw i64 %463, 3

  %465 = add i64 %464, %462

  %466 = inttoptr i64 %465 to double*

  %467 = load double, double* %466

  %468 = inttoptr i64 %94 to double*

  %469 = load double, double* %468

  %470 = inttoptr i64 %93 to i64*

  %471 = load i64, i64* %470

  %472 = add i64 %464, %471

  %473 = inttoptr i64 %472 to double*

  %474 = load double, double* %473

  %475 = fmul double %469, %474

  %476 = fadd double %467, %475

  %477 = inttoptr i64 %465 to double*

  store double %476, double* %477

  %478 = inttoptr i64 %95 to i64*

  %479 = load i64, i64* %478

  %480 = inttoptr i64 %236 to i32*

  %481 = load i32, i32* %480

  %482 = add i32 %481, 1

  %483 = sext i32 %482 to i64

  %484 = shl nsw i64 %483, 3

  %485 = add i64 %479, %484

  %486 = inttoptr i64 %485 to double*

  %487 = load double, double* %486

  %488 = inttoptr i64 %94 to double*

  %489 = load double, double* %488

  %490 = inttoptr i64 %93 to i64*

  %491 = load i64, i64* %490

  %492 = add i64 %491, %484

  %493 = inttoptr i64 %492 to double*

  %494 = load double, double* %493

  %495 = fmul double %489, %494

  %496 = fadd double %487, %495

  %497 = inttoptr i64 %485 to double*

  store double %496, double* %497

  %498 = inttoptr i64 %95 to i64*

  %499 = load i64, i64* %498

  %500 = inttoptr i64 %236 to i32*

  %501 = load i32, i32* %500

  %502 = add i32 %501, 2

  %503 = sext i32 %502 to i64

  %504 = shl nsw i64 %503, 3

  %505 = add i64 %499, %504

  %506 = inttoptr i64 %505 to double*

  %507 = load double, double* %506

  %508 = inttoptr i64 %94 to double*

  %509 = load double, double* %508

  %510 = inttoptr i64 %93 to i64*

  %511 = load i64, i64* %510

  %512 = add i64 %511, %504

  %513 = inttoptr i64 %512 to double*

  %514 = load double, double* %513

  %515 = fmul double %509, %514

  %516 = fadd double %507, %515

  %517 = inttoptr i64 %505 to double*

  store double %516, double* %517

  %518 = inttoptr i64 %95 to i64*

  %519 = load i64, i64* %518

  %520 = inttoptr i64 %236 to i32*

  %521 = load i32, i32* %520

  %522 = add i32 %521, 3

  %523 = zext i32 %522 to i64

  %524 = sext i32 %522 to i64

  %525 = shl nsw i64 %524, 3

  %526 = add i64 %519, %525

  %527 = inttoptr i64 %526 to double*

  %528 = load double, double* %527

  store double 0.000000e+00, double* %99, align 1, !tbaa !1268

  %529 = inttoptr i64 %94 to double*

  %530 = load double, double* %529

  %531 = inttoptr i64 %93 to i64*

  %532 = load i64, i64* %531

  %533 = add i64 %532, %525

  %534 = inttoptr i64 %533 to double*

  %535 = load double, double* %534

  %536 = fmul double %530, %535

  store double %536, double* %360, align 1, !tbaa !1268

  store i64 0, i64* %361, align 1, !tbaa !1268

  %537 = fadd double %528, %536

  store double %537, double* %26, align 1, !tbaa !1268

  store i64 0, i64* %350, align 1, !tbaa !1268

  store i64 %523, i64* %12, align 8, !tbaa !1240

  store i64 %524, i64* %11, align 8, !tbaa !1240

  %538 = inttoptr i64 %526 to double*

  store double %537, double* %538

  %539 = inttoptr i64 %236 to i32*

  %540 = load i32, i32* %539

  %541 = add i32 %540, 4

  %542 = inttoptr i64 %236 to i32*

  store i32 %541, i32* %542

  %543 = add i64 %82, -12

  br label %block_402374

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401530_dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401530:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %11 = bitcast %union.anon* %10 to i32*

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0

  %13 = bitcast %union.anon* %12 to i32*

  %14 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %16 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %17 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %24 = load i64, i64* %20, align 8

  %25 = load i64, i64* %19, align 8, !tbaa !1240

  %26 = add i64 %25, -8

  %27 = inttoptr i64 %26 to i64*

  store i64 %24, i64* %27

  store i64 %26, i64* %20, align 8, !tbaa !1240

  %28 = add i64 %25, -152

  store i64 %28, i64* %19, align 8, !tbaa !1240

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %35 = add i64 %25, 8

  %36 = inttoptr i64 %35 to i32*

  %37 = load i32, i32* %36

  %38 = add i64 %25, -16

  %39 = load i64, i64* %18, align 8

  %40 = inttoptr i64 %38 to i64*

  store i64 %39, i64* %40

  %41 = add i64 %25, -20

  %42 = load i32, i32* %11, align 4

  %43 = inttoptr i64 %41 to i32*

  store i32 %42, i32* %43

  %44 = add i64 %25, -24

  %45 = load i32, i32* %9, align 4

  %46 = inttoptr i64 %44 to i32*

  store i32 %45, i32* %46

  %47 = add i64 %25, -32

  %48 = load i64, i64* %15, align 8

  %49 = inttoptr i64 %47 to i64*

  store i64 %48, i64* %49

  %50 = add i64 %25, -40

  %51 = load i64, i64* %21, align 8

  %52 = inttoptr i64 %50 to i64*

  store i64 %51, i64* %52

  %53 = add i64 %25, -44

  %54 = load i32, i32* %13, align 4

  %55 = inttoptr i64 %53 to i32*

  store i32 %54, i32* %55

  %56 = inttoptr i64 %35 to i32*

  %57 = load i32, i32* %56

  %58 = icmp eq i32 %57, 0

  %59 = add i64 %25, -76

  %60 = inttoptr i64 %59 to i32*

  store i32 %37, i32* %60

  %61 = select i1 %58, i64 930, i64 49

  %62 = add i64 %61, %1

  %63 = inttoptr i64 %44 to i32*

  %64 = load i32, i32* %63

  %65 = add i32 %64, -1

  %66 = load i64, i64* %20, align 8

  %67 = add i64 %66, -64

  %68 = inttoptr i64 %67 to i32*

  store i32 %65, i32* %68

  %69 = add i64 %66, -36

  %70 = inttoptr i64 %69 to i32*

  %71 = load i32, i32* %70

  %72 = icmp eq i32 %71, 0

  %73 = select i1 %72, i64 19, i64 445

  %74 = add i64 %62, %73

  br i1 %58, label %block_4018d2, label %block_401561



block_40164f:                                     ; preds = %block_401585

  %75 = add i64 %1219, 5

  br label %block_401654



block_401574:                                     ; preds = %block_401561

  %76 = inttoptr i64 %67 to i32*

  %77 = load i32, i32* %76

  %78 = add i32 %77, -1

  %79 = lshr i32 %78, 31

  %80 = trunc i32 %79 to i8

  %81 = lshr i32 %77, 31

  %82 = xor i32 %79, %81

  %83 = add nuw nsw i32 %82, %81

  %84 = icmp eq i32 %83, 2

  %85 = icmp ne i8 %80, 0

  %86 = xor i1 %85, %84

  %87 = select i1 %86, i64 224, i64 10

  %88 = add i64 %74, %87

  br i1 %86, label %block_401574.block_401654_crit_edge, label %block_40157e



block_401574.block_401654_crit_edge:              ; preds = %block_401574

  %89 = bitcast [32 x %union.VectorReg]* %22 to double*

  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %91 = bitcast i64* %90 to double*

  br label %block_401654



block_4018ef:                                     ; preds = %block_4018e5

  %92 = add i64 %66, -52

  %93 = add i64 %208, 7

  %94 = inttoptr i64 %92 to i32*

  store i32 0, i32* %94

  %95 = bitcast [32 x %union.VectorReg]* %22 to double*

  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %97 = bitcast i64* %96 to double*

  br label %block_4018f6



block_401872:                                     ; preds = %block_4017cf

  %98 = inttoptr i64 %927 to i64*

  %99 = load i64, i64* %98

  %100 = sext i32 %950 to i64

  %101 = shl nsw i64 %100, 3

  %102 = add i64 %101, %99

  %103 = inttoptr i64 %102 to double*

  %104 = load double, double* %103

  %105 = add i64 %920, -48

  %106 = inttoptr i64 %105 to double*

  store double %104, double* %106

  %107 = inttoptr i64 %927 to i64*

  %108 = load i64, i64* %107

  %109 = inttoptr i64 %930 to i32*

  %110 = load i32, i32* %109

  %111 = sext i32 %110 to i64

  %112 = shl nsw i64 %111, 3

  %113 = add i64 %112, %108

  %114 = inttoptr i64 %113 to double*

  %115 = load double, double* %114

  %116 = inttoptr i64 %947 to i32*

  %117 = load i32, i32* %116

  %118 = sext i32 %117 to i64

  %119 = shl nsw i64 %118, 3

  %120 = add i64 %119, %108

  %121 = inttoptr i64 %120 to double*

  store double %115, double* %121

  %122 = inttoptr i64 %105 to double*

  %123 = load double, double* %122

  store double %123, double* %960, align 1, !tbaa !1268

  store double 0.000000e+00, double* %962, align 1, !tbaa !1268

  %124 = inttoptr i64 %927 to i64*

  %125 = load i64, i64* %124

  %126 = inttoptr i64 %930 to i32*

  %127 = load i32, i32* %126

  %128 = sext i32 %127 to i64

  store i64 %128, i64* %15, align 8, !tbaa !1240

  %129 = shl nsw i64 %128, 3

  %130 = add i64 %129, %125

  %131 = add i64 %956, 62

  %132 = inttoptr i64 %130 to double*

  store double %123, double* %132

  br label %block_4018b0



block_4015e9:                                     ; preds = %block_401591, %block_4015bd

  %133 = phi i64 [ %1073, %block_401591 ], [ %422, %block_4015bd ]

  %134 = phi %struct.Memory* [ %1200, %block_401591 ], [ %1200, %block_4015bd ]

  store i64 1, i64* %14, align 8, !tbaa !1240

  %135 = add i64 %1199, -16

  %136 = inttoptr i64 %135 to i32*

  %137 = load i32, i32* %136

  %138 = inttoptr i64 %1201 to i32*

  %139 = load i32, i32* %138

  %140 = add i32 %139, 1

  %141 = sub i32 %137, %140

  %142 = zext i32 %141 to i64

  store i64 %142, i64* %15, align 8, !tbaa !1240

  %143 = inttoptr i64 %1064 to double*

  %144 = load double, double* %143

  store double %144, double* %658, align 1, !tbaa !1268

  store double 0.000000e+00, double* %660, align 1, !tbaa !1268

  %145 = add i64 %1199, -8

  %146 = inttoptr i64 %145 to i64*

  %147 = load i64, i64* %146

  store i64 %147, i64* %17, align 8, !tbaa !1240

  %148 = add i64 %1199, -12

  %149 = inttoptr i64 %148 to i32*

  %150 = load i32, i32* %149

  %151 = load i64, i64* %20, align 8

  %152 = add i64 %151, -52

  %153 = inttoptr i64 %152 to i32*

  %154 = load i32, i32* %153

  %155 = mul i32 %154, %150

  %156 = add i32 %154, %155

  %157 = add i32 %156, 1

  %158 = sext i32 %157 to i64

  %159 = shl nsw i64 %158, 3

  %160 = load i64, i64* %17, align 8

  %161 = add i64 %159, %160

  store i64 %161, i64* %17, align 8, !tbaa !1240

  %162 = load i64, i64* %20, align 8

  %163 = add i64 %162, -32

  %164 = inttoptr i64 %163 to i64*

  %165 = load i64, i64* %164

  %166 = add i64 %162, -52

  %167 = inttoptr i64 %166 to i32*

  %168 = load i32, i32* %167

  %169 = add i32 %168, 1

  %170 = sext i32 %169 to i64

  %171 = shl nsw i64 %170, 3

  %172 = add i64 %171, %165

  %173 = load i64, i64* %20, align 8

  %174 = add i64 %173, -80

  %175 = inttoptr i64 %174 to i64*

  store i64 %172, i64* %175

  %176 = load i32, i32* %7, align 4

  %177 = zext i32 %176 to i64

  store i64 %177, i64* %18, align 8, !tbaa !1240

  %178 = load i32, i32* %5, align 4

  %179 = zext i32 %178 to i64

  store i64 %179, i64* %16, align 8, !tbaa !1240

  %180 = inttoptr i64 %174 to i64*

  %181 = load i64, i64* %180

  store i64 %181, i64* %15, align 8, !tbaa !1240

  store i64 %179, i64* %21, align 8, !tbaa !1240

  %182 = add i64 %133, 2231

  %183 = add i64 %133, 88

  %184 = load i64, i64* %19, align 8, !tbaa !1240

  %185 = add i64 %184, -8

  %186 = inttoptr i64 %185 to i64*

  store i64 %183, i64* %186

  store i64 %185, i64* %19, align 8, !tbaa !1240

  %187 = tail call %struct.Memory* @sub_401ea0_daxpy_r(%struct.State* nonnull %0, i64 %182, %struct.Memory* %134)

  %188 = load i64, i64* %20, align 8

  %189 = add i64 %188, -52

  %190 = load i64, i64* %3, align 8

  %191 = inttoptr i64 %189 to i32*

  %192 = load i32, i32* %191

  %193 = add i32 %192, 1

  %194 = inttoptr i64 %189 to i32*

  store i32 %193, i32* %194

  %195 = add i64 %190, -188

  br label %block_401585



block_4018e5:                                     ; preds = %block_4018d2

  %196 = inttoptr i64 %67 to i32*

  %197 = load i32, i32* %196

  %198 = add i32 %197, -1

  %199 = lshr i32 %198, 31

  %200 = trunc i32 %199 to i8

  %201 = lshr i32 %197, 31

  %202 = xor i32 %199, %201

  %203 = add nuw nsw i32 %202, %201

  %204 = icmp eq i32 %203, 2

  %205 = icmp ne i8 %200, 0

  %206 = xor i1 %205, %204

  %207 = select i1 %206, i64 224, i64 10

  %208 = add i64 %74, %207

  br i1 %206, label %block_4018e5.block_4019c5_crit_edge, label %block_4018ef



block_4018e5.block_4019c5_crit_edge:              ; preds = %block_4018e5

  %209 = bitcast [32 x %union.VectorReg]* %22 to double*

  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %211 = bitcast i64* %210 to double*

  br label %block_4019c5



block_401561:                                     ; preds = %block_401530

  br i1 %72, label %block_401574, label %block_40171e



block_40165b:                                     ; preds = %block_401667, %block_401654

  %212 = phi i64 [ %399, %block_401654 ], [ %522, %block_401667 ]

  %213 = phi i64 [ %396, %block_401654 ], [ %515, %block_401667 ]

  %214 = phi %struct.Memory* [ %397, %block_401654 ], [ %514, %block_401667 ]

  %215 = add i64 %213, -56

  %216 = inttoptr i64 %215 to i32*

  %217 = load i32, i32* %216

  %218 = zext i32 %217 to i64

  store i64 %218, i64* %14, align 8, !tbaa !1240

  %219 = add i64 %213, -16

  %220 = inttoptr i64 %219 to i32*

  %221 = load i32, i32* %220

  %222 = sub i32 %217, %221

  %223 = lshr i32 %222, 31

  %224 = trunc i32 %223 to i8

  %225 = lshr i32 %217, 31

  %226 = lshr i32 %221, 31

  %227 = xor i32 %226, %225

  %228 = xor i32 %223, %225

  %229 = add nuw nsw i32 %228, %227

  %230 = icmp eq i32 %229, 2

  %231 = icmp ne i8 %224, 0

  %232 = xor i1 %231, %230

  %233 = select i1 %232, i64 12, i64 190

  %234 = add i64 %212, %233

  br i1 %232, label %block_401667, label %block_401c49.loopexit103



block_40195a:                                     ; preds = %block_401902, %block_40192e

  %235 = phi i64 [ %1249, %block_401902 ], [ %681, %block_40192e ]

  %236 = phi %struct.Memory* [ %827, %block_401902 ], [ %827, %block_40192e ]

  store i64 1, i64* %14, align 8, !tbaa !1240

  %237 = add i64 %826, -16

  %238 = inttoptr i64 %237 to i32*

  %239 = load i32, i32* %238

  %240 = inttoptr i64 %828 to i32*

  %241 = load i32, i32* %240

  %242 = add i32 %241, 1

  %243 = sub i32 %239, %242

  %244 = zext i32 %243 to i64

  store i64 %244, i64* %15, align 8, !tbaa !1240

  %245 = inttoptr i64 %1240 to double*

  %246 = load double, double* %245

  store double %246, double* %95, align 1, !tbaa !1268

  store double 0.000000e+00, double* %97, align 1, !tbaa !1268

  %247 = add i64 %826, -8

  %248 = inttoptr i64 %247 to i64*

  %249 = load i64, i64* %248

  store i64 %249, i64* %17, align 8, !tbaa !1240

  %250 = add i64 %826, -12

  %251 = inttoptr i64 %250 to i32*

  %252 = load i32, i32* %251

  %253 = load i64, i64* %20, align 8

  %254 = add i64 %253, -52

  %255 = inttoptr i64 %254 to i32*

  %256 = load i32, i32* %255

  %257 = mul i32 %256, %252

  %258 = add i32 %256, %257

  %259 = add i32 %258, 1

  %260 = sext i32 %259 to i64

  %261 = shl nsw i64 %260, 3

  %262 = load i64, i64* %17, align 8

  %263 = add i64 %261, %262

  store i64 %263, i64* %17, align 8, !tbaa !1240

  %264 = load i64, i64* %20, align 8

  %265 = add i64 %264, -32

  %266 = inttoptr i64 %265 to i64*

  %267 = load i64, i64* %266

  %268 = add i64 %264, -52

  %269 = inttoptr i64 %268 to i32*

  %270 = load i32, i32* %269

  %271 = add i32 %270, 1

  %272 = sext i32 %271 to i64

  %273 = shl nsw i64 %272, 3

  %274 = add i64 %273, %267

  %275 = load i64, i64* %20, align 8

  %276 = add i64 %275, -112

  %277 = inttoptr i64 %276 to i64*

  store i64 %274, i64* %277

  %278 = load i32, i32* %7, align 4

  %279 = zext i32 %278 to i64

  store i64 %279, i64* %18, align 8, !tbaa !1240

  %280 = load i32, i32* %5, align 4

  %281 = zext i32 %280 to i64

  store i64 %281, i64* %16, align 8, !tbaa !1240

  %282 = inttoptr i64 %276 to i64*

  %283 = load i64, i64* %282

  store i64 %283, i64* %15, align 8, !tbaa !1240

  store i64 %281, i64* %21, align 8, !tbaa !1240

  %284 = add i64 %235, 2182

  %285 = add i64 %235, 88

  %286 = load i64, i64* %19, align 8, !tbaa !1240

  %287 = add i64 %286, -8

  %288 = inttoptr i64 %287 to i64*

  store i64 %285, i64* %288

  store i64 %287, i64* %19, align 8, !tbaa !1240

  %289 = tail call %struct.Memory* @sub_4021e0_daxpy_ur(%struct.State* nonnull %0, i64 %284, %struct.Memory* %236)

  %290 = load i64, i64* %20, align 8

  %291 = add i64 %290, -52

  %292 = load i64, i64* %3, align 8

  %293 = inttoptr i64 %291 to i32*

  %294 = load i32, i32* %293

  %295 = add i32 %294, 1

  %296 = inttoptr i64 %291 to i32*

  store i32 %295, i32* %296

  %297 = add i64 %292, -188

  br label %block_4018f6



block_4019d8:                                     ; preds = %block_4019cc

  store i64 1, i64* %14, align 8, !tbaa !1240

  store i64 -9223372036854775808, i64* %15, align 8, !tbaa !1240

  %298 = add i32 %807, 1

  %299 = sub i32 %811, %298

  %300 = add i64 %803, -52

  %301 = inttoptr i64 %300 to i32*

  store i32 %299, i32* %301

  %302 = add i64 %803, -32

  %303 = inttoptr i64 %302 to i64*

  %304 = load i64, i64* %303

  %305 = inttoptr i64 %300 to i32*

  %306 = load i32, i32* %305

  %307 = sext i32 %306 to i64

  %308 = shl nsw i64 %307, 3

  %309 = add i64 %308, %304

  %310 = inttoptr i64 %309 to double*

  %311 = load double, double* %310

  %312 = load i64, i64* %20, align 8

  %313 = add i64 %312, -8

  %314 = inttoptr i64 %313 to i64*

  %315 = load i64, i64* %314

  %316 = add i64 %312, -12

  %317 = inttoptr i64 %316 to i32*

  %318 = load i32, i32* %317

  %319 = add i64 %312, -52

  %320 = inttoptr i64 %319 to i32*

  %321 = load i32, i32* %320

  %322 = sext i32 %321 to i64

  %323 = mul i32 %321, %318

  %324 = add i32 %321, %323

  %325 = sext i32 %324 to i64

  %326 = shl nsw i64 %325, 3

  %327 = add i64 %315, %326

  %328 = inttoptr i64 %327 to double*

  %329 = load double, double* %328

  %330 = fdiv double %311, %329

  %331 = add i64 %312, -32

  %332 = inttoptr i64 %331 to i64*

  %333 = load i64, i64* %332

  %334 = shl nsw i64 %322, 3

  %335 = add i64 %334, %333

  %336 = inttoptr i64 %335 to double*

  store double %330, double* %336

  %337 = load i64, i64* %20, align 8

  %338 = add i64 %337, -32

  %339 = inttoptr i64 %338 to i64*

  %340 = load i64, i64* %339

  %341 = add i64 %337, -52

  %342 = inttoptr i64 %341 to i32*

  %343 = load i32, i32* %342

  %344 = sext i32 %343 to i64

  %345 = shl nsw i64 %344, 3

  %346 = add i64 %345, %340

  %347 = inttoptr i64 %346 to double*

  %348 = load double, double* %347

  %349 = bitcast double %348 to i64

  %350 = load i64, i64* %15, align 8

  %351 = xor i64 %350, %349

  store i64 %351, i64* %555, align 1, !tbaa !1240

  store i64 0, i64* %547, align 1, !tbaa !1240

  %352 = add i64 %337, -48

  %353 = bitcast i64 %351 to double

  %354 = inttoptr i64 %352 to double*

  store double %353, double* %354

  %355 = inttoptr i64 %341 to i32*

  %356 = load i32, i32* %355

  %357 = zext i32 %356 to i64

  store i64 %357, i64* %18, align 8, !tbaa !1240

  %358 = inttoptr i64 %352 to double*

  %359 = load double, double* %358

  store double %359, double* %548, align 1, !tbaa !1268

  store double 0.000000e+00, double* %546, align 1, !tbaa !1268

  %360 = add i64 %337, -8

  %361 = inttoptr i64 %360 to i64*

  %362 = load i64, i64* %361

  %363 = add i64 %337, -12

  %364 = inttoptr i64 %363 to i32*

  %365 = load i32, i32* %364

  %366 = sext i32 %365 to i64

  %367 = sext i32 %356 to i64

  %368 = mul nsw i64 %367, %366

  %369 = shl i64 %368, 32

  %370 = ashr exact i64 %369, 29

  %371 = add i64 %370, %362

  %372 = load i64, i64* %20, align 8

  %373 = add i64 %372, -32

  %374 = inttoptr i64 %373 to i64*

  %375 = load i64, i64* %374

  store i64 %371, i64* %17, align 8, !tbaa !1240

  %376 = load i32, i32* %5, align 4

  %377 = zext i32 %376 to i64

  store i64 %377, i64* %16, align 8, !tbaa !1240

  store i64 %375, i64* %15, align 8, !tbaa !1240

  store i64 %377, i64* %21, align 8, !tbaa !1240

  %378 = add i64 %824, 2056

  %379 = add i64 %824, 164

  %380 = load i64, i64* %19, align 8, !tbaa !1240

  %381 = add i64 %380, -8

  %382 = inttoptr i64 %381 to i64*

  store i64 %379, i64* %382

  store i64 %381, i64* %19, align 8, !tbaa !1240

  %383 = tail call %struct.Memory* @sub_4021e0_daxpy_ur(%struct.State* nonnull %0, i64 %378, %struct.Memory* %804)

  %384 = load i64, i64* %20, align 8

  %385 = add i64 %384, -56

  %386 = load i64, i64* %3, align 8

  %387 = inttoptr i64 %385 to i32*

  %388 = load i32, i32* %387

  %389 = add i32 %388, 1

  %390 = inttoptr i64 %385 to i32*

  store i32 %389, i32* %390

  %391 = add i64 %386, -176

  br label %block_4019cc



block_401654:                                     ; preds = %block_401574.block_401654_crit_edge, %block_40164f

  %392 = phi double* [ %91, %block_401574.block_401654_crit_edge ], [ %660, %block_40164f ]

  %393 = phi i64* [ %90, %block_401574.block_401654_crit_edge ], [ %659, %block_40164f ]

  %394 = phi double* [ %89, %block_401574.block_401654_crit_edge ], [ %658, %block_40164f ]

  %395 = phi i64 [ %88, %block_401574.block_401654_crit_edge ], [ %75, %block_40164f ]

  %396 = phi i64 [ %66, %block_401574.block_401654_crit_edge ], [ %1199, %block_40164f ]

  %397 = phi %struct.Memory* [ %2, %block_401574.block_401654_crit_edge ], [ %1200, %block_40164f ]

  %398 = add i64 %396, -56

  %399 = add i64 %395, 7

  %400 = inttoptr i64 %398 to i32*

  store i32 0, i32* %400

  %401 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  br label %block_40165b



block_4018d2:                                     ; preds = %block_401530

  br i1 %72, label %block_4018e5, label %block_401a8f



block_4018c3:                                     ; preds = %block_4017c3

  br label %block_401c49



block_4015bd:                                     ; preds = %block_401591

  %402 = inttoptr i64 %1054 to i64*

  %403 = load i64, i64* %402

  %404 = sext i32 %1069 to i64

  %405 = shl nsw i64 %404, 3

  %406 = add i64 %405, %403

  %407 = inttoptr i64 %406 to double*

  %408 = load double, double* %407

  %409 = sext i32 %1067 to i64

  %410 = shl nsw i64 %409, 3

  %411 = add i64 %410, %403

  %412 = inttoptr i64 %411 to double*

  store double %408, double* %412

  %413 = inttoptr i64 %1064 to double*

  %414 = load double, double* %413

  store double %414, double* %658, align 1, !tbaa !1268

  store double 0.000000e+00, double* %660, align 1, !tbaa !1268

  %415 = inttoptr i64 %1054 to i64*

  %416 = load i64, i64* %415

  %417 = inttoptr i64 %1201 to i32*

  %418 = load i32, i32* %417

  %419 = sext i32 %418 to i64

  %420 = shl nsw i64 %419, 3

  %421 = add i64 %420, %416

  %422 = add i64 %1073, 44

  %423 = inttoptr i64 %421 to double*

  store double %414, double* %423

  br label %block_4015e9



block_4017bc:                                     ; preds = %block_4017b2

  %424 = add i64 %689, -56

  %425 = add i64 %569, 7

  %426 = inttoptr i64 %424 to i32*

  store i32 1, i32* %426

  %427 = bitcast %union.VectorReg* %23 to double*

  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  br label %block_4017c3



block_401c3a:                                     ; preds = %block_401b34

  br label %block_401c49



block_401667:                                     ; preds = %block_40165b

  store i64 1, i64* %14, align 8, !tbaa !1240

  store i64 -9223372036854775808, i64* %15, align 8, !tbaa !1240

  %429 = add i32 %217, 1

  %430 = sub i32 %221, %429

  %431 = add i64 %213, -52

  %432 = inttoptr i64 %431 to i32*

  store i32 %430, i32* %432

  %433 = add i64 %213, -32

  %434 = inttoptr i64 %433 to i64*

  %435 = load i64, i64* %434

  %436 = inttoptr i64 %431 to i32*

  %437 = load i32, i32* %436

  %438 = sext i32 %437 to i64

  %439 = shl nsw i64 %438, 3

  %440 = add i64 %439, %435

  %441 = inttoptr i64 %440 to double*

  %442 = load double, double* %441

  %443 = load i64, i64* %20, align 8

  %444 = add i64 %443, -8

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %443, -12

  %448 = inttoptr i64 %447 to i32*

  %449 = load i32, i32* %448

  %450 = add i64 %443, -52

  %451 = inttoptr i64 %450 to i32*

  %452 = load i32, i32* %451

  %453 = sext i32 %452 to i64

  %454 = mul i32 %452, %449

  %455 = add i32 %452, %454

  %456 = sext i32 %455 to i64

  %457 = shl nsw i64 %456, 3

  %458 = add i64 %446, %457

  %459 = inttoptr i64 %458 to double*

  %460 = load double, double* %459

  %461 = fdiv double %442, %460

  %462 = add i64 %443, -32

  %463 = inttoptr i64 %462 to i64*

  %464 = load i64, i64* %463

  %465 = shl nsw i64 %453, 3

  %466 = add i64 %465, %464

  %467 = inttoptr i64 %466 to double*

  store double %461, double* %467

  %468 = load i64, i64* %20, align 8

  %469 = add i64 %468, -32

  %470 = inttoptr i64 %469 to i64*

  %471 = load i64, i64* %470

  %472 = add i64 %468, -52

  %473 = inttoptr i64 %472 to i32*

  %474 = load i32, i32* %473

  %475 = sext i32 %474 to i64

  %476 = shl nsw i64 %475, 3

  %477 = add i64 %476, %471

  %478 = inttoptr i64 %477 to double*

  %479 = load double, double* %478

  %480 = bitcast double %479 to i64

  %481 = load i64, i64* %15, align 8

  %482 = xor i64 %481, %480

  store i64 %482, i64* %401, align 1, !tbaa !1240

  store i64 0, i64* %393, align 1, !tbaa !1240

  %483 = add i64 %468, -48

  %484 = bitcast i64 %482 to double

  %485 = inttoptr i64 %483 to double*

  store double %484, double* %485

  %486 = inttoptr i64 %472 to i32*

  %487 = load i32, i32* %486

  %488 = zext i32 %487 to i64

  store i64 %488, i64* %18, align 8, !tbaa !1240

  %489 = inttoptr i64 %483 to double*

  %490 = load double, double* %489

  store double %490, double* %394, align 1, !tbaa !1268

  store double 0.000000e+00, double* %392, align 1, !tbaa !1268

  %491 = add i64 %468, -8

  %492 = inttoptr i64 %491 to i64*

  %493 = load i64, i64* %492

  %494 = add i64 %468, -12

  %495 = inttoptr i64 %494 to i32*

  %496 = load i32, i32* %495

  %497 = sext i32 %496 to i64

  %498 = sext i32 %487 to i64

  %499 = mul nsw i64 %498, %497

  %500 = shl i64 %499, 32

  %501 = ashr exact i64 %500, 29

  %502 = add i64 %501, %493

  %503 = load i64, i64* %20, align 8

  %504 = add i64 %503, -32

  %505 = inttoptr i64 %504 to i64*

  %506 = load i64, i64* %505

  store i64 %502, i64* %17, align 8, !tbaa !1240

  %507 = load i32, i32* %5, align 4

  %508 = zext i32 %507 to i64

  store i64 %508, i64* %16, align 8, !tbaa !1240

  store i64 %506, i64* %15, align 8, !tbaa !1240

  store i64 %508, i64* %21, align 8, !tbaa !1240

  %509 = add i64 %234, 2105

  %510 = add i64 %234, 164

  %511 = load i64, i64* %19, align 8, !tbaa !1240

  %512 = add i64 %511, -8

  %513 = inttoptr i64 %512 to i64*

  store i64 %510, i64* %513

  store i64 %512, i64* %19, align 8, !tbaa !1240

  %514 = tail call %struct.Memory* @sub_401ea0_daxpy_r(%struct.State* nonnull %0, i64 %509, %struct.Memory* %214)

  %515 = load i64, i64* %20, align 8

  %516 = add i64 %515, -56

  %517 = load i64, i64* %3, align 8

  %518 = inttoptr i64 %516 to i32*

  %519 = load i32, i32* %518

  %520 = add i32 %519, 1

  %521 = inttoptr i64 %516 to i32*

  store i32 %520, i32* %521

  %522 = add i64 %517, -176

  br label %block_40165b



block_401b34:                                     ; preds = %block_401c27, %block_401b2d

  %523 = phi i64 [ %684, %block_401b2d ], [ %1197, %block_401c27 ]

  %524 = phi i64 [ %964, %block_401b2d ], [ %1147, %block_401c27 ]

  %525 = phi %struct.Memory* [ %965, %block_401b2d ], [ %1191, %block_401c27 ]

  %526 = add i64 %524, -56

  %527 = inttoptr i64 %526 to i32*

  %528 = load i32, i32* %527

  %529 = zext i32 %528 to i64

  store i64 %529, i64* %14, align 8, !tbaa !1240

  %530 = add i64 %524, -64

  %531 = inttoptr i64 %530 to i32*

  %532 = load i32, i32* %531

  %533 = sub i32 %528, %532

  %534 = lshr i32 %533, 31

  %535 = trunc i32 %534 to i8

  %536 = lshr i32 %528, 31

  %537 = lshr i32 %532, 31

  %538 = xor i32 %537, %536

  %539 = xor i32 %534, %536

  %540 = add nuw nsw i32 %539, %538

  %541 = icmp eq i32 %540, 2

  %542 = icmp ne i8 %535, 0

  %543 = xor i1 %542, %541

  %544 = select i1 %543, i64 12, i64 262

  %545 = add i64 %523, %544

  br i1 %543, label %block_401b40, label %block_401c3a



block_4019c5:                                     ; preds = %block_4019c0, %block_4018e5.block_4019c5_crit_edge

  %546 = phi double* [ %211, %block_4018e5.block_4019c5_crit_edge ], [ %97, %block_4019c0 ]

  %547 = phi i64* [ %210, %block_4018e5.block_4019c5_crit_edge ], [ %96, %block_4019c0 ]

  %548 = phi double* [ %209, %block_4018e5.block_4019c5_crit_edge ], [ %95, %block_4019c0 ]

  %549 = phi i64 [ %208, %block_4018e5.block_4019c5_crit_edge ], [ %1281, %block_4019c0 ]

  %550 = phi i64 [ %66, %block_4018e5.block_4019c5_crit_edge ], [ %826, %block_4019c0 ]

  %551 = phi %struct.Memory* [ %2, %block_4018e5.block_4019c5_crit_edge ], [ %827, %block_4019c0 ]

  %552 = add i64 %550, -56

  %553 = add i64 %549, 7

  %554 = inttoptr i64 %552 to i32*

  store i32 0, i32* %554

  %555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  br label %block_4019cc



block_4017b2:                                     ; preds = %block_401725

  %556 = add i64 %689, -64

  %557 = inttoptr i64 %556 to i32*

  %558 = load i32, i32* %557

  %559 = add i32 %558, -1

  %560 = lshr i32 %559, 31

  %561 = trunc i32 %560 to i8

  %562 = lshr i32 %558, 31

  %563 = xor i32 %560, %562

  %564 = add nuw nsw i32 %563, %562

  %565 = icmp eq i32 %564, 2

  %566 = icmp ne i8 %561, 0

  %567 = xor i1 %566, %565

  %568 = select i1 %567, i64 278, i64 10

  %569 = add i64 %710, %568

  br i1 %567, label %block_401c49, label %block_4017bc



block_401731:                                     ; preds = %block_401725

  store i64 1, i64* %14, align 8, !tbaa !1240

  store i64 %694, i64* %18, align 8, !tbaa !1240

  %570 = add i64 %689, -8

  %571 = inttoptr i64 %570 to i64*

  %572 = load i64, i64* %571

  %573 = add i64 %689, -12

  %574 = inttoptr i64 %573 to i32*

  %575 = load i32, i32* %574

  %576 = sext i32 %575 to i64

  %577 = sext i32 %693 to i64

  %578 = mul nsw i64 %577, %576

  %579 = shl i64 %578, 32

  %580 = ashr exact i64 %579, 29

  %581 = add i64 %580, %572

  %582 = load i64, i64* %20, align 8

  %583 = add i64 %582, -32

  %584 = inttoptr i64 %583 to i64*

  %585 = load i64, i64* %584

  %586 = add i64 %582, -88

  %587 = inttoptr i64 %586 to i64*

  store i64 %585, i64* %587

  store i64 %581, i64* %17, align 8, !tbaa !1240

  %588 = load i32, i32* %5, align 4

  %589 = zext i32 %588 to i64

  store i64 %589, i64* %16, align 8, !tbaa !1240

  %590 = inttoptr i64 %586 to i64*

  %591 = load i64, i64* %590

  store i64 %591, i64* %15, align 8, !tbaa !1240

  store i64 %589, i64* %21, align 8, !tbaa !1240

  %592 = add i64 %710, 3407

  %593 = add i64 %710, 57

  %594 = load i64, i64* %19, align 8, !tbaa !1240

  %595 = add i64 %594, -8

  %596 = inttoptr i64 %595 to i64*

  store i64 %593, i64* %596

  store i64 %595, i64* %19, align 8, !tbaa !1240

  %597 = tail call %struct.Memory* @sub_402480_ddot_r(%struct.State* nonnull %0, i64 %592, %struct.Memory* %690)

  %598 = load i64, i64* %20, align 8

  %599 = add i64 %598, -48

  %600 = load i64, i64* %3, align 8

  %601 = load double, double* %960, align 1

  %602 = inttoptr i64 %599 to double*

  store double %601, double* %602

  %603 = add i64 %598, -32

  %604 = inttoptr i64 %603 to i64*

  %605 = load i64, i64* %604

  %606 = add i64 %598, -52

  %607 = inttoptr i64 %606 to i32*

  %608 = load i32, i32* %607

  %609 = sext i32 %608 to i64

  %610 = shl nsw i64 %609, 3

  %611 = add i64 %610, %605

  %612 = inttoptr i64 %611 to double*

  %613 = load double, double* %612

  %614 = inttoptr i64 %599 to double*

  %615 = load double, double* %614

  %616 = fsub double %613, %615

  %617 = add i64 %598, -8

  %618 = inttoptr i64 %617 to i64*

  %619 = load i64, i64* %618

  %620 = add i64 %598, -12

  %621 = inttoptr i64 %620 to i32*

  %622 = load i32, i32* %621

  %623 = mul i32 %608, %622

  %624 = add i32 %608, %623

  %625 = sext i32 %624 to i64

  %626 = shl nsw i64 %625, 3

  %627 = add i64 %619, %626

  %628 = inttoptr i64 %627 to double*

  %629 = load double, double* %628

  %630 = fdiv double %616, %629

  store double %630, double* %960, align 1, !tbaa !1268

  store i64 0, i64* %961, align 1, !tbaa !1268

  %631 = load i64, i64* %20, align 8

  %632 = add i64 %631, -32

  %633 = inttoptr i64 %632 to i64*

  %634 = load i64, i64* %633

  store i64 %634, i64* %15, align 8, !tbaa !1240

  %635 = add i64 %631, -52

  %636 = inttoptr i64 %635 to i32*

  %637 = load i32, i32* %636

  %638 = sext i32 %637 to i64

  store i64 %638, i64* %17, align 8, !tbaa !1240

  %639 = shl nsw i64 %638, 3

  %640 = add i64 %639, %634

  %641 = inttoptr i64 %640 to double*

  store double %630, double* %641

  %642 = inttoptr i64 %635 to i32*

  %643 = load i32, i32* %642

  %644 = add i32 %643, 1

  %645 = inttoptr i64 %635 to i32*

  store i32 %644, i32* %645

  %646 = add i64 %600, -69

  br label %block_401725



block_4018b0:                                     ; preds = %block_4017cf, %block_401872

  %647 = phi i64 [ %956, %block_4017cf ], [ %131, %block_401872 ]

  %648 = phi %struct.Memory* [ %919, %block_4017cf ], [ %919, %block_401872 ]

  %649 = add i64 %920, -56

  %650 = inttoptr i64 %649 to i32*

  %651 = load i32, i32* %650

  %652 = add i32 %651, 1

  %653 = inttoptr i64 %649 to i32*

  store i32 %652, i32* %653

  %654 = add i64 %647, -237

  br label %block_4017c3



block_40157e:                                     ; preds = %block_401574

  %655 = add i64 %66, -52

  %656 = add i64 %88, 7

  %657 = inttoptr i64 %655 to i32*

  store i32 0, i32* %657

  %658 = bitcast [32 x %union.VectorReg]* %22 to double*

  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %660 = bitcast i64* %659 to double*

  br label %block_401585



block_40192e:                                     ; preds = %block_401902

  %661 = inttoptr i64 %1230 to i64*

  %662 = load i64, i64* %661

  %663 = sext i32 %1245 to i64

  %664 = shl nsw i64 %663, 3

  %665 = add i64 %664, %662

  %666 = inttoptr i64 %665 to double*

  %667 = load double, double* %666

  %668 = sext i32 %1243 to i64

  %669 = shl nsw i64 %668, 3

  %670 = add i64 %669, %662

  %671 = inttoptr i64 %670 to double*

  store double %667, double* %671

  %672 = inttoptr i64 %1240 to double*

  %673 = load double, double* %672

  store double %673, double* %95, align 1, !tbaa !1268

  store double 0.000000e+00, double* %97, align 1, !tbaa !1268

  %674 = inttoptr i64 %1230 to i64*

  %675 = load i64, i64* %674

  %676 = inttoptr i64 %828 to i32*

  %677 = load i32, i32* %676

  %678 = sext i32 %677 to i64

  %679 = shl nsw i64 %678, 3

  %680 = add i64 %679, %675

  %681 = add i64 %1249, 44

  %682 = inttoptr i64 %680 to double*

  store double %673, double* %682

  br label %block_40195a



block_401b2d:                                     ; preds = %block_401b23

  %683 = add i64 %964, -56

  %684 = add i64 %724, 7

  %685 = inttoptr i64 %683 to i32*

  store i32 1, i32* %685

  %686 = bitcast %union.VectorReg* %23 to double*

  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  br label %block_401b34



block_401725:                                     ; preds = %block_40171e, %block_401731

  %688 = phi i64 [ %958, %block_40171e ], [ %646, %block_401731 ]

  %689 = phi i64 [ %66, %block_40171e ], [ %631, %block_401731 ]

  %690 = phi %struct.Memory* [ %2, %block_40171e ], [ %597, %block_401731 ]

  %691 = add i64 %689, -52

  %692 = inttoptr i64 %691 to i32*

  %693 = load i32, i32* %692

  %694 = zext i32 %693 to i64

  store i64 %694, i64* %14, align 8, !tbaa !1240

  %695 = add i64 %689, -16

  %696 = inttoptr i64 %695 to i32*

  %697 = load i32, i32* %696

  %698 = sub i32 %693, %697

  %699 = lshr i32 %698, 31

  %700 = trunc i32 %699 to i8

  %701 = lshr i32 %693, 31

  %702 = lshr i32 %697, 31

  %703 = xor i32 %702, %701

  %704 = xor i32 %699, %701

  %705 = add nuw nsw i32 %704, %703

  %706 = icmp eq i32 %705, 2

  %707 = icmp ne i8 %700, 0

  %708 = xor i1 %707, %706

  %709 = select i1 %708, i64 12, i64 141

  %710 = add i64 %688, %709

  br i1 %708, label %block_401731, label %block_4017b2



block_401b23:                                     ; preds = %block_401a96

  %711 = add i64 %964, -64

  %712 = inttoptr i64 %711 to i32*

  %713 = load i32, i32* %712

  %714 = add i32 %713, -1

  %715 = lshr i32 %714, 31

  %716 = trunc i32 %715 to i8

  %717 = lshr i32 %713, 31

  %718 = xor i32 %715, %717

  %719 = add nuw nsw i32 %718, %717

  %720 = icmp eq i32 %719, 2

  %721 = icmp ne i8 %716, 0

  %722 = xor i1 %721, %720

  %723 = select i1 %722, i64 284, i64 10

  %724 = add i64 %985, %723

  br i1 %722, label %block_401c49, label %block_401b2d



block_401aa2:                                     ; preds = %block_401a96

  store i64 1, i64* %14, align 8, !tbaa !1240

  store i64 %969, i64* %18, align 8, !tbaa !1240

  %725 = add i64 %964, -8

  %726 = inttoptr i64 %725 to i64*

  %727 = load i64, i64* %726

  %728 = add i64 %964, -12

  %729 = inttoptr i64 %728 to i32*

  %730 = load i32, i32* %729

  %731 = sext i32 %730 to i64

  %732 = sext i32 %968 to i64

  %733 = mul nsw i64 %732, %731

  %734 = shl i64 %733, 32

  %735 = ashr exact i64 %734, 29

  %736 = add i64 %735, %727

  %737 = load i64, i64* %20, align 8

  %738 = add i64 %737, -32

  %739 = inttoptr i64 %738 to i64*

  %740 = load i64, i64* %739

  %741 = add i64 %737, -120

  %742 = inttoptr i64 %741 to i64*

  store i64 %740, i64* %742

  store i64 %736, i64* %17, align 8, !tbaa !1240

  %743 = load i32, i32* %5, align 4

  %744 = zext i32 %743 to i64

  store i64 %744, i64* %16, align 8, !tbaa !1240

  %745 = inttoptr i64 %741 to i64*

  %746 = load i64, i64* %745

  store i64 %746, i64* %15, align 8, !tbaa !1240

  store i64 %744, i64* %21, align 8, !tbaa !1240

  %747 = add i64 %985, 2862

  %748 = add i64 %985, 57

  %749 = load i64, i64* %19, align 8, !tbaa !1240

  %750 = add i64 %749, -8

  %751 = inttoptr i64 %750 to i64*

  store i64 %748, i64* %751

  store i64 %750, i64* %19, align 8, !tbaa !1240

  %752 = tail call %struct.Memory* @sub_4025d0_ddot_ur(%struct.State* nonnull %0, i64 %747, %struct.Memory* %965)

  %753 = load i64, i64* %20, align 8

  %754 = add i64 %753, -48

  %755 = load i64, i64* %3, align 8

  %756 = load double, double* %1187, align 1

  %757 = inttoptr i64 %754 to double*

  store double %756, double* %757

  %758 = add i64 %753, -32

  %759 = inttoptr i64 %758 to i64*

  %760 = load i64, i64* %759

  %761 = add i64 %753, -52

  %762 = inttoptr i64 %761 to i32*

  %763 = load i32, i32* %762

  %764 = sext i32 %763 to i64

  %765 = shl nsw i64 %764, 3

  %766 = add i64 %765, %760

  %767 = inttoptr i64 %766 to double*

  %768 = load double, double* %767

  %769 = inttoptr i64 %754 to double*

  %770 = load double, double* %769

  %771 = fsub double %768, %770

  %772 = add i64 %753, -8

  %773 = inttoptr i64 %772 to i64*

  %774 = load i64, i64* %773

  %775 = add i64 %753, -12

  %776 = inttoptr i64 %775 to i32*

  %777 = load i32, i32* %776

  %778 = mul i32 %763, %777

  %779 = add i32 %763, %778

  %780 = sext i32 %779 to i64

  %781 = shl nsw i64 %780, 3

  %782 = add i64 %774, %781

  %783 = inttoptr i64 %782 to double*

  %784 = load double, double* %783

  %785 = fdiv double %771, %784

  store double %785, double* %1187, align 1, !tbaa !1268

  store i64 0, i64* %1188, align 1, !tbaa !1268

  %786 = load i64, i64* %20, align 8

  %787 = add i64 %786, -32

  %788 = inttoptr i64 %787 to i64*

  %789 = load i64, i64* %788

  store i64 %789, i64* %15, align 8, !tbaa !1240

  %790 = add i64 %786, -52

  %791 = inttoptr i64 %790 to i32*

  %792 = load i32, i32* %791

  %793 = sext i32 %792 to i64

  store i64 %793, i64* %17, align 8, !tbaa !1240

  %794 = shl nsw i64 %793, 3

  %795 = add i64 %794, %789

  %796 = inttoptr i64 %795 to double*

  store double %785, double* %796

  %797 = inttoptr i64 %790 to i32*

  %798 = load i32, i32* %797

  %799 = add i32 %798, 1

  %800 = inttoptr i64 %790 to i32*

  store i32 %799, i32* %800

  %801 = add i64 %755, -69

  br label %block_401a96



block_4019cc:                                     ; preds = %block_4019c5, %block_4019d8

  %802 = phi i64 [ %553, %block_4019c5 ], [ %391, %block_4019d8 ]

  %803 = phi i64 [ %550, %block_4019c5 ], [ %384, %block_4019d8 ]

  %804 = phi %struct.Memory* [ %551, %block_4019c5 ], [ %383, %block_4019d8 ]

  %805 = add i64 %803, -56

  %806 = inttoptr i64 %805 to i32*

  %807 = load i32, i32* %806

  %808 = zext i32 %807 to i64

  store i64 %808, i64* %14, align 8, !tbaa !1240

  %809 = add i64 %803, -16

  %810 = inttoptr i64 %809 to i32*

  %811 = load i32, i32* %810

  %812 = sub i32 %807, %811

  %813 = lshr i32 %812, 31

  %814 = trunc i32 %813 to i8

  %815 = lshr i32 %807, 31

  %816 = lshr i32 %811, 31

  %817 = xor i32 %816, %815

  %818 = xor i32 %813, %815

  %819 = add nuw nsw i32 %818, %817

  %820 = icmp eq i32 %819, 2

  %821 = icmp ne i8 %814, 0

  %822 = xor i1 %821, %820

  %823 = select i1 %822, i64 12, i64 190

  %824 = add i64 %802, %823

  br i1 %822, label %block_4019d8, label %block_401c49.loopexit



block_4018f6:                                     ; preds = %block_40195a, %block_4018ef

  %825 = phi i64 [ %93, %block_4018ef ], [ %297, %block_40195a ]

  %826 = phi i64 [ %66, %block_4018ef ], [ %290, %block_40195a ]

  %827 = phi %struct.Memory* [ %2, %block_4018ef ], [ %289, %block_40195a ]

  %828 = add i64 %826, -52

  %829 = inttoptr i64 %828 to i32*

  %830 = load i32, i32* %829

  %831 = add i64 %826, -64

  %832 = inttoptr i64 %831 to i32*

  %833 = load i32, i32* %832

  %834 = sub i32 %830, %833

  %835 = lshr i32 %834, 31

  %836 = trunc i32 %835 to i8

  %837 = lshr i32 %830, 31

  %838 = lshr i32 %833, 31

  %839 = xor i32 %838, %837

  %840 = xor i32 %835, %837

  %841 = add nuw nsw i32 %840, %839

  %842 = icmp eq i32 %841, 2

  %843 = icmp ne i8 %836, 0

  %844 = xor i1 %843, %842

  %845 = select i1 %844, i64 12, i64 202

  %846 = add i64 %825, %845

  br i1 %844, label %block_401902, label %block_4019c0



block_4017cf:                                     ; preds = %block_4017c3

  store i64 1, i64* %14, align 8, !tbaa !1240

  %847 = add i64 %1022, -16

  %848 = inttoptr i64 %847 to i32*

  %849 = load i32, i32* %848

  %850 = add i32 %1026, 1

  %851 = sub i32 %849, %850

  %852 = add i64 %1022, -52

  %853 = inttoptr i64 %852 to i32*

  store i32 %851, i32* %853

  %854 = add i64 %1022, -32

  %855 = inttoptr i64 %854 to i64*

  %856 = load i64, i64* %855

  %857 = inttoptr i64 %852 to i32*

  %858 = load i32, i32* %857

  %859 = sext i32 %858 to i64

  %860 = shl nsw i64 %859, 3

  %861 = add i64 %860, %856

  %862 = inttoptr i64 %861 to double*

  %863 = load double, double* %862

  store double %863, double* %960, align 1, !tbaa !1268

  store double 0.000000e+00, double* %962, align 1, !tbaa !1268

  %864 = load i64, i64* %20, align 8

  %865 = add i64 %864, -16

  %866 = inttoptr i64 %865 to i32*

  %867 = load i32, i32* %866

  %868 = add i64 %864, -52

  %869 = inttoptr i64 %868 to i32*

  %870 = load i32, i32* %869

  %871 = add i32 %870, 1

  %872 = sub i32 %867, %871

  %873 = zext i32 %872 to i64

  store i64 %873, i64* %15, align 8, !tbaa !1240

  %874 = add i64 %864, -8

  %875 = inttoptr i64 %874 to i64*

  %876 = load i64, i64* %875

  store i64 %876, i64* %17, align 8, !tbaa !1240

  %877 = add i64 %864, -12

  %878 = inttoptr i64 %877 to i32*

  %879 = load i32, i32* %878

  %880 = mul i32 %870, %879

  %881 = load i64, i64* %20, align 8

  %882 = add i64 %881, -52

  %883 = inttoptr i64 %882 to i32*

  %884 = load i32, i32* %883

  %885 = add i32 %884, %880

  %886 = add i32 %885, 1

  %887 = sext i32 %886 to i64

  %888 = shl nsw i64 %887, 3

  %889 = load i64, i64* %17, align 8

  %890 = add i64 %888, %889

  store i64 %890, i64* %17, align 8, !tbaa !1240

  %891 = load i64, i64* %20, align 8

  %892 = add i64 %891, -32

  %893 = inttoptr i64 %892 to i64*

  %894 = load i64, i64* %893

  %895 = add i64 %891, -52

  %896 = inttoptr i64 %895 to i32*

  %897 = load i32, i32* %896

  %898 = add i32 %897, 1

  %899 = sext i32 %898 to i64

  %900 = shl nsw i64 %899, 3

  %901 = add i64 %900, %894

  %902 = load i64, i64* %20, align 8

  %903 = add i64 %902, -96

  %904 = inttoptr i64 %903 to i64*

  store i64 %901, i64* %904

  %905 = load i32, i32* %7, align 4

  %906 = zext i32 %905 to i64

  store i64 %906, i64* %18, align 8, !tbaa !1240

  %907 = load i32, i32* %5, align 4

  %908 = zext i32 %907 to i64

  store i64 %908, i64* %16, align 8, !tbaa !1240

  %909 = inttoptr i64 %903 to i64*

  %910 = load i64, i64* %909

  store i64 %910, i64* %15, align 8, !tbaa !1240

  store i64 %908, i64* %21, align 8, !tbaa !1240

  %911 = add i64 %902, -104

  %912 = load double, double* %960, align 1

  %913 = inttoptr i64 %911 to double*

  store double %912, double* %913

  %914 = add i64 %1043, 3249

  %915 = add i64 %1043, 115

  %916 = load i64, i64* %19, align 8, !tbaa !1240

  %917 = add i64 %916, -8

  %918 = inttoptr i64 %917 to i64*

  store i64 %915, i64* %918

  store i64 %917, i64* %19, align 8, !tbaa !1240

  %919 = tail call %struct.Memory* @sub_402480_ddot_r(%struct.State* nonnull %0, i64 %914, %struct.Memory* %1023)

  %920 = load i64, i64* %20, align 8

  %921 = add i64 %920, -104

  %922 = load i64, i64* %3, align 8

  %923 = inttoptr i64 %921 to double*

  %924 = load double, double* %923

  %925 = load double, double* %960, align 1

  %926 = fadd double %924, %925

  store double %926, double* %427, align 1, !tbaa !1268

  store i64 0, i64* %428, align 1, !tbaa !1268

  %927 = add i64 %920, -32

  %928 = inttoptr i64 %927 to i64*

  %929 = load i64, i64* %928

  %930 = add i64 %920, -52

  %931 = inttoptr i64 %930 to i32*

  %932 = load i32, i32* %931

  %933 = sext i32 %932 to i64

  %934 = shl nsw i64 %933, 3

  %935 = add i64 %934, %929

  %936 = inttoptr i64 %935 to double*

  store double %926, double* %936

  %937 = add i64 %920, -24

  %938 = inttoptr i64 %937 to i64*

  %939 = load i64, i64* %938

  store i64 %939, i64* %15, align 8, !tbaa !1240

  %940 = inttoptr i64 %930 to i32*

  %941 = load i32, i32* %940

  %942 = sext i32 %941 to i64

  store i64 %942, i64* %17, align 8, !tbaa !1240

  %943 = shl nsw i64 %942, 2

  %944 = add i64 %943, %939

  %945 = inttoptr i64 %944 to i32*

  %946 = load i32, i32* %945

  %947 = add i64 %920, -60

  %948 = inttoptr i64 %947 to i32*

  store i32 %946, i32* %948

  %949 = inttoptr i64 %947 to i32*

  %950 = load i32, i32* %949

  %951 = inttoptr i64 %930 to i32*

  %952 = load i32, i32* %951

  %953 = sub i32 %950, %952

  %954 = icmp eq i32 %953, 0

  %955 = select i1 %954, i64 110, i64 48

  %956 = add i64 %922, %955

  br i1 %954, label %block_4018b0, label %block_401872



block_40171e:                                     ; preds = %block_401561

  %957 = add i64 %66, -52

  %958 = add i64 %74, 7

  %959 = inttoptr i64 %957 to i32*

  store i32 0, i32* %959

  %960 = bitcast [32 x %union.VectorReg]* %22 to double*

  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %962 = bitcast i64* %961 to double*

  br label %block_401725



block_401a96:                                     ; preds = %block_401a8f, %block_401aa2

  %963 = phi i64 [ %1185, %block_401a8f ], [ %801, %block_401aa2 ]

  %964 = phi i64 [ %66, %block_401a8f ], [ %786, %block_401aa2 ]

  %965 = phi %struct.Memory* [ %2, %block_401a8f ], [ %752, %block_401aa2 ]

  %966 = add i64 %964, -52

  %967 = inttoptr i64 %966 to i32*

  %968 = load i32, i32* %967

  %969 = zext i32 %968 to i64

  store i64 %969, i64* %14, align 8, !tbaa !1240

  %970 = add i64 %964, -16

  %971 = inttoptr i64 %970 to i32*

  %972 = load i32, i32* %971

  %973 = sub i32 %968, %972

  %974 = lshr i32 %973, 31

  %975 = trunc i32 %974 to i8

  %976 = lshr i32 %968, 31

  %977 = lshr i32 %972, 31

  %978 = xor i32 %977, %976

  %979 = xor i32 %974, %976

  %980 = add nuw nsw i32 %979, %978

  %981 = icmp eq i32 %980, 2

  %982 = icmp ne i8 %975, 0

  %983 = xor i1 %982, %981

  %984 = select i1 %983, i64 12, i64 141

  %985 = add i64 %963, %984

  br i1 %983, label %block_401aa2, label %block_401b23



block_401be9:                                     ; preds = %block_401b40

  %986 = inttoptr i64 %1154 to i64*

  %987 = load i64, i64* %986

  %988 = sext i32 %1177 to i64

  %989 = shl nsw i64 %988, 3

  %990 = add i64 %989, %987

  %991 = inttoptr i64 %990 to double*

  %992 = load double, double* %991

  %993 = add i64 %1147, -48

  %994 = inttoptr i64 %993 to double*

  store double %992, double* %994

  %995 = inttoptr i64 %1154 to i64*

  %996 = load i64, i64* %995

  %997 = inttoptr i64 %1157 to i32*

  %998 = load i32, i32* %997

  %999 = sext i32 %998 to i64

  %1000 = shl nsw i64 %999, 3

  %1001 = add i64 %1000, %996

  %1002 = inttoptr i64 %1001 to double*

  %1003 = load double, double* %1002

  %1004 = inttoptr i64 %1174 to i32*

  %1005 = load i32, i32* %1004

  %1006 = sext i32 %1005 to i64

  %1007 = shl nsw i64 %1006, 3

  %1008 = add i64 %1007, %996

  %1009 = inttoptr i64 %1008 to double*

  store double %1003, double* %1009

  %1010 = inttoptr i64 %993 to double*

  %1011 = load double, double* %1010

  store double %1011, double* %1187, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1189, align 1, !tbaa !1268

  %1012 = inttoptr i64 %1154 to i64*

  %1013 = load i64, i64* %1012

  %1014 = inttoptr i64 %1157 to i32*

  %1015 = load i32, i32* %1014

  %1016 = sext i32 %1015 to i64

  store i64 %1016, i64* %15, align 8, !tbaa !1240

  %1017 = shl nsw i64 %1016, 3

  %1018 = add i64 %1017, %1013

  %1019 = add i64 %1183, 62

  %1020 = inttoptr i64 %1018 to double*

  store double %1011, double* %1020

  br label %block_401c27



block_4017c3:                                     ; preds = %block_4018b0, %block_4017bc

  %1021 = phi i64 [ %425, %block_4017bc ], [ %654, %block_4018b0 ]

  %1022 = phi i64 [ %689, %block_4017bc ], [ %920, %block_4018b0 ]

  %1023 = phi %struct.Memory* [ %690, %block_4017bc ], [ %648, %block_4018b0 ]

  %1024 = add i64 %1022, -56

  %1025 = inttoptr i64 %1024 to i32*

  %1026 = load i32, i32* %1025

  %1027 = zext i32 %1026 to i64

  store i64 %1027, i64* %14, align 8, !tbaa !1240

  %1028 = add i64 %1022, -64

  %1029 = inttoptr i64 %1028 to i32*

  %1030 = load i32, i32* %1029

  %1031 = sub i32 %1026, %1030

  %1032 = lshr i32 %1031, 31

  %1033 = trunc i32 %1032 to i8

  %1034 = lshr i32 %1026, 31

  %1035 = lshr i32 %1030, 31

  %1036 = xor i32 %1035, %1034

  %1037 = xor i32 %1032, %1034

  %1038 = add nuw nsw i32 %1037, %1036

  %1039 = icmp eq i32 %1038, 2

  %1040 = icmp ne i8 %1033, 0

  %1041 = xor i1 %1040, %1039

  %1042 = select i1 %1041, i64 12, i64 256

  %1043 = add i64 %1021, %1042

  br i1 %1041, label %block_4017cf, label %block_4018c3



block_401591:                                     ; preds = %block_401585

  %1044 = add i64 %1199, -24

  %1045 = inttoptr i64 %1044 to i64*

  %1046 = load i64, i64* %1045

  %1047 = sext i32 %1203 to i64

  %1048 = shl nsw i64 %1047, 2

  %1049 = add i64 %1048, %1046

  %1050 = inttoptr i64 %1049 to i32*

  %1051 = load i32, i32* %1050

  %1052 = add i64 %1199, -60

  %1053 = inttoptr i64 %1052 to i32*

  store i32 %1051, i32* %1053

  %1054 = add i64 %1199, -32

  %1055 = inttoptr i64 %1054 to i64*

  %1056 = load i64, i64* %1055

  %1057 = inttoptr i64 %1052 to i32*

  %1058 = load i32, i32* %1057

  %1059 = sext i32 %1058 to i64

  %1060 = shl nsw i64 %1059, 3

  %1061 = add i64 %1060, %1056

  %1062 = inttoptr i64 %1061 to double*

  %1063 = load double, double* %1062

  store double %1063, double* %658, align 1, !tbaa !1268

  store double 0.000000e+00, double* %660, align 1, !tbaa !1268

  %1064 = add i64 %1199, -48

  %1065 = inttoptr i64 %1064 to double*

  store double %1063, double* %1065

  %1066 = inttoptr i64 %1052 to i32*

  %1067 = load i32, i32* %1066

  %1068 = inttoptr i64 %1201 to i32*

  %1069 = load i32, i32* %1068

  %1070 = sub i32 %1067, %1069

  %1071 = icmp eq i32 %1070, 0

  %1072 = select i1 %1071, i64 88, i64 44

  %1073 = add i64 %1219, %1072

  br i1 %1071, label %block_4015e9, label %block_4015bd



block_401b40:                                     ; preds = %block_401b34

  store i64 1, i64* %14, align 8, !tbaa !1240

  %1074 = add i64 %524, -16

  %1075 = inttoptr i64 %1074 to i32*

  %1076 = load i32, i32* %1075

  %1077 = add i32 %528, 1

  %1078 = sub i32 %1076, %1077

  %1079 = add i64 %524, -52

  %1080 = inttoptr i64 %1079 to i32*

  store i32 %1078, i32* %1080

  %1081 = add i64 %524, -32

  %1082 = inttoptr i64 %1081 to i64*

  %1083 = load i64, i64* %1082

  %1084 = inttoptr i64 %1079 to i32*

  %1085 = load i32, i32* %1084

  %1086 = sext i32 %1085 to i64

  %1087 = shl nsw i64 %1086, 3

  %1088 = add i64 %1087, %1083

  %1089 = inttoptr i64 %1088 to double*

  %1090 = load double, double* %1089

  store double %1090, double* %1187, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1189, align 1, !tbaa !1268

  %1091 = load i64, i64* %20, align 8

  %1092 = add i64 %1091, -16

  %1093 = inttoptr i64 %1092 to i32*

  %1094 = load i32, i32* %1093

  %1095 = add i64 %1091, -52

  %1096 = inttoptr i64 %1095 to i32*

  %1097 = load i32, i32* %1096

  %1098 = add i32 %1097, 1

  %1099 = sub i32 %1094, %1098

  %1100 = zext i32 %1099 to i64

  store i64 %1100, i64* %15, align 8, !tbaa !1240

  %1101 = add i64 %1091, -8

  %1102 = inttoptr i64 %1101 to i64*

  %1103 = load i64, i64* %1102

  store i64 %1103, i64* %17, align 8, !tbaa !1240

  %1104 = add i64 %1091, -12

  %1105 = inttoptr i64 %1104 to i32*

  %1106 = load i32, i32* %1105

  %1107 = mul i32 %1097, %1106

  %1108 = load i64, i64* %20, align 8

  %1109 = add i64 %1108, -52

  %1110 = inttoptr i64 %1109 to i32*

  %1111 = load i32, i32* %1110

  %1112 = add i32 %1111, %1107

  %1113 = add i32 %1112, 1

  %1114 = sext i32 %1113 to i64

  %1115 = shl nsw i64 %1114, 3

  %1116 = load i64, i64* %17, align 8

  %1117 = add i64 %1115, %1116

  store i64 %1117, i64* %17, align 8, !tbaa !1240

  %1118 = load i64, i64* %20, align 8

  %1119 = add i64 %1118, -32

  %1120 = inttoptr i64 %1119 to i64*

  %1121 = load i64, i64* %1120

  %1122 = add i64 %1118, -52

  %1123 = inttoptr i64 %1122 to i32*

  %1124 = load i32, i32* %1123

  %1125 = add i32 %1124, 1

  %1126 = sext i32 %1125 to i64

  %1127 = shl nsw i64 %1126, 3

  %1128 = add i64 %1127, %1121

  %1129 = load i64, i64* %20, align 8

  %1130 = add i64 %1129, -128

  %1131 = inttoptr i64 %1130 to i64*

  store i64 %1128, i64* %1131

  %1132 = load i32, i32* %7, align 4

  %1133 = zext i32 %1132 to i64

  store i64 %1133, i64* %18, align 8, !tbaa !1240

  %1134 = load i32, i32* %5, align 4

  %1135 = zext i32 %1134 to i64

  store i64 %1135, i64* %16, align 8, !tbaa !1240

  %1136 = inttoptr i64 %1130 to i64*

  %1137 = load i64, i64* %1136

  store i64 %1137, i64* %15, align 8, !tbaa !1240

  store i64 %1135, i64* %21, align 8, !tbaa !1240

  %1138 = add i64 %1129, -136

  %1139 = load double, double* %1187, align 1

  %1140 = inttoptr i64 %1138 to double*

  store double %1139, double* %1140

  %1141 = add i64 %545, 2704

  %1142 = add i64 %545, 118

  %1143 = load i64, i64* %19, align 8, !tbaa !1240

  %1144 = add i64 %1143, -8

  %1145 = inttoptr i64 %1144 to i64*

  store i64 %1142, i64* %1145

  store i64 %1144, i64* %19, align 8, !tbaa !1240

  %1146 = tail call %struct.Memory* @sub_4025d0_ddot_ur(%struct.State* nonnull %0, i64 %1141, %struct.Memory* %525)

  %1147 = load i64, i64* %20, align 8

  %1148 = add i64 %1147, -136

  %1149 = load i64, i64* %3, align 8

  %1150 = inttoptr i64 %1148 to double*

  %1151 = load double, double* %1150

  %1152 = load double, double* %1187, align 1

  %1153 = fadd double %1151, %1152

  store double %1153, double* %686, align 1, !tbaa !1268

  store i64 0, i64* %687, align 1, !tbaa !1268

  %1154 = add i64 %1147, -32

  %1155 = inttoptr i64 %1154 to i64*

  %1156 = load i64, i64* %1155

  %1157 = add i64 %1147, -52

  %1158 = inttoptr i64 %1157 to i32*

  %1159 = load i32, i32* %1158

  %1160 = sext i32 %1159 to i64

  %1161 = shl nsw i64 %1160, 3

  %1162 = add i64 %1161, %1156

  %1163 = inttoptr i64 %1162 to double*

  store double %1153, double* %1163

  %1164 = add i64 %1147, -24

  %1165 = inttoptr i64 %1164 to i64*

  %1166 = load i64, i64* %1165

  store i64 %1166, i64* %15, align 8, !tbaa !1240

  %1167 = inttoptr i64 %1157 to i32*

  %1168 = load i32, i32* %1167

  %1169 = sext i32 %1168 to i64

  store i64 %1169, i64* %17, align 8, !tbaa !1240

  %1170 = shl nsw i64 %1169, 2

  %1171 = add i64 %1170, %1166

  %1172 = inttoptr i64 %1171 to i32*

  %1173 = load i32, i32* %1172

  %1174 = add i64 %1147, -60

  %1175 = inttoptr i64 %1174 to i32*

  store i32 %1173, i32* %1175

  %1176 = inttoptr i64 %1174 to i32*

  %1177 = load i32, i32* %1176

  %1178 = inttoptr i64 %1157 to i32*

  %1179 = load i32, i32* %1178

  %1180 = sub i32 %1177, %1179

  %1181 = icmp eq i32 %1180, 0

  %1182 = select i1 %1181, i64 113, i64 51

  %1183 = add i64 %1149, %1182

  br i1 %1181, label %block_401c27, label %block_401be9



block_401a8f:                                     ; preds = %block_4018d2

  %1184 = add i64 %66, -52

  %1185 = add i64 %74, 7

  %1186 = inttoptr i64 %1184 to i32*

  store i32 0, i32* %1186

  %1187 = bitcast [32 x %union.VectorReg]* %22 to double*

  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1189 = bitcast i64* %1188 to double*

  br label %block_401a96



block_401c27:                                     ; preds = %block_401b40, %block_401be9

  %1190 = phi i64 [ %1183, %block_401b40 ], [ %1019, %block_401be9 ]

  %1191 = phi %struct.Memory* [ %1146, %block_401b40 ], [ %1146, %block_401be9 ]

  %1192 = add i64 %1147, -56

  %1193 = inttoptr i64 %1192 to i32*

  %1194 = load i32, i32* %1193

  %1195 = add i32 %1194, 1

  %1196 = inttoptr i64 %1192 to i32*

  store i32 %1195, i32* %1196

  %1197 = add i64 %1190, -243

  br label %block_401b34



block_401585:                                     ; preds = %block_40157e, %block_4015e9

  %1198 = phi i64 [ %656, %block_40157e ], [ %195, %block_4015e9 ]

  %1199 = phi i64 [ %66, %block_40157e ], [ %188, %block_4015e9 ]

  %1200 = phi %struct.Memory* [ %2, %block_40157e ], [ %187, %block_4015e9 ]

  %1201 = add i64 %1199, -52

  %1202 = inttoptr i64 %1201 to i32*

  %1203 = load i32, i32* %1202

  %1204 = add i64 %1199, -64

  %1205 = inttoptr i64 %1204 to i32*

  %1206 = load i32, i32* %1205

  %1207 = sub i32 %1203, %1206

  %1208 = lshr i32 %1207, 31

  %1209 = trunc i32 %1208 to i8

  %1210 = lshr i32 %1203, 31

  %1211 = lshr i32 %1206, 31

  %1212 = xor i32 %1211, %1210

  %1213 = xor i32 %1208, %1210

  %1214 = add nuw nsw i32 %1213, %1212

  %1215 = icmp eq i32 %1214, 2

  %1216 = icmp ne i8 %1209, 0

  %1217 = xor i1 %1216, %1215

  %1218 = select i1 %1217, i64 12, i64 202

  %1219 = add i64 %1198, %1218

  br i1 %1217, label %block_401591, label %block_40164f



block_401902:                                     ; preds = %block_4018f6

  %1220 = add i64 %826, -24

  %1221 = inttoptr i64 %1220 to i64*

  %1222 = load i64, i64* %1221

  %1223 = sext i32 %830 to i64

  %1224 = shl nsw i64 %1223, 2

  %1225 = add i64 %1224, %1222

  %1226 = inttoptr i64 %1225 to i32*

  %1227 = load i32, i32* %1226

  %1228 = add i64 %826, -60

  %1229 = inttoptr i64 %1228 to i32*

  store i32 %1227, i32* %1229

  %1230 = add i64 %826, -32

  %1231 = inttoptr i64 %1230 to i64*

  %1232 = load i64, i64* %1231

  %1233 = inttoptr i64 %1228 to i32*

  %1234 = load i32, i32* %1233

  %1235 = sext i32 %1234 to i64

  %1236 = shl nsw i64 %1235, 3

  %1237 = add i64 %1236, %1232

  %1238 = inttoptr i64 %1237 to double*

  %1239 = load double, double* %1238

  store double %1239, double* %95, align 1, !tbaa !1268

  store double 0.000000e+00, double* %97, align 1, !tbaa !1268

  %1240 = add i64 %826, -48

  %1241 = inttoptr i64 %1240 to double*

  store double %1239, double* %1241

  %1242 = inttoptr i64 %1228 to i32*

  %1243 = load i32, i32* %1242

  %1244 = inttoptr i64 %828 to i32*

  %1245 = load i32, i32* %1244

  %1246 = sub i32 %1243, %1245

  %1247 = icmp eq i32 %1246, 0

  %1248 = select i1 %1247, i64 88, i64 44

  %1249 = add i64 %846, %1248

  br i1 %1247, label %block_40195a, label %block_40192e



block_401c49.loopexit:                            ; preds = %block_4019cc

  br label %block_401c49



block_401c49.loopexit103:                         ; preds = %block_40165b

  br label %block_401c49



block_401c49:                                     ; preds = %block_401c49.loopexit103, %block_401c49.loopexit, %block_401b23, %block_4017b2, %block_401c3a, %block_4018c3

  %1250 = phi %struct.Memory* [ %690, %block_4017b2 ], [ %1023, %block_4018c3 ], [ %965, %block_401b23 ], [ %525, %block_401c3a ], [ %804, %block_401c49.loopexit ], [ %214, %block_401c49.loopexit103 ]

  %1251 = load i64, i64* %19, align 8

  %1252 = add i64 %1251, 144

  %1253 = icmp ugt i64 %1251, -145

  %1254 = zext i1 %1253 to i8

  store i8 %1254, i8* %29, align 1, !tbaa !1244

  %1255 = trunc i64 %1252 to i32

  %1256 = and i32 %1255, 255

  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256) #9

  %1258 = trunc i32 %1257 to i8

  %1259 = and i8 %1258, 1

  %1260 = xor i8 %1259, 1

  store i8 %1260, i8* %30, align 1, !tbaa !1258

  %1261 = xor i64 %1251, 16

  %1262 = xor i64 %1261, %1252

  %1263 = lshr i64 %1262, 4

  %1264 = trunc i64 %1263 to i8

  %1265 = and i8 %1264, 1

  store i8 %1265, i8* %31, align 1, !tbaa !1262

  %1266 = icmp eq i64 %1252, 0

  %1267 = zext i1 %1266 to i8

  store i8 %1267, i8* %32, align 1, !tbaa !1259

  %1268 = lshr i64 %1252, 63

  %1269 = trunc i64 %1268 to i8

  store i8 %1269, i8* %33, align 1, !tbaa !1260

  %1270 = lshr i64 %1251, 63

  %1271 = xor i64 %1268, %1270

  %1272 = add nuw nsw i64 %1271, %1268

  %1273 = icmp eq i64 %1272, 2

  %1274 = zext i1 %1273 to i8

  store i8 %1274, i8* %34, align 1, !tbaa !1261

  %1275 = add i64 %1251, 152

  %1276 = inttoptr i64 %1252 to i64*

  %1277 = load i64, i64* %1276

  store i64 %1277, i64* %20, align 8, !tbaa !1240

  %1278 = inttoptr i64 %1275 to i64*

  %1279 = load i64, i64* %1278

  store i64 %1279, i64* %3, align 8, !tbaa !1240

  %1280 = add i64 %1251, 160

  store i64 %1280, i64* %19, align 8, !tbaa !1240

  ret %struct.Memory* %1250



block_4019c0:                                     ; preds = %block_4018f6

  %1281 = add i64 %846, 5

  br label %block_4019c5

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_402480_ddot_r(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_402480:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %18 = load i64, i64* %15, align 8

  %19 = load i64, i64* %14, align 8, !tbaa !1240

  %20 = add i64 %19, -8

  %21 = inttoptr i64 %20 to i64*

  store i64 %18, i64* %21

  store i64 %20, i64* %14, align 8, !tbaa !1240

  store i64 %20, i64* %15, align 8, !tbaa !1240

  %22 = bitcast [32 x %union.VectorReg]* %16 to i8*

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %24 = bitcast [32 x %union.VectorReg]* %16 to i32*

  store i32 0, i32* %24, align 1, !tbaa !1270

  %25 = getelementptr inbounds i8, i8* %22, i64 4

  %26 = bitcast i8* %25 to i32*

  store i32 0, i32* %26, align 1, !tbaa !1270

  %27 = bitcast i64* %23 to i32*

  store i32 0, i32* %27, align 1, !tbaa !1270

  %28 = getelementptr inbounds i8, i8* %22, i64 12

  %29 = bitcast i8* %28 to i32*

  store i32 0, i32* %29, align 1, !tbaa !1270

  %30 = add i64 %19, -20

  %31 = load i32, i32* %7, align 4

  %32 = inttoptr i64 %30 to i32*

  store i32 %31, i32* %32

  %33 = add i64 %19, -32

  %34 = load i64, i64* %13, align 8

  %35 = inttoptr i64 %33 to i64*

  store i64 %34, i64* %35

  %36 = add i64 %19, -36

  %37 = load i32, i32* %5, align 4

  %38 = inttoptr i64 %36 to i32*

  store i32 %37, i32* %38

  %39 = add i64 %19, -48

  %40 = load i64, i64* %11, align 8

  %41 = inttoptr i64 %39 to i64*

  store i64 %40, i64* %41

  %42 = add i64 %19, -52

  %43 = load i32, i32* %9, align 4

  %44 = inttoptr i64 %42 to i32*

  store i32 %43, i32* %44

  %45 = add i64 %19, -64

  %46 = bitcast [32 x %union.VectorReg]* %16 to double*

  %47 = load double, double* %46, align 1

  %48 = inttoptr i64 %45 to double*

  store double %47, double* %48

  %49 = inttoptr i64 %30 to i32*

  %50 = load i32, i32* %49

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %51, align 1, !tbaa !1244

  %52 = and i32 %50, 255

  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9

  %54 = trunc i32 %53 to i8

  %55 = and i8 %54, 1

  %56 = xor i8 %55, 1

  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %56, i8* %57, align 1, !tbaa !1258

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %58, align 1, !tbaa !1262

  %59 = icmp eq i32 %50, 0

  %60 = zext i1 %59 to i8

  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %60, i8* %61, align 1, !tbaa !1259

  %62 = lshr i32 %50, 31

  %63 = trunc i32 %62 to i8

  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %63, i8* %64, align 1, !tbaa !1260

  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %65, align 1, !tbaa !1261

  %66 = xor i1 %59, true

  %67 = icmp eq i8 %63, 0

  %68 = and i1 %67, %66

  %69 = select i1 %68, i64 53, i64 40

  %70 = add i64 %69, %1

  br i1 %68, label %block_4024b5, label %block_4024a8



block_4024bf:                                     ; preds = %block_4024b5

  %71 = inttoptr i64 %42 to i32*

  %72 = load i32, i32* %71

  %73 = add i32 %72, -1

  %74 = icmp eq i32 %73, 0

  %75 = select i1 %74, i64 180, i64 10

  %76 = add i64 %214, %75

  br i1 %74, label %block_402573, label %block_4024c9



block_4025bc:                                     ; preds = %block_40257a

  %77 = zext i32 %244 to i64

  store i64 %77, i64* %10, align 8, !tbaa !1240

  store double 0.000000e+00, double* %218, align 1, !tbaa !1268

  %78 = icmp ult i32 %244, %246

  %79 = zext i1 %78 to i8

  %80 = and i32 %247, 255

  %81 = tail call i32 @llvm.ctpop.i32(i32 %80) #9

  %82 = trunc i32 %81 to i8

  %83 = and i8 %82, 1

  %84 = xor i8 %83, 1

  %85 = xor i32 %246, %244

  %86 = xor i32 %85, %247

  %87 = lshr i32 %86, 4

  %88 = trunc i32 %87 to i8

  %89 = and i8 %88, 1

  %90 = icmp eq i32 %247, 0

  %91 = zext i1 %90 to i8

  %92 = zext i1 %255 to i8

  store i8 %79, i8* %51, align 1, !tbaa !1244

  store i8 %84, i8* %57, align 1, !tbaa !1258

  store i8 %89, i8* %58, align 1, !tbaa !1262

  store i8 %91, i8* %61, align 1, !tbaa !1259

  store i8 %249, i8* %64, align 1, !tbaa !1260

  store i8 %92, i8* %65, align 1, !tbaa !1261

  store double %261, double* %46, align 1

  %93 = add i64 %19, -16

  %94 = inttoptr i64 %93 to double*

  store double %261, double* %94

  br label %block_4025c6



block_4024fa:                                     ; preds = %block_4024f0

  %95 = add i64 %185, -12

  %96 = inttoptr i64 %95 to i32*

  %97 = load i32, i32* %96

  %98 = sub i32 1, %97

  %99 = sext i32 %98 to i64

  %100 = sext i32 %190 to i64

  %101 = mul nsw i64 %100, %99

  %102 = load i64, i64* %15, align 8

  %103 = add i64 %102, -68

  %104 = trunc i64 %101 to i32

  %105 = add i64 %195, 15

  %106 = inttoptr i64 %103 to i32*

  store i32 %104, i32* %106

  br label %block_402509



block_402509:                                     ; preds = %block_4024f0, %block_4024fa

  %107 = phi i64 [ %195, %block_4024f0 ], [ %105, %block_4024fa ]

  %108 = phi i64 [ %185, %block_4024f0 ], [ %102, %block_4024fa ]

  %109 = phi %struct.Memory* [ %186, %block_4024f0 ], [ %186, %block_4024fa ]

  %110 = add i64 %108, -60

  %111 = add i64 %107, 7

  %112 = inttoptr i64 %110 to i32*

  store i32 0, i32* %112

  %113 = add i64 %108, -12

  %114 = add i64 %108, -56

  %115 = bitcast i64* %23 to double*

  %116 = add i64 %108, -24

  %117 = add i64 %108, -64

  %118 = bitcast %union.VectorReg* %17 to double*

  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %120 = add i64 %108, -40

  %121 = add i64 %108, -68

  %122 = add i64 %108, -28

  %123 = add i64 %108, -44

  br label %block_402510



block_40251c:                                     ; preds = %block_402510

  %124 = inttoptr i64 %116 to i64*

  %125 = load i64, i64* %124

  %126 = inttoptr i64 %117 to i32*

  %127 = load i32, i32* %126

  %128 = sext i32 %127 to i64

  %129 = shl nsw i64 %128, 3

  %130 = add i64 %129, %125

  %131 = inttoptr i64 %130 to double*

  %132 = load double, double* %131

  %133 = inttoptr i64 %120 to i64*

  %134 = load i64, i64* %133

  %135 = inttoptr i64 %121 to i32*

  %136 = load i32, i32* %135

  %137 = sext i32 %136 to i64

  store i64 %137, i64* %11, align 8, !tbaa !1240

  %138 = shl nsw i64 %137, 3

  %139 = add i64 %138, %134

  %140 = inttoptr i64 %139 to double*

  %141 = load double, double* %140

  %142 = fmul double %132, %141

  store double %142, double* %118, align 1, !tbaa !1268

  store i64 0, i64* %119, align 1, !tbaa !1268

  %143 = fadd double %183, %142

  %144 = inttoptr i64 %114 to double*

  store double %143, double* %144

  %145 = inttoptr i64 %117 to i32*

  %146 = load i32, i32* %145

  %147 = inttoptr i64 %122 to i32*

  %148 = load i32, i32* %147

  %149 = add i32 %148, %146

  %150 = inttoptr i64 %117 to i32*

  store i32 %149, i32* %150

  %151 = inttoptr i64 %121 to i32*

  %152 = load i32, i32* %151

  %153 = inttoptr i64 %123 to i32*

  %154 = load i32, i32* %153

  %155 = add i32 %154, %152

  %156 = zext i32 %155 to i64

  store i64 %156, i64* %12, align 8, !tbaa !1240

  %157 = inttoptr i64 %121 to i32*

  store i32 %155, i32* %157

  %158 = inttoptr i64 %110 to i32*

  %159 = load i32, i32* %158

  %160 = add i32 %159, 1

  %161 = inttoptr i64 %110 to i32*

  store i32 %160, i32* %161

  %162 = add i64 %181, -12

  br label %block_402510



block_402510:                                     ; preds = %block_40251c, %block_402509

  %163 = phi i64 [ %111, %block_402509 ], [ %162, %block_40251c ]

  %164 = phi %struct.Memory* [ %109, %block_402509 ], [ %164, %block_40251c ]

  %165 = inttoptr i64 %110 to i32*

  %166 = load i32, i32* %165

  %167 = inttoptr i64 %113 to i32*

  %168 = load i32, i32* %167

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

  %180 = select i1 %179, i64 12, i64 84

  %181 = add i64 %163, %180

  %182 = inttoptr i64 %114 to double*

  %183 = load double, double* %182

  br i1 %179, label %block_40251c, label %block_402564



block_4024f0:                                     ; preds = %block_4024e1, %block_4024c9

  %184 = phi i64 [ %208, %block_4024c9 ], [ %288, %block_4024e1 ]

  %185 = phi i64 [ %20, %block_4024c9 ], [ %285, %block_4024e1 ]

  %186 = phi %struct.Memory* [ %2, %block_4024c9 ], [ %2, %block_4024e1 ]

  %187 = add i64 %185, -44

  %188 = add i64 %184, 4

  %189 = inttoptr i64 %187 to i32*

  %190 = load i32, i32* %189

  %191 = lshr i32 %190, 31

  %192 = trunc i32 %191 to i8

  %193 = icmp ne i8 %192, 0

  %194 = select i1 %193, i64 6, i64 21

  %195 = add i64 %188, %194

  br i1 %193, label %block_4024fa, label %block_402509



block_4024c9:                                     ; preds = %block_4024b5, %block_4024bf

  %196 = phi i64 [ %214, %block_4024b5 ], [ %76, %block_4024bf ]

  %197 = add i64 %19, -72

  %198 = inttoptr i64 %197 to i32*

  store i32 0, i32* %198

  %199 = add i64 %19, -76

  %200 = inttoptr i64 %199 to i32*

  store i32 0, i32* %200

  %201 = add i64 %196, 18

  %202 = inttoptr i64 %36 to i32*

  %203 = load i32, i32* %202

  %204 = lshr i32 %203, 31

  %205 = trunc i32 %204 to i8

  %206 = icmp ne i8 %205, 0

  %207 = select i1 %206, i64 6, i64 21

  %208 = add i64 %201, %207

  br i1 %206, label %block_4024e1, label %block_4024f0



block_4024b5:                                     ; preds = %block_402480

  %209 = inttoptr i64 %36 to i32*

  %210 = load i32, i32* %209

  %211 = add i32 %210, -1

  %212 = icmp eq i32 %211, 0

  %213 = select i1 %212, i64 10, i64 20

  %214 = add i64 %70, %213

  br i1 %212, label %block_4024bf, label %block_4024c9



block_402573:                                     ; preds = %block_4024bf

  %215 = add i64 %19, -68

  %216 = add i64 %76, 7

  %217 = inttoptr i64 %215 to i32*

  store i32 0, i32* %217

  %218 = bitcast i64* %23 to double*

  %219 = bitcast %union.VectorReg* %17 to double*

  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  br label %block_40257a



block_402586:                                     ; preds = %block_40257a

  %221 = inttoptr i64 %33 to i64*

  %222 = load i64, i64* %221

  %223 = sext i32 %244 to i64

  %224 = shl nsw i64 %223, 3

  %225 = add i64 %224, %222

  %226 = inttoptr i64 %225 to double*

  %227 = load double, double* %226

  %228 = inttoptr i64 %39 to i64*

  %229 = load i64, i64* %228

  store i64 %223, i64* %11, align 8, !tbaa !1240

  %230 = add i64 %224, %229

  %231 = inttoptr i64 %230 to double*

  %232 = load double, double* %231

  %233 = fmul double %227, %232

  store double %233, double* %219, align 1, !tbaa !1268

  store i64 0, i64* %220, align 1, !tbaa !1268

  %234 = fadd double %261, %233

  %235 = inttoptr i64 %45 to double*

  store double %234, double* %235

  %236 = inttoptr i64 %215 to i32*

  %237 = load i32, i32* %236

  %238 = add i32 %237, 1

  %239 = inttoptr i64 %215 to i32*

  store i32 %238, i32* %239

  %240 = add i64 %259, -12

  br label %block_40257a



block_40257a:                                     ; preds = %block_402586, %block_402573

  %241 = phi i64 [ %216, %block_402573 ], [ %240, %block_402586 ]

  %242 = phi %struct.Memory* [ %2, %block_402573 ], [ %242, %block_402586 ]

  %243 = inttoptr i64 %215 to i32*

  %244 = load i32, i32* %243

  %245 = inttoptr i64 %30 to i32*

  %246 = load i32, i32* %245

  %247 = sub i32 %244, %246

  %248 = lshr i32 %247, 31

  %249 = trunc i32 %248 to i8

  %250 = lshr i32 %244, 31

  %251 = lshr i32 %246, 31

  %252 = xor i32 %251, %250

  %253 = xor i32 %248, %250

  %254 = add nuw nsw i32 %253, %252

  %255 = icmp eq i32 %254, 2

  %256 = icmp ne i8 %249, 0

  %257 = xor i1 %256, %255

  %258 = select i1 %257, i64 12, i64 66

  %259 = add i64 %241, %258

  %260 = inttoptr i64 %45 to double*

  %261 = load double, double* %260

  br i1 %257, label %block_402586, label %block_4025bc



block_4025c6:                                     ; preds = %block_402564, %block_4024a8, %block_4025bc

  %262 = phi double* [ %115, %block_402564 ], [ %278, %block_4024a8 ], [ %218, %block_4025bc ]

  %263 = phi i64 [ %308, %block_402564 ], [ %20, %block_4024a8 ], [ %20, %block_4025bc ]

  %264 = phi i64 [ %108, %block_402564 ], [ %20, %block_4024a8 ], [ %20, %block_4025bc ]

  %265 = phi %struct.Memory* [ %164, %block_402564 ], [ %2, %block_4024a8 ], [ %242, %block_4025bc ]

  %266 = add i64 %264, -8

  %267 = inttoptr i64 %266 to double*

  %268 = load double, double* %267

  store double %268, double* %46, align 1, !tbaa !1268

  store double 0.000000e+00, double* %262, align 1, !tbaa !1268

  %269 = add i64 %263, 8

  %270 = inttoptr i64 %263 to i64*

  %271 = load i64, i64* %270

  store i64 %271, i64* %15, align 8, !tbaa !1240

  %272 = inttoptr i64 %269 to i64*

  %273 = load i64, i64* %272

  store i64 %273, i64* %3, align 8, !tbaa !1240

  %274 = add i64 %263, 16

  store i64 %274, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %265



block_4024a8:                                     ; preds = %block_402480

  store i32 0, i32* %24, align 1, !tbaa !1270

  store i32 0, i32* %26, align 1, !tbaa !1270

  store i32 0, i32* %27, align 1, !tbaa !1270

  store i32 0, i32* %29, align 1, !tbaa !1270

  %275 = add i64 %19, -16

  %276 = load double, double* %46, align 1

  %277 = inttoptr i64 %275 to double*

  store double %276, double* %277

  %278 = bitcast i64* %23 to double*

  br label %block_4025c6



block_4024e1:                                     ; preds = %block_4024c9

  %279 = inttoptr i64 %30 to i32*

  %280 = load i32, i32* %279

  %281 = sub i32 1, %280

  %282 = sext i32 %281 to i64

  %283 = sext i32 %203 to i64

  %284 = mul nsw i64 %283, %282

  %285 = load i64, i64* %15, align 8

  %286 = add i64 %285, -64

  %287 = trunc i64 %284 to i32

  %288 = add i64 %208, 15

  %289 = inttoptr i64 %286 to i32*

  store i32 %287, i32* %289

  br label %block_4024f0



block_402564:                                     ; preds = %block_402510

  %290 = zext i32 %166 to i64

  store i64 %290, i64* %10, align 8, !tbaa !1240

  store double 0.000000e+00, double* %115, align 1, !tbaa !1268

  %291 = icmp ult i32 %166, %168

  %292 = zext i1 %291 to i8

  %293 = and i32 %169, 255

  %294 = tail call i32 @llvm.ctpop.i32(i32 %293) #9

  %295 = trunc i32 %294 to i8

  %296 = and i8 %295, 1

  %297 = xor i8 %296, 1

  %298 = xor i32 %168, %166

  %299 = xor i32 %298, %169

  %300 = lshr i32 %299, 4

  %301 = trunc i32 %300 to i8

  %302 = and i8 %301, 1

  %303 = icmp eq i32 %169, 0

  %304 = zext i1 %303 to i8

  %305 = zext i1 %177 to i8

  store i8 %292, i8* %51, align 1, !tbaa !1244

  store i8 %297, i8* %57, align 1, !tbaa !1258

  store i8 %302, i8* %58, align 1, !tbaa !1262

  store i8 %304, i8* %61, align 1, !tbaa !1259

  store i8 %171, i8* %64, align 1, !tbaa !1260

  store i8 %305, i8* %65, align 1, !tbaa !1261

  store double %183, double* %46, align 1

  %306 = add i64 %108, -8

  %307 = inttoptr i64 %306 to double*

  store double %183, double* %307

  %308 = load i64, i64* %14, align 8, !tbaa !1240

  br label %block_4025c6

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4005e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4005e0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %4, align 8, !tbaa !1240

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i8), i8* %11, align 1, !tbaa !1244

  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #9

  %13 = trunc i32 %12 to i8

  %14 = and i8 %13, 1

  %15 = xor i8 %14, 1

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %15, i8* %16, align 1, !tbaa !1258

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %17, align 1, !tbaa !1262

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %18, align 1, !tbaa !1259

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %19, align 1, !tbaa !1260

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %20, align 1, !tbaa !1261

  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400608, label %block_4005f1



block_4005f1:                                     ; preds = %block_4005e0

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %11, align 1, !tbaa !1244

  store i8 1, i8* %16, align 1, !tbaa !1258

  store i8 1, i8* %18, align 1, !tbaa !1259

  store i8 0, i8* %19, align 1, !tbaa !1260

  store i8 0, i8* %20, align 1, !tbaa !1261

  store i8 0, i8* %17, align 1, !tbaa !1262

  br label %block_400608



block_400608:                                     ; preds = %block_4005f1, %block_4005e0

  %21 = inttoptr i64 %9 to i64*

  %22 = load i64, i64* %21

  store i64 %22, i64* %6, align 8, !tbaa !1240

  %23 = inttoptr i64 %8 to i64*

  %24 = load i64, i64* %23

  store i64 %24, i64* %3, align 8, !tbaa !1240

  %25 = add i64 %8, 8

  store i64 %25, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401de0_dscal_r(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401de0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %14 = load i64, i64* %12, align 8

  %15 = load i64, i64* %11, align 8, !tbaa !1240

  %16 = add i64 %15, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %14, i64* %17

  %18 = add i64 %15, -12

  %19 = load i32, i32* %7, align 4

  %20 = inttoptr i64 %18 to i32*

  store i32 %19, i32* %20

  %21 = add i64 %15, -24

  %22 = bitcast %union.VectorReg* %13 to double*

  %23 = load double, double* %22, align 1

  %24 = inttoptr i64 %21 to double*

  store double %23, double* %24

  %25 = add i64 %15, -32

  %26 = load i64, i64* %10, align 8

  %27 = inttoptr i64 %25 to i64*

  store i64 %26, i64* %27

  %28 = add i64 %15, -36

  %29 = load i32, i32* %5, align 4

  %30 = inttoptr i64 %28 to i32*

  store i32 %29, i32* %30

  %31 = add i64 %15, -12

  %32 = inttoptr i64 %31 to i32*

  %33 = load i32, i32* %32

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %34, align 1, !tbaa !1244

  %35 = and i32 %33, 255

  %36 = tail call i32 @llvm.ctpop.i32(i32 %35) #9

  %37 = trunc i32 %36 to i8

  %38 = and i8 %37, 1

  %39 = xor i8 %38, 1

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %39, i8* %40, align 1, !tbaa !1258

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %41, align 1, !tbaa !1262

  %42 = icmp eq i32 %33, 0

  %43 = zext i1 %42 to i8

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %43, i8* %44, align 1, !tbaa !1259

  %45 = lshr i32 %33, 31

  %46 = trunc i32 %45 to i8

  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %46, i8* %47, align 1, !tbaa !1260

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %48, align 1, !tbaa !1261

  %49 = xor i1 %42, true

  %50 = icmp eq i8 %46, 0

  %51 = and i1 %50, %49

  %52 = select i1 %51, i64 34, i64 29

  %53 = add i64 %52, %1

  br i1 %51, label %block_401e02, label %block_401e9b.sink.split



block_401e1d:                                     ; preds = %block_401e29, %block_401e0c

  %54 = phi i64 [ %135, %block_401e0c ], [ %163, %block_401e29 ]

  %55 = phi %struct.Memory* [ %2, %block_401e0c ], [ %55, %block_401e29 ]

  %56 = inttoptr i64 %134 to i32*

  %57 = load i32, i32* %56

  %58 = inttoptr i64 %131 to i32*

  %59 = load i32, i32* %58

  %60 = sub i32 %57, %59

  %61 = lshr i32 %60, 31

  %62 = trunc i32 %61 to i8

  %63 = lshr i32 %57, 31

  %64 = lshr i32 %59, 31

  %65 = xor i32 %64, %63

  %66 = xor i32 %61, %63

  %67 = add nuw nsw i32 %66, %65

  %68 = icmp eq i32 %67, 2

  %69 = icmp ne i8 %62, 0

  %70 = xor i1 %69, %68

  %71 = select i1 %70, i64 12, i64 57

  %72 = add i64 %54, %71

  br i1 %70, label %block_401e29, label %block_401e9b.sink.split.loopexit



block_401e6e:                                     ; preds = %block_401e62

  %73 = inttoptr i64 %143 to double*

  %74 = load double, double* %73

  %75 = inttoptr i64 %145 to i64*

  %76 = load i64, i64* %75

  %77 = sext i32 %173 to i64

  %78 = shl nsw i64 %77, 3

  %79 = add i64 %78, %76

  %80 = inttoptr i64 %79 to double*

  %81 = load double, double* %80

  %82 = fmul double %74, %81

  store double %82, double* %22, align 1, !tbaa !1268

  store i64 0, i64* %144, align 1, !tbaa !1268

  store i64 %77, i64* %9, align 8, !tbaa !1240

  %83 = inttoptr i64 %79 to double*

  store double %82, double* %83

  %84 = inttoptr i64 %140 to i32*

  %85 = load i32, i32* %84

  %86 = add i32 %85, 1

  %87 = inttoptr i64 %140 to i32*

  store i32 %86, i32* %87

  %88 = add i64 %188, -12

  br label %block_401e62



block_401e9b.sink.split.loopexit:                 ; preds = %block_401e1d

  %89 = zext i32 %57 to i64

  store i64 %89, i64* %8, align 8, !tbaa !1240

  %90 = icmp ult i32 %57, %59

  %91 = zext i1 %90 to i8

  %92 = and i32 %60, 255

  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #9

  %94 = trunc i32 %93 to i8

  %95 = and i8 %94, 1

  %96 = xor i8 %95, 1

  %97 = xor i32 %59, %57

  %98 = xor i32 %97, %60

  %99 = lshr i32 %98, 4

  %100 = trunc i32 %99 to i8

  %101 = and i8 %100, 1

  %102 = icmp eq i32 %60, 0

  %103 = zext i1 %102 to i8

  %104 = zext i1 %68 to i8

  store i8 %91, i8* %34, align 1, !tbaa !1244

  store i8 %96, i8* %40, align 1, !tbaa !1258

  store i8 %101, i8* %41, align 1, !tbaa !1262

  store i8 %103, i8* %44, align 1, !tbaa !1259

  store i8 %62, i8* %47, align 1, !tbaa !1260

  store i8 %104, i8* %48, align 1, !tbaa !1261

  br label %block_401e9b.sink.split



block_401e9b.sink.split:                          ; preds = %block_401e9b.sink.split.loopexit, %block_401de0

  %105 = phi %struct.Memory* [ %2, %block_401de0 ], [ %55, %block_401e9b.sink.split.loopexit ]

  br label %block_401e9b



block_401e9b.loopexit:                            ; preds = %block_401e62

  %106 = zext i32 %173 to i64

  store i64 %106, i64* %8, align 8, !tbaa !1240

  %107 = icmp ult i32 %173, %175

  %108 = zext i1 %107 to i8

  %109 = and i32 %176, 255

  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #9

  %111 = trunc i32 %110 to i8

  %112 = and i8 %111, 1

  %113 = xor i8 %112, 1

  %114 = xor i32 %175, %173

  %115 = xor i32 %114, %176

  %116 = lshr i32 %115, 4

  %117 = trunc i32 %116 to i8

  %118 = and i8 %117, 1

  %119 = icmp eq i32 %176, 0

  %120 = zext i1 %119 to i8

  %121 = zext i1 %184 to i8

  store i8 %108, i8* %34, align 1, !tbaa !1244

  store i8 %113, i8* %40, align 1, !tbaa !1258

  store i8 %118, i8* %41, align 1, !tbaa !1262

  store i8 %120, i8* %44, align 1, !tbaa !1259

  store i8 %178, i8* %47, align 1, !tbaa !1260

  store i8 %121, i8* %48, align 1, !tbaa !1261

  br label %block_401e9b



block_401e9b:                                     ; preds = %block_401e9b.loopexit, %block_401e9b.sink.split

  %122 = phi %struct.Memory* [ %105, %block_401e9b.sink.split ], [ %171, %block_401e9b.loopexit ]

  %123 = inttoptr i64 %16 to i64*

  %124 = load i64, i64* %123

  store i64 %124, i64* %12, align 8, !tbaa !1240

  %125 = inttoptr i64 %15 to i64*

  %126 = load i64, i64* %125

  store i64 %126, i64* %3, align 8, !tbaa !1240

  %127 = add i64 %15, 8

  store i64 %127, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %122



block_401e0c:                                     ; preds = %block_401e02

  %128 = sext i32 %33 to i64

  %129 = sext i32 %165 to i64

  %130 = mul nsw i64 %129, %128

  %131 = add i64 %15, -44

  %132 = trunc i64 %130 to i32

  %133 = inttoptr i64 %131 to i32*

  store i32 %132, i32* %133

  %134 = add i64 %15, -40

  %135 = add i64 %169, 17

  %136 = inttoptr i64 %134 to i32*

  store i32 0, i32* %136

  %137 = add i64 %15, -24

  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %139 = add i64 %15, -32

  br label %block_401e1d



block_401e5b:                                     ; preds = %block_401e02

  %140 = add i64 %15, -40

  %141 = add i64 %169, 7

  %142 = inttoptr i64 %140 to i32*

  store i32 0, i32* %142

  %143 = add i64 %15, -24

  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %145 = add i64 %15, -32

  br label %block_401e62



block_401e29:                                     ; preds = %block_401e1d

  %146 = inttoptr i64 %137 to double*

  %147 = load double, double* %146

  %148 = inttoptr i64 %139 to i64*

  %149 = load i64, i64* %148

  %150 = sext i32 %57 to i64

  %151 = shl nsw i64 %150, 3

  %152 = add i64 %151, %149

  %153 = inttoptr i64 %152 to double*

  %154 = load double, double* %153

  %155 = fmul double %147, %154

  store double %155, double* %22, align 1, !tbaa !1268

  store i64 0, i64* %138, align 1, !tbaa !1268

  store i64 %150, i64* %9, align 8, !tbaa !1240

  %156 = inttoptr i64 %152 to double*

  store double %155, double* %156

  %157 = inttoptr i64 %134 to i32*

  %158 = load i32, i32* %157

  %159 = inttoptr i64 %28 to i32*

  %160 = load i32, i32* %159

  %161 = add i32 %160, %158

  %162 = inttoptr i64 %134 to i32*

  store i32 %161, i32* %162

  %163 = add i64 %72, -12

  br label %block_401e1d



block_401e02:                                     ; preds = %block_401de0

  %164 = inttoptr i64 %28 to i32*

  %165 = load i32, i32* %164

  %166 = add i32 %165, -1

  %167 = icmp eq i32 %166, 0

  %168 = select i1 %167, i64 89, i64 10

  %169 = add i64 %53, %168

  br i1 %167, label %block_401e5b, label %block_401e0c



block_401e62:                                     ; preds = %block_401e5b, %block_401e6e

  %170 = phi i64 [ %141, %block_401e5b ], [ %88, %block_401e6e ]

  %171 = phi %struct.Memory* [ %2, %block_401e5b ], [ %171, %block_401e6e ]

  %172 = inttoptr i64 %140 to i32*

  %173 = load i32, i32* %172

  %174 = inttoptr i64 %31 to i32*

  %175 = load i32, i32* %174

  %176 = sub i32 %173, %175

  %177 = lshr i32 %176, 31

  %178 = trunc i32 %177 to i8

  %179 = lshr i32 %173, 31

  %180 = lshr i32 %175, 31

  %181 = xor i32 %180, %179

  %182 = xor i32 %177, %179

  %183 = add nuw nsw i32 %182, %181

  %184 = icmp eq i32 %183, 2

  %185 = icmp ne i8 %178, 0

  %186 = xor i1 %185, %184

  %187 = select i1 %186, i64 12, i64 57

  %188 = add i64 %170, %187

  br i1 %186, label %block_401e6e, label %block_401e9b.loopexit

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400650___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400650:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)

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

  store i8 0, i8* %13, align 1, !tbaa !1262

  %14 = icmp eq i8 %5, 0

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %15, i8* %16, align 1, !tbaa !1259

  %17 = lshr i8 %5, 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %17, i8* %18, align 1, !tbaa !1260

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %19, align 1, !tbaa !1261

  %20 = select i1 %14, i64 9, i64 32

  %21 = add i64 %20, %1

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  br i1 %14, label %block_400659, label %block_400670



block_400670:                                     ; preds = %block_400650

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_400659:                                     ; preds = %block_400650

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

  %35 = tail call %struct.Memory* @sub_4005e0_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)

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



; Function Attrs: noinline

define %struct.Memory* @sub_400d50_second(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400d50:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %9 = load i64, i64* %6, align 8

  %10 = load i64, i64* %5, align 8, !tbaa !1240

  %11 = add i64 %10, -8

  %12 = inttoptr i64 %11 to i64*

  store i64 %9, i64* %12

  %13 = add i64 %1, 9

  %14 = add i64 %10, -16

  %15 = inttoptr i64 %14 to i64*

  store i64 %13, i64* %15

  %16 = tail call i64 @clock()

  store i64 %16, i64* %4, align 8, !alias.scope !1272, !noalias !1275

  %17 = bitcast [32 x %union.VectorReg]* %7 to i8*

  %18 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 56) to double*)

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %20 = sitofp i64 %16 to double

  %21 = bitcast %union.VectorReg* %8 to double*

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %23 = bitcast i64* %22 to <2 x i32>*

  %24 = load <2 x i32>, <2 x i32>* %23, align 1

  %25 = fdiv double %20, %18

  store double %25, double* %21, align 1, !tbaa !1268

  %26 = bitcast double %25 to <2 x i32>

  %27 = extractelement <2 x i32> %26, i32 0

  %28 = bitcast [32 x %union.VectorReg]* %7 to i32*

  store i32 %27, i32* %28, align 1, !tbaa !1277

  %29 = extractelement <2 x i32> %26, i32 1

  %30 = getelementptr inbounds i8, i8* %17, i64 4

  %31 = bitcast i8* %30 to i32*

  store i32 %29, i32* %31, align 1, !tbaa !1277

  %32 = extractelement <2 x i32> %24, i32 0

  %33 = bitcast i64* %19 to i32*

  store i32 %32, i32* %33, align 1, !tbaa !1277

  %34 = extractelement <2 x i32> %24, i32 1

  %35 = getelementptr inbounds i8, i8* %17, i64 12

  %36 = bitcast i8* %35 to i32*

  store i32 %34, i32* %36, align 1, !tbaa !1277

  %37 = inttoptr i64 %11 to i64*

  %38 = load i64, i64* %37

  store i64 %38, i64* %6, align 8, !tbaa !1240

  %39 = inttoptr i64 %10 to i64*

  %40 = load i64, i64* %39

  store i64 %40, i64* %3, align 8, !tbaa !1240

  %41 = add i64 %10, 8

  store i64 %41, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400970_linpack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400970:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %6 = bitcast %union.anon* %5 to i32*

  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %20 = load i64, i64* %13, align 8

  %21 = load i64, i64* %12, align 8, !tbaa !1240

  %22 = add i64 %21, -8

  %23 = inttoptr i64 %22 to i64*

  store i64 %20, i64* %23

  store i64 %22, i64* %13, align 8, !tbaa !1240

  %24 = add i64 %21, -184

  store i64 %24, i64* %12, align 8, !tbaa !1240

  %25 = icmp ult i64 %22, 176

  %26 = zext i1 %25 to i8

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %26, i8* %27, align 1, !tbaa !1244

  %28 = trunc i64 %24 to i32

  %29 = and i32 %28, 255

  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #9

  %31 = trunc i32 %30 to i8

  %32 = and i8 %31, 1

  %33 = xor i8 %32, 1

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %33, i8* %34, align 1, !tbaa !1258

  %35 = xor i64 %22, 16

  %36 = xor i64 %35, %24

  %37 = lshr i64 %36, 4

  %38 = trunc i64 %37 to i8

  %39 = and i8 %38, 1

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %39, i8* %40, align 1, !tbaa !1262

  %41 = icmp eq i64 %24, 0

  %42 = zext i1 %41 to i8

  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %42, i8* %43, align 1, !tbaa !1259

  %44 = lshr i64 %24, 63

  %45 = trunc i64 %44 to i8

  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %45, i8* %46, align 1, !tbaa !1260

  %47 = lshr i64 %22, 63

  %48 = xor i64 %44, %47

  %49 = add nuw nsw i64 %48, %47

  %50 = icmp eq i64 %49, 2

  %51 = zext i1 %50 to i8

  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %51, i8* %52, align 1, !tbaa !1261

  %53 = bitcast [32 x %union.VectorReg]* %15 to i8*

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %55 = bitcast [32 x %union.VectorReg]* %15 to i32*

  store i32 0, i32* %55, align 1, !tbaa !1270

  %56 = getelementptr inbounds i8, i8* %53, i64 4

  %57 = bitcast i8* %56 to i32*

  store i32 0, i32* %57, align 1, !tbaa !1270

  %58 = bitcast i64* %54 to i32*

  store i32 0, i32* %58, align 1, !tbaa !1270

  %59 = getelementptr inbounds i8, i8* %53, i64 12

  %60 = bitcast i8* %59 to i32*

  store i32 0, i32* %60, align 1, !tbaa !1270

  %61 = bitcast %union.VectorReg* %16 to i8*

  %62 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 8) to double*)

  %63 = bitcast %union.VectorReg* %16 to double*

  store double %62, double* %63, align 1, !tbaa !1268

  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %65 = bitcast i64* %64 to double*

  store double 0.000000e+00, double* %65, align 1, !tbaa !1268

  %66 = bitcast %union.VectorReg* %17 to i8*

  %67 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 16) to double*)

  %68 = bitcast %union.VectorReg* %17 to double*

  store double %67, double* %68, align 1, !tbaa !1268

  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %70 = bitcast i64* %69 to double*

  store double 0.000000e+00, double* %70, align 1, !tbaa !1268

  %71 = add i64 %21, -24

  %72 = load i64, i64* %11, align 8

  %73 = inttoptr i64 %71 to i64*

  store i64 %72, i64* %73

  %74 = add i64 %21, -28

  %75 = load i32, i32* %6, align 4

  %76 = inttoptr i64 %74 to i32*

  store i32 %75, i32* %76

  %77 = inttoptr i64 %74 to i32*

  %78 = load i32, i32* %77

  %79 = add i64 %21, -132

  %80 = inttoptr i64 %79 to i32*

  store i32 %78, i32* %80

  %81 = inttoptr i64 %74 to i32*

  %82 = load i32, i32* %81

  %83 = zext i32 %82 to i64

  %84 = add i64 %21, -156

  %85 = inttoptr i64 %84 to i32*

  store i32 2, i32* %85

  store i64 %83, i64* %7, align 8, !tbaa !1240

  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %87 = sext i32 %82 to i64

  %88 = lshr i64 %87, 32

  store i64 %88, i64* %86, align 8, !tbaa !1240

  %89 = load i64, i64* %13, align 8

  %90 = add i64 %89, -148

  %91 = inttoptr i64 %90 to i32*

  %92 = load i32, i32* %91

  %93 = zext i32 %92 to i64

  store i64 %93, i64* %10, align 8, !tbaa !1240

  %94 = add i64 %1, 68

  store i64 %94, i64* %3, align 8

  %95 = sext i32 %92 to i64

  %96 = shl nuw i64 %88, 32

  %97 = or i64 %96, %83

  %98 = sdiv i64 %97, %95

  %99 = shl i64 %98, 32

  %100 = ashr exact i64 %99, 32

  %101 = icmp eq i64 %98, %100

  br i1 %101, label %112, label %102



; <label>:102:                                    ; preds = %block_400970

  %103 = bitcast %union.anon* %4 to i32*

  %104 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %94, %struct.Memory* %2) #12

  %105 = load i64, i64* %13, align 8

  %106 = load i32, i32* %103, align 4

  %107 = load i64, i64* %3, align 8

  %108 = bitcast %union.VectorReg* %16 to <2 x i32>*

  %109 = load <2 x i32>, <2 x i32>* %108, align 1

  %110 = bitcast i64* %64 to <2 x i32>*

  %111 = load <2 x i32>, <2 x i32>* %110, align 1

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:112:                                    ; preds = %block_400970

  %113 = bitcast double %62 to <2 x i32>

  %114 = srem i64 %97, %95

  %115 = and i64 %114, 4294967295

  store i64 %115, i64* %9, align 8, !tbaa !1240

  %116 = trunc i64 %98 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %112, %102

  %117 = phi <2 x i32> [ %111, %102 ], [ zeroinitializer, %112 ]

  %118 = phi <2 x i32> [ %109, %102 ], [ %113, %112 ]

  %119 = phi i64 [ %107, %102 ], [ %94, %112 ]

  %120 = phi i32 [ %106, %102 ], [ %116, %112 ]

  %121 = phi i64 [ %105, %102 ], [ %89, %112 ]

  %122 = phi %struct.Memory* [ %104, %102 ], [ %2, %112 ]

  %123 = add i64 %121, -116

  %124 = inttoptr i64 %123 to i32*

  store i32 %120, i32* %124

  %125 = add i64 %121, -20

  %126 = inttoptr i64 %125 to i32*

  %127 = load i32, i32* %126

  %128 = sext i32 %127 to i64

  %129 = mul nsw i64 %128, %128

  %130 = add i64 %121, -144

  %131 = inttoptr i64 %130 to i64*

  store i64 %129, i64* %131

  %132 = inttoptr i64 %123 to i32*

  %133 = load i32, i32* %132

  %134 = sitofp i32 %133 to double

  %135 = bitcast %union.VectorReg* %18 to double*

  %136 = bitcast %union.VectorReg* %19 to i8*

  %137 = extractelement <2 x i32> %118, i32 0

  %138 = bitcast %union.VectorReg* %19 to i32*

  store i32 %137, i32* %138, align 1, !tbaa !1277

  %139 = extractelement <2 x i32> %118, i32 1

  %140 = getelementptr inbounds i8, i8* %136, i64 4

  %141 = bitcast i8* %140 to i32*

  store i32 %139, i32* %141, align 1, !tbaa !1277

  %142 = extractelement <2 x i32> %117, i32 0

  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %144 = bitcast i64* %143 to i32*

  store i32 %142, i32* %144, align 1, !tbaa !1277

  %145 = extractelement <2 x i32> %117, i32 1

  %146 = getelementptr inbounds i8, i8* %136, i64 12

  %147 = bitcast i8* %146 to i32*

  store i32 %145, i32* %147, align 1, !tbaa !1277

  %148 = bitcast %union.VectorReg* %19 to double*

  %149 = load double, double* %148, align 1

  %150 = fmul double %149, %134

  %151 = fmul double %134, %150

  %152 = load i64, i64* %13, align 8

  %153 = add i64 %152, -116

  %154 = inttoptr i64 %153 to i32*

  %155 = load i32, i32* %154

  %156 = sitofp i32 %155 to double

  store double %156, double* %135, align 1, !tbaa !1268

  %157 = fmul double %156, %151

  %158 = load double, double* %68, align 1

  %159 = fdiv double %157, %158

  %160 = load double, double* %63, align 1

  %161 = fmul double %156, %160

  store double %156, double* %68, align 1, !tbaa !1268

  %162 = fmul double %156, %161

  store double %162, double* %63, align 1, !tbaa !1268

  %163 = fadd double %162, %159

  store double %163, double* %148, align 1, !tbaa !1268

  %164 = add i64 %152, -104

  %165 = inttoptr i64 %164 to double*

  store double %163, double* %165

  %166 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 8) to i64*)

  %167 = add i64 %152, -32

  %168 = inttoptr i64 %167 to i64*

  store i64 %166, i64* %168

  %169 = inttoptr i64 %167 to i64*

  %170 = load i64, i64* %169

  %171 = add i64 %152, -144

  %172 = inttoptr i64 %171 to i64*

  %173 = load i64, i64* %172

  %174 = shl i64 %173, 3

  %175 = add i64 %174, %170

  %176 = load i64, i64* %13, align 8

  %177 = add i64 %176, -40

  %178 = inttoptr i64 %177 to i64*

  store i64 %175, i64* %178

  %179 = inttoptr i64 %177 to i64*

  %180 = load i64, i64* %179

  %181 = add i64 %176, -20

  %182 = inttoptr i64 %181 to i32*

  %183 = load i32, i32* %182

  %184 = sext i32 %183 to i64

  %185 = shl nsw i64 %184, 3

  store i64 %185, i64* %11, align 8, !tbaa !1240

  %186 = add i64 %185, %180

  store i64 %186, i64* %8, align 8, !tbaa !1240

  %187 = icmp ult i64 %186, %180

  %188 = icmp ult i64 %186, %185

  %189 = or i1 %187, %188

  %190 = zext i1 %189 to i8

  store i8 %190, i8* %27, align 1, !tbaa !1244

  %191 = trunc i64 %186 to i32

  %192 = and i32 %191, 255

  %193 = tail call i32 @llvm.ctpop.i32(i32 %192) #9

  %194 = trunc i32 %193 to i8

  %195 = and i8 %194, 1

  %196 = xor i8 %195, 1

  store i8 %196, i8* %34, align 1, !tbaa !1258

  %197 = xor i64 %185, %180

  %198 = xor i64 %197, %186

  %199 = lshr i64 %198, 4

  %200 = trunc i64 %199 to i8

  %201 = and i8 %200, 1

  store i8 %201, i8* %40, align 1, !tbaa !1262

  %202 = icmp eq i64 %186, 0

  %203 = zext i1 %202 to i8

  store i8 %203, i8* %43, align 1, !tbaa !1259

  %204 = lshr i64 %186, 63

  %205 = trunc i64 %204 to i8

  store i8 %205, i8* %46, align 1, !tbaa !1260

  %206 = lshr i64 %180, 63

  %207 = lshr i64 %184, 60

  %208 = and i64 %207, 1

  %209 = xor i64 %204, %206

  %210 = xor i64 %204, %208

  %211 = add nuw nsw i64 %209, %210

  %212 = icmp eq i64 %211, 2

  %213 = zext i1 %212 to i8

  store i8 %213, i8* %52, align 1, !tbaa !1261

  %214 = add i64 %176, -112

  %215 = inttoptr i64 %214 to i64*

  store i64 %186, i64* %215

  %216 = add i64 %176, -72

  %217 = bitcast [32 x %union.VectorReg]* %15 to double*

  %218 = load double, double* %217, align 1

  %219 = inttoptr i64 %216 to double*

  store double %218, double* %219

  %220 = add i64 %176, -80

  %221 = inttoptr i64 %220 to double*

  store double %218, double* %221

  %222 = add i64 %119, 924

  %223 = add i64 %119, 161

  %224 = load i64, i64* %12, align 8, !tbaa !1240

  %225 = add i64 %224, -8

  %226 = inttoptr i64 %225 to i64*

  store i64 %223, i64* %226

  store i64 %225, i64* %12, align 8, !tbaa !1240

  %227 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %222, %struct.Memory* %122)

  %228 = load i64, i64* %13, align 8

  %229 = add i64 %228, -88

  %230 = load i64, i64* %3, align 8

  %231 = load double, double* %217, align 1

  %232 = inttoptr i64 %229 to double*

  store double %231, double* %232

  %233 = add i64 %228, -136

  %234 = add i64 %230, 16

  %235 = inttoptr i64 %233 to i64*

  store i64 0, i64* %235

  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  br label %block_400a65



block_400cbe:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %237 = load i64, i64* %13, align 8

  %238 = add i64 %237, -96

  %239 = add i64 %690, 8

  %240 = load double, double* %217, align 1

  %241 = inttoptr i64 %238 to double*

  store double %240, double* %241

  br label %block_400cc6



block_400d3a:                                     ; preds = %block_400cc6, %block_400c2a

  %242 = phi double* [ %404, %block_400cc6 ], [ %503, %block_400c2a ]

  %243 = phi i64 [ %944, %block_400cc6 ], [ %505, %block_400c2a ]

  %244 = phi %struct.Memory* [ %827, %block_400cc6 ], [ %504, %block_400c2a ]

  %245 = add i64 %243, -8

  %246 = inttoptr i64 %245 to double*

  %247 = load double, double* %246

  store double %247, double* %217, align 1, !tbaa !1268

  store double 0.000000e+00, double* %242, align 1, !tbaa !1268

  %248 = load i64, i64* %12, align 8

  %249 = add i64 %248, 176

  %250 = icmp ugt i64 %248, -177

  %251 = zext i1 %250 to i8

  store i8 %251, i8* %27, align 1, !tbaa !1244

  %252 = trunc i64 %249 to i32

  %253 = and i32 %252, 255

  %254 = tail call i32 @llvm.ctpop.i32(i32 %253) #9

  %255 = trunc i32 %254 to i8

  %256 = and i8 %255, 1

  %257 = xor i8 %256, 1

  store i8 %257, i8* %34, align 1, !tbaa !1258

  %258 = xor i64 %248, 16

  %259 = xor i64 %258, %249

  %260 = lshr i64 %259, 4

  %261 = trunc i64 %260 to i8

  %262 = and i8 %261, 1

  store i8 %262, i8* %40, align 1, !tbaa !1262

  %263 = icmp eq i64 %249, 0

  %264 = zext i1 %263 to i8

  store i8 %264, i8* %43, align 1, !tbaa !1259

  %265 = lshr i64 %249, 63

  %266 = trunc i64 %265 to i8

  store i8 %266, i8* %46, align 1, !tbaa !1260

  %267 = lshr i64 %248, 63

  %268 = xor i64 %265, %267

  %269 = add nuw nsw i64 %268, %265

  %270 = icmp eq i64 %269, 2

  %271 = zext i1 %270 to i8

  store i8 %271, i8* %52, align 1, !tbaa !1261

  %272 = add i64 %248, 184

  %273 = inttoptr i64 %249 to i64*

  %274 = load i64, i64* %273

  store i64 %274, i64* %13, align 8, !tbaa !1240

  %275 = inttoptr i64 %272 to i64*

  %276 = load i64, i64* %275

  store i64 %276, i64* %3, align 8, !tbaa !1240

  %277 = add i64 %248, 192

  store i64 %277, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %244



block_400c9a:                                     ; preds = %block_400c92, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_400c9a_crit_edge

  %278 = phi i64 [ %397, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_400c9a_crit_edge ], [ %398, %block_400c92 ]

  %279 = phi i64 [ %396, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_400c9a_crit_edge ], [ %400, %block_400c92 ]

  %280 = phi %struct.Memory* [ %392, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_400c9a_crit_edge ], [ %392, %block_400c92 ]

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %281 = add i64 %278, -72

  %282 = add i64 %279, 8

  store i64 %282, i64* %3, align 8

  %283 = load double, double* %217, align 1

  %284 = inttoptr i64 %281 to double*

  %285 = load double, double* %284

  %286 = fcmp uno double %283, %285

  br i1 %286, label %287, label %300



; <label>:287:                                    ; preds = %block_400c9a

  %288 = fadd double %283, %285

  %289 = bitcast double %288 to i64

  %290 = and i64 %289, 9221120237041090560

  %291 = icmp eq i64 %290, 9218868437227405312

  %292 = and i64 %289, 2251799813685247

  %293 = icmp ne i64 %292, 0

  %294 = and i1 %291, %293

  br i1 %294, label %295, label %306



; <label>:295:                                    ; preds = %287

  %296 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %282, %struct.Memory* %280) #12

  %297 = load i64, i64* %3, align 8

  %298 = load i8, i8* %27, align 1, !tbaa !1244

  %299 = load i8, i8* %43, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



; <label>:300:                                    ; preds = %block_400c9a

  %301 = fcmp ogt double %283, %285

  br i1 %301, label %306, label %302



; <label>:302:                                    ; preds = %300

  %303 = fcmp olt double %283, %285

  br i1 %303, label %306, label %304



; <label>:304:                                    ; preds = %302

  %305 = fcmp oeq double %283, %285

  br i1 %305, label %306, label %310



; <label>:306:                                    ; preds = %304, %302, %300, %287

  %307 = phi i8 [ 0, %300 ], [ 0, %302 ], [ 1, %304 ], [ 1, %287 ]

  %308 = phi i8 [ 0, %300 ], [ 0, %302 ], [ 0, %304 ], [ 1, %287 ]

  %309 = phi i8 [ 0, %300 ], [ 1, %302 ], [ 0, %304 ], [ 1, %287 ]

  store i8 %307, i8* %43, align 1, !tbaa !1271

  store i8 %308, i8* %34, align 1, !tbaa !1271

  store i8 %309, i8* %27, align 1, !tbaa !1271

  br label %310



; <label>:310:                                    ; preds = %306, %304

  %311 = phi i8 [ %307, %306 ], [ %389, %304 ]

  %312 = phi i8 [ %309, %306 ], [ %390, %304 ]

  store i8 0, i8* %52, align 1, !tbaa !1271

  store i8 0, i8* %46, align 1, !tbaa !1271

  store i8 0, i8* %40, align 1, !tbaa !1271

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %310, %295

  %313 = phi i8 [ %299, %295 ], [ %311, %310 ]

  %314 = phi i8 [ %298, %295 ], [ %312, %310 ]

  %315 = phi i64 [ %297, %295 ], [ %282, %310 ]

  %316 = phi %struct.Memory* [ %296, %295 ], [ %280, %310 ]

  %317 = or i8 %313, %314

  %318 = icmp ne i8 %317, 0

  %319 = select i1 %318, i64 14, i64 6

  %320 = add i64 %315, %319

  br i1 %318, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400cb0_crit_edge, label %block_400ca8



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400cb0_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  %321 = load i64, i64* %13, align 8

  br label %block_400cb0



block_400c37:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %322 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 40) to double*)

  %323 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 8) to double*)

  %324 = load i64, i64* %13, align 8

  %325 = add i64 %324, -16

  %326 = inttoptr i64 %325 to i64*

  %327 = load i64, i64* %326

  store i64 %327, i64* %7, align 8, !tbaa !1240

  %328 = sitofp i64 %327 to double

  %329 = fmul double %328, %323

  %330 = add i64 %324, -104

  %331 = inttoptr i64 %330 to double*

  %332 = load double, double* %331

  %333 = fmul double %329, %332

  %334 = add i64 %324, -80

  %335 = inttoptr i64 %334 to double*

  %336 = load double, double* %335

  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %338 = bitcast i64* %337 to double*

  %339 = add i64 %324, -72

  %340 = inttoptr i64 %339 to double*

  %341 = load double, double* %340

  %342 = fadd double %336, %341

  store double %342, double* %135, align 1, !tbaa !1268

  store i64 0, i64* %337, align 1, !tbaa !1268

  %343 = fmul double %322, %342

  %344 = fdiv double %333, %343

  store double %344, double* %68, align 1, !tbaa !1268

  store i64 0, i64* %69, align 1, !tbaa !1268

  %345 = add i64 %324, -64

  %346 = inttoptr i64 %345 to double*

  store double %344, double* %346

  %347 = add i64 %324, -88

  %348 = inttoptr i64 %347 to double*

  %349 = load double, double* %348

  %350 = inttoptr i64 %334 to double*

  %351 = load double, double* %350

  %352 = fsub double %349, %351

  %353 = inttoptr i64 %339 to double*

  %354 = load double, double* %353

  %355 = fsub double %352, %354

  store double %355, double* %63, align 1, !tbaa !1268

  store i64 0, i64* %64, align 1, !tbaa !1268

  %356 = add i64 %324, -96

  %357 = inttoptr i64 %356 to double*

  store double %355, double* %357

  %358 = add i64 %448, 85

  store i64 %358, i64* %3, align 8

  %359 = load double, double* %217, align 1

  %360 = inttoptr i64 %334 to double*

  %361 = load double, double* %360

  %362 = fcmp uno double %359, %361

  br i1 %362, label %363, label %376



; <label>:363:                                    ; preds = %block_400c37

  %364 = fadd double %359, %361

  %365 = bitcast double %364 to i64

  %366 = and i64 %365, 9221120237041090560

  %367 = icmp eq i64 %366, 9218868437227405312

  %368 = and i64 %365, 2251799813685247

  %369 = icmp ne i64 %368, 0

  %370 = and i1 %367, %369

  br i1 %370, label %371, label %382



; <label>:371:                                    ; preds = %363

  %372 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %358, %struct.Memory* %444) #12

  %373 = load i64, i64* %3, align 8

  %374 = load i8, i8* %27, align 1, !tbaa !1244

  %375 = load i8, i8* %43, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1



; <label>:376:                                    ; preds = %block_400c37

  %377 = fcmp ogt double %359, %361

  br i1 %377, label %382, label %378



; <label>:378:                                    ; preds = %376

  %379 = fcmp olt double %359, %361

  br i1 %379, label %382, label %380



; <label>:380:                                    ; preds = %378

  %381 = fcmp oeq double %359, %361

  br i1 %381, label %382, label %386



; <label>:382:                                    ; preds = %380, %378, %376, %363

  %383 = phi i8 [ 0, %376 ], [ 0, %378 ], [ 1, %380 ], [ 1, %363 ]

  %384 = phi i8 [ 0, %376 ], [ 0, %378 ], [ 0, %380 ], [ 1, %363 ]

  %385 = phi i8 [ 0, %376 ], [ 1, %378 ], [ 0, %380 ], [ 1, %363 ]

  store i8 %383, i8* %43, align 1, !tbaa !1271

  store i8 %384, i8* %34, align 1, !tbaa !1271

  store i8 %385, i8* %27, align 1, !tbaa !1271

  br label %386



; <label>:386:                                    ; preds = %382, %380

  %387 = phi i8 [ %383, %382 ], [ %441, %380 ]

  %388 = phi i8 [ %385, %382 ], [ %442, %380 ]

  store i8 0, i8* %52, align 1, !tbaa !1271

  store i8 0, i8* %46, align 1, !tbaa !1271

  store i8 0, i8* %40, align 1, !tbaa !1271

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %386, %371

  %389 = phi i8 [ %375, %371 ], [ %387, %386 ]

  %390 = phi i8 [ %374, %371 ], [ %388, %386 ]

  %391 = phi i64 [ %373, %371 ], [ %358, %386 ]

  %392 = phi %struct.Memory* [ %372, %371 ], [ %444, %386 ]

  %393 = or i8 %389, %390

  %394 = icmp ne i8 %393, 0

  %395 = select i1 %394, i64 14, i64 6

  %396 = add i64 %391, %395

  br i1 %394, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_400c9a_crit_edge, label %block_400c92



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_400c9a_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

  %397 = load i64, i64* %13, align 8

  br label %block_400c9a



block_400c92:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %398 = load i64, i64* %13, align 8

  %399 = add i64 %398, -80

  %400 = add i64 %396, 8

  %401 = load double, double* %217, align 1

  %402 = inttoptr i64 %399 to double*

  store double %401, double* %402

  br label %block_400c9a



block_400c0e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

  %403 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 32) to double*)

  store double %403, double* %217, align 1, !tbaa !1268

  %404 = bitcast i64* %54 to double*

  store double 0.000000e+00, double* %404, align 1, !tbaa !1268

  %405 = load i64, i64* %13, align 8

  %406 = add i64 %405, -80

  %407 = inttoptr i64 %406 to double*

  %408 = load double, double* %407

  %409 = add i64 %405, -72

  %410 = inttoptr i64 %409 to double*

  %411 = load double, double* %410

  %412 = fadd double %408, %411

  store double %412, double* %63, align 1, !tbaa !1268

  store i64 0, i64* %64, align 1, !tbaa !1268

  %413 = add i64 %498, 22

  store i64 %413, i64* %3, align 8

  %414 = fcmp uno double %403, %412

  br i1 %414, label %415, label %428



; <label>:415:                                    ; preds = %block_400c0e

  %416 = fadd double %412, %403

  %417 = bitcast double %416 to i64

  %418 = and i64 %417, 9221120237041090560

  %419 = icmp eq i64 %418, 9218868437227405312

  %420 = and i64 %417, 2251799813685247

  %421 = icmp ne i64 %420, 0

  %422 = and i1 %419, %421

  br i1 %422, label %423, label %434



; <label>:423:                                    ; preds = %415

  %424 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %413, %struct.Memory* %491) #12

  %425 = load i64, i64* %3, align 8

  %426 = load i8, i8* %27, align 1, !tbaa !1244

  %427 = load i8, i8* %43, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:428:                                    ; preds = %block_400c0e

  %429 = fcmp ogt double %403, %412

  br i1 %429, label %434, label %430



; <label>:430:                                    ; preds = %428

  %431 = fcmp olt double %403, %412

  br i1 %431, label %434, label %432



; <label>:432:                                    ; preds = %430

  %433 = fcmp oeq double %403, %412

  br i1 %433, label %434, label %438



; <label>:434:                                    ; preds = %432, %430, %428, %415

  %435 = phi i8 [ 0, %428 ], [ 0, %430 ], [ 1, %432 ], [ 1, %415 ]

  %436 = phi i8 [ 0, %428 ], [ 0, %430 ], [ 0, %432 ], [ 1, %415 ]

  %437 = phi i8 [ 0, %428 ], [ 1, %430 ], [ 0, %432 ], [ 1, %415 ]

  store i8 %435, i8* %43, align 1, !tbaa !1271

  store i8 %436, i8* %34, align 1, !tbaa !1271

  store i8 %437, i8* %27, align 1, !tbaa !1271

  br label %438



; <label>:438:                                    ; preds = %434, %432

  %439 = phi i8 [ %435, %434 ], [ %495, %432 ]

  %440 = phi i8 [ %437, %434 ], [ %494, %432 ]

  store i8 0, i8* %52, align 1, !tbaa !1271

  store i8 0, i8* %46, align 1, !tbaa !1271

  store i8 0, i8* %40, align 1, !tbaa !1271

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %438, %423

  %441 = phi i8 [ %427, %423 ], [ %439, %438 ]

  %442 = phi i8 [ %426, %423 ], [ %440, %438 ]

  %443 = phi i64 [ %425, %423 ], [ %413, %438 ]

  %444 = phi %struct.Memory* [ %424, %423 ], [ %491, %438 ]

  %445 = or i8 %441, %442

  %446 = icmp ne i8 %445, 0

  %447 = select i1 %446, i64 19, i64 6

  %448 = add i64 %443, %447

  br i1 %446, label %block_400c37, label %block_400c2a



block_400bec:                                     ; preds = %block_400b36

  %449 = add i64 %990, 356

  %450 = add i64 %990, 5

  %451 = load i64, i64* %12, align 8, !tbaa !1240

  %452 = add i64 %451, -8

  %453 = inttoptr i64 %452 to i64*

  store i64 %450, i64* %453

  store i64 %452, i64* %12, align 8, !tbaa !1240

  %454 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %449, %struct.Memory* %955)

  %455 = load i64, i64* %3, align 8

  %456 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 24) to double*)

  store double %456, double* %63, align 1, !tbaa !1268

  store double 0.000000e+00, double* %65, align 1, !tbaa !1268

  %457 = load i64, i64* %13, align 8

  %458 = add i64 %457, -88

  %459 = load double, double* %217, align 1

  %460 = inttoptr i64 %458 to double*

  %461 = load double, double* %460

  %462 = fsub double %459, %461

  store double %462, double* %217, align 1, !tbaa !1268

  %463 = inttoptr i64 %458 to double*

  store double %462, double* %463

  %464 = add i64 %455, 23

  store i64 %464, i64* %3, align 8

  %465 = inttoptr i64 %458 to double*

  %466 = load double, double* %465

  %467 = fcmp uno double %456, %466

  br i1 %467, label %468, label %479



; <label>:468:                                    ; preds = %block_400bec

  %469 = fadd double %456, %466

  %470 = bitcast double %469 to i64

  %471 = and i64 %470, 9221120237041090560

  %472 = icmp eq i64 %471, 9218868437227405312

  %473 = and i64 %470, 2251799813685247

  %474 = icmp ne i64 %473, 0

  %475 = and i1 %472, %474

  br i1 %475, label %476, label %485



; <label>:476:                                    ; preds = %468

  %477 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %464, %struct.Memory* %454) #12

  %478 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2



; <label>:479:                                    ; preds = %block_400bec

  %480 = fcmp ogt double %456, %466

  br i1 %480, label %485, label %481



; <label>:481:                                    ; preds = %479

  %482 = fcmp olt double %456, %466

  br i1 %482, label %485, label %483



; <label>:483:                                    ; preds = %481

  %484 = fcmp oeq double %456, %466

  br i1 %484, label %485, label %489



; <label>:485:                                    ; preds = %483, %481, %479, %468

  %486 = phi i8 [ 0, %479 ], [ 0, %481 ], [ 1, %483 ], [ 1, %468 ]

  %487 = phi i8 [ 0, %479 ], [ 0, %481 ], [ 0, %483 ], [ 1, %468 ]

  %488 = phi i8 [ 0, %479 ], [ 1, %481 ], [ 0, %483 ], [ 1, %468 ]

  store i8 %486, i8* %43, align 1, !tbaa !1271

  store i8 %487, i8* %34, align 1, !tbaa !1271

  store i8 %488, i8* %27, align 1, !tbaa !1271

  br label %489



; <label>:489:                                    ; preds = %485, %483

  store i8 0, i8* %52, align 1, !tbaa !1271

  store i8 0, i8* %46, align 1, !tbaa !1271

  store i8 0, i8* %40, align 1, !tbaa !1271

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2: ; preds = %489, %476

  %490 = phi i64 [ %478, %476 ], [ %464, %489 ]

  %491 = phi %struct.Memory* [ %477, %476 ], [ %454, %489 ]

  %492 = add i64 %490, 34

  %493 = add i64 %490, 6

  %494 = load i8, i8* %27, align 1, !tbaa !1244

  %495 = load i8, i8* %43, align 1, !tbaa !1259

  %496 = or i8 %495, %494

  %497 = icmp eq i8 %496, 0

  %498 = select i1 %497, i64 %492, i64 %493

  br i1 %497, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2.block_400c2a_crit_edge, label %block_400c0e



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2.block_400c2a_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

  %499 = bitcast i64* %54 to double*

  br label %block_400c2a



block_400b2b:                                     ; preds = %block_400a65

  %500 = bitcast %union.VectorReg* %18 to i8*

  %501 = add i64 %1012, 11

  %502 = inttoptr i64 %994 to i64*

  store i64 0, i64* %502

  br label %block_400b36



block_400c2a:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2.block_400c2a_crit_edge, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %503 = phi double* [ %499, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2.block_400c2a_crit_edge ], [ %404, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]

  %504 = phi %struct.Memory* [ %491, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2.block_400c2a_crit_edge ], [ %444, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %505 = load i64, i64* %13, align 8

  %506 = add i64 %505, -8

  %507 = load double, double* %217, align 1

  %508 = inttoptr i64 %506 to double*

  store double %507, double* %508

  br label %block_400d3a



block_400ca8:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %509 = load i64, i64* %13, align 8

  %510 = add i64 %509, -72

  %511 = add i64 %320, 8

  %512 = load double, double* %217, align 1

  %513 = inttoptr i64 %510 to double*

  store double %512, double* %513

  br label %block_400cb0



block_400a76:                                     ; preds = %block_400a65

  %514 = add i64 %992, -48

  store i64 %514, i64* %14, align 8, !tbaa !1240

  %515 = add i64 %992, -32

  %516 = inttoptr i64 %515 to i64*

  %517 = load i64, i64* %516

  store i64 %517, i64* %11, align 8, !tbaa !1240

  %518 = add i64 %992, -124

  %519 = inttoptr i64 %518 to i32*

  %520 = load i32, i32* %519

  %521 = zext i32 %520 to i64

  store i64 %521, i64* %10, align 8, !tbaa !1240

  %522 = add i64 %992, -116

  %523 = inttoptr i64 %522 to i32*

  %524 = load i32, i32* %523

  %525 = zext i32 %524 to i64

  store i64 %525, i64* %9, align 8, !tbaa !1240

  %526 = add i64 %992, -40

  %527 = inttoptr i64 %526 to i64*

  %528 = load i64, i64* %527

  store i64 %528, i64* %8, align 8, !tbaa !1240

  %529 = add i64 %1012, 762

  %530 = add i64 %1012, 23

  %531 = load i64, i64* %12, align 8, !tbaa !1240

  %532 = add i64 %531, -8

  %533 = inttoptr i64 %532 to i64*

  store i64 %530, i64* %533

  store i64 %532, i64* %12, align 8, !tbaa !1240

  %534 = tail call %struct.Memory* @sub_400d70_matgen(%struct.State* nonnull %0, i64 %529, %struct.Memory* %993)

  %535 = load i64, i64* %3, align 8

  %536 = add i64 %535, 707

  %537 = add i64 %535, 5

  %538 = load i64, i64* %12, align 8, !tbaa !1240

  %539 = add i64 %538, -8

  %540 = inttoptr i64 %539 to i64*

  store i64 %537, i64* %540

  store i64 %539, i64* %12, align 8, !tbaa !1240

  %541 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %536, %struct.Memory* %534)

  %542 = load i64, i64* %13, align 8

  %543 = add i64 %542, -120

  %544 = load i64, i64* %3, align 8

  store i64 %543, i64* %14, align 8, !tbaa !1240

  store i64 1, i64* %236, align 8, !tbaa !1240

  %545 = add i64 %542, -56

  %546 = load double, double* %217, align 1

  %547 = inttoptr i64 %545 to double*

  store double %546, double* %547

  %548 = add i64 %542, -32

  %549 = inttoptr i64 %548 to i64*

  %550 = load i64, i64* %549

  store i64 %550, i64* %11, align 8, !tbaa !1240

  %551 = add i64 %542, -124

  %552 = inttoptr i64 %551 to i32*

  %553 = load i32, i32* %552

  %554 = zext i32 %553 to i64

  store i64 %554, i64* %10, align 8, !tbaa !1240

  %555 = add i64 %542, -116

  %556 = inttoptr i64 %555 to i32*

  %557 = load i32, i32* %556

  %558 = zext i32 %557 to i64

  store i64 %558, i64* %9, align 8, !tbaa !1240

  %559 = add i64 %542, -112

  %560 = inttoptr i64 %559 to i64*

  %561 = load i64, i64* %560

  store i64 %561, i64* %8, align 8, !tbaa !1240

  %562 = add i64 %544, 1198

  %563 = add i64 %544, 34

  %564 = load i64, i64* %12, align 8, !tbaa !1240

  %565 = add i64 %564, -8

  %566 = inttoptr i64 %565 to i64*

  store i64 %563, i64* %566

  store i64 %565, i64* %12, align 8, !tbaa !1240

  %567 = tail call %struct.Memory* @sub_400f40_dgefa(%struct.State* nonnull %0, i64 %562, %struct.Memory* %541)

  %568 = load i64, i64* %3, align 8

  %569 = add i64 %568, 668

  %570 = add i64 %568, 5

  %571 = load i64, i64* %12, align 8, !tbaa !1240

  %572 = add i64 %571, -8

  %573 = inttoptr i64 %572 to i64*

  store i64 %570, i64* %573

  store i64 %572, i64* %12, align 8, !tbaa !1240

  %574 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %569, %struct.Memory* %567)

  %575 = load i64, i64* %13, align 8

  %576 = add i64 %575, -56

  %577 = load i64, i64* %3, align 8

  %578 = load double, double* %217, align 1

  %579 = inttoptr i64 %576 to double*

  %580 = load double, double* %579

  %581 = fsub double %578, %580

  %582 = add i64 %575, -80

  %583 = inttoptr i64 %582 to double*

  %584 = load double, double* %583

  %585 = fadd double %581, %584

  store double %585, double* %217, align 1, !tbaa !1268

  %586 = inttoptr i64 %582 to double*

  store double %585, double* %586

  %587 = add i64 %577, 663

  %588 = add i64 %577, 20

  %589 = load i64, i64* %12, align 8, !tbaa !1240

  %590 = add i64 %589, -8

  %591 = inttoptr i64 %590 to i64*

  store i64 %588, i64* %591

  store i64 %590, i64* %12, align 8, !tbaa !1240

  %592 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %587, %struct.Memory* %574)

  %593 = load i64, i64* %3, align 8

  store i64 0, i64* %236, align 8, !tbaa !1240

  %594 = load i64, i64* %13, align 8

  %595 = add i64 %594, -56

  %596 = load double, double* %217, align 1

  %597 = inttoptr i64 %595 to double*

  store double %596, double* %597

  %598 = add i64 %594, -32

  %599 = inttoptr i64 %598 to i64*

  %600 = load i64, i64* %599

  store i64 %600, i64* %11, align 8, !tbaa !1240

  %601 = add i64 %594, -124

  %602 = inttoptr i64 %601 to i32*

  %603 = load i32, i32* %602

  %604 = zext i32 %603 to i64

  store i64 %604, i64* %10, align 8, !tbaa !1240

  %605 = add i64 %594, -116

  %606 = inttoptr i64 %605 to i32*

  %607 = load i32, i32* %606

  %608 = zext i32 %607 to i64

  %609 = add i64 %594, -112

  %610 = inttoptr i64 %609 to i64*

  %611 = load i64, i64* %610

  store i64 %611, i64* %8, align 8, !tbaa !1240

  %612 = add i64 %594, -40

  %613 = inttoptr i64 %612 to i64*

  %614 = load i64, i64* %613

  store i64 %614, i64* %14, align 8, !tbaa !1240

  %615 = add i64 %594, -152

  %616 = inttoptr i64 %615 to i32*

  store i32 1, i32* %616

  store i64 %608, i64* %9, align 8, !tbaa !1240

  %617 = load i64, i64* %12, align 8

  %618 = inttoptr i64 %617 to i32*

  store i32 1, i32* %618

  %619 = add i64 %593, 2659

  %620 = add i64 %593, 51

  %621 = add i64 %617, -8

  %622 = inttoptr i64 %621 to i64*

  store i64 %620, i64* %622

  store i64 %621, i64* %12, align 8, !tbaa !1240

  %623 = tail call %struct.Memory* @sub_401530_dgesl(%struct.State* nonnull %0, i64 %619, %struct.Memory* %592)

  %624 = load i64, i64* %3, align 8

  %625 = add i64 %624, 592

  %626 = add i64 %624, 5

  %627 = load i64, i64* %12, align 8, !tbaa !1240

  %628 = add i64 %627, -8

  %629 = inttoptr i64 %628 to i64*

  store i64 %626, i64* %629

  store i64 %628, i64* %12, align 8, !tbaa !1240

  %630 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %625, %struct.Memory* %623)

  %631 = load i64, i64* %13, align 8

  %632 = add i64 %631, -56

  %633 = load i64, i64* %3, align 8

  %634 = load double, double* %217, align 1

  %635 = inttoptr i64 %632 to double*

  %636 = load double, double* %635

  %637 = fsub double %634, %636

  %638 = add i64 %631, -72

  %639 = inttoptr i64 %638 to double*

  %640 = load double, double* %639

  %641 = fadd double %637, %640

  store double %641, double* %217, align 1, !tbaa !1268

  %642 = inttoptr i64 %638 to double*

  store double %641, double* %642

  %643 = add i64 %631, -136

  %644 = inttoptr i64 %643 to i64*

  %645 = load i64, i64* %644

  %646 = add i64 %645, 1

  %647 = inttoptr i64 %643 to i64*

  store i64 %646, i64* %647

  %648 = add i64 %633, -160

  br label %block_400a65



block_400cb0:                                     ; preds = %block_400ca8, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400cb0_crit_edge

  %649 = phi i64 [ %321, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400cb0_crit_edge ], [ %509, %block_400ca8 ]

  %650 = phi i64 [ %320, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400cb0_crit_edge ], [ %511, %block_400ca8 ]

  %651 = phi %struct.Memory* [ %316, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400cb0_crit_edge ], [ %316, %block_400ca8 ]

  store i32 0, i32* %55, align 1, !tbaa !1270

  store i32 0, i32* %57, align 1, !tbaa !1270

  store i32 0, i32* %58, align 1, !tbaa !1270

  store i32 0, i32* %60, align 1, !tbaa !1270

  %652 = add i64 %649, -96

  %653 = add i64 %650, 8

  store i64 %653, i64* %3, align 8

  %654 = load double, double* %217, align 1

  %655 = inttoptr i64 %652 to double*

  %656 = load double, double* %655

  %657 = fcmp uno double %654, %656

  br i1 %657, label %658, label %671



; <label>:658:                                    ; preds = %block_400cb0

  %659 = fadd double %654, %656

  %660 = bitcast double %659 to i64

  %661 = and i64 %660, 9221120237041090560

  %662 = icmp eq i64 %661, 9218868437227405312

  %663 = and i64 %660, 2251799813685247

  %664 = icmp ne i64 %663, 0

  %665 = and i1 %662, %664

  br i1 %665, label %666, label %677



; <label>:666:                                    ; preds = %658

  %667 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %653, %struct.Memory* %651) #12

  %668 = load i64, i64* %3, align 8

  %669 = load i8, i8* %27, align 1, !tbaa !1244

  %670 = load i8, i8* %43, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3



; <label>:671:                                    ; preds = %block_400cb0

  %672 = fcmp ogt double %654, %656

  br i1 %672, label %677, label %673



; <label>:673:                                    ; preds = %671

  %674 = fcmp olt double %654, %656

  br i1 %674, label %677, label %675



; <label>:675:                                    ; preds = %673

  %676 = fcmp oeq double %654, %656

  br i1 %676, label %677, label %680



; <label>:677:                                    ; preds = %675, %673, %671, %658

  %678 = phi i8 [ 0, %671 ], [ 0, %673 ], [ 1, %675 ], [ 1, %658 ]

  %679 = phi i8 [ 0, %671 ], [ 1, %673 ], [ 0, %675 ], [ 1, %658 ]

  br label %680



; <label>:680:                                    ; preds = %677, %675

  %681 = phi i8 [ %678, %677 ], [ %313, %675 ]

  %682 = phi i8 [ %679, %677 ], [ %314, %675 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3: ; preds = %680, %666

  %683 = phi i8 [ %670, %666 ], [ %681, %680 ]

  %684 = phi i8 [ %669, %666 ], [ %682, %680 ]

  %685 = phi i64 [ %668, %666 ], [ %653, %680 ]

  %686 = phi %struct.Memory* [ %667, %666 ], [ %651, %680 ]

  %687 = or i8 %683, %684

  %688 = icmp ne i8 %687, 0

  %689 = select i1 %688, i64 14, i64 6

  %690 = add i64 %685, %689

  br i1 %688, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3.block_400cc6_crit_edge, label %block_400cbe



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3.block_400cc6_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

  %691 = load i64, i64* %13, align 8

  br label %block_400cc6



block_400b47:                                     ; preds = %block_400b36

  %692 = add i64 %954, -48

  store i64 %692, i64* %14, align 8, !tbaa !1240

  %693 = add i64 %954, -32

  %694 = inttoptr i64 %693 to i64*

  %695 = load i64, i64* %694

  store i64 %695, i64* %11, align 8, !tbaa !1240

  %696 = add i64 %954, -124

  %697 = inttoptr i64 %696 to i32*

  %698 = load i32, i32* %697

  %699 = zext i32 %698 to i64

  store i64 %699, i64* %10, align 8, !tbaa !1240

  %700 = add i64 %954, -116

  %701 = inttoptr i64 %700 to i32*

  %702 = load i32, i32* %701

  %703 = zext i32 %702 to i64

  store i64 %703, i64* %9, align 8, !tbaa !1240

  %704 = add i64 %954, -40

  %705 = inttoptr i64 %704 to i64*

  %706 = load i64, i64* %705

  store i64 %706, i64* %8, align 8, !tbaa !1240

  %707 = add i64 %990, 553

  %708 = add i64 %990, 23

  %709 = load i64, i64* %12, align 8, !tbaa !1240

  %710 = add i64 %709, -8

  %711 = inttoptr i64 %710 to i64*

  store i64 %708, i64* %711

  store i64 %710, i64* %12, align 8, !tbaa !1240

  %712 = tail call %struct.Memory* @sub_400d70_matgen(%struct.State* nonnull %0, i64 %707, %struct.Memory* %955)

  %713 = load i64, i64* %3, align 8

  %714 = add i64 %713, 498

  %715 = add i64 %713, 5

  %716 = load i64, i64* %12, align 8, !tbaa !1240

  %717 = add i64 %716, -8

  %718 = inttoptr i64 %717 to i64*

  store i64 %715, i64* %718

  store i64 %717, i64* %12, align 8, !tbaa !1240

  %719 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %714, %struct.Memory* %712)

  %720 = load i64, i64* %13, align 8

  %721 = add i64 %720, -120

  %722 = load i64, i64* %3, align 8

  store i64 %721, i64* %14, align 8, !tbaa !1240

  store i64 0, i64* %236, align 8, !tbaa !1240

  %723 = add i64 %720, -56

  %724 = load double, double* %217, align 1

  %725 = inttoptr i64 %723 to double*

  store double %724, double* %725

  %726 = add i64 %720, -32

  %727 = inttoptr i64 %726 to i64*

  %728 = load i64, i64* %727

  store i64 %728, i64* %11, align 8, !tbaa !1240

  %729 = add i64 %720, -124

  %730 = inttoptr i64 %729 to i32*

  %731 = load i32, i32* %730

  %732 = zext i32 %731 to i64

  store i64 %732, i64* %10, align 8, !tbaa !1240

  %733 = add i64 %720, -116

  %734 = inttoptr i64 %733 to i32*

  %735 = load i32, i32* %734

  %736 = zext i32 %735 to i64

  store i64 %736, i64* %9, align 8, !tbaa !1240

  %737 = add i64 %720, -112

  %738 = inttoptr i64 %737 to i64*

  %739 = load i64, i64* %738

  store i64 %739, i64* %8, align 8, !tbaa !1240

  %740 = add i64 %722, 989

  %741 = add i64 %722, 31

  %742 = load i64, i64* %12, align 8, !tbaa !1240

  %743 = add i64 %742, -8

  %744 = inttoptr i64 %743 to i64*

  store i64 %741, i64* %744

  store i64 %743, i64* %12, align 8, !tbaa !1240

  %745 = tail call %struct.Memory* @sub_400f40_dgefa(%struct.State* nonnull %0, i64 %740, %struct.Memory* %719)

  %746 = load i64, i64* %3, align 8

  %747 = add i64 %746, 462

  %748 = add i64 %746, 5

  %749 = load i64, i64* %12, align 8, !tbaa !1240

  %750 = add i64 %749, -8

  %751 = inttoptr i64 %750 to i64*

  store i64 %748, i64* %751

  store i64 %750, i64* %12, align 8, !tbaa !1240

  %752 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %747, %struct.Memory* %745)

  %753 = load i64, i64* %13, align 8

  %754 = add i64 %753, -56

  %755 = load i64, i64* %3, align 8

  %756 = load double, double* %217, align 1

  %757 = inttoptr i64 %754 to double*

  %758 = load double, double* %757

  %759 = fsub double %756, %758

  %760 = add i64 %753, -80

  %761 = inttoptr i64 %760 to double*

  %762 = load double, double* %761

  %763 = fadd double %759, %762

  store double %763, double* %217, align 1, !tbaa !1268

  %764 = inttoptr i64 %760 to double*

  store double %763, double* %764

  %765 = add i64 %755, 457

  %766 = add i64 %755, 20

  %767 = load i64, i64* %12, align 8, !tbaa !1240

  %768 = add i64 %767, -8

  %769 = inttoptr i64 %768 to i64*

  store i64 %766, i64* %769

  store i64 %768, i64* %12, align 8, !tbaa !1240

  %770 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %765, %struct.Memory* %752)

  %771 = load i64, i64* %3, align 8

  store i64 0, i64* %236, align 8, !tbaa !1240

  %772 = load i64, i64* %13, align 8

  %773 = add i64 %772, -56

  %774 = load double, double* %217, align 1

  %775 = inttoptr i64 %773 to double*

  store double %774, double* %775

  %776 = add i64 %772, -32

  %777 = inttoptr i64 %776 to i64*

  %778 = load i64, i64* %777

  store i64 %778, i64* %11, align 8, !tbaa !1240

  %779 = add i64 %772, -124

  %780 = inttoptr i64 %779 to i32*

  %781 = load i32, i32* %780

  %782 = zext i32 %781 to i64

  store i64 %782, i64* %10, align 8, !tbaa !1240

  %783 = add i64 %772, -116

  %784 = inttoptr i64 %783 to i32*

  %785 = load i32, i32* %784

  %786 = zext i32 %785 to i64

  store i64 %786, i64* %9, align 8, !tbaa !1240

  %787 = add i64 %772, -112

  %788 = inttoptr i64 %787 to i64*

  %789 = load i64, i64* %788

  store i64 %789, i64* %8, align 8, !tbaa !1240

  %790 = add i64 %772, -40

  %791 = inttoptr i64 %790 to i64*

  %792 = load i64, i64* %791

  store i64 %792, i64* %14, align 8, !tbaa !1240

  %793 = load i64, i64* %12, align 8

  %794 = inttoptr i64 %793 to i32*

  store i32 0, i32* %794

  %795 = add i64 %771, 2453

  %796 = add i64 %771, 38

  %797 = add i64 %793, -8

  %798 = inttoptr i64 %797 to i64*

  store i64 %796, i64* %798

  store i64 %797, i64* %12, align 8, !tbaa !1240

  %799 = tail call %struct.Memory* @sub_401530_dgesl(%struct.State* nonnull %0, i64 %795, %struct.Memory* %770)

  %800 = load i64, i64* %3, align 8

  %801 = add i64 %800, 399

  %802 = add i64 %800, 5

  %803 = load i64, i64* %12, align 8, !tbaa !1240

  %804 = add i64 %803, -8

  %805 = inttoptr i64 %804 to i64*

  store i64 %802, i64* %805

  store i64 %804, i64* %12, align 8, !tbaa !1240

  %806 = tail call %struct.Memory* @sub_400d50_second(%struct.State* nonnull %0, i64 %801, %struct.Memory* %799)

  %807 = load i64, i64* %13, align 8

  %808 = add i64 %807, -56

  %809 = load i64, i64* %3, align 8

  %810 = load double, double* %217, align 1

  %811 = inttoptr i64 %808 to double*

  %812 = load double, double* %811

  %813 = fsub double %810, %812

  %814 = add i64 %807, -72

  %815 = inttoptr i64 %814 to double*

  %816 = load double, double* %815

  %817 = fadd double %813, %816

  store double %817, double* %217, align 1, !tbaa !1268

  %818 = inttoptr i64 %814 to double*

  store double %817, double* %818

  %819 = add i64 %807, -136

  %820 = inttoptr i64 %819 to i64*

  %821 = load i64, i64* %820

  %822 = add i64 %821, 1

  %823 = inttoptr i64 %819 to i64*

  store i64 %822, i64* %823

  %824 = add i64 %809, -144

  br label %block_400b36



block_400cc6:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3.block_400cc6_crit_edge, %block_400cbe

  %825 = phi i64 [ %691, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3.block_400cc6_crit_edge ], [ %237, %block_400cbe ]

  %826 = phi i64 [ %690, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3.block_400cc6_crit_edge ], [ %239, %block_400cbe ]

  %827 = phi %struct.Memory* [ %686, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3.block_400cc6_crit_edge ], [ %686, %block_400cbe ]

  store i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 482), i64* %11, align 8, !tbaa !1240

  %828 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 48) to double*)

  %829 = add i64 %825, -16

  %830 = inttoptr i64 %829 to i64*

  %831 = load i64, i64* %830

  store i64 %831, i64* %10, align 8, !tbaa !1240

  %832 = add i64 %825, -88

  %833 = inttoptr i64 %832 to double*

  %834 = load double, double* %833

  %835 = bitcast double %828 to <2 x i32>

  %836 = extractelement <2 x i32> %835, i32 0

  %837 = bitcast %union.VectorReg* %17 to i32*

  store i32 %836, i32* %837, align 1, !tbaa !1277

  %838 = extractelement <2 x i32> %835, i32 1

  %839 = getelementptr inbounds i8, i8* %66, i64 4

  %840 = bitcast i8* %839 to i32*

  store i32 %838, i32* %840, align 1, !tbaa !1277

  %841 = bitcast i64* %69 to i32*

  store i32 0, i32* %841, align 1, !tbaa !1277

  %842 = getelementptr inbounds i8, i8* %66, i64 12

  %843 = bitcast i8* %842 to i32*

  store i32 0, i32* %843, align 1, !tbaa !1277

  %844 = add i64 %825, -80

  %845 = load double, double* %68, align 1

  %846 = bitcast i64* %69 to <2 x i32>*

  %847 = load <2 x i32>, <2 x i32>* %846, align 1

  %848 = inttoptr i64 %844 to double*

  %849 = load double, double* %848

  %850 = fmul double %845, %849

  %851 = fdiv double %850, %834

  %852 = bitcast %union.VectorReg* %18 to i32*

  store i32 %836, i32* %852, align 1, !tbaa !1277

  %853 = getelementptr inbounds i8, i8* %500, i64 4

  %854 = bitcast i8* %853 to i32*

  store i32 %838, i32* %854, align 1, !tbaa !1277

  %855 = bitcast i64* %337 to i32*

  store i32 0, i32* %855, align 1, !tbaa !1277

  %856 = getelementptr inbounds i8, i8* %500, i64 12

  %857 = bitcast i8* %856 to i32*

  store i32 0, i32* %857, align 1, !tbaa !1277

  %858 = add i64 %825, -72

  %859 = load double, double* %135, align 1

  %860 = bitcast i64* %337 to <2 x i32>*

  %861 = load <2 x i32>, <2 x i32>* %860, align 1

  %862 = inttoptr i64 %858 to double*

  %863 = load double, double* %862

  %864 = fmul double %859, %863

  %865 = fdiv double %864, %834

  %866 = add i64 %825, -96

  %867 = inttoptr i64 %866 to double*

  %868 = load double, double* %867

  %869 = fmul double %828, %868

  %870 = fdiv double %869, %834

  %871 = add i64 %825, -64

  %872 = inttoptr i64 %871 to double*

  %873 = load double, double* %872

  store double %873, double* %148, align 1, !tbaa !1268

  %874 = bitcast i64* %143 to double*

  store double 0.000000e+00, double* %874, align 1, !tbaa !1268

  %875 = load i64, i64* %13, align 8

  %876 = add i64 %875, -160

  %877 = inttoptr i64 %876 to double*

  store double %870, double* %877

  %878 = bitcast double %834 to <2 x i32>

  %879 = extractelement <2 x i32> %878, i32 0

  store i32 %879, i32* %55, align 1, !tbaa !1277

  %880 = extractelement <2 x i32> %878, i32 1

  store i32 %880, i32* %57, align 1, !tbaa !1277

  store i32 0, i32* %58, align 1, !tbaa !1277

  store i32 0, i32* %60, align 1, !tbaa !1277

  %881 = bitcast double %851 to <2 x i32>

  %882 = extractelement <2 x i32> %881, i32 0

  %883 = bitcast %union.VectorReg* %16 to i32*

  store i32 %882, i32* %883, align 1, !tbaa !1277

  %884 = extractelement <2 x i32> %881, i32 1

  %885 = getelementptr inbounds i8, i8* %61, i64 4

  %886 = bitcast i8* %885 to i32*

  store i32 %884, i32* %886, align 1, !tbaa !1277

  %887 = extractelement <2 x i32> %847, i32 0

  %888 = bitcast i64* %64 to i32*

  store i32 %887, i32* %888, align 1, !tbaa !1277

  %889 = extractelement <2 x i32> %847, i32 1

  %890 = getelementptr inbounds i8, i8* %61, i64 12

  %891 = bitcast i8* %890 to i32*

  store i32 %889, i32* %891, align 1, !tbaa !1277

  %892 = bitcast double %865 to <2 x i32>

  %893 = extractelement <2 x i32> %892, i32 0

  store i32 %893, i32* %837, align 1, !tbaa !1277

  %894 = extractelement <2 x i32> %892, i32 1

  store i32 %894, i32* %840, align 1, !tbaa !1277

  %895 = extractelement <2 x i32> %861, i32 0

  store i32 %895, i32* %841, align 1, !tbaa !1277

  %896 = extractelement <2 x i32> %861, i32 1

  store i32 %896, i32* %843, align 1, !tbaa !1277

  %897 = inttoptr i64 %876 to double*

  %898 = load double, double* %897

  store double %898, double* %135, align 1, !tbaa !1268

  store double 0.000000e+00, double* %338, align 1, !tbaa !1268

  %899 = add i64 %826, 100

  %900 = load i64, i64* %12, align 8, !tbaa !1240

  %901 = add i64 %900, -8

  %902 = inttoptr i64 %901 to i64*

  store i64 %899, i64* %902

  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %906 = load i64, i64* %11, align 8, !alias.scope !1279, !noalias !1282

  %907 = load i64, i64* %904, align 8, !alias.scope !1279, !noalias !1282

  %908 = load i64, i64* %86, align 8, !alias.scope !1279, !noalias !1282

  %909 = load i64, i64* %8, align 8, !alias.scope !1279, !noalias !1282

  %910 = load i64, i64* %14, align 8, !alias.scope !1279, !noalias !1282

  %911 = load i64, i64* %905, align 8, !alias.scope !1279, !noalias !1282

  %912 = inttoptr i64 %900 to i64*

  %913 = load i64, i64* %912

  %914 = add i64 %900, 8

  %915 = inttoptr i64 %914 to i64*

  %916 = load i64, i64* %915

  %917 = add i64 %900, 16

  %918 = inttoptr i64 %917 to i64*

  %919 = load i64, i64* %918

  %920 = add i64 %900, 24

  %921 = inttoptr i64 %920 to i64*

  %922 = load i64, i64* %921

  %923 = add i64 %900, 32

  %924 = inttoptr i64 %923 to i64*

  %925 = load i64, i64* %924

  %926 = add i64 %900, 40

  %927 = inttoptr i64 %926 to i64*

  %928 = load i64, i64* %927

  %929 = add i64 %900, 48

  %930 = inttoptr i64 %929 to i64*

  %931 = load i64, i64* %930

  %932 = add i64 %900, 56

  %933 = inttoptr i64 %932 to i64*

  %934 = load i64, i64* %933

  %935 = add i64 %900, 64

  %936 = inttoptr i64 %935 to i64*

  %937 = load i64, i64* %936

  %938 = add i64 %900, 72

  %939 = inttoptr i64 %938 to i64*

  %940 = load i64, i64* %939

  %941 = inttoptr i64 %901 to i64*

  %942 = load i64, i64* %941

  store i64 %942, i64* %3, align 8, !alias.scope !1279, !noalias !1282

  store i64 %900, i64* %12, align 8, !alias.scope !1279, !noalias !1282

  %943 = tail call i64 @printf(i64 %906, i64 %907, i64 %908, i64 %909, i64 %910, i64 %911, i64 %913, i64 %916, i64 %919, i64 %922, i64 %925, i64 %928, i64 %931, i64 %934, i64 %937, i64 %940), !noalias !1279

  store i64 %943, i64* %903, align 8, !alias.scope !1279, !noalias !1282

  %944 = load i64, i64* %13, align 8

  %945 = add i64 %944, -88

  %946 = inttoptr i64 %945 to double*

  %947 = load double, double* %946

  store double %947, double* %217, align 1, !tbaa !1268

  store double 0.000000e+00, double* %404, align 1, !tbaa !1268

  %948 = add i64 %944, -8

  %949 = inttoptr i64 %948 to double*

  store double %947, double* %949

  %950 = add i64 %944, -164

  %951 = trunc i64 %943 to i32

  %952 = inttoptr i64 %950 to i32*

  store i32 %951, i32* %952

  br label %block_400d3a



block_400b36:                                     ; preds = %block_400b47, %block_400b2b

  %953 = phi i64 [ %501, %block_400b2b ], [ %824, %block_400b47 ]

  %954 = phi i64 [ %992, %block_400b2b ], [ %807, %block_400b47 ]

  %955 = phi %struct.Memory* [ %993, %block_400b2b ], [ %806, %block_400b47 ]

  %956 = add i64 %954, -136

  %957 = inttoptr i64 %956 to i64*

  %958 = load i64, i64* %957

  %959 = add i64 %954, -16

  %960 = inttoptr i64 %959 to i64*

  %961 = load i64, i64* %960

  %962 = sub i64 %958, %961

  %963 = icmp ult i64 %958, %961

  %964 = zext i1 %963 to i8

  store i8 %964, i8* %27, align 1, !tbaa !1244

  %965 = trunc i64 %962 to i32

  %966 = and i32 %965, 255

  %967 = tail call i32 @llvm.ctpop.i32(i32 %966) #9

  %968 = trunc i32 %967 to i8

  %969 = and i8 %968, 1

  %970 = xor i8 %969, 1

  store i8 %970, i8* %34, align 1, !tbaa !1258

  %971 = xor i64 %961, %958

  %972 = xor i64 %971, %962

  %973 = lshr i64 %972, 4

  %974 = trunc i64 %973 to i8

  %975 = and i8 %974, 1

  store i8 %975, i8* %40, align 1, !tbaa !1262

  %976 = icmp eq i64 %962, 0

  %977 = zext i1 %976 to i8

  store i8 %977, i8* %43, align 1, !tbaa !1259

  %978 = lshr i64 %962, 63

  %979 = trunc i64 %978 to i8

  store i8 %979, i8* %46, align 1, !tbaa !1260

  %980 = lshr i64 %958, 63

  %981 = lshr i64 %961, 63

  %982 = xor i64 %981, %980

  %983 = xor i64 %978, %980

  %984 = add nuw nsw i64 %983, %982

  %985 = icmp eq i64 %984, 2

  %986 = zext i1 %985 to i8

  store i8 %986, i8* %52, align 1, !tbaa !1261

  %987 = icmp ne i8 %979, 0

  %988 = xor i1 %987, %985

  %989 = select i1 %988, i64 17, i64 182

  %990 = add i64 %953, %989

  br i1 %988, label %block_400b47, label %block_400bec



block_400a65:                                     ; preds = %block_400a76, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %991 = phi i64 [ %234, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %648, %block_400a76 ]

  %992 = phi i64 [ %228, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %631, %block_400a76 ]

  %993 = phi %struct.Memory* [ %227, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %630, %block_400a76 ]

  %994 = add i64 %992, -136

  %995 = inttoptr i64 %994 to i64*

  %996 = load i64, i64* %995

  %997 = add i64 %992, -16

  %998 = inttoptr i64 %997 to i64*

  %999 = load i64, i64* %998

  %1000 = sub i64 %996, %999

  %1001 = lshr i64 %1000, 63

  %1002 = trunc i64 %1001 to i8

  %1003 = lshr i64 %996, 63

  %1004 = lshr i64 %999, 63

  %1005 = xor i64 %1004, %1003

  %1006 = xor i64 %1001, %1003

  %1007 = add nuw nsw i64 %1006, %1005

  %1008 = icmp eq i64 %1007, 2

  %1009 = icmp ne i8 %1002, 0

  %1010 = xor i1 %1009, %1008

  %1011 = select i1 %1010, i64 17, i64 198

  %1012 = add i64 %991, %1011

  br i1 %1010, label %block_400a76, label %block_400b2b

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4028c0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4028c0:

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4005d0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4005d0:

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

define %struct.Memory* @sub_400690_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400690:

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

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %14 = load i64, i64* %12, align 8

  %15 = load i64, i64* %11, align 8, !tbaa !1240

  %16 = add i64 %15, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %14, i64* %17

  store i64 %16, i64* %12, align 8, !tbaa !1240

  %18 = add i64 %15, -184

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 112), i64* %10, align 8, !tbaa !1240

  %25 = add i64 %15, -12

  %26 = inttoptr i64 %25 to i32*

  store i32 0, i32* %26

  %27 = add i64 %1, 33

  %28 = add i64 %15, -192

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  %30 = inttoptr i64 %28 to i64*

  %31 = load i64, i64* %30

  store i64 %31, i64* %3, align 8, !alias.scope !1284, !noalias !1287

  store i64 %18, i64* %11, align 8, !alias.scope !1284, !noalias !1287

  %32 = tail call i64 @getenv(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 112))

  %33 = load i64, i64* %12, align 8

  %34 = add i64 %33, -16

  %35 = load i64, i64* %3, align 8

  %36 = inttoptr i64 %34 to i64*

  store i64 %32, i64* %36

  %37 = inttoptr i64 %34 to i64*

  %38 = load i64, i64* %37

  store i8 0, i8* %19, align 1, !tbaa !1244

  %39 = trunc i64 %38 to i32

  %40 = and i32 %39, 255

  %41 = tail call i32 @llvm.ctpop.i32(i32 %40) #9

  %42 = trunc i32 %41 to i8

  %43 = and i8 %42, 1

  %44 = xor i8 %43, 1

  store i8 %44, i8* %20, align 1, !tbaa !1258

  store i8 0, i8* %21, align 1, !tbaa !1262

  %45 = icmp eq i64 %38, 0

  %46 = zext i1 %45 to i8

  store i8 %46, i8* %22, align 1, !tbaa !1259

  %47 = lshr i64 %38, 63

  %48 = trunc i64 %47 to i8

  store i8 %48, i8* %23, align 1, !tbaa !1260

  store i8 0, i8* %24, align 1, !tbaa !1261

  %49 = select i1 %45, i64 15, i64 27

  %50 = add i64 %35, %49

  br i1 %45, label %block_4006c0, label %block_4006cc



block_4008bf:                                     ; preds = %block_400887

  %51 = add i64 %545, -88

  store i64 0, i64* %9, align 8, !tbaa !1240

  %52 = add i64 %560, 13

  %53 = load i64, i64* %11, align 8, !tbaa !1240

  %54 = add i64 %53, -8

  %55 = inttoptr i64 %54 to i64*

  store i64 %52, i64* %55

  %56 = inttoptr i64 %54 to i64*

  %57 = load i64, i64* %56

  store i64 %57, i64* %3, align 8, !alias.scope !1289, !noalias !1292

  store i64 %53, i64* %11, align 8, !alias.scope !1289, !noalias !1292

  %58 = tail call i64 @gettimeofday(i64 %51, i64 0), !noalias !1289

  %59 = load i64, i64* %3, align 8

  %60 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 8) to i64*)

  %61 = load i64, i64* %12, align 8

  %62 = add i64 %61, -164

  %63 = trunc i64 %58 to i32

  %64 = inttoptr i64 %62 to i32*

  store i32 %63, i32* %64

  %65 = add i64 %59, 19

  %66 = load i64, i64* %11, align 8, !tbaa !1240

  %67 = add i64 %66, -8

  %68 = inttoptr i64 %67 to i64*

  store i64 %65, i64* %68

  %69 = inttoptr i64 %67 to i64*

  %70 = load i64, i64* %69

  store i64 %70, i64* %3, align 8, !alias.scope !1294, !noalias !1297

  store i64 %66, i64* %11, align 8, !alias.scope !1294, !noalias !1297

  %71 = tail call i64 @free(i64 %60), !noalias !1294

  %72 = load i64, i64* %3, align 8

  %73 = add i64 %72, 17

  %74 = load i64, i64* %11, align 8, !tbaa !1240

  %75 = add i64 %74, -8

  %76 = inttoptr i64 %75 to i64*

  store i64 %73, i64* %76

  %77 = load i64, i64* %9, align 8, !alias.scope !1299, !noalias !1302

  %78 = load i64, i64* %570, align 8, !alias.scope !1299, !noalias !1302

  %79 = load i64, i64* %743, align 8, !alias.scope !1299, !noalias !1302

  %80 = load i64, i64* %744, align 8, !alias.scope !1299, !noalias !1302

  %81 = load i64, i64* %745, align 8, !alias.scope !1299, !noalias !1302

  %82 = inttoptr i64 %74 to i64*

  %83 = load i64, i64* %82

  %84 = add i64 %74, 8

  %85 = inttoptr i64 %84 to i64*

  %86 = load i64, i64* %85

  %87 = add i64 %74, 16

  %88 = inttoptr i64 %87 to i64*

  %89 = load i64, i64* %88

  %90 = add i64 %74, 24

  %91 = inttoptr i64 %90 to i64*

  %92 = load i64, i64* %91

  %93 = add i64 %74, 32

  %94 = inttoptr i64 %93 to i64*

  %95 = load i64, i64* %94

  %96 = add i64 %74, 40

  %97 = inttoptr i64 %96 to i64*

  %98 = load i64, i64* %97

  %99 = add i64 %74, 48

  %100 = inttoptr i64 %99 to i64*

  %101 = load i64, i64* %100

  %102 = add i64 %74, 56

  %103 = inttoptr i64 %102 to i64*

  %104 = load i64, i64* %103

  %105 = add i64 %74, 64

  %106 = inttoptr i64 %105 to i64*

  %107 = load i64, i64* %106

  %108 = add i64 %74, 72

  %109 = inttoptr i64 %108 to i64*

  %110 = load i64, i64* %109

  %111 = inttoptr i64 %75 to i64*

  %112 = load i64, i64* %111

  store i64 %112, i64* %3, align 8, !alias.scope !1299, !noalias !1302

  store i64 %74, i64* %11, align 8, !alias.scope !1299, !noalias !1302

  %113 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 218), i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %83, i64 %86, i64 %89, i64 %92, i64 %95, i64 %98, i64 %101, i64 %104, i64 %107, i64 %110), !noalias !1299

  %114 = load i64, i64* %12, align 8

  %115 = add i64 %114, -168

  %116 = trunc i64 %113 to i32

  %117 = load i64, i64* %3, align 8

  %118 = inttoptr i64 %115 to i32*

  store i32 %116, i32* %118

  %119 = add i64 %114, -88

  %120 = inttoptr i64 %119 to i64*

  %121 = load i64, i64* %120

  %122 = add i64 %114, -72

  %123 = inttoptr i64 %122 to i64*

  %124 = load i64, i64* %123

  %125 = sub i64 %121, %124

  %126 = add i64 %114, -104

  %127 = inttoptr i64 %126 to i64*

  store i64 %125, i64* %127

  %128 = add i64 %114, -80

  %129 = inttoptr i64 %128 to i64*

  %130 = load i64, i64* %129

  %131 = add i64 %114, -64

  %132 = inttoptr i64 %131 to i64*

  %133 = load i64, i64* %132

  %134 = sub i64 %130, %133

  %135 = add i64 %114, -96

  %136 = inttoptr i64 %135 to i64*

  store i64 %134, i64* %136

  %137 = add i64 %117, 35

  %138 = inttoptr i64 %135 to i64*

  %139 = load i64, i64* %138

  %140 = lshr i64 %139, 63

  %141 = trunc i64 %140 to i8

  %142 = icmp ne i8 %141, 0

  %143 = select i1 %142, i64 6, i64 32

  %144 = add i64 %137, %143

  %145 = load i64, i64* %12, align 8

  br i1 %142, label %block_400919, label %block_400933



block_400957:                                     ; preds = %block_400933, %block_400701, %block_4007a9

  %146 = phi i64 [ %659, %block_4007a9 ], [ %848, %block_400933 ], [ %709, %block_400701 ]

  %147 = phi %struct.Memory* [ %618, %block_4007a9 ], [ %802, %block_400933 ], [ %596, %block_400701 ]

  %148 = add i64 %146, -4

  %149 = inttoptr i64 %148 to i32*

  %150 = load i32, i32* %149

  %151 = zext i32 %150 to i64

  store i64 %151, i64* %6, align 8, !tbaa !1240

  %152 = load i64, i64* %11, align 8

  %153 = add i64 %152, 176

  %154 = icmp ugt i64 %152, -177

  %155 = zext i1 %154 to i8

  store i8 %155, i8* %19, align 1, !tbaa !1244

  %156 = trunc i64 %153 to i32

  %157 = and i32 %156, 255

  %158 = tail call i32 @llvm.ctpop.i32(i32 %157) #9

  %159 = trunc i32 %158 to i8

  %160 = and i8 %159, 1

  %161 = xor i8 %160, 1

  store i8 %161, i8* %20, align 1, !tbaa !1258

  %162 = xor i64 %152, 16

  %163 = xor i64 %162, %153

  %164 = lshr i64 %163, 4

  %165 = trunc i64 %164 to i8

  %166 = and i8 %165, 1

  store i8 %166, i8* %21, align 1, !tbaa !1262

  %167 = icmp eq i64 %153, 0

  %168 = zext i1 %167 to i8

  store i8 %168, i8* %22, align 1, !tbaa !1259

  %169 = lshr i64 %153, 63

  %170 = trunc i64 %169 to i8

  store i8 %170, i8* %23, align 1, !tbaa !1260

  %171 = lshr i64 %152, 63

  %172 = xor i64 %169, %171

  %173 = add nuw nsw i64 %172, %169

  %174 = icmp eq i64 %173, 2

  %175 = zext i1 %174 to i8

  store i8 %175, i8* %24, align 1, !tbaa !1261

  %176 = add i64 %152, 184

  %177 = inttoptr i64 %153 to i64*

  %178 = load i64, i64* %177

  store i64 %178, i64* %12, align 8, !tbaa !1240

  %179 = inttoptr i64 %176 to i64*

  %180 = load i64, i64* %179

  store i64 %180, i64* %3, align 8, !tbaa !1240

  %181 = add i64 %152, 192

  store i64 %181, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %147



block_400891:                                     ; preds = %block_400887

  %182 = add i64 %545, -48

  %183 = inttoptr i64 %182 to i64*

  %184 = load i64, i64* %183

  store i64 %184, i64* %10, align 8, !tbaa !1240

  %185 = add i64 %545, -20

  %186 = inttoptr i64 %185 to i32*

  %187 = load i32, i32* %186

  %188 = zext i32 %187 to i64

  store i64 %188, i64* %9, align 8, !tbaa !1240

  %189 = add i64 %560, 223

  %190 = add i64 %560, 12

  %191 = load i64, i64* %11, align 8, !tbaa !1240

  %192 = add i64 %191, -8

  %193 = inttoptr i64 %192 to i64*

  store i64 %190, i64* %193

  store i64 %192, i64* %11, align 8, !tbaa !1240

  %194 = tail call %struct.Memory* @sub_400970_linpack(%struct.State* nonnull %0, i64 %189, %struct.Memory* %546)

  %195 = load i64, i64* %12, align 8

  %196 = add i64 %195, -48

  %197 = load i64, i64* %3, align 8

  %198 = inttoptr i64 %196 to i64*

  %199 = load i64, i64* %198

  %200 = shl i64 %199, 1

  %201 = inttoptr i64 %196 to i64*

  store i64 %200, i64* %201

  %202 = add i64 %195, -160

  %203 = load double, double* %543, align 1

  %204 = inttoptr i64 %202 to double*

  store double %203, double* %204

  %205 = add i64 %195, -108

  %206 = inttoptr i64 %205 to i32*

  %207 = load i32, i32* %206

  %208 = add i32 %207, 1

  %209 = inttoptr i64 %205 to i32*

  store i32 %208, i32* %209

  %210 = add i64 %197, -22

  br label %block_400887



block_40078e:                                     ; preds = %block_400721

  %211 = inttoptr i64 %788 to i64*

  %212 = load i64, i64* %211

  %213 = add i64 %800, 9

  %214 = load i64, i64* %11, align 8, !tbaa !1240

  %215 = add i64 %214, -8

  %216 = inttoptr i64 %215 to i64*

  store i64 %213, i64* %216

  %217 = inttoptr i64 %215 to i64*

  %218 = load i64, i64* %217

  store i64 %218, i64* %3, align 8, !alias.scope !1304, !noalias !1307

  store i64 %214, i64* %11, align 8, !alias.scope !1304, !noalias !1307

  %219 = tail call i64 @malloc(i64 %212)

  %220 = load i64, i64* %3, align 8

  store i64 %219, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 8) to i64*)

  %221 = icmp eq i64 %219, 0

  %222 = select i1 %221, i64 18, i64 50

  %223 = add i64 %220, %222

  br i1 %221, label %block_40078e.block_4007a9_crit_edge, label %block_4007c9



block_40078e.block_4007a9_crit_edge:              ; preds = %block_40078e

  %224 = load i64, i64* %743, align 8, !alias.scope !1309, !noalias !1312

  br label %block_4007a9



block_400919:                                     ; preds = %block_4008bf

  %225 = add i64 %145, -104

  %226 = inttoptr i64 %225 to i64*

  %227 = load i64, i64* %226

  %228 = add i64 %227, -1

  %229 = inttoptr i64 %225 to i64*

  store i64 %228, i64* %229

  %230 = add i64 %145, -96

  %231 = inttoptr i64 %230 to i64*

  %232 = load i64, i64* %231

  %233 = add i64 %232, 1000000

  %234 = add i64 %144, 26

  %235 = inttoptr i64 %230 to i64*

  store i64 %233, i64* %235

  br label %block_400933



block_4006cc:                                     ; preds = %block_400690

  store i64 %38, i64* %10, align 8, !tbaa !1240

  %236 = add i64 %50, 9

  %237 = load i64, i64* %11, align 8, !tbaa !1240

  %238 = add i64 %237, -8

  %239 = inttoptr i64 %238 to i64*

  store i64 %236, i64* %239

  %240 = inttoptr i64 %238 to i64*

  %241 = load i64, i64* %240

  store i64 %241, i64* %3, align 8, !alias.scope !1314, !noalias !1317

  store i64 %237, i64* %11, align 8, !alias.scope !1314, !noalias !1317

  %242 = tail call i64 @atoi(i64 %38), !noalias !1314

  %243 = load i64, i64* %12, align 8

  %244 = add i64 %243, -20

  %245 = trunc i64 %242 to i32

  %246 = load i64, i64* %3, align 8

  %247 = add i64 %246, 3

  %248 = inttoptr i64 %244 to i32*

  store i32 %245, i32* %248

  br label %block_4006d8



block_4007c9:                                     ; preds = %block_40078e

  %249 = add i64 %223, 27

  %250 = load i64, i64* %11, align 8, !tbaa !1240

  %251 = add i64 %250, -8

  %252 = inttoptr i64 %251 to i64*

  store i64 %249, i64* %252

  %253 = load i64, i64* %570, align 8, !alias.scope !1319, !noalias !1322

  %254 = load i64, i64* %743, align 8, !alias.scope !1319, !noalias !1322

  %255 = load i64, i64* %744, align 8, !alias.scope !1319, !noalias !1322

  %256 = load i64, i64* %745, align 8, !alias.scope !1319, !noalias !1322

  %257 = inttoptr i64 %250 to i64*

  %258 = load i64, i64* %257

  %259 = add i64 %250, 8

  %260 = inttoptr i64 %259 to i64*

  %261 = load i64, i64* %260

  %262 = add i64 %250, 16

  %263 = inttoptr i64 %262 to i64*

  %264 = load i64, i64* %263

  %265 = add i64 %250, 24

  %266 = inttoptr i64 %265 to i64*

  %267 = load i64, i64* %266

  %268 = add i64 %250, 32

  %269 = inttoptr i64 %268 to i64*

  %270 = load i64, i64* %269

  %271 = add i64 %250, 40

  %272 = inttoptr i64 %271 to i64*

  %273 = load i64, i64* %272

  %274 = add i64 %250, 48

  %275 = inttoptr i64 %274 to i64*

  %276 = load i64, i64* %275

  %277 = add i64 %250, 56

  %278 = inttoptr i64 %277 to i64*

  %279 = load i64, i64* %278

  %280 = add i64 %250, 64

  %281 = inttoptr i64 %280 to i64*

  %282 = load i64, i64* %281

  %283 = add i64 %250, 72

  %284 = inttoptr i64 %283 to i64*

  %285 = load i64, i64* %284

  %286 = inttoptr i64 %251 to i64*

  %287 = load i64, i64* %286

  store i64 %287, i64* %3, align 8, !alias.scope !1319, !noalias !1322

  store i64 %250, i64* %11, align 8, !alias.scope !1319, !noalias !1322

  %288 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 220), i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 256), i64 %253, i64 %254, i64 %255, i64 %256, i64 %258, i64 %261, i64 %264, i64 %267, i64 %270, i64 %273, i64 %276, i64 %279, i64 %282, i64 %285), !noalias !1319

  %289 = load i64, i64* %3, align 8

  %290 = load i64, i64* %12, align 8

  %291 = add i64 %290, -128

  %292 = trunc i64 %288 to i32

  %293 = inttoptr i64 %291 to i32*

  store i32 %292, i32* %293

  %294 = add i64 %289, 25

  %295 = load i64, i64* %11, align 8, !tbaa !1240

  %296 = add i64 %295, -8

  %297 = inttoptr i64 %296 to i64*

  store i64 %294, i64* %297

  %298 = load i64, i64* %570, align 8, !alias.scope !1324, !noalias !1327

  %299 = load i64, i64* %743, align 8, !alias.scope !1324, !noalias !1327

  %300 = load i64, i64* %744, align 8, !alias.scope !1324, !noalias !1327

  %301 = load i64, i64* %745, align 8, !alias.scope !1324, !noalias !1327

  %302 = inttoptr i64 %295 to i64*

  %303 = load i64, i64* %302

  %304 = add i64 %295, 8

  %305 = inttoptr i64 %304 to i64*

  %306 = load i64, i64* %305

  %307 = add i64 %295, 16

  %308 = inttoptr i64 %307 to i64*

  %309 = load i64, i64* %308

  %310 = add i64 %295, 24

  %311 = inttoptr i64 %310 to i64*

  %312 = load i64, i64* %311

  %313 = add i64 %295, 32

  %314 = inttoptr i64 %313 to i64*

  %315 = load i64, i64* %314

  %316 = add i64 %295, 40

  %317 = inttoptr i64 %316 to i64*

  %318 = load i64, i64* %317

  %319 = add i64 %295, 48

  %320 = inttoptr i64 %319 to i64*

  %321 = load i64, i64* %320

  %322 = add i64 %295, 56

  %323 = inttoptr i64 %322 to i64*

  %324 = load i64, i64* %323

  %325 = add i64 %295, 64

  %326 = inttoptr i64 %325 to i64*

  %327 = load i64, i64* %326

  %328 = add i64 %295, 72

  %329 = inttoptr i64 %328 to i64*

  %330 = load i64, i64* %329

  %331 = inttoptr i64 %296 to i64*

  %332 = load i64, i64* %331

  store i64 %332, i64* %3, align 8, !alias.scope !1324, !noalias !1327

  store i64 %295, i64* %11, align 8, !alias.scope !1324, !noalias !1327

  %333 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 263), i64 15, i64 %298, i64 %299, i64 %300, i64 %301, i64 %303, i64 %306, i64 %309, i64 %312, i64 %315, i64 %318, i64 %321, i64 %324, i64 %327, i64 %330), !noalias !1324

  %334 = load i64, i64* %3, align 8

  %335 = load i64, i64* %12, align 8

  %336 = add i64 %335, -20

  %337 = inttoptr i64 %336 to i32*

  %338 = load i32, i32* %337

  %339 = zext i32 %338 to i64

  store i64 %339, i64* %9, align 8, !tbaa !1240

  store i64 %339, i64* %8, align 8, !tbaa !1240

  %340 = add i64 %335, -132

  %341 = trunc i64 %333 to i32

  %342 = inttoptr i64 %340 to i32*

  store i32 %341, i32* %342

  %343 = add i64 %334, 29

  %344 = load i64, i64* %11, align 8, !tbaa !1240

  %345 = add i64 %344, -8

  %346 = inttoptr i64 %345 to i64*

  store i64 %343, i64* %346

  %347 = load i64, i64* %743, align 8, !alias.scope !1329, !noalias !1332

  %348 = load i64, i64* %744, align 8, !alias.scope !1329, !noalias !1332

  %349 = load i64, i64* %745, align 8, !alias.scope !1329, !noalias !1332

  %350 = inttoptr i64 %344 to i64*

  %351 = load i64, i64* %350

  %352 = add i64 %344, 8

  %353 = inttoptr i64 %352 to i64*

  %354 = load i64, i64* %353

  %355 = add i64 %344, 16

  %356 = inttoptr i64 %355 to i64*

  %357 = load i64, i64* %356

  %358 = add i64 %344, 24

  %359 = inttoptr i64 %358 to i64*

  %360 = load i64, i64* %359

  %361 = add i64 %344, 32

  %362 = inttoptr i64 %361 to i64*

  %363 = load i64, i64* %362

  %364 = add i64 %344, 40

  %365 = inttoptr i64 %364 to i64*

  %366 = load i64, i64* %365

  %367 = add i64 %344, 48

  %368 = inttoptr i64 %367 to i64*

  %369 = load i64, i64* %368

  %370 = add i64 %344, 56

  %371 = inttoptr i64 %370 to i64*

  %372 = load i64, i64* %371

  %373 = add i64 %344, 64

  %374 = inttoptr i64 %373 to i64*

  %375 = load i64, i64* %374

  %376 = add i64 %344, 72

  %377 = inttoptr i64 %376 to i64*

  %378 = load i64, i64* %377

  %379 = inttoptr i64 %345 to i64*

  %380 = load i64, i64* %379

  store i64 %380, i64* %3, align 8, !alias.scope !1329, !noalias !1332

  store i64 %344, i64* %11, align 8, !alias.scope !1329, !noalias !1332

  %381 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 295), i64 %339, i64 %339, i64 %347, i64 %348, i64 %349, i64 %351, i64 %354, i64 %357, i64 %360, i64 %363, i64 %366, i64 %369, i64 %372, i64 %375, i64 %378), !noalias !1329

  %382 = load i64, i64* %3, align 8

  %383 = load i64, i64* %12, align 8

  %384 = add i64 %383, -136

  %385 = trunc i64 %381 to i32

  %386 = inttoptr i64 %384 to i32*

  store i32 %385, i32* %386

  %387 = add i64 %382, 23

  %388 = load i64, i64* %11, align 8, !tbaa !1240

  %389 = add i64 %388, -8

  %390 = inttoptr i64 %389 to i64*

  store i64 %387, i64* %390

  %391 = load i64, i64* %9, align 8, !alias.scope !1334, !noalias !1337

  %392 = load i64, i64* %570, align 8, !alias.scope !1334, !noalias !1337

  %393 = load i64, i64* %743, align 8, !alias.scope !1334, !noalias !1337

  %394 = load i64, i64* %744, align 8, !alias.scope !1334, !noalias !1337

  %395 = load i64, i64* %745, align 8, !alias.scope !1334, !noalias !1337

  %396 = inttoptr i64 %388 to i64*

  %397 = load i64, i64* %396

  %398 = add i64 %388, 8

  %399 = inttoptr i64 %398 to i64*

  %400 = load i64, i64* %399

  %401 = add i64 %388, 16

  %402 = inttoptr i64 %401 to i64*

  %403 = load i64, i64* %402

  %404 = add i64 %388, 24

  %405 = inttoptr i64 %404 to i64*

  %406 = load i64, i64* %405

  %407 = add i64 %388, 32

  %408 = inttoptr i64 %407 to i64*

  %409 = load i64, i64* %408

  %410 = add i64 %388, 40

  %411 = inttoptr i64 %410 to i64*

  %412 = load i64, i64* %411

  %413 = add i64 %388, 48

  %414 = inttoptr i64 %413 to i64*

  %415 = load i64, i64* %414

  %416 = add i64 %388, 56

  %417 = inttoptr i64 %416 to i64*

  %418 = load i64, i64* %417

  %419 = add i64 %388, 64

  %420 = inttoptr i64 %419 to i64*

  %421 = load i64, i64* %420

  %422 = add i64 %388, 72

  %423 = inttoptr i64 %422 to i64*

  %424 = load i64, i64* %423

  %425 = inttoptr i64 %389 to i64*

  %426 = load i64, i64* %425

  store i64 %426, i64* %3, align 8, !alias.scope !1334, !noalias !1337

  store i64 %388, i64* %11, align 8, !alias.scope !1334, !noalias !1337

  %427 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 316), i64 %391, i64 %392, i64 %393, i64 %394, i64 %395, i64 %397, i64 %400, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418, i64 %421, i64 %424), !noalias !1334

  %428 = load i64, i64* %3, align 8

  %429 = load i64, i64* %12, align 8

  %430 = add i64 %429, -140

  %431 = trunc i64 %427 to i32

  %432 = inttoptr i64 %430 to i32*

  store i32 %431, i32* %432

  %433 = add i64 %428, 23

  %434 = load i64, i64* %11, align 8, !tbaa !1240

  %435 = add i64 %434, -8

  %436 = inttoptr i64 %435 to i64*

  store i64 %433, i64* %436

  %437 = load i64, i64* %9, align 8, !alias.scope !1339, !noalias !1342

  %438 = load i64, i64* %570, align 8, !alias.scope !1339, !noalias !1342

  %439 = load i64, i64* %743, align 8, !alias.scope !1339, !noalias !1342

  %440 = load i64, i64* %744, align 8, !alias.scope !1339, !noalias !1342

  %441 = load i64, i64* %745, align 8, !alias.scope !1339, !noalias !1342

  %442 = inttoptr i64 %434 to i64*

  %443 = load i64, i64* %442

  %444 = add i64 %434, 8

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %434, 16

  %448 = inttoptr i64 %447 to i64*

  %449 = load i64, i64* %448

  %450 = add i64 %434, 24

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %434, 32

  %454 = inttoptr i64 %453 to i64*

  %455 = load i64, i64* %454

  %456 = add i64 %434, 40

  %457 = inttoptr i64 %456 to i64*

  %458 = load i64, i64* %457

  %459 = add i64 %434, 48

  %460 = inttoptr i64 %459 to i64*

  %461 = load i64, i64* %460

  %462 = add i64 %434, 56

  %463 = inttoptr i64 %462 to i64*

  %464 = load i64, i64* %463

  %465 = add i64 %434, 64

  %466 = inttoptr i64 %465 to i64*

  %467 = load i64, i64* %466

  %468 = add i64 %434, 72

  %469 = inttoptr i64 %468 to i64*

  %470 = load i64, i64* %469

  %471 = inttoptr i64 %435 to i64*

  %472 = load i64, i64* %471

  store i64 %472, i64* %3, align 8, !alias.scope !1339, !noalias !1342

  store i64 %434, i64* %11, align 8, !alias.scope !1339, !noalias !1342

  %473 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 359), i64 %437, i64 %438, i64 %439, i64 %440, i64 %441, i64 %443, i64 %446, i64 %449, i64 %452, i64 %455, i64 %458, i64 %461, i64 %464, i64 %467, i64 %470), !noalias !1339

  %474 = load i64, i64* %3, align 8

  %475 = load i64, i64* %12, align 8

  %476 = add i64 %475, -144

  %477 = trunc i64 %473 to i32

  %478 = inttoptr i64 %476 to i32*

  store i32 %477, i32* %478

  %479 = add i64 %474, 23

  %480 = load i64, i64* %11, align 8, !tbaa !1240

  %481 = add i64 %480, -8

  %482 = inttoptr i64 %481 to i64*

  store i64 %479, i64* %482

  %483 = load i64, i64* %9, align 8, !alias.scope !1344, !noalias !1347

  %484 = load i64, i64* %570, align 8, !alias.scope !1344, !noalias !1347

  %485 = load i64, i64* %743, align 8, !alias.scope !1344, !noalias !1347

  %486 = load i64, i64* %744, align 8, !alias.scope !1344, !noalias !1347

  %487 = load i64, i64* %745, align 8, !alias.scope !1344, !noalias !1347

  %488 = inttoptr i64 %480 to i64*

  %489 = load i64, i64* %488

  %490 = add i64 %480, 8

  %491 = inttoptr i64 %490 to i64*

  %492 = load i64, i64* %491

  %493 = add i64 %480, 16

  %494 = inttoptr i64 %493 to i64*

  %495 = load i64, i64* %494

  %496 = add i64 %480, 24

  %497 = inttoptr i64 %496 to i64*

  %498 = load i64, i64* %497

  %499 = add i64 %480, 32

  %500 = inttoptr i64 %499 to i64*

  %501 = load i64, i64* %500

  %502 = add i64 %480, 40

  %503 = inttoptr i64 %502 to i64*

  %504 = load i64, i64* %503

  %505 = add i64 %480, 48

  %506 = inttoptr i64 %505 to i64*

  %507 = load i64, i64* %506

  %508 = add i64 %480, 56

  %509 = inttoptr i64 %508 to i64*

  %510 = load i64, i64* %509

  %511 = add i64 %480, 64

  %512 = inttoptr i64 %511 to i64*

  %513 = load i64, i64* %512

  %514 = add i64 %480, 72

  %515 = inttoptr i64 %514 to i64*

  %516 = load i64, i64* %515

  %517 = inttoptr i64 %481 to i64*

  %518 = load i64, i64* %517

  store i64 %518, i64* %3, align 8, !alias.scope !1344, !noalias !1347

  store i64 %480, i64* %11, align 8, !alias.scope !1344, !noalias !1347

  %519 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 411), i64 %483, i64 %484, i64 %485, i64 %486, i64 %487, i64 %489, i64 %492, i64 %495, i64 %498, i64 %501, i64 %504, i64 %507, i64 %510, i64 %513, i64 %516), !noalias !1344

  %520 = load i64, i64* %12, align 8

  %521 = add i64 %520, -72

  %522 = load i64, i64* %3, align 8

  store i64 0, i64* %8, align 8, !tbaa !1240

  %523 = add i64 %520, -48

  %524 = inttoptr i64 %523 to i64*

  store i64 1, i64* %524

  %525 = add i64 %520, -148

  %526 = trunc i64 %519 to i32

  %527 = inttoptr i64 %525 to i32*

  store i32 %526, i32* %527

  %528 = add i64 %522, 27

  %529 = load i64, i64* %11, align 8, !tbaa !1240

  %530 = add i64 %529, -8

  %531 = inttoptr i64 %530 to i64*

  store i64 %528, i64* %531

  %532 = inttoptr i64 %530 to i64*

  %533 = load i64, i64* %532

  store i64 %533, i64* %3, align 8, !alias.scope !1349, !noalias !1352

  store i64 %529, i64* %11, align 8, !alias.scope !1349, !noalias !1352

  %534 = tail call i64 @gettimeofday(i64 %521, i64 0), !noalias !1349

  %535 = load i64, i64* %12, align 8

  %536 = add i64 %535, -108

  %537 = load i64, i64* %3, align 8

  %538 = inttoptr i64 %536 to i32*

  store i32 0, i32* %538

  %539 = add i64 %535, -152

  %540 = trunc i64 %534 to i32

  %541 = add i64 %537, 13

  %542 = inttoptr i64 %539 to i32*

  store i32 %540, i32* %542

  %543 = bitcast %union.VectorReg* %13 to double*

  br label %block_400887



block_400887:                                     ; preds = %block_4007c9, %block_400891

  %544 = phi i64 [ %541, %block_4007c9 ], [ %210, %block_400891 ]

  %545 = phi i64 [ %535, %block_4007c9 ], [ %195, %block_400891 ]

  %546 = phi %struct.Memory* [ %596, %block_4007c9 ], [ %194, %block_400891 ]

  %547 = add i64 %545, -108

  %548 = inttoptr i64 %547 to i32*

  %549 = load i32, i32* %548

  %550 = add i32 %549, -13

  %551 = lshr i32 %550, 31

  %552 = trunc i32 %551 to i8

  %553 = lshr i32 %549, 31

  %554 = xor i32 %551, %553

  %555 = add nuw nsw i32 %554, %553

  %556 = icmp eq i32 %555, 2

  %557 = icmp ne i8 %552, 0

  %558 = xor i1 %557, %556

  %559 = select i1 %558, i64 10, i64 56

  %560 = add i64 %544, %559

  br i1 %558, label %block_400891, label %block_4008bf



block_4006d8:                                     ; preds = %block_4006c0, %block_4006cc

  %561 = phi i64 [ %243, %block_4006cc ], [ %33, %block_4006c0 ]

  %562 = phi i64 [ %247, %block_4006cc ], [ %854, %block_4006c0 ]

  %563 = phi %struct.Memory* [ %2, %block_4006cc ], [ %2, %block_4006c0 ]

  %564 = add i64 %561, -20

  %565 = inttoptr i64 %564 to i32*

  %566 = load i32, i32* %565

  %567 = zext i32 %566 to i64

  %568 = add i64 %561, -112

  %569 = inttoptr i64 %568 to i32*

  store i32 2, i32* %569

  store i64 %567, i64* %6, align 8, !tbaa !1240

  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %571 = sext i32 %566 to i64

  %572 = lshr i64 %571, 32

  store i64 %572, i64* %570, align 8, !tbaa !1240

  %573 = inttoptr i64 %568 to i32*

  %574 = load i32, i32* %573

  %575 = zext i32 %574 to i64

  store i64 %575, i64* %7, align 8, !tbaa !1240

  %576 = add i64 %562, 19

  store i64 %576, i64* %3, align 8

  %577 = sext i32 %574 to i64

  %578 = shl nuw i64 %572, 32

  %579 = or i64 %578, %567

  %580 = sdiv i64 %579, %577

  %581 = shl i64 %580, 32

  %582 = ashr exact i64 %581, 32

  %583 = icmp eq i64 %580, %582

  br i1 %583, label %589, label %584



; <label>:584:                                    ; preds = %block_4006d8

  %585 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %576, %struct.Memory* %563) #12

  %586 = load i64, i64* %12, align 8

  %587 = load i32, i32* %5, align 4

  %588 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:589:                                    ; preds = %block_4006d8

  %590 = srem i64 %579, %577

  %591 = and i64 %590, 4294967295

  store i64 %591, i64* %8, align 8, !tbaa !1240

  %592 = trunc i64 %580 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %589, %584

  %593 = phi i64 [ %588, %584 ], [ %576, %589 ]

  %594 = phi i32 [ %587, %584 ], [ %592, %589 ]

  %595 = phi i64 [ %586, %584 ], [ %561, %589 ]

  %596 = phi %struct.Memory* [ %585, %584 ], [ %563, %589 ]

  %597 = add i64 %595, -20

  %598 = inttoptr i64 %597 to i32*

  store i32 %594, i32* %598

  %599 = inttoptr i64 %597 to i32*

  %600 = load i32, i32* %599

  %601 = shl i32 %600, 1

  %602 = inttoptr i64 %597 to i32*

  store i32 %601, i32* %602

  %603 = inttoptr i64 %597 to i32*

  %604 = load i32, i32* %603

  %605 = add i32 %604, -10

  %606 = lshr i32 %605, 31

  %607 = trunc i32 %606 to i8

  %608 = lshr i32 %604, 31

  %609 = xor i32 %606, %608

  %610 = add nuw nsw i32 %609, %608

  %611 = icmp eq i32 %610, 2

  %612 = icmp ne i8 %607, 0

  %613 = xor i1 %612, %611

  %614 = select i1 %613, i64 22, i64 54

  %615 = add i64 %593, %614

  br i1 %613, label %block_400701, label %block_400721



block_4007a9:                                     ; preds = %block_400721, %block_40078e.block_4007a9_crit_edge

  %616 = phi i64 [ %791, %block_400721 ], [ %224, %block_40078e.block_4007a9_crit_edge ]

  %617 = phi i64 [ %800, %block_400721 ], [ %223, %block_40078e.block_4007a9_crit_edge ]

  %618 = phi %struct.Memory* [ %596, %block_400721 ], [ %596, %block_40078e.block_4007a9_crit_edge ]

  store i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 168), i64* %10, align 8, !tbaa !1240

  %619 = add i64 %617, 17

  %620 = load i64, i64* %11, align 8, !tbaa !1240

  %621 = add i64 %620, -8

  %622 = inttoptr i64 %621 to i64*

  store i64 %619, i64* %622

  %623 = load i64, i64* %9, align 8, !alias.scope !1309, !noalias !1312

  %624 = load i64, i64* %570, align 8, !alias.scope !1309, !noalias !1312

  %625 = load i64, i64* %744, align 8, !alias.scope !1309, !noalias !1312

  %626 = load i64, i64* %745, align 8, !alias.scope !1309, !noalias !1312

  %627 = inttoptr i64 %620 to i64*

  %628 = load i64, i64* %627

  %629 = add i64 %620, 8

  %630 = inttoptr i64 %629 to i64*

  %631 = load i64, i64* %630

  %632 = add i64 %620, 16

  %633 = inttoptr i64 %632 to i64*

  %634 = load i64, i64* %633

  %635 = add i64 %620, 24

  %636 = inttoptr i64 %635 to i64*

  %637 = load i64, i64* %636

  %638 = add i64 %620, 32

  %639 = inttoptr i64 %638 to i64*

  %640 = load i64, i64* %639

  %641 = add i64 %620, 40

  %642 = inttoptr i64 %641 to i64*

  %643 = load i64, i64* %642

  %644 = add i64 %620, 48

  %645 = inttoptr i64 %644 to i64*

  %646 = load i64, i64* %645

  %647 = add i64 %620, 56

  %648 = inttoptr i64 %647 to i64*

  %649 = load i64, i64* %648

  %650 = add i64 %620, 64

  %651 = inttoptr i64 %650 to i64*

  %652 = load i64, i64* %651

  %653 = add i64 %620, 72

  %654 = inttoptr i64 %653 to i64*

  %655 = load i64, i64* %654

  %656 = inttoptr i64 %621 to i64*

  %657 = load i64, i64* %656

  store i64 %657, i64* %3, align 8, !alias.scope !1309, !noalias !1312

  store i64 %620, i64* %11, align 8, !alias.scope !1309, !noalias !1312

  %658 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 168), i64 %623, i64 %624, i64 %616, i64 %625, i64 %626, i64 %628, i64 %631, i64 %634, i64 %637, i64 %640, i64 %643, i64 %646, i64 %649, i64 %652, i64 %655), !noalias !1309

  %659 = load i64, i64* %12, align 8

  %660 = add i64 %659, -4

  %661 = inttoptr i64 %660 to i32*

  store i32 2, i32* %661

  %662 = add i64 %659, -124

  %663 = trunc i64 %658 to i32

  %664 = inttoptr i64 %662 to i32*

  store i32 %663, i32* %664

  br label %block_400957



block_400701:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  store i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 131), i64* %10, align 8, !tbaa !1240

  %665 = add i64 %615, 17

  %666 = load i64, i64* %11, align 8, !tbaa !1240

  %667 = add i64 %666, -8

  %668 = inttoptr i64 %667 to i64*

  store i64 %665, i64* %668

  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %672 = load i64, i64* %9, align 8, !alias.scope !1354, !noalias !1357

  %673 = load i64, i64* %570, align 8, !alias.scope !1354, !noalias !1357

  %674 = load i64, i64* %669, align 8, !alias.scope !1354, !noalias !1357

  %675 = load i64, i64* %670, align 8, !alias.scope !1354, !noalias !1357

  %676 = load i64, i64* %671, align 8, !alias.scope !1354, !noalias !1357

  %677 = inttoptr i64 %666 to i64*

  %678 = load i64, i64* %677

  %679 = add i64 %666, 8

  %680 = inttoptr i64 %679 to i64*

  %681 = load i64, i64* %680

  %682 = add i64 %666, 16

  %683 = inttoptr i64 %682 to i64*

  %684 = load i64, i64* %683

  %685 = add i64 %666, 24

  %686 = inttoptr i64 %685 to i64*

  %687 = load i64, i64* %686

  %688 = add i64 %666, 32

  %689 = inttoptr i64 %688 to i64*

  %690 = load i64, i64* %689

  %691 = add i64 %666, 40

  %692 = inttoptr i64 %691 to i64*

  %693 = load i64, i64* %692

  %694 = add i64 %666, 48

  %695 = inttoptr i64 %694 to i64*

  %696 = load i64, i64* %695

  %697 = add i64 %666, 56

  %698 = inttoptr i64 %697 to i64*

  %699 = load i64, i64* %698

  %700 = add i64 %666, 64

  %701 = inttoptr i64 %700 to i64*

  %702 = load i64, i64* %701

  %703 = add i64 %666, 72

  %704 = inttoptr i64 %703 to i64*

  %705 = load i64, i64* %704

  %706 = inttoptr i64 %667 to i64*

  %707 = load i64, i64* %706

  store i64 %707, i64* %3, align 8, !alias.scope !1354, !noalias !1357

  store i64 %666, i64* %11, align 8, !alias.scope !1354, !noalias !1357

  %708 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 131), i64 %672, i64 %673, i64 %674, i64 %675, i64 %676, i64 %678, i64 %681, i64 %684, i64 %687, i64 %690, i64 %693, i64 %696, i64 %699, i64 %702, i64 %705), !noalias !1354

  %709 = load i64, i64* %12, align 8

  %710 = add i64 %709, -4

  %711 = inttoptr i64 %710 to i32*

  store i32 1, i32* %711

  %712 = add i64 %709, -116

  %713 = trunc i64 %708 to i32

  %714 = inttoptr i64 %712 to i32*

  store i32 %713, i32* %714

  br label %block_400957



block_400721:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  store i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 143), i64* %10, align 8, !tbaa !1240

  %715 = sext i32 %604 to i64

  %716 = mul nsw i64 %715, %715

  %717 = add i64 %595, -32

  %718 = inttoptr i64 %717 to i64*

  store i64 %716, i64* %718

  %719 = inttoptr i64 %717 to i64*

  %720 = load i64, i64* %719

  %721 = inttoptr i64 %597 to i32*

  %722 = load i32, i32* %721

  %723 = sext i32 %722 to i64

  %724 = add i64 %723, %720

  %725 = shl i64 %724, 3

  %726 = load i64, i64* %12, align 8

  %727 = add i64 %726, -20

  %728 = inttoptr i64 %727 to i32*

  %729 = load i32, i32* %728

  %730 = sext i32 %729 to i64

  %731 = shl nsw i64 %730, 2

  store i64 %731, i64* %7, align 8, !tbaa !1240

  %732 = add i64 %731, %725

  %733 = add i64 %726, -40

  %734 = inttoptr i64 %733 to i64*

  store i64 %732, i64* %734

  %735 = inttoptr i64 %733 to i64*

  %736 = load i64, i64* %735

  %737 = add i64 %736, 512

  %738 = ashr i64 %737, 10

  store i64 %738, i64* %9, align 8, !tbaa !1240

  %739 = add i64 %615, 84

  %740 = load i64, i64* %11, align 8, !tbaa !1240

  %741 = add i64 %740, -8

  %742 = inttoptr i64 %741 to i64*

  store i64 %739, i64* %742

  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %746 = load i64, i64* %10, align 8, !alias.scope !1359, !noalias !1362

  %747 = load i64, i64* %570, align 8, !alias.scope !1359, !noalias !1362

  %748 = load i64, i64* %743, align 8, !alias.scope !1359, !noalias !1362

  %749 = load i64, i64* %744, align 8, !alias.scope !1359, !noalias !1362

  %750 = load i64, i64* %745, align 8, !alias.scope !1359, !noalias !1362

  %751 = inttoptr i64 %740 to i64*

  %752 = load i64, i64* %751

  %753 = add i64 %740, 8

  %754 = inttoptr i64 %753 to i64*

  %755 = load i64, i64* %754

  %756 = add i64 %740, 16

  %757 = inttoptr i64 %756 to i64*

  %758 = load i64, i64* %757

  %759 = add i64 %740, 24

  %760 = inttoptr i64 %759 to i64*

  %761 = load i64, i64* %760

  %762 = add i64 %740, 32

  %763 = inttoptr i64 %762 to i64*

  %764 = load i64, i64* %763

  %765 = add i64 %740, 40

  %766 = inttoptr i64 %765 to i64*

  %767 = load i64, i64* %766

  %768 = add i64 %740, 48

  %769 = inttoptr i64 %768 to i64*

  %770 = load i64, i64* %769

  %771 = add i64 %740, 56

  %772 = inttoptr i64 %771 to i64*

  %773 = load i64, i64* %772

  %774 = add i64 %740, 64

  %775 = inttoptr i64 %774 to i64*

  %776 = load i64, i64* %775

  %777 = add i64 %740, 72

  %778 = inttoptr i64 %777 to i64*

  %779 = load i64, i64* %778

  %780 = inttoptr i64 %741 to i64*

  %781 = load i64, i64* %780

  store i64 %781, i64* %3, align 8, !alias.scope !1359, !noalias !1362

  store i64 %740, i64* %11, align 8, !alias.scope !1359, !noalias !1362

  %782 = tail call i64 @printf(i64 %746, i64 %738, i64 %747, i64 %748, i64 %749, i64 %750, i64 %752, i64 %755, i64 %758, i64 %761, i64 %764, i64 %767, i64 %770, i64 %773, i64 %776, i64 %779), !noalias !1359

  %783 = load i64, i64* %12, align 8

  %784 = add i64 %783, -40

  %785 = load i64, i64* %3, align 8

  %786 = inttoptr i64 %784 to i64*

  %787 = load i64, i64* %786

  %788 = add i64 %783, -56

  %789 = inttoptr i64 %788 to i64*

  store i64 %787, i64* %789

  %790 = inttoptr i64 %788 to i64*

  %791 = load i64, i64* %790

  store i64 %791, i64* %7, align 8, !tbaa !1240

  %792 = inttoptr i64 %784 to i64*

  %793 = load i64, i64* %792

  %794 = sub i64 %791, %793

  %795 = icmp eq i64 %794, 0

  %796 = add i64 %783, -120

  %797 = trunc i64 %782 to i32

  %798 = inttoptr i64 %796 to i32*

  store i32 %797, i32* %798

  %799 = select i1 %795, i64 25, i64 52

  %800 = add i64 %785, %799

  br i1 %795, label %block_40078e, label %block_4007a9



block_400933:                                     ; preds = %block_400919, %block_4008bf

  %801 = phi i64 [ %234, %block_400919 ], [ %144, %block_4008bf ]

  %802 = phi %struct.Memory* [ %546, %block_400919 ], [ %546, %block_4008bf ]

  store i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 465), i64* %10, align 8, !tbaa !1240

  %803 = add i64 %145, -104

  %804 = inttoptr i64 %803 to i64*

  %805 = load i64, i64* %804

  store i64 %805, i64* %9, align 8, !tbaa !1240

  %806 = add i64 %145, -96

  %807 = inttoptr i64 %806 to i64*

  %808 = load i64, i64* %807

  store i64 %808, i64* %8, align 8, !tbaa !1240

  %809 = add i64 %801, 30

  %810 = load i64, i64* %11, align 8, !tbaa !1240

  %811 = add i64 %810, -8

  %812 = inttoptr i64 %811 to i64*

  store i64 %809, i64* %812

  %813 = load i64, i64* %743, align 8, !alias.scope !1364, !noalias !1367

  %814 = load i64, i64* %744, align 8, !alias.scope !1364, !noalias !1367

  %815 = load i64, i64* %745, align 8, !alias.scope !1364, !noalias !1367

  %816 = inttoptr i64 %810 to i64*

  %817 = load i64, i64* %816

  %818 = add i64 %810, 8

  %819 = inttoptr i64 %818 to i64*

  %820 = load i64, i64* %819

  %821 = add i64 %810, 16

  %822 = inttoptr i64 %821 to i64*

  %823 = load i64, i64* %822

  %824 = add i64 %810, 24

  %825 = inttoptr i64 %824 to i64*

  %826 = load i64, i64* %825

  %827 = add i64 %810, 32

  %828 = inttoptr i64 %827 to i64*

  %829 = load i64, i64* %828

  %830 = add i64 %810, 40

  %831 = inttoptr i64 %830 to i64*

  %832 = load i64, i64* %831

  %833 = add i64 %810, 48

  %834 = inttoptr i64 %833 to i64*

  %835 = load i64, i64* %834

  %836 = add i64 %810, 56

  %837 = inttoptr i64 %836 to i64*

  %838 = load i64, i64* %837

  %839 = add i64 %810, 64

  %840 = inttoptr i64 %839 to i64*

  %841 = load i64, i64* %840

  %842 = add i64 %810, 72

  %843 = inttoptr i64 %842 to i64*

  %844 = load i64, i64* %843

  %845 = inttoptr i64 %811 to i64*

  %846 = load i64, i64* %845

  store i64 %846, i64* %3, align 8, !alias.scope !1364, !noalias !1367

  store i64 %810, i64* %11, align 8, !alias.scope !1364, !noalias !1367

  %847 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 465), i64 %805, i64 %808, i64 %813, i64 %814, i64 %815, i64 %817, i64 %820, i64 %823, i64 %826, i64 %829, i64 %832, i64 %835, i64 %838, i64 %841, i64 %844), !noalias !1364

  %848 = load i64, i64* %12, align 8

  %849 = add i64 %848, -172

  %850 = trunc i64 %847 to i32

  %851 = inttoptr i64 %849 to i32*

  store i32 %850, i32* %851

  br label %block_400957



block_4006c0:                                     ; preds = %block_400690

  %852 = add i64 %33, -20

  %853 = inttoptr i64 %852 to i32*

  store i32 200, i32* %853

  %854 = add i64 %50, 24

  br label %block_4006d8

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400508__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400508:

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

  %14 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602ff0__got_type* @seg_602ff0__got to i64), i64 8) to i64*)

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

  store i8 %22, i8* %11, align 1, !tbaa !1259

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1260

  store i8 0, i8* %13, align 1, !tbaa !1261

  store i8 0, i8* %10, align 1, !tbaa !1262

  %25 = select i1 %21, i64 18, i64 16

  %26 = add i64 %25, %1

  br i1 %21, label %block_40051a, label %block_400518



block_40051a:                                     ; preds = %block_400518, %block_400508

  %27 = phi i64 [ %7, %block_400508 ], [ %58, %block_400518 ]

  %28 = phi %struct.Memory* [ %2, %block_400508 ], [ %57, %block_400518 ]

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

  store i8 %41, i8* %10, align 1, !tbaa !1262

  %42 = icmp eq i64 %29, 0

  %43 = zext i1 %42 to i8

  store i8 %43, i8* %11, align 1, !tbaa !1259

  %44 = lshr i64 %29, 63

  %45 = trunc i64 %44 to i8

  store i8 %45, i8* %12, align 1, !tbaa !1260

  %46 = lshr i64 %27, 63

  %47 = xor i64 %44, %46

  %48 = add nuw nsw i64 %47, %44

  %49 = icmp eq i64 %48, 2

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1261

  %51 = inttoptr i64 %29 to i64*

  %52 = load i64, i64* %51

  store i64 %52, i64* %3, align 8, !tbaa !1240

  %53 = add i64 %27, 16

  store i64 %53, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %28



block_400518:                                     ; preds = %block_400508

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_40051a

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401c60_idamax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401c60:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %16 = load i64, i64* %13, align 8

  %17 = load i64, i64* %12, align 8, !tbaa !1240

  %18 = add i64 %17, -8

  %19 = inttoptr i64 %18 to i64*

  store i64 %16, i64* %19

  store i64 %18, i64* %12, align 8, !tbaa !1240

  store i64 %18, i64* %13, align 8, !tbaa !1240

  %20 = add i64 %17, -16

  %21 = load i32, i32* %7, align 4

  %22 = inttoptr i64 %20 to i32*

  store i32 %21, i32* %22

  %23 = add i64 %17, -24

  %24 = load i64, i64* %11, align 8

  %25 = inttoptr i64 %23 to i64*

  store i64 %24, i64* %25

  %26 = add i64 %17, -28

  %27 = load i32, i32* %5, align 4

  %28 = inttoptr i64 %26 to i32*

  store i32 %27, i32* %28

  %29 = add i64 %17, -16

  %30 = inttoptr i64 %29 to i32*

  %31 = load i32, i32* %30

  %32 = add i32 %31, -1

  %33 = icmp eq i32 %31, 0

  %34 = zext i1 %33 to i8

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %34, i8* %35, align 1, !tbaa !1244

  %36 = and i32 %32, 255

  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #9

  %38 = trunc i32 %37 to i8

  %39 = and i8 %38, 1

  %40 = xor i8 %39, 1

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %40, i8* %41, align 1, !tbaa !1258

  %42 = xor i32 %32, %31

  %43 = lshr i32 %42, 4

  %44 = trunc i32 %43 to i8

  %45 = and i8 %44, 1

  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %45, i8* %46, align 1, !tbaa !1262

  %47 = icmp eq i32 %32, 0

  %48 = zext i1 %47 to i8

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %48, i8* %49, align 1, !tbaa !1259

  %50 = lshr i32 %32, 31

  %51 = trunc i32 %50 to i8

  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %51, i8* %52, align 1, !tbaa !1260

  %53 = lshr i32 %31, 31

  %54 = xor i32 %50, %53

  %55 = add nuw nsw i32 %54, %53

  %56 = icmp eq i32 %55, 2

  %57 = zext i1 %56 to i8

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %57, i8* %58, align 1, !tbaa !1261

  %59 = icmp ne i8 %51, 0

  %60 = xor i1 %59, %56

  %61 = select i1 %60, i64 24, i64 36

  %62 = add i64 %61, %1

  br i1 %60, label %block_401c78, label %block_401c84



block_401cdf:                                     ; preds = %block_401cd3

  %63 = add i64 %428, -16

  %64 = inttoptr i64 %63 to i64*

  %65 = load i64, i64* %64

  store i64 %65, i64* %8, align 8, !tbaa !1240

  %66 = add i64 %428, -40

  %67 = inttoptr i64 %66 to i32*

  %68 = load i32, i32* %67

  %69 = sext i32 %68 to i64

  store i64 %69, i64* %9, align 8, !tbaa !1240

  %70 = shl nsw i64 %69, 3

  %71 = add i64 %70, %65

  %72 = inttoptr i64 %71 to double*

  %73 = load double, double* %72

  %74 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 96) to float*)

  %75 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 100) to float*)

  %76 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 104) to float*)

  %77 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 108) to float*)

  store float %74, float* %301, align 1, !tbaa !1277

  store float %75, float* %303, align 1, !tbaa !1277

  store float %76, float* %305, align 1, !tbaa !1277

  store float %77, float* %307, align 1, !tbaa !1277

  %78 = bitcast double %73 to i64

  %79 = load i64, i64* %309, align 1

  %80 = and i64 %79, %78

  %81 = trunc i64 %80 to i32

  %82 = lshr i64 %80, 32

  %83 = trunc i64 %82 to i32

  store i32 %81, i32* %315, align 1, !tbaa !1270

  store i32 %83, i32* %317, align 1, !tbaa !1270

  store i32 0, i32* %318, align 1, !tbaa !1270

  store i32 0, i32* %320, align 1, !tbaa !1270

  %84 = add i64 %428, -32

  %85 = add i64 %463, 29

  store i64 %85, i64* %3, align 8

  %86 = load double, double* %294, align 1

  %87 = inttoptr i64 %84 to double*

  %88 = load double, double* %87

  %89 = fcmp uno double %86, %88

  br i1 %89, label %90, label %103



; <label>:90:                                     ; preds = %block_401cdf

  %91 = fadd double %86, %88

  %92 = bitcast double %91 to i64

  %93 = and i64 %92, 9221120237041090560

  %94 = icmp eq i64 %93, 9218868437227405312

  %95 = and i64 %92, 2251799813685247

  %96 = icmp ne i64 %95, 0

  %97 = and i1 %94, %96

  br i1 %97, label %98, label %109



; <label>:98:                                     ; preds = %90

  %99 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %85, %struct.Memory* %429) #12

  %100 = load i64, i64* %3, align 8

  %101 = load i8, i8* %35, align 1, !tbaa !1244

  %102 = load i8, i8* %49, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



; <label>:103:                                    ; preds = %block_401cdf

  %104 = fcmp ogt double %86, %88

  br i1 %104, label %109, label %105



; <label>:105:                                    ; preds = %103

  %106 = fcmp olt double %86, %88

  br i1 %106, label %109, label %107



; <label>:107:                                    ; preds = %105

  %108 = fcmp oeq double %86, %88

  br i1 %108, label %109, label %112



; <label>:109:                                    ; preds = %107, %105, %103, %90

  %110 = phi i8 [ 0, %103 ], [ 0, %105 ], [ 1, %107 ], [ 1, %90 ]

  %111 = phi i8 [ 0, %103 ], [ 1, %105 ], [ 0, %107 ], [ 1, %90 ]

  br label %112



; <label>:112:                                    ; preds = %109, %107

  %113 = phi i8 [ %110, %109 ], [ %450, %107 ]

  %114 = phi i8 [ %111, %109 ], [ %438, %107 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %112, %98

  %115 = phi i8 [ %102, %98 ], [ %113, %112 ]

  %116 = phi i8 [ %101, %98 ], [ %114, %112 ]

  %117 = phi i64 [ %100, %98 ], [ %85, %112 ]

  %118 = phi %struct.Memory* [ %99, %98 ], [ %429, %112 ]

  %119 = or i8 %115, %116

  %120 = icmp ne i8 %119, 0

  %121 = select i1 %120, i64 41, i64 6

  %122 = add i64 %117, %121

  %123 = load i64, i64* %13, align 8

  br i1 %120, label %block_401d25, label %block_401d02



block_401c9a:                                     ; preds = %block_401c84

  %124 = add i64 %17, -28

  %125 = inttoptr i64 %124 to i32*

  %126 = load i32, i32* %125

  %127 = add i32 %126, -1

  %128 = icmp eq i32 %127, 0

  %129 = select i1 %128, i64 167, i64 10

  %130 = add i64 %211, %129

  br i1 %128, label %block_401d41, label %block_401ca4



block_401dd7:                                     ; preds = %block_401c8e, %block_401dd1, %block_401c78

  %131 = phi i64 [ %345, %block_401dd1 ], [ %18, %block_401c8e ], [ %18, %block_401c78 ]

  %132 = phi i64 [ %338, %block_401dd1 ], [ %18, %block_401c8e ], [ %18, %block_401c78 ]

  %133 = phi %struct.Memory* [ %339, %block_401dd1 ], [ %2, %block_401c8e ], [ %2, %block_401c78 ]

  %134 = add i64 %132, -4

  %135 = inttoptr i64 %134 to i32*

  %136 = load i32, i32* %135

  %137 = zext i32 %136 to i64

  store i64 %137, i64* %8, align 8, !tbaa !1240

  %138 = add i64 %131, 8

  %139 = inttoptr i64 %131 to i64*

  %140 = load i64, i64* %139

  store i64 %140, i64* %13, align 8, !tbaa !1240

  %141 = inttoptr i64 %138 to i64*

  %142 = load i64, i64* %141

  store i64 %142, i64* %3, align 8, !tbaa !1240

  %143 = add i64 %131, 16

  store i64 %143, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %133



block_401d96:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6

  %144 = add i64 %285, -36

  %145 = inttoptr i64 %144 to i32*

  %146 = load i32, i32* %145

  %147 = add i64 %285, -44

  %148 = inttoptr i64 %147 to i32*

  store i32 %146, i32* %148

  %149 = add i64 %285, -16

  %150 = inttoptr i64 %149 to i64*

  %151 = load i64, i64* %150

  store i64 %151, i64* %9, align 8, !tbaa !1240

  %152 = inttoptr i64 %144 to i32*

  %153 = load i32, i32* %152

  %154 = sext i32 %153 to i64

  store i64 %154, i64* %10, align 8, !tbaa !1240

  %155 = shl nsw i64 %154, 3

  %156 = add i64 %155, %151

  %157 = inttoptr i64 %156 to double*

  %158 = load double, double* %157

  %159 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 96) to float*)

  %160 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 100) to float*)

  %161 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 104) to float*)

  %162 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 108) to float*)

  store float %159, float* %391, align 1, !tbaa !1277

  store float %160, float* %393, align 1, !tbaa !1277

  store float %161, float* %395, align 1, !tbaa !1277

  store float %162, float* %397, align 1, !tbaa !1277

  %163 = bitcast double %158 to i64

  %164 = load i64, i64* %399, align 1

  %165 = and i64 %164, %163

  %166 = trunc i64 %165 to i32

  %167 = lshr i64 %165, 32

  %168 = trunc i64 %167 to i32

  store i32 %166, i32* %405, align 1, !tbaa !1270

  store i32 %168, i32* %407, align 1, !tbaa !1270

  store i32 0, i32* %408, align 1, !tbaa !1270

  store i32 0, i32* %410, align 1, !tbaa !1270

  %169 = add i64 %285, -32

  %170 = add i64 %284, 35

  %171 = load double, double* %384, align 1

  %172 = inttoptr i64 %169 to double*

  store double %171, double* %172

  br label %block_401db9



block_401d67:                                     ; preds = %block_401db9, %block_401d41

  %173 = phi i64 [ %415, %block_401d41 ], [ %424, %block_401db9 ]

  %174 = phi i64 [ %18, %block_401d41 ], [ %285, %block_401db9 ]

  %175 = phi %struct.Memory* [ %2, %block_401d41 ], [ %418, %block_401db9 ]

  %176 = add i64 %174, -36

  %177 = inttoptr i64 %176 to i32*

  %178 = load i32, i32* %177

  %179 = add i64 %174, -8

  %180 = inttoptr i64 %179 to i32*

  %181 = load i32, i32* %180

  %182 = sub i32 %178, %181

  %183 = icmp ult i32 %178, %181

  %184 = zext i1 %183 to i8

  store i8 %184, i8* %35, align 1, !tbaa !1244

  %185 = and i32 %182, 255

  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #9

  %187 = trunc i32 %186 to i8

  %188 = and i8 %187, 1

  %189 = xor i8 %188, 1

  store i8 %189, i8* %41, align 1, !tbaa !1258

  %190 = xor i32 %181, %178

  %191 = xor i32 %190, %182

  %192 = lshr i32 %191, 4

  %193 = trunc i32 %192 to i8

  %194 = and i8 %193, 1

  store i8 %194, i8* %46, align 1, !tbaa !1262

  %195 = icmp eq i32 %182, 0

  %196 = zext i1 %195 to i8

  store i8 %196, i8* %49, align 1, !tbaa !1259

  %197 = lshr i32 %182, 31

  %198 = trunc i32 %197 to i8

  store i8 %198, i8* %52, align 1, !tbaa !1260

  %199 = lshr i32 %178, 31

  %200 = lshr i32 %181, 31

  %201 = xor i32 %200, %199

  %202 = xor i32 %197, %199

  %203 = add nuw nsw i32 %202, %201

  %204 = icmp eq i32 %203, 2

  %205 = zext i1 %204 to i8

  store i8 %205, i8* %58, align 1, !tbaa !1261

  %206 = icmp ne i8 %198, 0

  %207 = xor i1 %206, %204

  %208 = select i1 %207, i64 12, i64 101

  %209 = add i64 %173, %208

  br i1 %207, label %block_401d73, label %block_401dd1.loopexit



block_401c84:                                     ; preds = %block_401c60

  store i8 %34, i8* %35, align 1, !tbaa !1244

  store i8 %40, i8* %41, align 1, !tbaa !1258

  store i8 %45, i8* %46, align 1, !tbaa !1262

  store i8 %48, i8* %49, align 1, !tbaa !1259

  store i8 %51, i8* %52, align 1, !tbaa !1260

  store i8 %57, i8* %58, align 1, !tbaa !1261

  %210 = select i1 %47, i64 10, i64 22

  %211 = add i64 %62, %210

  br i1 %47, label %block_401c8e, label %block_401c9a



block_401d25:                                     ; preds = %block_401d02, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  %212 = phi i64 [ %373, %block_401d02 ], [ %122, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]

  %213 = phi %struct.Memory* [ %118, %block_401d02 ], [ %118, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]

  %214 = add i64 %123, -40

  %215 = inttoptr i64 %214 to i32*

  %216 = load i32, i32* %215

  %217 = add i64 %123, -20

  %218 = inttoptr i64 %217 to i32*

  %219 = load i32, i32* %218

  %220 = add i32 %219, %216

  %221 = inttoptr i64 %214 to i32*

  store i32 %220, i32* %221

  %222 = add i64 %123, -36

  %223 = inttoptr i64 %222 to i32*

  %224 = load i32, i32* %223

  %225 = add i32 %224, 1

  %226 = inttoptr i64 %222 to i32*

  store i32 %225, i32* %226

  %227 = add i64 %212, -82

  br label %block_401cd3



block_401d73:                                     ; preds = %block_401d67

  %228 = add i64 %174, -16

  %229 = inttoptr i64 %228 to i64*

  %230 = load i64, i64* %229

  store i64 %230, i64* %8, align 8, !tbaa !1240

  %231 = sext i32 %178 to i64

  store i64 %231, i64* %9, align 8, !tbaa !1240

  %232 = shl nsw i64 %231, 3

  %233 = add i64 %232, %230

  %234 = inttoptr i64 %233 to double*

  %235 = load double, double* %234

  %236 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 96) to float*)

  %237 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 100) to float*)

  %238 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 104) to float*)

  %239 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 108) to float*)

  store float %236, float* %391, align 1, !tbaa !1277

  store float %237, float* %393, align 1, !tbaa !1277

  store float %238, float* %395, align 1, !tbaa !1277

  store float %239, float* %397, align 1, !tbaa !1277

  %240 = bitcast double %235 to i64

  %241 = load i64, i64* %399, align 1

  %242 = and i64 %241, %240

  %243 = trunc i64 %242 to i32

  %244 = lshr i64 %242, 32

  %245 = trunc i64 %244 to i32

  store i32 %243, i32* %405, align 1, !tbaa !1270

  store i32 %245, i32* %407, align 1, !tbaa !1270

  store i32 0, i32* %408, align 1, !tbaa !1270

  store i32 0, i32* %410, align 1, !tbaa !1270

  %246 = add i64 %174, -32

  %247 = add i64 %209, 29

  store i64 %247, i64* %3, align 8

  %248 = load double, double* %384, align 1

  %249 = inttoptr i64 %246 to double*

  %250 = load double, double* %249

  %251 = fcmp uno double %248, %250

  br i1 %251, label %252, label %265



; <label>:252:                                    ; preds = %block_401d73

  %253 = fadd double %248, %250

  %254 = bitcast double %253 to i64

  %255 = and i64 %254, 9221120237041090560

  %256 = icmp eq i64 %255, 9218868437227405312

  %257 = and i64 %254, 2251799813685247

  %258 = icmp ne i64 %257, 0

  %259 = and i1 %256, %258

  br i1 %259, label %260, label %271



; <label>:260:                                    ; preds = %252

  %261 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %247, %struct.Memory* %175) #12

  %262 = load i64, i64* %3, align 8

  %263 = load i8, i8* %35, align 1, !tbaa !1244

  %264 = load i8, i8* %49, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6



; <label>:265:                                    ; preds = %block_401d73

  %266 = fcmp ogt double %248, %250

  br i1 %266, label %271, label %267



; <label>:267:                                    ; preds = %265

  %268 = fcmp olt double %248, %250

  br i1 %268, label %271, label %269



; <label>:269:                                    ; preds = %267

  %270 = fcmp oeq double %248, %250

  br i1 %270, label %271, label %274



; <label>:271:                                    ; preds = %269, %267, %265, %252

  %272 = phi i8 [ 0, %265 ], [ 0, %267 ], [ 1, %269 ], [ 1, %252 ]

  %273 = phi i8 [ 0, %265 ], [ 1, %267 ], [ 0, %269 ], [ 1, %252 ]

  br label %274



; <label>:274:                                    ; preds = %271, %269

  %275 = phi i8 [ %272, %271 ], [ %196, %269 ]

  %276 = phi i8 [ %273, %271 ], [ %184, %269 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6: ; preds = %274, %260

  %277 = phi i8 [ %264, %260 ], [ %275, %274 ]

  %278 = phi i8 [ %263, %260 ], [ %276, %274 ]

  %279 = phi i64 [ %262, %260 ], [ %247, %274 ]

  %280 = phi %struct.Memory* [ %261, %260 ], [ %175, %274 ]

  %281 = or i8 %277, %278

  %282 = icmp ne i8 %281, 0

  %283 = select i1 %282, i64 41, i64 6

  %284 = add i64 %279, %283

  %285 = load i64, i64* %13, align 8

  br i1 %282, label %block_401db9, label %block_401d96



block_401ca4:                                     ; preds = %block_401c9a

  %286 = add i64 %17, -48

  %287 = inttoptr i64 %286 to i32*

  store i32 1, i32* %287

  %288 = add i64 %17, -24

  %289 = inttoptr i64 %288 to i64*

  %290 = load i64, i64* %289

  %291 = bitcast [32 x %union.VectorReg]* %14 to i8*

  %292 = inttoptr i64 %290 to double*

  %293 = load double, double* %292

  %294 = bitcast [32 x %union.VectorReg]* %14 to double*

  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %296 = bitcast %union.VectorReg* %15 to i8*

  %297 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 96) to float*)

  %298 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 100) to float*)

  %299 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 104) to float*)

  %300 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 108) to float*)

  %301 = bitcast %union.VectorReg* %15 to float*

  store float %297, float* %301, align 1, !tbaa !1277

  %302 = getelementptr inbounds i8, i8* %296, i64 4

  %303 = bitcast i8* %302 to float*

  store float %298, float* %303, align 1, !tbaa !1277

  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %305 = bitcast i64* %304 to float*

  store float %299, float* %305, align 1, !tbaa !1277

  %306 = getelementptr inbounds i8, i8* %296, i64 12

  %307 = bitcast i8* %306 to float*

  store float %300, float* %307, align 1, !tbaa !1277

  %308 = bitcast double %293 to i64

  %309 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %15, i64 0, i32 0, i32 0, i32 0, i64 0

  %310 = load i64, i64* %309, align 1

  %311 = and i64 %310, %308

  %312 = trunc i64 %311 to i32

  %313 = lshr i64 %311, 32

  %314 = trunc i64 %313 to i32

  %315 = bitcast [32 x %union.VectorReg]* %14 to i32*

  store i32 %312, i32* %315, align 1, !tbaa !1270

  %316 = getelementptr inbounds i8, i8* %291, i64 4

  %317 = bitcast i8* %316 to i32*

  store i32 %314, i32* %317, align 1, !tbaa !1270

  %318 = bitcast i64* %295 to i32*

  store i32 0, i32* %318, align 1, !tbaa !1270

  %319 = getelementptr inbounds i8, i8* %291, i64 12

  %320 = bitcast i8* %319 to i32*

  store i32 0, i32* %320, align 1, !tbaa !1270

  %321 = add i64 %17, -40

  %322 = load double, double* %294, align 1

  %323 = inttoptr i64 %321 to double*

  store double %322, double* %323

  %324 = inttoptr i64 %286 to i32*

  %325 = load i32, i32* %324

  %326 = inttoptr i64 %124 to i32*

  %327 = load i32, i32* %326

  %328 = add i32 %327, %325

  %329 = zext i32 %328 to i64

  store i64 %329, i64* %9, align 8, !tbaa !1240

  %330 = load i64, i64* %13, align 8

  %331 = add i64 %330, -40

  %332 = inttoptr i64 %331 to i32*

  store i32 %328, i32* %332

  %333 = add i64 %330, -36

  %334 = add i64 %130, 47

  %335 = inttoptr i64 %333 to i32*

  store i32 1, i32* %335

  br label %block_401cd3



block_401c78:                                     ; preds = %block_401c60

  %336 = add i64 %17, -12

  %337 = inttoptr i64 %336 to i32*

  store i32 -1, i32* %337

  br label %block_401dd7



block_401dd1.loopexit:                            ; preds = %block_401d67

  br label %block_401dd1



block_401dd1.loopexit37:                          ; preds = %block_401cd3

  br label %block_401dd1



block_401dd1:                                     ; preds = %block_401dd1.loopexit37, %block_401dd1.loopexit

  %338 = phi i64 [ %174, %block_401dd1.loopexit ], [ %428, %block_401dd1.loopexit37 ]

  %339 = phi %struct.Memory* [ %175, %block_401dd1.loopexit ], [ %429, %block_401dd1.loopexit37 ]

  %340 = add i64 %338, -44

  %341 = inttoptr i64 %340 to i32*

  %342 = load i32, i32* %341

  %343 = add i64 %338, -4

  %344 = inttoptr i64 %343 to i32*

  store i32 %342, i32* %344

  %345 = load i64, i64* %12, align 8, !tbaa !1240

  br label %block_401dd7



block_401d02:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  %346 = add i64 %123, -36

  %347 = inttoptr i64 %346 to i32*

  %348 = load i32, i32* %347

  %349 = add i64 %123, -44

  %350 = inttoptr i64 %349 to i32*

  store i32 %348, i32* %350

  %351 = add i64 %123, -16

  %352 = inttoptr i64 %351 to i64*

  %353 = load i64, i64* %352

  store i64 %353, i64* %9, align 8, !tbaa !1240

  %354 = add i64 %123, -40

  %355 = inttoptr i64 %354 to i32*

  %356 = load i32, i32* %355

  %357 = sext i32 %356 to i64

  store i64 %357, i64* %10, align 8, !tbaa !1240

  %358 = shl nsw i64 %357, 3

  %359 = add i64 %358, %353

  %360 = inttoptr i64 %359 to double*

  %361 = load double, double* %360

  %362 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 96) to float*)

  %363 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 100) to float*)

  %364 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 104) to float*)

  %365 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 108) to float*)

  store float %362, float* %301, align 1, !tbaa !1277

  store float %363, float* %303, align 1, !tbaa !1277

  store float %364, float* %305, align 1, !tbaa !1277

  store float %365, float* %307, align 1, !tbaa !1277

  %366 = bitcast double %361 to i64

  %367 = load i64, i64* %309, align 1

  %368 = and i64 %367, %366

  %369 = trunc i64 %368 to i32

  %370 = lshr i64 %368, 32

  %371 = trunc i64 %370 to i32

  store i32 %369, i32* %315, align 1, !tbaa !1270

  store i32 %371, i32* %317, align 1, !tbaa !1270

  store i32 0, i32* %318, align 1, !tbaa !1270

  store i32 0, i32* %320, align 1, !tbaa !1270

  %372 = add i64 %123, -32

  %373 = add i64 %122, 35

  %374 = load double, double* %294, align 1

  %375 = inttoptr i64 %372 to double*

  store double %374, double* %375

  br label %block_401d25



block_401d41:                                     ; preds = %block_401c9a

  %376 = add i64 %17, -52

  %377 = inttoptr i64 %376 to i32*

  store i32 0, i32* %377

  %378 = add i64 %17, -24

  %379 = inttoptr i64 %378 to i64*

  %380 = load i64, i64* %379

  %381 = bitcast [32 x %union.VectorReg]* %14 to i8*

  %382 = inttoptr i64 %380 to double*

  %383 = load double, double* %382

  %384 = bitcast [32 x %union.VectorReg]* %14 to double*

  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %386 = bitcast %union.VectorReg* %15 to i8*

  %387 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 96) to float*)

  %388 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 100) to float*)

  %389 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 104) to float*)

  %390 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 108) to float*)

  %391 = bitcast %union.VectorReg* %15 to float*

  store float %387, float* %391, align 1, !tbaa !1277

  %392 = getelementptr inbounds i8, i8* %386, i64 4

  %393 = bitcast i8* %392 to float*

  store float %388, float* %393, align 1, !tbaa !1277

  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %395 = bitcast i64* %394 to float*

  store float %389, float* %395, align 1, !tbaa !1277

  %396 = getelementptr inbounds i8, i8* %386, i64 12

  %397 = bitcast i8* %396 to float*

  store float %390, float* %397, align 1, !tbaa !1277

  %398 = bitcast double %383 to i64

  %399 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %15, i64 0, i32 0, i32 0, i32 0, i64 0

  %400 = load i64, i64* %399, align 1

  %401 = and i64 %400, %398

  %402 = trunc i64 %401 to i32

  %403 = lshr i64 %401, 32

  %404 = trunc i64 %403 to i32

  %405 = bitcast [32 x %union.VectorReg]* %14 to i32*

  store i32 %402, i32* %405, align 1, !tbaa !1270

  %406 = getelementptr inbounds i8, i8* %381, i64 4

  %407 = bitcast i8* %406 to i32*

  store i32 %404, i32* %407, align 1, !tbaa !1270

  %408 = bitcast i64* %385 to i32*

  store i32 0, i32* %408, align 1, !tbaa !1270

  %409 = getelementptr inbounds i8, i8* %381, i64 12

  %410 = bitcast i8* %409 to i32*

  store i32 0, i32* %410, align 1, !tbaa !1270

  %411 = add i64 %17, -40

  %412 = load double, double* %384, align 1

  %413 = inttoptr i64 %411 to double*

  store double %412, double* %413

  %414 = add i64 %17, -44

  %415 = add i64 %130, 38

  %416 = inttoptr i64 %414 to i32*

  store i32 1, i32* %416

  br label %block_401d67



block_401db9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6, %block_401d96

  %417 = phi i64 [ %170, %block_401d96 ], [ %284, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6 ]

  %418 = phi %struct.Memory* [ %280, %block_401d96 ], [ %280, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit6 ]

  %419 = add i64 %285, -36

  %420 = inttoptr i64 %419 to i32*

  %421 = load i32, i32* %420

  %422 = add i32 %421, 1

  %423 = inttoptr i64 %419 to i32*

  store i32 %422, i32* %423

  %424 = add i64 %417, -82

  br label %block_401d67



block_401c8e:                                     ; preds = %block_401c84

  %425 = add i64 %17, -12

  %426 = inttoptr i64 %425 to i32*

  store i32 0, i32* %426

  br label %block_401dd7



block_401cd3:                                     ; preds = %block_401ca4, %block_401d25

  %427 = phi i64 [ %334, %block_401ca4 ], [ %227, %block_401d25 ]

  %428 = phi i64 [ %330, %block_401ca4 ], [ %123, %block_401d25 ]

  %429 = phi %struct.Memory* [ %2, %block_401ca4 ], [ %213, %block_401d25 ]

  %430 = add i64 %428, -36

  %431 = inttoptr i64 %430 to i32*

  %432 = load i32, i32* %431

  %433 = add i64 %428, -8

  %434 = inttoptr i64 %433 to i32*

  %435 = load i32, i32* %434

  %436 = sub i32 %432, %435

  %437 = icmp ult i32 %432, %435

  %438 = zext i1 %437 to i8

  store i8 %438, i8* %35, align 1, !tbaa !1244

  %439 = and i32 %436, 255

  %440 = tail call i32 @llvm.ctpop.i32(i32 %439) #9

  %441 = trunc i32 %440 to i8

  %442 = and i8 %441, 1

  %443 = xor i8 %442, 1

  store i8 %443, i8* %41, align 1, !tbaa !1258

  %444 = xor i32 %435, %432

  %445 = xor i32 %444, %436

  %446 = lshr i32 %445, 4

  %447 = trunc i32 %446 to i8

  %448 = and i8 %447, 1

  store i8 %448, i8* %46, align 1, !tbaa !1262

  %449 = icmp eq i32 %436, 0

  %450 = zext i1 %449 to i8

  store i8 %450, i8* %49, align 1, !tbaa !1259

  %451 = lshr i32 %436, 31

  %452 = trunc i32 %451 to i8

  store i8 %452, i8* %52, align 1, !tbaa !1260

  %453 = lshr i32 %432, 31

  %454 = lshr i32 %435, 31

  %455 = xor i32 %454, %453

  %456 = xor i32 %451, %453

  %457 = add nuw nsw i32 %456, %455

  %458 = icmp eq i32 %457, 2

  %459 = zext i1 %458 to i8

  store i8 %459, i8* %58, align 1, !tbaa !1261

  %460 = icmp ne i8 %452, 0

  %461 = xor i1 %460, %458

  %462 = select i1 %461, i64 12, i64 105

  %463 = add i64 %427, %462

  br i1 %461, label %block_401cdf, label %block_401dd1.loopexit37

}



; Function Attrs: noinline

define %struct.Memory* @sub_400520(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400520:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603000__got_plt_type* @seg_603000__got_plt to i64), i64 8) to i64*)

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = load i64, i64* %5, align 8, !tbaa !1240

  %7 = add i64 %6, -8

  %8 = inttoptr i64 %7 to i64*

  store i64 %4, i64* %8

  store i64 %7, i64* %5, align 8, !tbaa !1240

  %9 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603000__got_plt_type* @seg_603000__got_plt to i64), i64 16) to i64*)

  store i64 %9, i64* %3, align 8, !tbaa !1240

  %10 = icmp eq i64 %9, 4195628

  br i1 %10, label %block_40052c, label %17



block_40052c:                                     ; preds = %block_400520

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %13 = load i64, i64* %12, align 8, !alias.scope !1369, !noalias !1372

  %14 = inttoptr i64 %7 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %3, align 8, !alias.scope !1369, !noalias !1372

  store i64 %6, i64* %5, align 8, !alias.scope !1369, !noalias !1372

  %16 = tail call i64 @getenv(i64 %13), !noalias !1369

  store i64 %16, i64* %11, align 8, !alias.scope !1369, !noalias !1372

  ret %struct.Memory* %2



; <label>:17:                                     ; preds = %block_400520

  %18 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %18

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_402000_dscal_ur(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_402000:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %15 = load i64, i64* %13, align 8

  %16 = load i64, i64* %12, align 8, !tbaa !1240

  %17 = add i64 %16, -8

  %18 = inttoptr i64 %17 to i64*

  store i64 %15, i64* %18

  store i64 %17, i64* %12, align 8, !tbaa !1240

  store i64 %17, i64* %13, align 8, !tbaa !1240

  %19 = add i64 %16, -12

  %20 = load i32, i32* %7, align 4

  %21 = inttoptr i64 %19 to i32*

  store i32 %20, i32* %21

  %22 = add i64 %16, -24

  %23 = bitcast %union.VectorReg* %14 to double*

  %24 = load double, double* %23, align 1

  %25 = inttoptr i64 %22 to double*

  store double %24, double* %25

  %26 = add i64 %16, -32

  %27 = load i64, i64* %11, align 8

  %28 = inttoptr i64 %26 to i64*

  store i64 %27, i64* %28

  %29 = add i64 %16, -36

  %30 = load i32, i32* %5, align 4

  %31 = inttoptr i64 %29 to i32*

  store i32 %30, i32* %31

  %32 = add i64 %16, -12

  %33 = inttoptr i64 %32 to i32*

  %34 = load i32, i32* %33

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %35, align 1, !tbaa !1244

  %36 = and i32 %34, 255

  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #9

  %38 = trunc i32 %37 to i8

  %39 = and i8 %38, 1

  %40 = xor i8 %39, 1

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %40, i8* %41, align 1, !tbaa !1258

  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %42, align 1, !tbaa !1262

  %43 = icmp eq i32 %34, 0

  %44 = zext i1 %43 to i8

  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %44, i8* %45, align 1, !tbaa !1259

  %46 = lshr i32 %34, 31

  %47 = trunc i32 %46 to i8

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %47, i8* %48, align 1, !tbaa !1260

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %49, align 1, !tbaa !1261

  %50 = xor i1 %43, true

  %51 = icmp eq i8 %47, 0

  %52 = and i1 %51, %50

  %53 = select i1 %52, i64 34, i64 29

  %54 = add i64 %53, %1

  br i1 %52, label %block_402022, label %block_40201d



block_40209b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %55 = add i64 %150, 7

  %56 = inttoptr i64 %151 to i32*

  store i32 0, i32* %56

  %57 = add i64 %142, -16

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %59 = add i64 %142, -24

  br label %block_4020a2



block_402076:                                     ; preds = %block_40203d

  %60 = zext i32 %79 to i64

  store i64 %60, i64* %8, align 8, !tbaa !1240

  %61 = icmp ult i32 %79, %81

  %62 = zext i1 %61 to i8

  %63 = and i32 %82, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #9

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  %68 = xor i32 %81, %79

  %69 = xor i32 %68, %82

  %70 = lshr i32 %69, 4

  %71 = trunc i32 %70 to i8

  %72 = and i8 %71, 1

  %73 = icmp eq i32 %82, 0

  %74 = zext i1 %73 to i8

  %75 = zext i1 %90 to i8

  store i8 %62, i8* %35, align 1, !tbaa !1244

  store i8 %67, i8* %41, align 1, !tbaa !1258

  store i8 %72, i8* %42, align 1, !tbaa !1262

  store i8 %74, i8* %45, align 1, !tbaa !1259

  store i8 %84, i8* %48, align 1, !tbaa !1260

  store i8 %75, i8* %49, align 1, !tbaa !1261

  br label %block_4021d2.sink.split



block_40203d:                                     ; preds = %block_402049, %block_40202c

  %76 = phi i64 [ %233, %block_40202c ], [ %310, %block_402049 ]

  %77 = phi %struct.Memory* [ %2, %block_40202c ], [ %77, %block_402049 ]

  %78 = inttoptr i64 %232 to i32*

  %79 = load i32, i32* %78

  %80 = inttoptr i64 %229 to i32*

  %81 = load i32, i32* %80

  %82 = sub i32 %79, %81

  %83 = lshr i32 %82, 31

  %84 = trunc i32 %83 to i8

  %85 = lshr i32 %79, 31

  %86 = lshr i32 %81, 31

  %87 = xor i32 %86, %85

  %88 = xor i32 %83, %85

  %89 = add nuw nsw i32 %88, %87

  %90 = icmp eq i32 %89, 2

  %91 = icmp ne i8 %84, 0

  %92 = xor i1 %91, %90

  %93 = select i1 %92, i64 12, i64 57

  %94 = add i64 %76, %93

  br i1 %92, label %block_402049, label %block_402076



block_4020f5:                                     ; preds = %block_402101, %block_4020ef

  %95 = phi i64 [ %190, %block_4020ef ], [ %383, %block_402101 ]

  %96 = phi %struct.Memory* [ %186, %block_4020ef ], [ %96, %block_402101 ]

  %97 = inttoptr i64 %151 to i32*

  %98 = load i32, i32* %97

  %99 = inttoptr i64 %184 to i32*

  %100 = load i32, i32* %99

  %101 = sub i32 %98, %100

  %102 = lshr i32 %101, 31

  %103 = trunc i32 %102 to i8

  %104 = lshr i32 %98, 31

  %105 = lshr i32 %100, 31

  %106 = xor i32 %105, %104

  %107 = xor i32 %102, %104

  %108 = add nuw nsw i32 %107, %106

  %109 = icmp eq i32 %108, 2

  %110 = icmp ne i8 %103, 0

  %111 = xor i1 %110, %109

  %112 = select i1 %111, i64 12, i64 221

  %113 = add i64 %95, %112

  br i1 %111, label %block_402101, label %block_4021d2.loopexit



block_40207b:                                     ; preds = %block_402022

  %114 = zext i32 %34 to i64

  %115 = add i64 %16, -52

  %116 = inttoptr i64 %115 to i32*

  store i32 5, i32* %116

  store i64 %114, i64* %8, align 8, !tbaa !1240

  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %118 = sext i32 %34 to i64

  %119 = lshr i64 %118, 32

  store i64 %119, i64* %117, align 8, !tbaa !1240

  %120 = inttoptr i64 %115 to i32*

  %121 = load i32, i32* %120

  %122 = zext i32 %121 to i64

  store i64 %122, i64* %9, align 8, !tbaa !1240

  %123 = add i64 %291, 19

  store i64 %123, i64* %3, align 8

  %124 = sext i32 %121 to i64

  %125 = shl nuw i64 %119, 32

  %126 = or i64 %125, %114

  %127 = sdiv i64 %126, %124

  %128 = shl i64 %127, 32

  %129 = ashr exact i64 %128, 32

  %130 = icmp eq i64 %127, %129

  br i1 %130, label %136, label %131



; <label>:131:                                    ; preds = %block_40207b

  %132 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %123, %struct.Memory* %2) #12

  %133 = load i64, i64* %13, align 8

  %134 = load i32, i32* %5, align 4

  %135 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:136:                                    ; preds = %block_40207b

  %137 = srem i64 %126, %124

  %138 = and i64 %137, 4294967295

  store i64 %138, i64* %10, align 8, !tbaa !1240

  %139 = trunc i64 %137 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %136, %131

  %140 = phi i64 [ %135, %131 ], [ %123, %136 ]

  %141 = phi i32 [ %134, %131 ], [ %139, %136 ]

  %142 = phi i64 [ %133, %131 ], [ %17, %136 ]

  %143 = phi %struct.Memory* [ %132, %131 ], [ %2, %136 ]

  %144 = add i64 %142, -36

  %145 = inttoptr i64 %144 to i32*

  store i32 %141, i32* %145

  %146 = inttoptr i64 %144 to i32*

  %147 = load i32, i32* %146

  %148 = icmp eq i32 %147, 0

  %149 = select i1 %148, i64 97, i64 13

  %150 = add i64 %140, %149

  %151 = add i64 %142, -32

  br i1 %148, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge, label %block_40209b



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %152 = add i64 %142, -4

  %153 = add i64 %142, -16

  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %155 = add i64 %142, -24

  br label %block_4020ef



block_40201d:                                     ; preds = %block_402000

  br label %block_4021d2.sink.split



block_4021d2.sink.split:                          ; preds = %block_4020e5, %block_40201d, %block_402076

  %156 = phi %struct.Memory* [ %209, %block_4020e5 ], [ %2, %block_40201d ], [ %77, %block_402076 ]

  br label %block_4021d2



block_4021d2.loopexit:                            ; preds = %block_4020f5

  %157 = zext i32 %98 to i64

  store i64 %157, i64* %8, align 8, !tbaa !1240

  %158 = icmp ult i32 %98, %100

  %159 = zext i1 %158 to i8

  %160 = and i32 %101, 255

  %161 = tail call i32 @llvm.ctpop.i32(i32 %160) #9

  %162 = trunc i32 %161 to i8

  %163 = and i8 %162, 1

  %164 = xor i8 %163, 1

  %165 = xor i32 %100, %98

  %166 = xor i32 %165, %101

  %167 = lshr i32 %166, 4

  %168 = trunc i32 %167 to i8

  %169 = and i8 %168, 1

  %170 = icmp eq i32 %101, 0

  %171 = zext i1 %170 to i8

  %172 = zext i1 %109 to i8

  store i8 %159, i8* %35, align 1, !tbaa !1244

  store i8 %164, i8* %41, align 1, !tbaa !1258

  store i8 %169, i8* %42, align 1, !tbaa !1262

  store i8 %171, i8* %45, align 1, !tbaa !1259

  store i8 %103, i8* %48, align 1, !tbaa !1260

  store i8 %172, i8* %49, align 1, !tbaa !1261

  br label %block_4021d2



block_4021d2:                                     ; preds = %block_4021d2.loopexit, %block_4021d2.sink.split

  %173 = phi %struct.Memory* [ %156, %block_4021d2.sink.split ], [ %96, %block_4021d2.loopexit ]

  %174 = load i64, i64* %12, align 8, !tbaa !1240

  %175 = add i64 %174, 8

  %176 = inttoptr i64 %174 to i64*

  %177 = load i64, i64* %176

  store i64 %177, i64* %13, align 8, !tbaa !1240

  %178 = inttoptr i64 %175 to i64*

  %179 = load i64, i64* %178

  store i64 %179, i64* %3, align 8, !tbaa !1240

  %180 = add i64 %174, 16

  store i64 %180, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %173



block_4020ef:                                     ; preds = %block_4020ea, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge

  %181 = phi i64 [ %155, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge ], [ %59, %block_4020ea ]

  %182 = phi i64* [ %154, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge ], [ %58, %block_4020ea ]

  %183 = phi i64 [ %153, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge ], [ %57, %block_4020ea ]

  %184 = phi i64 [ %152, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge ], [ %239, %block_4020ea ]

  %185 = phi i64 [ %150, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge ], [ %292, %block_4020ea ]

  %186 = phi %struct.Memory* [ %143, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4020ef_crit_edge ], [ %209, %block_4020ea ]

  %187 = bitcast i64* %182 to double*

  %188 = inttoptr i64 %144 to i32*

  %189 = load i32, i32* %188

  %190 = add i64 %185, 6

  %191 = inttoptr i64 %151 to i32*

  store i32 %189, i32* %191

  br label %block_4020f5



block_4020ae:                                     ; preds = %block_4020a2

  %192 = inttoptr i64 %57 to double*

  %193 = load double, double* %192

  %194 = inttoptr i64 %59 to i64*

  %195 = load i64, i64* %194

  %196 = sext i32 %211 to i64

  %197 = shl nsw i64 %196, 3

  %198 = add i64 %197, %195

  %199 = inttoptr i64 %198 to double*

  %200 = load double, double* %199

  %201 = fmul double %193, %200

  store double %201, double* %23, align 1, !tbaa !1268

  store i64 0, i64* %58, align 1, !tbaa !1268

  store i64 %196, i64* %9, align 8, !tbaa !1240

  %202 = inttoptr i64 %198 to double*

  store double %201, double* %202

  %203 = inttoptr i64 %151 to i32*

  %204 = load i32, i32* %203

  %205 = add i32 %204, 1

  %206 = inttoptr i64 %151 to i32*

  store i32 %205, i32* %206

  %207 = add i64 %225, -12

  br label %block_4020a2



block_4020a2:                                     ; preds = %block_4020ae, %block_40209b

  %208 = phi i64 [ %55, %block_40209b ], [ %207, %block_4020ae ]

  %209 = phi %struct.Memory* [ %143, %block_40209b ], [ %209, %block_4020ae ]

  %210 = inttoptr i64 %151 to i32*

  %211 = load i32, i32* %210

  %212 = inttoptr i64 %144 to i32*

  %213 = load i32, i32* %212

  %214 = sub i32 %211, %213

  %215 = lshr i32 %214, 31

  %216 = lshr i32 %211, 31

  %217 = lshr i32 %213, 31

  %218 = xor i32 %217, %216

  %219 = xor i32 %215, %216

  %220 = add nuw nsw i32 %219, %218

  %221 = icmp eq i32 %220, 2

  %222 = icmp ne i32 %215, 0

  %223 = xor i1 %222, %221

  %224 = select i1 %223, i64 12, i64 57

  %225 = add i64 %208, %224

  br i1 %223, label %block_4020ae, label %block_4020db



block_40202c:                                     ; preds = %block_402022

  %226 = sext i32 %34 to i64

  %227 = sext i32 %268 to i64

  %228 = mul nsw i64 %227, %226

  %229 = add i64 %16, -48

  %230 = trunc i64 %228 to i32

  %231 = inttoptr i64 %229 to i32*

  store i32 %230, i32* %231

  %232 = add i64 %16, -40

  %233 = add i64 %291, 17

  %234 = inttoptr i64 %232 to i32*

  store i32 0, i32* %234

  %235 = add i64 %16, -24

  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %237 = add i64 %16, -32

  br label %block_40203d



block_4020e5:                                     ; preds = %block_4020db

  br label %block_4021d2.sink.split



block_4020db:                                     ; preds = %block_4020a2

  %238 = zext i32 %211 to i64

  store i64 %238, i64* %8, align 8, !tbaa !1240

  %239 = add i64 %142, -4

  %240 = inttoptr i64 %239 to i32*

  %241 = load i32, i32* %240

  %242 = add i32 %241, -5

  %243 = icmp ult i32 %241, 5

  %244 = zext i1 %243 to i8

  store i8 %244, i8* %35, align 1, !tbaa !1244

  %245 = and i32 %242, 255

  %246 = tail call i32 @llvm.ctpop.i32(i32 %245) #9

  %247 = trunc i32 %246 to i8

  %248 = and i8 %247, 1

  %249 = xor i8 %248, 1

  store i8 %249, i8* %41, align 1, !tbaa !1258

  %250 = xor i32 %242, %241

  %251 = lshr i32 %250, 4

  %252 = trunc i32 %251 to i8

  %253 = and i8 %252, 1

  store i8 %253, i8* %42, align 1, !tbaa !1262

  %254 = icmp eq i32 %242, 0

  %255 = zext i1 %254 to i8

  store i8 %255, i8* %45, align 1, !tbaa !1259

  %256 = lshr i32 %242, 31

  %257 = trunc i32 %256 to i8

  store i8 %257, i8* %48, align 1, !tbaa !1260

  %258 = lshr i32 %241, 31

  %259 = xor i32 %256, %258

  %260 = add nuw nsw i32 %259, %258

  %261 = icmp eq i32 %260, 2

  %262 = zext i1 %261 to i8

  store i8 %262, i8* %49, align 1, !tbaa !1261

  %263 = icmp ne i8 %257, 0

  %264 = xor i1 %263, %261

  %265 = select i1 %264, i64 10, i64 15

  %266 = add i64 %225, %265

  br i1 %264, label %block_4020e5, label %block_4020ea



block_402022:                                     ; preds = %block_402000

  %267 = inttoptr i64 %29 to i32*

  %268 = load i32, i32* %267

  %269 = add i32 %268, -1

  %270 = icmp eq i32 %268, 0

  %271 = zext i1 %270 to i8

  store i8 %271, i8* %35, align 1, !tbaa !1244

  %272 = and i32 %269, 255

  %273 = tail call i32 @llvm.ctpop.i32(i32 %272) #9

  %274 = trunc i32 %273 to i8

  %275 = and i8 %274, 1

  %276 = xor i8 %275, 1

  store i8 %276, i8* %41, align 1, !tbaa !1258

  %277 = xor i32 %269, %268

  %278 = lshr i32 %277, 4

  %279 = trunc i32 %278 to i8

  %280 = and i8 %279, 1

  store i8 %280, i8* %42, align 1, !tbaa !1262

  %281 = icmp eq i32 %269, 0

  %282 = zext i1 %281 to i8

  store i8 %282, i8* %45, align 1, !tbaa !1259

  %283 = lshr i32 %269, 31

  %284 = trunc i32 %283 to i8

  store i8 %284, i8* %48, align 1, !tbaa !1260

  %285 = lshr i32 %268, 31

  %286 = xor i32 %283, %285

  %287 = add nuw nsw i32 %286, %285

  %288 = icmp eq i32 %287, 2

  %289 = zext i1 %288 to i8

  store i8 %289, i8* %49, align 1, !tbaa !1261

  %290 = select i1 %281, i64 89, i64 10

  %291 = add i64 %54, %290

  br i1 %281, label %block_40207b, label %block_40202c



block_4020ea:                                     ; preds = %block_4020db

  %292 = add i64 %266, 5

  br label %block_4020ef



block_402049:                                     ; preds = %block_40203d

  %293 = inttoptr i64 %235 to double*

  %294 = load double, double* %293

  %295 = inttoptr i64 %237 to i64*

  %296 = load i64, i64* %295

  %297 = sext i32 %79 to i64

  %298 = shl nsw i64 %297, 3

  %299 = add i64 %298, %296

  %300 = inttoptr i64 %299 to double*

  %301 = load double, double* %300

  %302 = fmul double %294, %301

  store double %302, double* %23, align 1, !tbaa !1268

  store i64 0, i64* %236, align 1, !tbaa !1268

  store i64 %297, i64* %9, align 8, !tbaa !1240

  %303 = inttoptr i64 %299 to double*

  store double %302, double* %303

  %304 = inttoptr i64 %232 to i32*

  %305 = load i32, i32* %304

  %306 = inttoptr i64 %29 to i32*

  %307 = load i32, i32* %306

  %308 = add i32 %307, %305

  %309 = inttoptr i64 %232 to i32*

  store i32 %308, i32* %309

  %310 = add i64 %94, -12

  br label %block_40203d



block_402101:                                     ; preds = %block_4020f5

  %311 = inttoptr i64 %183 to double*

  %312 = load double, double* %311

  %313 = inttoptr i64 %181 to i64*

  %314 = load i64, i64* %313

  %315 = sext i32 %98 to i64

  %316 = shl nsw i64 %315, 3

  %317 = add i64 %316, %314

  %318 = inttoptr i64 %317 to double*

  %319 = load double, double* %318

  %320 = fmul double %312, %319

  %321 = inttoptr i64 %317 to double*

  store double %320, double* %321

  %322 = inttoptr i64 %183 to double*

  %323 = load double, double* %322

  %324 = inttoptr i64 %181 to i64*

  %325 = load i64, i64* %324

  %326 = inttoptr i64 %151 to i32*

  %327 = load i32, i32* %326

  %328 = add i32 %327, 1

  %329 = sext i32 %328 to i64

  %330 = shl nsw i64 %329, 3

  %331 = add i64 %325, %330

  %332 = inttoptr i64 %331 to double*

  %333 = load double, double* %332

  %334 = fmul double %323, %333

  %335 = inttoptr i64 %331 to double*

  store double %334, double* %335

  %336 = inttoptr i64 %183 to double*

  %337 = load double, double* %336

  %338 = inttoptr i64 %181 to i64*

  %339 = load i64, i64* %338

  %340 = inttoptr i64 %151 to i32*

  %341 = load i32, i32* %340

  %342 = add i32 %341, 2

  %343 = sext i32 %342 to i64

  %344 = shl nsw i64 %343, 3

  %345 = add i64 %339, %344

  %346 = inttoptr i64 %345 to double*

  %347 = load double, double* %346

  %348 = fmul double %337, %347

  %349 = inttoptr i64 %345 to double*

  store double %348, double* %349

  %350 = inttoptr i64 %183 to double*

  %351 = load double, double* %350

  %352 = inttoptr i64 %181 to i64*

  %353 = load i64, i64* %352

  %354 = inttoptr i64 %151 to i32*

  %355 = load i32, i32* %354

  %356 = add i32 %355, 3

  %357 = sext i32 %356 to i64

  %358 = shl nsw i64 %357, 3

  %359 = add i64 %353, %358

  %360 = inttoptr i64 %359 to double*

  %361 = load double, double* %360

  %362 = fmul double %351, %361

  %363 = inttoptr i64 %359 to double*

  store double %362, double* %363

  %364 = inttoptr i64 %183 to double*

  %365 = load double, double* %364

  store double 0.000000e+00, double* %187, align 1, !tbaa !1268

  %366 = inttoptr i64 %181 to i64*

  %367 = load i64, i64* %366

  %368 = inttoptr i64 %151 to i32*

  %369 = load i32, i32* %368

  %370 = add i32 %369, 4

  %371 = zext i32 %370 to i64

  %372 = sext i32 %370 to i64

  %373 = shl nsw i64 %372, 3

  %374 = add i64 %367, %373

  %375 = inttoptr i64 %374 to double*

  %376 = load double, double* %375

  %377 = fmul double %365, %376

  store double %377, double* %23, align 1, !tbaa !1268

  store i64 0, i64* %182, align 1, !tbaa !1268

  store i64 %371, i64* %10, align 8, !tbaa !1240

  store i64 %372, i64* %9, align 8, !tbaa !1240

  %378 = inttoptr i64 %374 to double*

  store double %377, double* %378

  %379 = inttoptr i64 %151 to i32*

  %380 = load i32, i32* %379

  %381 = add i32 %380, 5

  %382 = inttoptr i64 %151 to i32*

  store i32 %381, i32* %382

  %383 = add i64 %113, -12

  br label %block_4020f5

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400f40_dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400f40:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %11 = bitcast %union.anon* %10 to i32*

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0

  %13 = bitcast %union.anon* %12 to i32*

  %14 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %16 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %17 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %24 = load i64, i64* %20, align 8

  %25 = load i64, i64* %19, align 8, !tbaa !1240

  %26 = add i64 %25, -8

  %27 = inttoptr i64 %26 to i64*

  store i64 %24, i64* %27

  store i64 %26, i64* %20, align 8, !tbaa !1240

  %28 = add i64 %25, -104

  store i64 %28, i64* %19, align 8, !tbaa !1240

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %35 = add i64 %25, -16

  %36 = load i64, i64* %18, align 8

  %37 = inttoptr i64 %35 to i64*

  store i64 %36, i64* %37

  %38 = add i64 %25, -20

  %39 = load i32, i32* %11, align 4

  %40 = inttoptr i64 %38 to i32*

  store i32 %39, i32* %40

  %41 = add i64 %25, -24

  %42 = load i32, i32* %9, align 4

  %43 = inttoptr i64 %41 to i32*

  store i32 %42, i32* %43

  %44 = add i64 %25, -32

  %45 = load i64, i64* %15, align 8

  %46 = inttoptr i64 %44 to i64*

  store i64 %45, i64* %46

  %47 = add i64 %25, -40

  %48 = load i64, i64* %21, align 8

  %49 = inttoptr i64 %47 to i64*

  store i64 %48, i64* %49

  %50 = add i64 %25, -44

  %51 = load i32, i32* %13, align 4

  %52 = inttoptr i64 %50 to i32*

  store i32 %51, i32* %52

  %53 = inttoptr i64 %50 to i32*

  %54 = load i32, i32* %53

  %55 = icmp eq i32 %54, 0

  %56 = select i1 %55, i64 776, i64 40

  %57 = add i64 %56, %1

  %58 = inttoptr i64 %47 to i64*

  %59 = load i64, i64* %58

  %60 = inttoptr i64 %59 to i32*

  store i32 0, i32* %60

  %61 = inttoptr i64 %41 to i32*

  %62 = load i32, i32* %61

  %63 = add i32 %62, -1

  %64 = load i64, i64* %20, align 8

  %65 = add i64 %64, -68

  %66 = inttoptr i64 %65 to i32*

  store i32 %63, i32* %66

  %67 = add i64 %57, 23

  %68 = inttoptr i64 %65 to i32*

  %69 = load i32, i32* %68

  %70 = lshr i32 %69, 31

  %71 = trunc i32 %70 to i8

  %72 = icmp ne i8 %71, 0

  %73 = select i1 %72, i64 623, i64 6

  %74 = add i64 %67, %73

  br i1 %55, label %block_401248, label %block_400f68



block_4012fc:                                     ; preds = %block_4012f0

  %75 = add i64 %173, -8

  %76 = inttoptr i64 %75 to i64*

  %77 = load i64, i64* %76

  %78 = add i64 %173, -12

  %79 = inttoptr i64 %78 to i32*

  %80 = load i32, i32* %79

  %81 = mul i32 %179, %80

  %82 = add i32 %176, %81

  %83 = sext i32 %82 to i64

  %84 = shl nsw i64 %83, 3

  %85 = add i64 %77, %84

  %86 = inttoptr i64 %85 to double*

  %87 = load double, double* %86

  %88 = add i64 %173, -48

  %89 = inttoptr i64 %88 to double*

  store double %87, double* %89

  %90 = inttoptr i64 %75 to i64*

  %91 = load i64, i64* %90

  %92 = inttoptr i64 %78 to i32*

  %93 = load i32, i32* %92

  %94 = inttoptr i64 %177 to i32*

  %95 = load i32, i32* %94

  %96 = mul i32 %95, %93

  %97 = load i64, i64* %20, align 8

  %98 = add i64 %97, -56

  %99 = inttoptr i64 %98 to i32*

  %100 = load i32, i32* %99

  %101 = add i32 %100, %96

  %102 = sext i32 %101 to i64

  %103 = shl nsw i64 %102, 3

  %104 = add i64 %91, %103

  %105 = inttoptr i64 %104 to double*

  %106 = load double, double* %105

  %107 = add i64 %97, -8

  %108 = inttoptr i64 %107 to i64*

  %109 = load i64, i64* %108

  %110 = add i64 %97, -12

  %111 = inttoptr i64 %110 to i32*

  %112 = load i32, i32* %111

  %113 = mul i32 %100, %112

  %114 = add i64 %97, -64

  %115 = inttoptr i64 %114 to i32*

  %116 = load i32, i32* %115

  %117 = add i32 %116, %113

  %118 = sext i32 %117 to i64

  %119 = shl nsw i64 %118, 3

  %120 = add i64 %109, %119

  %121 = inttoptr i64 %120 to double*

  store double %106, double* %121

  %122 = load i64, i64* %20, align 8

  %123 = add i64 %122, -48

  %124 = inttoptr i64 %123 to double*

  %125 = load double, double* %124

  store double %125, double* %327, align 1, !tbaa !1268

  store double 0.000000e+00, double* %328, align 1, !tbaa !1268

  %126 = add i64 %122, -8

  %127 = inttoptr i64 %126 to i64*

  %128 = load i64, i64* %127

  %129 = add i64 %122, -12

  %130 = inttoptr i64 %129 to i32*

  %131 = load i32, i32* %130

  %132 = add i64 %122, -56

  %133 = inttoptr i64 %132 to i32*

  %134 = load i32, i32* %133

  %135 = mul i32 %134, %131

  %136 = add i32 %134, %135

  %137 = sext i32 %136 to i64

  %138 = shl nsw i64 %137, 3

  %139 = add i64 %128, %138

  %140 = add i64 %183, 98

  %141 = inttoptr i64 %139 to double*

  store double %125, double* %141

  br label %block_40135e



block_401528:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit5, %block_401511, %block_401517, %block_401231, %block_401237, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %142 = phi %struct.Memory* [ %1303, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit5 ], [ %1303, %block_401511 ], [ %1303, %block_401517 ], [ %284, %block_401231 ], [ %284, %block_401237 ], [ %284, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]

  %143 = load i64, i64* %19, align 8

  %144 = add i64 %143, 96

  %145 = icmp ugt i64 %143, -97

  %146 = zext i1 %145 to i8

  store i8 %146, i8* %29, align 1, !tbaa !1244

  %147 = trunc i64 %144 to i32

  %148 = and i32 %147, 255

  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #9

  %150 = trunc i32 %149 to i8

  %151 = and i8 %150, 1

  %152 = xor i8 %151, 1

  store i8 %152, i8* %30, align 1, !tbaa !1258

  %153 = xor i64 %144, %143

  %154 = lshr i64 %153, 4

  %155 = trunc i64 %154 to i8

  %156 = and i8 %155, 1

  store i8 %156, i8* %31, align 1, !tbaa !1262

  %157 = icmp eq i64 %144, 0

  %158 = zext i1 %157 to i8

  store i8 %158, i8* %32, align 1, !tbaa !1259

  %159 = lshr i64 %144, 63

  %160 = trunc i64 %159 to i8

  store i8 %160, i8* %33, align 1, !tbaa !1260

  %161 = lshr i64 %143, 63

  %162 = xor i64 %159, %161

  %163 = add nuw nsw i64 %162, %159

  %164 = icmp eq i64 %163, 2

  %165 = zext i1 %164 to i8

  store i8 %165, i8* %34, align 1, !tbaa !1261

  %166 = add i64 %143, 104

  %167 = inttoptr i64 %144 to i64*

  %168 = load i64, i64* %167

  store i64 %168, i64* %20, align 8, !tbaa !1240

  %169 = inttoptr i64 %166 to i64*

  %170 = load i64, i64* %169

  store i64 %170, i64* %3, align 8, !tbaa !1240

  %171 = add i64 %143, 112

  store i64 %171, i64* %19, align 8, !tbaa !1240

  ret %struct.Memory* %142



block_4012f0:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit7, %block_4012e5

  %172 = phi i64 [ %641, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit7 ], [ %289, %block_4012e5 ]

  %173 = load i64, i64* %20, align 8

  %174 = add i64 %173, -64

  %175 = inttoptr i64 %174 to i32*

  %176 = load i32, i32* %175

  %177 = add i64 %173, -56

  %178 = inttoptr i64 %177 to i32*

  %179 = load i32, i32* %178

  %180 = sub i32 %176, %179

  %181 = icmp eq i32 %180, 0

  %182 = select i1 %181, i64 110, i64 12

  %183 = add i64 %172, %182

  br i1 %181, label %block_40135e, label %block_4012fc



block_4011ee:                                     ; preds = %block_400f68.block_4011ee_crit_edge, %block_4011e9

  %184 = phi double* [ %653, %block_400f68.block_4011ee_crit_edge ], [ %1391, %block_4011e9 ]

  %185 = phi double* [ %652, %block_400f68.block_4011ee_crit_edge ], [ %1390, %block_4011e9 ]

  %186 = phi double* [ %650, %block_400f68.block_4011ee_crit_edge ], [ %1388, %block_4011e9 ]

  %187 = phi i32* [ %649, %block_400f68.block_4011ee_crit_edge ], [ %1387, %block_4011e9 ]

  %188 = phi i32* [ %647, %block_400f68.block_4011ee_crit_edge ], [ %1385, %block_4011e9 ]

  %189 = phi i32* [ %646, %block_400f68.block_4011ee_crit_edge ], [ %1384, %block_4011e9 ]

  %190 = phi i32* [ %644, %block_400f68.block_4011ee_crit_edge ], [ %1382, %block_4011e9 ]

  %191 = phi i64 [ %64, %block_400f68.block_4011ee_crit_edge ], [ %1181, %block_4011e9 ]

  %192 = phi i64 [ %74, %block_400f68.block_4011ee_crit_edge ], [ %1202, %block_4011e9 ]

  %193 = phi %struct.Memory* [ %2, %block_400f68.block_4011ee_crit_edge ], [ %1182, %block_4011e9 ]

  store i32 0, i32* %190, align 1, !tbaa !1270

  store i32 0, i32* %189, align 1, !tbaa !1270

  store i32 0, i32* %188, align 1, !tbaa !1270

  store i32 0, i32* %187, align 1, !tbaa !1270

  %194 = add i64 %191, -16

  %195 = inttoptr i64 %194 to i32*

  %196 = load i32, i32* %195

  %197 = add i32 %196, -1

  %198 = add i64 %191, -24

  %199 = inttoptr i64 %198 to i64*

  %200 = load i64, i64* %199

  %201 = sext i32 %197 to i64

  %202 = shl nsw i64 %201, 2

  %203 = add i64 %200, %202

  %204 = inttoptr i64 %203 to i32*

  store i32 %197, i32* %204

  %205 = add i64 %191, -8

  %206 = inttoptr i64 %205 to i64*

  %207 = load i64, i64* %206

  store i64 %207, i64* %15, align 8, !tbaa !1240

  %208 = add i64 %191, -12

  %209 = inttoptr i64 %208 to i32*

  %210 = load i32, i32* %209

  %211 = inttoptr i64 %194 to i32*

  %212 = load i32, i32* %211

  %213 = add i32 %212, -1

  %214 = sext i32 %210 to i64

  %215 = sext i32 %213 to i64

  %216 = mul nsw i64 %215, %214

  %217 = load i64, i64* %20, align 8

  %218 = add i64 %217, -16

  %219 = inttoptr i64 %218 to i32*

  %220 = load i32, i32* %219

  %221 = add i32 %220, -1

  %222 = zext i32 %221 to i64

  store i64 %222, i64* %16, align 8, !tbaa !1240

  %223 = lshr i32 %221, 31

  %224 = trunc i64 %216 to i32

  %225 = add i32 %221, %224

  %226 = zext i32 %225 to i64

  store i64 %226, i64* %14, align 8, !tbaa !1240

  %227 = icmp ult i32 %225, %224

  %228 = icmp ult i32 %225, %221

  %229 = or i1 %227, %228

  %230 = zext i1 %229 to i8

  store i8 %230, i8* %29, align 1, !tbaa !1244

  %231 = and i32 %225, 255

  %232 = tail call i32 @llvm.ctpop.i32(i32 %231) #9

  %233 = trunc i32 %232 to i8

  %234 = and i8 %233, 1

  %235 = xor i8 %234, 1

  store i8 %235, i8* %30, align 1, !tbaa !1258

  %236 = xor i64 %222, %216

  %237 = trunc i64 %236 to i32

  %238 = xor i32 %237, %225

  %239 = lshr i32 %238, 4

  %240 = trunc i32 %239 to i8

  %241 = and i8 %240, 1

  store i8 %241, i8* %31, align 1, !tbaa !1262

  %242 = icmp eq i32 %225, 0

  %243 = zext i1 %242 to i8

  store i8 %243, i8* %32, align 1, !tbaa !1259

  %244 = lshr i32 %225, 31

  %245 = trunc i32 %244 to i8

  store i8 %245, i8* %33, align 1, !tbaa !1260

  %246 = lshr i32 %224, 31

  %247 = xor i32 %244, %246

  %248 = xor i32 %244, %223

  %249 = add nuw nsw i32 %247, %248

  %250 = icmp eq i32 %249, 2

  %251 = zext i1 %250 to i8

  store i8 %251, i8* %34, align 1, !tbaa !1261

  %252 = sext i32 %225 to i64

  store i64 %252, i64* %17, align 8, !tbaa !1240

  %253 = load i64, i64* %15, align 8

  %254 = shl nsw i64 %252, 3

  %255 = add i64 %253, %254

  %256 = inttoptr i64 %255 to double*

  %257 = load double, double* %256

  store double %257, double* %186, align 1, !tbaa !1268

  store double 0.000000e+00, double* %185, align 1, !tbaa !1268

  %258 = add i64 %192, 61

  store i64 %258, i64* %3, align 8

  %259 = load double, double* %184, align 1

  %260 = fcmp uno double %257, %259

  br i1 %260, label %261, label %272



; <label>:261:                                    ; preds = %block_4011ee

  %262 = fadd double %257, %259

  %263 = bitcast double %262 to i64

  %264 = and i64 %263, 9221120237041090560

  %265 = icmp eq i64 %264, 9218868437227405312

  %266 = and i64 %263, 2251799813685247

  %267 = icmp ne i64 %266, 0

  %268 = and i1 %265, %267

  br i1 %268, label %269, label %278



; <label>:269:                                    ; preds = %261

  %270 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %258, %struct.Memory* %193) #12

  %271 = load i8, i8* %32, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:272:                                    ; preds = %block_4011ee

  %273 = fcmp ogt double %257, %259

  br i1 %273, label %278, label %274



; <label>:274:                                    ; preds = %272

  %275 = fcmp olt double %257, %259

  br i1 %275, label %278, label %276



; <label>:276:                                    ; preds = %274

  %277 = fcmp oeq double %257, %259

  br i1 %277, label %278, label %281



; <label>:278:                                    ; preds = %276, %274, %272, %261

  %279 = phi i8 [ 0, %272 ], [ 0, %274 ], [ 1, %276 ], [ 1, %261 ]

  %280 = phi i8 [ 0, %272 ], [ 0, %274 ], [ 0, %276 ], [ 1, %261 ]

  store i8 %280, i8* %30, align 1, !tbaa !1271

  br label %281



; <label>:281:                                    ; preds = %278, %276

  %282 = phi i8 [ %279, %278 ], [ %243, %276 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %281, %269

  %283 = phi i8 [ %271, %269 ], [ %282, %281 ]

  %284 = phi %struct.Memory* [ %270, %269 ], [ %193, %281 ]

  %285 = icmp eq i8 %283, 0

  br i1 %285, label %block_401528, label %block_401231



block_4011e9:                                     ; preds = %block_400f8c

  br label %block_4011ee



block_4012e5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit7

  %286 = load i8, i8* %30, align 1, !tbaa !1258

  %287 = icmp ne i8 %286, 0

  %288 = select i1 %287, i64 11, i64 6

  %289 = add i64 %641, %288

  %290 = icmp eq i8 %286, 1

  br i1 %290, label %block_4012f0, label %block_4012eb



block_4010e1:                                     ; preds = %block_40107e, %block_40115b

  %291 = phi i64 [ %743, %block_40107e ], [ %472, %block_40115b ]

  %292 = phi i64 [ %737, %block_40107e ], [ %465, %block_40115b ]

  %293 = phi %struct.Memory* [ %736, %block_40107e ], [ %464, %block_40115b ]

  %294 = add i64 %292, -52

  %295 = inttoptr i64 %294 to i32*

  %296 = load i32, i32* %295

  %297 = add i64 %292, -16

  %298 = inttoptr i64 %297 to i32*

  %299 = load i32, i32* %298

  %300 = sub i32 %296, %299

  %301 = lshr i32 %300, 31

  %302 = trunc i32 %301 to i8

  %303 = lshr i32 %296, 31

  %304 = lshr i32 %299, 31

  %305 = xor i32 %304, %303

  %306 = xor i32 %301, %303

  %307 = add nuw nsw i32 %306, %305

  %308 = icmp eq i32 %307, 2

  %309 = icmp ne i8 %302, 0

  %310 = xor i1 %309, %308

  %311 = select i1 %310, i64 12, i64 231

  %312 = add i64 %291, %311

  br i1 %310, label %block_4010ed, label %block_4011c8



block_401265:                                     ; preds = %block_401248

  %313 = add i64 %64, -56

  %314 = add i64 %74, 7

  %315 = inttoptr i64 %313 to i32*

  store i32 0, i32* %315

  %316 = bitcast [32 x %union.VectorReg]* %22 to i8*

  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %318 = bitcast [32 x %union.VectorReg]* %22 to i32*

  %319 = getelementptr inbounds i8, i8* %316, i64 4

  %320 = bitcast i8* %319 to i32*

  %321 = bitcast i64* %317 to i32*

  %322 = getelementptr inbounds i8, i8* %316, i64 12

  %323 = bitcast i8* %322 to i32*

  %324 = bitcast %union.VectorReg* %23 to double*

  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %326 = bitcast i64* %325 to double*

  %327 = bitcast [32 x %union.VectorReg]* %22 to double*

  %328 = bitcast i64* %317 to double*

  br label %block_40126c



block_40135e:                                     ; preds = %block_4012f0, %block_4012fc

  %329 = phi i64 [ %173, %block_4012f0 ], [ %122, %block_4012fc ]

  %330 = phi i64 [ %183, %block_4012f0 ], [ %140, %block_4012fc ]

  %331 = phi %struct.Memory* [ %638, %block_4012f0 ], [ %638, %block_4012fc ]

  store i64 1, i64* %16, align 8, !tbaa !1240

  %332 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 80) to double*)

  %333 = add i64 %329, -8

  %334 = inttoptr i64 %333 to i64*

  %335 = load i64, i64* %334

  %336 = add i64 %329, -12

  %337 = inttoptr i64 %336 to i32*

  %338 = load i32, i32* %337

  %339 = add i64 %329, -56

  %340 = inttoptr i64 %339 to i32*

  %341 = load i32, i32* %340

  %342 = mul i32 %341, %338

  %343 = add i32 %341, %342

  %344 = sext i32 %343 to i64

  %345 = shl nsw i64 %344, 3

  %346 = add i64 %335, %345

  %347 = inttoptr i64 %346 to double*

  %348 = load double, double* %347

  %349 = fdiv double %332, %348

  %350 = add i64 %329, -48

  %351 = inttoptr i64 %350 to double*

  store double %349, double* %351

  %352 = add i64 %329, -16

  %353 = inttoptr i64 %352 to i32*

  %354 = load i32, i32* %353

  %355 = load i64, i64* %20, align 8

  %356 = add i64 %355, -56

  %357 = inttoptr i64 %356 to i32*

  %358 = load i32, i32* %357

  %359 = add i32 %358, 1

  %360 = sub i32 %354, %359

  %361 = zext i32 %360 to i64

  store i64 %361, i64* %15, align 8, !tbaa !1240

  %362 = add i64 %355, -48

  %363 = inttoptr i64 %362 to double*

  %364 = load double, double* %363

  store double %364, double* %327, align 1, !tbaa !1268

  store double 0.000000e+00, double* %328, align 1, !tbaa !1268

  %365 = add i64 %355, -8

  %366 = inttoptr i64 %365 to i64*

  %367 = load i64, i64* %366

  store i64 %367, i64* %14, align 8, !tbaa !1240

  %368 = add i64 %355, -12

  %369 = inttoptr i64 %368 to i32*

  %370 = load i32, i32* %369

  %371 = mul i32 %358, %370

  %372 = load i64, i64* %20, align 8

  %373 = add i64 %372, -56

  %374 = inttoptr i64 %373 to i32*

  %375 = load i32, i32* %374

  %376 = add i32 %375, %371

  %377 = add i32 %376, 1

  %378 = sext i32 %377 to i64

  %379 = shl nsw i64 %378, 3

  %380 = load i64, i64* %14, align 8

  %381 = add i64 %379, %380

  store i64 %381, i64* %14, align 8, !tbaa !1240

  %382 = load i32, i32* %7, align 4

  %383 = zext i32 %382 to i64

  store i64 %383, i64* %18, align 8, !tbaa !1240

  store i64 %381, i64* %17, align 8, !tbaa !1240

  %384 = add i64 %330, 3234

  %385 = add i64 %330, 93

  %386 = load i64, i64* %19, align 8, !tbaa !1240

  %387 = add i64 %386, -8

  %388 = inttoptr i64 %387 to i64*

  store i64 %385, i64* %388

  store i64 %387, i64* %19, align 8, !tbaa !1240

  %389 = tail call %struct.Memory* @sub_402000_dscal_ur(%struct.State* nonnull %0, i64 %384, %struct.Memory* %331)

  %390 = load i64, i64* %20, align 8

  %391 = add i64 %390, -60

  %392 = load i64, i64* %3, align 8

  %393 = inttoptr i64 %391 to i32*

  %394 = load i32, i32* %393

  %395 = add i64 %390, -52

  %396 = add i64 %392, 6

  %397 = inttoptr i64 %395 to i32*

  store i32 %394, i32* %397

  br label %block_4013c1



block_40115b:                                     ; preds = %block_401114, %block_4010ed

  %398 = phi i64 [ %1165, %block_4010ed ], [ %1354, %block_401114 ]

  %399 = phi %struct.Memory* [ %293, %block_4010ed ], [ %293, %block_401114 ]

  store i64 1, i64* %14, align 8, !tbaa !1240

  %400 = load i64, i64* %20, align 8

  %401 = add i64 %400, -16

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = add i64 %400, -56

  %405 = inttoptr i64 %404 to i32*

  %406 = load i32, i32* %405

  %407 = add i32 %406, 1

  %408 = sub i32 %403, %407

  %409 = zext i32 %408 to i64

  store i64 %409, i64* %15, align 8, !tbaa !1240

  %410 = add i64 %400, -48

  %411 = inttoptr i64 %410 to double*

  %412 = load double, double* %411

  store double %412, double* %1391, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1392, align 1, !tbaa !1268

  %413 = add i64 %400, -8

  %414 = inttoptr i64 %413 to i64*

  %415 = load i64, i64* %414

  store i64 %415, i64* %17, align 8, !tbaa !1240

  %416 = add i64 %400, -12

  %417 = inttoptr i64 %416 to i32*

  %418 = load i32, i32* %417

  %419 = mul i32 %406, %418

  %420 = load i64, i64* %20, align 8

  %421 = add i64 %420, -56

  %422 = inttoptr i64 %421 to i32*

  %423 = load i32, i32* %422

  %424 = add i32 %423, %419

  %425 = add i32 %424, 1

  %426 = sext i32 %425 to i64

  %427 = shl nsw i64 %426, 3

  %428 = load i64, i64* %17, align 8

  %429 = add i64 %427, %428

  store i64 %429, i64* %17, align 8, !tbaa !1240

  %430 = load i64, i64* %20, align 8

  %431 = add i64 %430, -8

  %432 = inttoptr i64 %431 to i64*

  %433 = load i64, i64* %432

  store i64 %433, i64* %18, align 8, !tbaa !1240

  %434 = add i64 %430, -12

  %435 = inttoptr i64 %434 to i32*

  %436 = load i32, i32* %435

  %437 = add i64 %430, -52

  %438 = inttoptr i64 %437 to i32*

  %439 = load i32, i32* %438

  %440 = mul i32 %439, %436

  %441 = add i64 %430, -56

  %442 = inttoptr i64 %441 to i32*

  %443 = load i32, i32* %442

  %444 = add i32 %443, %440

  %445 = add i32 %444, 1

  %446 = sext i32 %445 to i64

  %447 = shl nsw i64 %446, 3

  %448 = load i64, i64* %18, align 8

  %449 = add i64 %447, %448

  %450 = load i64, i64* %20, align 8

  %451 = add i64 %450, -80

  %452 = inttoptr i64 %451 to i64*

  store i64 %449, i64* %452

  %453 = load i32, i32* %7, align 4

  %454 = zext i32 %453 to i64

  store i64 %454, i64* %18, align 8, !tbaa !1240

  %455 = load i32, i32* %5, align 4

  %456 = zext i32 %455 to i64

  store i64 %456, i64* %16, align 8, !tbaa !1240

  %457 = inttoptr i64 %451 to i64*

  %458 = load i64, i64* %457

  store i64 %458, i64* %15, align 8, !tbaa !1240

  store i64 %456, i64* %21, align 8, !tbaa !1240

  %459 = add i64 %398, 3397

  %460 = add i64 %398, 95

  %461 = load i64, i64* %19, align 8, !tbaa !1240

  %462 = add i64 %461, -8

  %463 = inttoptr i64 %462 to i64*

  store i64 %460, i64* %463

  store i64 %462, i64* %19, align 8, !tbaa !1240

  %464 = tail call %struct.Memory* @sub_401ea0_daxpy_r(%struct.State* nonnull %0, i64 %459, %struct.Memory* %399)

  %465 = load i64, i64* %20, align 8

  %466 = add i64 %465, -52

  %467 = load i64, i64* %3, align 8

  %468 = inttoptr i64 %466 to i32*

  %469 = load i32, i32* %468

  %470 = add i32 %469, 1

  %471 = inttoptr i64 %466 to i32*

  store i32 %470, i32* %471

  %472 = add i64 %467, -217

  br label %block_4010e1



block_4011d6:                                     ; preds = %block_40100b, %block_4011c8

  %473 = phi i64 [ %292, %block_4011c8 ], [ %1356, %block_40100b ]

  %474 = phi i64 [ %509, %block_4011c8 ], [ %1363, %block_40100b ]

  %475 = phi %struct.Memory* [ %293, %block_4011c8 ], [ %1123, %block_40100b ]

  %476 = add i64 %473, -56

  %477 = inttoptr i64 %476 to i32*

  %478 = load i32, i32* %477

  %479 = add i32 %478, 1

  %480 = inttoptr i64 %476 to i32*

  store i32 %479, i32* %480

  %481 = add i64 %474, -586

  br label %block_400f8c



block_4013cd:                                     ; preds = %block_4013c1

  %482 = add i64 %655, -8

  %483 = inttoptr i64 %482 to i64*

  %484 = load i64, i64* %483

  %485 = add i64 %655, -12

  %486 = inttoptr i64 %485 to i32*

  %487 = load i32, i32* %486

  %488 = mul i32 %659, %487

  %489 = add i64 %655, -64

  %490 = inttoptr i64 %489 to i32*

  %491 = load i32, i32* %490

  %492 = add i32 %491, %488

  %493 = sext i32 %492 to i64

  %494 = shl nsw i64 %493, 3

  %495 = add i64 %484, %494

  %496 = inttoptr i64 %495 to double*

  %497 = load double, double* %496

  store double %497, double* %327, align 1, !tbaa !1268

  store double 0.000000e+00, double* %328, align 1, !tbaa !1268

  %498 = add i64 %655, -48

  %499 = inttoptr i64 %498 to double*

  store double %497, double* %499

  %500 = inttoptr i64 %489 to i32*

  %501 = load i32, i32* %500

  %502 = add i64 %655, -56

  %503 = inttoptr i64 %502 to i32*

  %504 = load i32, i32* %503

  %505 = sub i32 %501, %504

  %506 = icmp eq i32 %505, 0

  %507 = select i1 %506, i64 110, i64 39

  %508 = add i64 %675, %507

  br i1 %506, label %block_40143b, label %block_4013f4



block_4014c9:                                     ; preds = %block_40126c

  br label %block_4014ce



block_4011c8:                                     ; preds = %block_4010e1

  %509 = add i64 %312, 14

  br label %block_4011d6



block_401278:                                     ; preds = %block_40126c

  store i64 1, i64* %16, align 8, !tbaa !1240

  %510 = add i32 %825, 1

  %511 = add i64 %821, -60

  %512 = inttoptr i64 %511 to i32*

  store i32 %510, i32* %512

  %513 = add i64 %821, -16

  %514 = inttoptr i64 %513 to i32*

  %515 = load i32, i32* %514

  %516 = inttoptr i64 %823 to i32*

  %517 = load i32, i32* %516

  %518 = sub i32 %515, %517

  %519 = zext i32 %518 to i64

  store i64 %519, i64* %14, align 8, !tbaa !1240

  %520 = add i64 %821, -8

  %521 = inttoptr i64 %520 to i64*

  %522 = load i64, i64* %521

  store i64 %522, i64* %15, align 8, !tbaa !1240

  %523 = add i64 %821, -12

  %524 = inttoptr i64 %523 to i32*

  %525 = load i32, i32* %524

  %526 = mul i32 %517, %525

  %527 = load i64, i64* %20, align 8

  %528 = add i64 %527, -56

  %529 = inttoptr i64 %528 to i32*

  %530 = load i32, i32* %529

  %531 = add i32 %530, %526

  %532 = sext i32 %531 to i64

  %533 = shl nsw i64 %532, 3

  %534 = load i64, i64* %15, align 8

  %535 = add i64 %533, %534

  store i64 %535, i64* %15, align 8, !tbaa !1240

  %536 = load i32, i32* %5, align 4

  %537 = zext i32 %536 to i64

  store i64 %537, i64* %18, align 8, !tbaa !1240

  store i64 %535, i64* %17, align 8, !tbaa !1240

  %538 = add i64 %841, 2536

  %539 = add i64 %841, 54

  %540 = load i64, i64* %19, align 8, !tbaa !1240

  %541 = add i64 %540, -8

  %542 = inttoptr i64 %541 to i64*

  store i64 %539, i64* %542

  store i64 %541, i64* %19, align 8, !tbaa !1240

  %543 = tail call %struct.Memory* @sub_401c60_idamax(%struct.State* nonnull %0, i64 %538, %struct.Memory* %822)

  %544 = load i64, i64* %3, align 8

  store i32 0, i32* %318, align 1, !tbaa !1270

  store i32 0, i32* %320, align 1, !tbaa !1270

  store i32 0, i32* %321, align 1, !tbaa !1270

  store i32 0, i32* %323, align 1, !tbaa !1270

  %545 = load i64, i64* %14, align 8

  %546 = load i64, i64* %20, align 8

  %547 = add i64 %546, -56

  %548 = trunc i64 %545 to i32

  %549 = inttoptr i64 %547 to i32*

  %550 = load i32, i32* %549

  %551 = add i32 %550, %548

  %552 = add i64 %546, -64

  %553 = inttoptr i64 %552 to i32*

  store i32 %551, i32* %553

  %554 = inttoptr i64 %552 to i32*

  %555 = load i32, i32* %554

  %556 = add i64 %546, -24

  %557 = inttoptr i64 %556 to i64*

  %558 = load i64, i64* %557

  %559 = inttoptr i64 %547 to i32*

  %560 = load i32, i32* %559

  %561 = sext i32 %560 to i64

  %562 = shl nsw i64 %561, 2

  %563 = add i64 %562, %558

  %564 = inttoptr i64 %563 to i32*

  store i32 %555, i32* %564

  %565 = add i64 %546, -8

  %566 = inttoptr i64 %565 to i64*

  %567 = load i64, i64* %566

  store i64 %567, i64* %15, align 8, !tbaa !1240

  %568 = add i64 %546, -12

  %569 = inttoptr i64 %568 to i32*

  %570 = load i32, i32* %569

  %571 = inttoptr i64 %547 to i32*

  %572 = load i32, i32* %571

  %573 = mul i32 %572, %570

  %574 = load i64, i64* %20, align 8

  %575 = add i64 %574, -64

  %576 = inttoptr i64 %575 to i32*

  %577 = load i32, i32* %576

  %578 = add i32 %577, %573

  %579 = zext i32 %578 to i64

  store i64 %579, i64* %14, align 8, !tbaa !1240

  %580 = icmp ult i32 %578, %573

  %581 = icmp ult i32 %578, %577

  %582 = or i1 %580, %581

  %583 = zext i1 %582 to i8

  store i8 %583, i8* %29, align 1, !tbaa !1244

  %584 = and i32 %578, 255

  %585 = tail call i32 @llvm.ctpop.i32(i32 %584) #9

  %586 = trunc i32 %585 to i8

  %587 = and i8 %586, 1

  %588 = xor i8 %587, 1

  store i8 %588, i8* %30, align 1, !tbaa !1258

  %589 = xor i32 %577, %573

  %590 = xor i32 %589, %578

  %591 = lshr i32 %590, 4

  %592 = trunc i32 %591 to i8

  %593 = and i8 %592, 1

  store i8 %593, i8* %31, align 1, !tbaa !1262

  %594 = icmp eq i32 %578, 0

  %595 = zext i1 %594 to i8

  store i8 %595, i8* %32, align 1, !tbaa !1259

  %596 = lshr i32 %578, 31

  %597 = trunc i32 %596 to i8

  store i8 %597, i8* %33, align 1, !tbaa !1260

  %598 = lshr i32 %573, 31

  %599 = lshr i32 %577, 31

  %600 = xor i32 %596, %598

  %601 = xor i32 %596, %599

  %602 = add nuw nsw i32 %600, %601

  %603 = icmp eq i32 %602, 2

  %604 = zext i1 %603 to i8

  store i8 %604, i8* %34, align 1, !tbaa !1261

  %605 = sext i32 %578 to i64

  store i64 %605, i64* %17, align 8, !tbaa !1240

  %606 = shl nsw i64 %605, 3

  %607 = add i64 %567, %606

  %608 = inttoptr i64 %607 to double*

  %609 = load double, double* %608

  store double %609, double* %324, align 1, !tbaa !1268

  store double 0.000000e+00, double* %326, align 1, !tbaa !1268

  %610 = add i64 %544, 49

  store i64 %610, i64* %3, align 8

  %611 = load double, double* %327, align 1

  %612 = fcmp uno double %609, %611

  br i1 %612, label %613, label %625



; <label>:613:                                    ; preds = %block_401278

  %614 = fadd double %609, %611

  %615 = bitcast double %614 to i64

  %616 = and i64 %615, 9221120237041090560

  %617 = icmp eq i64 %616, 9218868437227405312

  %618 = and i64 %615, 2251799813685247

  %619 = icmp ne i64 %618, 0

  %620 = and i1 %617, %619

  br i1 %620, label %621, label %631



; <label>:621:                                    ; preds = %613

  %622 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %610, %struct.Memory* %543) #12

  %623 = load i64, i64* %3, align 8

  %624 = load i8, i8* %32, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit7



; <label>:625:                                    ; preds = %block_401278

  %626 = fcmp ogt double %609, %611

  br i1 %626, label %631, label %627



; <label>:627:                                    ; preds = %625

  %628 = fcmp olt double %609, %611

  br i1 %628, label %631, label %629



; <label>:629:                                    ; preds = %627

  %630 = fcmp oeq double %609, %611

  br i1 %630, label %631, label %634



; <label>:631:                                    ; preds = %629, %627, %625, %613

  %632 = phi i8 [ 0, %625 ], [ 0, %627 ], [ 1, %629 ], [ 1, %613 ]

  %633 = phi i8 [ 0, %625 ], [ 0, %627 ], [ 0, %629 ], [ 1, %613 ]

  store i8 %633, i8* %30, align 1, !tbaa !1271

  br label %634



; <label>:634:                                    ; preds = %631, %629

  %635 = phi i8 [ %632, %631 ], [ %595, %629 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit7



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit7: ; preds = %634, %621

  %636 = phi i8 [ %624, %621 ], [ %635, %634 ]

  %637 = phi i64 [ %623, %621 ], [ %610, %634 ]

  %638 = phi %struct.Memory* [ %622, %621 ], [ %543, %634 ]

  %639 = icmp eq i8 %636, 0

  %640 = select i1 %639, i64 17, i64 6

  %641 = add i64 %637, %640

  br i1 %639, label %block_4012f0, label %block_4012e5



block_400f68:                                     ; preds = %block_400f40

  br i1 %72, label %block_400f68.block_4011ee_crit_edge, label %block_400f85



block_400f68.block_4011ee_crit_edge:              ; preds = %block_400f68

  %642 = bitcast [32 x %union.VectorReg]* %22 to i8*

  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %644 = bitcast [32 x %union.VectorReg]* %22 to i32*

  %645 = getelementptr inbounds i8, i8* %642, i64 4

  %646 = bitcast i8* %645 to i32*

  %647 = bitcast i64* %643 to i32*

  %648 = getelementptr inbounds i8, i8* %642, i64 12

  %649 = bitcast i8* %648 to i32*

  %650 = bitcast %union.VectorReg* %23 to double*

  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %652 = bitcast i64* %651 to double*

  %653 = bitcast [32 x %union.VectorReg]* %22 to double*

  br label %block_4011ee



block_4013c1:                                     ; preds = %block_40143b, %block_40135e

  %654 = phi i64 [ %396, %block_40135e ], [ %819, %block_40143b ]

  %655 = phi i64 [ %390, %block_40135e ], [ %812, %block_40143b ]

  %656 = phi %struct.Memory* [ %389, %block_40135e ], [ %811, %block_40143b ]

  %657 = add i64 %655, -52

  %658 = inttoptr i64 %657 to i32*

  %659 = load i32, i32* %658

  %660 = add i64 %655, -16

  %661 = inttoptr i64 %660 to i32*

  %662 = load i32, i32* %661

  %663 = sub i32 %659, %662

  %664 = lshr i32 %663, 31

  %665 = trunc i32 %664 to i8

  %666 = lshr i32 %659, 31

  %667 = lshr i32 %662, 31

  %668 = xor i32 %667, %666

  %669 = xor i32 %664, %666

  %670 = add nuw nsw i32 %669, %668

  %671 = icmp eq i32 %670, 2

  %672 = icmp ne i8 %665, 0

  %673 = xor i1 %672, %671

  %674 = select i1 %673, i64 12, i64 231

  %675 = add i64 %654, %674

  br i1 %673, label %block_4013cd, label %block_4014a8



block_40107e:                                     ; preds = %block_401010, %block_40101c

  %676 = phi i64 [ %1169, %block_401010 ], [ %975, %block_40101c ]

  %677 = phi i64 [ %1179, %block_401010 ], [ %993, %block_40101c ]

  %678 = phi %struct.Memory* [ %1123, %block_401010 ], [ %1123, %block_40101c ]

  store i64 1, i64* %16, align 8, !tbaa !1240

  %679 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 80) to double*)

  %680 = add i64 %676, -8

  %681 = inttoptr i64 %680 to i64*

  %682 = load i64, i64* %681

  %683 = add i64 %676, -12

  %684 = inttoptr i64 %683 to i32*

  %685 = load i32, i32* %684

  %686 = add i64 %676, -56

  %687 = inttoptr i64 %686 to i32*

  %688 = load i32, i32* %687

  %689 = mul i32 %688, %685

  %690 = add i32 %688, %689

  %691 = sext i32 %690 to i64

  %692 = shl nsw i64 %691, 3

  %693 = add i64 %682, %692

  %694 = inttoptr i64 %693 to double*

  %695 = load double, double* %694

  %696 = fdiv double %679, %695

  %697 = add i64 %676, -48

  %698 = inttoptr i64 %697 to double*

  store double %696, double* %698

  %699 = add i64 %676, -16

  %700 = inttoptr i64 %699 to i32*

  %701 = load i32, i32* %700

  %702 = load i64, i64* %20, align 8

  %703 = add i64 %702, -56

  %704 = inttoptr i64 %703 to i32*

  %705 = load i32, i32* %704

  %706 = add i32 %705, 1

  %707 = sub i32 %701, %706

  %708 = zext i32 %707 to i64

  store i64 %708, i64* %15, align 8, !tbaa !1240

  %709 = add i64 %702, -48

  %710 = inttoptr i64 %709 to double*

  %711 = load double, double* %710

  store double %711, double* %1391, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1392, align 1, !tbaa !1268

  %712 = add i64 %702, -8

  %713 = inttoptr i64 %712 to i64*

  %714 = load i64, i64* %713

  store i64 %714, i64* %14, align 8, !tbaa !1240

  %715 = add i64 %702, -12

  %716 = inttoptr i64 %715 to i32*

  %717 = load i32, i32* %716

  %718 = mul i32 %705, %717

  %719 = load i64, i64* %20, align 8

  %720 = add i64 %719, -56

  %721 = inttoptr i64 %720 to i32*

  %722 = load i32, i32* %721

  %723 = add i32 %722, %718

  %724 = add i32 %723, 1

  %725 = sext i32 %724 to i64

  %726 = shl nsw i64 %725, 3

  %727 = load i64, i64* %14, align 8

  %728 = add i64 %726, %727

  store i64 %728, i64* %14, align 8, !tbaa !1240

  %729 = load i32, i32* %7, align 4

  %730 = zext i32 %729 to i64

  store i64 %730, i64* %18, align 8, !tbaa !1240

  store i64 %728, i64* %17, align 8, !tbaa !1240

  %731 = add i64 %677, 3426

  %732 = add i64 %677, 93

  %733 = load i64, i64* %19, align 8, !tbaa !1240

  %734 = add i64 %733, -8

  %735 = inttoptr i64 %734 to i64*

  store i64 %732, i64* %735

  store i64 %734, i64* %19, align 8, !tbaa !1240

  %736 = tail call %struct.Memory* @sub_401de0_dscal_r(%struct.State* nonnull %0, i64 %731, %struct.Memory* %678)

  %737 = load i64, i64* %20, align 8

  %738 = add i64 %737, -60

  %739 = load i64, i64* %3, align 8

  %740 = inttoptr i64 %738 to i32*

  %741 = load i32, i32* %740

  %742 = add i64 %737, -52

  %743 = add i64 %739, 6

  %744 = inttoptr i64 %742 to i32*

  store i32 %741, i32* %744

  br label %block_4010e1



block_40143b:                                     ; preds = %block_4013f4, %block_4013cd

  %745 = phi i64 [ %508, %block_4013cd ], [ %912, %block_4013f4 ]

  %746 = phi %struct.Memory* [ %656, %block_4013cd ], [ %656, %block_4013f4 ]

  store i64 1, i64* %14, align 8, !tbaa !1240

  %747 = load i64, i64* %20, align 8

  %748 = add i64 %747, -16

  %749 = inttoptr i64 %748 to i32*

  %750 = load i32, i32* %749

  %751 = add i64 %747, -56

  %752 = inttoptr i64 %751 to i32*

  %753 = load i32, i32* %752

  %754 = add i32 %753, 1

  %755 = sub i32 %750, %754

  %756 = zext i32 %755 to i64

  store i64 %756, i64* %15, align 8, !tbaa !1240

  %757 = add i64 %747, -48

  %758 = inttoptr i64 %757 to double*

  %759 = load double, double* %758

  store double %759, double* %327, align 1, !tbaa !1268

  store double 0.000000e+00, double* %328, align 1, !tbaa !1268

  %760 = add i64 %747, -8

  %761 = inttoptr i64 %760 to i64*

  %762 = load i64, i64* %761

  store i64 %762, i64* %17, align 8, !tbaa !1240

  %763 = add i64 %747, -12

  %764 = inttoptr i64 %763 to i32*

  %765 = load i32, i32* %764

  %766 = mul i32 %753, %765

  %767 = load i64, i64* %20, align 8

  %768 = add i64 %767, -56

  %769 = inttoptr i64 %768 to i32*

  %770 = load i32, i32* %769

  %771 = add i32 %770, %766

  %772 = add i32 %771, 1

  %773 = sext i32 %772 to i64

  %774 = shl nsw i64 %773, 3

  %775 = load i64, i64* %17, align 8

  %776 = add i64 %774, %775

  store i64 %776, i64* %17, align 8, !tbaa !1240

  %777 = load i64, i64* %20, align 8

  %778 = add i64 %777, -8

  %779 = inttoptr i64 %778 to i64*

  %780 = load i64, i64* %779

  store i64 %780, i64* %18, align 8, !tbaa !1240

  %781 = add i64 %777, -12

  %782 = inttoptr i64 %781 to i32*

  %783 = load i32, i32* %782

  %784 = add i64 %777, -52

  %785 = inttoptr i64 %784 to i32*

  %786 = load i32, i32* %785

  %787 = mul i32 %786, %783

  %788 = add i64 %777, -56

  %789 = inttoptr i64 %788 to i32*

  %790 = load i32, i32* %789

  %791 = add i32 %790, %787

  %792 = add i32 %791, 1

  %793 = sext i32 %792 to i64

  %794 = shl nsw i64 %793, 3

  %795 = load i64, i64* %18, align 8

  %796 = add i64 %794, %795

  %797 = load i64, i64* %20, align 8

  %798 = add i64 %797, -88

  %799 = inttoptr i64 %798 to i64*

  store i64 %796, i64* %799

  %800 = load i32, i32* %7, align 4

  %801 = zext i32 %800 to i64

  store i64 %801, i64* %18, align 8, !tbaa !1240

  %802 = load i32, i32* %5, align 4

  %803 = zext i32 %802 to i64

  store i64 %803, i64* %16, align 8, !tbaa !1240

  %804 = inttoptr i64 %798 to i64*

  %805 = load i64, i64* %804

  store i64 %805, i64* %15, align 8, !tbaa !1240

  store i64 %803, i64* %21, align 8, !tbaa !1240

  %806 = add i64 %745, 3493

  %807 = add i64 %745, 95

  %808 = load i64, i64* %19, align 8, !tbaa !1240

  %809 = add i64 %808, -8

  %810 = inttoptr i64 %809 to i64*

  store i64 %807, i64* %810

  store i64 %809, i64* %19, align 8, !tbaa !1240

  %811 = tail call %struct.Memory* @sub_4021e0_daxpy_ur(%struct.State* nonnull %0, i64 %806, %struct.Memory* %746)

  %812 = load i64, i64* %20, align 8

  %813 = add i64 %812, -52

  %814 = load i64, i64* %3, align 8

  %815 = inttoptr i64 %813 to i32*

  %816 = load i32, i32* %815

  %817 = add i32 %816, 1

  %818 = inttoptr i64 %813 to i32*

  store i32 %817, i32* %818

  %819 = add i64 %814, -217

  br label %block_4013c1



block_40126c:                                     ; preds = %block_4014b6, %block_401265

  %820 = phi i64 [ %314, %block_401265 ], [ %861, %block_4014b6 ]

  %821 = phi i64 [ %64, %block_401265 ], [ %853, %block_4014b6 ]

  %822 = phi %struct.Memory* [ %2, %block_401265 ], [ %855, %block_4014b6 ]

  %823 = add i64 %821, -56

  %824 = inttoptr i64 %823 to i32*

  %825 = load i32, i32* %824

  %826 = add i64 %821, -68

  %827 = inttoptr i64 %826 to i32*

  %828 = load i32, i32* %827

  %829 = sub i32 %825, %828

  %830 = lshr i32 %829, 31

  %831 = trunc i32 %830 to i8

  %832 = lshr i32 %825, 31

  %833 = lshr i32 %828, 31

  %834 = xor i32 %833, %832

  %835 = xor i32 %830, %832

  %836 = add nuw nsw i32 %835, %834

  %837 = icmp eq i32 %836, 2

  %838 = icmp ne i8 %831, 0

  %839 = xor i1 %838, %837

  %840 = select i1 %839, i64 12, i64 605

  %841 = add i64 %820, %840

  %842 = add i64 %841, 5

  br i1 %839, label %block_401278, label %block_4014c9



block_401237:                                     ; preds = %block_401231

  %843 = load i64, i64* %20, align 8

  %844 = add i64 %843, -16

  %845 = inttoptr i64 %844 to i32*

  %846 = load i32, i32* %845

  %847 = add i32 %846, -1

  %848 = zext i32 %847 to i64

  store i64 %848, i64* %14, align 8, !tbaa !1240

  %849 = add i64 %843, -32

  %850 = inttoptr i64 %849 to i64*

  %851 = load i64, i64* %850

  store i64 %851, i64* %15, align 8, !tbaa !1240

  %852 = inttoptr i64 %851 to i32*

  store i32 %847, i32* %852

  br label %block_401528



block_4014b6:                                     ; preds = %block_4012eb, %block_4014a8

  %853 = phi i64 [ %655, %block_4014a8 ], [ %914, %block_4012eb ]

  %854 = phi i64 [ %862, %block_4014a8 ], [ %921, %block_4012eb ]

  %855 = phi %struct.Memory* [ %656, %block_4014a8 ], [ %638, %block_4012eb ]

  %856 = add i64 %853, -56

  %857 = inttoptr i64 %856 to i32*

  %858 = load i32, i32* %857

  %859 = add i32 %858, 1

  %860 = inttoptr i64 %856 to i32*

  store i32 %859, i32* %860

  %861 = add i64 %854, -586

  br label %block_40126c



block_4014a8:                                     ; preds = %block_4013c1

  %862 = add i64 %675, 14

  br label %block_4014b6



block_4013f4:                                     ; preds = %block_4013cd

  %863 = load i64, i64* %20, align 8

  %864 = add i64 %863, -8

  %865 = inttoptr i64 %864 to i64*

  %866 = load i64, i64* %865

  %867 = add i64 %863, -12

  %868 = inttoptr i64 %867 to i32*

  %869 = load i32, i32* %868

  %870 = add i64 %863, -52

  %871 = inttoptr i64 %870 to i32*

  %872 = load i32, i32* %871

  %873 = mul i32 %872, %869

  %874 = add i64 %863, -56

  %875 = inttoptr i64 %874 to i32*

  %876 = load i32, i32* %875

  %877 = add i32 %876, %873

  %878 = sext i32 %877 to i64

  %879 = shl nsw i64 %878, 3

  %880 = add i64 %866, %879

  %881 = inttoptr i64 %880 to double*

  %882 = load double, double* %881

  %883 = load i64, i64* %20, align 8

  %884 = add i64 %883, -64

  %885 = inttoptr i64 %884 to i32*

  %886 = load i32, i32* %885

  %887 = add i32 %886, %873

  %888 = sext i32 %887 to i64

  %889 = shl nsw i64 %888, 3

  %890 = add i64 %866, %889

  %891 = inttoptr i64 %890 to double*

  store double %882, double* %891

  %892 = add i64 %883, -48

  %893 = inttoptr i64 %892 to double*

  %894 = load double, double* %893

  store double %894, double* %327, align 1, !tbaa !1268

  store double 0.000000e+00, double* %328, align 1, !tbaa !1268

  %895 = add i64 %883, -8

  %896 = inttoptr i64 %895 to i64*

  %897 = load i64, i64* %896

  %898 = add i64 %883, -12

  %899 = inttoptr i64 %898 to i32*

  %900 = load i32, i32* %899

  %901 = add i64 %883, -52

  %902 = inttoptr i64 %901 to i32*

  %903 = load i32, i32* %902

  %904 = mul i32 %903, %900

  %905 = add i64 %883, -56

  %906 = inttoptr i64 %905 to i32*

  %907 = load i32, i32* %906

  %908 = add i32 %907, %904

  %909 = sext i32 %908 to i64

  %910 = shl nsw i64 %909, 3

  %911 = add i64 %897, %910

  %912 = add i64 %508, 71

  %913 = inttoptr i64 %911 to double*

  store double %894, double* %913

  br label %block_40143b



block_4012eb:                                     ; preds = %block_4012e5

  %914 = load i64, i64* %20, align 8

  %915 = add i64 %914, -56

  %916 = inttoptr i64 %915 to i32*

  %917 = load i32, i32* %916

  %918 = add i64 %914, -32

  %919 = inttoptr i64 %918 to i64*

  %920 = load i64, i64* %919

  %921 = add i64 %289, 459

  %922 = inttoptr i64 %920 to i32*

  store i32 %917, i32* %922

  br label %block_4014b6



block_401005:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit6

  %923 = load i8, i8* %30, align 1, !tbaa !1258

  %924 = icmp ne i8 %923, 0

  %925 = select i1 %924, i64 11, i64 6

  %926 = add i64 %1126, %925

  %927 = icmp eq i8 %923, 1

  br i1 %927, label %block_401010, label %block_40100b



block_40101c:                                     ; preds = %block_401010

  %928 = add i64 %1169, -8

  %929 = inttoptr i64 %928 to i64*

  %930 = load i64, i64* %929

  %931 = add i64 %1169, -12

  %932 = inttoptr i64 %931 to i32*

  %933 = load i32, i32* %932

  %934 = mul i32 %1175, %933

  %935 = add i32 %1172, %934

  %936 = sext i32 %935 to i64

  %937 = shl nsw i64 %936, 3

  %938 = add i64 %930, %937

  %939 = inttoptr i64 %938 to double*

  %940 = load double, double* %939

  %941 = add i64 %1169, -48

  %942 = inttoptr i64 %941 to double*

  store double %940, double* %942

  %943 = inttoptr i64 %928 to i64*

  %944 = load i64, i64* %943

  %945 = inttoptr i64 %931 to i32*

  %946 = load i32, i32* %945

  %947 = inttoptr i64 %1173 to i32*

  %948 = load i32, i32* %947

  %949 = mul i32 %948, %946

  %950 = load i64, i64* %20, align 8

  %951 = add i64 %950, -56

  %952 = inttoptr i64 %951 to i32*

  %953 = load i32, i32* %952

  %954 = add i32 %953, %949

  %955 = sext i32 %954 to i64

  %956 = shl nsw i64 %955, 3

  %957 = add i64 %944, %956

  %958 = inttoptr i64 %957 to double*

  %959 = load double, double* %958

  %960 = add i64 %950, -8

  %961 = inttoptr i64 %960 to i64*

  %962 = load i64, i64* %961

  %963 = add i64 %950, -12

  %964 = inttoptr i64 %963 to i32*

  %965 = load i32, i32* %964

  %966 = mul i32 %953, %965

  %967 = add i64 %950, -64

  %968 = inttoptr i64 %967 to i32*

  %969 = load i32, i32* %968

  %970 = add i32 %969, %966

  %971 = sext i32 %970 to i64

  %972 = shl nsw i64 %971, 3

  %973 = add i64 %962, %972

  %974 = inttoptr i64 %973 to double*

  store double %959, double* %974

  %975 = load i64, i64* %20, align 8

  %976 = add i64 %975, -48

  %977 = inttoptr i64 %976 to double*

  %978 = load double, double* %977

  store double %978, double* %1391, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1392, align 1, !tbaa !1268

  %979 = add i64 %975, -8

  %980 = inttoptr i64 %979 to i64*

  %981 = load i64, i64* %980

  %982 = add i64 %975, -12

  %983 = inttoptr i64 %982 to i32*

  %984 = load i32, i32* %983

  %985 = add i64 %975, -56

  %986 = inttoptr i64 %985 to i32*

  %987 = load i32, i32* %986

  %988 = mul i32 %987, %984

  %989 = add i32 %987, %988

  %990 = sext i32 %989 to i64

  %991 = shl nsw i64 %990, 3

  %992 = add i64 %981, %991

  %993 = add i64 %1179, 98

  %994 = inttoptr i64 %992 to double*

  store double %978, double* %994

  br label %block_40107e



block_400f98:                                     ; preds = %block_400f8c

  store i64 1, i64* %16, align 8, !tbaa !1240

  %995 = add i32 %1185, 1

  %996 = add i64 %1181, -60

  %997 = inttoptr i64 %996 to i32*

  store i32 %995, i32* %997

  %998 = add i64 %1181, -16

  %999 = inttoptr i64 %998 to i32*

  %1000 = load i32, i32* %999

  %1001 = inttoptr i64 %1183 to i32*

  %1002 = load i32, i32* %1001

  %1003 = sub i32 %1000, %1002

  %1004 = zext i32 %1003 to i64

  store i64 %1004, i64* %14, align 8, !tbaa !1240

  %1005 = add i64 %1181, -8

  %1006 = inttoptr i64 %1005 to i64*

  %1007 = load i64, i64* %1006

  store i64 %1007, i64* %15, align 8, !tbaa !1240

  %1008 = add i64 %1181, -12

  %1009 = inttoptr i64 %1008 to i32*

  %1010 = load i32, i32* %1009

  %1011 = mul i32 %1002, %1010

  %1012 = load i64, i64* %20, align 8

  %1013 = add i64 %1012, -56

  %1014 = inttoptr i64 %1013 to i32*

  %1015 = load i32, i32* %1014

  %1016 = add i32 %1015, %1011

  %1017 = sext i32 %1016 to i64

  %1018 = shl nsw i64 %1017, 3

  %1019 = load i64, i64* %15, align 8

  %1020 = add i64 %1018, %1019

  store i64 %1020, i64* %15, align 8, !tbaa !1240

  %1021 = load i32, i32* %5, align 4

  %1022 = zext i32 %1021 to i64

  store i64 %1022, i64* %18, align 8, !tbaa !1240

  store i64 %1020, i64* %17, align 8, !tbaa !1240

  %1023 = add i64 %1201, 3272

  %1024 = add i64 %1201, 54

  %1025 = load i64, i64* %19, align 8, !tbaa !1240

  %1026 = add i64 %1025, -8

  %1027 = inttoptr i64 %1026 to i64*

  store i64 %1024, i64* %1027

  store i64 %1026, i64* %19, align 8, !tbaa !1240

  %1028 = tail call %struct.Memory* @sub_401c60_idamax(%struct.State* nonnull %0, i64 %1023, %struct.Memory* %1182)

  %1029 = load i64, i64* %3, align 8

  store i32 0, i32* %1382, align 1, !tbaa !1270

  store i32 0, i32* %1384, align 1, !tbaa !1270

  store i32 0, i32* %1385, align 1, !tbaa !1270

  store i32 0, i32* %1387, align 1, !tbaa !1270

  %1030 = load i64, i64* %14, align 8

  %1031 = load i64, i64* %20, align 8

  %1032 = add i64 %1031, -56

  %1033 = trunc i64 %1030 to i32

  %1034 = inttoptr i64 %1032 to i32*

  %1035 = load i32, i32* %1034

  %1036 = add i32 %1035, %1033

  %1037 = add i64 %1031, -64

  %1038 = inttoptr i64 %1037 to i32*

  store i32 %1036, i32* %1038

  %1039 = inttoptr i64 %1037 to i32*

  %1040 = load i32, i32* %1039

  %1041 = add i64 %1031, -24

  %1042 = inttoptr i64 %1041 to i64*

  %1043 = load i64, i64* %1042

  %1044 = inttoptr i64 %1032 to i32*

  %1045 = load i32, i32* %1044

  %1046 = sext i32 %1045 to i64

  %1047 = shl nsw i64 %1046, 2

  %1048 = add i64 %1047, %1043

  %1049 = inttoptr i64 %1048 to i32*

  store i32 %1040, i32* %1049

  %1050 = add i64 %1031, -8

  %1051 = inttoptr i64 %1050 to i64*

  %1052 = load i64, i64* %1051

  store i64 %1052, i64* %15, align 8, !tbaa !1240

  %1053 = add i64 %1031, -12

  %1054 = inttoptr i64 %1053 to i32*

  %1055 = load i32, i32* %1054

  %1056 = inttoptr i64 %1032 to i32*

  %1057 = load i32, i32* %1056

  %1058 = mul i32 %1057, %1055

  %1059 = load i64, i64* %20, align 8

  %1060 = add i64 %1059, -64

  %1061 = inttoptr i64 %1060 to i32*

  %1062 = load i32, i32* %1061

  %1063 = add i32 %1062, %1058

  %1064 = zext i32 %1063 to i64

  store i64 %1064, i64* %14, align 8, !tbaa !1240

  %1065 = icmp ult i32 %1063, %1058

  %1066 = icmp ult i32 %1063, %1062

  %1067 = or i1 %1065, %1066

  %1068 = zext i1 %1067 to i8

  store i8 %1068, i8* %29, align 1, !tbaa !1244

  %1069 = and i32 %1063, 255

  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069) #9

  %1071 = trunc i32 %1070 to i8

  %1072 = and i8 %1071, 1

  %1073 = xor i8 %1072, 1

  store i8 %1073, i8* %30, align 1, !tbaa !1258

  %1074 = xor i32 %1062, %1058

  %1075 = xor i32 %1074, %1063

  %1076 = lshr i32 %1075, 4

  %1077 = trunc i32 %1076 to i8

  %1078 = and i8 %1077, 1

  store i8 %1078, i8* %31, align 1, !tbaa !1262

  %1079 = icmp eq i32 %1063, 0

  %1080 = zext i1 %1079 to i8

  store i8 %1080, i8* %32, align 1, !tbaa !1259

  %1081 = lshr i32 %1063, 31

  %1082 = trunc i32 %1081 to i8

  store i8 %1082, i8* %33, align 1, !tbaa !1260

  %1083 = lshr i32 %1058, 31

  %1084 = lshr i32 %1062, 31

  %1085 = xor i32 %1081, %1083

  %1086 = xor i32 %1081, %1084

  %1087 = add nuw nsw i32 %1085, %1086

  %1088 = icmp eq i32 %1087, 2

  %1089 = zext i1 %1088 to i8

  store i8 %1089, i8* %34, align 1, !tbaa !1261

  %1090 = sext i32 %1063 to i64

  store i64 %1090, i64* %17, align 8, !tbaa !1240

  %1091 = shl nsw i64 %1090, 3

  %1092 = add i64 %1052, %1091

  %1093 = inttoptr i64 %1092 to double*

  %1094 = load double, double* %1093

  store double %1094, double* %1388, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1390, align 1, !tbaa !1268

  %1095 = add i64 %1029, 49

  store i64 %1095, i64* %3, align 8

  %1096 = load double, double* %1391, align 1

  %1097 = fcmp uno double %1094, %1096

  br i1 %1097, label %1098, label %1110



; <label>:1098:                                   ; preds = %block_400f98

  %1099 = fadd double %1094, %1096

  %1100 = bitcast double %1099 to i64

  %1101 = and i64 %1100, 9221120237041090560

  %1102 = icmp eq i64 %1101, 9218868437227405312

  %1103 = and i64 %1100, 2251799813685247

  %1104 = icmp ne i64 %1103, 0

  %1105 = and i1 %1102, %1104

  br i1 %1105, label %1106, label %1116



; <label>:1106:                                   ; preds = %1098

  %1107 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1095, %struct.Memory* %1028) #12

  %1108 = load i64, i64* %3, align 8

  %1109 = load i8, i8* %32, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit6



; <label>:1110:                                   ; preds = %block_400f98

  %1111 = fcmp ogt double %1094, %1096

  br i1 %1111, label %1116, label %1112



; <label>:1112:                                   ; preds = %1110

  %1113 = fcmp olt double %1094, %1096

  br i1 %1113, label %1116, label %1114



; <label>:1114:                                   ; preds = %1112

  %1115 = fcmp oeq double %1094, %1096

  br i1 %1115, label %1116, label %1119



; <label>:1116:                                   ; preds = %1114, %1112, %1110, %1098

  %1117 = phi i8 [ 0, %1110 ], [ 0, %1112 ], [ 1, %1114 ], [ 1, %1098 ]

  %1118 = phi i8 [ 0, %1110 ], [ 0, %1112 ], [ 0, %1114 ], [ 1, %1098 ]

  store i8 %1118, i8* %30, align 1, !tbaa !1271

  br label %1119



; <label>:1119:                                   ; preds = %1116, %1114

  %1120 = phi i8 [ %1117, %1116 ], [ %1080, %1114 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit6



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit6: ; preds = %1119, %1106

  %1121 = phi i8 [ %1109, %1106 ], [ %1120, %1119 ]

  %1122 = phi i64 [ %1108, %1106 ], [ %1095, %1119 ]

  %1123 = phi %struct.Memory* [ %1107, %1106 ], [ %1028, %1119 ]

  %1124 = icmp eq i8 %1121, 0

  %1125 = select i1 %1124, i64 17, i64 6

  %1126 = add i64 %1122, %1125

  br i1 %1124, label %block_401010, label %block_401005



block_401231:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %1127 = load i8, i8* %30, align 1, !tbaa !1258

  %1128 = icmp eq i8 %1127, 1

  br i1 %1128, label %block_401528, label %block_401237



block_401517:                                     ; preds = %block_401511

  %1129 = load i64, i64* %20, align 8

  %1130 = add i64 %1129, -16

  %1131 = inttoptr i64 %1130 to i32*

  %1132 = load i32, i32* %1131

  %1133 = add i32 %1132, -1

  %1134 = zext i32 %1133 to i64

  store i64 %1134, i64* %14, align 8, !tbaa !1240

  %1135 = add i64 %1129, -32

  %1136 = inttoptr i64 %1135 to i64*

  %1137 = load i64, i64* %1136

  store i64 %1137, i64* %15, align 8, !tbaa !1240

  %1138 = inttoptr i64 %1137 to i32*

  store i32 %1133, i32* %1138

  br label %block_401528



block_4010ed:                                     ; preds = %block_4010e1

  %1139 = add i64 %292, -8

  %1140 = inttoptr i64 %1139 to i64*

  %1141 = load i64, i64* %1140

  %1142 = add i64 %292, -12

  %1143 = inttoptr i64 %1142 to i32*

  %1144 = load i32, i32* %1143

  %1145 = mul i32 %296, %1144

  %1146 = add i64 %292, -64

  %1147 = inttoptr i64 %1146 to i32*

  %1148 = load i32, i32* %1147

  %1149 = add i32 %1148, %1145

  %1150 = sext i32 %1149 to i64

  %1151 = shl nsw i64 %1150, 3

  %1152 = add i64 %1141, %1151

  %1153 = inttoptr i64 %1152 to double*

  %1154 = load double, double* %1153

  store double %1154, double* %1391, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1392, align 1, !tbaa !1268

  %1155 = add i64 %292, -48

  %1156 = inttoptr i64 %1155 to double*

  store double %1154, double* %1156

  %1157 = inttoptr i64 %1146 to i32*

  %1158 = load i32, i32* %1157

  %1159 = add i64 %292, -56

  %1160 = inttoptr i64 %1159 to i32*

  %1161 = load i32, i32* %1160

  %1162 = sub i32 %1158, %1161

  %1163 = icmp eq i32 %1162, 0

  %1164 = select i1 %1163, i64 110, i64 39

  %1165 = add i64 %312, %1164

  br i1 %1163, label %block_40115b, label %block_401114



block_401511:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit5

  %1166 = load i8, i8* %30, align 1, !tbaa !1258

  %1167 = icmp eq i8 %1166, 1

  br i1 %1167, label %block_401528, label %block_401517



block_401010:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit6, %block_401005

  %1168 = phi i64 [ %1126, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit6 ], [ %926, %block_401005 ]

  %1169 = load i64, i64* %20, align 8

  %1170 = add i64 %1169, -64

  %1171 = inttoptr i64 %1170 to i32*

  %1172 = load i32, i32* %1171

  %1173 = add i64 %1169, -56

  %1174 = inttoptr i64 %1173 to i32*

  %1175 = load i32, i32* %1174

  %1176 = sub i32 %1172, %1175

  %1177 = icmp eq i32 %1176, 0

  %1178 = select i1 %1177, i64 110, i64 12

  %1179 = add i64 %1168, %1178

  br i1 %1177, label %block_40107e, label %block_40101c



block_400f8c:                                     ; preds = %block_400f85, %block_4011d6

  %1180 = phi i64 [ %1378, %block_400f85 ], [ %481, %block_4011d6 ]

  %1181 = phi i64 [ %64, %block_400f85 ], [ %473, %block_4011d6 ]

  %1182 = phi %struct.Memory* [ %2, %block_400f85 ], [ %475, %block_4011d6 ]

  %1183 = add i64 %1181, -56

  %1184 = inttoptr i64 %1183 to i32*

  %1185 = load i32, i32* %1184

  %1186 = add i64 %1181, -68

  %1187 = inttoptr i64 %1186 to i32*

  %1188 = load i32, i32* %1187

  %1189 = sub i32 %1185, %1188

  %1190 = lshr i32 %1189, 31

  %1191 = trunc i32 %1190 to i8

  %1192 = lshr i32 %1185, 31

  %1193 = lshr i32 %1188, 31

  %1194 = xor i32 %1193, %1192

  %1195 = xor i32 %1190, %1192

  %1196 = add nuw nsw i32 %1195, %1194

  %1197 = icmp eq i32 %1196, 2

  %1198 = icmp ne i8 %1191, 0

  %1199 = xor i1 %1198, %1197

  %1200 = select i1 %1199, i64 12, i64 605

  %1201 = add i64 %1180, %1200

  %1202 = add i64 %1201, 5

  br i1 %1199, label %block_400f98, label %block_4011e9



block_4014ce:                                     ; preds = %block_401248.block_4014ce_crit_edge, %block_4014c9

  %1203 = phi double* [ %1376, %block_401248.block_4014ce_crit_edge ], [ %327, %block_4014c9 ]

  %1204 = phi double* [ %1375, %block_401248.block_4014ce_crit_edge ], [ %326, %block_4014c9 ]

  %1205 = phi double* [ %1373, %block_401248.block_4014ce_crit_edge ], [ %324, %block_4014c9 ]

  %1206 = phi i32* [ %1372, %block_401248.block_4014ce_crit_edge ], [ %323, %block_4014c9 ]

  %1207 = phi i32* [ %1370, %block_401248.block_4014ce_crit_edge ], [ %321, %block_4014c9 ]

  %1208 = phi i32* [ %1369, %block_401248.block_4014ce_crit_edge ], [ %320, %block_4014c9 ]

  %1209 = phi i32* [ %1367, %block_401248.block_4014ce_crit_edge ], [ %318, %block_4014c9 ]

  %1210 = phi i64 [ %64, %block_401248.block_4014ce_crit_edge ], [ %821, %block_4014c9 ]

  %1211 = phi i64 [ %74, %block_401248.block_4014ce_crit_edge ], [ %842, %block_4014c9 ]

  %1212 = phi %struct.Memory* [ %2, %block_401248.block_4014ce_crit_edge ], [ %822, %block_4014c9 ]

  store i32 0, i32* %1209, align 1, !tbaa !1270

  store i32 0, i32* %1208, align 1, !tbaa !1270

  store i32 0, i32* %1207, align 1, !tbaa !1270

  store i32 0, i32* %1206, align 1, !tbaa !1270

  %1213 = add i64 %1210, -16

  %1214 = inttoptr i64 %1213 to i32*

  %1215 = load i32, i32* %1214

  %1216 = add i32 %1215, -1

  %1217 = add i64 %1210, -24

  %1218 = inttoptr i64 %1217 to i64*

  %1219 = load i64, i64* %1218

  %1220 = sext i32 %1216 to i64

  %1221 = shl nsw i64 %1220, 2

  %1222 = add i64 %1219, %1221

  %1223 = inttoptr i64 %1222 to i32*

  store i32 %1216, i32* %1223

  %1224 = add i64 %1210, -8

  %1225 = inttoptr i64 %1224 to i64*

  %1226 = load i64, i64* %1225

  store i64 %1226, i64* %15, align 8, !tbaa !1240

  %1227 = add i64 %1210, -12

  %1228 = inttoptr i64 %1227 to i32*

  %1229 = load i32, i32* %1228

  %1230 = inttoptr i64 %1213 to i32*

  %1231 = load i32, i32* %1230

  %1232 = add i32 %1231, -1

  %1233 = sext i32 %1229 to i64

  %1234 = sext i32 %1232 to i64

  %1235 = mul nsw i64 %1234, %1233

  %1236 = load i64, i64* %20, align 8

  %1237 = add i64 %1236, -16

  %1238 = inttoptr i64 %1237 to i32*

  %1239 = load i32, i32* %1238

  %1240 = add i32 %1239, -1

  %1241 = zext i32 %1240 to i64

  store i64 %1241, i64* %16, align 8, !tbaa !1240

  %1242 = lshr i32 %1240, 31

  %1243 = trunc i64 %1235 to i32

  %1244 = add i32 %1240, %1243

  %1245 = zext i32 %1244 to i64

  store i64 %1245, i64* %14, align 8, !tbaa !1240

  %1246 = icmp ult i32 %1244, %1243

  %1247 = icmp ult i32 %1244, %1240

  %1248 = or i1 %1246, %1247

  %1249 = zext i1 %1248 to i8

  store i8 %1249, i8* %29, align 1, !tbaa !1244

  %1250 = and i32 %1244, 255

  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250) #9

  %1252 = trunc i32 %1251 to i8

  %1253 = and i8 %1252, 1

  %1254 = xor i8 %1253, 1

  store i8 %1254, i8* %30, align 1, !tbaa !1258

  %1255 = xor i64 %1241, %1235

  %1256 = trunc i64 %1255 to i32

  %1257 = xor i32 %1256, %1244

  %1258 = lshr i32 %1257, 4

  %1259 = trunc i32 %1258 to i8

  %1260 = and i8 %1259, 1

  store i8 %1260, i8* %31, align 1, !tbaa !1262

  %1261 = icmp eq i32 %1244, 0

  %1262 = zext i1 %1261 to i8

  store i8 %1262, i8* %32, align 1, !tbaa !1259

  %1263 = lshr i32 %1244, 31

  %1264 = trunc i32 %1263 to i8

  store i8 %1264, i8* %33, align 1, !tbaa !1260

  %1265 = lshr i32 %1243, 31

  %1266 = xor i32 %1263, %1265

  %1267 = xor i32 %1263, %1242

  %1268 = add nuw nsw i32 %1266, %1267

  %1269 = icmp eq i32 %1268, 2

  %1270 = zext i1 %1269 to i8

  store i8 %1270, i8* %34, align 1, !tbaa !1261

  %1271 = sext i32 %1244 to i64

  store i64 %1271, i64* %17, align 8, !tbaa !1240

  %1272 = load i64, i64* %15, align 8

  %1273 = shl nsw i64 %1271, 3

  %1274 = add i64 %1272, %1273

  %1275 = inttoptr i64 %1274 to double*

  %1276 = load double, double* %1275

  store double %1276, double* %1205, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1204, align 1, !tbaa !1268

  %1277 = add i64 %1211, 61

  store i64 %1277, i64* %3, align 8

  %1278 = load double, double* %1203, align 1

  %1279 = fcmp uno double %1276, %1278

  br i1 %1279, label %1280, label %1291



; <label>:1280:                                   ; preds = %block_4014ce

  %1281 = fadd double %1276, %1278

  %1282 = bitcast double %1281 to i64

  %1283 = and i64 %1282, 9221120237041090560

  %1284 = icmp eq i64 %1283, 9218868437227405312

  %1285 = and i64 %1282, 2251799813685247

  %1286 = icmp ne i64 %1285, 0

  %1287 = and i1 %1284, %1286

  br i1 %1287, label %1288, label %1297



; <label>:1288:                                   ; preds = %1280

  %1289 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1277, %struct.Memory* %1212) #12

  %1290 = load i8, i8* %32, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit5



; <label>:1291:                                   ; preds = %block_4014ce

  %1292 = fcmp ogt double %1276, %1278

  br i1 %1292, label %1297, label %1293



; <label>:1293:                                   ; preds = %1291

  %1294 = fcmp olt double %1276, %1278

  br i1 %1294, label %1297, label %1295



; <label>:1295:                                   ; preds = %1293

  %1296 = fcmp oeq double %1276, %1278

  br i1 %1296, label %1297, label %1300



; <label>:1297:                                   ; preds = %1295, %1293, %1291, %1280

  %1298 = phi i8 [ 0, %1291 ], [ 0, %1293 ], [ 1, %1295 ], [ 1, %1280 ]

  %1299 = phi i8 [ 0, %1291 ], [ 0, %1293 ], [ 0, %1295 ], [ 1, %1280 ]

  store i8 %1299, i8* %30, align 1, !tbaa !1271

  br label %1300



; <label>:1300:                                   ; preds = %1297, %1295

  %1301 = phi i8 [ %1298, %1297 ], [ %1262, %1295 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit5



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit5: ; preds = %1300, %1288

  %1302 = phi i8 [ %1290, %1288 ], [ %1301, %1300 ]

  %1303 = phi %struct.Memory* [ %1289, %1288 ], [ %1212, %1300 ]

  %1304 = icmp eq i8 %1302, 0

  br i1 %1304, label %block_401528, label %block_401511



block_401114:                                     ; preds = %block_4010ed

  %1305 = load i64, i64* %20, align 8

  %1306 = add i64 %1305, -8

  %1307 = inttoptr i64 %1306 to i64*

  %1308 = load i64, i64* %1307

  %1309 = add i64 %1305, -12

  %1310 = inttoptr i64 %1309 to i32*

  %1311 = load i32, i32* %1310

  %1312 = add i64 %1305, -52

  %1313 = inttoptr i64 %1312 to i32*

  %1314 = load i32, i32* %1313

  %1315 = mul i32 %1314, %1311

  %1316 = add i64 %1305, -56

  %1317 = inttoptr i64 %1316 to i32*

  %1318 = load i32, i32* %1317

  %1319 = add i32 %1318, %1315

  %1320 = sext i32 %1319 to i64

  %1321 = shl nsw i64 %1320, 3

  %1322 = add i64 %1308, %1321

  %1323 = inttoptr i64 %1322 to double*

  %1324 = load double, double* %1323

  %1325 = load i64, i64* %20, align 8

  %1326 = add i64 %1325, -64

  %1327 = inttoptr i64 %1326 to i32*

  %1328 = load i32, i32* %1327

  %1329 = add i32 %1328, %1315

  %1330 = sext i32 %1329 to i64

  %1331 = shl nsw i64 %1330, 3

  %1332 = add i64 %1308, %1331

  %1333 = inttoptr i64 %1332 to double*

  store double %1324, double* %1333

  %1334 = add i64 %1325, -48

  %1335 = inttoptr i64 %1334 to double*

  %1336 = load double, double* %1335

  store double %1336, double* %1391, align 1, !tbaa !1268

  store double 0.000000e+00, double* %1392, align 1, !tbaa !1268

  %1337 = add i64 %1325, -8

  %1338 = inttoptr i64 %1337 to i64*

  %1339 = load i64, i64* %1338

  %1340 = add i64 %1325, -12

  %1341 = inttoptr i64 %1340 to i32*

  %1342 = load i32, i32* %1341

  %1343 = add i64 %1325, -52

  %1344 = inttoptr i64 %1343 to i32*

  %1345 = load i32, i32* %1344

  %1346 = mul i32 %1345, %1342

  %1347 = add i64 %1325, -56

  %1348 = inttoptr i64 %1347 to i32*

  %1349 = load i32, i32* %1348

  %1350 = add i32 %1349, %1346

  %1351 = sext i32 %1350 to i64

  %1352 = shl nsw i64 %1351, 3

  %1353 = add i64 %1339, %1352

  %1354 = add i64 %1165, 71

  %1355 = inttoptr i64 %1353 to double*

  store double %1336, double* %1355

  br label %block_40115b



block_40100b:                                     ; preds = %block_401005

  %1356 = load i64, i64* %20, align 8

  %1357 = add i64 %1356, -56

  %1358 = inttoptr i64 %1357 to i32*

  %1359 = load i32, i32* %1358

  %1360 = add i64 %1356, -32

  %1361 = inttoptr i64 %1360 to i64*

  %1362 = load i64, i64* %1361

  %1363 = add i64 %926, 459

  %1364 = inttoptr i64 %1362 to i32*

  store i32 %1359, i32* %1364

  br label %block_4011d6



block_401248:                                     ; preds = %block_400f40

  br i1 %72, label %block_401248.block_4014ce_crit_edge, label %block_401265



block_401248.block_4014ce_crit_edge:              ; preds = %block_401248

  %1365 = bitcast [32 x %union.VectorReg]* %22 to i8*

  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1367 = bitcast [32 x %union.VectorReg]* %22 to i32*

  %1368 = getelementptr inbounds i8, i8* %1365, i64 4

  %1369 = bitcast i8* %1368 to i32*

  %1370 = bitcast i64* %1366 to i32*

  %1371 = getelementptr inbounds i8, i8* %1365, i64 12

  %1372 = bitcast i8* %1371 to i32*

  %1373 = bitcast %union.VectorReg* %23 to double*

  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %1375 = bitcast i64* %1374 to double*

  %1376 = bitcast [32 x %union.VectorReg]* %22 to double*

  br label %block_4014ce



block_400f85:                                     ; preds = %block_400f68

  %1377 = add i64 %64, -56

  %1378 = add i64 %74, 7

  %1379 = inttoptr i64 %1377 to i32*

  store i32 0, i32* %1379

  %1380 = bitcast [32 x %union.VectorReg]* %22 to i8*

  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1382 = bitcast [32 x %union.VectorReg]* %22 to i32*

  %1383 = getelementptr inbounds i8, i8* %1380, i64 4

  %1384 = bitcast i8* %1383 to i32*

  %1385 = bitcast i64* %1381 to i32*

  %1386 = getelementptr inbounds i8, i8* %1380, i64 12

  %1387 = bitcast i8* %1386 to i32*

  %1388 = bitcast %union.VectorReg* %23 to double*

  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %1390 = bitcast i64* %1389 to double*

  %1391 = bitcast [32 x %union.VectorReg]* %22 to double*

  %1392 = bitcast i64* %1381 to double*

  br label %block_400f8c

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_402850___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_402850:

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

  store i64 ptrtoint (%seg_602e00__init_array_type* @seg_602e00__init_array to i64), i64* %14, align 8, !tbaa !1240

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

  store i64 ashr (i64 sub (i64 add (i64 ptrtoint (%seg_602e00__init_array_type* @seg_602e00__init_array to i64), i64 8), i64 ptrtoint (%seg_602e00__init_array_type* @seg_602e00__init_array to i64)), i64 3), i64* %13, align 8, !tbaa !1240

  %47 = add i64 %1, -9032

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400508__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_4028a6, label %block_402886



block_4028a6.loopexit:                            ; preds = %block_402890

  br label %block_4028a6



block_4028a6:                                     ; preds = %block_4028a6.loopexit, %block_402850

  %57 = phi %struct.Memory* [ %51, %block_402850 ], [ %119, %block_4028a6.loopexit ]

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

  store i8 %71, i8* %43, align 1, !tbaa !1262

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %44, align 1, !tbaa !1259

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %45, align 1, !tbaa !1260

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %46, align 1, !tbaa !1261

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



block_402886:                                     ; preds = %block_402850

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1259

  store i8 0, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  store i8 0, i8* %43, align 1, !tbaa !1262

  %102 = add i64 %56, 10

  br label %block_402890



block_402890:                                     ; preds = %block_402890, %block_402886

  %103 = phi i64 [ 0, %block_402886 ], [ %122, %block_402890 ]

  %104 = phi i64 [ %102, %block_402886 ], [ %150, %block_402890 ]

  %105 = phi %struct.Memory* [ %51, %block_402886 ], [ %119, %block_402890 ]

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

  store i8 %138, i8* %43, align 1, !tbaa !1262

  %139 = icmp eq i64 %125, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %44, align 1, !tbaa !1259

  %141 = lshr i64 %125, 63

  %142 = trunc i64 %141 to i8

  store i8 %142, i8* %45, align 1, !tbaa !1260

  %143 = lshr i64 %124, 63

  %144 = xor i64 %123, %143

  %145 = xor i64 %141, %143

  %146 = add nuw nsw i64 %145, %144

  %147 = icmp eq i64 %146, 2

  %148 = zext i1 %147 to i8

  store i8 %148, i8* %46, align 1, !tbaa !1261

  %149 = select i1 %139, i64 9, i64 -13

  %150 = add i64 %121, %149

  br i1 %139, label %block_4028a6.loopexit, label %block_402890

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400d70_matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400d70:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %11 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %19 = load i64, i64* %14, align 8

  %20 = load i64, i64* %13, align 8, !tbaa !1240

  %21 = add i64 %20, -8

  %22 = inttoptr i64 %21 to i64*

  store i64 %19, i64* %22

  store i64 %21, i64* %13, align 8, !tbaa !1240

  store i64 %21, i64* %14, align 8, !tbaa !1240

  %23 = bitcast [32 x %union.VectorReg]* %16 to i8*

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %25 = bitcast [32 x %union.VectorReg]* %16 to i32*

  store i32 0, i32* %25, align 1, !tbaa !1270

  %26 = getelementptr inbounds i8, i8* %23, i64 4

  %27 = bitcast i8* %26 to i32*

  store i32 0, i32* %27, align 1, !tbaa !1270

  %28 = bitcast i64* %24 to i32*

  store i32 0, i32* %28, align 1, !tbaa !1270

  %29 = getelementptr inbounds i8, i8* %23, i64 12

  %30 = bitcast i8* %29 to i32*

  store i32 0, i32* %30, align 1, !tbaa !1270

  %31 = add i64 %20, -16

  %32 = load i64, i64* %12, align 8

  %33 = inttoptr i64 %31 to i64*

  store i64 %32, i64* %33

  %34 = add i64 %20, -20

  %35 = load i32, i32* %7, align 4

  %36 = inttoptr i64 %34 to i32*

  store i32 %35, i32* %36

  %37 = add i64 %20, -24

  %38 = load i32, i32* %5, align 4

  %39 = inttoptr i64 %37 to i32*

  store i32 %38, i32* %39

  %40 = add i64 %20, -32

  %41 = load i64, i64* %9, align 8

  %42 = inttoptr i64 %40 to i64*

  store i64 %41, i64* %42

  %43 = add i64 %20, -40

  %44 = load i64, i64* %15, align 8

  %45 = inttoptr i64 %43 to i64*

  store i64 %44, i64* %45

  %46 = add i64 %20, -44

  %47 = inttoptr i64 %46 to i32*

  store i32 1325, i32* %47

  %48 = inttoptr i64 %43 to i64*

  %49 = load i64, i64* %48

  store i64 %49, i64* %9, align 8, !tbaa !1240

  %50 = bitcast [32 x %union.VectorReg]* %16 to double*

  %51 = load double, double* %50, align 1

  %52 = inttoptr i64 %49 to double*

  store double %51, double* %52

  %53 = add i64 %20, -52

  %54 = add i64 %1, 47

  %55 = inttoptr i64 %53 to i32*

  store i32 0, i32* %55

  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %62 = bitcast i64* %24 to double*

  %63 = bitcast %union.VectorReg* %17 to double*

  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %65 = bitcast i64* %64 to double*

  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %68 = bitcast %union.VectorReg* %18 to double*

  br label %block_400d9f



block_400e7b:                                     ; preds = %block_400db2

  %69 = add i64 %332, -44

  %70 = inttoptr i64 %69 to i32*

  %71 = load i32, i32* %70

  %72 = add i32 %71, 1

  %73 = inttoptr i64 %69 to i32*

  store i32 %72, i32* %73

  %74 = add i64 %352, -220

  br label %block_400d9f



block_400ee5:                                     ; preds = %block_400ed9

  %75 = inttoptr i64 %397 to i64*

  %76 = load i64, i64* %75

  %77 = sext i32 %104 to i64

  %78 = shl nsw i64 %77, 3

  %79 = add i64 %78, %76

  %80 = inttoptr i64 %79 to double*

  %81 = load double, double* %80

  %82 = inttoptr i64 %354 to i64*

  %83 = load i64, i64* %82

  %84 = inttoptr i64 %355 to i32*

  %85 = load i32, i32* %84

  %86 = inttoptr i64 %375 to i32*

  %87 = load i32, i32* %86

  %88 = mul i32 %87, %85

  %89 = add i32 %104, %88

  %90 = zext i32 %89 to i64

  store i64 %90, i64* %10, align 8, !tbaa !1240

  %91 = sext i32 %89 to i64

  %92 = shl nsw i64 %91, 3

  %93 = add i64 %83, %92

  %94 = inttoptr i64 %93 to double*

  %95 = load double, double* %94

  %96 = fadd double %81, %95

  store double %96, double* %50, align 1, !tbaa !1268

  store i64 0, i64* %24, align 1, !tbaa !1268

  store i64 %77, i64* %9, align 8, !tbaa !1240

  %97 = inttoptr i64 %79 to double*

  store double %96, double* %97

  %98 = inttoptr i64 %394 to i32*

  %99 = load i32, i32* %98

  %100 = add i32 %99, 1

  %101 = inttoptr i64 %394 to i32*

  store i32 %100, i32* %101

  br label %block_400ed9



block_400ed9:                                     ; preds = %block_400ed2, %block_400ee5

  %102 = phi %struct.Memory* [ %315, %block_400ed2 ], [ %102, %block_400ee5 ]

  %103 = inttoptr i64 %394 to i32*

  %104 = load i32, i32* %103

  %105 = inttoptr i64 %378 to i32*

  %106 = load i32, i32* %105

  %107 = sub i32 %104, %106

  %108 = lshr i32 %107, 31

  %109 = lshr i32 %104, 31

  %110 = lshr i32 %106, 31

  %111 = xor i32 %110, %109

  %112 = xor i32 %108, %109

  %113 = add nuw nsw i32 %112, %111

  %114 = icmp eq i32 %113, 2

  %115 = icmp ne i32 %108, 0

  %116 = xor i1 %115, %114

  br i1 %116, label %block_400ee5, label %block_400f23



block_400ed2:                                     ; preds = %block_400ec6

  %117 = inttoptr i64 %394 to i32*

  store i32 0, i32* %117

  br label %block_400ed9



block_400dbe:                                     ; preds = %block_400db2

  %118 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 64) to double*)

  store double %118, double* %50, align 1, !tbaa !1268

  store double 0.000000e+00, double* %62, align 1, !tbaa !1268

  %119 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4028d0__rodata_type* @seg_4028d0__rodata to i64), i64 72) to double*)

  store double %119, double* %63, align 1, !tbaa !1268

  store double 0.000000e+00, double* %65, align 1, !tbaa !1268

  store i64 65536, i64* %9, align 8, !tbaa !1240

  %120 = add i64 %332, -36

  %121 = inttoptr i64 %120 to i32*

  %122 = load i32, i32* %121

  %123 = sext i32 %122 to i64

  %124 = sext i32 %122 to i128

  %125 = and i128 %124, -18446744073709551616

  %126 = zext i64 %123 to i128

  %127 = or i128 %125, %126

  %128 = mul nsw i128 %127, 3125

  %129 = trunc i128 %128 to i64

  store i64 %129, i64* %8, align 8, !tbaa !1240

  %130 = sext i64 %129 to i128

  %131 = icmp ne i128 %130, %128

  %132 = zext i1 %131 to i8

  store i8 %132, i8* %56, align 1, !tbaa !1244

  %133 = trunc i128 %128 to i32

  %134 = and i32 %133, 255

  %135 = tail call i32 @llvm.ctpop.i32(i32 %134) #9

  %136 = trunc i32 %135 to i8

  %137 = and i8 %136, 1

  %138 = xor i8 %137, 1

  store i8 %138, i8* %57, align 1, !tbaa !1258

  store i8 0, i8* %58, align 1, !tbaa !1262

  store i8 0, i8* %59, align 1, !tbaa !1259

  %139 = lshr i64 %129, 63

  %140 = trunc i64 %139 to i8

  store i8 %140, i8* %60, align 1, !tbaa !1260

  store i8 %132, i8* %61, align 1, !tbaa !1261

  %141 = ashr i64 %129, 63

  store i64 %141, i64* %66, align 8, !tbaa !1240

  %142 = add i64 %352, 39

  store i64 %142, i64* %3, align 8

  %143 = zext i64 %141 to i128

  %144 = shl nuw i128 %143, 64

  %145 = and i128 %128, 18446744073709551615

  %146 = or i128 %145, %144

  %147 = sdiv i128 %146, 65536

  %148 = trunc i128 %147 to i64

  %149 = and i128 %147, 18446744073709551615

  %150 = sext i64 %148 to i128

  %151 = and i128 %150, -18446744073709551616

  %152 = or i128 %151, %149

  %153 = icmp eq i128 %147, %152

  br i1 %153, label %161, label %154



; <label>:154:                                    ; preds = %block_400dbe

  %155 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %142, %struct.Memory* %333) #12

  %156 = load i32, i32* %5, align 4

  %157 = load i64, i64* %3, align 8

  %158 = load i64, i64* %14, align 8

  %159 = load double, double* %63, align 1

  %160 = load double, double* %50, align 1

  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit



; <label>:161:                                    ; preds = %block_400dbe

  %162 = srem i128 %146, 65536

  store i64 %148, i64* %67, align 8, !tbaa !1240

  %163 = trunc i128 %162 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %161, %154

  %164 = phi double [ %160, %154 ], [ %118, %161 ]

  %165 = phi double [ %159, %154 ], [ %119, %161 ]

  %166 = phi i64 [ %158, %154 ], [ %332, %161 ]

  %167 = phi i64 [ %157, %154 ], [ %142, %161 ]

  %168 = phi i32 [ %156, %154 ], [ %163, %161 ]

  %169 = phi %struct.Memory* [ %155, %154 ], [ %333, %161 ]

  %170 = add i64 %166, -36

  %171 = inttoptr i64 %170 to i32*

  store i32 %168, i32* %171

  %172 = inttoptr i64 %170 to i32*

  %173 = load i32, i32* %172

  %174 = sitofp i32 %173 to double

  %175 = fsub double %174, %165

  %176 = fdiv double %175, %164

  store double %176, double* %68, align 1, !tbaa !1268

  %177 = add i64 %166, -8

  %178 = inttoptr i64 %177 to i64*

  %179 = load i64, i64* %178

  %180 = add i64 %166, -12

  %181 = inttoptr i64 %180 to i32*

  %182 = load i32, i32* %181

  %183 = add i64 %166, -44

  %184 = inttoptr i64 %183 to i32*

  %185 = load i32, i32* %184

  %186 = mul i32 %185, %182

  %187 = add i64 %166, -40

  %188 = inttoptr i64 %187 to i32*

  %189 = load i32, i32* %188

  %190 = add i32 %189, %186

  %191 = sext i32 %190 to i64

  %192 = shl nsw i64 %191, 3

  %193 = add i64 %179, %192

  %194 = inttoptr i64 %193 to double*

  store double %176, double* %194

  %195 = load i64, i64* %14, align 8

  %196 = add i64 %195, -8

  %197 = inttoptr i64 %196 to i64*

  %198 = load i64, i64* %197

  %199 = add i64 %195, -12

  %200 = inttoptr i64 %199 to i32*

  %201 = load i32, i32* %200

  %202 = add i64 %195, -44

  %203 = inttoptr i64 %202 to i32*

  %204 = load i32, i32* %203

  %205 = mul i32 %204, %201

  %206 = add i64 %195, -40

  %207 = inttoptr i64 %206 to i32*

  %208 = load i32, i32* %207

  %209 = add i32 %208, %205

  %210 = zext i32 %209 to i64

  store i64 %210, i64* %11, align 8, !tbaa !1240

  %211 = icmp ult i32 %209, %205

  %212 = icmp ult i32 %209, %208

  %213 = or i1 %211, %212

  %214 = zext i1 %213 to i8

  store i8 %214, i8* %56, align 1, !tbaa !1244

  %215 = and i32 %209, 255

  %216 = tail call i32 @llvm.ctpop.i32(i32 %215) #9

  %217 = trunc i32 %216 to i8

  %218 = and i8 %217, 1

  %219 = xor i8 %218, 1

  store i8 %219, i8* %57, align 1, !tbaa !1258

  %220 = xor i32 %208, %205

  %221 = xor i32 %220, %209

  %222 = lshr i32 %221, 4

  %223 = trunc i32 %222 to i8

  %224 = and i8 %223, 1

  store i8 %224, i8* %58, align 1, !tbaa !1262

  %225 = icmp eq i32 %209, 0

  %226 = zext i1 %225 to i8

  store i8 %226, i8* %59, align 1, !tbaa !1259

  %227 = lshr i32 %209, 31

  %228 = trunc i32 %227 to i8

  store i8 %228, i8* %60, align 1, !tbaa !1260

  %229 = lshr i32 %205, 31

  %230 = lshr i32 %208, 31

  %231 = xor i32 %227, %229

  %232 = xor i32 %227, %230

  %233 = add nuw nsw i32 %231, %232

  %234 = icmp eq i32 %233, 2

  %235 = zext i1 %234 to i8

  store i8 %235, i8* %61, align 1, !tbaa !1261

  %236 = sext i32 %209 to i64

  store i64 %236, i64* %10, align 8, !tbaa !1240

  %237 = shl nsw i64 %236, 3

  %238 = add i64 %198, %237

  %239 = inttoptr i64 %238 to double*

  %240 = load double, double* %239

  store double %240, double* %50, align 1, !tbaa !1268

  store double 0.000000e+00, double* %62, align 1, !tbaa !1268

  %241 = add i64 %195, -32

  %242 = inttoptr i64 %241 to i64*

  %243 = load i64, i64* %242

  store i64 %243, i64* %9, align 8, !tbaa !1240

  %244 = add i64 %167, 72

  store i64 %244, i64* %3, align 8

  %245 = inttoptr i64 %243 to double*

  %246 = load double, double* %245

  %247 = fcmp uno double %240, %246

  br i1 %247, label %248, label %261



; <label>:248:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

  %249 = fadd double %240, %246

  %250 = bitcast double %249 to i64

  %251 = and i64 %250, 9221120237041090560

  %252 = icmp eq i64 %251, 9218868437227405312

  %253 = and i64 %250, 2251799813685247

  %254 = icmp ne i64 %253, 0

  %255 = and i1 %252, %254

  br i1 %255, label %256, label %267



; <label>:256:                                    ; preds = %248

  %257 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %244, %struct.Memory* %169) #12

  %258 = load i64, i64* %3, align 8

  %259 = load i8, i8* %56, align 1, !tbaa !1244

  %260 = load i8, i8* %59, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



; <label>:261:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

  %262 = fcmp ogt double %240, %246

  br i1 %262, label %267, label %263



; <label>:263:                                    ; preds = %261

  %264 = fcmp olt double %240, %246

  br i1 %264, label %267, label %265



; <label>:265:                                    ; preds = %263

  %266 = fcmp oeq double %240, %246

  br i1 %266, label %267, label %270



; <label>:267:                                    ; preds = %265, %263, %261, %248

  %268 = phi i8 [ 0, %261 ], [ 0, %263 ], [ 1, %265 ], [ 1, %248 ]

  %269 = phi i8 [ 0, %261 ], [ 1, %263 ], [ 0, %265 ], [ 1, %248 ]

  br label %270



; <label>:270:                                    ; preds = %267, %265

  %271 = phi i8 [ %268, %267 ], [ %226, %265 ]

  %272 = phi i8 [ %269, %267 ], [ %214, %265 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %270, %256

  %273 = phi i8 [ %260, %256 ], [ %271, %270 ]

  %274 = phi i8 [ %259, %256 ], [ %272, %270 ]

  %275 = phi i64 [ %258, %256 ], [ %244, %270 ]

  %276 = phi %struct.Memory* [ %257, %256 ], [ %169, %270 ]

  %277 = or i8 %273, %274

  %278 = icmp ne i8 %277, 0

  %279 = select i1 %278, i64 38, i64 6

  %280 = add i64 %275, %279

  %281 = load i64, i64* %14, align 8

  br i1 %278, label %block_400e53, label %block_400e33



block_400e33:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  %282 = add i64 %281, -8

  %283 = inttoptr i64 %282 to i64*

  %284 = load i64, i64* %283

  %285 = add i64 %281, -12

  %286 = inttoptr i64 %285 to i32*

  %287 = load i32, i32* %286

  %288 = add i64 %281, -44

  %289 = inttoptr i64 %288 to i32*

  %290 = load i32, i32* %289

  %291 = mul i32 %290, %287

  %292 = add i64 %281, -40

  %293 = inttoptr i64 %292 to i32*

  %294 = load i32, i32* %293

  %295 = add i32 %294, %291

  %296 = zext i32 %295 to i64

  store i64 %296, i64* %9, align 8, !tbaa !1240

  %297 = sext i32 %295 to i64

  store i64 %297, i64* %10, align 8, !tbaa !1240

  %298 = shl nsw i64 %297, 3

  %299 = add i64 %284, %298

  %300 = inttoptr i64 %299 to double*

  %301 = load double, double* %300

  store double %301, double* %50, align 1, !tbaa !1268

  store double 0.000000e+00, double* %62, align 1, !tbaa !1268

  %302 = add i64 %281, -56

  %303 = inttoptr i64 %302 to double*

  store double %301, double* %303

  %304 = add i64 %280, 45

  %305 = add i64 %281, -32

  br label %block_400e60



block_400e53:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  %306 = add i64 %281, -32

  %307 = inttoptr i64 %306 to i64*

  %308 = load i64, i64* %307

  %309 = inttoptr i64 %308 to double*

  %310 = load double, double* %309

  store double %310, double* %50, align 1, !tbaa !1268

  store double 0.000000e+00, double* %62, align 1, !tbaa !1268

  %311 = add i64 %281, -56

  %312 = add i64 %280, 13

  %313 = inttoptr i64 %311 to double*

  store double %310, double* %313

  %314 = add i64 %281, -40

  br label %block_400e60



block_400ec6:                                     ; preds = %block_400f23, %block_400ebf

  %315 = phi %struct.Memory* [ %422, %block_400ebf ], [ %102, %block_400f23 ]

  %316 = inttoptr i64 %375 to i32*

  %317 = load i32, i32* %316

  %318 = inttoptr i64 %378 to i32*

  %319 = load i32, i32* %318

  %320 = sub i32 %317, %319

  %321 = lshr i32 %320, 31

  %322 = trunc i32 %321 to i8

  %323 = lshr i32 %317, 31

  %324 = lshr i32 %319, 31

  %325 = xor i32 %324, %323

  %326 = xor i32 %321, %323

  %327 = add nuw nsw i32 %326, %325

  %328 = icmp eq i32 %327, 2

  %329 = icmp ne i8 %322, 0

  %330 = xor i1 %329, %328

  br i1 %330, label %block_400ed2, label %block_400f36



block_400db2:                                     ; preds = %block_400e60, %block_400db2.preheader

  %331 = phi i64 [ %454, %block_400e60 ], [ %395, %block_400db2.preheader ]

  %332 = phi i64 [ %281, %block_400e60 ], [ %373, %block_400db2.preheader ]

  %333 = phi %struct.Memory* [ %444, %block_400e60 ], [ %374, %block_400db2.preheader ]

  %334 = add i64 %332, -40

  %335 = inttoptr i64 %334 to i32*

  %336 = load i32, i32* %335

  %337 = add i64 %332, -16

  %338 = inttoptr i64 %337 to i32*

  %339 = load i32, i32* %338

  %340 = sub i32 %336, %339

  %341 = lshr i32 %340, 31

  %342 = trunc i32 %341 to i8

  %343 = lshr i32 %336, 31

  %344 = lshr i32 %339, 31

  %345 = xor i32 %344, %343

  %346 = xor i32 %341, %343

  %347 = add nuw nsw i32 %346, %345

  %348 = icmp eq i32 %347, 2

  %349 = icmp ne i8 %342, 0

  %350 = xor i1 %349, %348

  %351 = select i1 %350, i64 12, i64 201

  %352 = add i64 %331, %351

  br i1 %350, label %block_400dbe, label %block_400e7b



block_400ebf:                                     ; preds = %block_400e95

  %353 = inttoptr i64 %375 to i32*

  store i32 0, i32* %353

  %354 = add i64 %373, -8

  %355 = add i64 %373, -12

  br label %block_400ec6



block_400f23:                                     ; preds = %block_400ed9

  %356 = inttoptr i64 %375 to i32*

  %357 = load i32, i32* %356

  %358 = add i32 %357, 1

  %359 = inttoptr i64 %375 to i32*

  store i32 %358, i32* %359

  br label %block_400ec6



block_400ea1:                                     ; preds = %block_400e95

  store i32 0, i32* %25, align 1, !tbaa !1270

  store i32 0, i32* %27, align 1, !tbaa !1270

  store i32 0, i32* %28, align 1, !tbaa !1270

  store i32 0, i32* %30, align 1, !tbaa !1270

  %360 = inttoptr i64 %397 to i64*

  %361 = load i64, i64* %360

  %362 = sext i32 %424 to i64

  store i64 %362, i64* %9, align 8, !tbaa !1240

  %363 = shl nsw i64 %362, 3

  %364 = add i64 %363, %361

  %365 = load double, double* %50, align 1

  %366 = inttoptr i64 %364 to double*

  store double %365, double* %366

  %367 = inttoptr i64 %394 to i32*

  %368 = load i32, i32* %367

  %369 = add i32 %368, 1

  %370 = inttoptr i64 %394 to i32*

  store i32 %369, i32* %370

  %371 = add i64 %439, -12

  br label %block_400e95



block_400d9f:                                     ; preds = %block_400e7b, %block_400d70

  %372 = phi i64 [ %54, %block_400d70 ], [ %74, %block_400e7b ]

  %373 = phi i64 [ %21, %block_400d70 ], [ %332, %block_400e7b ]

  %374 = phi %struct.Memory* [ %2, %block_400d70 ], [ %333, %block_400e7b ]

  %375 = add i64 %373, -44

  %376 = inttoptr i64 %375 to i32*

  %377 = load i32, i32* %376

  %378 = add i64 %373, -16

  %379 = inttoptr i64 %378 to i32*

  %380 = load i32, i32* %379

  %381 = sub i32 %377, %380

  %382 = lshr i32 %381, 31

  %383 = trunc i32 %382 to i8

  %384 = lshr i32 %377, 31

  %385 = lshr i32 %380, 31

  %386 = xor i32 %385, %384

  %387 = xor i32 %382, %384

  %388 = add nuw nsw i32 %387, %386

  %389 = icmp eq i32 %388, 2

  %390 = icmp ne i8 %383, 0

  %391 = xor i1 %390, %389

  %392 = select i1 %391, i64 12, i64 239

  %393 = add i64 %372, %392

  %394 = add i64 %373, -40

  %395 = add i64 %393, 7

  %396 = inttoptr i64 %394 to i32*

  store i32 0, i32* %396

  br i1 %391, label %block_400db2.preheader, label %block_400e95.preheader



block_400db2.preheader:                           ; preds = %block_400d9f

  br label %block_400db2



block_400e95.preheader:                           ; preds = %block_400d9f

  %397 = add i64 %373, -24

  br label %block_400e95



block_400f36:                                     ; preds = %block_400ec6

  %398 = zext i32 %317 to i64

  store i64 %398, i64* %8, align 8, !tbaa !1240

  %399 = icmp ult i32 %317, %319

  %400 = zext i1 %399 to i8

  %401 = and i32 %320, 255

  %402 = tail call i32 @llvm.ctpop.i32(i32 %401) #9

  %403 = trunc i32 %402 to i8

  %404 = and i8 %403, 1

  %405 = xor i8 %404, 1

  %406 = xor i32 %319, %317

  %407 = xor i32 %406, %320

  %408 = lshr i32 %407, 4

  %409 = trunc i32 %408 to i8

  %410 = and i8 %409, 1

  %411 = icmp eq i32 %320, 0

  %412 = zext i1 %411 to i8

  %413 = zext i1 %328 to i8

  store i8 %400, i8* %56, align 1, !tbaa !1244

  store i8 %405, i8* %57, align 1, !tbaa !1258

  store i8 %410, i8* %58, align 1, !tbaa !1262

  store i8 %412, i8* %59, align 1, !tbaa !1259

  store i8 %322, i8* %60, align 1, !tbaa !1260

  store i8 %413, i8* %61, align 1, !tbaa !1261

  %414 = load i64, i64* %13, align 8, !tbaa !1240

  %415 = add i64 %414, 8

  %416 = inttoptr i64 %414 to i64*

  %417 = load i64, i64* %416

  store i64 %417, i64* %14, align 8, !tbaa !1240

  %418 = inttoptr i64 %415 to i64*

  %419 = load i64, i64* %418

  store i64 %419, i64* %3, align 8, !tbaa !1240

  %420 = add i64 %414, 16

  store i64 %420, i64* %13, align 8, !tbaa !1240

  ret %struct.Memory* %315



block_400e95:                                     ; preds = %block_400e95.preheader, %block_400ea1

  %421 = phi i64 [ %371, %block_400ea1 ], [ %395, %block_400e95.preheader ]

  %422 = phi %struct.Memory* [ %422, %block_400ea1 ], [ %374, %block_400e95.preheader ]

  %423 = inttoptr i64 %394 to i32*

  %424 = load i32, i32* %423

  %425 = inttoptr i64 %378 to i32*

  %426 = load i32, i32* %425

  %427 = sub i32 %424, %426

  %428 = lshr i32 %427, 31

  %429 = trunc i32 %428 to i8

  %430 = lshr i32 %424, 31

  %431 = lshr i32 %426, 31

  %432 = xor i32 %431, %430

  %433 = xor i32 %428, %430

  %434 = add nuw nsw i32 %433, %432

  %435 = icmp eq i32 %434, 2

  %436 = icmp ne i8 %429, 0

  %437 = xor i1 %436, %435

  %438 = select i1 %437, i64 12, i64 42

  %439 = add i64 %421, %438

  br i1 %437, label %block_400ea1, label %block_400ebf



block_400e60:                                     ; preds = %block_400e53, %block_400e33

  %440 = phi i64 [ %314, %block_400e53 ], [ %292, %block_400e33 ]

  %441 = phi i64 [ %306, %block_400e53 ], [ %305, %block_400e33 ]

  %442 = phi i64 [ %311, %block_400e53 ], [ %302, %block_400e33 ]

  %443 = phi i64 [ %312, %block_400e53 ], [ %304, %block_400e33 ]

  %444 = phi %struct.Memory* [ %276, %block_400e53 ], [ %276, %block_400e33 ]

  %445 = inttoptr i64 %442 to double*

  %446 = load double, double* %445

  store double %446, double* %50, align 1, !tbaa !1268

  store double 0.000000e+00, double* %62, align 1, !tbaa !1268

  %447 = inttoptr i64 %441 to i64*

  %448 = load i64, i64* %447

  %449 = inttoptr i64 %448 to double*

  store double %446, double* %449

  %450 = inttoptr i64 %440 to i32*

  %451 = load i32, i32* %450

  %452 = add i32 %451, 1

  %453 = inttoptr i64 %440 to i32*

  store i32 %452, i32* %453

  %454 = add i64 %443, -174

  br label %block_400db2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4025d0_ddot_ur(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4025d0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %18 = load i64, i64* %15, align 8

  %19 = load i64, i64* %14, align 8, !tbaa !1240

  %20 = add i64 %19, -8

  %21 = inttoptr i64 %20 to i64*

  store i64 %18, i64* %21

  store i64 %20, i64* %14, align 8, !tbaa !1240

  store i64 %20, i64* %15, align 8, !tbaa !1240

  %22 = bitcast [32 x %union.VectorReg]* %16 to i8*

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %24 = bitcast [32 x %union.VectorReg]* %16 to i32*

  store i32 0, i32* %24, align 1, !tbaa !1270

  %25 = getelementptr inbounds i8, i8* %22, i64 4

  %26 = bitcast i8* %25 to i32*

  store i32 0, i32* %26, align 1, !tbaa !1270

  %27 = bitcast i64* %23 to i32*

  store i32 0, i32* %27, align 1, !tbaa !1270

  %28 = getelementptr inbounds i8, i8* %22, i64 12

  %29 = bitcast i8* %28 to i32*

  store i32 0, i32* %29, align 1, !tbaa !1270

  %30 = add i64 %19, -20

  %31 = load i32, i32* %7, align 4

  %32 = inttoptr i64 %30 to i32*

  store i32 %31, i32* %32

  %33 = add i64 %19, -32

  %34 = load i64, i64* %13, align 8

  %35 = inttoptr i64 %33 to i64*

  store i64 %34, i64* %35

  %36 = add i64 %19, -36

  %37 = load i32, i32* %5, align 4

  %38 = inttoptr i64 %36 to i32*

  store i32 %37, i32* %38

  %39 = add i64 %19, -48

  %40 = load i64, i64* %11, align 8

  %41 = inttoptr i64 %39 to i64*

  store i64 %40, i64* %41

  %42 = add i64 %19, -52

  %43 = load i32, i32* %9, align 4

  %44 = inttoptr i64 %42 to i32*

  store i32 %43, i32* %44

  %45 = add i64 %19, -64

  %46 = bitcast [32 x %union.VectorReg]* %16 to double*

  %47 = load double, double* %46, align 1

  %48 = inttoptr i64 %45 to double*

  store double %47, double* %48

  %49 = inttoptr i64 %30 to i32*

  %50 = load i32, i32* %49

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %51, align 1, !tbaa !1244

  %52 = and i32 %50, 255

  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9

  %54 = trunc i32 %53 to i8

  %55 = and i8 %54, 1

  %56 = xor i8 %55, 1

  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %56, i8* %57, align 1, !tbaa !1258

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %58, align 1, !tbaa !1262

  %59 = icmp eq i32 %50, 0

  %60 = zext i1 %59 to i8

  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %60, i8* %61, align 1, !tbaa !1259

  %62 = lshr i32 %50, 31

  %63 = trunc i32 %62 to i8

  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %63, i8* %64, align 1, !tbaa !1260

  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %65, align 1, !tbaa !1261

  %66 = xor i1 %59, true

  %67 = icmp eq i8 %63, 0

  %68 = and i1 %67, %66

  %69 = select i1 %68, i64 53, i64 40

  %70 = add i64 %69, %1

  br i1 %68, label %block_402605, label %block_4025f8



block_4026f6:                                     ; preds = %block_4026ea

  %71 = inttoptr i64 %95 to double*

  %72 = load double, double* %71

  %73 = inttoptr i64 %97 to i64*

  %74 = load i64, i64* %73

  %75 = sext i32 %211 to i64

  %76 = shl nsw i64 %75, 3

  %77 = add i64 %76, %74

  %78 = inttoptr i64 %77 to double*

  %79 = load double, double* %78

  %80 = inttoptr i64 %100 to i64*

  %81 = load i64, i64* %80

  store i64 %75, i64* %11, align 8, !tbaa !1240

  %82 = add i64 %76, %81

  %83 = inttoptr i64 %82 to double*

  %84 = load double, double* %83

  %85 = fmul double %79, %84

  store double %85, double* %98, align 1, !tbaa !1268

  store i64 0, i64* %99, align 1, !tbaa !1268

  %86 = fadd double %72, %85

  store double %86, double* %46, align 1, !tbaa !1268

  store i64 0, i64* %23, align 1, !tbaa !1268

  %87 = inttoptr i64 %95 to double*

  store double %86, double* %87

  %88 = inttoptr i64 %335 to i32*

  %89 = load i32, i32* %88

  %90 = add i32 %89, 1

  %91 = inttoptr i64 %335 to i32*

  store i32 %90, i32* %91

  %92 = add i64 %225, -12

  br label %block_4026ea



block_4026e3:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %93 = add i64 %334, 7

  %94 = inttoptr i64 %335 to i32*

  store i32 0, i32* %94

  %95 = add i64 %326, -56

  %96 = bitcast i64* %23 to double*

  %97 = add i64 %326, -24

  %98 = bitcast %union.VectorReg* %17 to double*

  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %100 = add i64 %326, -40

  br label %block_4026ea



block_402750:                                     ; preds = %block_40274a, %block_40275c

  %101 = phi i64 [ %399, %block_40274a ], [ %207, %block_40275c ]

  %102 = phi %struct.Memory* [ %395, %block_40274a ], [ %102, %block_40275c ]

  %103 = inttoptr i64 %335 to i32*

  %104 = load i32, i32* %103

  %105 = inttoptr i64 %393 to i32*

  %106 = load i32, i32* %105

  %107 = sub i32 %104, %106

  %108 = lshr i32 %107, 31

  %109 = trunc i32 %108 to i8

  %110 = lshr i32 %104, 31

  %111 = lshr i32 %106, 31

  %112 = xor i32 %111, %110

  %113 = xor i32 %108, %110

  %114 = add nuw nsw i32 %113, %112

  %115 = icmp eq i32 %114, 2

  %116 = icmp ne i8 %109, 0

  %117 = xor i1 %116, %115

  %118 = select i1 %117, i64 12, i64 226

  %119 = add i64 %101, %118

  %120 = inttoptr i64 %392 to double*

  %121 = load double, double* %120

  br i1 %117, label %block_40275c, label %block_402832



block_402660:                                     ; preds = %block_40266c, %block_402659

  %122 = phi i64 [ %230, %block_402659 ], [ %297, %block_40266c ]

  %123 = phi %struct.Memory* [ %228, %block_402659 ], [ %123, %block_40266c ]

  %124 = inttoptr i64 %229 to i32*

  %125 = load i32, i32* %124

  %126 = inttoptr i64 %232 to i32*

  %127 = load i32, i32* %126

  %128 = sub i32 %125, %127

  %129 = lshr i32 %128, 31

  %130 = trunc i32 %129 to i8

  %131 = lshr i32 %125, 31

  %132 = lshr i32 %127, 31

  %133 = xor i32 %132, %131

  %134 = xor i32 %129, %131

  %135 = add nuw nsw i32 %134, %133

  %136 = icmp eq i32 %135, 2

  %137 = icmp ne i8 %130, 0

  %138 = xor i1 %137, %136

  %139 = select i1 %138, i64 12, i64 84

  %140 = add i64 %122, %139

  %141 = inttoptr i64 %233 to double*

  %142 = load double, double* %141

  br i1 %138, label %block_40266c, label %block_4026b4



block_40275c:                                     ; preds = %block_402750

  %143 = inttoptr i64 %390 to i64*

  %144 = load i64, i64* %143

  %145 = sext i32 %104 to i64

  %146 = shl nsw i64 %145, 3

  %147 = add i64 %146, %144

  %148 = inttoptr i64 %147 to double*

  %149 = load double, double* %148

  %150 = inttoptr i64 %387 to i64*

  %151 = load i64, i64* %150

  %152 = add i64 %146, %151

  %153 = inttoptr i64 %152 to double*

  %154 = load double, double* %153

  %155 = fmul double %149, %154

  %156 = fadd double %121, %155

  %157 = add i32 %104, 1

  %158 = sext i32 %157 to i64

  %159 = shl nsw i64 %158, 3

  %160 = add i64 %144, %159

  %161 = inttoptr i64 %160 to double*

  %162 = load double, double* %161

  %163 = add i64 %151, %159

  %164 = inttoptr i64 %163 to double*

  %165 = load double, double* %164

  %166 = fmul double %162, %165

  %167 = fadd double %156, %166

  %168 = add i32 %104, 2

  %169 = sext i32 %168 to i64

  %170 = shl nsw i64 %169, 3

  %171 = add i64 %144, %170

  %172 = inttoptr i64 %171 to double*

  %173 = load double, double* %172

  %174 = add i64 %151, %170

  %175 = inttoptr i64 %174 to double*

  %176 = load double, double* %175

  %177 = fmul double %173, %176

  %178 = fadd double %167, %177

  %179 = add i32 %104, 3

  %180 = sext i32 %179 to i64

  %181 = shl nsw i64 %180, 3

  %182 = add i64 %144, %181

  %183 = inttoptr i64 %182 to double*

  %184 = load double, double* %183

  %185 = add i64 %151, %181

  %186 = inttoptr i64 %185 to double*

  %187 = load double, double* %186

  %188 = fmul double %184, %187

  %189 = fadd double %178, %188

  %190 = add i32 %104, 4

  %191 = zext i32 %190 to i64

  %192 = sext i32 %190 to i64

  %193 = shl nsw i64 %192, 3

  %194 = add i64 %144, %193

  %195 = inttoptr i64 %194 to double*

  %196 = load double, double* %195

  store double 0.000000e+00, double* %396, align 1, !tbaa !1268

  store i64 %191, i64* %12, align 8, !tbaa !1240

  store i64 %192, i64* %11, align 8, !tbaa !1240

  %197 = add i64 %151, %193

  %198 = inttoptr i64 %197 to double*

  %199 = load double, double* %198

  %200 = fmul double %196, %199

  store double %200, double* %389, align 1, !tbaa !1268

  store i64 0, i64* %388, align 1, !tbaa !1268

  %201 = fadd double %189, %200

  %202 = inttoptr i64 %392 to double*

  store double %201, double* %202

  %203 = inttoptr i64 %335 to i32*

  %204 = load i32, i32* %203

  %205 = add i32 %204, 5

  %206 = inttoptr i64 %335 to i32*

  store i32 %205, i32* %206

  %207 = add i64 %119, -12

  br label %block_402750



block_4026ea:                                     ; preds = %block_4026e3, %block_4026f6

  %208 = phi i64 [ %93, %block_4026e3 ], [ %92, %block_4026f6 ]

  %209 = phi %struct.Memory* [ %327, %block_4026e3 ], [ %209, %block_4026f6 ]

  %210 = inttoptr i64 %335 to i32*

  %211 = load i32, i32* %210

  %212 = inttoptr i64 %328 to i32*

  %213 = load i32, i32* %212

  %214 = sub i32 %211, %213

  %215 = lshr i32 %214, 31

  %216 = lshr i32 %211, 31

  %217 = lshr i32 %213, 31

  %218 = xor i32 %217, %216

  %219 = xor i32 %215, %216

  %220 = add nuw nsw i32 %219, %218

  %221 = icmp eq i32 %220, 2

  %222 = icmp ne i32 %215, 0

  %223 = xor i1 %222, %221

  %224 = select i1 %223, i64 12, i64 66

  %225 = add i64 %208, %224

  br i1 %223, label %block_4026f6, label %block_40272c



block_402659:                                     ; preds = %block_402640, %block_40264a

  %226 = phi i64 [ %368, %block_402640 ], [ %253, %block_40264a ]

  %227 = phi i64 [ %358, %block_402640 ], [ %250, %block_40264a ]

  %228 = phi %struct.Memory* [ %359, %block_402640 ], [ %359, %block_40264a ]

  %229 = add i64 %227, -60

  %230 = add i64 %226, 7

  %231 = inttoptr i64 %229 to i32*

  store i32 0, i32* %231

  %232 = add i64 %227, -12

  %233 = add i64 %227, -56

  %234 = bitcast i64* %23 to double*

  %235 = add i64 %227, -24

  %236 = add i64 %227, -64

  %237 = bitcast %union.VectorReg* %17 to double*

  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %239 = add i64 %227, -40

  %240 = add i64 %227, -68

  %241 = add i64 %227, -28

  %242 = add i64 %227, -44

  br label %block_402660



block_40264a:                                     ; preds = %block_402640

  %243 = add i64 %358, -12

  %244 = inttoptr i64 %243 to i32*

  %245 = load i32, i32* %244

  %246 = sub i32 1, %245

  %247 = sext i32 %246 to i64

  %248 = sext i32 %363 to i64

  %249 = mul nsw i64 %248, %247

  %250 = load i64, i64* %15, align 8

  %251 = add i64 %250, -68

  %252 = trunc i64 %249 to i32

  %253 = add i64 %368, 15

  %254 = inttoptr i64 %251 to i32*

  store i32 %252, i32* %254

  br label %block_402659



block_4025f8:                                     ; preds = %block_4025d0

  store i32 0, i32* %24, align 1, !tbaa !1270

  store i32 0, i32* %26, align 1, !tbaa !1270

  store i32 0, i32* %27, align 1, !tbaa !1270

  store i32 0, i32* %29, align 1, !tbaa !1270

  %255 = add i64 %19, -16

  %256 = load double, double* %46, align 1

  %257 = inttoptr i64 %255 to double*

  store double %256, double* %257

  %258 = bitcast i64* %23 to double*

  br label %block_40283c



block_40266c:                                     ; preds = %block_402660

  %259 = inttoptr i64 %235 to i64*

  %260 = load i64, i64* %259

  %261 = inttoptr i64 %236 to i32*

  %262 = load i32, i32* %261

  %263 = sext i32 %262 to i64

  %264 = shl nsw i64 %263, 3

  %265 = add i64 %264, %260

  %266 = inttoptr i64 %265 to double*

  %267 = load double, double* %266

  %268 = inttoptr i64 %239 to i64*

  %269 = load i64, i64* %268

  %270 = inttoptr i64 %240 to i32*

  %271 = load i32, i32* %270

  %272 = sext i32 %271 to i64

  store i64 %272, i64* %11, align 8, !tbaa !1240

  %273 = shl nsw i64 %272, 3

  %274 = add i64 %273, %269

  %275 = inttoptr i64 %274 to double*

  %276 = load double, double* %275

  %277 = fmul double %267, %276

  store double %277, double* %237, align 1, !tbaa !1268

  store i64 0, i64* %238, align 1, !tbaa !1268

  %278 = fadd double %142, %277

  %279 = inttoptr i64 %233 to double*

  store double %278, double* %279

  %280 = inttoptr i64 %236 to i32*

  %281 = load i32, i32* %280

  %282 = inttoptr i64 %241 to i32*

  %283 = load i32, i32* %282

  %284 = add i32 %283, %281

  %285 = inttoptr i64 %236 to i32*

  store i32 %284, i32* %285

  %286 = inttoptr i64 %240 to i32*

  %287 = load i32, i32* %286

  %288 = inttoptr i64 %242 to i32*

  %289 = load i32, i32* %288

  %290 = add i32 %289, %287

  %291 = zext i32 %290 to i64

  store i64 %291, i64* %12, align 8, !tbaa !1240

  %292 = inttoptr i64 %240 to i32*

  store i32 %290, i32* %292

  %293 = inttoptr i64 %229 to i32*

  %294 = load i32, i32* %293

  %295 = add i32 %294, 1

  %296 = inttoptr i64 %229 to i32*

  store i32 %295, i32* %296

  %297 = add i64 %140, -12

  br label %block_402660



block_4026c3:                                     ; preds = %block_40260f

  %298 = zext i32 %50 to i64

  %299 = add i64 %19, -84

  %300 = inttoptr i64 %299 to i32*

  store i32 5, i32* %300

  store i64 %298, i64* %10, align 8, !tbaa !1240

  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %302 = sext i32 %50 to i64

  %303 = lshr i64 %302, 32

  store i64 %303, i64* %301, align 8, !tbaa !1240

  %304 = inttoptr i64 %299 to i32*

  %305 = load i32, i32* %304

  %306 = zext i32 %305 to i64

  store i64 %306, i64* %11, align 8, !tbaa !1240

  %307 = add i64 %501, 19

  store i64 %307, i64* %3, align 8

  %308 = sext i32 %305 to i64

  %309 = shl nuw i64 %303, 32

  %310 = or i64 %309, %298

  %311 = sdiv i64 %310, %308

  %312 = shl i64 %311, 32

  %313 = ashr exact i64 %312, 32

  %314 = icmp eq i64 %311, %313

  br i1 %314, label %320, label %315



; <label>:315:                                    ; preds = %block_4026c3

  %316 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %307, %struct.Memory* %2) #12

  %317 = load i64, i64* %15, align 8

  %318 = load i32, i32* %5, align 4

  %319 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:320:                                    ; preds = %block_4026c3

  %321 = srem i64 %310, %308

  %322 = and i64 %321, 4294967295

  store i64 %322, i64* %12, align 8, !tbaa !1240

  %323 = trunc i64 %321 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %320, %315

  %324 = phi i64 [ %319, %315 ], [ %307, %320 ]

  %325 = phi i32 [ %318, %315 ], [ %323, %320 ]

  %326 = phi i64 [ %317, %315 ], [ %20, %320 ]

  %327 = phi %struct.Memory* [ %316, %315 ], [ %2, %320 ]

  %328 = add i64 %326, -72

  %329 = inttoptr i64 %328 to i32*

  store i32 %325, i32* %329

  %330 = inttoptr i64 %328 to i32*

  %331 = load i32, i32* %330

  %332 = icmp eq i32 %331, 0

  %333 = select i1 %332, i64 116, i64 13

  %334 = add i64 %324, %333

  %335 = add i64 %326, -60

  br i1 %332, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge, label %block_4026e3



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %336 = add i64 %326, -12

  %337 = add i64 %326, -56

  %338 = bitcast i64* %23 to double*

  %339 = add i64 %326, -24

  %340 = bitcast %union.VectorReg* %17 to double*

  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %342 = add i64 %326, -40

  br label %block_40274a



block_40283c:                                     ; preds = %block_402736, %block_402832, %block_4026b4, %block_4025f8

  %343 = phi double* [ %96, %block_402736 ], [ %391, %block_402832 ], [ %234, %block_4026b4 ], [ %258, %block_4025f8 ]

  %344 = phi i64 [ %326, %block_402736 ], [ %419, %block_402832 ], [ %227, %block_4026b4 ], [ %20, %block_4025f8 ]

  %345 = phi %struct.Memory* [ %209, %block_402736 ], [ %102, %block_402832 ], [ %123, %block_4026b4 ], [ %2, %block_4025f8 ]

  %346 = add i64 %344, -8

  %347 = inttoptr i64 %346 to double*

  %348 = load double, double* %347

  store double %348, double* %46, align 1, !tbaa !1268

  store double 0.000000e+00, double* %343, align 1, !tbaa !1268

  %349 = load i64, i64* %14, align 8, !tbaa !1240

  %350 = add i64 %349, 8

  %351 = inttoptr i64 %349 to i64*

  %352 = load i64, i64* %351

  store i64 %352, i64* %15, align 8, !tbaa !1240

  %353 = inttoptr i64 %350 to i64*

  %354 = load i64, i64* %353

  store i64 %354, i64* %3, align 8, !tbaa !1240

  %355 = add i64 %349, 16

  store i64 %355, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %345



block_402745:                                     ; preds = %block_40272c

  %356 = add i64 %463, 5

  br label %block_40274a



block_402640:                                     ; preds = %block_402619, %block_402631

  %357 = phi i64 [ %476, %block_402619 ], [ %433, %block_402631 ]

  %358 = phi i64 [ %20, %block_402619 ], [ %430, %block_402631 ]

  %359 = phi %struct.Memory* [ %2, %block_402619 ], [ %2, %block_402631 ]

  %360 = add i64 %358, -44

  %361 = add i64 %357, 4

  %362 = inttoptr i64 %360 to i32*

  %363 = load i32, i32* %362

  %364 = lshr i32 %363, 31

  %365 = trunc i32 %364 to i8

  %366 = icmp ne i8 %365, 0

  %367 = select i1 %366, i64 6, i64 21

  %368 = add i64 %361, %367

  br i1 %366, label %block_40264a, label %block_402659



block_4026b4:                                     ; preds = %block_402660

  %369 = zext i32 %125 to i64

  store i64 %369, i64* %10, align 8, !tbaa !1240

  store double 0.000000e+00, double* %234, align 1, !tbaa !1268

  %370 = icmp ult i32 %125, %127

  %371 = zext i1 %370 to i8

  %372 = and i32 %128, 255

  %373 = tail call i32 @llvm.ctpop.i32(i32 %372) #9

  %374 = trunc i32 %373 to i8

  %375 = and i8 %374, 1

  %376 = xor i8 %375, 1

  %377 = xor i32 %127, %125

  %378 = xor i32 %377, %128

  %379 = lshr i32 %378, 4

  %380 = trunc i32 %379 to i8

  %381 = and i8 %380, 1

  %382 = icmp eq i32 %128, 0

  %383 = zext i1 %382 to i8

  %384 = zext i1 %136 to i8

  store i8 %371, i8* %51, align 1, !tbaa !1244

  store i8 %376, i8* %57, align 1, !tbaa !1258

  store i8 %381, i8* %58, align 1, !tbaa !1262

  store i8 %383, i8* %61, align 1, !tbaa !1259

  store i8 %130, i8* %64, align 1, !tbaa !1260

  store i8 %384, i8* %65, align 1, !tbaa !1261

  store double %142, double* %46, align 1

  %385 = add i64 %227, -8

  %386 = inttoptr i64 %385 to double*

  store double %142, double* %386

  br label %block_40283c



block_40274a:                                     ; preds = %block_402745, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge

  %387 = phi i64 [ %342, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %100, %block_402745 ]

  %388 = phi i64* [ %341, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %99, %block_402745 ]

  %389 = phi double* [ %340, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %98, %block_402745 ]

  %390 = phi i64 [ %339, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %97, %block_402745 ]

  %391 = phi double* [ %338, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %96, %block_402745 ]

  %392 = phi i64 [ %337, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %95, %block_402745 ]

  %393 = phi i64 [ %336, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %436, %block_402745 ]

  %394 = phi i64 [ %334, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %356, %block_402745 ]

  %395 = phi %struct.Memory* [ %327, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40274a_crit_edge ], [ %209, %block_402745 ]

  %396 = bitcast i64* %388 to double*

  %397 = inttoptr i64 %328 to i32*

  %398 = load i32, i32* %397

  %399 = add i64 %394, 6

  %400 = inttoptr i64 %335 to i32*

  store i32 %398, i32* %400

  br label %block_402750



block_402832:                                     ; preds = %block_402750

  %401 = zext i32 %104 to i64

  store i64 %401, i64* %10, align 8, !tbaa !1240

  store double 0.000000e+00, double* %391, align 1, !tbaa !1268

  %402 = icmp ult i32 %104, %106

  %403 = zext i1 %402 to i8

  %404 = and i32 %107, 255

  %405 = tail call i32 @llvm.ctpop.i32(i32 %404) #9

  %406 = trunc i32 %405 to i8

  %407 = and i8 %406, 1

  %408 = xor i8 %407, 1

  %409 = xor i32 %106, %104

  %410 = xor i32 %409, %107

  %411 = lshr i32 %410, 4

  %412 = trunc i32 %411 to i8

  %413 = and i8 %412, 1

  %414 = icmp eq i32 %107, 0

  %415 = zext i1 %414 to i8

  %416 = zext i1 %115 to i8

  store i8 %403, i8* %51, align 1, !tbaa !1244

  store i8 %408, i8* %57, align 1, !tbaa !1258

  store i8 %413, i8* %58, align 1, !tbaa !1262

  store i8 %415, i8* %61, align 1, !tbaa !1259

  store i8 %109, i8* %64, align 1, !tbaa !1260

  store i8 %416, i8* %65, align 1, !tbaa !1261

  store double %121, double* %46, align 1

  %417 = add i64 %326, -8

  %418 = inttoptr i64 %417 to double*

  store double %121, double* %418

  %419 = load i64, i64* %15, align 8

  br label %block_40283c



block_402736:                                     ; preds = %block_40272c

  %420 = inttoptr i64 %95 to double*

  %421 = load double, double* %420

  store double %421, double* %46, align 1, !tbaa !1268

  store double 0.000000e+00, double* %96, align 1, !tbaa !1268

  %422 = add i64 %326, -8

  %423 = inttoptr i64 %422 to double*

  store double %421, double* %423

  br label %block_40283c



block_402631:                                     ; preds = %block_402619

  %424 = inttoptr i64 %30 to i32*

  %425 = load i32, i32* %424

  %426 = sub i32 1, %425

  %427 = sext i32 %426 to i64

  %428 = sext i32 %471 to i64

  %429 = mul nsw i64 %428, %427

  %430 = load i64, i64* %15, align 8

  %431 = add i64 %430, -64

  %432 = trunc i64 %429 to i32

  %433 = add i64 %476, 15

  %434 = inttoptr i64 %431 to i32*

  store i32 %432, i32* %434

  br label %block_402640



block_40272c:                                     ; preds = %block_4026ea

  %435 = zext i32 %211 to i64

  store i64 %435, i64* %10, align 8, !tbaa !1240

  %436 = add i64 %326, -12

  %437 = inttoptr i64 %436 to i32*

  %438 = load i32, i32* %437

  %439 = add i32 %438, -5

  %440 = icmp ult i32 %438, 5

  %441 = zext i1 %440 to i8

  store i8 %441, i8* %51, align 1, !tbaa !1244

  %442 = and i32 %439, 255

  %443 = tail call i32 @llvm.ctpop.i32(i32 %442) #9

  %444 = trunc i32 %443 to i8

  %445 = and i8 %444, 1

  %446 = xor i8 %445, 1

  store i8 %446, i8* %57, align 1, !tbaa !1258

  %447 = xor i32 %439, %438

  %448 = lshr i32 %447, 4

  %449 = trunc i32 %448 to i8

  %450 = and i8 %449, 1

  store i8 %450, i8* %58, align 1, !tbaa !1262

  %451 = icmp eq i32 %439, 0

  %452 = zext i1 %451 to i8

  store i8 %452, i8* %61, align 1, !tbaa !1259

  %453 = lshr i32 %439, 31

  %454 = trunc i32 %453 to i8

  store i8 %454, i8* %64, align 1, !tbaa !1260

  %455 = lshr i32 %438, 31

  %456 = xor i32 %453, %455

  %457 = add nuw nsw i32 %456, %455

  %458 = icmp eq i32 %457, 2

  %459 = zext i1 %458 to i8

  store i8 %459, i8* %65, align 1, !tbaa !1261

  %460 = icmp ne i8 %454, 0

  %461 = xor i1 %460, %458

  %462 = select i1 %461, i64 10, i64 25

  %463 = add i64 %225, %462

  br i1 %461, label %block_402736, label %block_402745



block_402619:                                     ; preds = %block_402605, %block_40260f

  %464 = phi i64 [ %507, %block_402605 ], [ %501, %block_40260f ]

  %465 = add i64 %19, -72

  %466 = inttoptr i64 %465 to i32*

  store i32 0, i32* %466

  %467 = add i64 %19, -76

  %468 = inttoptr i64 %467 to i32*

  store i32 0, i32* %468

  %469 = add i64 %464, 18

  %470 = inttoptr i64 %36 to i32*

  %471 = load i32, i32* %470

  %472 = lshr i32 %471, 31

  %473 = trunc i32 %472 to i8

  %474 = icmp ne i8 %473, 0

  %475 = select i1 %474, i64 6, i64 21

  %476 = add i64 %469, %475

  br i1 %474, label %block_402631, label %block_402640



block_40260f:                                     ; preds = %block_402605

  %477 = inttoptr i64 %42 to i32*

  %478 = load i32, i32* %477

  %479 = add i32 %478, -1

  %480 = icmp eq i32 %478, 0

  %481 = zext i1 %480 to i8

  store i8 %481, i8* %51, align 1, !tbaa !1244

  %482 = and i32 %479, 255

  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #9

  %484 = trunc i32 %483 to i8

  %485 = and i8 %484, 1

  %486 = xor i8 %485, 1

  store i8 %486, i8* %57, align 1, !tbaa !1258

  %487 = xor i32 %479, %478

  %488 = lshr i32 %487, 4

  %489 = trunc i32 %488 to i8

  %490 = and i8 %489, 1

  store i8 %490, i8* %58, align 1, !tbaa !1262

  %491 = icmp eq i32 %479, 0

  %492 = zext i1 %491 to i8

  store i8 %492, i8* %61, align 1, !tbaa !1259

  %493 = lshr i32 %479, 31

  %494 = trunc i32 %493 to i8

  store i8 %494, i8* %64, align 1, !tbaa !1260

  %495 = lshr i32 %478, 31

  %496 = xor i32 %493, %495

  %497 = add nuw nsw i32 %496, %495

  %498 = icmp eq i32 %497, 2

  %499 = zext i1 %498 to i8

  store i8 %499, i8* %65, align 1, !tbaa !1261

  %500 = select i1 %491, i64 180, i64 10

  %501 = add i64 %507, %500

  br i1 %491, label %block_4026c3, label %block_402619



block_402605:                                     ; preds = %block_4025d0

  %502 = inttoptr i64 %36 to i32*

  %503 = load i32, i32* %502

  %504 = add i32 %503, -1

  %505 = icmp eq i32 %504, 0

  %506 = select i1 %505, i64 10, i64 20

  %507 = add i64 %70, %506

  br i1 %505, label %block_40260f, label %block_402619

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400610_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400610:

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

  store i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64* %4, align 8, !tbaa !1240

  store i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64* %5, align 8, !tbaa !1240

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !1271

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1) to i32), i32 255)) #9

  %19 = trunc i32 %18 to i8

  %20 = and i8 %19, 1

  %21 = xor i8 %20, 1

  store i8 %21, i8* %13, align 1, !tbaa !1271

  store i8 0, i8* %14, align 1, !tbaa !1271

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !1271

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !1271

  store i8 0, i8* %17, align 1, !tbaa !1271

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0), label %block_400648, label %block_400633



block_400633:                                     ; preds = %block_400610

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1244

  store i8 1, i8* %13, align 1, !tbaa !1258

  store i8 1, i8* %15, align 1, !tbaa !1259

  store i8 0, i8* %16, align 1, !tbaa !1260

  store i8 0, i8* %17, align 1, !tbaa !1261

  store i8 0, i8* %14, align 1, !tbaa !1262

  br label %block_400648



block_400648:                                     ; preds = %block_400633, %block_400610

  %22 = inttoptr i64 %10 to i64*

  %23 = load i64, i64* %22

  store i64 %23, i64* %7, align 8, !tbaa !1240

  %24 = inttoptr i64 %9 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %9, 8

  store i64 %26, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_4005a0__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195744, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4005a0__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195744, %struct.Memory* null)

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

define i64 @callback_sub_400680_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195968, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400680_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4195968, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400650___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195920, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400650___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4195920, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4028c0___libc_csu_fini() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4204736, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_4028c0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4204736, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_402850___libc_csu_init() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4204624, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_402850___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4204624, %struct.Memory* null)

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

  store i64 4195984, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_400690_main(%struct.State* nonnull @__mcsema_reg_state, i64 4195984, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %11

}



; Function Attrs: noinline nounwind

define %struct.Memory* @__mcsema_detach_call_value(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

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

define %struct.Memory* @ext_6030a0___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_603088_clock(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = inttoptr i64 %7 to i64*

  %9 = load i64, i64* %8

  store i64 %9, i64* %4, align 8

  %10 = add i64 %7, 8

  store i64 %10, i64* %6, align 8

  %11 = tail call i64 @clock()

  store i64 %11, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603090_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_603098_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %9 = load i64, i64* %7, align 8

  %10 = load i64, i64* %6, align 8

  %11 = load i64, i64* %8, align 8

  %12 = inttoptr i64 %11 to i64*

  %13 = load i64, i64* %12

  store i64 %13, i64* %4, align 8

  %14 = add i64 %11, 8

  store i64 %14, i64* %8, align 8

  %15 = tail call i64 @gettimeofday(i64 %9, i64 %10)

  store i64 %15, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603080_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_603078_getenv(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %13 = tail call i64 @getenv(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6030a8_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_400590_atoi(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  store i64 4204740, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4028c4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4204740, %struct.Memory* null)

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

  store i64 4195592, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400508__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195592, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #9 {

  %1 = tail call i64 @callback_sub_4028c0___libc_csu_fini()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_constructor() #9 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_402850___libc_csu_init()

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

attributes #3 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

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

!1259 = !{!1245, !1242, i64 2071}

!1260 = !{!1245, !1242, i64 2073}

!1261 = !{!1245, !1242, i64 2077}

!1262 = !{!1245, !1242, i64 2069}

!1263 = !{!1264}

!1264 = distinct !{!1264, !1265, !"ext_6030a0___libc_start_main: argument 0"}

!1265 = distinct !{!1265, !"ext_6030a0___libc_start_main"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_6030a0___libc_start_main: argument 1"}

!1268 = !{!1269, !1269, i64 0}

!1269 = !{!"double", !1242, i64 0}

!1270 = !{!1257, !1257, i64 0}

!1271 = !{!1242, !1242, i64 0}

!1272 = !{!1273}

!1273 = distinct !{!1273, !1274, !"ext_603088_clock: argument 0"}

!1274 = distinct !{!1274, !"ext_603088_clock"}

!1275 = !{!1276}

!1276 = distinct !{!1276, !1274, !"ext_603088_clock: argument 1"}

!1277 = !{!1278, !1278, i64 0}

!1278 = !{!"float", !1242, i64 0}

!1279 = !{!1280}

!1280 = distinct !{!1280, !1281, !"ext_603090_printf: argument 0"}

!1281 = distinct !{!1281, !"ext_603090_printf"}

!1282 = !{!1283}

!1283 = distinct !{!1283, !1281, !"ext_603090_printf: argument 1"}

!1284 = !{!1285}

!1285 = distinct !{!1285, !1286, !"ext_603078_getenv: argument 0"}

!1286 = distinct !{!1286, !"ext_603078_getenv"}

!1287 = !{!1288}

!1288 = distinct !{!1288, !1286, !"ext_603078_getenv: argument 1"}

!1289 = !{!1290}

!1290 = distinct !{!1290, !1291, !"ext_603098_gettimeofday: argument 0"}

!1291 = distinct !{!1291, !"ext_603098_gettimeofday"}

!1292 = !{!1293}

!1293 = distinct !{!1293, !1291, !"ext_603098_gettimeofday: argument 1"}

!1294 = !{!1295}

!1295 = distinct !{!1295, !1296, !"ext_603080_free: argument 0"}

!1296 = distinct !{!1296, !"ext_603080_free"}

!1297 = !{!1298}

!1298 = distinct !{!1298, !1296, !"ext_603080_free: argument 1"}

!1299 = !{!1300}

!1300 = distinct !{!1300, !1301, !"ext_603090_printf: argument 0"}

!1301 = distinct !{!1301, !"ext_603090_printf"}

!1302 = !{!1303}

!1303 = distinct !{!1303, !1301, !"ext_603090_printf: argument 1"}

!1304 = !{!1305}

!1305 = distinct !{!1305, !1306, !"ext_6030a8_malloc: argument 0"}

!1306 = distinct !{!1306, !"ext_6030a8_malloc"}

!1307 = !{!1308}

!1308 = distinct !{!1308, !1306, !"ext_6030a8_malloc: argument 1"}

!1309 = !{!1310}

!1310 = distinct !{!1310, !1311, !"ext_603090_printf: argument 0"}

!1311 = distinct !{!1311, !"ext_603090_printf"}

!1312 = !{!1313}

!1313 = distinct !{!1313, !1311, !"ext_603090_printf: argument 1"}

!1314 = !{!1315}

!1315 = distinct !{!1315, !1316, !"ext_400590_atoi: argument 0"}

!1316 = distinct !{!1316, !"ext_400590_atoi"}

!1317 = !{!1318}

!1318 = distinct !{!1318, !1316, !"ext_400590_atoi: argument 1"}

!1319 = !{!1320}

!1320 = distinct !{!1320, !1321, !"ext_603090_printf: argument 0"}

!1321 = distinct !{!1321, !"ext_603090_printf"}

!1322 = !{!1323}

!1323 = distinct !{!1323, !1321, !"ext_603090_printf: argument 1"}

!1324 = !{!1325}

!1325 = distinct !{!1325, !1326, !"ext_603090_printf: argument 0"}

!1326 = distinct !{!1326, !"ext_603090_printf"}

!1327 = !{!1328}

!1328 = distinct !{!1328, !1326, !"ext_603090_printf: argument 1"}

!1329 = !{!1330}

!1330 = distinct !{!1330, !1331, !"ext_603090_printf: argument 0"}

!1331 = distinct !{!1331, !"ext_603090_printf"}

!1332 = !{!1333}

!1333 = distinct !{!1333, !1331, !"ext_603090_printf: argument 1"}

!1334 = !{!1335}

!1335 = distinct !{!1335, !1336, !"ext_603090_printf: argument 0"}

!1336 = distinct !{!1336, !"ext_603090_printf"}

!1337 = !{!1338}

!1338 = distinct !{!1338, !1336, !"ext_603090_printf: argument 1"}

!1339 = !{!1340}

!1340 = distinct !{!1340, !1341, !"ext_603090_printf: argument 0"}

!1341 = distinct !{!1341, !"ext_603090_printf"}

!1342 = !{!1343}

!1343 = distinct !{!1343, !1341, !"ext_603090_printf: argument 1"}

!1344 = !{!1345}

!1345 = distinct !{!1345, !1346, !"ext_603090_printf: argument 0"}

!1346 = distinct !{!1346, !"ext_603090_printf"}

!1347 = !{!1348}

!1348 = distinct !{!1348, !1346, !"ext_603090_printf: argument 1"}

!1349 = !{!1350}

!1350 = distinct !{!1350, !1351, !"ext_603098_gettimeofday: argument 0"}

!1351 = distinct !{!1351, !"ext_603098_gettimeofday"}

!1352 = !{!1353}

!1353 = distinct !{!1353, !1351, !"ext_603098_gettimeofday: argument 1"}

!1354 = !{!1355}

!1355 = distinct !{!1355, !1356, !"ext_603090_printf: argument 0"}

!1356 = distinct !{!1356, !"ext_603090_printf"}

!1357 = !{!1358}

!1358 = distinct !{!1358, !1356, !"ext_603090_printf: argument 1"}

!1359 = !{!1360}

!1360 = distinct !{!1360, !1361, !"ext_603090_printf: argument 0"}

!1361 = distinct !{!1361, !"ext_603090_printf"}

!1362 = !{!1363}

!1363 = distinct !{!1363, !1361, !"ext_603090_printf: argument 1"}

!1364 = !{!1365}

!1365 = distinct !{!1365, !1366, !"ext_603090_printf: argument 0"}

!1366 = distinct !{!1366, !"ext_603090_printf"}

!1367 = !{!1368}

!1368 = distinct !{!1368, !1366, !"ext_603090_printf: argument 1"}

!1369 = !{!1370}

!1370 = distinct !{!1370, !1371, !"ext_603078_getenv: argument 0"}

!1371 = distinct !{!1371, !"ext_603078_getenv"}

!1372 = !{!1373}

!1373 = distinct !{!1373, !1371, !"ext_603078_getenv: argument 1"}

