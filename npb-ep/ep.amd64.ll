; ModuleID = 'ep.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_401f30__rodata_type = type <{ [4 x i8], [27 x i8], [46 x i8], [38 x i8], [44 x i8], [37 x i8], [39 x i8], [39 x i8], [25 x i8], [45 x i8], [45 x i8], [45 x i8], [37 x i8], [37 x i8], [20 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [64 x i8], [39 x i8], [34 x i8], [21 x i8], [46 x i8], [104 x i8], [11 x i8], [2 x i8], [8 x i8], [58 x i8], [44 x i8], [23 x i8], [25 x i8], [19 x i8], [11 x i8], [30 x i8], [26 x i8], [10 x i8], [12 x i8], [3 x i8], [25 x i8], [6 x i8], [12 x i8], [4 x i8], [6 x i8], [4 x i8], [12 x i8], [29 x i8], [7 x i8], [34 x i8], [33 x i8], [33 x i8], [28 x i8], [37 x i8], [34 x i8], [37 x i8], [42 x i8], [40 x i8], [37 x i8], [37 x i8], [13 x i8], [19 x i8], [23 x i8], [23 x i8], [239 x i8] }>

%seg_602e00__init_array_type = type <{ i64, i64 }>

%seg_602ff0__got_type = type <{ i64, i64 }>

%seg_603000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

%dum_type = type <{ [24 x i8] }>

%sy_verify_value_type = type <{ [8 x i8] }>

%sx_err_type = type <{ [8 x i8] }>

%sy_err_type = type <{ [8 x i8] }>

%verified_type = type <{ [4 x i8] }>

%timers_enabled_type = type <{ [4 x i8], [4 x i8] }>

%__bss_start_type = type <{ [4 x i8] }>

%seg_6030b0__bss_type = type <{ [16 x i8], [512 x i8], [512 x i8] }>

%zero_type = type <{ [16 x i8], [80 x i8] }>

%size_type = type <{ [16 x i8] }>

%x_type = type <{ [8 x i8] }>

%pad_type = type <{ [8 x i8] }>

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

@seg_401f30__rodata = internal constant %seg_401f30__rodata_type <{ [4 x i8] c"\01\00\02\00", [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", [46 x i8] c" Class           =                        %c\0A\00", [38 x i8] c" Size            =             %12ld\0A\00", [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", [37 x i8] c" Iterations      =             %12d\0A\00", [39 x i8] c" Time in seconds =             %12.2f\0A\00", [39 x i8] c" Mop/s total     =             %12.2f\0A\00", [25 x i8] c" Operation type  = %24s\0A\00", [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", [37 x i8] c" Version         =             %12s\0A\00", [37 x i8] c" Compile date    =             %12s\0A\00", [20 x i8] c"\0A Compile options:\0A\00", [23 x i8] c"    CLINK        = %s\0A\00", [23 x i8] c"    C_LIB        = %s\0A\00", [23 x i8] c"    C_INC        = %s\0A\00", [23 x i8] c"    CFLAGS       = %s\0A\00", [64 x i8] c"    CLINKFLAGS   = %s\0A\00\0A--------------------------------------\0A\00", [39 x i8] c" Please send all errors/feedbacks to:\0A\00", [34 x i8] c" Center for Manycore Programming\0A\00", [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", [46 x i8] c" http://aces.snu.ac.kr\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00@", [104 x i8] c"\00\00\00\00\00\009@\00\00@\E5\9C0\D2A\00\00\00\D7\C43\B0A\E0\F2I6h.\BB\C0\7F\F1\82W\AB_\A9\C0:\8C0\E2\8EyE>\00\00\00\00\80\84.A\00\00\00\00\00\00Y@\00\00\00\00\00\00\00\C0.\9F\87\A2\AEB}\D4\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [11 x i8] c"timer.flag\00", [2 x i8] c"r\00", [8 x i8] c"%15.0lf\00", [58 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark\0A\00", [44 x i8] c"\0A Number of random numbers generated: %15s\0A\00", [23 x i8] c"sx: %f, should be: %f\0A\00", [25 x i8] c"\0AEP Benchmark Results:\0A\0A\00", [19 x i8] c"CPU Time =%10.4lf\0A\00", [11 x i8] c"N = 2^%5d\0A\00", [30 x i8] c"No. Gaussian Pairs = %15.0lf\0A\00", [26 x i8] c"Sums = %25.15lE %25.15lE\0A\00", [10 x i8] c"Counts: \0A\00", [12 x i8] c"%3d%15.0lf\0A\00", [3 x i8] c"EP\00", [25 x i8] c"Random numbers generated\00", [6 x i8] c"3.3.1\00", [12 x i8] c"03 Nov 2017\00", [4 x i8] c"gcc\00", [6 x i8] c"$(CC)\00", [4 x i8] c"-lm\00", [12 x i8] c"-I../common\00", [29 x i8] c"-g -Wall -O3 -mcmodel=medium\00", [7 x i8] c"randdp\00", [34 x i8] c"\0ATotal time:     %9.3lf (%6.2lf)\0A\00", [33 x i8] c"Gaussian pairs: %9.3lf (%6.2lf)\0A\00", [33 x i8] c"Random numbers: %9.3lf (%6.2lf)\0A\00", [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", [37 x i8] c" Class           =             %12c\0A\00", [34 x i8] c" Size            =          %15s\0A\00", [37 x i8] c" Size            =             %12d\0A\00", [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", [40 x i8] c" Time in seconds =             %12.2lf\0A\00", [37 x i8] c" Mop/s total     =          %15.2lf\0A\00", [37 x i8] c" Verification    =             %12s\0A\00", [13 x i8] c"UNSUCCESSFUL\00", [19 x i8] c"\0A Compile options:\0A", [23 x i8] c"    CC           = %s\0A\00", [23 x i8] c"    RAND         = %s\0A\00", [239 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00\00\00\00\00\00\00\00\00\00\00\10=\00\00\00\00\00\00\D0B\00\00\00\00\00\00`A\00\00\00\00\00\00\80>\8D\ED\B5\A0\F7\C6\B0>" }>

@seg_602e00__init_array = internal global %seg_602e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400730_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400700___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c"\10.`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSpow to i64), i64 ptrtoint (i64 (i64)* @SSSSSlog to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSsprintf to i64), i64 ptrtoint (double (double)* @sqrt to i64) }>
@dum = global %dum_type <{ [24 x i8] c"\00\00\00\00\00\00\F0?\00\00\00\00\00\00\F0?\00\00\00\00\00\00\F0?" }>

@sy_verify_value = global %sy_verify_value_type <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>

@sx_err = global %sx_err_type <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>

@sy_err = global %sy_err_type <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>

@verified = global %verified_type <{ [4 x i8] c"\01\00\00\00" }>

@timers_enabled = global %timers_enabled_type <{ [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\FF\FF\FF" }>

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer

@seg_6030b0__bss = internal global %seg_6030b0__bss_type zeroinitializer

@zero = global %zero_type zeroinitializer

@size = global %size_type zeroinitializer

@x = global %x_type zeroinitializer

@pad = global %pad_type zeroinitializer

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



; Function Attrs: nounwind readnone speculatable

declare double @llvm.fabs.f64(double) #0



; Function Attrs: nounwind readnone speculatable

declare double @llvm.trunc.f64(double) #0



; Function Attrs: nounwind readnone

declare double @sqrt(double) local_unnamed_addr #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSlog(i64) #3
declare i64 @log(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfopen(i64, i64) #3
declare i64 @fopen(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #3
declare i64 @malloc(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfclose(i64) #3
declare i64 @fclose(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #3
declare i64 @gettimeofday(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSsprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSpow(i64, i64) #3
declare i64 @pow(i64, i64) #3


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400680__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_400680:

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

define %struct.Memory* @sub_400740_c_print_results(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400740:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %5 = bitcast %union.anon* %4 to i8*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %11 = bitcast %union.anon* %10 to i32*

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0

  %13 = bitcast %union.anon* %12 to i32*

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %27 = load i64, i64* %18, align 8

  %28 = load i64, i64* %17, align 8, !tbaa !1240

  %29 = add i64 %28, -8

  %30 = inttoptr i64 %29 to i64*

  store i64 %27, i64* %30

  store i64 %29, i64* %18, align 8, !tbaa !1240

  %31 = load i64, i64* %24, align 8

  %32 = add i64 %28, -16

  %33 = inttoptr i64 %32 to i64*

  store i64 %31, i64* %33

  %34 = load i64, i64* %23, align 8

  %35 = add i64 %28, -24

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = load i64, i64* %22, align 8

  %38 = add i64 %28, -32

  %39 = inttoptr i64 %38 to i64*

  store i64 %37, i64* %39

  %40 = load i64, i64* %21, align 8

  %41 = add i64 %28, -40

  %42 = inttoptr i64 %41 to i64*

  store i64 %40, i64* %42

  %43 = load i64, i64* %14, align 8

  %44 = add i64 %28, -48

  %45 = inttoptr i64 %44 to i64*

  store i64 %43, i64* %45

  %46 = add i64 %28, -312

  store i64 %46, i64* %17, align 8, !tbaa !1240

  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %53 = load i8, i8* %5, align 1

  %54 = add i64 %28, 80

  %55 = inttoptr i64 %54 to i64*

  %56 = load i64, i64* %55

  store i64 %56, i64* %19, align 8, !tbaa !1240

  %57 = add i64 %28, 72

  %58 = inttoptr i64 %57 to i64*

  %59 = load i64, i64* %58

  store i64 %59, i64* %20, align 8, !tbaa !1240

  %60 = add i64 %28, 64

  %61 = inttoptr i64 %60 to i64*

  %62 = load i64, i64* %61

  store i64 %62, i64* %14, align 8, !tbaa !1240

  %63 = add i64 %28, 56

  %64 = inttoptr i64 %63 to i64*

  %65 = load i64, i64* %64

  store i64 %65, i64* %23, align 8, !tbaa !1240

  %66 = add i64 %28, 48

  %67 = inttoptr i64 %66 to i64*

  %68 = load i64, i64* %67

  store i64 %68, i64* %24, align 8, !tbaa !1240

  %69 = add i64 %28, 40

  %70 = inttoptr i64 %69 to i64*

  %71 = load i64, i64* %70

  store i64 %71, i64* %21, align 8, !tbaa !1240

  %72 = load i64, i64* %18, align 8

  %73 = add i64 %72, 40

  %74 = inttoptr i64 %73 to i64*

  %75 = load i64, i64* %74

  store i64 %75, i64* %22, align 8, !tbaa !1240

  %76 = add i64 %72, 32

  %77 = inttoptr i64 %76 to i64*

  %78 = load i64, i64* %77

  %79 = add i64 %72, -97

  %80 = inttoptr i64 %79 to i8*

  store i8 %53, i8* %80

  %81 = add i64 %72, 24

  %82 = inttoptr i64 %81 to i32*

  %83 = load i32, i32* %82

  %84 = add i64 %72, -112

  %85 = inttoptr i64 %84 to i64*

  store i64 %78, i64* %85

  %86 = add i64 %72, 16

  %87 = inttoptr i64 %86 to i64*

  %88 = load i64, i64* %87

  %89 = add i64 %72, -120

  %90 = inttoptr i64 %89 to i64*

  store i64 %88, i64* %90

  %91 = add i64 %72, -48

  %92 = load i64, i64* %16, align 8

  %93 = inttoptr i64 %91 to i64*

  store i64 %92, i64* %93

  %94 = inttoptr i64 %79 to i8*

  %95 = load i8, i8* %94

  %96 = add i64 %72, -49

  %97 = inttoptr i64 %96 to i8*

  store i8 %95, i8* %97

  %98 = add i64 %72, -56

  %99 = load i32, i32* %9, align 4

  %100 = inttoptr i64 %98 to i32*

  store i32 %99, i32* %100

  %101 = add i64 %72, -60

  %102 = load i32, i32* %7, align 4

  %103 = inttoptr i64 %101 to i32*

  store i32 %102, i32* %103

  %104 = add i64 %72, -64

  %105 = load i32, i32* %11, align 4

  %106 = inttoptr i64 %104 to i32*

  store i32 %105, i32* %106

  %107 = add i64 %72, -68

  %108 = load i32, i32* %13, align 4

  %109 = inttoptr i64 %107 to i32*

  store i32 %108, i32* %109

  %110 = add i64 %72, -80

  %111 = bitcast [32 x %union.VectorReg]* %25 to double*

  %112 = load double, double* %111, align 1

  %113 = inttoptr i64 %110 to double*

  store double %112, double* %113

  %114 = add i64 %72, -88

  %115 = bitcast %union.VectorReg* %26 to double*

  %116 = load double, double* %115, align 1

  %117 = inttoptr i64 %114 to double*

  store double %116, double* %117

  %118 = inttoptr i64 %91 to i64*

  %119 = load i64, i64* %118

  %120 = add i64 %72, -128

  %121 = inttoptr i64 %120 to i64*

  store i64 %119, i64* %121

  %122 = inttoptr i64 %120 to i64*

  %123 = load i64, i64* %122

  %124 = add i64 %72, -132

  %125 = inttoptr i64 %124 to i32*

  store i32 %83, i32* %125

  %126 = add i64 %72, -144

  %127 = load i64, i64* %20, align 8

  %128 = inttoptr i64 %126 to i64*

  store i64 %127, i64* %128

  %129 = add i64 %72, -152

  %130 = load i64, i64* %14, align 8

  %131 = inttoptr i64 %129 to i64*

  store i64 %130, i64* %131

  %132 = add i64 %72, -160

  %133 = load i64, i64* %23, align 8

  %134 = inttoptr i64 %132 to i64*

  store i64 %133, i64* %134

  %135 = load i64, i64* %18, align 8

  %136 = add i64 %135, -168

  %137 = load i64, i64* %24, align 8

  %138 = inttoptr i64 %136 to i64*

  store i64 %137, i64* %138

  %139 = add i64 %135, -176

  %140 = load i64, i64* %21, align 8

  %141 = inttoptr i64 %139 to i64*

  store i64 %140, i64* %141

  %142 = add i64 %135, -184

  %143 = load i64, i64* %22, align 8

  %144 = inttoptr i64 %142 to i64*

  store i64 %143, i64* %144

  %145 = add i64 %135, -192

  %146 = load i64, i64* %19, align 8

  %147 = inttoptr i64 %145 to i64*

  store i64 %146, i64* %147

  %148 = add i64 %1, 196

  %149 = load i64, i64* %17, align 8, !tbaa !1240

  %150 = add i64 %149, -8

  %151 = inttoptr i64 %150 to i64*

  store i64 %148, i64* %151

  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %158 = load i64, i64* %154, align 8, !alias.scope !1244, !noalias !1247

  %159 = load i64, i64* %153, align 8, !alias.scope !1244, !noalias !1247

  %160 = load i64, i64* %156, align 8, !alias.scope !1244, !noalias !1247

  %161 = load i64, i64* %157, align 8, !alias.scope !1244, !noalias !1247

  %162 = inttoptr i64 %149 to i64*

  %163 = load i64, i64* %162

  %164 = add i64 %149, 8

  %165 = inttoptr i64 %164 to i64*

  %166 = load i64, i64* %165

  %167 = add i64 %149, 16

  %168 = inttoptr i64 %167 to i64*

  %169 = load i64, i64* %168

  %170 = add i64 %149, 24

  %171 = inttoptr i64 %170 to i64*

  %172 = load i64, i64* %171

  %173 = add i64 %149, 32

  %174 = inttoptr i64 %173 to i64*

  %175 = load i64, i64* %174

  %176 = add i64 %149, 40

  %177 = inttoptr i64 %176 to i64*

  %178 = load i64, i64* %177

  %179 = add i64 %149, 48

  %180 = inttoptr i64 %179 to i64*

  %181 = load i64, i64* %180

  %182 = add i64 %149, 56

  %183 = inttoptr i64 %182 to i64*

  %184 = load i64, i64* %183

  %185 = add i64 %149, 64

  %186 = inttoptr i64 %185 to i64*

  %187 = load i64, i64* %186

  %188 = add i64 %149, 72

  %189 = inttoptr i64 %188 to i64*

  %190 = load i64, i64* %189

  %191 = inttoptr i64 %150 to i64*

  %192 = load i64, i64* %191

  store i64 %192, i64* %3, align 8, !alias.scope !1244, !noalias !1247

  store i64 %149, i64* %17, align 8, !alias.scope !1244, !noalias !1247

  %193 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 4), i64 %123, i64 %158, i64 %159, i64 %160, i64 %161, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175, i64 %178, i64 %181, i64 %184, i64 %187, i64 %190), !noalias !1244

  %194 = load i64, i64* %3, align 8

  %195 = load i64, i64* %18, align 8

  %196 = add i64 %195, -49

  %197 = inttoptr i64 %196 to i8*

  %198 = load i8, i8* %197

  %199 = sext i8 %198 to i64

  %200 = and i64 %199, 4294967295

  %201 = add i64 %195, -196

  %202 = trunc i64 %193 to i32

  %203 = inttoptr i64 %201 to i32*

  store i32 %202, i32* %203

  %204 = add i64 %194, 27

  %205 = load i64, i64* %17, align 8, !tbaa !1240

  %206 = add i64 %205, -8

  %207 = inttoptr i64 %206 to i64*

  store i64 %204, i64* %207

  %208 = load i64, i64* %154, align 8, !alias.scope !1249, !noalias !1252

  %209 = load i64, i64* %153, align 8, !alias.scope !1249, !noalias !1252

  %210 = load i64, i64* %156, align 8, !alias.scope !1249, !noalias !1252

  %211 = load i64, i64* %157, align 8, !alias.scope !1249, !noalias !1252

  %212 = inttoptr i64 %205 to i64*

  %213 = load i64, i64* %212

  %214 = add i64 %205, 8

  %215 = inttoptr i64 %214 to i64*

  %216 = load i64, i64* %215

  %217 = add i64 %205, 16

  %218 = inttoptr i64 %217 to i64*

  %219 = load i64, i64* %218

  %220 = add i64 %205, 24

  %221 = inttoptr i64 %220 to i64*

  %222 = load i64, i64* %221

  %223 = add i64 %205, 32

  %224 = inttoptr i64 %223 to i64*

  %225 = load i64, i64* %224

  %226 = add i64 %205, 40

  %227 = inttoptr i64 %226 to i64*

  %228 = load i64, i64* %227

  %229 = add i64 %205, 48

  %230 = inttoptr i64 %229 to i64*

  %231 = load i64, i64* %230

  %232 = add i64 %205, 56

  %233 = inttoptr i64 %232 to i64*

  %234 = load i64, i64* %233

  %235 = add i64 %205, 64

  %236 = inttoptr i64 %235 to i64*

  %237 = load i64, i64* %236

  %238 = add i64 %205, 72

  %239 = inttoptr i64 %238 to i64*

  %240 = load i64, i64* %239

  %241 = inttoptr i64 %206 to i64*

  %242 = load i64, i64* %241

  store i64 %242, i64* %3, align 8, !alias.scope !1249, !noalias !1252

  store i64 %205, i64* %17, align 8, !alias.scope !1249, !noalias !1252

  %243 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 31), i64 %200, i64 %208, i64 %209, i64 %210, i64 %211, i64 %213, i64 %216, i64 %219, i64 %222, i64 %225, i64 %228, i64 %231, i64 %234, i64 %237, i64 %240), !noalias !1249

  %244 = load i64, i64* %18, align 8

  %245 = add i64 %244, -64

  %246 = load i64, i64* %3, align 8

  %247 = inttoptr i64 %245 to i32*

  %248 = load i32, i32* %247

  %249 = icmp eq i32 %248, 0

  %250 = add i64 %244, -200

  %251 = trunc i64 %243 to i32

  %252 = inttoptr i64 %250 to i32*

  store i32 %251, i32* %252

  %253 = select i1 %249, i64 16, i64 79

  %254 = add i64 %246, %253

  br i1 %249, label %block_40082f, label %block_40086e



block_40082f:                                     ; preds = %block_400740

  %255 = add i64 %244, -56

  %256 = inttoptr i64 %255 to i32*

  %257 = load i32, i32* %256

  %258 = sext i32 %257 to i64

  %259 = add i64 %244, -96

  %260 = inttoptr i64 %259 to i64*

  store i64 %258, i64* %260

  %261 = add i64 %244, -60

  %262 = inttoptr i64 %261 to i32*

  %263 = load i32, i32* %262

  %264 = icmp eq i32 %263, 0

  %265 = select i1 %264, i64 31, i64 18

  %266 = add i64 %254, %265

  br i1 %264, label %block_40084e, label %block_400841



block_40092b:                                     ; preds = %block_400921

  %267 = add i64 %472, 17

  %268 = load i64, i64* %17, align 8, !tbaa !1240

  %269 = add i64 %268, -8

  %270 = inttoptr i64 %269 to i64*

  store i64 %267, i64* %270

  %271 = load i64, i64* %155, align 8, !alias.scope !1254, !noalias !1257

  %272 = load i64, i64* %154, align 8, !alias.scope !1254, !noalias !1257

  %273 = load i64, i64* %153, align 8, !alias.scope !1254, !noalias !1257

  %274 = load i64, i64* %156, align 8, !alias.scope !1254, !noalias !1257

  %275 = load i64, i64* %157, align 8, !alias.scope !1254, !noalias !1257

  %276 = inttoptr i64 %268 to i64*

  %277 = load i64, i64* %276

  %278 = add i64 %268, 8

  %279 = inttoptr i64 %278 to i64*

  %280 = load i64, i64* %279

  %281 = add i64 %268, 16

  %282 = inttoptr i64 %281 to i64*

  %283 = load i64, i64* %282

  %284 = add i64 %268, 24

  %285 = inttoptr i64 %284 to i64*

  %286 = load i64, i64* %285

  %287 = add i64 %268, 32

  %288 = inttoptr i64 %287 to i64*

  %289 = load i64, i64* %288

  %290 = add i64 %268, 40

  %291 = inttoptr i64 %290 to i64*

  %292 = load i64, i64* %291

  %293 = add i64 %268, 48

  %294 = inttoptr i64 %293 to i64*

  %295 = load i64, i64* %294

  %296 = add i64 %268, 56

  %297 = inttoptr i64 %296 to i64*

  %298 = load i64, i64* %297

  %299 = add i64 %268, 64

  %300 = inttoptr i64 %299 to i64*

  %301 = load i64, i64* %300

  %302 = add i64 %268, 72

  %303 = inttoptr i64 %302 to i64*

  %304 = load i64, i64* %303

  %305 = inttoptr i64 %269 to i64*

  %306 = load i64, i64* %305

  store i64 %306, i64* %3, align 8, !alias.scope !1254, !noalias !1257

  store i64 %268, i64* %17, align 8, !alias.scope !1254, !noalias !1257

  %307 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 344), i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %277, i64 %280, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304), !noalias !1254

  %308 = load i64, i64* %18, align 8

  %309 = add i64 %308, -232

  %310 = trunc i64 %307 to i32

  %311 = load i64, i64* %3, align 8

  %312 = inttoptr i64 %309 to i32*

  store i32 %310, i32* %312

  %313 = add i64 %311, 34

  br label %block_400963



block_40084e:                                     ; preds = %block_400841, %block_40082f

  %314 = phi i64 [ %266, %block_40082f ], [ %1493, %block_400841 ]

  %315 = phi %struct.Memory* [ %2, %block_40082f ], [ %2, %block_400841 ]

  %316 = inttoptr i64 %259 to i64*

  %317 = load i64, i64* %316

  %318 = add i64 %314, 21

  %319 = load i64, i64* %17, align 8, !tbaa !1240

  %320 = add i64 %319, -8

  %321 = inttoptr i64 %320 to i64*

  store i64 %318, i64* %321

  %322 = load i64, i64* %154, align 8, !alias.scope !1259, !noalias !1262

  %323 = load i64, i64* %153, align 8, !alias.scope !1259, !noalias !1262

  %324 = load i64, i64* %156, align 8, !alias.scope !1259, !noalias !1262

  %325 = load i64, i64* %157, align 8, !alias.scope !1259, !noalias !1262

  %326 = inttoptr i64 %319 to i64*

  %327 = load i64, i64* %326

  %328 = add i64 %319, 8

  %329 = inttoptr i64 %328 to i64*

  %330 = load i64, i64* %329

  %331 = add i64 %319, 16

  %332 = inttoptr i64 %331 to i64*

  %333 = load i64, i64* %332

  %334 = add i64 %319, 24

  %335 = inttoptr i64 %334 to i64*

  %336 = load i64, i64* %335

  %337 = add i64 %319, 32

  %338 = inttoptr i64 %337 to i64*

  %339 = load i64, i64* %338

  %340 = add i64 %319, 40

  %341 = inttoptr i64 %340 to i64*

  %342 = load i64, i64* %341

  %343 = add i64 %319, 48

  %344 = inttoptr i64 %343 to i64*

  %345 = load i64, i64* %344

  %346 = add i64 %319, 56

  %347 = inttoptr i64 %346 to i64*

  %348 = load i64, i64* %347

  %349 = add i64 %319, 64

  %350 = inttoptr i64 %349 to i64*

  %351 = load i64, i64* %350

  %352 = add i64 %319, 72

  %353 = inttoptr i64 %352 to i64*

  %354 = load i64, i64* %353

  %355 = inttoptr i64 %320 to i64*

  %356 = load i64, i64* %355

  store i64 %356, i64* %3, align 8, !alias.scope !1259, !noalias !1262

  store i64 %319, i64* %17, align 8, !alias.scope !1259, !noalias !1262

  %357 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 77), i64 %317, i64 %322, i64 %323, i64 %324, i64 %325, i64 %327, i64 %330, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354), !noalias !1259

  %358 = load i64, i64* %18, align 8

  %359 = add i64 %358, -204

  %360 = trunc i64 %357 to i32

  %361 = load i64, i64* %3, align 8

  %362 = inttoptr i64 %359 to i32*

  store i32 %360, i32* %362

  %363 = add i64 %361, 43

  br label %block_40088e



block_40086e:                                     ; preds = %block_400740

  %364 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %365 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %366 = add i64 %244, -56

  %367 = inttoptr i64 %366 to i32*

  %368 = load i32, i32* %367

  %369 = zext i32 %368 to i64

  %370 = add i64 %244, -60

  %371 = inttoptr i64 %370 to i32*

  %372 = load i32, i32* %371

  %373 = zext i32 %372 to i64

  store i64 %373, i64* %364, align 8, !tbaa !1240

  %374 = inttoptr i64 %245 to i32*

  %375 = load i32, i32* %374

  %376 = zext i32 %375 to i64

  store i64 %376, i64* %365, align 8, !tbaa !1240

  %377 = add i64 %254, 26

  %378 = load i64, i64* %17, align 8, !tbaa !1240

  %379 = add i64 %378, -8

  %380 = inttoptr i64 %379 to i64*

  store i64 %377, i64* %380

  %381 = load i64, i64* %156, align 8, !alias.scope !1264, !noalias !1267

  %382 = load i64, i64* %157, align 8, !alias.scope !1264, !noalias !1267

  %383 = inttoptr i64 %378 to i64*

  %384 = load i64, i64* %383

  %385 = add i64 %378, 8

  %386 = inttoptr i64 %385 to i64*

  %387 = load i64, i64* %386

  %388 = add i64 %378, 16

  %389 = inttoptr i64 %388 to i64*

  %390 = load i64, i64* %389

  %391 = add i64 %378, 24

  %392 = inttoptr i64 %391 to i64*

  %393 = load i64, i64* %392

  %394 = add i64 %378, 32

  %395 = inttoptr i64 %394 to i64*

  %396 = load i64, i64* %395

  %397 = add i64 %378, 40

  %398 = inttoptr i64 %397 to i64*

  %399 = load i64, i64* %398

  %400 = add i64 %378, 48

  %401 = inttoptr i64 %400 to i64*

  %402 = load i64, i64* %401

  %403 = add i64 %378, 56

  %404 = inttoptr i64 %403 to i64*

  %405 = load i64, i64* %404

  %406 = add i64 %378, 64

  %407 = inttoptr i64 %406 to i64*

  %408 = load i64, i64* %407

  %409 = add i64 %378, 72

  %410 = inttoptr i64 %409 to i64*

  %411 = load i64, i64* %410

  %412 = inttoptr i64 %379 to i64*

  %413 = load i64, i64* %412

  store i64 %413, i64* %3, align 8, !alias.scope !1264, !noalias !1267

  store i64 %378, i64* %17, align 8, !alias.scope !1264, !noalias !1267

  %414 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 115), i64 %369, i64 %373, i64 %376, i64 %381, i64 %382, i64 %384, i64 %387, i64 %390, i64 %393, i64 %396, i64 %399, i64 %402, i64 %405, i64 %408, i64 %411), !noalias !1264

  %415 = load i64, i64* %18, align 8

  %416 = add i64 %415, -208

  %417 = trunc i64 %414 to i32

  %418 = load i64, i64* %3, align 8

  %419 = add i64 %418, 6

  %420 = inttoptr i64 %416 to i32*

  store i32 %417, i32* %420

  br label %block_40088e



block_400947:                                     ; preds = %block_400921

  %421 = add i64 %472, 17

  %422 = load i64, i64* %17, align 8, !tbaa !1240

  %423 = add i64 %422, -8

  %424 = inttoptr i64 %423 to i64*

  store i64 %421, i64* %424

  %425 = load i64, i64* %155, align 8, !alias.scope !1269, !noalias !1272

  %426 = load i64, i64* %154, align 8, !alias.scope !1269, !noalias !1272

  %427 = load i64, i64* %153, align 8, !alias.scope !1269, !noalias !1272

  %428 = load i64, i64* %156, align 8, !alias.scope !1269, !noalias !1272

  %429 = load i64, i64* %157, align 8, !alias.scope !1269, !noalias !1272

  %430 = inttoptr i64 %422 to i64*

  %431 = load i64, i64* %430

  %432 = add i64 %422, 8

  %433 = inttoptr i64 %432 to i64*

  %434 = load i64, i64* %433

  %435 = add i64 %422, 16

  %436 = inttoptr i64 %435 to i64*

  %437 = load i64, i64* %436

  %438 = add i64 %422, 24

  %439 = inttoptr i64 %438 to i64*

  %440 = load i64, i64* %439

  %441 = add i64 %422, 32

  %442 = inttoptr i64 %441 to i64*

  %443 = load i64, i64* %442

  %444 = add i64 %422, 40

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %422, 48

  %448 = inttoptr i64 %447 to i64*

  %449 = load i64, i64* %448

  %450 = add i64 %422, 56

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %422, 64

  %454 = inttoptr i64 %453 to i64*

  %455 = load i64, i64* %454

  %456 = add i64 %422, 72

  %457 = inttoptr i64 %456 to i64*

  %458 = load i64, i64* %457

  %459 = inttoptr i64 %423 to i64*

  %460 = load i64, i64* %459

  store i64 %460, i64* %3, align 8, !alias.scope !1269, !noalias !1272

  store i64 %422, i64* %17, align 8, !alias.scope !1269, !noalias !1272

  %461 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 389), i64 %425, i64 %426, i64 %427, i64 %428, i64 %429, i64 %431, i64 %434, i64 %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452, i64 %455, i64 %458), !noalias !1269

  %462 = load i64, i64* %18, align 8

  %463 = add i64 %462, -236

  %464 = trunc i64 %461 to i32

  %465 = load i64, i64* %3, align 8

  %466 = add i64 %465, 6

  %467 = inttoptr i64 %463 to i32*

  store i32 %464, i32* %467

  br label %block_400963



block_400921:                                     ; preds = %block_40088e

  %468 = inttoptr i64 %669 to i32*

  %469 = load i32, i32* %468

  %470 = icmp eq i32 %469, 0

  %471 = select i1 %470, i64 38, i64 10

  %472 = add i64 %680, %471

  br i1 %470, label %block_400947, label %block_40092b



block_40088e:                                     ; preds = %block_40086e, %block_40084e

  %473 = phi i64 [ %415, %block_40086e ], [ %358, %block_40084e ]

  %474 = phi i64 [ %419, %block_40086e ], [ %363, %block_40084e ]

  %475 = phi %struct.Memory* [ %2, %block_40086e ], [ %315, %block_40084e ]

  %476 = add i64 %473, -68

  %477 = inttoptr i64 %476 to i32*

  %478 = load i32, i32* %477

  %479 = zext i32 %478 to i64

  store i64 %479, i64* %15, align 8, !tbaa !1240

  %480 = add i64 %474, 20

  %481 = load i64, i64* %17, align 8, !tbaa !1240

  %482 = add i64 %481, -8

  %483 = inttoptr i64 %482 to i64*

  store i64 %480, i64* %483

  %484 = load i64, i64* %154, align 8, !alias.scope !1274, !noalias !1277

  %485 = load i64, i64* %153, align 8, !alias.scope !1274, !noalias !1277

  %486 = load i64, i64* %156, align 8, !alias.scope !1274, !noalias !1277

  %487 = load i64, i64* %157, align 8, !alias.scope !1274, !noalias !1277

  %488 = inttoptr i64 %481 to i64*

  %489 = load i64, i64* %488

  %490 = add i64 %481, 8

  %491 = inttoptr i64 %490 to i64*

  %492 = load i64, i64* %491

  %493 = add i64 %481, 16

  %494 = inttoptr i64 %493 to i64*

  %495 = load i64, i64* %494

  %496 = add i64 %481, 24

  %497 = inttoptr i64 %496 to i64*

  %498 = load i64, i64* %497

  %499 = add i64 %481, 32

  %500 = inttoptr i64 %499 to i64*

  %501 = load i64, i64* %500

  %502 = add i64 %481, 40

  %503 = inttoptr i64 %502 to i64*

  %504 = load i64, i64* %503

  %505 = add i64 %481, 48

  %506 = inttoptr i64 %505 to i64*

  %507 = load i64, i64* %506

  %508 = add i64 %481, 56

  %509 = inttoptr i64 %508 to i64*

  %510 = load i64, i64* %509

  %511 = add i64 %481, 64

  %512 = inttoptr i64 %511 to i64*

  %513 = load i64, i64* %512

  %514 = add i64 %481, 72

  %515 = inttoptr i64 %514 to i64*

  %516 = load i64, i64* %515

  %517 = inttoptr i64 %482 to i64*

  %518 = load i64, i64* %517

  store i64 %518, i64* %3, align 8, !alias.scope !1274, !noalias !1277

  store i64 %481, i64* %17, align 8, !alias.scope !1274, !noalias !1277

  %519 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 159), i64 %479, i64 %484, i64 %485, i64 %486, i64 %487, i64 %489, i64 %492, i64 %495, i64 %498, i64 %501, i64 %504, i64 %507, i64 %510, i64 %513, i64 %516), !noalias !1274

  %520 = load i64, i64* %3, align 8

  %521 = load i64, i64* %18, align 8

  %522 = add i64 %521, -80

  %523 = inttoptr i64 %522 to double*

  %524 = load double, double* %523

  store double %524, double* %111, align 1, !tbaa !1279

  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %526 = bitcast i64* %525 to double*

  store double 0.000000e+00, double* %526, align 1, !tbaa !1279

  %527 = add i64 %521, -212

  %528 = trunc i64 %519 to i32

  %529 = inttoptr i64 %527 to i32*

  store i32 %528, i32* %529

  %530 = add i64 %520, 28

  %531 = load i64, i64* %17, align 8, !tbaa !1240

  %532 = add i64 %531, -8

  %533 = inttoptr i64 %532 to i64*

  store i64 %530, i64* %533

  %534 = load i64, i64* %155, align 8, !alias.scope !1281, !noalias !1284

  %535 = load i64, i64* %154, align 8, !alias.scope !1281, !noalias !1284

  %536 = load i64, i64* %153, align 8, !alias.scope !1281, !noalias !1284

  %537 = load i64, i64* %156, align 8, !alias.scope !1281, !noalias !1284

  %538 = load i64, i64* %157, align 8, !alias.scope !1281, !noalias !1284

  %539 = inttoptr i64 %531 to i64*

  %540 = load i64, i64* %539

  %541 = add i64 %531, 8

  %542 = inttoptr i64 %541 to i64*

  %543 = load i64, i64* %542

  %544 = add i64 %531, 16

  %545 = inttoptr i64 %544 to i64*

  %546 = load i64, i64* %545

  %547 = add i64 %531, 24

  %548 = inttoptr i64 %547 to i64*

  %549 = load i64, i64* %548

  %550 = add i64 %531, 32

  %551 = inttoptr i64 %550 to i64*

  %552 = load i64, i64* %551

  %553 = add i64 %531, 40

  %554 = inttoptr i64 %553 to i64*

  %555 = load i64, i64* %554

  %556 = add i64 %531, 48

  %557 = inttoptr i64 %556 to i64*

  %558 = load i64, i64* %557

  %559 = add i64 %531, 56

  %560 = inttoptr i64 %559 to i64*

  %561 = load i64, i64* %560

  %562 = add i64 %531, 64

  %563 = inttoptr i64 %562 to i64*

  %564 = load i64, i64* %563

  %565 = add i64 %531, 72

  %566 = inttoptr i64 %565 to i64*

  %567 = load i64, i64* %566

  %568 = inttoptr i64 %532 to i64*

  %569 = load i64, i64* %568

  store i64 %569, i64* %3, align 8, !alias.scope !1281, !noalias !1284

  store i64 %531, i64* %17, align 8, !alias.scope !1281, !noalias !1284

  %570 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 196), i64 %534, i64 %535, i64 %536, i64 %537, i64 %538, i64 %540, i64 %543, i64 %546, i64 %549, i64 %552, i64 %555, i64 %558, i64 %561, i64 %564, i64 %567), !noalias !1281

  %571 = load i64, i64* %3, align 8

  %572 = load i64, i64* %18, align 8

  %573 = add i64 %572, -88

  %574 = inttoptr i64 %573 to double*

  %575 = load double, double* %574

  store double %575, double* %111, align 1, !tbaa !1279

  store double 0.000000e+00, double* %526, align 1, !tbaa !1279

  %576 = add i64 %572, -216

  %577 = trunc i64 %570 to i32

  %578 = inttoptr i64 %576 to i32*

  store i32 %577, i32* %578

  %579 = add i64 %571, 28

  %580 = load i64, i64* %17, align 8, !tbaa !1240

  %581 = add i64 %580, -8

  %582 = inttoptr i64 %581 to i64*

  store i64 %579, i64* %582

  %583 = load i64, i64* %155, align 8, !alias.scope !1286, !noalias !1289

  %584 = load i64, i64* %154, align 8, !alias.scope !1286, !noalias !1289

  %585 = load i64, i64* %153, align 8, !alias.scope !1286, !noalias !1289

  %586 = load i64, i64* %156, align 8, !alias.scope !1286, !noalias !1289

  %587 = load i64, i64* %157, align 8, !alias.scope !1286, !noalias !1289

  %588 = inttoptr i64 %580 to i64*

  %589 = load i64, i64* %588

  %590 = add i64 %580, 8

  %591 = inttoptr i64 %590 to i64*

  %592 = load i64, i64* %591

  %593 = add i64 %580, 16

  %594 = inttoptr i64 %593 to i64*

  %595 = load i64, i64* %594

  %596 = add i64 %580, 24

  %597 = inttoptr i64 %596 to i64*

  %598 = load i64, i64* %597

  %599 = add i64 %580, 32

  %600 = inttoptr i64 %599 to i64*

  %601 = load i64, i64* %600

  %602 = add i64 %580, 40

  %603 = inttoptr i64 %602 to i64*

  %604 = load i64, i64* %603

  %605 = add i64 %580, 48

  %606 = inttoptr i64 %605 to i64*

  %607 = load i64, i64* %606

  %608 = add i64 %580, 56

  %609 = inttoptr i64 %608 to i64*

  %610 = load i64, i64* %609

  %611 = add i64 %580, 64

  %612 = inttoptr i64 %611 to i64*

  %613 = load i64, i64* %612

  %614 = add i64 %580, 72

  %615 = inttoptr i64 %614 to i64*

  %616 = load i64, i64* %615

  %617 = inttoptr i64 %581 to i64*

  %618 = load i64, i64* %617

  store i64 %618, i64* %3, align 8, !alias.scope !1286, !noalias !1289

  store i64 %580, i64* %17, align 8, !alias.scope !1286, !noalias !1289

  %619 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 235), i64 %583, i64 %584, i64 %585, i64 %586, i64 %587, i64 %589, i64 %592, i64 %595, i64 %598, i64 %601, i64 %604, i64 %607, i64 %610, i64 %613, i64 %616), !noalias !1286

  %620 = load i64, i64* %3, align 8

  %621 = load i64, i64* %18, align 8

  %622 = add i64 %621, 16

  %623 = inttoptr i64 %622 to i64*

  %624 = load i64, i64* %623

  store i64 %624, i64* %15, align 8, !tbaa !1240

  %625 = add i64 %621, -220

  %626 = trunc i64 %619 to i32

  %627 = inttoptr i64 %625 to i32*

  store i32 %626, i32* %627

  %628 = add i64 %620, 27

  %629 = load i64, i64* %17, align 8, !tbaa !1240

  %630 = add i64 %629, -8

  %631 = inttoptr i64 %630 to i64*

  store i64 %628, i64* %631

  %632 = load i64, i64* %154, align 8, !alias.scope !1291, !noalias !1294

  %633 = load i64, i64* %153, align 8, !alias.scope !1291, !noalias !1294

  %634 = load i64, i64* %156, align 8, !alias.scope !1291, !noalias !1294

  %635 = load i64, i64* %157, align 8, !alias.scope !1291, !noalias !1294

  %636 = inttoptr i64 %629 to i64*

  %637 = load i64, i64* %636

  %638 = add i64 %629, 8

  %639 = inttoptr i64 %638 to i64*

  %640 = load i64, i64* %639

  %641 = add i64 %629, 16

  %642 = inttoptr i64 %641 to i64*

  %643 = load i64, i64* %642

  %644 = add i64 %629, 24

  %645 = inttoptr i64 %644 to i64*

  %646 = load i64, i64* %645

  %647 = add i64 %629, 32

  %648 = inttoptr i64 %647 to i64*

  %649 = load i64, i64* %648

  %650 = add i64 %629, 40

  %651 = inttoptr i64 %650 to i64*

  %652 = load i64, i64* %651

  %653 = add i64 %629, 48

  %654 = inttoptr i64 %653 to i64*

  %655 = load i64, i64* %654

  %656 = add i64 %629, 56

  %657 = inttoptr i64 %656 to i64*

  %658 = load i64, i64* %657

  %659 = add i64 %629, 64

  %660 = inttoptr i64 %659 to i64*

  %661 = load i64, i64* %660

  %662 = add i64 %629, 72

  %663 = inttoptr i64 %662 to i64*

  %664 = load i64, i64* %663

  %665 = inttoptr i64 %630 to i64*

  %666 = load i64, i64* %665

  store i64 %666, i64* %3, align 8, !alias.scope !1291, !noalias !1294

  store i64 %629, i64* %17, align 8, !alias.scope !1291, !noalias !1294

  %667 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 274), i64 %624, i64 %632, i64 %633, i64 %634, i64 %635, i64 %637, i64 %640, i64 %643, i64 %646, i64 %649, i64 %652, i64 %655, i64 %658, i64 %661, i64 %664), !noalias !1291

  %668 = load i64, i64* %18, align 8

  %669 = add i64 %668, 24

  %670 = load i64, i64* %3, align 8

  %671 = inttoptr i64 %669 to i32*

  %672 = load i32, i32* %671

  %673 = lshr i32 %672, 31

  %674 = trunc i32 %673 to i8

  %675 = add i64 %668, -224

  %676 = trunc i64 %667 to i32

  %677 = inttoptr i64 %675 to i32*

  store i32 %676, i32* %677

  %678 = icmp ne i8 %674, 0

  %679 = select i1 %678, i64 16, i64 44

  %680 = add i64 %670, %679

  br i1 %678, label %block_400905, label %block_400921



block_400905:                                     ; preds = %block_40088e

  %681 = add i64 %680, 17

  %682 = load i64, i64* %17, align 8, !tbaa !1240

  %683 = add i64 %682, -8

  %684 = inttoptr i64 %683 to i64*

  store i64 %681, i64* %684

  %685 = load i64, i64* %155, align 8, !alias.scope !1296, !noalias !1299

  %686 = load i64, i64* %154, align 8, !alias.scope !1296, !noalias !1299

  %687 = load i64, i64* %153, align 8, !alias.scope !1296, !noalias !1299

  %688 = load i64, i64* %156, align 8, !alias.scope !1296, !noalias !1299

  %689 = load i64, i64* %157, align 8, !alias.scope !1296, !noalias !1299

  %690 = inttoptr i64 %682 to i64*

  %691 = load i64, i64* %690

  %692 = add i64 %682, 8

  %693 = inttoptr i64 %692 to i64*

  %694 = load i64, i64* %693

  %695 = add i64 %682, 16

  %696 = inttoptr i64 %695 to i64*

  %697 = load i64, i64* %696

  %698 = add i64 %682, 24

  %699 = inttoptr i64 %698 to i64*

  %700 = load i64, i64* %699

  %701 = add i64 %682, 32

  %702 = inttoptr i64 %701 to i64*

  %703 = load i64, i64* %702

  %704 = add i64 %682, 40

  %705 = inttoptr i64 %704 to i64*

  %706 = load i64, i64* %705

  %707 = add i64 %682, 48

  %708 = inttoptr i64 %707 to i64*

  %709 = load i64, i64* %708

  %710 = add i64 %682, 56

  %711 = inttoptr i64 %710 to i64*

  %712 = load i64, i64* %711

  %713 = add i64 %682, 64

  %714 = inttoptr i64 %713 to i64*

  %715 = load i64, i64* %714

  %716 = add i64 %682, 72

  %717 = inttoptr i64 %716 to i64*

  %718 = load i64, i64* %717

  %719 = inttoptr i64 %683 to i64*

  %720 = load i64, i64* %719

  store i64 %720, i64* %3, align 8, !alias.scope !1296, !noalias !1299

  store i64 %682, i64* %17, align 8, !alias.scope !1296, !noalias !1299

  %721 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 299), i64 %685, i64 %686, i64 %687, i64 %688, i64 %689, i64 %691, i64 %694, i64 %697, i64 %700, i64 %703, i64 %706, i64 %709, i64 %712, i64 %715, i64 %718), !noalias !1296

  %722 = load i64, i64* %18, align 8

  %723 = add i64 %722, -228

  %724 = trunc i64 %721 to i32

  %725 = load i64, i64* %3, align 8

  %726 = add i64 %725, 6

  %727 = inttoptr i64 %723 to i32*

  store i32 %724, i32* %727

  br label %block_400963



block_400963:                                     ; preds = %block_400905, %block_400947, %block_40092b

  %728 = phi i64 [ %722, %block_400905 ], [ %462, %block_400947 ], [ %308, %block_40092b ]

  %729 = phi i64 [ %726, %block_400905 ], [ %466, %block_400947 ], [ %313, %block_40092b ]

  %730 = phi i64 [ 71, %block_400905 ], [ 5, %block_400947 ], [ 5, %block_40092b ]

  %731 = phi %struct.Memory* [ %475, %block_400905 ], [ %475, %block_400947 ], [ %475, %block_40092b ]

  %732 = add i64 %729, %730

  %733 = add i64 %728, 32

  %734 = inttoptr i64 %733 to i64*

  %735 = load i64, i64* %734

  %736 = add i64 %732, 21

  %737 = load i64, i64* %17, align 8, !tbaa !1240

  %738 = add i64 %737, -8

  %739 = inttoptr i64 %738 to i64*

  store i64 %736, i64* %739

  %740 = load i64, i64* %154, align 8, !alias.scope !1301, !noalias !1304

  %741 = load i64, i64* %153, align 8, !alias.scope !1301, !noalias !1304

  %742 = load i64, i64* %156, align 8, !alias.scope !1301, !noalias !1304

  %743 = load i64, i64* %157, align 8, !alias.scope !1301, !noalias !1304

  %744 = inttoptr i64 %737 to i64*

  %745 = load i64, i64* %744

  %746 = add i64 %737, 8

  %747 = inttoptr i64 %746 to i64*

  %748 = load i64, i64* %747

  %749 = add i64 %737, 16

  %750 = inttoptr i64 %749 to i64*

  %751 = load i64, i64* %750

  %752 = add i64 %737, 24

  %753 = inttoptr i64 %752 to i64*

  %754 = load i64, i64* %753

  %755 = add i64 %737, 32

  %756 = inttoptr i64 %755 to i64*

  %757 = load i64, i64* %756

  %758 = add i64 %737, 40

  %759 = inttoptr i64 %758 to i64*

  %760 = load i64, i64* %759

  %761 = add i64 %737, 48

  %762 = inttoptr i64 %761 to i64*

  %763 = load i64, i64* %762

  %764 = add i64 %737, 56

  %765 = inttoptr i64 %764 to i64*

  %766 = load i64, i64* %765

  %767 = add i64 %737, 64

  %768 = inttoptr i64 %767 to i64*

  %769 = load i64, i64* %768

  %770 = add i64 %737, 72

  %771 = inttoptr i64 %770 to i64*

  %772 = load i64, i64* %771

  %773 = inttoptr i64 %738 to i64*

  %774 = load i64, i64* %773

  store i64 %774, i64* %3, align 8, !alias.scope !1301, !noalias !1304

  store i64 %737, i64* %17, align 8, !alias.scope !1301, !noalias !1304

  %775 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 434), i64 %735, i64 %740, i64 %741, i64 %742, i64 %743, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757, i64 %760, i64 %763, i64 %766, i64 %769, i64 %772), !noalias !1301

  %776 = load i64, i64* %3, align 8

  %777 = load i64, i64* %18, align 8

  %778 = add i64 %777, 40

  %779 = inttoptr i64 %778 to i64*

  %780 = load i64, i64* %779

  store i64 %780, i64* %15, align 8, !tbaa !1240

  %781 = add i64 %777, -240

  %782 = trunc i64 %775 to i32

  %783 = inttoptr i64 %781 to i32*

  store i32 %782, i32* %783

  %784 = add i64 %776, 27

  %785 = load i64, i64* %17, align 8, !tbaa !1240

  %786 = add i64 %785, -8

  %787 = inttoptr i64 %786 to i64*

  store i64 %784, i64* %787

  %788 = load i64, i64* %154, align 8, !alias.scope !1306, !noalias !1309

  %789 = load i64, i64* %153, align 8, !alias.scope !1306, !noalias !1309

  %790 = load i64, i64* %156, align 8, !alias.scope !1306, !noalias !1309

  %791 = load i64, i64* %157, align 8, !alias.scope !1306, !noalias !1309

  %792 = inttoptr i64 %785 to i64*

  %793 = load i64, i64* %792

  %794 = add i64 %785, 8

  %795 = inttoptr i64 %794 to i64*

  %796 = load i64, i64* %795

  %797 = add i64 %785, 16

  %798 = inttoptr i64 %797 to i64*

  %799 = load i64, i64* %798

  %800 = add i64 %785, 24

  %801 = inttoptr i64 %800 to i64*

  %802 = load i64, i64* %801

  %803 = add i64 %785, 32

  %804 = inttoptr i64 %803 to i64*

  %805 = load i64, i64* %804

  %806 = add i64 %785, 40

  %807 = inttoptr i64 %806 to i64*

  %808 = load i64, i64* %807

  %809 = add i64 %785, 48

  %810 = inttoptr i64 %809 to i64*

  %811 = load i64, i64* %810

  %812 = add i64 %785, 56

  %813 = inttoptr i64 %812 to i64*

  %814 = load i64, i64* %813

  %815 = add i64 %785, 64

  %816 = inttoptr i64 %815 to i64*

  %817 = load i64, i64* %816

  %818 = add i64 %785, 72

  %819 = inttoptr i64 %818 to i64*

  %820 = load i64, i64* %819

  %821 = inttoptr i64 %786 to i64*

  %822 = load i64, i64* %821

  store i64 %822, i64* %3, align 8, !alias.scope !1306, !noalias !1309

  store i64 %785, i64* %17, align 8, !alias.scope !1306, !noalias !1309

  %823 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 471), i64 %780, i64 %788, i64 %789, i64 %790, i64 %791, i64 %793, i64 %796, i64 %799, i64 %802, i64 %805, i64 %808, i64 %811, i64 %814, i64 %817, i64 %820), !noalias !1306

  %824 = load i64, i64* %3, align 8

  %825 = load i64, i64* %18, align 8

  %826 = add i64 %825, -244

  %827 = trunc i64 %823 to i32

  %828 = inttoptr i64 %826 to i32*

  store i32 %827, i32* %828

  %829 = add i64 %824, 23

  %830 = load i64, i64* %17, align 8, !tbaa !1240

  %831 = add i64 %830, -8

  %832 = inttoptr i64 %831 to i64*

  store i64 %829, i64* %832

  %833 = load i64, i64* %155, align 8, !alias.scope !1311, !noalias !1314

  %834 = load i64, i64* %154, align 8, !alias.scope !1311, !noalias !1314

  %835 = load i64, i64* %153, align 8, !alias.scope !1311, !noalias !1314

  %836 = load i64, i64* %156, align 8, !alias.scope !1311, !noalias !1314

  %837 = load i64, i64* %157, align 8, !alias.scope !1311, !noalias !1314

  %838 = inttoptr i64 %830 to i64*

  %839 = load i64, i64* %838

  %840 = add i64 %830, 8

  %841 = inttoptr i64 %840 to i64*

  %842 = load i64, i64* %841

  %843 = add i64 %830, 16

  %844 = inttoptr i64 %843 to i64*

  %845 = load i64, i64* %844

  %846 = add i64 %830, 24

  %847 = inttoptr i64 %846 to i64*

  %848 = load i64, i64* %847

  %849 = add i64 %830, 32

  %850 = inttoptr i64 %849 to i64*

  %851 = load i64, i64* %850

  %852 = add i64 %830, 40

  %853 = inttoptr i64 %852 to i64*

  %854 = load i64, i64* %853

  %855 = add i64 %830, 48

  %856 = inttoptr i64 %855 to i64*

  %857 = load i64, i64* %856

  %858 = add i64 %830, 56

  %859 = inttoptr i64 %858 to i64*

  %860 = load i64, i64* %859

  %861 = add i64 %830, 64

  %862 = inttoptr i64 %861 to i64*

  %863 = load i64, i64* %862

  %864 = add i64 %830, 72

  %865 = inttoptr i64 %864 to i64*

  %866 = load i64, i64* %865

  %867 = inttoptr i64 %831 to i64*

  %868 = load i64, i64* %867

  store i64 %868, i64* %3, align 8, !alias.scope !1311, !noalias !1314

  store i64 %830, i64* %17, align 8, !alias.scope !1311, !noalias !1314

  %869 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 508), i64 %833, i64 %834, i64 %835, i64 %836, i64 %837, i64 %839, i64 %842, i64 %845, i64 %848, i64 %851, i64 %854, i64 %857, i64 %860, i64 %863, i64 %866), !noalias !1311

  %870 = load i64, i64* %3, align 8

  %871 = load i64, i64* %18, align 8

  %872 = add i64 %871, 48

  %873 = inttoptr i64 %872 to i64*

  %874 = load i64, i64* %873

  %875 = add i64 %871, -248

  %876 = trunc i64 %869 to i32

  %877 = inttoptr i64 %875 to i32*

  store i32 %876, i32* %877

  %878 = add i64 %870, 27

  %879 = load i64, i64* %17, align 8, !tbaa !1240

  %880 = add i64 %879, -8

  %881 = inttoptr i64 %880 to i64*

  store i64 %878, i64* %881

  %882 = load i64, i64* %154, align 8, !alias.scope !1316, !noalias !1319

  %883 = load i64, i64* %153, align 8, !alias.scope !1316, !noalias !1319

  %884 = load i64, i64* %156, align 8, !alias.scope !1316, !noalias !1319

  %885 = load i64, i64* %157, align 8, !alias.scope !1316, !noalias !1319

  %886 = inttoptr i64 %879 to i64*

  %887 = load i64, i64* %886

  %888 = add i64 %879, 8

  %889 = inttoptr i64 %888 to i64*

  %890 = load i64, i64* %889

  %891 = add i64 %879, 16

  %892 = inttoptr i64 %891 to i64*

  %893 = load i64, i64* %892

  %894 = add i64 %879, 24

  %895 = inttoptr i64 %894 to i64*

  %896 = load i64, i64* %895

  %897 = add i64 %879, 32

  %898 = inttoptr i64 %897 to i64*

  %899 = load i64, i64* %898

  %900 = add i64 %879, 40

  %901 = inttoptr i64 %900 to i64*

  %902 = load i64, i64* %901

  %903 = add i64 %879, 48

  %904 = inttoptr i64 %903 to i64*

  %905 = load i64, i64* %904

  %906 = add i64 %879, 56

  %907 = inttoptr i64 %906 to i64*

  %908 = load i64, i64* %907

  %909 = add i64 %879, 64

  %910 = inttoptr i64 %909 to i64*

  %911 = load i64, i64* %910

  %912 = add i64 %879, 72

  %913 = inttoptr i64 %912 to i64*

  %914 = load i64, i64* %913

  %915 = inttoptr i64 %880 to i64*

  %916 = load i64, i64* %915

  store i64 %916, i64* %3, align 8, !alias.scope !1316, !noalias !1319

  store i64 %879, i64* %17, align 8, !alias.scope !1316, !noalias !1319

  %917 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1739), i64 %874, i64 %882, i64 %883, i64 %884, i64 %885, i64 %887, i64 %890, i64 %893, i64 %896, i64 %899, i64 %902, i64 %905, i64 %908, i64 %911, i64 %914), !noalias !1316

  %918 = load i64, i64* %3, align 8

  %919 = load i64, i64* %18, align 8

  %920 = add i64 %919, 56

  %921 = inttoptr i64 %920 to i64*

  %922 = load i64, i64* %921

  %923 = add i64 %919, -252

  %924 = trunc i64 %917 to i32

  %925 = inttoptr i64 %923 to i32*

  store i32 %924, i32* %925

  %926 = add i64 %918, 27

  %927 = load i64, i64* %17, align 8, !tbaa !1240

  %928 = add i64 %927, -8

  %929 = inttoptr i64 %928 to i64*

  store i64 %926, i64* %929

  %930 = load i64, i64* %154, align 8, !alias.scope !1321, !noalias !1324

  %931 = load i64, i64* %153, align 8, !alias.scope !1321, !noalias !1324

  %932 = load i64, i64* %156, align 8, !alias.scope !1321, !noalias !1324

  %933 = load i64, i64* %157, align 8, !alias.scope !1321, !noalias !1324

  %934 = inttoptr i64 %927 to i64*

  %935 = load i64, i64* %934

  %936 = add i64 %927, 8

  %937 = inttoptr i64 %936 to i64*

  %938 = load i64, i64* %937

  %939 = add i64 %927, 16

  %940 = inttoptr i64 %939 to i64*

  %941 = load i64, i64* %940

  %942 = add i64 %927, 24

  %943 = inttoptr i64 %942 to i64*

  %944 = load i64, i64* %943

  %945 = add i64 %927, 32

  %946 = inttoptr i64 %945 to i64*

  %947 = load i64, i64* %946

  %948 = add i64 %927, 40

  %949 = inttoptr i64 %948 to i64*

  %950 = load i64, i64* %949

  %951 = add i64 %927, 48

  %952 = inttoptr i64 %951 to i64*

  %953 = load i64, i64* %952

  %954 = add i64 %927, 56

  %955 = inttoptr i64 %954 to i64*

  %956 = load i64, i64* %955

  %957 = add i64 %927, 64

  %958 = inttoptr i64 %957 to i64*

  %959 = load i64, i64* %958

  %960 = add i64 %927, 72

  %961 = inttoptr i64 %960 to i64*

  %962 = load i64, i64* %961

  %963 = inttoptr i64 %928 to i64*

  %964 = load i64, i64* %963

  store i64 %964, i64* %3, align 8, !alias.scope !1321, !noalias !1324

  store i64 %927, i64* %17, align 8, !alias.scope !1321, !noalias !1324

  %965 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 528), i64 %922, i64 %930, i64 %931, i64 %932, i64 %933, i64 %935, i64 %938, i64 %941, i64 %944, i64 %947, i64 %950, i64 %953, i64 %956, i64 %959, i64 %962), !noalias !1321

  %966 = load i64, i64* %3, align 8

  %967 = load i64, i64* %18, align 8

  %968 = add i64 %967, 64

  %969 = inttoptr i64 %968 to i64*

  %970 = load i64, i64* %969

  %971 = add i64 %967, -256

  %972 = trunc i64 %965 to i32

  %973 = inttoptr i64 %971 to i32*

  store i32 %972, i32* %973

  %974 = add i64 %966, 27

  %975 = load i64, i64* %17, align 8, !tbaa !1240

  %976 = add i64 %975, -8

  %977 = inttoptr i64 %976 to i64*

  store i64 %974, i64* %977

  %978 = load i64, i64* %154, align 8, !alias.scope !1326, !noalias !1329

  %979 = load i64, i64* %153, align 8, !alias.scope !1326, !noalias !1329

  %980 = load i64, i64* %156, align 8, !alias.scope !1326, !noalias !1329

  %981 = load i64, i64* %157, align 8, !alias.scope !1326, !noalias !1329

  %982 = inttoptr i64 %975 to i64*

  %983 = load i64, i64* %982

  %984 = add i64 %975, 8

  %985 = inttoptr i64 %984 to i64*

  %986 = load i64, i64* %985

  %987 = add i64 %975, 16

  %988 = inttoptr i64 %987 to i64*

  %989 = load i64, i64* %988

  %990 = add i64 %975, 24

  %991 = inttoptr i64 %990 to i64*

  %992 = load i64, i64* %991

  %993 = add i64 %975, 32

  %994 = inttoptr i64 %993 to i64*

  %995 = load i64, i64* %994

  %996 = add i64 %975, 40

  %997 = inttoptr i64 %996 to i64*

  %998 = load i64, i64* %997

  %999 = add i64 %975, 48

  %1000 = inttoptr i64 %999 to i64*

  %1001 = load i64, i64* %1000

  %1002 = add i64 %975, 56

  %1003 = inttoptr i64 %1002 to i64*

  %1004 = load i64, i64* %1003

  %1005 = add i64 %975, 64

  %1006 = inttoptr i64 %1005 to i64*

  %1007 = load i64, i64* %1006

  %1008 = add i64 %975, 72

  %1009 = inttoptr i64 %1008 to i64*

  %1010 = load i64, i64* %1009

  %1011 = inttoptr i64 %976 to i64*

  %1012 = load i64, i64* %1011

  store i64 %1012, i64* %3, align 8, !alias.scope !1326, !noalias !1329

  store i64 %975, i64* %17, align 8, !alias.scope !1326, !noalias !1329

  %1013 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 551), i64 %970, i64 %978, i64 %979, i64 %980, i64 %981, i64 %983, i64 %986, i64 %989, i64 %992, i64 %995, i64 %998, i64 %1001, i64 %1004, i64 %1007, i64 %1010), !noalias !1326

  %1014 = load i64, i64* %3, align 8

  %1015 = load i64, i64* %18, align 8

  %1016 = add i64 %1015, 72

  %1017 = inttoptr i64 %1016 to i64*

  %1018 = load i64, i64* %1017

  %1019 = add i64 %1015, -260

  %1020 = trunc i64 %1013 to i32

  %1021 = inttoptr i64 %1019 to i32*

  store i32 %1020, i32* %1021

  %1022 = add i64 %1014, 27

  %1023 = load i64, i64* %17, align 8, !tbaa !1240

  %1024 = add i64 %1023, -8

  %1025 = inttoptr i64 %1024 to i64*

  store i64 %1022, i64* %1025

  %1026 = load i64, i64* %154, align 8, !alias.scope !1331, !noalias !1334

  %1027 = load i64, i64* %153, align 8, !alias.scope !1331, !noalias !1334

  %1028 = load i64, i64* %156, align 8, !alias.scope !1331, !noalias !1334

  %1029 = load i64, i64* %157, align 8, !alias.scope !1331, !noalias !1334

  %1030 = inttoptr i64 %1023 to i64*

  %1031 = load i64, i64* %1030

  %1032 = add i64 %1023, 8

  %1033 = inttoptr i64 %1032 to i64*

  %1034 = load i64, i64* %1033

  %1035 = add i64 %1023, 16

  %1036 = inttoptr i64 %1035 to i64*

  %1037 = load i64, i64* %1036

  %1038 = add i64 %1023, 24

  %1039 = inttoptr i64 %1038 to i64*

  %1040 = load i64, i64* %1039

  %1041 = add i64 %1023, 32

  %1042 = inttoptr i64 %1041 to i64*

  %1043 = load i64, i64* %1042

  %1044 = add i64 %1023, 40

  %1045 = inttoptr i64 %1044 to i64*

  %1046 = load i64, i64* %1045

  %1047 = add i64 %1023, 48

  %1048 = inttoptr i64 %1047 to i64*

  %1049 = load i64, i64* %1048

  %1050 = add i64 %1023, 56

  %1051 = inttoptr i64 %1050 to i64*

  %1052 = load i64, i64* %1051

  %1053 = add i64 %1023, 64

  %1054 = inttoptr i64 %1053 to i64*

  %1055 = load i64, i64* %1054

  %1056 = add i64 %1023, 72

  %1057 = inttoptr i64 %1056 to i64*

  %1058 = load i64, i64* %1057

  %1059 = inttoptr i64 %1024 to i64*

  %1060 = load i64, i64* %1059

  store i64 %1060, i64* %3, align 8, !alias.scope !1331, !noalias !1334

  store i64 %1023, i64* %17, align 8, !alias.scope !1331, !noalias !1334

  %1061 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 574), i64 %1018, i64 %1026, i64 %1027, i64 %1028, i64 %1029, i64 %1031, i64 %1034, i64 %1037, i64 %1040, i64 %1043, i64 %1046, i64 %1049, i64 %1052, i64 %1055, i64 %1058), !noalias !1331

  %1062 = load i64, i64* %3, align 8

  %1063 = load i64, i64* %18, align 8

  %1064 = add i64 %1063, 80

  %1065 = inttoptr i64 %1064 to i64*

  %1066 = load i64, i64* %1065

  %1067 = add i64 %1063, -264

  %1068 = trunc i64 %1061 to i32

  %1069 = inttoptr i64 %1067 to i32*

  store i32 %1068, i32* %1069

  %1070 = add i64 %1062, 27

  %1071 = load i64, i64* %17, align 8, !tbaa !1240

  %1072 = add i64 %1071, -8

  %1073 = inttoptr i64 %1072 to i64*

  store i64 %1070, i64* %1073

  %1074 = load i64, i64* %154, align 8, !alias.scope !1336, !noalias !1339

  %1075 = load i64, i64* %153, align 8, !alias.scope !1336, !noalias !1339

  %1076 = load i64, i64* %156, align 8, !alias.scope !1336, !noalias !1339

  %1077 = load i64, i64* %157, align 8, !alias.scope !1336, !noalias !1339

  %1078 = inttoptr i64 %1071 to i64*

  %1079 = load i64, i64* %1078

  %1080 = add i64 %1071, 8

  %1081 = inttoptr i64 %1080 to i64*

  %1082 = load i64, i64* %1081

  %1083 = add i64 %1071, 16

  %1084 = inttoptr i64 %1083 to i64*

  %1085 = load i64, i64* %1084

  %1086 = add i64 %1071, 24

  %1087 = inttoptr i64 %1086 to i64*

  %1088 = load i64, i64* %1087

  %1089 = add i64 %1071, 32

  %1090 = inttoptr i64 %1089 to i64*

  %1091 = load i64, i64* %1090

  %1092 = add i64 %1071, 40

  %1093 = inttoptr i64 %1092 to i64*

  %1094 = load i64, i64* %1093

  %1095 = add i64 %1071, 48

  %1096 = inttoptr i64 %1095 to i64*

  %1097 = load i64, i64* %1096

  %1098 = add i64 %1071, 56

  %1099 = inttoptr i64 %1098 to i64*

  %1100 = load i64, i64* %1099

  %1101 = add i64 %1071, 64

  %1102 = inttoptr i64 %1101 to i64*

  %1103 = load i64, i64* %1102

  %1104 = add i64 %1071, 72

  %1105 = inttoptr i64 %1104 to i64*

  %1106 = load i64, i64* %1105

  %1107 = inttoptr i64 %1072 to i64*

  %1108 = load i64, i64* %1107

  store i64 %1108, i64* %3, align 8, !alias.scope !1336, !noalias !1339

  store i64 %1071, i64* %17, align 8, !alias.scope !1336, !noalias !1339

  %1109 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 597), i64 %1066, i64 %1074, i64 %1075, i64 %1076, i64 %1077, i64 %1079, i64 %1082, i64 %1085, i64 %1088, i64 %1091, i64 %1094, i64 %1097, i64 %1100, i64 %1103, i64 %1106), !noalias !1336

  %1110 = load i64, i64* %3, align 8

  %1111 = load i64, i64* %18, align 8

  %1112 = add i64 %1111, 88

  %1113 = inttoptr i64 %1112 to i64*

  %1114 = load i64, i64* %1113

  store i64 %1114, i64* %15, align 8, !tbaa !1240

  %1115 = add i64 %1111, -268

  %1116 = trunc i64 %1109 to i32

  %1117 = inttoptr i64 %1115 to i32*

  store i32 %1116, i32* %1117

  %1118 = add i64 %1110, 27

  %1119 = load i64, i64* %17, align 8, !tbaa !1240

  %1120 = add i64 %1119, -8

  %1121 = inttoptr i64 %1120 to i64*

  store i64 %1118, i64* %1121

  %1122 = load i64, i64* %154, align 8, !alias.scope !1341, !noalias !1344

  %1123 = load i64, i64* %153, align 8, !alias.scope !1341, !noalias !1344

  %1124 = load i64, i64* %156, align 8, !alias.scope !1341, !noalias !1344

  %1125 = load i64, i64* %157, align 8, !alias.scope !1341, !noalias !1344

  %1126 = inttoptr i64 %1119 to i64*

  %1127 = load i64, i64* %1126

  %1128 = add i64 %1119, 8

  %1129 = inttoptr i64 %1128 to i64*

  %1130 = load i64, i64* %1129

  %1131 = add i64 %1119, 16

  %1132 = inttoptr i64 %1131 to i64*

  %1133 = load i64, i64* %1132

  %1134 = add i64 %1119, 24

  %1135 = inttoptr i64 %1134 to i64*

  %1136 = load i64, i64* %1135

  %1137 = add i64 %1119, 32

  %1138 = inttoptr i64 %1137 to i64*

  %1139 = load i64, i64* %1138

  %1140 = add i64 %1119, 40

  %1141 = inttoptr i64 %1140 to i64*

  %1142 = load i64, i64* %1141

  %1143 = add i64 %1119, 48

  %1144 = inttoptr i64 %1143 to i64*

  %1145 = load i64, i64* %1144

  %1146 = add i64 %1119, 56

  %1147 = inttoptr i64 %1146 to i64*

  %1148 = load i64, i64* %1147

  %1149 = add i64 %1119, 64

  %1150 = inttoptr i64 %1149 to i64*

  %1151 = load i64, i64* %1150

  %1152 = add i64 %1119, 72

  %1153 = inttoptr i64 %1152 to i64*

  %1154 = load i64, i64* %1153

  %1155 = inttoptr i64 %1120 to i64*

  %1156 = load i64, i64* %1155

  store i64 %1156, i64* %3, align 8, !alias.scope !1341, !noalias !1344

  store i64 %1119, i64* %17, align 8, !alias.scope !1341, !noalias !1344

  %1157 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 620), i64 %1114, i64 %1122, i64 %1123, i64 %1124, i64 %1125, i64 %1127, i64 %1130, i64 %1133, i64 %1136, i64 %1139, i64 %1142, i64 %1145, i64 %1148, i64 %1151, i64 %1154), !noalias !1341

  %1158 = load i64, i64* %3, align 8

  %1159 = load i64, i64* %18, align 8

  %1160 = add i64 %1159, -272

  %1161 = trunc i64 %1157 to i32

  %1162 = inttoptr i64 %1160 to i32*

  store i32 %1161, i32* %1162

  %1163 = add i64 %1158, 23

  %1164 = load i64, i64* %17, align 8, !tbaa !1240

  %1165 = add i64 %1164, -8

  %1166 = inttoptr i64 %1165 to i64*

  store i64 %1163, i64* %1166

  %1167 = load i64, i64* %155, align 8, !alias.scope !1346, !noalias !1349

  %1168 = load i64, i64* %154, align 8, !alias.scope !1346, !noalias !1349

  %1169 = load i64, i64* %153, align 8, !alias.scope !1346, !noalias !1349

  %1170 = load i64, i64* %156, align 8, !alias.scope !1346, !noalias !1349

  %1171 = load i64, i64* %157, align 8, !alias.scope !1346, !noalias !1349

  %1172 = inttoptr i64 %1164 to i64*

  %1173 = load i64, i64* %1172

  %1174 = add i64 %1164, 8

  %1175 = inttoptr i64 %1174 to i64*

  %1176 = load i64, i64* %1175

  %1177 = add i64 %1164, 16

  %1178 = inttoptr i64 %1177 to i64*

  %1179 = load i64, i64* %1178

  %1180 = add i64 %1164, 24

  %1181 = inttoptr i64 %1180 to i64*

  %1182 = load i64, i64* %1181

  %1183 = add i64 %1164, 32

  %1184 = inttoptr i64 %1183 to i64*

  %1185 = load i64, i64* %1184

  %1186 = add i64 %1164, 40

  %1187 = inttoptr i64 %1186 to i64*

  %1188 = load i64, i64* %1187

  %1189 = add i64 %1164, 48

  %1190 = inttoptr i64 %1189 to i64*

  %1191 = load i64, i64* %1190

  %1192 = add i64 %1164, 56

  %1193 = inttoptr i64 %1192 to i64*

  %1194 = load i64, i64* %1193

  %1195 = add i64 %1164, 64

  %1196 = inttoptr i64 %1195 to i64*

  %1197 = load i64, i64* %1196

  %1198 = add i64 %1164, 72

  %1199 = inttoptr i64 %1198 to i64*

  %1200 = load i64, i64* %1199

  %1201 = inttoptr i64 %1165 to i64*

  %1202 = load i64, i64* %1201

  store i64 %1202, i64* %3, align 8, !alias.scope !1346, !noalias !1349

  store i64 %1164, i64* %17, align 8, !alias.scope !1346, !noalias !1349

  %1203 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 643), i64 %1167, i64 %1168, i64 %1169, i64 %1170, i64 %1171, i64 %1173, i64 %1176, i64 %1179, i64 %1182, i64 %1185, i64 %1188, i64 %1191, i64 %1194, i64 %1197, i64 %1200), !noalias !1346

  %1204 = load i64, i64* %3, align 8

  %1205 = load i64, i64* %18, align 8

  %1206 = add i64 %1205, -276

  %1207 = trunc i64 %1203 to i32

  %1208 = inttoptr i64 %1206 to i32*

  store i32 %1207, i32* %1208

  %1209 = add i64 %1204, 23

  %1210 = load i64, i64* %17, align 8, !tbaa !1240

  %1211 = add i64 %1210, -8

  %1212 = inttoptr i64 %1211 to i64*

  store i64 %1209, i64* %1212

  %1213 = load i64, i64* %155, align 8, !alias.scope !1351, !noalias !1354

  %1214 = load i64, i64* %154, align 8, !alias.scope !1351, !noalias !1354

  %1215 = load i64, i64* %153, align 8, !alias.scope !1351, !noalias !1354

  %1216 = load i64, i64* %156, align 8, !alias.scope !1351, !noalias !1354

  %1217 = load i64, i64* %157, align 8, !alias.scope !1351, !noalias !1354

  %1218 = inttoptr i64 %1210 to i64*

  %1219 = load i64, i64* %1218

  %1220 = add i64 %1210, 8

  %1221 = inttoptr i64 %1220 to i64*

  %1222 = load i64, i64* %1221

  %1223 = add i64 %1210, 16

  %1224 = inttoptr i64 %1223 to i64*

  %1225 = load i64, i64* %1224

  %1226 = add i64 %1210, 24

  %1227 = inttoptr i64 %1226 to i64*

  %1228 = load i64, i64* %1227

  %1229 = add i64 %1210, 32

  %1230 = inttoptr i64 %1229 to i64*

  %1231 = load i64, i64* %1230

  %1232 = add i64 %1210, 40

  %1233 = inttoptr i64 %1232 to i64*

  %1234 = load i64, i64* %1233

  %1235 = add i64 %1210, 48

  %1236 = inttoptr i64 %1235 to i64*

  %1237 = load i64, i64* %1236

  %1238 = add i64 %1210, 56

  %1239 = inttoptr i64 %1238 to i64*

  %1240 = load i64, i64* %1239

  %1241 = add i64 %1210, 64

  %1242 = inttoptr i64 %1241 to i64*

  %1243 = load i64, i64* %1242

  %1244 = add i64 %1210, 72

  %1245 = inttoptr i64 %1244 to i64*

  %1246 = load i64, i64* %1245

  %1247 = inttoptr i64 %1211 to i64*

  %1248 = load i64, i64* %1247

  store i64 %1248, i64* %3, align 8, !alias.scope !1351, !noalias !1354

  store i64 %1210, i64* %17, align 8, !alias.scope !1351, !noalias !1354

  %1249 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 684), i64 %1213, i64 %1214, i64 %1215, i64 %1216, i64 %1217, i64 %1219, i64 %1222, i64 %1225, i64 %1228, i64 %1231, i64 %1234, i64 %1237, i64 %1240, i64 %1243, i64 %1246), !noalias !1351

  %1250 = load i64, i64* %3, align 8

  %1251 = load i64, i64* %18, align 8

  %1252 = add i64 %1251, -280

  %1253 = trunc i64 %1249 to i32

  %1254 = inttoptr i64 %1252 to i32*

  store i32 %1253, i32* %1254

  %1255 = add i64 %1250, 23

  %1256 = load i64, i64* %17, align 8, !tbaa !1240

  %1257 = add i64 %1256, -8

  %1258 = inttoptr i64 %1257 to i64*

  store i64 %1255, i64* %1258

  %1259 = load i64, i64* %155, align 8, !alias.scope !1356, !noalias !1359

  %1260 = load i64, i64* %154, align 8, !alias.scope !1356, !noalias !1359

  %1261 = load i64, i64* %153, align 8, !alias.scope !1356, !noalias !1359

  %1262 = load i64, i64* %156, align 8, !alias.scope !1356, !noalias !1359

  %1263 = load i64, i64* %157, align 8, !alias.scope !1356, !noalias !1359

  %1264 = inttoptr i64 %1256 to i64*

  %1265 = load i64, i64* %1264

  %1266 = add i64 %1256, 8

  %1267 = inttoptr i64 %1266 to i64*

  %1268 = load i64, i64* %1267

  %1269 = add i64 %1256, 16

  %1270 = inttoptr i64 %1269 to i64*

  %1271 = load i64, i64* %1270

  %1272 = add i64 %1256, 24

  %1273 = inttoptr i64 %1272 to i64*

  %1274 = load i64, i64* %1273

  %1275 = add i64 %1256, 32

  %1276 = inttoptr i64 %1275 to i64*

  %1277 = load i64, i64* %1276

  %1278 = add i64 %1256, 40

  %1279 = inttoptr i64 %1278 to i64*

  %1280 = load i64, i64* %1279

  %1281 = add i64 %1256, 48

  %1282 = inttoptr i64 %1281 to i64*

  %1283 = load i64, i64* %1282

  %1284 = add i64 %1256, 56

  %1285 = inttoptr i64 %1284 to i64*

  %1286 = load i64, i64* %1285

  %1287 = add i64 %1256, 64

  %1288 = inttoptr i64 %1287 to i64*

  %1289 = load i64, i64* %1288

  %1290 = add i64 %1256, 72

  %1291 = inttoptr i64 %1290 to i64*

  %1292 = load i64, i64* %1291

  %1293 = inttoptr i64 %1257 to i64*

  %1294 = load i64, i64* %1293

  store i64 %1294, i64* %3, align 8, !alias.scope !1356, !noalias !1359

  store i64 %1256, i64* %17, align 8, !alias.scope !1356, !noalias !1359

  %1295 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 723), i64 %1259, i64 %1260, i64 %1261, i64 %1262, i64 %1263, i64 %1265, i64 %1268, i64 %1271, i64 %1274, i64 %1277, i64 %1280, i64 %1283, i64 %1286, i64 %1289, i64 %1292), !noalias !1356

  %1296 = load i64, i64* %3, align 8

  %1297 = load i64, i64* %18, align 8

  %1298 = add i64 %1297, -284

  %1299 = trunc i64 %1295 to i32

  %1300 = inttoptr i64 %1298 to i32*

  store i32 %1299, i32* %1300

  %1301 = add i64 %1296, 23

  %1302 = load i64, i64* %17, align 8, !tbaa !1240

  %1303 = add i64 %1302, -8

  %1304 = inttoptr i64 %1303 to i64*

  store i64 %1301, i64* %1304

  %1305 = load i64, i64* %155, align 8, !alias.scope !1361, !noalias !1364

  %1306 = load i64, i64* %154, align 8, !alias.scope !1361, !noalias !1364

  %1307 = load i64, i64* %153, align 8, !alias.scope !1361, !noalias !1364

  %1308 = load i64, i64* %156, align 8, !alias.scope !1361, !noalias !1364

  %1309 = load i64, i64* %157, align 8, !alias.scope !1361, !noalias !1364

  %1310 = inttoptr i64 %1302 to i64*

  %1311 = load i64, i64* %1310

  %1312 = add i64 %1302, 8

  %1313 = inttoptr i64 %1312 to i64*

  %1314 = load i64, i64* %1313

  %1315 = add i64 %1302, 16

  %1316 = inttoptr i64 %1315 to i64*

  %1317 = load i64, i64* %1316

  %1318 = add i64 %1302, 24

  %1319 = inttoptr i64 %1318 to i64*

  %1320 = load i64, i64* %1319

  %1321 = add i64 %1302, 32

  %1322 = inttoptr i64 %1321 to i64*

  %1323 = load i64, i64* %1322

  %1324 = add i64 %1302, 40

  %1325 = inttoptr i64 %1324 to i64*

  %1326 = load i64, i64* %1325

  %1327 = add i64 %1302, 48

  %1328 = inttoptr i64 %1327 to i64*

  %1329 = load i64, i64* %1328

  %1330 = add i64 %1302, 56

  %1331 = inttoptr i64 %1330 to i64*

  %1332 = load i64, i64* %1331

  %1333 = add i64 %1302, 64

  %1334 = inttoptr i64 %1333 to i64*

  %1335 = load i64, i64* %1334

  %1336 = add i64 %1302, 72

  %1337 = inttoptr i64 %1336 to i64*

  %1338 = load i64, i64* %1337

  %1339 = inttoptr i64 %1303 to i64*

  %1340 = load i64, i64* %1339

  store i64 %1340, i64* %3, align 8, !alias.scope !1361, !noalias !1364

  store i64 %1302, i64* %17, align 8, !alias.scope !1361, !noalias !1364

  %1341 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 757), i64 %1305, i64 %1306, i64 %1307, i64 %1308, i64 %1309, i64 %1311, i64 %1314, i64 %1317, i64 %1320, i64 %1323, i64 %1326, i64 %1329, i64 %1332, i64 %1335, i64 %1338), !noalias !1361

  %1342 = load i64, i64* %3, align 8

  %1343 = load i64, i64* %18, align 8

  %1344 = add i64 %1343, -288

  %1345 = trunc i64 %1341 to i32

  %1346 = inttoptr i64 %1344 to i32*

  store i32 %1345, i32* %1346

  %1347 = add i64 %1342, 23

  %1348 = load i64, i64* %17, align 8, !tbaa !1240

  %1349 = add i64 %1348, -8

  %1350 = inttoptr i64 %1349 to i64*

  store i64 %1347, i64* %1350

  %1351 = load i64, i64* %155, align 8, !alias.scope !1366, !noalias !1369

  %1352 = load i64, i64* %154, align 8, !alias.scope !1366, !noalias !1369

  %1353 = load i64, i64* %153, align 8, !alias.scope !1366, !noalias !1369

  %1354 = load i64, i64* %156, align 8, !alias.scope !1366, !noalias !1369

  %1355 = load i64, i64* %157, align 8, !alias.scope !1366, !noalias !1369

  %1356 = inttoptr i64 %1348 to i64*

  %1357 = load i64, i64* %1356

  %1358 = add i64 %1348, 8

  %1359 = inttoptr i64 %1358 to i64*

  %1360 = load i64, i64* %1359

  %1361 = add i64 %1348, 16

  %1362 = inttoptr i64 %1361 to i64*

  %1363 = load i64, i64* %1362

  %1364 = add i64 %1348, 24

  %1365 = inttoptr i64 %1364 to i64*

  %1366 = load i64, i64* %1365

  %1367 = add i64 %1348, 32

  %1368 = inttoptr i64 %1367 to i64*

  %1369 = load i64, i64* %1368

  %1370 = add i64 %1348, 40

  %1371 = inttoptr i64 %1370 to i64*

  %1372 = load i64, i64* %1371

  %1373 = add i64 %1348, 48

  %1374 = inttoptr i64 %1373 to i64*

  %1375 = load i64, i64* %1374

  %1376 = add i64 %1348, 56

  %1377 = inttoptr i64 %1376 to i64*

  %1378 = load i64, i64* %1377

  %1379 = add i64 %1348, 64

  %1380 = inttoptr i64 %1379 to i64*

  %1381 = load i64, i64* %1380

  %1382 = add i64 %1348, 72

  %1383 = inttoptr i64 %1382 to i64*

  %1384 = load i64, i64* %1383

  %1385 = inttoptr i64 %1349 to i64*

  %1386 = load i64, i64* %1385

  store i64 %1386, i64* %3, align 8, !alias.scope !1366, !noalias !1369

  store i64 %1348, i64* %17, align 8, !alias.scope !1366, !noalias !1369

  %1387 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 778), i64 %1351, i64 %1352, i64 %1353, i64 %1354, i64 %1355, i64 %1357, i64 %1360, i64 %1363, i64 %1366, i64 %1369, i64 %1372, i64 %1375, i64 %1378, i64 %1381, i64 %1384), !noalias !1366

  %1388 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 644), i64* %16, align 8, !tbaa !1240

  %1389 = load i64, i64* %18, align 8

  %1390 = add i64 %1389, -292

  %1391 = trunc i64 %1387 to i32

  %1392 = inttoptr i64 %1390 to i32*

  store i32 %1391, i32* %1392

  %1393 = add i64 %1388, 23

  %1394 = load i64, i64* %17, align 8, !tbaa !1240

  %1395 = add i64 %1394, -8

  %1396 = inttoptr i64 %1395 to i64*

  store i64 %1393, i64* %1396

  %1397 = load i64, i64* %155, align 8, !alias.scope !1371, !noalias !1374

  %1398 = load i64, i64* %154, align 8, !alias.scope !1371, !noalias !1374

  %1399 = load i64, i64* %153, align 8, !alias.scope !1371, !noalias !1374

  %1400 = load i64, i64* %156, align 8, !alias.scope !1371, !noalias !1374

  %1401 = load i64, i64* %157, align 8, !alias.scope !1371, !noalias !1374

  %1402 = inttoptr i64 %1394 to i64*

  %1403 = load i64, i64* %1402

  %1404 = add i64 %1394, 8

  %1405 = inttoptr i64 %1404 to i64*

  %1406 = load i64, i64* %1405

  %1407 = add i64 %1394, 16

  %1408 = inttoptr i64 %1407 to i64*

  %1409 = load i64, i64* %1408

  %1410 = add i64 %1394, 24

  %1411 = inttoptr i64 %1410 to i64*

  %1412 = load i64, i64* %1411

  %1413 = add i64 %1394, 32

  %1414 = inttoptr i64 %1413 to i64*

  %1415 = load i64, i64* %1414

  %1416 = add i64 %1394, 40

  %1417 = inttoptr i64 %1416 to i64*

  %1418 = load i64, i64* %1417

  %1419 = add i64 %1394, 48

  %1420 = inttoptr i64 %1419 to i64*

  %1421 = load i64, i64* %1420

  %1422 = add i64 %1394, 56

  %1423 = inttoptr i64 %1422 to i64*

  %1424 = load i64, i64* %1423

  %1425 = add i64 %1394, 64

  %1426 = inttoptr i64 %1425 to i64*

  %1427 = load i64, i64* %1426

  %1428 = add i64 %1394, 72

  %1429 = inttoptr i64 %1428 to i64*

  %1430 = load i64, i64* %1429

  store i64 %1394, i64* %17, align 8, !alias.scope !1371, !noalias !1374

  %1431 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 644), i64 %1397, i64 %1398, i64 %1399, i64 %1400, i64 %1401, i64 %1403, i64 %1406, i64 %1409, i64 %1412, i64 %1415, i64 %1418, i64 %1421, i64 %1424, i64 %1427, i64 %1430), !noalias !1371

  store i64 %1431, i64* %152, align 8, !alias.scope !1371, !noalias !1374

  %1432 = load i64, i64* %18, align 8

  %1433 = add i64 %1432, -296

  %1434 = trunc i64 %1431 to i32

  %1435 = inttoptr i64 %1433 to i32*

  store i32 %1434, i32* %1435

  %1436 = load i64, i64* %17, align 8

  %1437 = add i64 %1436, 264

  %1438 = icmp ugt i64 %1436, -265

  %1439 = zext i1 %1438 to i8

  store i8 %1439, i8* %47, align 1, !tbaa !1376

  %1440 = trunc i64 %1437 to i32

  %1441 = and i32 %1440, 255

  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441) #11

  %1443 = trunc i32 %1442 to i8

  %1444 = and i8 %1443, 1

  %1445 = xor i8 %1444, 1

  store i8 %1445, i8* %48, align 1, !tbaa !1390

  %1446 = xor i64 %1437, %1436

  %1447 = lshr i64 %1446, 4

  %1448 = trunc i64 %1447 to i8

  %1449 = and i8 %1448, 1

  store i8 %1449, i8* %49, align 1, !tbaa !1391

  %1450 = icmp eq i64 %1437, 0

  %1451 = zext i1 %1450 to i8

  store i8 %1451, i8* %50, align 1, !tbaa !1392

  %1452 = lshr i64 %1437, 63

  %1453 = trunc i64 %1452 to i8

  store i8 %1453, i8* %51, align 1, !tbaa !1393

  %1454 = lshr i64 %1436, 63

  %1455 = xor i64 %1452, %1454

  %1456 = add nuw nsw i64 %1455, %1452

  %1457 = icmp eq i64 %1456, 2

  %1458 = zext i1 %1457 to i8

  store i8 %1458, i8* %52, align 1, !tbaa !1394

  %1459 = add i64 %1436, 272

  %1460 = inttoptr i64 %1437 to i64*

  %1461 = load i64, i64* %1460

  store i64 %1461, i64* %14, align 8, !tbaa !1240

  %1462 = add i64 %1436, 280

  %1463 = inttoptr i64 %1459 to i64*

  %1464 = load i64, i64* %1463

  store i64 %1464, i64* %21, align 8, !tbaa !1240

  %1465 = add i64 %1436, 288

  %1466 = inttoptr i64 %1462 to i64*

  %1467 = load i64, i64* %1466

  store i64 %1467, i64* %22, align 8, !tbaa !1240

  %1468 = add i64 %1436, 296

  %1469 = inttoptr i64 %1465 to i64*

  %1470 = load i64, i64* %1469

  store i64 %1470, i64* %23, align 8, !tbaa !1240

  %1471 = add i64 %1436, 304

  %1472 = inttoptr i64 %1468 to i64*

  %1473 = load i64, i64* %1472

  store i64 %1473, i64* %24, align 8, !tbaa !1240

  %1474 = add i64 %1436, 312

  %1475 = inttoptr i64 %1471 to i64*

  %1476 = load i64, i64* %1475

  store i64 %1476, i64* %18, align 8, !tbaa !1240

  %1477 = inttoptr i64 %1474 to i64*

  %1478 = load i64, i64* %1477

  store i64 %1478, i64* %3, align 8, !tbaa !1240

  %1479 = add i64 %1436, 320

  store i64 %1479, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %731



block_400841:                                     ; preds = %block_40082f

  %1480 = sext i32 %263 to i64

  %1481 = inttoptr i64 %259 to i64*

  %1482 = load i64, i64* %1481

  %1483 = sext i32 %263 to i128

  %1484 = and i128 %1483, -18446744073709551616

  %1485 = sext i64 %1482 to i128

  %1486 = and i128 %1485, -18446744073709551616

  %1487 = zext i64 %1480 to i128

  %1488 = or i128 %1484, %1487

  %1489 = zext i64 %1482 to i128

  %1490 = or i128 %1486, %1489

  %1491 = mul nsw i128 %1490, %1488

  %1492 = trunc i128 %1491 to i64

  %1493 = add i64 %266, 13

  %1494 = inttoptr i64 %259 to i64*

  store i64 %1492, i64* %1494

  br label %block_40084e

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400bb0_timer_read(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400bb0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8, !tbaa !1240

  %12 = add i64 %11, -8

  %13 = inttoptr i64 %12 to i64*

  store i64 %10, i64* %13

  %14 = add i64 %11, -12

  %15 = load i32, i32* %5, align 4

  %16 = inttoptr i64 %14 to i32*

  store i32 %15, i32* %16

  %17 = inttoptr i64 %14 to i32*

  %18 = load i32, i32* %17

  %19 = sext i32 %18 to i64

  store i64 %19, i64* %6, align 8, !tbaa !1240

  %20 = shl nsw i64 %19, 3

  %21 = add i64 %20, add (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 16)

  %22 = inttoptr i64 %21 to double*

  %23 = load double, double* %22

  %24 = bitcast %union.VectorReg* %9 to double*

  store double %23, double* %24, align 1, !tbaa !1279

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %26 = bitcast i64* %25 to double*

  store double 0.000000e+00, double* %26, align 1, !tbaa !1279

  %27 = inttoptr i64 %12 to i64*

  %28 = load i64, i64* %27

  store i64 %28, i64* %8, align 8, !tbaa !1240

  %29 = inttoptr i64 %11 to i64*

  %30 = load i64, i64* %29

  store i64 %30, i64* %3, align 8, !tbaa !1240

  %31 = add i64 %11, 8

  store i64 %31, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400690_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400690:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64* %4, align 8, !tbaa !1240

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)) to i8), i8* %11, align 1, !tbaa !1376

  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)) to i32), i32 255)) #11

  %13 = trunc i32 %12 to i8

  %14 = and i8 %13, 1

  %15 = xor i8 %14, 1

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %15, i8* %16, align 1, !tbaa !1390

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64))), i64 4) to i8), i8 1), i8* %17, align 1, !tbaa !1391

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 0) to i8), i8* %18, align 1, !tbaa !1392

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 63) to i8), i8* %19, align 1, !tbaa !1393

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %20, align 1, !tbaa !1394

  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 0), label %block_4006b8, label %block_4006a1



block_4006b8:                                     ; preds = %block_4006a1, %block_400690

  %21 = inttoptr i64 %9 to i64*

  %22 = load i64, i64* %21

  store i64 %22, i64* %6, align 8, !tbaa !1240

  %23 = inttoptr i64 %8 to i64*

  %24 = load i64, i64* %23

  store i64 %24, i64* %3, align 8, !tbaa !1240

  %25 = add i64 %8, 8

  store i64 %25, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4006a1:                                     ; preds = %block_400690

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %11, align 1, !tbaa !1376

  store i8 1, i8* %16, align 1, !tbaa !1390

  store i8 1, i8* %18, align 1, !tbaa !1392

  store i8 0, i8* %19, align 1, !tbaa !1393

  store i8 0, i8* %20, align 1, !tbaa !1394

  store i8 0, i8* %17, align 1, !tbaa !1391

  br label %block_4006b8

}



; Function Attrs: noinline

define %struct.Memory* @sub_401e30_wtime_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401e30:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %13 = load i64, i64* %9, align 8

  %14 = load i64, i64* %8, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %9, align 8, !tbaa !1240

  %17 = add i64 %14, -40

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %24 = add i64 %14, -32

  store i64 0, i64* %6, align 8, !tbaa !1240

  %25 = add i64 %14, -16

  %26 = load i64, i64* %7, align 8

  %27 = inttoptr i64 %25 to i64*

  store i64 %26, i64* %27

  store i64 %24, i64* %7, align 8, !tbaa !1240

  %28 = add i64 %1, 28

  %29 = add i64 %14, -48

  %30 = inttoptr i64 %29 to i64*

  store i64 %28, i64* %30

  store i64 %17, i64* %8, align 8, !alias.scope !1395, !noalias !1398

  %31 = tail call i64 @gettimeofday(i64 %24, i64 0), !noalias !1395

  %32 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%timers_enabled_type* @timers_enabled to i64), i64 4) to i32*)

  %33 = lshr i32 %32, 31

  %34 = trunc i32 %33 to i8

  %35 = load i64, i64* %9, align 8

  %36 = add i64 %35, -28

  %37 = trunc i64 %31 to i32

  %38 = inttoptr i64 %36 to i32*

  store i32 %37, i32* %38

  %39 = icmp ne i8 %34, 0

  %40 = add i64 %35, -24

  br i1 %39, label %block_401e5d, label %block_401e6a



block_401e6a:                                     ; preds = %block_401e5d, %block_401e30

  %41 = phi %struct.Memory* [ %2, %block_401e5d ], [ %2, %block_401e30 ]

  %42 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2016) to double*)

  %43 = bitcast [32 x %union.VectorReg]* %10 to double*

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %45 = inttoptr i64 %40 to i64*

  %46 = load i64, i64* %45

  %47 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%timers_enabled_type* @timers_enabled to i64), i64 4) to i32*)

  %48 = sext i32 %47 to i64

  store i64 %48, i64* %5, align 8, !tbaa !1240

  %49 = sub i64 %46, %48

  %50 = sitofp i64 %49 to double

  %51 = bitcast %union.VectorReg* %11 to double*

  %52 = add i64 %35, -16

  %53 = inttoptr i64 %52 to i64*

  %54 = load i64, i64* %53

  %55 = sitofp i64 %54 to double

  %56 = bitcast %union.VectorReg* %12 to double*

  store double %55, double* %56, align 1, !tbaa !1279

  %57 = fmul double %55, %42

  store double %57, double* %43, align 1, !tbaa !1279

  store i64 0, i64* %44, align 1, !tbaa !1279

  %58 = fadd double %50, %57

  store double %58, double* %51, align 1, !tbaa !1279

  %59 = add i64 %35, -8

  %60 = inttoptr i64 %59 to i64*

  %61 = load i64, i64* %60

  store i64 %61, i64* %4, align 8, !tbaa !1240

  %62 = inttoptr i64 %61 to double*

  store double %58, double* %62

  %63 = load i64, i64* %8, align 8

  %64 = add i64 %63, 32

  %65 = icmp ugt i64 %63, -33

  %66 = zext i1 %65 to i8

  store i8 %66, i8* %18, align 1, !tbaa !1376

  %67 = trunc i64 %64 to i32

  %68 = and i32 %67, 255

  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #11

  %70 = trunc i32 %69 to i8

  %71 = and i8 %70, 1

  %72 = xor i8 %71, 1

  store i8 %72, i8* %19, align 1, !tbaa !1390

  %73 = xor i64 %64, %63

  %74 = lshr i64 %73, 4

  %75 = trunc i64 %74 to i8

  %76 = and i8 %75, 1

  store i8 %76, i8* %20, align 1, !tbaa !1391

  %77 = icmp eq i64 %64, 0

  %78 = zext i1 %77 to i8

  store i8 %78, i8* %21, align 1, !tbaa !1392

  %79 = lshr i64 %64, 63

  %80 = trunc i64 %79 to i8

  store i8 %80, i8* %22, align 1, !tbaa !1393

  %81 = lshr i64 %63, 63

  %82 = xor i64 %79, %81

  %83 = add nuw nsw i64 %82, %79

  %84 = icmp eq i64 %83, 2

  %85 = zext i1 %84 to i8

  store i8 %85, i8* %23, align 1, !tbaa !1394

  %86 = add i64 %63, 40

  %87 = inttoptr i64 %64 to i64*

  %88 = load i64, i64* %87

  store i64 %88, i64* %9, align 8, !tbaa !1240

  %89 = inttoptr i64 %86 to i64*

  %90 = load i64, i64* %89

  store i64 %90, i64* %3, align 8, !tbaa !1240

  %91 = add i64 %63, 48

  store i64 %91, i64* %8, align 8, !tbaa !1240

  ret %struct.Memory* %41



block_401e5d:                                     ; preds = %block_401e30

  %92 = inttoptr i64 %40 to i64*

  %93 = load i64, i64* %92

  %94 = trunc i64 %93 to i32

  store i32 %94, i32* inttoptr (i64 add (i64 ptrtoint (%timers_enabled_type* @timers_enabled to i64), i64 4) to i32*)

  br label %block_401e6a

}



; Function Attrs: noinline

define %struct.Memory* @sub_400650__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400650:

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

  store i8 0, i8* %13, align 1, !tbaa !1376

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 240

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %14, align 1, !tbaa !1390

  %31 = icmp eq i64 %24, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %15, align 1, !tbaa !1392

  %33 = lshr i64 %21, 63

  %34 = trunc i64 %33 to i8

  store i8 %34, i8* %16, align 1, !tbaa !1393

  store i8 0, i8* %17, align 1, !tbaa !1394

  store i8 0, i8* %18, align 1, !tbaa !1391

  %35 = load i64, i64* %4, align 8

  %36 = add i64 %24, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = add i64 %24, -16

  %39 = inttoptr i64 %38 to i64*

  store i64 %36, i64* %39

  store i64 ptrtoint (i64 ()* @callback_sub_401f20___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401eb0___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  store i64 %38, i64* %9, align 8, !alias.scope !1400, !noalias !1403

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401eb0___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401f20___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1400

  store i64 %50, i64* %4, align 8, !alias.scope !1400, !noalias !1403

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400700___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400700:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* getelementptr inbounds (%seg_6030b0__bss_type, %seg_6030b0__bss_type* @seg_6030b0__bss, i32 0, i32 0, i32 0)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1376

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #11

  %9 = trunc i32 %8 to i8

  %10 = and i8 %9, 1

  %11 = xor i8 %10, 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %11, i8* %12, align 1, !tbaa !1390

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1391

  %14 = icmp eq i8 %5, 0

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %15, i8* %16, align 1, !tbaa !1392

  %17 = lshr i8 %5, 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %17, i8* %18, align 1, !tbaa !1393

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %19, align 1, !tbaa !1394

  %20 = select i1 %14, i64 9, i64 32

  %21 = add i64 %20, %1

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  br i1 %14, label %block_400709, label %block_400720



block_400720:                                     ; preds = %block_400700

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_400709:                                     ; preds = %block_400700

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

  %35 = tail call %struct.Memory* @sub_400690_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

  store i8 1, i8* getelementptr inbounds (%seg_6030b0__bss_type, %seg_6030b0__bss_type* @seg_6030b0__bss, i32 0, i32 0, i32 0)

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

define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400590:

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

  store i8 0, i8* %8, align 1, !tbaa !1376

  %15 = trunc i64 %14 to i32

  %16 = and i32 %15, 255

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #11

  %18 = trunc i32 %17 to i8

  %19 = and i8 %18, 1

  %20 = xor i8 %19, 1

  store i8 %20, i8* %9, align 1, !tbaa !1390

  %21 = icmp eq i64 %14, 0

  %22 = zext i1 %21 to i8

  store i8 %22, i8* %11, align 1, !tbaa !1392

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1393

  store i8 0, i8* %13, align 1, !tbaa !1394

  store i8 0, i8* %10, align 1, !tbaa !1391

  %25 = select i1 %21, i64 18, i64 16

  %26 = add i64 %25, %1

  br i1 %21, label %block_4005a2, label %block_4005a0



block_4005a2:                                     ; preds = %block_4005a0, %block_400590

  %27 = phi i64 [ %7, %block_400590 ], [ %58, %block_4005a0 ]

  %28 = phi %struct.Memory* [ %2, %block_400590 ], [ %57, %block_4005a0 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1376

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #11

  %35 = trunc i32 %34 to i8

  %36 = and i8 %35, 1

  %37 = xor i8 %36, 1

  store i8 %37, i8* %9, align 1, !tbaa !1390

  %38 = xor i64 %29, %27

  %39 = lshr i64 %38, 4

  %40 = trunc i64 %39 to i8

  %41 = and i8 %40, 1

  store i8 %41, i8* %10, align 1, !tbaa !1391

  %42 = icmp eq i64 %29, 0

  %43 = zext i1 %42 to i8

  store i8 %43, i8* %11, align 1, !tbaa !1392

  %44 = lshr i64 %29, 63

  %45 = trunc i64 %44 to i8

  store i8 %45, i8* %12, align 1, !tbaa !1393

  %46 = lshr i64 %27, 63

  %47 = xor i64 %44, %46

  %48 = add nuw nsw i64 %47, %44

  %49 = icmp eq i64 %48, 2

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1394

  %51 = inttoptr i64 %29 to i64*

  %52 = load i64, i64* %51

  store i64 %52, i64* %3, align 8, !tbaa !1240

  %53 = add i64 %27, 16

  store i64 %53, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %28



block_4005a0:                                     ; preds = %block_400590

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_4005a2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400730_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400730:

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

  %12 = tail call %struct.Memory* @sub_4006c0_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401eb0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401eb0:

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

  %47 = add i64 %1, -6432

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_401f06, label %block_401ee6



block_401f06.loopexit:                            ; preds = %block_401ef0

  br label %block_401f06



block_401f06:                                     ; preds = %block_401f06.loopexit, %block_401eb0

  %57 = phi %struct.Memory* [ %51, %block_401eb0 ], [ %119, %block_401f06.loopexit ]

  %58 = load i64, i64* %12, align 8

  %59 = add i64 %58, 8

  %60 = icmp ugt i64 %58, -9

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %41, align 1, !tbaa !1376

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #11

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %42, align 1, !tbaa !1390

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %43, align 1, !tbaa !1391

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %44, align 1, !tbaa !1392

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %45, align 1, !tbaa !1393

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %46, align 1, !tbaa !1394

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



block_401ee6:                                     ; preds = %block_401eb0

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1376

  store i8 1, i8* %42, align 1, !tbaa !1390

  store i8 1, i8* %44, align 1, !tbaa !1392

  store i8 0, i8* %45, align 1, !tbaa !1393

  store i8 0, i8* %46, align 1, !tbaa !1394

  store i8 0, i8* %43, align 1, !tbaa !1391

  %102 = add i64 %56, 10

  br label %block_401ef0



block_401ef0:                                     ; preds = %block_401ef0, %block_401ee6

  %103 = phi i64 [ 0, %block_401ee6 ], [ %122, %block_401ef0 ]

  %104 = phi i64 [ %102, %block_401ee6 ], [ %150, %block_401ef0 ]

  %105 = phi %struct.Memory* [ %51, %block_401ee6 ], [ %119, %block_401ef0 ]

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

  store i8 %127, i8* %41, align 1, !tbaa !1376

  %128 = trunc i64 %125 to i32

  %129 = and i32 %128, 255

  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #11

  %131 = trunc i32 %130 to i8

  %132 = and i8 %131, 1

  %133 = xor i8 %132, 1

  store i8 %133, i8* %42, align 1, !tbaa !1390

  %134 = xor i64 %122, %124

  %135 = xor i64 %134, %125

  %136 = lshr i64 %135, 4

  %137 = trunc i64 %136 to i8

  %138 = and i8 %137, 1

  store i8 %138, i8* %43, align 1, !tbaa !1391

  %139 = icmp eq i64 %125, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %44, align 1, !tbaa !1392

  %141 = lshr i64 %125, 63

  %142 = trunc i64 %141 to i8

  store i8 %142, i8* %45, align 1, !tbaa !1393

  %143 = lshr i64 %124, 63

  %144 = xor i64 %123, %143

  %145 = xor i64 %141, %143

  %146 = add nuw nsw i64 %145, %144

  %147 = icmp eq i64 %146, 2

  %148 = zext i1 %147 to i8

  store i8 %148, i8* %46, align 1, !tbaa !1394

  %149 = select i1 %139, i64 9, i64 -13

  %150 = add i64 %121, %149

  br i1 %139, label %block_401f06.loopexit, label %block_401ef0

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401f24__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401f24:

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

  store i8 %24, i8* %7, align 1, !tbaa !1376

  %25 = trunc i64 %5 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %8, align 1, !tbaa !1390

  store i8 %12, i8* %13, align 1, !tbaa !1391

  %31 = icmp eq i64 %5, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %14, align 1, !tbaa !1392

  %33 = trunc i64 %17 to i8

  store i8 %33, i8* %16, align 1, !tbaa !1393

  store i8 %21, i8* %22, align 1, !tbaa !1394

  %34 = inttoptr i64 %5 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %3, align 8, !tbaa !1240

  %36 = add i64 %5, 8

  store i64 %36, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400b60_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400b60:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8, !tbaa !1240

  %12 = add i64 %11, -8

  %13 = inttoptr i64 %12 to i64*

  store i64 %10, i64* %13

  store i64 %12, i64* %8, align 8, !tbaa !1240

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %20 = add i64 %11, -12

  %21 = load i32, i32* %5, align 4

  %22 = inttoptr i64 %20 to i32*

  store i32 %21, i32* %22

  %23 = add i64 %1, -32

  %24 = add i64 %1, 16

  %25 = add i64 %11, -48

  %26 = inttoptr i64 %25 to i64*

  store i64 %24, i64* %26

  store i64 %25, i64* %7, align 8, !tbaa !1240

  %27 = tail call %struct.Memory* @sub_400b40_elapsed_time(%struct.State* nonnull %0, i64 %23, %struct.Memory* %2)

  %28 = load i64, i64* %8, align 8

  %29 = add i64 %28, -24

  %30 = bitcast %union.VectorReg* %9 to double*

  %31 = load double, double* %30, align 1

  %32 = inttoptr i64 %29 to double*

  store double %31, double* %32

  %33 = inttoptr i64 %29 to double*

  %34 = load double, double* %33

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %36 = add i64 %28, -4

  %37 = inttoptr i64 %36 to i32*

  %38 = load i32, i32* %37

  %39 = sext i32 %38 to i64

  %40 = shl nsw i64 %39, 3

  %41 = add i64 %40, add (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 528)

  %42 = inttoptr i64 %41 to double*

  %43 = load double, double* %42

  %44 = fsub double %34, %43

  %45 = add i64 %28, -16

  %46 = inttoptr i64 %45 to double*

  store double %44, double* %46

  %47 = inttoptr i64 %45 to double*

  %48 = load double, double* %47

  %49 = inttoptr i64 %36 to i32*

  %50 = load i32, i32* %49

  %51 = sext i32 %50 to i64

  store i64 %51, i64* %6, align 8, !tbaa !1240

  %52 = shl nsw i64 %51, 3

  %53 = add i64 %52, add (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 16)

  %54 = inttoptr i64 %53 to double*

  %55 = load double, double* %54

  %56 = fadd double %48, %55

  store double %56, double* %30, align 1, !tbaa !1279

  store i64 0, i64* %35, align 1, !tbaa !1279

  %57 = inttoptr i64 %53 to double*

  store double %56, double* %57

  %58 = load i64, i64* %7, align 8

  %59 = add i64 %58, 32

  %60 = icmp ugt i64 %58, -33

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %14, align 1, !tbaa !1376

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #11

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %15, align 1, !tbaa !1390

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %16, align 1, !tbaa !1391

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %17, align 1, !tbaa !1392

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %18, align 1, !tbaa !1393

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %19, align 1, !tbaa !1394

  %81 = add i64 %58, 40

  %82 = inttoptr i64 %59 to i64*

  %83 = load i64, i64* %82

  store i64 %83, i64* %8, align 8, !tbaa !1240

  %84 = inttoptr i64 %81 to i64*

  %85 = load i64, i64* %84

  store i64 %85, i64* %3, align 8, !tbaa !1240

  %86 = add i64 %58, 48

  store i64 %86, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %27

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401b30_randlc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401b30:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %14 = load i64, i64* %7, align 8

  %15 = load i64, i64* %6, align 8, !tbaa !1240

  %16 = add i64 %15, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %14, i64* %17

  store i64 %16, i64* %6, align 8, !tbaa !1240

  store i64 %16, i64* %7, align 8, !tbaa !1240

  %18 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1984) to double*)

  %19 = bitcast %union.VectorReg* %9 to double*

  store double %18, double* %19, align 1, !tbaa !1279

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %21 = bitcast i64* %20 to double*

  store double 0.000000e+00, double* %21, align 1, !tbaa !1279

  %22 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1992) to double*)

  %23 = bitcast %union.VectorReg* %10 to double*

  store double %22, double* %23, align 1, !tbaa !1279

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %25 = bitcast i64* %24 to double*

  store double 0.000000e+00, double* %25, align 1, !tbaa !1279

  %26 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2000) to double*)

  %27 = bitcast %union.VectorReg* %11 to double*

  store double %26, double* %27, align 1, !tbaa !1279

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %29 = bitcast i64* %28 to double*

  store double 0.000000e+00, double* %29, align 1, !tbaa !1279

  %30 = bitcast %union.VectorReg* %12 to i8*

  %31 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2008) to double*)

  %32 = bitcast %union.VectorReg* %12 to double*

  store double %31, double* %32, align 1, !tbaa !1279

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %34 = bitcast i64* %33 to double*

  store double 0.000000e+00, double* %34, align 1, !tbaa !1279

  %35 = add i64 %15, -16

  %36 = load i64, i64* %5, align 8

  %37 = inttoptr i64 %35 to i64*

  store i64 %36, i64* %37

  %38 = add i64 %15, -24

  %39 = bitcast [32 x %union.VectorReg]* %8 to i8*

  %40 = bitcast [32 x %union.VectorReg]* %8 to double*

  %41 = load double, double* %40, align 1

  %42 = inttoptr i64 %38 to double*

  store double %41, double* %42

  %43 = add i64 %15, -32

  %44 = inttoptr i64 %43 to double*

  store double %31, double* %44

  %45 = add i64 %15, -40

  %46 = inttoptr i64 %45 to double*

  store double %18, double* %46

  %47 = add i64 %15, -48

  %48 = inttoptr i64 %47 to double*

  store double %26, double* %48

  %49 = add i64 %15, -56

  %50 = inttoptr i64 %49 to double*

  store double %22, double* %50

  %51 = bitcast %union.VectorReg* %12 to <2 x i32>*

  %52 = bitcast double %31 to <2 x i32>

  %53 = extractelement <2 x i32> %52, i32 0

  %54 = bitcast [32 x %union.VectorReg]* %8 to i32*

  store i32 %53, i32* %54, align 1, !tbaa !1405

  %55 = extractelement <2 x i32> %52, i32 1

  %56 = getelementptr inbounds i8, i8* %39, i64 4

  %57 = bitcast i8* %56 to i32*

  store i32 %55, i32* %57, align 1, !tbaa !1405

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %59 = load double, double* %40, align 1

  %60 = inttoptr i64 %38 to double*

  %61 = load double, double* %60

  %62 = fmul double %59, %61

  %63 = add i64 %15, -64

  %64 = inttoptr i64 %63 to double*

  store double %62, double* %64

  %65 = inttoptr i64 %63 to double*

  %66 = load double, double* %65

  %67 = tail call double @llvm.trunc.f64(double %66) #11

  %68 = tail call double @llvm.fabs.f64(double %67) #11

  %69 = fcmp ogt double %68, 0x41DFFFFFFFC00000

  %70 = fptosi double %67 to i32

  %71 = sitofp i32 %70 to double

  %72 = select i1 %69, double 0xC1E0000000000000, double %71

  %73 = load i64, i64* %7, align 8

  %74 = add i64 %73, -88

  %75 = inttoptr i64 %74 to double*

  store double %72, double* %75

  %76 = add i64 %73, -16

  %77 = inttoptr i64 %76 to double*

  %78 = load double, double* %77

  %79 = bitcast i64* %58 to double*

  %80 = bitcast %union.VectorReg* %13 to i8*

  %81 = bitcast %union.VectorReg* %11 to <2 x i32>*

  %82 = load <2 x i32>, <2 x i32>* %81, align 1

  %83 = bitcast i64* %28 to <2 x i32>*

  %84 = extractelement <2 x i32> %82, i32 0

  %85 = bitcast %union.VectorReg* %13 to i32*

  store i32 %84, i32* %85, align 1, !tbaa !1405

  %86 = extractelement <2 x i32> %82, i32 1

  %87 = getelementptr inbounds i8, i8* %80, i64 4

  %88 = bitcast i8* %87 to i32*

  store i32 %86, i32* %88, align 1, !tbaa !1405

  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %90 = bitcast %union.VectorReg* %13 to double*

  %91 = load double, double* %90, align 1

  %92 = inttoptr i64 %74 to double*

  %93 = load double, double* %92

  %94 = fmul double %91, %93

  %95 = fsub double %78, %94

  %96 = add i64 %73, -96

  %97 = inttoptr i64 %96 to double*

  store double %95, double* %97

  %98 = add i64 %73, -8

  %99 = inttoptr i64 %98 to i64*

  %100 = load i64, i64* %99

  %101 = load <2 x i32>, <2 x i32>* %51, align 1

  %102 = extractelement <2 x i32> %101, i32 0

  store i32 %102, i32* %54, align 1, !tbaa !1405

  %103 = extractelement <2 x i32> %101, i32 1

  store i32 %103, i32* %57, align 1, !tbaa !1405

  %104 = load double, double* %40, align 1

  %105 = inttoptr i64 %100 to double*

  %106 = load double, double* %105

  %107 = fmul double %104, %106

  %108 = add i64 %73, -56

  %109 = inttoptr i64 %108 to double*

  store double %107, double* %109

  %110 = inttoptr i64 %108 to double*

  %111 = load double, double* %110

  %112 = tail call double @llvm.trunc.f64(double %111) #11

  %113 = tail call double @llvm.fabs.f64(double %112) #11

  %114 = fcmp ogt double %113, 0x41DFFFFFFFC00000

  %115 = fptosi double %112 to i32

  %116 = sitofp i32 %115 to double

  %117 = select i1 %114, double 0xC1E0000000000000, double %116

  %118 = add i64 %73, -104

  %119 = inttoptr i64 %118 to double*

  store double %117, double* %119

  %120 = inttoptr i64 %98 to i64*

  %121 = load i64, i64* %120

  %122 = inttoptr i64 %121 to double*

  %123 = load double, double* %122

  store i32 %84, i32* %85, align 1, !tbaa !1405

  store i32 %86, i32* %88, align 1, !tbaa !1405

  %124 = load i64, i64* %7, align 8

  %125 = add i64 %124, -104

  %126 = load double, double* %90, align 1

  %127 = inttoptr i64 %125 to double*

  %128 = load double, double* %127

  %129 = fmul double %126, %128

  %130 = fsub double %123, %129

  %131 = add i64 %124, -112

  %132 = inttoptr i64 %131 to double*

  store double %130, double* %132

  %133 = add i64 %124, -88

  %134 = inttoptr i64 %133 to double*

  %135 = load double, double* %134

  %136 = inttoptr i64 %131 to double*

  %137 = load double, double* %136

  %138 = fmul double %135, %137

  %139 = add i64 %124, -96

  %140 = inttoptr i64 %139 to double*

  %141 = load double, double* %140

  %142 = inttoptr i64 %125 to double*

  %143 = load double, double* %142

  %144 = fmul double %141, %143

  store double %144, double* %90, align 1, !tbaa !1279

  store i64 0, i64* %89, align 1, !tbaa !1279

  %145 = fadd double %138, %144

  %146 = add i64 %124, -56

  %147 = inttoptr i64 %146 to double*

  store double %145, double* %147

  %148 = load double, double* %32, align 1

  %149 = inttoptr i64 %146 to double*

  %150 = load double, double* %149

  %151 = fmul double %148, %150

  %152 = tail call double @llvm.trunc.f64(double %151) #11

  %153 = tail call double @llvm.fabs.f64(double %152) #11

  %154 = fcmp ogt double %153, 0x41DFFFFFFFC00000

  %155 = fptosi double %152 to i32

  %156 = sitofp i32 %155 to double

  %157 = select i1 %154, double 0xC1E0000000000000, double %156

  %158 = add i64 %124, -64

  %159 = inttoptr i64 %158 to double*

  store double %157, double* %159

  %160 = inttoptr i64 %146 to double*

  %161 = load double, double* %160

  %162 = load <2 x i32>, <2 x i32>* %81, align 1

  %163 = load <2 x i32>, <2 x i32>* %83, align 1

  %164 = extractelement <2 x i32> %162, i32 0

  %165 = bitcast %union.VectorReg* %12 to i32*

  store i32 %164, i32* %165, align 1, !tbaa !1405

  %166 = extractelement <2 x i32> %162, i32 1

  %167 = getelementptr inbounds i8, i8* %30, i64 4

  %168 = bitcast i8* %167 to i32*

  store i32 %166, i32* %168, align 1, !tbaa !1405

  %169 = extractelement <2 x i32> %163, i32 0

  %170 = bitcast i64* %33 to i32*

  store i32 %169, i32* %170, align 1, !tbaa !1405

  %171 = extractelement <2 x i32> %163, i32 1

  %172 = getelementptr inbounds i8, i8* %30, i64 12

  %173 = bitcast i8* %172 to i32*

  store i32 %171, i32* %173, align 1, !tbaa !1405

  %174 = load i64, i64* %7, align 8

  %175 = add i64 %174, -64

  %176 = load double, double* %32, align 1

  %177 = inttoptr i64 %175 to double*

  %178 = load double, double* %177

  %179 = fmul double %176, %178

  store double %179, double* %32, align 1, !tbaa !1279

  %180 = fsub double %161, %179

  %181 = add i64 %174, -120

  %182 = inttoptr i64 %181 to double*

  store double %180, double* %182

  %183 = bitcast <2 x i32> %162 to double

  %184 = inttoptr i64 %181 to double*

  %185 = load double, double* %184

  %186 = fmul double %183, %185

  %187 = add i64 %174, -96

  %188 = inttoptr i64 %187 to double*

  %189 = load double, double* %188

  %190 = add i64 %174, -112

  %191 = inttoptr i64 %190 to double*

  %192 = load double, double* %191

  %193 = fmul double %189, %192

  %194 = fadd double %193, %186

  store double %194, double* %27, align 1, !tbaa !1279

  %195 = bitcast i64* %28 to <2 x i32>*

  store <2 x i32> %163, <2 x i32>* %195, align 1, !tbaa !1279

  %196 = add i64 %174, -72

  %197 = inttoptr i64 %196 to double*

  store double %194, double* %197

  %198 = bitcast %union.VectorReg* %9 to <2 x i32>*

  %199 = load <2 x i32>, <2 x i32>* %198, align 1

  %200 = load i64, i64* %20, align 1

  %201 = extractelement <2 x i32> %199, i32 0

  store i32 %201, i32* %54, align 1, !tbaa !1405

  %202 = extractelement <2 x i32> %199, i32 1

  store i32 %202, i32* %57, align 1, !tbaa !1405

  %203 = load double, double* %40, align 1

  %204 = inttoptr i64 %196 to double*

  %205 = load double, double* %204

  %206 = fmul double %203, %205

  %207 = tail call double @llvm.trunc.f64(double %206) #11

  %208 = tail call double @llvm.fabs.f64(double %207) #11

  %209 = fcmp ogt double %208, 0x41DFFFFFFFC00000

  %210 = fptosi double %207 to i32

  %211 = zext i32 %210 to i64

  %212 = select i1 %209, i64 2147483648, i64 %211

  store i64 %212, i64* %4, align 8, !tbaa !1240

  %213 = trunc i64 %212 to i32

  %214 = sitofp i32 %213 to double

  %215 = add i64 %174, -80

  %216 = inttoptr i64 %215 to double*

  store double %214, double* %216

  %217 = inttoptr i64 %196 to double*

  %218 = load double, double* %217

  %219 = load double, double* %23, align 1

  %220 = inttoptr i64 %215 to double*

  %221 = load double, double* %220

  %222 = fmul double %219, %221

  store double %222, double* %23, align 1, !tbaa !1279

  %223 = fsub double %218, %222

  %224 = load i64, i64* %7, align 8

  %225 = add i64 %224, -8

  %226 = inttoptr i64 %225 to i64*

  %227 = load i64, i64* %226

  %228 = inttoptr i64 %227 to double*

  store double %223, double* %228

  %229 = inttoptr i64 %225 to i64*

  %230 = load i64, i64* %229

  store i64 %230, i64* %5, align 8, !tbaa !1240

  %231 = bitcast <2 x i32> %199 to double

  %232 = inttoptr i64 %230 to double*

  %233 = load double, double* %232

  %234 = fmul double %231, %233

  store double %234, double* %19, align 1, !tbaa !1279

  store i64 %200, i64* %20, align 1, !tbaa !1279

  %235 = add i64 %224, -128

  %236 = inttoptr i64 %235 to double*

  store double %234, double* %236

  %237 = inttoptr i64 %235 to double*

  %238 = load double, double* %237

  store double %238, double* %40, align 1, !tbaa !1279

  store double 0.000000e+00, double* %79, align 1, !tbaa !1279

  %239 = load i64, i64* %6, align 8, !tbaa !1240

  %240 = add i64 %239, 8

  %241 = inttoptr i64 %239 to i64*

  %242 = load i64, i64* %241

  store i64 %242, i64* %7, align 8, !tbaa !1240

  %243 = inttoptr i64 %240 to i64*

  %244 = load i64, i64* %243

  store i64 %244, i64* %3, align 8, !tbaa !1240

  %245 = add i64 %239, 16

  store i64 %245, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4005b0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4005b0:

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

  %10 = icmp eq i64 %9, 4195772

  br i1 %10, label %block_4005bc, label %12



block_4005bc:                                     ; preds = %block_4005b0

  store i64 4195776, i64* %3, align 8

  %11 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 4195776, %struct.Memory* %2)

  ret %struct.Memory* %11



; <label>:12:                                     ; preds = %block_4005b0

  %13 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %13

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006c0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4006c0:

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

  store i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64* %4, align 8, !tbaa !1240

  store i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3)), i64 1), i64* %5, align 8, !tbaa !1240

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !1407

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3)), i64 1) to i32), i32 255)) #11

  %19 = trunc i32 %18 to i8

  %20 = and i8 %19, 1

  %21 = xor i8 %20, 1

  store i8 %21, i8* %13, align 1, !tbaa !1407

  store i8 0, i8* %14, align 1, !tbaa !1407

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !1407

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !1407

  store i8 0, i8* %17, align 1, !tbaa !1407

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 4294967295), i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64)), i64 3)), i64 1), i64 0), label %block_4006f8, label %block_4006e3



block_4006f8:                                     ; preds = %block_4006e3, %block_4006c0

  %22 = inttoptr i64 %10 to i64*

  %23 = load i64, i64* %22

  store i64 %23, i64* %7, align 8, !tbaa !1240

  %24 = inttoptr i64 %9 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %9, 8

  store i64 %26, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4006e3:                                     ; preds = %block_4006c0

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1376

  store i8 1, i8* %13, align 1, !tbaa !1390

  store i8 1, i8* %15, align 1, !tbaa !1392

  store i8 0, i8* %16, align 1, !tbaa !1393

  store i8 0, i8* %17, align 1, !tbaa !1394

  store i8 0, i8* %14, align 1, !tbaa !1391

  br label %block_4006f8

}



; Function Attrs: noinline

define %struct.Memory* @sub_400b10_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400b10:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8, !tbaa !1240

  %12 = add i64 %11, -8

  %13 = inttoptr i64 %12 to i64*

  store i64 %10, i64* %13

  store i64 %12, i64* %8, align 8, !tbaa !1240

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %20 = add i64 %11, -12

  %21 = load i32, i32* %5, align 4

  %22 = inttoptr i64 %20 to i32*

  store i32 %21, i32* %22

  %23 = add i64 %1, 48

  %24 = add i64 %1, 16

  %25 = add i64 %11, -32

  %26 = inttoptr i64 %25 to i64*

  store i64 %24, i64* %26

  store i64 %25, i64* %7, align 8, !tbaa !1240

  %27 = tail call %struct.Memory* @sub_400b40_elapsed_time(%struct.State* nonnull %0, i64 %23, %struct.Memory* %2)

  %28 = load i64, i64* %8, align 8

  %29 = add i64 %28, -4

  %30 = inttoptr i64 %29 to i32*

  %31 = load i32, i32* %30

  %32 = sext i32 %31 to i64

  store i64 %32, i64* %6, align 8, !tbaa !1240

  %33 = shl nsw i64 %32, 3

  %34 = add i64 %33, add (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 528)

  %35 = bitcast %union.VectorReg* %9 to double*

  %36 = load double, double* %35, align 1

  %37 = inttoptr i64 %34 to double*

  store double %36, double* %37

  %38 = load i64, i64* %7, align 8

  %39 = add i64 %38, 16

  %40 = icmp ugt i64 %38, -17

  %41 = zext i1 %40 to i8

  store i8 %41, i8* %14, align 1, !tbaa !1376

  %42 = trunc i64 %39 to i32

  %43 = and i32 %42, 255

  %44 = tail call i32 @llvm.ctpop.i32(i32 %43) #11

  %45 = trunc i32 %44 to i8

  %46 = and i8 %45, 1

  %47 = xor i8 %46, 1

  store i8 %47, i8* %15, align 1, !tbaa !1390

  %48 = xor i64 %38, 16

  %49 = xor i64 %48, %39

  %50 = lshr i64 %49, 4

  %51 = trunc i64 %50 to i8

  %52 = and i8 %51, 1

  store i8 %52, i8* %16, align 1, !tbaa !1391

  %53 = icmp eq i64 %39, 0

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %17, align 1, !tbaa !1392

  %55 = lshr i64 %39, 63

  %56 = trunc i64 %55 to i8

  store i8 %56, i8* %18, align 1, !tbaa !1393

  %57 = lshr i64 %38, 63

  %58 = xor i64 %55, %57

  %59 = add nuw nsw i64 %58, %55

  %60 = icmp eq i64 %59, 2

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %19, align 1, !tbaa !1394

  %62 = add i64 %38, 24

  %63 = inttoptr i64 %39 to i64*

  %64 = load i64, i64* %63

  store i64 %64, i64* %8, align 8, !tbaa !1240

  %65 = inttoptr i64 %62 to i64*

  %66 = load i64, i64* %65

  store i64 %66, i64* %3, align 8, !tbaa !1240

  %67 = add i64 %38, 32

  store i64 %67, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %27

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401f20___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401f20:

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

define %struct.Memory* @sub_400bd0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400bd0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %6 = bitcast %union.anon* %5 to i8*

  %7 = bitcast %union.anon* %4 to i32*

  %8 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %11 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %27 = load i64, i64* %15, align 8

  %28 = load i64, i64* %14, align 8, !tbaa !1240

  %29 = add i64 %28, -8

  %30 = inttoptr i64 %29 to i64*

  store i64 %27, i64* %30

  store i64 %29, i64* %15, align 8, !tbaa !1240

  %31 = load i64, i64* %23, align 8

  %32 = add i64 %28, -16

  %33 = inttoptr i64 %32 to i64*

  store i64 %31, i64* %33

  %34 = load i64, i64* %22, align 8

  %35 = add i64 %28, -24

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = load i64, i64* %21, align 8

  %38 = add i64 %28, -32

  %39 = inttoptr i64 %38 to i64*

  store i64 %37, i64* %39

  %40 = load i64, i64* %20, align 8

  %41 = add i64 %28, -40

  %42 = inttoptr i64 %41 to i64*

  store i64 %40, i64* %42

  %43 = load i64, i64* %9, align 8

  %44 = add i64 %28, -48

  %45 = inttoptr i64 %44 to i64*

  store i64 %43, i64* %45

  %46 = add i64 %28, -424

  %47 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 928), i64* %13, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 939), i64* %12, align 8, !tbaa !1240

  %53 = bitcast [32 x %union.VectorReg]* %24 to i8*

  %54 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 808) to double*)

  %55 = bitcast [32 x %union.VectorReg]* %24 to double*

  store double %54, double* %55, align 1, !tbaa !1279

  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %57 = bitcast i64* %56 to double*

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %58 = add i64 %28, -52

  %59 = inttoptr i64 %58 to i32*

  store i32 0, i32* %59

  %60 = add i64 %28, -192

  %61 = inttoptr i64 %60 to double*

  store double %54, double* %61

  %62 = add i64 %28, -200

  %63 = inttoptr i64 %62 to double*

  store double %54, double* %63

  %64 = add i64 %28, -208

  %65 = inttoptr i64 %64 to double*

  store double %54, double* %65

  %66 = add i64 %1, 84

  %67 = add i64 %28, -432

  %68 = inttoptr i64 %67 to i64*

  store i64 %66, i64* %68

  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %71 = inttoptr i64 %67 to i64*

  %72 = load i64, i64* %71

  store i64 %72, i64* %3, align 8, !alias.scope !1408, !noalias !1411

  store i64 %46, i64* %14, align 8, !alias.scope !1408, !noalias !1411

  %73 = tail call i64 @fopen(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 928), i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 939))

  %74 = load i64, i64* %15, align 8

  %75 = add i64 %74, -208

  %76 = load i64, i64* %3, align 8

  %77 = inttoptr i64 %75 to i64*

  store i64 %73, i64* %77

  %78 = icmp eq i64 %73, 0

  %79 = select i1 %78, i64 17, i64 33

  %80 = add i64 %76, %79

  br i1 %78, label %block_400c35, label %block_400c45



block_400d7e:                                     ; preds = %block_400d4f

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 16), i64* %10, align 8, !tbaa !1240

  %81 = load i64, i64* %15, align 8

  %82 = add i64 %81, -140

  %83 = inttoptr i64 %82 to i32*

  store i32 256, i32* %83

  %84 = load double, double* inttoptr (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8) to double*)

  store double %84, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  store i64 ptrtoint (%dum_type* @dum to i64), i64* %12, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 16), i64* %11, align 8, !tbaa !1240

  %85 = add i64 %1618, 3842

  %86 = add i64 %1618, 49

  %87 = load i64, i64* %14, align 8, !tbaa !1240

  %88 = add i64 %87, -8

  %89 = inttoptr i64 %88 to i64*

  store i64 %86, i64* %89

  store i64 %88, i64* %14, align 8, !tbaa !1240

  %90 = tail call %struct.Memory* @sub_401c80_vranlc(%struct.State* nonnull %0, i64 %85, %struct.Memory* %1620)

  %91 = load i64, i64* %3, align 8

  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 ptrtoint (%dum_type* @dum to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 8)) to i8), i8* %47, align 1, !tbaa !1376

  %92 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8) to i32), i32 255)) #11

  %93 = trunc i32 %92 to i8

  %94 = and i8 %93, 1

  %95 = xor i8 %94, 1

  store i8 %95, i8* %48, align 1, !tbaa !1390

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8)), i64 4) to i8), i8 1), i8* %49, align 1, !tbaa !1391

  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 0) to i8), i8* %50, align 1, !tbaa !1392

  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 63) to i8), i8* %51, align 1, !tbaa !1393

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 63), i64 lshr (i64 ptrtoint (%dum_type* @dum to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64 63)), i64 2) to i8), i8* %52, align 1, !tbaa !1394

  %96 = load double, double* inttoptr (i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 16) to double*)

  store double %96, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  store i64 add (i64 ptrtoint (%dum_type* @dum to i64), i64 8), i64* %13, align 8, !tbaa !1240

  %97 = add i64 %91, 3457

  %98 = add i64 %91, 31

  %99 = load i64, i64* %14, align 8, !tbaa !1240

  %100 = add i64 %99, -8

  %101 = inttoptr i64 %100 to i64*

  store i64 %98, i64* %101

  store i64 %100, i64* %14, align 8, !tbaa !1240

  %102 = tail call %struct.Memory* @sub_401b30_randlc(%struct.State* nonnull %0, i64 %97, %struct.Memory* %90)

  %103 = load i64, i64* %3, align 8

  %104 = load double, double* %55, align 1

  store double %104, double* bitcast (%dum_type* @dum to double*)

  %105 = load i64, i64* %15, align 8

  %106 = add i64 %105, -144

  %107 = add i64 %103, 19

  %108 = inttoptr i64 %106 to i32*

  store i32 0, i32* %108

  br label %block_400de1



block_400ff7:                                     ; preds = %block_400fe5

  %109 = add i64 %478, -72

  store i64 %109, i64* %13, align 8, !tbaa !1240

  %110 = inttoptr i64 %109 to double*

  %111 = load double, double* %110

  store double %111, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %112 = add i64 %493, 2873

  %113 = add i64 %493, 14

  %114 = load i64, i64* %14, align 8, !tbaa !1240

  %115 = add i64 %114, -8

  %116 = inttoptr i64 %115 to i64*

  store i64 %113, i64* %116

  store i64 %115, i64* %14, align 8, !tbaa !1240

  %117 = tail call %struct.Memory* @sub_401b30_randlc(%struct.State* nonnull %0, i64 %112, %struct.Memory* %479)

  %118 = load i64, i64* %15, align 8

  %119 = add i64 %118, -80

  %120 = load i64, i64* %3, align 8

  %121 = load double, double* %55, align 1

  %122 = inttoptr i64 %119 to double*

  store double %121, double* %122

  %123 = add i64 %118, -148

  %124 = inttoptr i64 %123 to i32*

  %125 = load i32, i32* %124

  %126 = add i64 %118, -152

  %127 = inttoptr i64 %126 to i32*

  store i32 %125, i32* %127

  %128 = add i64 %118, -144

  %129 = inttoptr i64 %128 to i32*

  %130 = load i32, i32* %129

  %131 = add i32 %130, 1

  %132 = inttoptr i64 %128 to i32*

  store i32 %131, i32* %132

  %133 = add i64 %120, -119

  br label %block_400f8e



block_401078:                                     ; preds = %block_401042, %block_40106e

  %134 = phi i64 [ %937, %block_401042 ], [ %476, %block_40106e ]

  %135 = phi %struct.Memory* [ %932, %block_401042 ], [ %475, %block_40106e ]

  %136 = load i32, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  %137 = icmp eq i32 %136, 0

  %138 = select i1 %137, i64 24, i64 14

  %139 = add i64 %134, %138

  br i1 %137, label %block_401090, label %block_401086



block_400ff2:                                     ; preds = %block_400fe5

  %140 = add i64 %493, 56

  br label %block_40102a



block_400df1:                                     ; preds = %block_400de1

  %141 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 896) to double*)

  store double %141, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %142 = load i64, i64* bitcast (%x_type* @x to i64*)

  %143 = sext i32 %598 to i64

  store i64 %143, i64* %10, align 8, !tbaa !1240

  %144 = shl nsw i64 %143, 3

  %145 = add i64 %144, %142

  %146 = inttoptr i64 %145 to double*

  store double %141, double* %146

  %147 = inttoptr i64 %106 to i32*

  %148 = load i32, i32* %147

  %149 = add i32 %148, 1

  %150 = inttoptr i64 %106 to i32*

  store i32 %149, i32* %150

  %151 = add i64 %609, -16

  br label %block_400de1



block_4013ef:                                     ; preds = %block_4012ca, %block_4013dd

  %152 = phi i64 [ %761, %block_4012ca ], [ %581, %block_4013dd ]

  %153 = phi %struct.Memory* [ %746, %block_4012ca ], [ %574, %block_4013dd ]

  %154 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 816) to double*)

  store double %154, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %155 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 824) to double*)

  store double %155, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %156 = add i64 %152, 21

  %157 = load i64, i64* %14, align 8, !tbaa !1240

  %158 = add i64 %157, -8

  %159 = inttoptr i64 %158 to i64*

  store i64 %156, i64* %159

  %160 = load i64, i64* %70, align 8, !alias.scope !1413, !noalias !1416

  %161 = load i64, i64* %12, align 8, !alias.scope !1413, !noalias !1416

  %162 = inttoptr i64 %158 to i64*

  %163 = load i64, i64* %162

  store i64 %163, i64* %3, align 8, !alias.scope !1413, !noalias !1416

  store i64 %157, i64* %14, align 8, !alias.scope !1413, !noalias !1416

  %164 = tail call i64 @pow(i64 %160, i64 %161), !noalias !1413

  %165 = load i64, i64* %3, align 8

  %166 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 872) to double*)

  store double %166, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %167 = load i64, i64* %15, align 8

  %168 = add i64 %167, -112

  %169 = load double, double* %55, align 1

  %170 = inttoptr i64 %168 to double*

  %171 = load double, double* %170

  %172 = fdiv double %169, %171

  %173 = fdiv double %172, %166

  store double %173, double* %55, align 1, !tbaa !1279

  %174 = add i64 %167, -56

  %175 = inttoptr i64 %174 to double*

  store double %173, double* %175

  %176 = add i64 %165, 39

  %177 = load i64, i64* %14, align 8, !tbaa !1240

  %178 = add i64 %177, -8

  %179 = inttoptr i64 %178 to i64*

  store i64 %176, i64* %179

  %180 = load i64, i64* %12, align 8, !alias.scope !1418, !noalias !1421

  %181 = load i64, i64* %517, align 8, !alias.scope !1418, !noalias !1421

  %182 = load i64, i64* %516, align 8, !alias.scope !1418, !noalias !1421

  %183 = load i64, i64* %16, align 8, !alias.scope !1418, !noalias !1421

  %184 = load i64, i64* %17, align 8, !alias.scope !1418, !noalias !1421

  %185 = inttoptr i64 %177 to i64*

  %186 = load i64, i64* %185

  %187 = add i64 %177, 8

  %188 = inttoptr i64 %187 to i64*

  %189 = load i64, i64* %188

  %190 = add i64 %177, 16

  %191 = inttoptr i64 %190 to i64*

  %192 = load i64, i64* %191

  %193 = add i64 %177, 24

  %194 = inttoptr i64 %193 to i64*

  %195 = load i64, i64* %194

  %196 = add i64 %177, 32

  %197 = inttoptr i64 %196 to i64*

  %198 = load i64, i64* %197

  %199 = add i64 %177, 40

  %200 = inttoptr i64 %199 to i64*

  %201 = load i64, i64* %200

  %202 = add i64 %177, 48

  %203 = inttoptr i64 %202 to i64*

  %204 = load i64, i64* %203

  %205 = add i64 %177, 56

  %206 = inttoptr i64 %205 to i64*

  %207 = load i64, i64* %206

  %208 = add i64 %177, 64

  %209 = inttoptr i64 %208 to i64*

  %210 = load i64, i64* %209

  %211 = add i64 %177, 72

  %212 = inttoptr i64 %211 to i64*

  %213 = load i64, i64* %212

  %214 = inttoptr i64 %178 to i64*

  %215 = load i64, i64* %214

  store i64 %215, i64* %3, align 8, !alias.scope !1418, !noalias !1421

  store i64 %177, i64* %14, align 8, !alias.scope !1418, !noalias !1421

  %216 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1074), i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198, i64 %201, i64 %204, i64 %207, i64 %210, i64 %213), !noalias !1418

  %217 = load i64, i64* %3, align 8

  %218 = load i64, i64* %15, align 8

  %219 = add i64 %218, -112

  %220 = inttoptr i64 %219 to double*

  %221 = load double, double* %220

  store double %221, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %222 = add i64 %218, -252

  %223 = trunc i64 %216 to i32

  %224 = inttoptr i64 %222 to i32*

  store i32 %223, i32* %224

  %225 = add i64 %217, 28

  %226 = load i64, i64* %14, align 8, !tbaa !1240

  %227 = add i64 %226, -8

  %228 = inttoptr i64 %227 to i64*

  store i64 %225, i64* %228

  %229 = load i64, i64* %12, align 8, !alias.scope !1423, !noalias !1426

  %230 = load i64, i64* %517, align 8, !alias.scope !1423, !noalias !1426

  %231 = load i64, i64* %516, align 8, !alias.scope !1423, !noalias !1426

  %232 = load i64, i64* %16, align 8, !alias.scope !1423, !noalias !1426

  %233 = load i64, i64* %17, align 8, !alias.scope !1423, !noalias !1426

  %234 = inttoptr i64 %226 to i64*

  %235 = load i64, i64* %234

  %236 = add i64 %226, 8

  %237 = inttoptr i64 %236 to i64*

  %238 = load i64, i64* %237

  %239 = add i64 %226, 16

  %240 = inttoptr i64 %239 to i64*

  %241 = load i64, i64* %240

  %242 = add i64 %226, 24

  %243 = inttoptr i64 %242 to i64*

  %244 = load i64, i64* %243

  %245 = add i64 %226, 32

  %246 = inttoptr i64 %245 to i64*

  %247 = load i64, i64* %246

  %248 = add i64 %226, 40

  %249 = inttoptr i64 %248 to i64*

  %250 = load i64, i64* %249

  %251 = add i64 %226, 48

  %252 = inttoptr i64 %251 to i64*

  %253 = load i64, i64* %252

  %254 = add i64 %226, 56

  %255 = inttoptr i64 %254 to i64*

  %256 = load i64, i64* %255

  %257 = add i64 %226, 64

  %258 = inttoptr i64 %257 to i64*

  %259 = load i64, i64* %258

  %260 = add i64 %226, 72

  %261 = inttoptr i64 %260 to i64*

  %262 = load i64, i64* %261

  %263 = inttoptr i64 %227 to i64*

  %264 = load i64, i64* %263

  store i64 %264, i64* %3, align 8, !alias.scope !1423, !noalias !1426

  store i64 %226, i64* %14, align 8, !alias.scope !1423, !noalias !1426

  %265 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1099), i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %235, i64 %238, i64 %241, i64 %244, i64 %247, i64 %250, i64 %253, i64 %256, i64 %259, i64 %262), !noalias !1423

  %266 = load i64, i64* %3, align 8

  store i64 24, i64* %12, align 8, !tbaa !1240

  %267 = load i64, i64* %15, align 8

  %268 = add i64 %267, -256

  %269 = trunc i64 %265 to i32

  %270 = inttoptr i64 %268 to i32*

  store i32 %269, i32* %270

  %271 = add i64 %266, 28

  %272 = load i64, i64* %14, align 8, !tbaa !1240

  %273 = add i64 %272, -8

  %274 = inttoptr i64 %273 to i64*

  store i64 %271, i64* %274

  %275 = load i64, i64* %517, align 8, !alias.scope !1428, !noalias !1431

  %276 = load i64, i64* %516, align 8, !alias.scope !1428, !noalias !1431

  %277 = load i64, i64* %16, align 8, !alias.scope !1428, !noalias !1431

  %278 = load i64, i64* %17, align 8, !alias.scope !1428, !noalias !1431

  %279 = inttoptr i64 %272 to i64*

  %280 = load i64, i64* %279

  %281 = add i64 %272, 8

  %282 = inttoptr i64 %281 to i64*

  %283 = load i64, i64* %282

  %284 = add i64 %272, 16

  %285 = inttoptr i64 %284 to i64*

  %286 = load i64, i64* %285

  %287 = add i64 %272, 24

  %288 = inttoptr i64 %287 to i64*

  %289 = load i64, i64* %288

  %290 = add i64 %272, 32

  %291 = inttoptr i64 %290 to i64*

  %292 = load i64, i64* %291

  %293 = add i64 %272, 40

  %294 = inttoptr i64 %293 to i64*

  %295 = load i64, i64* %294

  %296 = add i64 %272, 48

  %297 = inttoptr i64 %296 to i64*

  %298 = load i64, i64* %297

  %299 = add i64 %272, 56

  %300 = inttoptr i64 %299 to i64*

  %301 = load i64, i64* %300

  %302 = add i64 %272, 64

  %303 = inttoptr i64 %302 to i64*

  %304 = load i64, i64* %303

  %305 = add i64 %272, 72

  %306 = inttoptr i64 %305 to i64*

  %307 = load i64, i64* %306

  %308 = inttoptr i64 %273 to i64*

  %309 = load i64, i64* %308

  store i64 %309, i64* %3, align 8, !alias.scope !1428, !noalias !1431

  store i64 %272, i64* %14, align 8, !alias.scope !1428, !noalias !1431

  %310 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1118), i64 24, i64 %275, i64 %276, i64 %277, i64 %278, i64 %280, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304, i64 %307), !noalias !1428

  %311 = load i64, i64* %3, align 8

  %312 = load i64, i64* %15, align 8

  %313 = add i64 %312, -136

  %314 = inttoptr i64 %313 to double*

  %315 = load double, double* %314

  store double %315, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %316 = add i64 %312, -260

  %317 = trunc i64 %310 to i32

  %318 = inttoptr i64 %316 to i32*

  store i32 %317, i32* %318

  %319 = add i64 %311, 31

  %320 = load i64, i64* %14, align 8, !tbaa !1240

  %321 = add i64 %320, -8

  %322 = inttoptr i64 %321 to i64*

  store i64 %319, i64* %322

  %323 = load i64, i64* %12, align 8, !alias.scope !1433, !noalias !1436

  %324 = load i64, i64* %517, align 8, !alias.scope !1433, !noalias !1436

  %325 = load i64, i64* %516, align 8, !alias.scope !1433, !noalias !1436

  %326 = load i64, i64* %16, align 8, !alias.scope !1433, !noalias !1436

  %327 = load i64, i64* %17, align 8, !alias.scope !1433, !noalias !1436

  %328 = inttoptr i64 %320 to i64*

  %329 = load i64, i64* %328

  %330 = add i64 %320, 8

  %331 = inttoptr i64 %330 to i64*

  %332 = load i64, i64* %331

  %333 = add i64 %320, 16

  %334 = inttoptr i64 %333 to i64*

  %335 = load i64, i64* %334

  %336 = add i64 %320, 24

  %337 = inttoptr i64 %336 to i64*

  %338 = load i64, i64* %337

  %339 = add i64 %320, 32

  %340 = inttoptr i64 %339 to i64*

  %341 = load i64, i64* %340

  %342 = add i64 %320, 40

  %343 = inttoptr i64 %342 to i64*

  %344 = load i64, i64* %343

  %345 = add i64 %320, 48

  %346 = inttoptr i64 %345 to i64*

  %347 = load i64, i64* %346

  %348 = add i64 %320, 56

  %349 = inttoptr i64 %348 to i64*

  %350 = load i64, i64* %349

  %351 = add i64 %320, 64

  %352 = inttoptr i64 %351 to i64*

  %353 = load i64, i64* %352

  %354 = add i64 %320, 72

  %355 = inttoptr i64 %354 to i64*

  %356 = load i64, i64* %355

  %357 = inttoptr i64 %321 to i64*

  %358 = load i64, i64* %357

  store i64 %358, i64* %3, align 8, !alias.scope !1433, !noalias !1436

  store i64 %320, i64* %14, align 8, !alias.scope !1433, !noalias !1436

  %359 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1129), i64 %323, i64 %324, i64 %325, i64 %326, i64 %327, i64 %329, i64 %332, i64 %335, i64 %338, i64 %341, i64 %344, i64 %347, i64 %350, i64 %353, i64 %356), !noalias !1433

  %360 = load i64, i64* %3, align 8

  %361 = load i64, i64* %15, align 8

  %362 = add i64 %361, -184

  %363 = inttoptr i64 %362 to double*

  %364 = load double, double* %363

  store double %364, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %365 = add i64 %361, -192

  %366 = inttoptr i64 %365 to double*

  %367 = load double, double* %366

  store double %367, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %368 = add i64 %361, -264

  %369 = trunc i64 %359 to i32

  %370 = inttoptr i64 %368 to i32*

  store i32 %369, i32* %370

  %371 = add i64 %360, 39

  %372 = load i64, i64* %14, align 8, !tbaa !1240

  %373 = add i64 %372, -8

  %374 = inttoptr i64 %373 to i64*

  store i64 %371, i64* %374

  %375 = load i64, i64* %12, align 8, !alias.scope !1438, !noalias !1441

  %376 = load i64, i64* %517, align 8, !alias.scope !1438, !noalias !1441

  %377 = load i64, i64* %516, align 8, !alias.scope !1438, !noalias !1441

  %378 = load i64, i64* %16, align 8, !alias.scope !1438, !noalias !1441

  %379 = load i64, i64* %17, align 8, !alias.scope !1438, !noalias !1441

  %380 = inttoptr i64 %372 to i64*

  %381 = load i64, i64* %380

  %382 = add i64 %372, 8

  %383 = inttoptr i64 %382 to i64*

  %384 = load i64, i64* %383

  %385 = add i64 %372, 16

  %386 = inttoptr i64 %385 to i64*

  %387 = load i64, i64* %386

  %388 = add i64 %372, 24

  %389 = inttoptr i64 %388 to i64*

  %390 = load i64, i64* %389

  %391 = add i64 %372, 32

  %392 = inttoptr i64 %391 to i64*

  %393 = load i64, i64* %392

  %394 = add i64 %372, 40

  %395 = inttoptr i64 %394 to i64*

  %396 = load i64, i64* %395

  %397 = add i64 %372, 48

  %398 = inttoptr i64 %397 to i64*

  %399 = load i64, i64* %398

  %400 = add i64 %372, 56

  %401 = inttoptr i64 %400 to i64*

  %402 = load i64, i64* %401

  %403 = add i64 %372, 64

  %404 = inttoptr i64 %403 to i64*

  %405 = load i64, i64* %404

  %406 = add i64 %372, 72

  %407 = inttoptr i64 %406 to i64*

  %408 = load i64, i64* %407

  %409 = inttoptr i64 %373 to i64*

  %410 = load i64, i64* %409

  store i64 %410, i64* %3, align 8, !alias.scope !1438, !noalias !1441

  store i64 %372, i64* %14, align 8, !alias.scope !1438, !noalias !1441

  %411 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1159), i64 %375, i64 %376, i64 %377, i64 %378, i64 %379, i64 %381, i64 %384, i64 %387, i64 %390, i64 %393, i64 %396, i64 %399, i64 %402, i64 %405, i64 %408), !noalias !1438

  %412 = load i64, i64* %3, align 8

  %413 = load i64, i64* %15, align 8

  %414 = add i64 %413, -268

  %415 = trunc i64 %411 to i32

  %416 = inttoptr i64 %414 to i32*

  store i32 %415, i32* %416

  %417 = add i64 %412, 23

  %418 = load i64, i64* %14, align 8, !tbaa !1240

  %419 = add i64 %418, -8

  %420 = inttoptr i64 %419 to i64*

  store i64 %417, i64* %420

  %421 = load i64, i64* %12, align 8, !alias.scope !1443, !noalias !1446

  %422 = load i64, i64* %517, align 8, !alias.scope !1443, !noalias !1446

  %423 = load i64, i64* %516, align 8, !alias.scope !1443, !noalias !1446

  %424 = load i64, i64* %16, align 8, !alias.scope !1443, !noalias !1446

  %425 = load i64, i64* %17, align 8, !alias.scope !1443, !noalias !1446

  %426 = inttoptr i64 %418 to i64*

  %427 = load i64, i64* %426

  %428 = add i64 %418, 8

  %429 = inttoptr i64 %428 to i64*

  %430 = load i64, i64* %429

  %431 = add i64 %418, 16

  %432 = inttoptr i64 %431 to i64*

  %433 = load i64, i64* %432

  %434 = add i64 %418, 24

  %435 = inttoptr i64 %434 to i64*

  %436 = load i64, i64* %435

  %437 = add i64 %418, 32

  %438 = inttoptr i64 %437 to i64*

  %439 = load i64, i64* %438

  %440 = add i64 %418, 40

  %441 = inttoptr i64 %440 to i64*

  %442 = load i64, i64* %441

  %443 = add i64 %418, 48

  %444 = inttoptr i64 %443 to i64*

  %445 = load i64, i64* %444

  %446 = add i64 %418, 56

  %447 = inttoptr i64 %446 to i64*

  %448 = load i64, i64* %447

  %449 = add i64 %418, 64

  %450 = inttoptr i64 %449 to i64*

  %451 = load i64, i64* %450

  %452 = add i64 %418, 72

  %453 = inttoptr i64 %452 to i64*

  %454 = load i64, i64* %453

  %455 = inttoptr i64 %419 to i64*

  %456 = load i64, i64* %455

  store i64 %456, i64* %3, align 8, !alias.scope !1443, !noalias !1446

  store i64 %418, i64* %14, align 8, !alias.scope !1443, !noalias !1446

  %457 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1185), i64 %421, i64 %422, i64 %423, i64 %424, i64 %425, i64 %427, i64 %430, i64 %433, i64 %436, i64 %439, i64 %442, i64 %445, i64 %448, i64 %451, i64 %454), !noalias !1443

  %458 = load i64, i64* %15, align 8

  %459 = add i64 %458, -144

  %460 = load i64, i64* %3, align 8

  %461 = inttoptr i64 %459 to i32*

  store i32 0, i32* %461

  %462 = add i64 %458, -272

  %463 = trunc i64 %457 to i32

  %464 = add i64 %460, 16

  %465 = inttoptr i64 %462 to i32*

  store i32 %463, i32* %465

  %466 = load i64, i64* %517, align 8

  %467 = load i64, i64* %516, align 8

  %468 = load i64, i64* %16, align 8

  %469 = load i64, i64* %17, align 8

  br label %block_4014d0



block_40106e:                                     ; preds = %block_401042

  store i64 2, i64* %13, align 8, !tbaa !1240

  %470 = add i64 %937, -1294

  %471 = add i64 %937, 10

  %472 = load i64, i64* %14, align 8, !tbaa !1240

  %473 = add i64 %472, -8

  %474 = inttoptr i64 %473 to i64*

  store i64 %471, i64* %474

  store i64 %473, i64* %14, align 8, !tbaa !1240

  %475 = tail call %struct.Memory* @sub_400b60_timer_stop(%struct.State* nonnull %0, i64 %470, %struct.Memory* %932)

  %476 = load i64, i64* %3, align 8

  br label %block_401078



block_400fe5:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_400fd2

  %477 = phi i64 [ %1833, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %623, %block_400fd2 ]

  %478 = phi i64 [ %1797, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %620, %block_400fd2 ]

  %479 = phi %struct.Memory* [ %1798, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %619, %block_400fd2 ]

  %480 = add i64 %478, -148

  %481 = inttoptr i64 %480 to i32*

  %482 = load i32, i32* %481

  store i8 0, i8* %47, align 1, !tbaa !1376

  %483 = and i32 %482, 255

  %484 = tail call i32 @llvm.ctpop.i32(i32 %483) #11

  %485 = trunc i32 %484 to i8

  %486 = and i8 %485, 1

  %487 = xor i8 %486, 1

  store i8 %487, i8* %48, align 1, !tbaa !1390

  store i8 0, i8* %49, align 1, !tbaa !1391

  %488 = icmp eq i32 %482, 0

  %489 = zext i1 %488 to i8

  store i8 %489, i8* %50, align 1, !tbaa !1392

  %490 = lshr i32 %482, 31

  %491 = trunc i32 %490 to i8

  store i8 %491, i8* %51, align 1, !tbaa !1393

  store i8 0, i8* %52, align 1, !tbaa !1394

  %492 = select i1 %488, i64 13, i64 18

  %493 = add i64 %477, %492

  br i1 %488, label %block_400ff2, label %block_400ff7



block_400c62:                                     ; preds = %block_400c35, %block_400c45

  %494 = phi i64 [ %1605, %block_400c45 ], [ %1748, %block_400c35 ]

  %495 = phi %struct.Memory* [ %2, %block_400c45 ], [ %2, %block_400c35 ]

  %496 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 816) to double*)

  store double %496, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %497 = bitcast %union.VectorReg* %25 to i8*

  %498 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 824) to double*)

  %499 = bitcast %union.VectorReg* %25 to double*

  store double %498, double* %499, align 1, !tbaa !1279

  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %501 = bitcast i64* %500 to double*

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %502 = add i64 %494, 21

  %503 = load i64, i64* %14, align 8, !tbaa !1240

  %504 = add i64 %503, -8

  %505 = inttoptr i64 %504 to i64*

  store i64 %502, i64* %505

  %506 = load i64, i64* %70, align 8, !alias.scope !1448, !noalias !1451

  %507 = load i64, i64* %12, align 8, !alias.scope !1448, !noalias !1451

  %508 = inttoptr i64 %504 to i64*

  %509 = load i64, i64* %508

  store i64 %509, i64* %3, align 8, !alias.scope !1448, !noalias !1451

  store i64 %503, i64* %14, align 8, !alias.scope !1448, !noalias !1451

  %510 = tail call i64 @pow(i64 %506, i64 %507), !noalias !1448

  %511 = load i64, i64* %3, align 8

  %512 = add i64 %511, 27

  %513 = load i64, i64* %14, align 8, !tbaa !1240

  %514 = add i64 %513, -8

  %515 = inttoptr i64 %514 to i64*

  store i64 %512, i64* %515

  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %518 = load i64, i64* %517, align 8, !alias.scope !1453, !noalias !1456

  %519 = load i64, i64* %516, align 8, !alias.scope !1453, !noalias !1456

  %520 = load i64, i64* %16, align 8, !alias.scope !1453, !noalias !1456

  %521 = load i64, i64* %17, align 8, !alias.scope !1453, !noalias !1456

  %522 = inttoptr i64 %513 to i64*

  %523 = load i64, i64* %522

  %524 = add i64 %513, 8

  %525 = inttoptr i64 %524 to i64*

  %526 = load i64, i64* %525

  %527 = add i64 %513, 16

  %528 = inttoptr i64 %527 to i64*

  %529 = load i64, i64* %528

  %530 = add i64 %513, 24

  %531 = inttoptr i64 %530 to i64*

  %532 = load i64, i64* %531

  %533 = add i64 %513, 32

  %534 = inttoptr i64 %533 to i64*

  %535 = load i64, i64* %534

  %536 = add i64 %513, 40

  %537 = inttoptr i64 %536 to i64*

  %538 = load i64, i64* %537

  %539 = add i64 %513, 48

  %540 = inttoptr i64 %539 to i64*

  %541 = load i64, i64* %540

  %542 = add i64 %513, 56

  %543 = inttoptr i64 %542 to i64*

  %544 = load i64, i64* %543

  %545 = add i64 %513, 64

  %546 = inttoptr i64 %545 to i64*

  %547 = load i64, i64* %546

  %548 = add i64 %513, 72

  %549 = inttoptr i64 %548 to i64*

  %550 = load i64, i64* %549

  %551 = inttoptr i64 %514 to i64*

  %552 = load i64, i64* %551

  store i64 %552, i64* %3, align 8, !alias.scope !1453, !noalias !1456

  store i64 %513, i64* %14, align 8, !alias.scope !1453, !noalias !1456

  %553 = tail call i64 @sprintf(i64 ptrtoint (%size_type* @size to i64), i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 941), i64 %518, i64 %519, i64 %520, i64 %521, i64 %523, i64 %526, i64 %529, i64 %532, i64 %535, i64 %538, i64 %541, i64 %544, i64 %547, i64 %550), !noalias !1453

  %554 = load i64, i64* %15, align 8

  %555 = add i64 %554, -172

  %556 = load i64, i64* %3, align 8

  %557 = inttoptr i64 %555 to i32*

  store i32 14, i32* %557

  %558 = inttoptr i64 %555 to i32*

  %559 = load i32, i32* %558

  %560 = sext i32 %559 to i64

  %561 = add i64 %560, ptrtoint (%size_type* @size to i64)

  %562 = inttoptr i64 %561 to i8*

  %563 = load i8, i8* %562

  %564 = sext i8 %563 to i32

  %565 = add nsw i32 %564, -46

  %566 = icmp eq i32 %565, 0

  %567 = add i64 %554, -216

  %568 = trunc i64 %553 to i32

  %569 = inttoptr i64 %567 to i32*

  store i32 %568, i32* %569

  %570 = select i1 %566, i64 40, i64 55

  %571 = add i64 %556, %570

  br i1 %566, label %block_400cba, label %block_400cc9



block_4013dd:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79

  %572 = phi i64 [ %883, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79 ], [ %919, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80 ]

  %573 = phi i64 [ %872, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79 ], [ %912, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80 ]

  %574 = phi %struct.Memory* [ %873, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79 ], [ %915, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80 ]

  %575 = add i64 %573, -245

  %576 = inttoptr i64 %575 to i8*

  %577 = load i8, i8* %576

  %578 = and i8 %577, 1

  %579 = zext i8 %578 to i64

  store i64 %579, i64* %10, align 8, !tbaa !1240

  %580 = zext i8 %578 to i32

  %581 = add i64 %572, 18

  store i32 %580, i32* bitcast (%verified_type* @verified to i32*)

  br label %block_4013ef



block_40125c:                                     ; preds = %block_40124e

  store i64 1, i64* %13, align 8, !tbaa !1240

  %582 = add i64 %697, -1788

  %583 = add i64 %697, 10

  %584 = load i64, i64* %14, align 8, !tbaa !1240

  %585 = add i64 %584, -8

  %586 = inttoptr i64 %585 to i64*

  store i64 %583, i64* %586

  store i64 %585, i64* %14, align 8, !tbaa !1240

  %587 = tail call %struct.Memory* @sub_400b60_timer_stop(%struct.State* nonnull %0, i64 %582, %struct.Memory* %2051)

  %588 = load i64, i64* %3, align 8

  %589 = load i64, i64* %15, align 8

  br label %block_401266



block_40165b:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

  %590 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 808) to double*)

  store double %590, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %591 = load i64, i64* %15, align 8

  %592 = add i64 %591, -112

  %593 = add i64 %732, 13

  %594 = inttoptr i64 %592 to double*

  store double %590, double* %594

  br label %block_401668



block_400de1:                                     ; preds = %block_400df1, %block_400d7e

  %595 = phi i64 [ %107, %block_400d7e ], [ %151, %block_400df1 ]

  %596 = phi %struct.Memory* [ %102, %block_400d7e ], [ %596, %block_400df1 ]

  %597 = inttoptr i64 %106 to i32*

  %598 = load i32, i32* %597

  %599 = add i32 %598, -131072

  %600 = lshr i32 %599, 31

  %601 = trunc i32 %600 to i8

  %602 = lshr i32 %598, 31

  %603 = xor i32 %600, %602

  %604 = add nuw nsw i32 %603, %602

  %605 = icmp eq i32 %604, 2

  %606 = icmp ne i8 %601, 0

  %607 = xor i1 %606, %605

  %608 = select i1 %607, i64 16, i64 64

  %609 = add i64 %595, %608

  br i1 %607, label %block_400df1, label %block_400e21



block_400fd2:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %610 = add i64 %1797, -64

  store i64 %610, i64* %13, align 8, !tbaa !1240

  %611 = add i64 %1797, -72

  %612 = inttoptr i64 %611 to double*

  %613 = load double, double* %612

  store double %613, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %614 = add i64 %1833, 2910

  %615 = add i64 %1833, 14

  %616 = load i64, i64* %14, align 8, !tbaa !1240

  %617 = add i64 %616, -8

  %618 = inttoptr i64 %617 to i64*

  store i64 %615, i64* %618

  store i64 %617, i64* %14, align 8, !tbaa !1240

  %619 = tail call %struct.Memory* @sub_401b30_randlc(%struct.State* nonnull %0, i64 %614, %struct.Memory* %1798)

  %620 = load i64, i64* %15, align 8

  %621 = add i64 %620, -80

  %622 = load i64, i64* %3, align 8

  %623 = add i64 %622, 5

  %624 = load double, double* %55, align 1

  %625 = inttoptr i64 %621 to double*

  store double %624, double* %625

  br label %block_400fe5



block_4011d1:                                     ; preds = %block_40119c, %block_4011b9

  %626 = phi i64 [ %2016, %block_40119c ], [ %1059, %block_4011b9 ]

  %627 = phi i64 [ %1999, %block_40119c ], [ %1076, %block_4011b9 ]

  %628 = phi i64 [ %2012, %block_40119c ], [ %1072, %block_4011b9 ]

  %629 = phi i64 [ %2015, %block_40119c ], [ %1073, %block_4011b9 ]

  %630 = phi %struct.Memory* [ %1424, %block_40119c ], [ %1424, %block_4011b9 ]

  %631 = inttoptr i64 %628 to double*

  %632 = load double, double* %631

  %633 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 808) to double*)

  %634 = tail call double @llvm.trunc.f64(double %632) #11

  %635 = tail call double @llvm.fabs.f64(double %634) #11

  %636 = fcmp ogt double %635, 0x41DFFFFFFFC00000

  %637 = fptosi double %634 to i32

  %638 = zext i32 %637 to i64

  %639 = select i1 %636, i64 2147483648, i64 %638

  %640 = add i64 %1431, -156

  %641 = trunc i64 %639 to i32

  %642 = inttoptr i64 %640 to i32*

  store i32 %641, i32* %642

  %643 = inttoptr i64 %640 to i32*

  %644 = load i32, i32* %643

  %645 = sext i32 %644 to i64

  %646 = shl nsw i64 %645, 3

  %647 = add i64 %646, add (i64 ptrtoint (%zero_type* @zero to i64), i64 16)

  %648 = inttoptr i64 %647 to double*

  %649 = load double, double* %648

  %650 = fadd double %633, %649

  store double %650, double* %499, align 1, !tbaa !1279

  store i64 0, i64* %500, align 1, !tbaa !1279

  store i64 %645, i64* %10, align 8, !tbaa !1240

  %651 = inttoptr i64 %647 to double*

  store double %650, double* %651

  %652 = add i64 %1431, -184

  %653 = inttoptr i64 %652 to double*

  %654 = load double, double* %653

  %655 = inttoptr i64 %627 to double*

  %656 = load double, double* %655

  %657 = fadd double %654, %656

  %658 = inttoptr i64 %652 to double*

  store double %657, double* %658

  %659 = add i64 %1431, -192

  %660 = inttoptr i64 %659 to double*

  %661 = load double, double* %660

  %662 = inttoptr i64 %626 to double*

  %663 = load double, double* %662

  %664 = fadd double %661, %663

  store double %664, double* %55, align 1, !tbaa !1279

  store i64 0, i64* %56, align 1, !tbaa !1279

  %665 = add i64 %629, 100

  %666 = inttoptr i64 %659 to double*

  store double %664, double* %666

  br label %block_401235



block_400f0e:                                     ; preds = %block_400f01

  store i32 0, i32* %2023, align 1, !tbaa !1458

  store i32 0, i32* %2025, align 1, !tbaa !1458

  store i32 0, i32* %2026, align 1, !tbaa !1458

  store i32 0, i32* %2028, align 1, !tbaa !1458

  %667 = sext i32 %2122 to i64

  %668 = shl nsw i64 %667, 3

  %669 = add i64 %668, add (i64 ptrtoint (%zero_type* @zero to i64), i64 16)

  %670 = load double, double* %55, align 1

  %671 = inttoptr i64 %669 to double*

  store double %670, double* %671

  %672 = inttoptr i64 %1970 to i32*

  %673 = load i32, i32* %672

  %674 = add i32 %673, 1

  %675 = inttoptr i64 %1970 to i32*

  store i32 %674, i32* %675

  %676 = add i64 %2133, -13

  br label %block_400f01



block_4014d0:                                     ; preds = %block_4014dd, %block_4013ef

  %677 = phi i64 [ %464, %block_4013ef ], [ %1129, %block_4014dd ]

  %678 = phi i64 [ %458, %block_4013ef ], [ %1119, %block_4014dd ]

  %679 = phi %struct.Memory* [ %153, %block_4013ef ], [ %679, %block_4014dd ]

  %680 = add i64 %678, -144

  %681 = inttoptr i64 %680 to i32*

  %682 = load i32, i32* %681

  %683 = add i32 %682, -10

  %684 = lshr i32 %683, 31

  %685 = trunc i32 %684 to i8

  %686 = lshr i32 %682, 31

  %687 = xor i32 %684, %686

  %688 = add nuw nsw i32 %687, %686

  %689 = icmp eq i32 %688, 2

  %690 = icmp ne i8 %685, 0

  %691 = xor i1 %690, %689

  %692 = select i1 %691, i64 13, i64 78

  %693 = add i64 %677, %692

  br i1 %691, label %block_4014dd, label %block_40151e



block_40124e:                                     ; preds = %block_40109a

  %694 = load i32, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  %695 = icmp eq i32 %694, 0

  %696 = select i1 %695, i64 24, i64 14

  %697 = add i64 %2065, %696

  br i1 %695, label %block_401266, label %block_40125c



block_40164d:                                     ; preds = %block_40151e

  store i32 0, i32* %2023, align 1, !tbaa !1458

  store i32 0, i32* %2025, align 1, !tbaa !1458

  store i32 0, i32* %2026, align 1, !tbaa !1458

  store i32 0, i32* %2028, align 1, !tbaa !1458

  %698 = load i64, i64* %15, align 8

  %699 = add i64 %698, -112

  %700 = add i64 %1057, 8

  store i64 %700, i64* %3, align 8

  %701 = load double, double* %55, align 1

  %702 = inttoptr i64 %699 to double*

  %703 = load double, double* %702

  %704 = fcmp uno double %701, %703

  br i1 %704, label %705, label %717



; <label>:705:                                    ; preds = %block_40164d

  %706 = fadd double %701, %703

  %707 = bitcast double %706 to i64

  %708 = and i64 %707, 9221120237041090560

  %709 = icmp eq i64 %708, 9218868437227405312

  %710 = and i64 %707, 2251799813685247

  %711 = icmp ne i64 %710, 0

  %712 = and i1 %709, %711

  br i1 %712, label %713, label %723



; <label>:713:                                    ; preds = %705

  %714 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %700, %struct.Memory* %1044) #14

  %715 = load i64, i64* %3, align 8

  %716 = load i8, i8* %47, align 1, !tbaa !1376

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



; <label>:717:                                    ; preds = %block_40164d

  %718 = fcmp ogt double %701, %703

  br i1 %718, label %723, label %719



; <label>:719:                                    ; preds = %717

  %720 = fcmp olt double %701, %703

  br i1 %720, label %723, label %721



; <label>:721:                                    ; preds = %719

  %722 = fcmp oeq double %701, %703

  br i1 %722, label %723, label %725



; <label>:723:                                    ; preds = %721, %719, %717, %705

  %724 = phi i8 [ 0, %717 ], [ 1, %719 ], [ 0, %721 ], [ 1, %705 ]

  br label %725



; <label>:725:                                    ; preds = %723, %721

  %726 = phi i8 [ %724, %723 ], [ 0, %721 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %725, %713

  %727 = phi i8 [ %716, %713 ], [ %726, %725 ]

  %728 = phi i64 [ %715, %713 ], [ %700, %725 ]

  %729 = phi %struct.Memory* [ %714, %713 ], [ %1044, %725 ]

  %730 = icmp ne i8 %727, 0

  %731 = select i1 %730, i64 19, i64 6

  %732 = add i64 %728, %731

  %733 = icmp eq i8 %727, 1

  br i1 %733, label %block_401668, label %block_40165b



block_4012ca:                                     ; preds = %block_401289

  store i64 0, i64* %13, align 8, !tbaa !1240

  %734 = add i64 %2111, -1898

  %735 = add i64 %2111, 7

  %736 = load i64, i64* %14, align 8, !tbaa !1240

  %737 = add i64 %736, -8

  %738 = inttoptr i64 %737 to i64*

  store i64 %735, i64* %738

  store i64 %737, i64* %14, align 8, !tbaa !1240

  %739 = tail call %struct.Memory* @sub_400b60_timer_stop(%struct.State* nonnull %0, i64 %734, %struct.Memory* %2099)

  %740 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1376

  store i8 1, i8* %48, align 1, !tbaa !1390

  store i8 1, i8* %50, align 1, !tbaa !1392

  store i8 0, i8* %51, align 1, !tbaa !1393

  store i8 0, i8* %52, align 1, !tbaa !1394

  store i8 0, i8* %49, align 1, !tbaa !1391

  %741 = add i64 %740, -1825

  %742 = add i64 %740, 7

  %743 = load i64, i64* %14, align 8, !tbaa !1240

  %744 = add i64 %743, -8

  %745 = inttoptr i64 %744 to i64*

  store i64 %742, i64* %745

  store i64 %744, i64* %14, align 8, !tbaa !1240

  %746 = tail call %struct.Memory* @sub_400bb0_timer_read(%struct.State* nonnull %0, i64 %741, %struct.Memory* %739)

  %747 = load i64, i64* %3, align 8

  %748 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 848) to double*)

  store double %748, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %749 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 856) to double*)

  store double %749, double* %2033, align 1, !tbaa !1279

  store double 0.000000e+00, double* %2035, align 1, !tbaa !1279

  %750 = load i64, i64* %15, align 8

  %751 = add i64 %750, -112

  %752 = load double, double* %55, align 1

  %753 = inttoptr i64 %751 to double*

  store double %752, double* %753

  %754 = add i64 %750, -164

  %755 = inttoptr i64 %754 to i32*

  store i32 0, i32* %755

  store i32 1, i32* bitcast (%verified_type* @verified to i32*)

  %756 = add i64 %750, -200

  %757 = inttoptr i64 %756 to double*

  store double %749, double* %757

  store double %748, double* bitcast (%sy_verify_value_type* @sy_verify_value to double*)

  %758 = load i32, i32* bitcast (%verified_type* @verified to i32*)

  %759 = icmp eq i32 %758, 0

  %760 = select i1 %759, i64 279, i64 73

  %761 = add i64 %747, %760

  br i1 %759, label %block_4013ef, label %block_401321



block_401321:                                     ; preds = %block_4012ca

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1051), i64* %13, align 8, !tbaa !1240

  %762 = add i64 %750, -184

  %763 = inttoptr i64 %762 to double*

  %764 = load double, double* %763

  store double %764, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %765 = inttoptr i64 %756 to double*

  %766 = load double, double* %765

  store double %766, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %767 = add i64 %761, 33

  %768 = load i64, i64* %14, align 8, !tbaa !1240

  %769 = add i64 %768, -8

  %770 = inttoptr i64 %769 to i64*

  store i64 %767, i64* %770

  %771 = load i64, i64* %12, align 8, !alias.scope !1459, !noalias !1462

  %772 = load i64, i64* %517, align 8, !alias.scope !1459, !noalias !1462

  %773 = load i64, i64* %516, align 8, !alias.scope !1459, !noalias !1462

  %774 = load i64, i64* %16, align 8, !alias.scope !1459, !noalias !1462

  %775 = load i64, i64* %17, align 8, !alias.scope !1459, !noalias !1462

  %776 = inttoptr i64 %768 to i64*

  %777 = load i64, i64* %776

  %778 = add i64 %768, 8

  %779 = inttoptr i64 %778 to i64*

  %780 = load i64, i64* %779

  %781 = add i64 %768, 16

  %782 = inttoptr i64 %781 to i64*

  %783 = load i64, i64* %782

  %784 = add i64 %768, 24

  %785 = inttoptr i64 %784 to i64*

  %786 = load i64, i64* %785

  %787 = add i64 %768, 32

  %788 = inttoptr i64 %787 to i64*

  %789 = load i64, i64* %788

  %790 = add i64 %768, 40

  %791 = inttoptr i64 %790 to i64*

  %792 = load i64, i64* %791

  %793 = add i64 %768, 48

  %794 = inttoptr i64 %793 to i64*

  %795 = load i64, i64* %794

  %796 = add i64 %768, 56

  %797 = inttoptr i64 %796 to i64*

  %798 = load i64, i64* %797

  %799 = add i64 %768, 64

  %800 = inttoptr i64 %799 to i64*

  %801 = load i64, i64* %800

  %802 = add i64 %768, 72

  %803 = inttoptr i64 %802 to i64*

  %804 = load i64, i64* %803

  %805 = inttoptr i64 %769 to i64*

  %806 = load i64, i64* %805

  store i64 %806, i64* %3, align 8, !alias.scope !1459, !noalias !1462

  store i64 %768, i64* %14, align 8, !alias.scope !1459, !noalias !1462

  %807 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1051), i64 %771, i64 %772, i64 %773, i64 %774, i64 %775, i64 %777, i64 %780, i64 %783, i64 %786, i64 %789, i64 %792, i64 %795, i64 %798, i64 %801, i64 %804), !noalias !1459

  store i64 %807, i64* %69, align 8, !alias.scope !1459, !noalias !1462

  %808 = load i64, i64* %3, align 8

  store i64 0, i64* %10, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1376

  store i8 1, i8* %48, align 1, !tbaa !1390

  store i8 1, i8* %50, align 1, !tbaa !1392

  store i8 0, i8* %51, align 1, !tbaa !1393

  store i8 0, i8* %52, align 1, !tbaa !1394

  store i8 0, i8* %49, align 1, !tbaa !1391

  store i8 0, i8* %6, align 1, !tbaa !1407

  %809 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 864) to double*)

  store double %809, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %810 = load i64, i64* %15, align 8

  %811 = add i64 %810, -184

  %812 = inttoptr i64 %811 to double*

  %813 = load double, double* %812

  %814 = add i64 %810, -200

  %815 = inttoptr i64 %814 to double*

  %816 = load double, double* %815

  %817 = fsub double %813, %816

  %818 = fdiv double %817, %816

  %819 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 912) to float*)

  %820 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 916) to float*)

  store float %819, float* %955, align 1, !tbaa !1405

  store float %820, float* %956, align 1, !tbaa !1405

  %821 = bitcast double %818 to i64

  %822 = load i64, i64* %959, align 1

  %823 = and i64 %822, %821

  %824 = trunc i64 %823 to i32

  %825 = lshr i64 %823, 32

  %826 = trunc i64 %825 to i32

  store i32 %824, i32* %960, align 1, !tbaa !1458

  store i32 %826, i32* %961, align 1, !tbaa !1458

  %827 = load double, double* %499, align 1

  store double %827, double* bitcast (%sx_err_type* @sx_err to double*)

  %828 = add i64 %810, -192

  %829 = inttoptr i64 %828 to double*

  %830 = load double, double* %829

  %831 = load double, double* bitcast (%sy_verify_value_type* @sy_verify_value to double*)

  %832 = fsub double %830, %831

  %833 = fdiv double %832, %831

  %834 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 912) to float*)

  %835 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 916) to float*)

  %836 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 920) to float*)

  %837 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 924) to float*)

  store float %834, float* %955, align 1, !tbaa !1405

  store float %835, float* %956, align 1, !tbaa !1405

  store float %836, float* %957, align 1, !tbaa !1405

  store float %837, float* %958, align 1, !tbaa !1405

  %838 = bitcast double %833 to i64

  %839 = load i64, i64* %959, align 1

  %840 = and i64 %839, %838

  %841 = trunc i64 %840 to i32

  %842 = lshr i64 %840, 32

  %843 = trunc i64 %842 to i32

  store i32 %841, i32* %960, align 1, !tbaa !1458

  store i32 %843, i32* %961, align 1, !tbaa !1458

  store i32 0, i32* %962, align 1, !tbaa !1458

  store i32 0, i32* %963, align 1, !tbaa !1458

  %844 = load double, double* %499, align 1

  store double %844, double* bitcast (%sy_err_type* @sy_err to double*)

  %845 = add i64 %808, 111

  store i64 %845, i64* %3, align 8

  %846 = load double, double* bitcast (%sx_err_type* @sx_err to double*)

  %847 = fcmp uno double %809, %846

  br i1 %847, label %848, label %860



; <label>:848:                                    ; preds = %block_401321

  %849 = fadd double %809, %846

  %850 = bitcast double %849 to i64

  %851 = and i64 %850, 9221120237041090560

  %852 = icmp eq i64 %851, 9218868437227405312

  %853 = and i64 %850, 2251799813685247

  %854 = icmp ne i64 %853, 0

  %855 = and i1 %852, %854

  br i1 %855, label %856, label %866



; <label>:856:                                    ; preds = %848

  %857 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %845, %struct.Memory* %746) #14

  %858 = load i64, i64* %15, align 8

  %859 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79



; <label>:860:                                    ; preds = %block_401321

  %861 = fcmp ogt double %809, %846

  br i1 %861, label %866, label %862



; <label>:862:                                    ; preds = %860

  %863 = fcmp olt double %809, %846

  br i1 %863, label %866, label %864



; <label>:864:                                    ; preds = %862

  %865 = fcmp oeq double %809, %846

  br i1 %865, label %866, label %870



; <label>:866:                                    ; preds = %864, %862, %860, %848

  %867 = phi i8 [ 0, %860 ], [ 0, %862 ], [ 1, %864 ], [ 1, %848 ]

  %868 = phi i8 [ 0, %860 ], [ 0, %862 ], [ 0, %864 ], [ 1, %848 ]

  %869 = phi i8 [ 0, %860 ], [ 1, %862 ], [ 0, %864 ], [ 1, %848 ]

  store i8 %867, i8* %50, align 1, !tbaa !1407

  store i8 %868, i8* %48, align 1, !tbaa !1407

  store i8 %869, i8* %47, align 1, !tbaa !1407

  br label %870



; <label>:870:                                    ; preds = %866, %864

  store i8 0, i8* %52, align 1, !tbaa !1407

  store i8 0, i8* %51, align 1, !tbaa !1407

  store i8 0, i8* %49, align 1, !tbaa !1407

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79: ; preds = %870, %856

  %871 = phi i64 [ %859, %856 ], [ %845, %870 ]

  %872 = phi i64 [ %858, %856 ], [ %810, %870 ]

  %873 = phi %struct.Memory* [ %857, %856 ], [ %746, %870 ]

  %874 = add i64 %872, -244

  %875 = load i32, i32* %7, align 4

  %876 = inttoptr i64 %874 to i32*

  store i32 %875, i32* %876

  %877 = add i64 %872, -245

  %878 = load i8, i8* %6, align 1

  %879 = inttoptr i64 %877 to i8*

  store i8 %878, i8* %879

  %880 = load i8, i8* %47, align 1, !tbaa !1376

  %881 = icmp ne i8 %880, 0

  %882 = select i1 %881, i64 44, i64 18

  %883 = add i64 %871, %882

  %884 = icmp eq i8 %880, 1

  br i1 %884, label %block_4013dd, label %block_4013c3



block_4013c3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit79

  %885 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 864) to double*)

  store double %885, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %886 = add i64 %883, 17

  store i64 %886, i64* %3, align 8

  %887 = load double, double* bitcast (%sy_err_type* @sy_err to double*)

  %888 = fcmp uno double %885, %887

  br i1 %888, label %889, label %902



; <label>:889:                                    ; preds = %block_4013c3

  %890 = fadd double %885, %887

  %891 = bitcast double %890 to i64

  %892 = and i64 %891, 9221120237041090560

  %893 = icmp eq i64 %892, 9218868437227405312

  %894 = and i64 %891, 2251799813685247

  %895 = icmp ne i64 %894, 0

  %896 = and i1 %893, %895

  br i1 %896, label %897, label %908



; <label>:897:                                    ; preds = %889

  %898 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %886, %struct.Memory* %873) #14

  %899 = load i64, i64* %3, align 8

  %900 = load i8, i8* %47, align 1, !tbaa !1376

  %901 = load i64, i64* %15, align 8

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80



; <label>:902:                                    ; preds = %block_4013c3

  %903 = fcmp ogt double %885, %887

  br i1 %903, label %908, label %904



; <label>:904:                                    ; preds = %902

  %905 = fcmp olt double %885, %887

  br i1 %905, label %908, label %906



; <label>:906:                                    ; preds = %904

  %907 = fcmp oeq double %885, %887

  br i1 %907, label %908, label %910



; <label>:908:                                    ; preds = %906, %904, %902, %889

  %909 = phi i8 [ 0, %902 ], [ 1, %904 ], [ 0, %906 ], [ 1, %889 ]

  br label %910



; <label>:910:                                    ; preds = %908, %906

  %911 = phi i8 [ %909, %908 ], [ %880, %906 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit80: ; preds = %910, %897

  %912 = phi i64 [ %901, %897 ], [ %872, %910 ]

  %913 = phi i8 [ %900, %897 ], [ %911, %910 ]

  %914 = phi i64 [ %899, %897 ], [ %886, %910 ]

  %915 = phi %struct.Memory* [ %898, %897 ], [ %873, %910 ]

  %916 = icmp eq i8 %913, 0

  %917 = zext i1 %916 to i8

  %918 = add i64 %912, -245

  %919 = add i64 %914, 9

  %920 = inttoptr i64 %918 to i8*

  store i8 %917, i8* %920

  br label %block_4013dd



block_401042:                                     ; preds = %block_40102a, %block_401038

  %921 = phi i64 [ %1432, %block_40102a ], [ %971, %block_401038 ]

  %922 = phi i64 [ %1438, %block_40102a ], [ %970, %block_401038 ]

  %923 = phi %struct.Memory* [ %1434, %block_40102a ], [ %969, %block_401038 ]

  store i64 131072, i64* %13, align 8, !tbaa !1240

  %924 = add i64 %921, -64

  store i64 %924, i64* %12, align 8, !tbaa !1240

  %925 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 832) to double*)

  store double %925, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %926 = load i64, i64* bitcast (%x_type* @x to i64*)

  store i64 %926, i64* %11, align 8, !tbaa !1240

  %927 = add i64 %922, 3134

  %928 = add i64 %922, 30

  %929 = load i64, i64* %14, align 8, !tbaa !1240

  %930 = add i64 %929, -8

  %931 = inttoptr i64 %930 to i64*

  store i64 %928, i64* %931

  store i64 %930, i64* %14, align 8, !tbaa !1240

  %932 = tail call %struct.Memory* @sub_401c80_vranlc(%struct.State* nonnull %0, i64 %927, %struct.Memory* %923)

  %933 = load i64, i64* %3, align 8

  %934 = load i32, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  %935 = icmp eq i32 %934, 0

  %936 = select i1 %935, i64 24, i64 14

  %937 = add i64 %933, %936

  br i1 %935, label %block_401078, label %block_40106e



block_400f35:                                     ; preds = %block_400f01

  %938 = bitcast %union.VectorReg* %26 to i8*

  %939 = add i64 %1968, -168

  %940 = inttoptr i64 %939 to i32*

  store i32 -1, i32* %940

  %941 = add i64 %1968, -160

  %942 = add i64 %2133, 20

  %943 = inttoptr i64 %941 to i32*

  store i32 1, i32* %943

  %944 = bitcast %union.VectorReg* %26 to i32*

  %945 = getelementptr inbounds i8, i8* %938, i64 4

  %946 = bitcast i8* %945 to i32*

  %947 = getelementptr inbounds i8, i8* %938, i64 12

  %948 = bitcast %union.VectorReg* %25 to float*

  %949 = getelementptr inbounds i8, i8* %497, i64 4

  %950 = bitcast i8* %949 to float*

  %951 = bitcast i64* %500 to float*

  %952 = getelementptr inbounds i8, i8* %497, i64 12

  %953 = bitcast i8* %952 to float*

  %954 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %25, i64 0, i32 0, i32 0, i32 0, i64 0

  %955 = bitcast %union.VectorReg* %26 to float*

  %956 = bitcast i8* %945 to float*

  %957 = bitcast i64* %2034 to float*

  %958 = bitcast i8* %947 to float*

  %959 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %26, i64 0, i32 0, i32 0, i32 0, i64 0

  %960 = bitcast %union.VectorReg* %25 to i32*

  %961 = bitcast i8* %949 to i32*

  %962 = bitcast i64* %500 to i32*

  %963 = bitcast i8* %952 to i32*

  br label %block_400f49



block_401038:                                     ; preds = %block_40102a

  store i64 2, i64* %13, align 8, !tbaa !1240

  %964 = add i64 %1438, -1320

  %965 = add i64 %1438, 10

  %966 = load i64, i64* %14, align 8, !tbaa !1240

  %967 = add i64 %966, -8

  %968 = inttoptr i64 %967 to i64*

  store i64 %965, i64* %968

  store i64 %967, i64* %14, align 8, !tbaa !1240

  %969 = tail call %struct.Memory* @sub_400b10_timer_start(%struct.State* nonnull %0, i64 %964, %struct.Memory* %1434)

  %970 = load i64, i64* %3, align 8

  %971 = load i64, i64* %15, align 8

  br label %block_401042



block_40151e:                                     ; preds = %block_4014d0

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1207), i64* %13, align 8, !tbaa !1240

  store i64 83, i64* %12, align 8, !tbaa !1240

  store i64 25, i64* %11, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1253), i64* %18, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1257), i64* %19, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1263), i64* %9, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1267), i64* %22, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1279), i64* %23, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1288), i64* %20, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1308), i64* %21, align 8, !tbaa !1240

  %972 = add i64 %678, -280

  %973 = inttoptr i64 %972 to i32*

  store i32 0, i32* %973

  %974 = add i64 %678, -164

  %975 = inttoptr i64 %974 to i32*

  %976 = load i32, i32* %975

  %977 = add i64 %678, -112

  %978 = inttoptr i64 %977 to double*

  %979 = load double, double* %978

  store double %979, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %980 = add i64 %678, -56

  %981 = inttoptr i64 %980 to double*

  %982 = load double, double* %981

  store double %982, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %983 = add i64 %678, -284

  %984 = inttoptr i64 %983 to i32*

  store i32 %976, i32* %984

  %985 = load i32, i32* bitcast (%verified_type* @verified to i32*)

  %986 = add i64 %678, -288

  %987 = inttoptr i64 %986 to i32*

  store i32 %985, i32* %987

  %988 = inttoptr i64 %972 to i32*

  %989 = load i32, i32* %988

  %990 = zext i32 %989 to i64

  %991 = load i64, i64* %15, align 8

  %992 = add i64 %991, -296

  %993 = inttoptr i64 %992 to i64*

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1210), i64* %993

  store i64 %990, i64* %10, align 8, !tbaa !1240

  %994 = add i64 %991, -304

  %995 = inttoptr i64 %994 to i64*

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1235), i64* %995

  store i64 %990, i64* %16, align 8, !tbaa !1240

  %996 = add i64 %991, -284

  %997 = inttoptr i64 %996 to i32*

  %998 = load i32, i32* %997

  %999 = zext i32 %998 to i64

  %1000 = add i64 %991, -312

  %1001 = inttoptr i64 %1000 to i64*

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1241), i64* %1001

  store i64 %999, i64* %17, align 8, !tbaa !1240

  %1002 = inttoptr i64 %992 to i64*

  %1003 = load i64, i64* %1002

  %1004 = load i64, i64* %14, align 8

  %1005 = inttoptr i64 %1004 to i64*

  store i64 %1003, i64* %1005

  %1006 = add i64 %991, -288

  %1007 = inttoptr i64 %1006 to i32*

  %1008 = load i32, i32* %1007

  %1009 = add i64 %1004, 8

  %1010 = inttoptr i64 %1009 to i32*

  store i32 %1008, i32* %1010

  %1011 = inttoptr i64 %994 to i64*

  %1012 = load i64, i64* %1011

  %1013 = add i64 %1004, 16

  %1014 = inttoptr i64 %1013 to i64*

  store i64 %1012, i64* %1014

  %1015 = inttoptr i64 %1000 to i64*

  %1016 = load i64, i64* %1015

  %1017 = add i64 %1004, 24

  %1018 = inttoptr i64 %1017 to i64*

  store i64 %1016, i64* %1018

  %1019 = add i64 %1004, 32

  %1020 = load i64, i64* %18, align 8

  %1021 = inttoptr i64 %1019 to i64*

  store i64 %1020, i64* %1021

  %1022 = add i64 %1004, 40

  %1023 = load i64, i64* %19, align 8

  %1024 = inttoptr i64 %1022 to i64*

  store i64 %1023, i64* %1024

  %1025 = add i64 %1004, 48

  %1026 = load i64, i64* %9, align 8

  %1027 = inttoptr i64 %1025 to i64*

  store i64 %1026, i64* %1027

  %1028 = add i64 %1004, 56

  %1029 = load i64, i64* %22, align 8

  %1030 = inttoptr i64 %1028 to i64*

  store i64 %1029, i64* %1030

  %1031 = add i64 %1004, 64

  %1032 = load i64, i64* %23, align 8

  %1033 = inttoptr i64 %1031 to i64*

  store i64 %1032, i64* %1033

  %1034 = add i64 %1004, 72

  %1035 = load i64, i64* %20, align 8

  %1036 = inttoptr i64 %1034 to i64*

  store i64 %1035, i64* %1036

  %1037 = add i64 %1004, 80

  %1038 = load i64, i64* %21, align 8

  %1039 = inttoptr i64 %1037 to i64*

  store i64 %1038, i64* %1039

  %1040 = add i64 %693, 546

  %1041 = add i64 %693, 289

  %1042 = add i64 %1004, -8

  %1043 = inttoptr i64 %1042 to i64*

  store i64 %1041, i64* %1043

  store i64 %1042, i64* %14, align 8, !tbaa !1240

  %1044 = tail call %struct.Memory* @sub_401740_print_results(%struct.State* nonnull %0, i64 %1040, %struct.Memory* %679)

  %1045 = load i64, i64* %3, align 8

  %1046 = load i32, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  store i8 0, i8* %47, align 1, !tbaa !1376

  %1047 = and i32 %1046, 255

  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047) #11

  %1049 = trunc i32 %1048 to i8

  %1050 = and i8 %1049, 1

  %1051 = xor i8 %1050, 1

  store i8 %1051, i8* %48, align 1, !tbaa !1390

  store i8 0, i8* %49, align 1, !tbaa !1391

  %1052 = icmp eq i32 %1046, 0

  %1053 = zext i1 %1052 to i8

  store i8 %1053, i8* %50, align 1, !tbaa !1392

  %1054 = lshr i32 %1046, 31

  %1055 = trunc i32 %1054 to i8

  store i8 %1055, i8* %51, align 1, !tbaa !1393

  store i8 0, i8* %52, align 1, !tbaa !1394

  %1056 = select i1 %1052, i64 221, i64 14

  %1057 = add i64 %1045, %1056

  br i1 %1052, label %block_40151e.block_40171c_crit_edge, label %block_40164d



block_40151e.block_40171c_crit_edge:              ; preds = %block_40151e

  %1058 = load i64, i64* %15, align 8

  br label %block_40171c



block_4011b9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %1059 = add i64 %1431, -88

  %1060 = inttoptr i64 %1059 to double*

  %1061 = load double, double* %1060

  %1062 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 912) to float*)

  %1063 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 916) to float*)

  %1064 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 920) to float*)

  %1065 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 924) to float*)

  store float %1062, float* %948, align 1, !tbaa !1405

  store float %1063, float* %950, align 1, !tbaa !1405

  store float %1064, float* %951, align 1, !tbaa !1405

  store float %1065, float* %953, align 1, !tbaa !1405

  %1066 = bitcast double %1061 to i64

  %1067 = load i64, i64* %954, align 1

  %1068 = and i64 %1067, %1066

  %1069 = trunc i64 %1068 to i32

  %1070 = lshr i64 %1068, 32

  %1071 = trunc i64 %1070 to i32

  store i32 %1069, i32* %2023, align 1, !tbaa !1458

  store i32 %1071, i32* %2025, align 1, !tbaa !1458

  store i32 0, i32* %2026, align 1, !tbaa !1458

  store i32 0, i32* %2028, align 1, !tbaa !1458

  %1072 = add i64 %1431, -240

  %1073 = add i64 %1430, 24

  %1074 = load double, double* %55, align 1

  %1075 = inttoptr i64 %1072 to double*

  store double %1074, double* %1075

  %1076 = add i64 %1431, -80

  br label %block_4011d1



block_4014dd:                                     ; preds = %block_4014d0

  %1077 = zext i32 %682 to i64

  %1078 = sext i32 %682 to i64

  %1079 = shl nsw i64 %1078, 3

  %1080 = add i64 %1079, add (i64 ptrtoint (%zero_type* @zero to i64), i64 16)

  %1081 = inttoptr i64 %1080 to double*

  %1082 = load double, double* %1081

  store double %1082, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1083 = add i64 %693, 39

  %1084 = load i64, i64* %14, align 8, !tbaa !1240

  %1085 = add i64 %1084, -8

  %1086 = inttoptr i64 %1085 to i64*

  store i64 %1083, i64* %1086

  %1087 = inttoptr i64 %1084 to i64*

  %1088 = load i64, i64* %1087

  %1089 = add i64 %1084, 8

  %1090 = inttoptr i64 %1089 to i64*

  %1091 = load i64, i64* %1090

  %1092 = add i64 %1084, 16

  %1093 = inttoptr i64 %1092 to i64*

  %1094 = load i64, i64* %1093

  %1095 = add i64 %1084, 24

  %1096 = inttoptr i64 %1095 to i64*

  %1097 = load i64, i64* %1096

  %1098 = add i64 %1084, 32

  %1099 = inttoptr i64 %1098 to i64*

  %1100 = load i64, i64* %1099

  %1101 = add i64 %1084, 40

  %1102 = inttoptr i64 %1101 to i64*

  %1103 = load i64, i64* %1102

  %1104 = add i64 %1084, 48

  %1105 = inttoptr i64 %1104 to i64*

  %1106 = load i64, i64* %1105

  %1107 = add i64 %1084, 56

  %1108 = inttoptr i64 %1107 to i64*

  %1109 = load i64, i64* %1108

  %1110 = add i64 %1084, 64

  %1111 = inttoptr i64 %1110 to i64*

  %1112 = load i64, i64* %1111

  %1113 = add i64 %1084, 72

  %1114 = inttoptr i64 %1113 to i64*

  %1115 = load i64, i64* %1114

  %1116 = inttoptr i64 %1085 to i64*

  %1117 = load i64, i64* %1116

  store i64 %1117, i64* %3, align 8, !alias.scope !1464, !noalias !1467

  store i64 %1084, i64* %14, align 8, !alias.scope !1464, !noalias !1467

  %1118 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1195), i64 %1077, i64 %466, i64 %467, i64 %468, i64 %469, i64 %1088, i64 %1091, i64 %1094, i64 %1097, i64 %1100, i64 %1103, i64 %1106, i64 %1109, i64 %1112, i64 %1115), !noalias !1464

  %1119 = load i64, i64* %15, align 8

  %1120 = add i64 %1119, -276

  %1121 = trunc i64 %1118 to i32

  %1122 = load i64, i64* %3, align 8

  %1123 = inttoptr i64 %1120 to i32*

  store i32 %1121, i32* %1123

  %1124 = add i64 %1119, -144

  %1125 = inttoptr i64 %1124 to i32*

  %1126 = load i32, i32* %1125

  %1127 = add i32 %1126, 1

  %1128 = inttoptr i64 %1124 to i32*

  store i32 %1127, i32* %1128

  %1129 = add i64 %1122, -52

  br label %block_4014d0



block_400d72:                                     ; preds = %block_400d4f

  %1130 = load i64, i64* %15, align 8

  %1131 = add i64 %1130, -44

  %1132 = inttoptr i64 %1131 to i32*

  store i32 1, i32* %1132

  br label %block_401723



block_401668:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit, %block_40165b

  %1133 = phi i64 [ %732, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %593, %block_40165b ]

  %1134 = phi %struct.Memory* [ %729, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %729, %block_40165b ]

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1376

  store i8 1, i8* %48, align 1, !tbaa !1390

  store i8 1, i8* %50, align 1, !tbaa !1392

  store i8 0, i8* %51, align 1, !tbaa !1393

  store i8 0, i8* %52, align 1, !tbaa !1394

  store i8 0, i8* %49, align 1, !tbaa !1391

  %1135 = add i64 %1133, -2744

  %1136 = add i64 %1133, 7

  %1137 = load i64, i64* %14, align 8, !tbaa !1240

  %1138 = add i64 %1137, -8

  %1139 = inttoptr i64 %1138 to i64*

  store i64 %1136, i64* %1139

  store i64 %1138, i64* %14, align 8, !tbaa !1240

  %1140 = tail call %struct.Memory* @sub_400bb0_timer_read(%struct.State* nonnull %0, i64 %1135, %struct.Memory* %1134)

  %1141 = load i64, i64* %3, align 8

  %1142 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 880) to double*)

  %1143 = load i64, i64* %15, align 8

  %1144 = add i64 %1143, -128

  %1145 = load double, double* %55, align 1

  %1146 = inttoptr i64 %1144 to double*

  store double %1145, double* %1146

  %1147 = inttoptr i64 %1144 to double*

  %1148 = load double, double* %1147

  store double %1148, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1149 = fmul double %1142, %1148

  %1150 = add i64 %1143, -112

  %1151 = inttoptr i64 %1150 to double*

  %1152 = load double, double* %1151

  %1153 = fdiv double %1149, %1152

  store double %1153, double* %499, align 1, !tbaa !1279

  store i64 0, i64* %500, align 1, !tbaa !1279

  %1154 = add i64 %1141, 45

  %1155 = load i64, i64* %14, align 8, !tbaa !1240

  %1156 = add i64 %1155, -8

  %1157 = inttoptr i64 %1156 to i64*

  store i64 %1154, i64* %1157

  %1158 = load i64, i64* %12, align 8, !alias.scope !1469, !noalias !1472

  %1159 = load i64, i64* %517, align 8, !alias.scope !1469, !noalias !1472

  %1160 = load i64, i64* %516, align 8, !alias.scope !1469, !noalias !1472

  %1161 = load i64, i64* %16, align 8, !alias.scope !1469, !noalias !1472

  %1162 = load i64, i64* %17, align 8, !alias.scope !1469, !noalias !1472

  %1163 = inttoptr i64 %1155 to i64*

  %1164 = load i64, i64* %1163

  %1165 = add i64 %1155, 8

  %1166 = inttoptr i64 %1165 to i64*

  %1167 = load i64, i64* %1166

  %1168 = add i64 %1155, 16

  %1169 = inttoptr i64 %1168 to i64*

  %1170 = load i64, i64* %1169

  %1171 = add i64 %1155, 24

  %1172 = inttoptr i64 %1171 to i64*

  %1173 = load i64, i64* %1172

  %1174 = add i64 %1155, 32

  %1175 = inttoptr i64 %1174 to i64*

  %1176 = load i64, i64* %1175

  %1177 = add i64 %1155, 40

  %1178 = inttoptr i64 %1177 to i64*

  %1179 = load i64, i64* %1178

  %1180 = add i64 %1155, 48

  %1181 = inttoptr i64 %1180 to i64*

  %1182 = load i64, i64* %1181

  %1183 = add i64 %1155, 56

  %1184 = inttoptr i64 %1183 to i64*

  %1185 = load i64, i64* %1184

  %1186 = add i64 %1155, 64

  %1187 = inttoptr i64 %1186 to i64*

  %1188 = load i64, i64* %1187

  %1189 = add i64 %1155, 72

  %1190 = inttoptr i64 %1189 to i64*

  %1191 = load i64, i64* %1190

  %1192 = inttoptr i64 %1156 to i64*

  %1193 = load i64, i64* %1192

  store i64 %1193, i64* %3, align 8, !alias.scope !1469, !noalias !1472

  store i64 %1155, i64* %14, align 8, !alias.scope !1469, !noalias !1472

  %1194 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1315), i64 %1158, i64 %1159, i64 %1160, i64 %1161, i64 %1162, i64 %1164, i64 %1167, i64 %1170, i64 %1173, i64 %1176, i64 %1179, i64 %1182, i64 %1185, i64 %1188, i64 %1191), !noalias !1469

  %1195 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1196 = load i64, i64* %15, align 8

  %1197 = add i64 %1196, -316

  %1198 = trunc i64 %1194 to i32

  %1199 = inttoptr i64 %1197 to i32*

  store i32 %1198, i32* %1199

  %1200 = add i64 %1195, -2796

  %1201 = add i64 %1195, 16

  %1202 = load i64, i64* %14, align 8, !tbaa !1240

  %1203 = add i64 %1202, -8

  %1204 = inttoptr i64 %1203 to i64*

  store i64 %1201, i64* %1204

  store i64 %1203, i64* %14, align 8, !tbaa !1240

  %1205 = tail call %struct.Memory* @sub_400bb0_timer_read(%struct.State* nonnull %0, i64 %1200, %struct.Memory* %1140)

  %1206 = load i64, i64* %3, align 8

  %1207 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 880) to double*)

  %1208 = load i64, i64* %15, align 8

  %1209 = add i64 %1208, -128

  %1210 = load double, double* %55, align 1

  %1211 = inttoptr i64 %1209 to double*

  store double %1210, double* %1211

  %1212 = inttoptr i64 %1209 to double*

  %1213 = load double, double* %1212

  store double %1213, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1214 = fmul double %1207, %1213

  %1215 = add i64 %1208, -112

  %1216 = inttoptr i64 %1215 to double*

  %1217 = load double, double* %1216

  %1218 = fdiv double %1214, %1217

  store double %1218, double* %499, align 1, !tbaa !1279

  store i64 0, i64* %500, align 1, !tbaa !1279

  %1219 = add i64 %1206, 45

  %1220 = load i64, i64* %14, align 8, !tbaa !1240

  %1221 = add i64 %1220, -8

  %1222 = inttoptr i64 %1221 to i64*

  store i64 %1219, i64* %1222

  %1223 = load i64, i64* %12, align 8, !alias.scope !1474, !noalias !1477

  %1224 = load i64, i64* %517, align 8, !alias.scope !1474, !noalias !1477

  %1225 = load i64, i64* %516, align 8, !alias.scope !1474, !noalias !1477

  %1226 = load i64, i64* %16, align 8, !alias.scope !1474, !noalias !1477

  %1227 = load i64, i64* %17, align 8, !alias.scope !1474, !noalias !1477

  %1228 = inttoptr i64 %1220 to i64*

  %1229 = load i64, i64* %1228

  %1230 = add i64 %1220, 8

  %1231 = inttoptr i64 %1230 to i64*

  %1232 = load i64, i64* %1231

  %1233 = add i64 %1220, 16

  %1234 = inttoptr i64 %1233 to i64*

  %1235 = load i64, i64* %1234

  %1236 = add i64 %1220, 24

  %1237 = inttoptr i64 %1236 to i64*

  %1238 = load i64, i64* %1237

  %1239 = add i64 %1220, 32

  %1240 = inttoptr i64 %1239 to i64*

  %1241 = load i64, i64* %1240

  %1242 = add i64 %1220, 40

  %1243 = inttoptr i64 %1242 to i64*

  %1244 = load i64, i64* %1243

  %1245 = add i64 %1220, 48

  %1246 = inttoptr i64 %1245 to i64*

  %1247 = load i64, i64* %1246

  %1248 = add i64 %1220, 56

  %1249 = inttoptr i64 %1248 to i64*

  %1250 = load i64, i64* %1249

  %1251 = add i64 %1220, 64

  %1252 = inttoptr i64 %1251 to i64*

  %1253 = load i64, i64* %1252

  %1254 = add i64 %1220, 72

  %1255 = inttoptr i64 %1254 to i64*

  %1256 = load i64, i64* %1255

  %1257 = inttoptr i64 %1221 to i64*

  %1258 = load i64, i64* %1257

  store i64 %1258, i64* %3, align 8, !alias.scope !1474, !noalias !1477

  store i64 %1220, i64* %14, align 8, !alias.scope !1474, !noalias !1477

  %1259 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1349), i64 %1223, i64 %1224, i64 %1225, i64 %1226, i64 %1227, i64 %1229, i64 %1232, i64 %1235, i64 %1238, i64 %1241, i64 %1244, i64 %1247, i64 %1250, i64 %1253, i64 %1256), !noalias !1474

  %1260 = load i64, i64* %3, align 8

  store i64 2, i64* %13, align 8, !tbaa !1240

  %1261 = load i64, i64* %15, align 8

  %1262 = add i64 %1261, -320

  %1263 = trunc i64 %1259 to i32

  %1264 = inttoptr i64 %1262 to i32*

  store i32 %1263, i32* %1264

  %1265 = add i64 %1260, -2857

  %1266 = add i64 %1260, 16

  %1267 = load i64, i64* %14, align 8, !tbaa !1240

  %1268 = add i64 %1267, -8

  %1269 = inttoptr i64 %1268 to i64*

  store i64 %1266, i64* %1269

  store i64 %1268, i64* %14, align 8, !tbaa !1240

  %1270 = tail call %struct.Memory* @sub_400bb0_timer_read(%struct.State* nonnull %0, i64 %1265, %struct.Memory* %1205)

  %1271 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1382), i64* %13, align 8, !tbaa !1240

  %1272 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 880) to double*)

  %1273 = load i64, i64* %15, align 8

  %1274 = add i64 %1273, -128

  %1275 = load double, double* %55, align 1

  %1276 = inttoptr i64 %1274 to double*

  store double %1275, double* %1276

  %1277 = inttoptr i64 %1274 to double*

  %1278 = load double, double* %1277

  store double %1278, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1279 = fmul double %1272, %1278

  %1280 = add i64 %1273, -112

  %1281 = inttoptr i64 %1280 to double*

  %1282 = load double, double* %1281

  %1283 = fdiv double %1279, %1282

  store double %1283, double* %499, align 1, !tbaa !1279

  store i64 0, i64* %500, align 1, !tbaa !1279

  %1284 = add i64 %1271, 45

  %1285 = load i64, i64* %14, align 8, !tbaa !1240

  %1286 = add i64 %1285, -8

  %1287 = inttoptr i64 %1286 to i64*

  store i64 %1284, i64* %1287

  %1288 = load i64, i64* %12, align 8, !alias.scope !1479, !noalias !1482

  %1289 = load i64, i64* %517, align 8, !alias.scope !1479, !noalias !1482

  %1290 = load i64, i64* %516, align 8, !alias.scope !1479, !noalias !1482

  %1291 = load i64, i64* %16, align 8, !alias.scope !1479, !noalias !1482

  %1292 = load i64, i64* %17, align 8, !alias.scope !1479, !noalias !1482

  %1293 = inttoptr i64 %1285 to i64*

  %1294 = load i64, i64* %1293

  %1295 = add i64 %1285, 8

  %1296 = inttoptr i64 %1295 to i64*

  %1297 = load i64, i64* %1296

  %1298 = add i64 %1285, 16

  %1299 = inttoptr i64 %1298 to i64*

  %1300 = load i64, i64* %1299

  %1301 = add i64 %1285, 24

  %1302 = inttoptr i64 %1301 to i64*

  %1303 = load i64, i64* %1302

  %1304 = add i64 %1285, 32

  %1305 = inttoptr i64 %1304 to i64*

  %1306 = load i64, i64* %1305

  %1307 = add i64 %1285, 40

  %1308 = inttoptr i64 %1307 to i64*

  %1309 = load i64, i64* %1308

  %1310 = add i64 %1285, 48

  %1311 = inttoptr i64 %1310 to i64*

  %1312 = load i64, i64* %1311

  %1313 = add i64 %1285, 56

  %1314 = inttoptr i64 %1313 to i64*

  %1315 = load i64, i64* %1314

  %1316 = add i64 %1285, 64

  %1317 = inttoptr i64 %1316 to i64*

  %1318 = load i64, i64* %1317

  %1319 = add i64 %1285, 72

  %1320 = inttoptr i64 %1319 to i64*

  %1321 = load i64, i64* %1320

  %1322 = inttoptr i64 %1286 to i64*

  %1323 = load i64, i64* %1322

  store i64 %1323, i64* %3, align 8, !alias.scope !1479, !noalias !1482

  store i64 %1285, i64* %14, align 8, !alias.scope !1479, !noalias !1482

  %1324 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1382), i64 %1288, i64 %1289, i64 %1290, i64 %1291, i64 %1292, i64 %1294, i64 %1297, i64 %1300, i64 %1303, i64 %1306, i64 %1309, i64 %1312, i64 %1315, i64 %1318, i64 %1321), !noalias !1479

  %1325 = load i64, i64* %15, align 8

  %1326 = add i64 %1325, -324

  %1327 = trunc i64 %1324 to i32

  %1328 = inttoptr i64 %1326 to i32*

  store i32 %1327, i32* %1328

  br label %block_40171c



block_40112c:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161

  %1329 = add i64 %1946, -64

  %1330 = inttoptr i64 %1329 to double*

  %1331 = load double, double* %1330

  store double %1331, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1332 = add i64 %1944, 10

  %1333 = load i64, i64* %14, align 8, !tbaa !1240

  %1334 = add i64 %1333, -8

  %1335 = inttoptr i64 %1334 to i64*

  store i64 %1332, i64* %1335

  %1336 = load i64, i64* %70, align 8, !alias.scope !1484, !noalias !1487

  %1337 = inttoptr i64 %1334 to i64*

  %1338 = load i64, i64* %1337

  store i64 %1338, i64* %3, align 8, !alias.scope !1484, !noalias !1487

  store i64 %1333, i64* %14, align 8, !alias.scope !1484, !noalias !1487

  %1339 = tail call i64 @log(i64 %1336), !noalias !1484

  store i64 %1339, i64* %69, align 8, !alias.scope !1484, !noalias !1487

  %1340 = load i64, i64* %3, align 8

  %1341 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 888) to double*)

  %1342 = load double, double* %55, align 1

  %1343 = fmul double %1341, %1342

  %1344 = load i64, i64* %15, align 8

  %1345 = add i64 %1344, -64

  %1346 = inttoptr i64 %1345 to double*

  %1347 = load double, double* %1346

  %1348 = fdiv double %1343, %1347

  %1349 = bitcast double %1348 to <2 x i32>

  %1350 = extractelement <2 x i32> %1349, i32 0

  store i32 %1350, i32* %2023, align 1, !tbaa !1405

  %1351 = extractelement <2 x i32> %1349, i32 1

  store i32 %1351, i32* %2025, align 1, !tbaa !1405

  %1352 = add i64 %1340, 25

  %1353 = load i64, i64* %14, align 8, !tbaa !1240

  %1354 = add i64 %1353, -8

  %1355 = inttoptr i64 %1354 to i64*

  store i64 %1352, i64* %1355

  %1356 = load double, double* %1520, align 8, !alias.scope !1489, !noalias !1492

  %1357 = inttoptr i64 %1354 to i64*

  %1358 = load i64, i64* %1357

  store i64 %1353, i64* %14, align 8, !alias.scope !1489, !noalias !1492

  %1359 = tail call double @sqrt(double %1356) #11

  %1360 = add i64 %1344, -72

  %1361 = inttoptr i64 %1360 to double*

  store double %1359, double* %1361

  %1362 = add i64 %1344, -96

  %1363 = inttoptr i64 %1362 to double*

  %1364 = load double, double* %1363

  %1365 = inttoptr i64 %1360 to double*

  %1366 = load double, double* %1365

  %1367 = fmul double %1364, %1366

  %1368 = add i64 %1344, -80

  %1369 = inttoptr i64 %1368 to double*

  store double %1367, double* %1369

  %1370 = add i64 %1344, -104

  %1371 = inttoptr i64 %1370 to double*

  %1372 = load double, double* %1371

  %1373 = inttoptr i64 %1360 to double*

  %1374 = load double, double* %1373

  %1375 = fmul double %1372, %1374

  %1376 = add i64 %1344, -88

  %1377 = inttoptr i64 %1376 to double*

  store double %1375, double* %1377

  %1378 = inttoptr i64 %1368 to double*

  %1379 = load double, double* %1378

  %1380 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 912) to float*)

  %1381 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 916) to float*)

  %1382 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 920) to float*)

  %1383 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 924) to float*)

  store float %1380, float* %948, align 1, !tbaa !1405

  store float %1381, float* %950, align 1, !tbaa !1405

  %1384 = bitcast double %1379 to i64

  %1385 = load i64, i64* %954, align 1

  %1386 = and i64 %1385, %1384

  %1387 = trunc i64 %1386 to i32

  %1388 = lshr i64 %1386, 32

  %1389 = trunc i64 %1388 to i32

  store i32 %1387, i32* %2023, align 1, !tbaa !1458

  store i32 %1389, i32* %2025, align 1, !tbaa !1458

  store i32 0, i32* %2026, align 1, !tbaa !1458

  store i32 0, i32* %2028, align 1, !tbaa !1458

  %1390 = inttoptr i64 %1376 to double*

  %1391 = load double, double* %1390

  store float %1380, float* %955, align 1, !tbaa !1405

  store float %1381, float* %956, align 1, !tbaa !1405

  store float %1382, float* %957, align 1, !tbaa !1405

  store float %1383, float* %958, align 1, !tbaa !1405

  %1392 = bitcast double %1391 to i64

  %1393 = load i64, i64* %959, align 1

  %1394 = and i64 %1393, %1392

  %1395 = trunc i64 %1394 to i32

  %1396 = lshr i64 %1394, 32

  %1397 = trunc i64 %1396 to i32

  store i32 %1395, i32* %960, align 1, !tbaa !1458

  store i32 %1397, i32* %961, align 1, !tbaa !1458

  store i32 0, i32* %962, align 1, !tbaa !1458

  store i32 0, i32* %963, align 1, !tbaa !1458

  %1398 = add i64 %1358, 71

  store i64 %1398, i64* %3, align 8

  %1399 = load double, double* %55, align 1

  %1400 = load double, double* %499, align 1

  %1401 = fcmp uno double %1399, %1400

  br i1 %1401, label %1402, label %1413



; <label>:1402:                                   ; preds = %block_40112c

  %1403 = fadd double %1399, %1400

  %1404 = bitcast double %1403 to i64

  %1405 = and i64 %1404, 9221120237041090560

  %1406 = icmp eq i64 %1405, 9218868437227405312

  %1407 = and i64 %1404, 2251799813685247

  %1408 = icmp ne i64 %1407, 0

  %1409 = and i1 %1406, %1408

  br i1 %1409, label %1410, label %1419



; <label>:1410:                                   ; preds = %1402

  %1411 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1398, %struct.Memory* %1941) #14

  %1412 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:1413:                                   ; preds = %block_40112c

  %1414 = fcmp ogt double %1399, %1400

  br i1 %1414, label %1419, label %1415



; <label>:1415:                                   ; preds = %1413

  %1416 = fcmp olt double %1399, %1400

  br i1 %1416, label %1419, label %1417



; <label>:1417:                                   ; preds = %1415

  %1418 = fcmp oeq double %1399, %1400

  br i1 %1418, label %1419, label %1422



; <label>:1419:                                   ; preds = %1417, %1415, %1413, %1402

  %1420 = phi i8 [ 0, %1413 ], [ 0, %1415 ], [ 1, %1417 ], [ 1, %1402 ]

  %1421 = phi i8 [ 0, %1413 ], [ 1, %1415 ], [ 0, %1417 ], [ 1, %1402 ]

  store i8 %1420, i8* %50, align 1, !tbaa !1407

  store i8 %1421, i8* %47, align 1, !tbaa !1407

  br label %1422



; <label>:1422:                                   ; preds = %1419, %1417

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %1422, %1410

  %1423 = phi i64 [ %1412, %1410 ], [ %1398, %1422 ]

  %1424 = phi %struct.Memory* [ %1411, %1410 ], [ %1941, %1422 ]

  %1425 = load i8, i8* %47, align 1, !tbaa !1376

  %1426 = load i8, i8* %50, align 1, !tbaa !1392

  %1427 = or i8 %1426, %1425

  %1428 = icmp ne i8 %1427, 0

  %1429 = select i1 %1428, i64 35, i64 6

  %1430 = add i64 %1423, %1429

  %1431 = load i64, i64* %15, align 8

  br i1 %1428, label %block_4011b9, label %block_40119c



block_40102a.loopexit:                            ; preds = %block_400f8e

  br label %block_40102a



block_40102a:                                     ; preds = %block_40102a.loopexit, %block_400ff2

  %1432 = phi i64 [ %478, %block_400ff2 ], [ %2067, %block_40102a.loopexit ]

  %1433 = phi i64 [ %140, %block_400ff2 ], [ %2097, %block_40102a.loopexit ]

  %1434 = phi %struct.Memory* [ %479, %block_400ff2 ], [ %2068, %block_40102a.loopexit ]

  %1435 = load i32, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  %1436 = icmp eq i32 %1435, 0

  %1437 = select i1 %1436, i64 24, i64 14

  %1438 = add i64 %1433, %1437

  br i1 %1436, label %block_401042, label %block_401038



block_400f49:                                     ; preds = %block_401266, %block_400f35

  %1439 = phi i64 [ %942, %block_400f35 ], [ %1757, %block_401266 ]

  %1440 = phi i64 [ %1968, %block_400f35 ], [ %1749, %block_401266 ]

  %1441 = phi %struct.Memory* [ %2120, %block_400f35 ], [ %1751, %block_401266 ]

  %1442 = add i64 %1440, -160

  %1443 = inttoptr i64 %1442 to i32*

  %1444 = load i32, i32* %1443

  %1445 = add i64 %1440, -140

  %1446 = inttoptr i64 %1445 to i32*

  %1447 = load i32, i32* %1446

  %1448 = sub i32 %1444, %1447

  %1449 = icmp eq i32 %1448, 0

  %1450 = lshr i32 %1448, 31

  %1451 = trunc i32 %1450 to i8

  %1452 = lshr i32 %1444, 31

  %1453 = lshr i32 %1447, 31

  %1454 = xor i32 %1453, %1452

  %1455 = xor i32 %1450, %1452

  %1456 = add nuw nsw i32 %1455, %1454

  %1457 = icmp eq i32 %1456, 2

  %1458 = icmp ne i8 %1451, 0

  %1459 = xor i1 %1458, %1457

  %1460 = or i1 %1449, %1459

  %1461 = select i1 %1460, i64 18, i64 822

  %1462 = add i64 %1439, %1461

  br i1 %1460, label %block_400f5b, label %block_40127f



block_401723:                                     ; preds = %block_400d43, %block_40171c, %block_400d72

  %1463 = phi i64 [ %1758, %block_40171c ], [ %1130, %block_400d72 ], [ %1964, %block_400d43 ]

  %1464 = phi %struct.Memory* [ %1759, %block_40171c ], [ %1620, %block_400d72 ], [ %1620, %block_400d43 ]

  %1465 = add i64 %1463, -44

  %1466 = inttoptr i64 %1465 to i32*

  %1467 = load i32, i32* %1466

  %1468 = zext i32 %1467 to i64

  store i64 %1468, i64* %8, align 8, !tbaa !1240

  %1469 = load i64, i64* %14, align 8

  %1470 = add i64 %1469, 376

  %1471 = icmp ugt i64 %1469, -377

  %1472 = zext i1 %1471 to i8

  store i8 %1472, i8* %47, align 1, !tbaa !1376

  %1473 = trunc i64 %1470 to i32

  %1474 = and i32 %1473, 255

  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474) #11

  %1476 = trunc i32 %1475 to i8

  %1477 = and i8 %1476, 1

  %1478 = xor i8 %1477, 1

  store i8 %1478, i8* %48, align 1, !tbaa !1390

  %1479 = xor i64 %1469, 16

  %1480 = xor i64 %1479, %1470

  %1481 = lshr i64 %1480, 4

  %1482 = trunc i64 %1481 to i8

  %1483 = and i8 %1482, 1

  store i8 %1483, i8* %49, align 1, !tbaa !1391

  %1484 = icmp eq i64 %1470, 0

  %1485 = zext i1 %1484 to i8

  store i8 %1485, i8* %50, align 1, !tbaa !1392

  %1486 = lshr i64 %1470, 63

  %1487 = trunc i64 %1486 to i8

  store i8 %1487, i8* %51, align 1, !tbaa !1393

  %1488 = lshr i64 %1469, 63

  %1489 = xor i64 %1486, %1488

  %1490 = add nuw nsw i64 %1489, %1486

  %1491 = icmp eq i64 %1490, 2

  %1492 = zext i1 %1491 to i8

  store i8 %1492, i8* %52, align 1, !tbaa !1394

  %1493 = add i64 %1469, 384

  %1494 = inttoptr i64 %1470 to i64*

  %1495 = load i64, i64* %1494

  store i64 %1495, i64* %9, align 8, !tbaa !1240

  %1496 = add i64 %1469, 392

  %1497 = inttoptr i64 %1493 to i64*

  %1498 = load i64, i64* %1497

  store i64 %1498, i64* %20, align 8, !tbaa !1240

  %1499 = add i64 %1469, 400

  %1500 = inttoptr i64 %1496 to i64*

  %1501 = load i64, i64* %1500

  store i64 %1501, i64* %21, align 8, !tbaa !1240

  %1502 = add i64 %1469, 408

  %1503 = inttoptr i64 %1499 to i64*

  %1504 = load i64, i64* %1503

  store i64 %1504, i64* %22, align 8, !tbaa !1240

  %1505 = add i64 %1469, 416

  %1506 = inttoptr i64 %1502 to i64*

  %1507 = load i64, i64* %1506

  store i64 %1507, i64* %23, align 8, !tbaa !1240

  %1508 = add i64 %1469, 424

  %1509 = inttoptr i64 %1505 to i64*

  %1510 = load i64, i64* %1509

  store i64 %1510, i64* %15, align 8, !tbaa !1240

  %1511 = inttoptr i64 %1508 to i64*

  %1512 = load i64, i64* %1511

  store i64 %1512, i64* %3, align 8, !tbaa !1240

  %1513 = add i64 %1469, 432

  store i64 %1513, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %1464



block_400e21:                                     ; preds = %block_400de1

  %1514 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 808) to double*)

  %1515 = add i64 %609, 13

  %1516 = load i64, i64* %14, align 8, !tbaa !1240

  %1517 = add i64 %1516, -8

  %1518 = inttoptr i64 %1517 to i64*

  store i64 %1515, i64* %1518

  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %1520 = bitcast %union.VectorReg* %1519 to double*

  %1521 = inttoptr i64 %1517 to i64*

  %1522 = load i64, i64* %1521

  %1523 = tail call double @sqrt(double %1514) #11

  %1524 = bitcast %union.VectorReg* %1519 to i128*

  store i128 0, i128* %1524, align 8, !alias.scope !1494, !noalias !1497

  store double %1523, double* %1520, align 8, !alias.scope !1494, !noalias !1497

  %1525 = add i64 %1522, 5

  %1526 = inttoptr i64 %1517 to i64*

  store i64 %1525, i64* %1526

  %1527 = load i64, i64* %70, align 8, !alias.scope !1499, !noalias !1502

  %1528 = inttoptr i64 %1517 to i64*

  %1529 = load i64, i64* %1528

  store i64 %1529, i64* %3, align 8, !alias.scope !1499, !noalias !1502

  store i64 %1516, i64* %14, align 8, !alias.scope !1499, !noalias !1502

  %1530 = tail call i64 @log(i64 %1527), !noalias !1499

  %1531 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1376

  store i8 1, i8* %48, align 1, !tbaa !1390

  store i8 1, i8* %50, align 1, !tbaa !1392

  store i8 0, i8* %51, align 1, !tbaa !1393

  store i8 0, i8* %52, align 1, !tbaa !1394

  store i8 0, i8* %49, align 1, !tbaa !1391

  %1532 = load i64, i64* %15, align 8

  %1533 = add i64 %1532, -56

  %1534 = load double, double* %55, align 1

  %1535 = inttoptr i64 %1533 to double*

  store double %1534, double* %1535

  %1536 = add i64 %1531, -835

  %1537 = add i64 %1531, 12

  %1538 = load i64, i64* %14, align 8, !tbaa !1240

  %1539 = add i64 %1538, -8

  %1540 = inttoptr i64 %1539 to i64*

  store i64 %1537, i64* %1540

  store i64 %1539, i64* %14, align 8, !tbaa !1240

  %1541 = tail call %struct.Memory* @sub_400af0_timer_clear(%struct.State* nonnull %0, i64 %1536, %struct.Memory* %596)

  %1542 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1543 = add i64 %1542, -847

  %1544 = add i64 %1542, 10

  %1545 = load i64, i64* %14, align 8, !tbaa !1240

  %1546 = add i64 %1545, -8

  %1547 = inttoptr i64 %1546 to i64*

  store i64 %1544, i64* %1547

  store i64 %1546, i64* %14, align 8, !tbaa !1240

  %1548 = tail call %struct.Memory* @sub_400af0_timer_clear(%struct.State* nonnull %0, i64 %1543, %struct.Memory* %1541)

  %1549 = load i64, i64* %3, align 8

  store i64 2, i64* %13, align 8, !tbaa !1240

  %1550 = add i64 %1549, -857

  %1551 = add i64 %1549, 10

  %1552 = load i64, i64* %14, align 8, !tbaa !1240

  %1553 = add i64 %1552, -8

  %1554 = inttoptr i64 %1553 to i64*

  store i64 %1551, i64* %1554

  store i64 %1553, i64* %14, align 8, !tbaa !1240

  %1555 = tail call %struct.Memory* @sub_400af0_timer_clear(%struct.State* nonnull %0, i64 %1550, %struct.Memory* %1548)

  %1556 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  %1557 = add i64 %1556, -835

  %1558 = add i64 %1556, 7

  %1559 = load i64, i64* %14, align 8, !tbaa !1240

  %1560 = add i64 %1559, -8

  %1561 = inttoptr i64 %1560 to i64*

  store i64 %1558, i64* %1561

  store i64 %1560, i64* %14, align 8, !tbaa !1240

  %1562 = tail call %struct.Memory* @sub_400b10_timer_start(%struct.State* nonnull %0, i64 %1557, %struct.Memory* %1555)

  %1563 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  %1564 = load i64, i64* %15, align 8

  %1565 = add i64 %1564, -64

  store i64 %1565, i64* %12, align 8, !tbaa !1240

  %1566 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 832) to double*)

  store double %1566, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1567 = inttoptr i64 %1565 to double*

  store double %1566, double* %1567

  %1568 = load i64, i64* bitcast (%x_type* @x to i64*)

  store i64 %1568, i64* %11, align 8, !tbaa !1240

  %1569 = add i64 %1563, 3622

  %1570 = add i64 %1563, 32

  %1571 = load i64, i64* %14, align 8, !tbaa !1240

  %1572 = add i64 %1571, -8

  %1573 = inttoptr i64 %1572 to i64*

  store i64 %1570, i64* %1573

  store i64 %1572, i64* %14, align 8, !tbaa !1240

  %1574 = tail call %struct.Memory* @sub_401c80_vranlc(%struct.State* nonnull %0, i64 %1569, %struct.Memory* %1562)

  %1575 = load i64, i64* %3, align 8

  %1576 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 832) to double*)

  store double %1576, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1577 = load i64, i64* %15, align 8

  %1578 = add i64 %1577, -64

  %1579 = inttoptr i64 %1578 to double*

  store double %1576, double* %1579

  %1580 = add i64 %1577, -144

  %1581 = add i64 %1575, 23

  %1582 = inttoptr i64 %1580 to i32*

  store i32 0, i32* %1582

  br label %block_400e91



block_401235:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161, %block_4011d1

  %1583 = phi i64 [ %1431, %block_4011d1 ], [ %1946, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161 ]

  %1584 = phi i64 [ %665, %block_4011d1 ], [ %1944, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161 ]

  %1585 = phi %struct.Memory* [ %630, %block_4011d1 ], [ %1941, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161 ]

  %1586 = add i64 %1583, -144

  %1587 = inttoptr i64 %1586 to i32*

  %1588 = load i32, i32* %1587

  %1589 = add i32 %1588, 1

  %1590 = inttoptr i64 %1586 to i32*

  store i32 %1589, i32* %1590

  %1591 = add i64 %1584, -411

  br label %block_40109a



block_400c45:                                     ; preds = %block_400bd0

  store i32 1, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  %1592 = inttoptr i64 %75 to i64*

  %1593 = load i64, i64* %1592

  store i64 %1593, i64* %13, align 8, !tbaa !1240

  %1594 = add i64 %80, 23

  %1595 = load i64, i64* %14, align 8, !tbaa !1240

  %1596 = add i64 %1595, -8

  %1597 = inttoptr i64 %1596 to i64*

  store i64 %1594, i64* %1597

  %1598 = inttoptr i64 %1596 to i64*

  %1599 = load i64, i64* %1598

  store i64 %1599, i64* %3, align 8, !alias.scope !1504, !noalias !1507

  store i64 %1595, i64* %14, align 8, !alias.scope !1504, !noalias !1507

  %1600 = tail call i64 @fclose(i64 %1593), !noalias !1504

  %1601 = load i64, i64* %15, align 8

  %1602 = add i64 %1601, -212

  %1603 = trunc i64 %1600 to i32

  %1604 = load i64, i64* %3, align 8

  %1605 = add i64 %1604, 6

  %1606 = inttoptr i64 %1602 to i32*

  store i32 %1603, i32* %1606

  br label %block_400c62



block_400d4f:                                     ; preds = %block_400cc9

  store i64 1048576, i64* %13, align 8, !tbaa !1240

  %1607 = add i64 %1727, 12

  %1608 = load i64, i64* %14, align 8, !tbaa !1240

  %1609 = add i64 %1608, -8

  %1610 = inttoptr i64 %1609 to i64*

  store i64 %1607, i64* %1610

  %1611 = inttoptr i64 %1609 to i64*

  %1612 = load i64, i64* %1611

  store i64 %1612, i64* %3, align 8, !alias.scope !1509, !noalias !1512

  store i64 %1608, i64* %14, align 8, !alias.scope !1509, !noalias !1512

  %1613 = tail call i64 @malloc(i64 1048576)

  %1614 = load i64, i64* %3, align 8

  store i64 %1613, i64* bitcast (%x_type* @x to i64*)

  %1615 = load i64, i64* bitcast (%x_type* @x to i64*)

  %1616 = icmp eq i64 %1615, 0

  %1617 = select i1 %1616, i64 23, i64 35

  %1618 = add i64 %1614, %1617

  br i1 %1616, label %block_400d72, label %block_400d7e



block_400cc9:                                     ; preds = %block_400cba, %block_400c62

  %1619 = phi i64 [ %571, %block_400c62 ], [ %1765, %block_400cba ]

  %1620 = phi %struct.Memory* [ %495, %block_400c62 ], [ %495, %block_400cba ]

  %1621 = inttoptr i64 %555 to i32*

  %1622 = load i32, i32* %1621

  %1623 = add i32 %1622, 1

  %1624 = sext i32 %1623 to i64

  store i64 %1624, i64* %10, align 8, !tbaa !1240

  %1625 = add i64 %1624, ptrtoint (%size_type* @size to i64)

  %1626 = inttoptr i64 %1625 to i8*

  store i8 0, i8* %1626

  %1627 = add i64 %1619, 37

  %1628 = load i64, i64* %14, align 8, !tbaa !1240

  %1629 = add i64 %1628, -8

  %1630 = inttoptr i64 %1629 to i64*

  store i64 %1627, i64* %1630

  %1631 = load i64, i64* %517, align 8, !alias.scope !1514, !noalias !1517

  %1632 = load i64, i64* %16, align 8, !alias.scope !1514, !noalias !1517

  %1633 = load i64, i64* %17, align 8, !alias.scope !1514, !noalias !1517

  %1634 = inttoptr i64 %1628 to i64*

  %1635 = load i64, i64* %1634

  %1636 = add i64 %1628, 8

  %1637 = inttoptr i64 %1636 to i64*

  %1638 = load i64, i64* %1637

  %1639 = add i64 %1628, 16

  %1640 = inttoptr i64 %1639 to i64*

  %1641 = load i64, i64* %1640

  %1642 = add i64 %1628, 24

  %1643 = inttoptr i64 %1642 to i64*

  %1644 = load i64, i64* %1643

  %1645 = add i64 %1628, 32

  %1646 = inttoptr i64 %1645 to i64*

  %1647 = load i64, i64* %1646

  %1648 = add i64 %1628, 40

  %1649 = inttoptr i64 %1648 to i64*

  %1650 = load i64, i64* %1649

  %1651 = add i64 %1628, 48

  %1652 = inttoptr i64 %1651 to i64*

  %1653 = load i64, i64* %1652

  %1654 = add i64 %1628, 56

  %1655 = inttoptr i64 %1654 to i64*

  %1656 = load i64, i64* %1655

  %1657 = add i64 %1628, 64

  %1658 = inttoptr i64 %1657 to i64*

  %1659 = load i64, i64* %1658

  %1660 = add i64 %1628, 72

  %1661 = inttoptr i64 %1660 to i64*

  %1662 = load i64, i64* %1661

  %1663 = inttoptr i64 %1629 to i64*

  %1664 = load i64, i64* %1663

  store i64 %1664, i64* %3, align 8, !alias.scope !1514, !noalias !1517

  store i64 %1628, i64* %14, align 8, !alias.scope !1514, !noalias !1517

  %1665 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 949), i64 %560, i64 %1631, i64 %1624, i64 %1632, i64 %1633, i64 %1635, i64 %1638, i64 %1641, i64 %1644, i64 %1647, i64 %1650, i64 %1653, i64 %1656, i64 %1659, i64 %1662), !noalias !1514

  %1666 = load i64, i64* %3, align 8

  store i64 ptrtoint (%size_type* @size to i64), i64* %12, align 8, !tbaa !1240

  %1667 = load i64, i64* %15, align 8

  %1668 = add i64 %1667, -220

  %1669 = trunc i64 %1665 to i32

  %1670 = inttoptr i64 %1668 to i32*

  store i32 %1669, i32* %1670

  %1671 = add i64 %1666, 33

  %1672 = load i64, i64* %14, align 8, !tbaa !1240

  %1673 = add i64 %1672, -8

  %1674 = inttoptr i64 %1673 to i64*

  store i64 %1671, i64* %1674

  %1675 = load i64, i64* %517, align 8, !alias.scope !1519, !noalias !1522

  %1676 = load i64, i64* %516, align 8, !alias.scope !1519, !noalias !1522

  %1677 = load i64, i64* %16, align 8, !alias.scope !1519, !noalias !1522

  %1678 = load i64, i64* %17, align 8, !alias.scope !1519, !noalias !1522

  %1679 = inttoptr i64 %1672 to i64*

  %1680 = load i64, i64* %1679

  %1681 = add i64 %1672, 8

  %1682 = inttoptr i64 %1681 to i64*

  %1683 = load i64, i64* %1682

  %1684 = add i64 %1672, 16

  %1685 = inttoptr i64 %1684 to i64*

  %1686 = load i64, i64* %1685

  %1687 = add i64 %1672, 24

  %1688 = inttoptr i64 %1687 to i64*

  %1689 = load i64, i64* %1688

  %1690 = add i64 %1672, 32

  %1691 = inttoptr i64 %1690 to i64*

  %1692 = load i64, i64* %1691

  %1693 = add i64 %1672, 40

  %1694 = inttoptr i64 %1693 to i64*

  %1695 = load i64, i64* %1694

  %1696 = add i64 %1672, 48

  %1697 = inttoptr i64 %1696 to i64*

  %1698 = load i64, i64* %1697

  %1699 = add i64 %1672, 56

  %1700 = inttoptr i64 %1699 to i64*

  %1701 = load i64, i64* %1700

  %1702 = add i64 %1672, 64

  %1703 = inttoptr i64 %1702 to i64*

  %1704 = load i64, i64* %1703

  %1705 = add i64 %1672, 72

  %1706 = inttoptr i64 %1705 to i64*

  %1707 = load i64, i64* %1706

  %1708 = inttoptr i64 %1673 to i64*

  %1709 = load i64, i64* %1708

  store i64 %1709, i64* %3, align 8, !alias.scope !1519, !noalias !1522

  store i64 %1672, i64* %14, align 8, !alias.scope !1519, !noalias !1522

  %1710 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1007), i64 ptrtoint (%size_type* @size to i64), i64 %1675, i64 %1676, i64 %1677, i64 %1678, i64 %1680, i64 %1683, i64 %1686, i64 %1689, i64 %1692, i64 %1695, i64 %1698, i64 %1701, i64 %1704, i64 %1707), !noalias !1519

  %1711 = load i64, i64* %3, align 8

  store i64 8388608, i64* %11, align 8, !tbaa !1240

  store i64 8388608, i64* %13, align 8, !tbaa !1240

  store i32 0, i32* bitcast (%verified_type* @verified to i32*)

  %1712 = load i64, i64* %15, align 8

  %1713 = add i64 %1712, -224

  %1714 = trunc i64 %1710 to i32

  %1715 = inttoptr i64 %1713 to i32*

  store i32 %1714, i32* %1715

  %1716 = add i64 %1711, 29

  %1717 = load i64, i64* %14, align 8, !tbaa !1240

  %1718 = add i64 %1717, -8

  %1719 = inttoptr i64 %1718 to i64*

  store i64 %1716, i64* %1719

  %1720 = inttoptr i64 %1718 to i64*

  %1721 = load i64, i64* %1720

  store i64 %1721, i64* %3, align 8, !alias.scope !1524, !noalias !1527

  store i64 %1717, i64* %14, align 8, !alias.scope !1524, !noalias !1527

  %1722 = tail call i64 @malloc(i64 8388608)

  %1723 = load i64, i64* %3, align 8

  store i64 %1722, i64* bitcast (%pad_type* @pad to i64*)

  %1724 = load i64, i64* bitcast (%pad_type* @pad to i64*)

  %1725 = icmp eq i64 %1724, 0

  %1726 = select i1 %1725, i64 23, i64 35

  %1727 = add i64 %1723, %1726

  br i1 %1725, label %block_400d43, label %block_400d4f



block_400e9e:                                     ; preds = %block_400e91

  %1728 = add i64 %1968, -64

  store i64 %1728, i64* %13, align 8, !tbaa !1240

  %1729 = inttoptr i64 %1728 to double*

  %1730 = load double, double* %1729

  store double %1730, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1731 = add i64 %1998, 3218

  %1732 = add i64 %1998, 14

  %1733 = load i64, i64* %14, align 8, !tbaa !1240

  %1734 = add i64 %1733, -8

  %1735 = inttoptr i64 %1734 to i64*

  store i64 %1732, i64* %1735

  store i64 %1734, i64* %14, align 8, !tbaa !1240

  %1736 = tail call %struct.Memory* @sub_401b30_randlc(%struct.State* nonnull %0, i64 %1731, %struct.Memory* %1969)

  %1737 = load i64, i64* %15, align 8

  %1738 = add i64 %1737, -72

  %1739 = load i64, i64* %3, align 8

  %1740 = load double, double* %55, align 1

  %1741 = inttoptr i64 %1738 to double*

  store double %1740, double* %1741

  %1742 = add i64 %1737, -144

  %1743 = inttoptr i64 %1742 to i32*

  %1744 = load i32, i32* %1743

  %1745 = add i32 %1744, 1

  %1746 = inttoptr i64 %1742 to i32*

  store i32 %1745, i32* %1746

  %1747 = add i64 %1739, -27

  br label %block_400e91



block_400c35:                                     ; preds = %block_400bd0

  store i32 0, i32* bitcast (%timers_enabled_type* @timers_enabled to i32*)

  %1748 = add i64 %80, 45

  br label %block_400c62



block_401266:                                     ; preds = %block_40124e, %block_40125c

  %1749 = phi i64 [ %2050, %block_40124e ], [ %589, %block_40125c ]

  %1750 = phi i64 [ %697, %block_40124e ], [ %588, %block_40125c ]

  %1751 = phi %struct.Memory* [ %2051, %block_40124e ], [ %587, %block_40125c ]

  %1752 = add i64 %1749, -160

  %1753 = inttoptr i64 %1752 to i32*

  %1754 = load i32, i32* %1753

  %1755 = add i32 %1754, 1

  %1756 = inttoptr i64 %1752 to i32*

  store i32 %1755, i32* %1756

  %1757 = add i64 %1750, -797

  br label %block_400f49



block_40171c:                                     ; preds = %block_401668, %block_40151e.block_40171c_crit_edge

  %1758 = phi i64 [ %1058, %block_40151e.block_40171c_crit_edge ], [ %1325, %block_401668 ]

  %1759 = phi %struct.Memory* [ %1044, %block_40151e.block_40171c_crit_edge ], [ %1270, %block_401668 ]

  %1760 = add i64 %1758, -44

  %1761 = inttoptr i64 %1760 to i32*

  store i32 0, i32* %1761

  br label %block_401723



block_400cba:                                     ; preds = %block_400c62

  %1762 = inttoptr i64 %555 to i32*

  %1763 = load i32, i32* %1762

  %1764 = add i32 %1763, -1

  %1765 = add i64 %571, 15

  %1766 = inttoptr i64 %555 to i32*

  store i32 %1764, i32* %1766

  br label %block_400cc9



block_400f9b:                                     ; preds = %block_400f8e

  %1767 = add i64 %2067, -152

  %1768 = inttoptr i64 %1767 to i32*

  %1769 = load i32, i32* %1768

  %1770 = zext i32 %1769 to i64

  %1771 = add i64 %2067, -228

  %1772 = inttoptr i64 %1771 to i32*

  store i32 2, i32* %1772

  store i64 %1770, i64* %8, align 8, !tbaa !1240

  %1773 = sext i32 %1769 to i64

  %1774 = lshr i64 %1773, 32

  store i64 %1774, i64* %517, align 8, !tbaa !1240

  %1775 = inttoptr i64 %1771 to i32*

  %1776 = load i32, i32* %1775

  %1777 = zext i32 %1776 to i64

  store i64 %1777, i64* %10, align 8, !tbaa !1240

  %1778 = add i64 %2097, 28

  store i64 %1778, i64* %3, align 8

  %1779 = sext i32 %1776 to i64

  %1780 = shl nuw i64 %1774, 32

  %1781 = or i64 %1780, %1770

  %1782 = sdiv i64 %1781, %1779

  %1783 = shl i64 %1782, 32

  %1784 = ashr exact i64 %1783, 32

  %1785 = icmp eq i64 %1782, %1784

  br i1 %1785, label %1791, label %1786



; <label>:1786:                                   ; preds = %block_400f9b

  %1787 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1778, %struct.Memory* %2068) #14

  %1788 = load i64, i64* %15, align 8

  %1789 = load i32, i32* %7, align 4

  %1790 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:1791:                                   ; preds = %block_400f9b

  %1792 = srem i64 %1781, %1779

  %1793 = and i64 %1792, 4294967295

  store i64 %1793, i64* %11, align 8, !tbaa !1240

  %1794 = trunc i64 %1782 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1791, %1786

  %1795 = phi i64 [ %1790, %1786 ], [ %1778, %1791 ]

  %1796 = phi i32 [ %1789, %1786 ], [ %1794, %1791 ]

  %1797 = phi i64 [ %1788, %1786 ], [ %2067, %1791 ]

  %1798 = phi %struct.Memory* [ %1787, %1786 ], [ %2068, %1791 ]

  %1799 = add i64 %1797, -148

  %1800 = inttoptr i64 %1799 to i32*

  store i32 %1796, i32* %1800

  %1801 = inttoptr i64 %1799 to i32*

  %1802 = load i32, i32* %1801

  %1803 = shl i32 %1802, 1

  %1804 = add i64 %1797, -152

  %1805 = inttoptr i64 %1804 to i32*

  %1806 = load i32, i32* %1805

  %1807 = sub i32 %1803, %1806

  %1808 = icmp ult i32 %1803, %1806

  %1809 = zext i1 %1808 to i8

  store i8 %1809, i8* %47, align 1, !tbaa !1376

  %1810 = and i32 %1807, 255

  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810) #11

  %1812 = trunc i32 %1811 to i8

  %1813 = and i8 %1812, 1

  %1814 = xor i8 %1813, 1

  store i8 %1814, i8* %48, align 1, !tbaa !1390

  %1815 = xor i32 %1806, %1803

  %1816 = xor i32 %1815, %1807

  %1817 = lshr i32 %1816, 4

  %1818 = trunc i32 %1817 to i8

  %1819 = and i8 %1818, 1

  store i8 %1819, i8* %49, align 1, !tbaa !1391

  %1820 = icmp eq i32 %1807, 0

  %1821 = zext i1 %1820 to i8

  store i8 %1821, i8* %50, align 1, !tbaa !1392

  %1822 = lshr i32 %1807, 31

  %1823 = trunc i32 %1822 to i8

  store i8 %1823, i8* %51, align 1, !tbaa !1393

  %1824 = lshr i32 %1802, 30

  %1825 = and i32 %1824, 1

  %1826 = lshr i32 %1806, 31

  %1827 = xor i32 %1826, %1825

  %1828 = xor i32 %1822, %1825

  %1829 = add nuw nsw i32 %1828, %1827

  %1830 = icmp eq i32 %1829, 2

  %1831 = zext i1 %1830 to i8

  store i8 %1831, i8* %52, align 1, !tbaa !1394

  %1832 = select i1 %1820, i64 46, i64 27

  %1833 = add i64 %1795, %1832

  br i1 %1820, label %block_400fe5, label %block_400fd2



block_401296:                                     ; preds = %block_401289

  %1834 = inttoptr i64 %1851 to double*

  %1835 = load double, double* %1834

  %1836 = sext i32 %2101 to i64

  %1837 = shl nsw i64 %1836, 3

  %1838 = add i64 %1837, add (i64 ptrtoint (%zero_type* @zero to i64), i64 16)

  %1839 = inttoptr i64 %1838 to double*

  %1840 = load double, double* %1839

  %1841 = fadd double %1835, %1840

  store double %1841, double* %55, align 1, !tbaa !1279

  store i64 0, i64* %56, align 1, !tbaa !1279

  %1842 = inttoptr i64 %1851 to double*

  store double %1841, double* %1842

  %1843 = inttoptr i64 %1848 to i32*

  %1844 = load i32, i32* %1843

  %1845 = add i32 %1844, 1

  %1846 = inttoptr i64 %1848 to i32*

  store i32 %1845, i32* %1846

  %1847 = add i64 %2111, -13

  br label %block_401289



block_40127f:                                     ; preds = %block_400f49

  %1848 = add i64 %1440, -144

  %1849 = add i64 %1462, 10

  %1850 = inttoptr i64 %1848 to i32*

  store i32 0, i32* %1850

  %1851 = add i64 %1440, -136

  br label %block_401289



block_4010aa:                                     ; preds = %block_40109a

  %1852 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 808) to double*)

  store double %1852, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1853 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 816) to double*)

  store double %1853, double* %499, align 1, !tbaa !1279

  %1854 = load i64, i64* bitcast (%x_type* @x to i64*)

  %1855 = shl i32 %2054, 1

  %1856 = sext i32 %1855 to i64

  %1857 = bitcast double %1853 to <2 x i32>

  %1858 = extractelement <2 x i32> %1857, i32 0

  store i32 %1858, i32* %944, align 1, !tbaa !1405

  %1859 = extractelement <2 x i32> %1857, i32 1

  store i32 %1859, i32* %946, align 1, !tbaa !1405

  %1860 = shl nsw i64 %1856, 3

  %1861 = add i64 %1860, %1854

  %1862 = load double, double* %2033, align 1

  %1863 = inttoptr i64 %1861 to double*

  %1864 = load double, double* %1863

  %1865 = fmul double %1862, %1864

  %1866 = fsub double %1865, %1852

  %1867 = add i64 %2050, -96

  %1868 = inttoptr i64 %1867 to double*

  store double %1866, double* %1868

  %1869 = load i64, i64* bitcast (%x_type* @x to i64*)

  store i64 %1869, i64* %8, align 8, !tbaa !1240

  %1870 = inttoptr i64 %2052 to i32*

  %1871 = load i32, i32* %1870

  %1872 = shl i32 %1871, 1

  %1873 = or i32 %1872, 1

  %1874 = zext i32 %1873 to i64

  store i64 %1874, i64* %10, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1376

  %1875 = and i32 %1873, 255

  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875) #11

  %1877 = trunc i32 %1876 to i8

  %1878 = and i8 %1877, 1

  %1879 = xor i8 %1878, 1

  store i8 %1879, i8* %48, align 1, !tbaa !1390

  store i8 0, i8* %49, align 1, !tbaa !1391

  store i8 0, i8* %50, align 1, !tbaa !1392

  %1880 = lshr i32 %1871, 30

  %1881 = and i32 %1880, 1

  %1882 = trunc i32 %1881 to i8

  store i8 %1882, i8* %51, align 1, !tbaa !1393

  %1883 = lshr i32 %1871, 30

  %1884 = and i32 %1883, 1

  %1885 = xor i32 %1881, %1884

  %1886 = add nuw nsw i32 %1885, %1881

  %1887 = icmp eq i32 %1886, 2

  %1888 = zext i1 %1887 to i8

  store i8 %1888, i8* %52, align 1, !tbaa !1394

  %1889 = sext i32 %1873 to i64

  store i64 %1889, i64* %11, align 8, !tbaa !1240

  %1890 = shl nsw i64 %1889, 3

  %1891 = add i64 %1869, %1890

  %1892 = load double, double* %499, align 1

  %1893 = inttoptr i64 %1891 to double*

  %1894 = load double, double* %1893

  %1895 = fmul double %1892, %1894

  %1896 = load double, double* %55, align 1

  %1897 = fsub double %1895, %1896

  %1898 = load i64, i64* %15, align 8

  %1899 = add i64 %1898, -104

  %1900 = inttoptr i64 %1899 to double*

  store double %1897, double* %1900

  %1901 = add i64 %1898, -96

  %1902 = inttoptr i64 %1901 to double*

  %1903 = load double, double* %1902

  %1904 = fmul double %1903, %1903

  %1905 = inttoptr i64 %1899 to double*

  %1906 = load double, double* %1905

  %1907 = fmul double %1906, %1906

  store double %1907, double* %2033, align 1, !tbaa !1279

  store i64 0, i64* %2034, align 1, !tbaa !1279

  %1908 = fadd double %1907, %1904

  store double %1908, double* %499, align 1, !tbaa !1279

  store i64 0, i64* %500, align 1, !tbaa !1279

  %1909 = add i64 %1898, -64

  %1910 = inttoptr i64 %1909 to double*

  store double %1908, double* %1910

  %1911 = add i64 %2065, 124

  store i64 %1911, i64* %3, align 8

  %1912 = inttoptr i64 %1909 to double*

  %1913 = load double, double* %1912

  %1914 = fcmp uno double %1896, %1913

  br i1 %1914, label %1915, label %1927



; <label>:1915:                                   ; preds = %block_4010aa

  %1916 = fadd double %1896, %1913

  %1917 = bitcast double %1916 to i64

  %1918 = and i64 %1917, 9221120237041090560

  %1919 = icmp eq i64 %1918, 9218868437227405312

  %1920 = and i64 %1917, 2251799813685247

  %1921 = icmp ne i64 %1920, 0

  %1922 = and i1 %1919, %1921

  br i1 %1922, label %1923, label %1933



; <label>:1923:                                   ; preds = %1915

  %1924 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1911, %struct.Memory* %2051) #14

  %1925 = load i64, i64* %3, align 8

  %1926 = load i8, i8* %47, align 1, !tbaa !1376

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161



; <label>:1927:                                   ; preds = %block_4010aa

  %1928 = fcmp ogt double %1896, %1913

  br i1 %1928, label %1933, label %1929



; <label>:1929:                                   ; preds = %1927

  %1930 = fcmp olt double %1896, %1913

  br i1 %1930, label %1933, label %1931



; <label>:1931:                                   ; preds = %1929

  %1932 = fcmp oeq double %1896, %1913

  br i1 %1932, label %1933, label %1937



; <label>:1933:                                   ; preds = %1931, %1929, %1927, %1915

  %1934 = phi i8 [ 0, %1927 ], [ 0, %1929 ], [ 1, %1931 ], [ 1, %1915 ]

  %1935 = phi i8 [ 0, %1927 ], [ 0, %1929 ], [ 0, %1931 ], [ 1, %1915 ]

  %1936 = phi i8 [ 0, %1927 ], [ 1, %1929 ], [ 0, %1931 ], [ 1, %1915 ]

  store i8 %1934, i8* %50, align 1, !tbaa !1407

  store i8 %1935, i8* %48, align 1, !tbaa !1407

  store i8 %1936, i8* %47, align 1, !tbaa !1407

  br label %1937



; <label>:1937:                                   ; preds = %1933, %1931

  %1938 = phi i8 [ %1936, %1933 ], [ 0, %1931 ]

  store i8 0, i8* %52, align 1, !tbaa !1407

  store i8 0, i8* %51, align 1, !tbaa !1407

  store i8 0, i8* %49, align 1, !tbaa !1407

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit161: ; preds = %1937, %1923

  %1939 = phi i8 [ %1926, %1923 ], [ %1938, %1937 ]

  %1940 = phi i64 [ %1925, %1923 ], [ %1911, %1937 ]

  %1941 = phi %struct.Memory* [ %1924, %1923 ], [ %2051, %1937 ]

  %1942 = icmp ne i8 %1939, 0

  %1943 = select i1 %1942, i64 271, i64 6

  %1944 = add i64 %1940, %1943

  %1945 = icmp eq i8 %1939, 1

  %1946 = load i64, i64* %15, align 8

  br i1 %1945, label %block_401235, label %block_40112c



block_400f5b:                                     ; preds = %block_400f49

  %1947 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 840) to double*)

  %1948 = add i64 %1440, -168

  %1949 = inttoptr i64 %1948 to i32*

  %1950 = load i32, i32* %1949

  %1951 = add i32 %1444, %1950

  %1952 = add i64 %1440, -152

  %1953 = inttoptr i64 %1952 to i32*

  store i32 %1951, i32* %1953

  %1954 = add i64 %1440, -64

  %1955 = inttoptr i64 %1954 to double*

  store double %1947, double* %1955

  %1956 = add i64 %1440, -120

  %1957 = inttoptr i64 %1956 to double*

  %1958 = load double, double* %1957

  store double %1958, double* %55, align 1, !tbaa !1279

  store double 0.000000e+00, double* %57, align 1, !tbaa !1279

  %1959 = add i64 %1440, -72

  %1960 = inttoptr i64 %1959 to double*

  store double %1958, double* %1960

  %1961 = add i64 %1440, -144

  %1962 = add i64 %1462, 51

  %1963 = inttoptr i64 %1961 to i32*

  store i32 1, i32* %1963

  br label %block_400f8e



block_400d43:                                     ; preds = %block_400cc9

  %1964 = load i64, i64* %15, align 8

  %1965 = add i64 %1964, -44

  %1966 = inttoptr i64 %1965 to i32*

  store i32 1, i32* %1966

  br label %block_401723



block_400e91:                                     ; preds = %block_400e9e, %block_400e21

  %1967 = phi i64 [ %1581, %block_400e21 ], [ %1747, %block_400e9e ]

  %1968 = phi i64 [ %1577, %block_400e21 ], [ %1737, %block_400e9e ]

  %1969 = phi %struct.Memory* [ %1574, %block_400e21 ], [ %1736, %block_400e9e ]

  %1970 = add i64 %1968, -144

  %1971 = inttoptr i64 %1970 to i32*

  %1972 = load i32, i32* %1971

  %1973 = add i32 %1972, -17

  %1974 = icmp ult i32 %1972, 17

  %1975 = zext i1 %1974 to i8

  store i8 %1975, i8* %47, align 1, !tbaa !1376

  %1976 = and i32 %1973, 255

  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976) #11

  %1978 = trunc i32 %1977 to i8

  %1979 = and i8 %1978, 1

  %1980 = xor i8 %1979, 1

  store i8 %1980, i8* %48, align 1, !tbaa !1390

  %1981 = xor i32 %1972, 16

  %1982 = xor i32 %1981, %1973

  %1983 = lshr i32 %1982, 4

  %1984 = trunc i32 %1983 to i8

  %1985 = and i8 %1984, 1

  store i8 %1985, i8* %49, align 1, !tbaa !1391

  %1986 = icmp eq i32 %1973, 0

  %1987 = zext i1 %1986 to i8

  store i8 %1987, i8* %50, align 1, !tbaa !1392

  %1988 = lshr i32 %1973, 31

  %1989 = trunc i32 %1988 to i8

  store i8 %1989, i8* %51, align 1, !tbaa !1393

  %1990 = lshr i32 %1972, 31

  %1991 = xor i32 %1988, %1990

  %1992 = add nuw nsw i32 %1991, %1990

  %1993 = icmp eq i32 %1992, 2

  %1994 = zext i1 %1993 to i8

  store i8 %1994, i8* %52, align 1, !tbaa !1394

  %1995 = icmp ne i8 %1989, 0

  %1996 = xor i1 %1995, %1993

  %1997 = select i1 %1996, i64 13, i64 52

  %1998 = add i64 %1967, %1997

  br i1 %1996, label %block_400e9e, label %block_400ec5



block_40119c:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %1999 = add i64 %1431, -80

  %2000 = inttoptr i64 %1999 to double*

  %2001 = load double, double* %2000

  %2002 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 912) to float*)

  %2003 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 916) to float*)

  %2004 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 920) to float*)

  %2005 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 924) to float*)

  store float %2002, float* %948, align 1, !tbaa !1405

  store float %2003, float* %950, align 1, !tbaa !1405

  store float %2004, float* %951, align 1, !tbaa !1405

  store float %2005, float* %953, align 1, !tbaa !1405

  %2006 = bitcast double %2001 to i64

  %2007 = load i64, i64* %954, align 1

  %2008 = and i64 %2007, %2006

  %2009 = trunc i64 %2008 to i32

  %2010 = lshr i64 %2008, 32

  %2011 = trunc i64 %2010 to i32

  store i32 %2009, i32* %2023, align 1, !tbaa !1458

  store i32 %2011, i32* %2025, align 1, !tbaa !1458

  store i32 0, i32* %2026, align 1, !tbaa !1458

  store i32 0, i32* %2028, align 1, !tbaa !1458

  %2012 = add i64 %1431, -240

  %2013 = load double, double* %55, align 1

  %2014 = inttoptr i64 %2012 to double*

  store double %2013, double* %2014

  %2015 = add i64 %1430, 53

  %2016 = add i64 %1431, -88

  br label %block_4011d1



block_401090:                                     ; preds = %block_401086, %block_401078

  %2017 = phi i64 [ %139, %block_401078 ], [ %2118, %block_401086 ]

  %2018 = phi %struct.Memory* [ %135, %block_401078 ], [ %2117, %block_401086 ]

  %2019 = load i64, i64* %15, align 8

  %2020 = add i64 %2019, -144

  %2021 = add i64 %2017, 10

  %2022 = inttoptr i64 %2020 to i32*

  store i32 0, i32* %2022

  br label %block_40109a



block_400ec5:                                     ; preds = %block_400e91

  %2023 = bitcast [32 x %union.VectorReg]* %24 to i32*

  store i32 0, i32* %2023, align 1, !tbaa !1458

  %2024 = getelementptr inbounds i8, i8* %53, i64 4

  %2025 = bitcast i8* %2024 to i32*

  store i32 0, i32* %2025, align 1, !tbaa !1458

  %2026 = bitcast i64* %56 to i32*

  store i32 0, i32* %2026, align 1, !tbaa !1458

  %2027 = getelementptr inbounds i8, i8* %53, i64 12

  %2028 = bitcast i8* %2027 to i32*

  store i32 0, i32* %2028, align 1, !tbaa !1458

  %2029 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 840) to double*)

  store double %2029, double* %499, align 1, !tbaa !1279

  store double 0.000000e+00, double* %501, align 1, !tbaa !1279

  %2030 = add i64 %1968, -64

  %2031 = inttoptr i64 %2030 to double*

  %2032 = load double, double* %2031

  %2033 = bitcast %union.VectorReg* %26 to double*

  store double %2032, double* %2033, align 1, !tbaa !1279

  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %2035 = bitcast i64* %2034 to double*

  store double 0.000000e+00, double* %2035, align 1, !tbaa !1279

  %2036 = add i64 %1968, -120

  %2037 = inttoptr i64 %2036 to double*

  store double %2032, double* %2037

  %2038 = add i64 %1968, -128

  %2039 = inttoptr i64 %2038 to double*

  store double %2029, double* %2039

  %2040 = add i64 %1968, -136

  %2041 = load double, double* %55, align 1

  %2042 = inttoptr i64 %2040 to double*

  store double %2041, double* %2042

  %2043 = add i64 %1968, -184

  %2044 = inttoptr i64 %2043 to double*

  store double %2041, double* %2044

  %2045 = add i64 %1968, -192

  %2046 = inttoptr i64 %2045 to double*

  store double %2041, double* %2046

  %2047 = add i64 %1998, 60

  %2048 = inttoptr i64 %1970 to i32*

  store i32 0, i32* %2048

  br label %block_400f01



block_40109a:                                     ; preds = %block_401090, %block_401235

  %2049 = phi i64 [ %2021, %block_401090 ], [ %1591, %block_401235 ]

  %2050 = phi i64 [ %2019, %block_401090 ], [ %1583, %block_401235 ]

  %2051 = phi %struct.Memory* [ %2018, %block_401090 ], [ %1585, %block_401235 ]

  %2052 = add i64 %2050, -144

  %2053 = inttoptr i64 %2052 to i32*

  %2054 = load i32, i32* %2053

  %2055 = add i32 %2054, -65536

  %2056 = lshr i32 %2055, 31

  %2057 = trunc i32 %2056 to i8

  %2058 = lshr i32 %2054, 31

  %2059 = xor i32 %2056, %2058

  %2060 = add nuw nsw i32 %2059, %2058

  %2061 = icmp eq i32 %2060, 2

  %2062 = icmp ne i8 %2057, 0

  %2063 = xor i1 %2062, %2061

  %2064 = select i1 %2063, i64 16, i64 436

  %2065 = add i64 %2049, %2064

  br i1 %2063, label %block_4010aa, label %block_40124e



block_400f8e:                                     ; preds = %block_400f5b, %block_400ff7

  %2066 = phi i64 [ %1962, %block_400f5b ], [ %133, %block_400ff7 ]

  %2067 = phi i64 [ %1440, %block_400f5b ], [ %118, %block_400ff7 ]

  %2068 = phi %struct.Memory* [ %1441, %block_400f5b ], [ %117, %block_400ff7 ]

  %2069 = add i64 %2067, -144

  %2070 = inttoptr i64 %2069 to i32*

  %2071 = load i32, i32* %2070

  %2072 = add i32 %2071, -100

  %2073 = icmp ult i32 %2071, 100

  %2074 = zext i1 %2073 to i8

  store i8 %2074, i8* %47, align 1, !tbaa !1376

  %2075 = and i32 %2072, 255

  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075) #11

  %2077 = trunc i32 %2076 to i8

  %2078 = and i8 %2077, 1

  %2079 = xor i8 %2078, 1

  store i8 %2079, i8* %48, align 1, !tbaa !1390

  %2080 = xor i32 %2072, %2071

  %2081 = lshr i32 %2080, 4

  %2082 = trunc i32 %2081 to i8

  %2083 = and i8 %2082, 1

  store i8 %2083, i8* %49, align 1, !tbaa !1391

  %2084 = icmp eq i32 %2072, 0

  %2085 = zext i1 %2084 to i8

  store i8 %2085, i8* %50, align 1, !tbaa !1392

  %2086 = lshr i32 %2072, 31

  %2087 = trunc i32 %2086 to i8

  store i8 %2087, i8* %51, align 1, !tbaa !1393

  %2088 = lshr i32 %2071, 31

  %2089 = xor i32 %2086, %2088

  %2090 = add nuw nsw i32 %2089, %2088

  %2091 = icmp eq i32 %2090, 2

  %2092 = zext i1 %2091 to i8

  store i8 %2092, i8* %52, align 1, !tbaa !1394

  %2093 = icmp ne i8 %2087, 0

  %2094 = xor i1 %2093, %2091

  %2095 = or i1 %2084, %2094

  %2096 = select i1 %2095, i64 13, i64 156

  %2097 = add i64 %2066, %2096

  br i1 %2095, label %block_400f9b, label %block_40102a.loopexit



block_401289:                                     ; preds = %block_40127f, %block_401296

  %2098 = phi i64 [ %1849, %block_40127f ], [ %1847, %block_401296 ]

  %2099 = phi %struct.Memory* [ %1441, %block_40127f ], [ %2099, %block_401296 ]

  %2100 = inttoptr i64 %1848 to i32*

  %2101 = load i32, i32* %2100

  %2102 = add i32 %2101, -10

  %2103 = lshr i32 %2102, 31

  %2104 = lshr i32 %2101, 31

  %2105 = xor i32 %2103, %2104

  %2106 = add nuw nsw i32 %2105, %2104

  %2107 = icmp eq i32 %2106, 2

  %2108 = icmp ne i32 %2103, 0

  %2109 = xor i1 %2108, %2107

  %2110 = select i1 %2109, i64 13, i64 65

  %2111 = add i64 %2098, %2110

  br i1 %2109, label %block_401296, label %block_4012ca



block_401086:                                     ; preds = %block_401078

  store i64 1, i64* %13, align 8, !tbaa !1240

  %2112 = add i64 %139, -1398

  %2113 = add i64 %139, 10

  %2114 = load i64, i64* %14, align 8, !tbaa !1240

  %2115 = add i64 %2114, -8

  %2116 = inttoptr i64 %2115 to i64*

  store i64 %2113, i64* %2116

  store i64 %2115, i64* %14, align 8, !tbaa !1240

  %2117 = tail call %struct.Memory* @sub_400b10_timer_start(%struct.State* nonnull %0, i64 %2112, %struct.Memory* %135)

  %2118 = load i64, i64* %3, align 8

  br label %block_401090



block_400f01:                                     ; preds = %block_400ec5, %block_400f0e

  %2119 = phi i64 [ %2047, %block_400ec5 ], [ %676, %block_400f0e ]

  %2120 = phi %struct.Memory* [ %1969, %block_400ec5 ], [ %2120, %block_400f0e ]

  %2121 = inttoptr i64 %1970 to i32*

  %2122 = load i32, i32* %2121

  %2123 = add i32 %2122, -10

  %2124 = lshr i32 %2123, 31

  %2125 = trunc i32 %2124 to i8

  %2126 = lshr i32 %2122, 31

  %2127 = xor i32 %2124, %2126

  %2128 = add nuw nsw i32 %2127, %2126

  %2129 = icmp eq i32 %2128, 2

  %2130 = icmp ne i8 %2125, 0

  %2131 = xor i1 %2130, %2129

  %2132 = select i1 %2131, i64 13, i64 52

  %2133 = add i64 %2119, %2132

  br i1 %2131, label %block_400f0e, label %block_400f35

}



; Function Attrs: noinline

define %struct.Memory* @sub_401740_print_results(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401740:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %5 = bitcast %union.anon* %4 to i8*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %11 = bitcast %union.anon* %10 to i32*

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0

  %13 = bitcast %union.anon* %12 to i32*

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %16 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %17 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %29 = load i64, i64* %20, align 8

  %30 = load i64, i64* %19, align 8, !tbaa !1240

  %31 = add i64 %30, -8

  %32 = inttoptr i64 %31 to i64*

  store i64 %29, i64* %32

  store i64 %31, i64* %20, align 8, !tbaa !1240

  %33 = load i64, i64* %26, align 8

  %34 = add i64 %30, -16

  %35 = inttoptr i64 %34 to i64*

  store i64 %33, i64* %35

  %36 = load i64, i64* %25, align 8

  %37 = add i64 %30, -24

  %38 = inttoptr i64 %37 to i64*

  store i64 %36, i64* %38

  %39 = load i64, i64* %24, align 8

  %40 = add i64 %30, -32

  %41 = inttoptr i64 %40 to i64*

  store i64 %39, i64* %41

  %42 = load i64, i64* %23, align 8

  %43 = add i64 %30, -40

  %44 = inttoptr i64 %43 to i64*

  store i64 %42, i64* %44

  %45 = load i64, i64* %14, align 8

  %46 = add i64 %30, -48

  %47 = inttoptr i64 %46 to i64*

  store i64 %45, i64* %47

  %48 = add i64 %30, -328

  store i64 %48, i64* %19, align 8, !tbaa !1240

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %55 = load i8, i8* %5, align 1

  %56 = add i64 %30, 88

  %57 = inttoptr i64 %56 to i64*

  %58 = load i64, i64* %57

  store i64 %58, i64* %21, align 8, !tbaa !1240

  %59 = add i64 %30, 80

  %60 = inttoptr i64 %59 to i64*

  %61 = load i64, i64* %60

  store i64 %61, i64* %22, align 8, !tbaa !1240

  %62 = add i64 %30, 72

  %63 = inttoptr i64 %62 to i64*

  %64 = load i64, i64* %63

  store i64 %64, i64* %14, align 8, !tbaa !1240

  %65 = add i64 %30, 64

  %66 = inttoptr i64 %65 to i64*

  %67 = load i64, i64* %66

  store i64 %67, i64* %25, align 8, !tbaa !1240

  %68 = add i64 %30, 56

  %69 = inttoptr i64 %68 to i64*

  %70 = load i64, i64* %69

  store i64 %70, i64* %26, align 8, !tbaa !1240

  %71 = add i64 %30, 48

  %72 = inttoptr i64 %71 to i64*

  %73 = load i64, i64* %72

  store i64 %73, i64* %23, align 8, !tbaa !1240

  %74 = load i64, i64* %20, align 8

  %75 = add i64 %74, 48

  %76 = inttoptr i64 %75 to i64*

  %77 = load i64, i64* %76

  store i64 %77, i64* %24, align 8, !tbaa !1240

  %78 = add i64 %74, 40

  %79 = inttoptr i64 %78 to i64*

  %80 = load i64, i64* %79

  store i64 %80, i64* %17, align 8, !tbaa !1240

  %81 = add i64 %74, -117

  %82 = inttoptr i64 %81 to i8*

  store i8 %55, i8* %82

  %83 = add i64 %74, 32

  %84 = inttoptr i64 %83 to i64*

  %85 = load i64, i64* %84

  %86 = add i64 %74, -124

  %87 = load i32, i32* %7, align 4

  %88 = inttoptr i64 %86 to i32*

  store i32 %87, i32* %88

  %89 = add i64 %74, 24

  %90 = inttoptr i64 %89 to i32*

  %91 = load i32, i32* %90

  %92 = add i64 %74, -136

  %93 = inttoptr i64 %92 to i64*

  store i64 %85, i64* %93

  %94 = add i64 %74, 16

  %95 = inttoptr i64 %94 to i64*

  %96 = load i64, i64* %95

  %97 = add i64 %74, -140

  %98 = inttoptr i64 %97 to i32*

  store i32 %91, i32* %98

  %99 = inttoptr i64 %86 to i32*

  %100 = load i32, i32* %99

  %101 = zext i32 %100 to i64

  store i64 %101, i64* %15, align 8, !tbaa !1240

  %102 = add i64 %74, -152

  %103 = inttoptr i64 %102 to i64*

  store i64 %96, i64* %103

  %104 = add i64 %74, -48

  %105 = load i64, i64* %18, align 8

  %106 = inttoptr i64 %104 to i64*

  store i64 %105, i64* %106

  %107 = inttoptr i64 %81 to i8*

  %108 = load i8, i8* %107

  %109 = add i64 %74, -49

  %110 = inttoptr i64 %109 to i8*

  store i8 %108, i8* %110

  %111 = add i64 %74, -56

  %112 = load i32, i32* %9, align 4

  %113 = inttoptr i64 %111 to i32*

  store i32 %112, i32* %113

  %114 = add i64 %74, -60

  %115 = inttoptr i64 %114 to i32*

  store i32 %100, i32* %115

  %116 = add i64 %74, -64

  %117 = load i32, i32* %11, align 4

  %118 = inttoptr i64 %116 to i32*

  store i32 %117, i32* %118

  %119 = add i64 %74, -68

  %120 = load i32, i32* %13, align 4

  %121 = inttoptr i64 %119 to i32*

  store i32 %120, i32* %121

  %122 = add i64 %74, -80

  %123 = bitcast [32 x %union.VectorReg]* %27 to double*

  %124 = load double, double* %123, align 1

  %125 = inttoptr i64 %122 to double*

  store double %124, double* %125

  %126 = add i64 %74, -88

  %127 = bitcast %union.VectorReg* %28 to double*

  %128 = load double, double* %127, align 1

  %129 = inttoptr i64 %126 to double*

  store double %128, double* %129

  %130 = inttoptr i64 %104 to i64*

  %131 = load i64, i64* %130

  %132 = add i64 %74, -160

  %133 = inttoptr i64 %132 to i64*

  store i64 %131, i64* %133

  %134 = load i64, i64* %20, align 8

  %135 = add i64 %134, -160

  %136 = inttoptr i64 %135 to i64*

  %137 = load i64, i64* %136

  %138 = add i64 %134, -168

  %139 = load i64, i64* %17, align 8

  %140 = inttoptr i64 %138 to i64*

  store i64 %139, i64* %140

  %141 = add i64 %134, -176

  %142 = load i64, i64* %22, align 8

  %143 = inttoptr i64 %141 to i64*

  store i64 %142, i64* %143

  %144 = add i64 %134, -184

  %145 = load i64, i64* %14, align 8

  %146 = inttoptr i64 %144 to i64*

  store i64 %145, i64* %146

  %147 = add i64 %134, -192

  %148 = load i64, i64* %25, align 8

  %149 = inttoptr i64 %147 to i64*

  store i64 %148, i64* %149

  %150 = add i64 %134, -200

  %151 = load i64, i64* %26, align 8

  %152 = inttoptr i64 %150 to i64*

  store i64 %151, i64* %152

  %153 = add i64 %134, -208

  %154 = load i64, i64* %24, align 8

  %155 = inttoptr i64 %153 to i64*

  store i64 %154, i64* %155

  %156 = add i64 %134, -216

  %157 = load i64, i64* %23, align 8

  %158 = inttoptr i64 %156 to i64*

  store i64 %157, i64* %158

  %159 = add i64 %134, -224

  %160 = load i64, i64* %21, align 8

  %161 = inttoptr i64 %159 to i64*

  store i64 %160, i64* %161

  %162 = add i64 %1, 228

  %163 = load i64, i64* %19, align 8, !tbaa !1240

  %164 = add i64 %163, -8

  %165 = inttoptr i64 %164 to i64*

  store i64 %162, i64* %165

  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %172 = load i64, i64* %168, align 8, !alias.scope !1529, !noalias !1532

  %173 = load i64, i64* %167, align 8, !alias.scope !1529, !noalias !1532

  %174 = load i64, i64* %170, align 8, !alias.scope !1529, !noalias !1532

  %175 = load i64, i64* %171, align 8, !alias.scope !1529, !noalias !1532

  %176 = inttoptr i64 %163 to i64*

  %177 = load i64, i64* %176

  %178 = add i64 %163, 8

  %179 = inttoptr i64 %178 to i64*

  %180 = load i64, i64* %179

  %181 = add i64 %163, 16

  %182 = inttoptr i64 %181 to i64*

  %183 = load i64, i64* %182

  %184 = add i64 %163, 24

  %185 = inttoptr i64 %184 to i64*

  %186 = load i64, i64* %185

  %187 = add i64 %163, 32

  %188 = inttoptr i64 %187 to i64*

  %189 = load i64, i64* %188

  %190 = add i64 %163, 40

  %191 = inttoptr i64 %190 to i64*

  %192 = load i64, i64* %191

  %193 = add i64 %163, 48

  %194 = inttoptr i64 %193 to i64*

  %195 = load i64, i64* %194

  %196 = add i64 %163, 56

  %197 = inttoptr i64 %196 to i64*

  %198 = load i64, i64* %197

  %199 = add i64 %163, 64

  %200 = inttoptr i64 %199 to i64*

  %201 = load i64, i64* %200

  %202 = add i64 %163, 72

  %203 = inttoptr i64 %202 to i64*

  %204 = load i64, i64* %203

  %205 = inttoptr i64 %164 to i64*

  %206 = load i64, i64* %205

  store i64 %206, i64* %3, align 8, !alias.scope !1529, !noalias !1532

  store i64 %163, i64* %19, align 8, !alias.scope !1529, !noalias !1532

  %207 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1415), i64 %137, i64 %172, i64 %173, i64 %174, i64 %175, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198, i64 %201, i64 %204), !noalias !1529

  %208 = load i64, i64* %3, align 8

  %209 = load i64, i64* %20, align 8

  %210 = add i64 %209, -49

  %211 = inttoptr i64 %210 to i8*

  %212 = load i8, i8* %211

  %213 = sext i8 %212 to i64

  %214 = and i64 %213, 4294967295

  store i64 %214, i64* %17, align 8, !tbaa !1240

  %215 = add i64 %209, -228

  %216 = trunc i64 %207 to i32

  %217 = inttoptr i64 %215 to i32*

  store i32 %216, i32* %217

  %218 = add i64 %208, 27

  %219 = load i64, i64* %19, align 8, !tbaa !1240

  %220 = add i64 %219, -8

  %221 = inttoptr i64 %220 to i64*

  store i64 %218, i64* %221

  %222 = load i64, i64* %168, align 8, !alias.scope !1534, !noalias !1537

  %223 = load i64, i64* %167, align 8, !alias.scope !1534, !noalias !1537

  %224 = load i64, i64* %170, align 8, !alias.scope !1534, !noalias !1537

  %225 = load i64, i64* %171, align 8, !alias.scope !1534, !noalias !1537

  %226 = inttoptr i64 %219 to i64*

  %227 = load i64, i64* %226

  %228 = add i64 %219, 8

  %229 = inttoptr i64 %228 to i64*

  %230 = load i64, i64* %229

  %231 = add i64 %219, 16

  %232 = inttoptr i64 %231 to i64*

  %233 = load i64, i64* %232

  %234 = add i64 %219, 24

  %235 = inttoptr i64 %234 to i64*

  %236 = load i64, i64* %235

  %237 = add i64 %219, 32

  %238 = inttoptr i64 %237 to i64*

  %239 = load i64, i64* %238

  %240 = add i64 %219, 40

  %241 = inttoptr i64 %240 to i64*

  %242 = load i64, i64* %241

  %243 = add i64 %219, 48

  %244 = inttoptr i64 %243 to i64*

  %245 = load i64, i64* %244

  %246 = add i64 %219, 56

  %247 = inttoptr i64 %246 to i64*

  %248 = load i64, i64* %247

  %249 = add i64 %219, 64

  %250 = inttoptr i64 %249 to i64*

  %251 = load i64, i64* %250

  %252 = add i64 %219, 72

  %253 = inttoptr i64 %252 to i64*

  %254 = load i64, i64* %253

  %255 = inttoptr i64 %220 to i64*

  %256 = load i64, i64* %255

  store i64 %256, i64* %3, align 8, !alias.scope !1534, !noalias !1537

  store i64 %219, i64* %19, align 8, !alias.scope !1534, !noalias !1537

  %257 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1443), i64 %214, i64 %222, i64 %223, i64 %224, i64 %225, i64 %227, i64 %230, i64 %233, i64 %236, i64 %239, i64 %242, i64 %245, i64 %248, i64 %251, i64 %254), !noalias !1534

  %258 = load i64, i64* %20, align 8

  %259 = add i64 %258, -60

  %260 = load i64, i64* %3, align 8

  %261 = inttoptr i64 %259 to i32*

  %262 = load i32, i32* %261

  %263 = icmp eq i32 %262, 0

  %264 = add i64 %258, -232

  %265 = trunc i64 %257 to i32

  %266 = inttoptr i64 %264 to i32*

  store i32 %265, i32* %266

  %267 = select i1 %263, i64 16, i64 240

  %268 = add i64 %260, %267

  %269 = add i64 %258, -64

  %270 = inttoptr i64 %269 to i32*

  %271 = load i32, i32* %270

  br i1 %263, label %block_40184f, label %block_40192f



block_40192f:                                     ; preds = %block_40184f, %block_401740

  %272 = phi i64 [ %378, %block_40184f ], [ %268, %block_401740 ]

  %273 = add i64 %258, -56

  %274 = inttoptr i64 %273 to i32*

  %275 = load i32, i32* %274

  %276 = zext i32 %275 to i64

  %277 = inttoptr i64 %259 to i32*

  %278 = load i32, i32* %277

  %279 = zext i32 %278 to i64

  store i64 %279, i64* %16, align 8, !tbaa !1240

  %280 = zext i32 %271 to i64

  store i64 %280, i64* %15, align 8, !tbaa !1240

  %281 = add i64 %272, 26

  %282 = load i64, i64* %19, align 8, !tbaa !1240

  %283 = add i64 %282, -8

  %284 = inttoptr i64 %283 to i64*

  store i64 %281, i64* %284

  %285 = load i64, i64* %170, align 8, !alias.scope !1539, !noalias !1542

  %286 = load i64, i64* %171, align 8, !alias.scope !1539, !noalias !1542

  %287 = inttoptr i64 %282 to i64*

  %288 = load i64, i64* %287

  %289 = add i64 %282, 8

  %290 = inttoptr i64 %289 to i64*

  %291 = load i64, i64* %290

  %292 = add i64 %282, 16

  %293 = inttoptr i64 %292 to i64*

  %294 = load i64, i64* %293

  %295 = add i64 %282, 24

  %296 = inttoptr i64 %295 to i64*

  %297 = load i64, i64* %296

  %298 = add i64 %282, 32

  %299 = inttoptr i64 %298 to i64*

  %300 = load i64, i64* %299

  %301 = add i64 %282, 40

  %302 = inttoptr i64 %301 to i64*

  %303 = load i64, i64* %302

  %304 = add i64 %282, 48

  %305 = inttoptr i64 %304 to i64*

  %306 = load i64, i64* %305

  %307 = add i64 %282, 56

  %308 = inttoptr i64 %307 to i64*

  %309 = load i64, i64* %308

  %310 = add i64 %282, 64

  %311 = inttoptr i64 %310 to i64*

  %312 = load i64, i64* %311

  %313 = add i64 %282, 72

  %314 = inttoptr i64 %313 to i64*

  %315 = load i64, i64* %314

  %316 = inttoptr i64 %283 to i64*

  %317 = load i64, i64* %316

  store i64 %317, i64* %3, align 8, !alias.scope !1539, !noalias !1542

  store i64 %282, i64* %19, align 8, !alias.scope !1539, !noalias !1542

  %318 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1551), i64 %276, i64 %279, i64 %280, i64 %285, i64 %286, i64 %288, i64 %291, i64 %294, i64 %297, i64 %300, i64 %303, i64 %306, i64 %309, i64 %312, i64 %315), !noalias !1539

  %319 = load i64, i64* %20, align 8

  %320 = add i64 %319, -256

  %321 = trunc i64 %318 to i32

  %322 = load i64, i64* %3, align 8

  %323 = add i64 %322, 6

  %324 = inttoptr i64 %320 to i32*

  store i32 %321, i32* %324

  br label %block_40194f



block_401910:                                     ; preds = %block_401859, %block_401869

  %325 = phi i64 [ %1105, %block_401859 ], [ %1038, %block_401869 ]

  %326 = phi i64 [ %1110, %block_401859 ], [ %1043, %block_401869 ]

  %327 = add i64 %258, -56

  %328 = inttoptr i64 %327 to i32*

  %329 = load i32, i32* %328

  %330 = zext i32 %329 to i64

  %331 = add i64 %326, 20

  %332 = load i64, i64* %19, align 8, !tbaa !1240

  %333 = add i64 %332, -8

  %334 = inttoptr i64 %333 to i64*

  store i64 %331, i64* %334

  %335 = load i64, i64* %168, align 8, !alias.scope !1544, !noalias !1547

  %336 = load i64, i64* %170, align 8, !alias.scope !1544, !noalias !1547

  %337 = load i64, i64* %171, align 8, !alias.scope !1544, !noalias !1547

  %338 = inttoptr i64 %332 to i64*

  %339 = load i64, i64* %338

  %340 = add i64 %332, 8

  %341 = inttoptr i64 %340 to i64*

  %342 = load i64, i64* %341

  %343 = add i64 %332, 16

  %344 = inttoptr i64 %343 to i64*

  %345 = load i64, i64* %344

  %346 = add i64 %332, 24

  %347 = inttoptr i64 %346 to i64*

  %348 = load i64, i64* %347

  %349 = add i64 %332, 32

  %350 = inttoptr i64 %349 to i64*

  %351 = load i64, i64* %350

  %352 = add i64 %332, 40

  %353 = inttoptr i64 %352 to i64*

  %354 = load i64, i64* %353

  %355 = add i64 %332, 48

  %356 = inttoptr i64 %355 to i64*

  %357 = load i64, i64* %356

  %358 = add i64 %332, 56

  %359 = inttoptr i64 %358 to i64*

  %360 = load i64, i64* %359

  %361 = add i64 %332, 64

  %362 = inttoptr i64 %361 to i64*

  %363 = load i64, i64* %362

  %364 = add i64 %332, 72

  %365 = inttoptr i64 %364 to i64*

  %366 = load i64, i64* %365

  %367 = inttoptr i64 %333 to i64*

  %368 = load i64, i64* %367

  store i64 %368, i64* %3, align 8, !alias.scope !1544, !noalias !1547

  store i64 %332, i64* %19, align 8, !alias.scope !1544, !noalias !1547

  %369 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1514), i64 %330, i64 %335, i64 %325, i64 %336, i64 %337, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357, i64 %360, i64 %363, i64 %366), !noalias !1544

  %370 = load i64, i64* %20, align 8

  %371 = add i64 %370, -252

  %372 = trunc i64 %369 to i32

  %373 = load i64, i64* %3, align 8

  %374 = add i64 %373, 6

  %375 = inttoptr i64 %371 to i32*

  store i32 %372, i32* %375

  br label %block_40192a



block_40184f:                                     ; preds = %block_401740

  %376 = icmp eq i32 %271, 0

  %377 = select i1 %376, i64 10, i64 224

  %378 = add i64 %268, %377

  br i1 %376, label %block_401859, label %block_40192f



block_401a0d:                                     ; preds = %block_4019c6, %block_4019ec

  %379 = phi i64 [ %942, %block_4019ec ], [ %1368, %block_4019c6 ]

  %380 = phi i64 [ %946, %block_4019ec ], [ %1373, %block_4019c6 ]

  %381 = phi %struct.Memory* [ %1124, %block_4019ec ], [ %1124, %block_4019c6 ]

  %382 = add i64 %379, 32

  %383 = inttoptr i64 %382 to i64*

  %384 = load i64, i64* %383

  %385 = add i64 %380, 21

  %386 = load i64, i64* %19, align 8, !tbaa !1240

  %387 = add i64 %386, -8

  %388 = inttoptr i64 %387 to i64*

  store i64 %385, i64* %388

  %389 = load i64, i64* %168, align 8, !alias.scope !1549, !noalias !1552

  %390 = load i64, i64* %167, align 8, !alias.scope !1549, !noalias !1552

  %391 = load i64, i64* %170, align 8, !alias.scope !1549, !noalias !1552

  %392 = load i64, i64* %171, align 8, !alias.scope !1549, !noalias !1552

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

  store i64 %423, i64* %3, align 8, !alias.scope !1549, !noalias !1552

  store i64 %386, i64* %19, align 8, !alias.scope !1549, !noalias !1552

  %424 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 434), i64 %384, i64 %389, i64 %390, i64 %391, i64 %392, i64 %394, i64 %397, i64 %400, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418, i64 %421), !noalias !1549

  %425 = load i64, i64* %3, align 8

  %426 = load i64, i64* %20, align 8

  %427 = add i64 %426, 40

  %428 = inttoptr i64 %427 to i64*

  %429 = load i64, i64* %428

  %430 = add i64 %426, -284

  %431 = trunc i64 %424 to i32

  %432 = inttoptr i64 %430 to i32*

  store i32 %431, i32* %432

  %433 = add i64 %425, 27

  %434 = load i64, i64* %19, align 8, !tbaa !1240

  %435 = add i64 %434, -8

  %436 = inttoptr i64 %435 to i64*

  store i64 %433, i64* %436

  %437 = load i64, i64* %168, align 8, !alias.scope !1554, !noalias !1557

  %438 = load i64, i64* %167, align 8, !alias.scope !1554, !noalias !1557

  %439 = load i64, i64* %170, align 8, !alias.scope !1554, !noalias !1557

  %440 = load i64, i64* %171, align 8, !alias.scope !1554, !noalias !1557

  %441 = inttoptr i64 %434 to i64*

  %442 = load i64, i64* %441

  %443 = add i64 %434, 8

  %444 = inttoptr i64 %443 to i64*

  %445 = load i64, i64* %444

  %446 = add i64 %434, 16

  %447 = inttoptr i64 %446 to i64*

  %448 = load i64, i64* %447

  %449 = add i64 %434, 24

  %450 = inttoptr i64 %449 to i64*

  %451 = load i64, i64* %450

  %452 = add i64 %434, 32

  %453 = inttoptr i64 %452 to i64*

  %454 = load i64, i64* %453

  %455 = add i64 %434, 40

  %456 = inttoptr i64 %455 to i64*

  %457 = load i64, i64* %456

  %458 = add i64 %434, 48

  %459 = inttoptr i64 %458 to i64*

  %460 = load i64, i64* %459

  %461 = add i64 %434, 56

  %462 = inttoptr i64 %461 to i64*

  %463 = load i64, i64* %462

  %464 = add i64 %434, 64

  %465 = inttoptr i64 %464 to i64*

  %466 = load i64, i64* %465

  %467 = add i64 %434, 72

  %468 = inttoptr i64 %467 to i64*

  %469 = load i64, i64* %468

  %470 = inttoptr i64 %435 to i64*

  %471 = load i64, i64* %470

  store i64 %471, i64* %3, align 8, !alias.scope !1554, !noalias !1557

  store i64 %434, i64* %19, align 8, !alias.scope !1554, !noalias !1557

  %472 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 471), i64 %429, i64 %437, i64 %438, i64 %439, i64 %440, i64 %442, i64 %445, i64 %448, i64 %451, i64 %454, i64 %457, i64 %460, i64 %463, i64 %466, i64 %469), !noalias !1554

  %473 = load i64, i64* %3, align 8

  %474 = load i64, i64* %20, align 8

  %475 = add i64 %474, 48

  %476 = inttoptr i64 %475 to i64*

  %477 = load i64, i64* %476

  %478 = add i64 %474, -288

  %479 = trunc i64 %472 to i32

  %480 = inttoptr i64 %478 to i32*

  store i32 %479, i32* %480

  %481 = add i64 %473, 27

  %482 = load i64, i64* %19, align 8, !tbaa !1240

  %483 = add i64 %482, -8

  %484 = inttoptr i64 %483 to i64*

  store i64 %481, i64* %484

  %485 = load i64, i64* %168, align 8, !alias.scope !1559, !noalias !1562

  %486 = load i64, i64* %167, align 8, !alias.scope !1559, !noalias !1562

  %487 = load i64, i64* %170, align 8, !alias.scope !1559, !noalias !1562

  %488 = load i64, i64* %171, align 8, !alias.scope !1559, !noalias !1562

  %489 = inttoptr i64 %482 to i64*

  %490 = load i64, i64* %489

  %491 = add i64 %482, 8

  %492 = inttoptr i64 %491 to i64*

  %493 = load i64, i64* %492

  %494 = add i64 %482, 16

  %495 = inttoptr i64 %494 to i64*

  %496 = load i64, i64* %495

  %497 = add i64 %482, 24

  %498 = inttoptr i64 %497 to i64*

  %499 = load i64, i64* %498

  %500 = add i64 %482, 32

  %501 = inttoptr i64 %500 to i64*

  %502 = load i64, i64* %501

  %503 = add i64 %482, 40

  %504 = inttoptr i64 %503 to i64*

  %505 = load i64, i64* %504

  %506 = add i64 %482, 48

  %507 = inttoptr i64 %506 to i64*

  %508 = load i64, i64* %507

  %509 = add i64 %482, 56

  %510 = inttoptr i64 %509 to i64*

  %511 = load i64, i64* %510

  %512 = add i64 %482, 64

  %513 = inttoptr i64 %512 to i64*

  %514 = load i64, i64* %513

  %515 = add i64 %482, 72

  %516 = inttoptr i64 %515 to i64*

  %517 = load i64, i64* %516

  %518 = inttoptr i64 %483 to i64*

  %519 = load i64, i64* %518

  store i64 %519, i64* %3, align 8, !alias.scope !1559, !noalias !1562

  store i64 %482, i64* %19, align 8, !alias.scope !1559, !noalias !1562

  %520 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1720), i64 %477, i64 %485, i64 %486, i64 %487, i64 %488, i64 %490, i64 %493, i64 %496, i64 %499, i64 %502, i64 %505, i64 %508, i64 %511, i64 %514, i64 %517), !noalias !1559

  %521 = load i64, i64* %3, align 8

  %522 = load i64, i64* %20, align 8

  %523 = add i64 %522, 56

  %524 = inttoptr i64 %523 to i64*

  %525 = load i64, i64* %524

  %526 = add i64 %522, -292

  %527 = trunc i64 %520 to i32

  %528 = inttoptr i64 %526 to i32*

  store i32 %527, i32* %528

  %529 = add i64 %521, 27

  %530 = load i64, i64* %19, align 8, !tbaa !1240

  %531 = add i64 %530, -8

  %532 = inttoptr i64 %531 to i64*

  store i64 %529, i64* %532

  %533 = load i64, i64* %168, align 8, !alias.scope !1564, !noalias !1567

  %534 = load i64, i64* %167, align 8, !alias.scope !1564, !noalias !1567

  %535 = load i64, i64* %170, align 8, !alias.scope !1564, !noalias !1567

  %536 = load i64, i64* %171, align 8, !alias.scope !1564, !noalias !1567

  %537 = inttoptr i64 %530 to i64*

  %538 = load i64, i64* %537

  %539 = add i64 %530, 8

  %540 = inttoptr i64 %539 to i64*

  %541 = load i64, i64* %540

  %542 = add i64 %530, 16

  %543 = inttoptr i64 %542 to i64*

  %544 = load i64, i64* %543

  %545 = add i64 %530, 24

  %546 = inttoptr i64 %545 to i64*

  %547 = load i64, i64* %546

  %548 = add i64 %530, 32

  %549 = inttoptr i64 %548 to i64*

  %550 = load i64, i64* %549

  %551 = add i64 %530, 40

  %552 = inttoptr i64 %551 to i64*

  %553 = load i64, i64* %552

  %554 = add i64 %530, 48

  %555 = inttoptr i64 %554 to i64*

  %556 = load i64, i64* %555

  %557 = add i64 %530, 56

  %558 = inttoptr i64 %557 to i64*

  %559 = load i64, i64* %558

  %560 = add i64 %530, 64

  %561 = inttoptr i64 %560 to i64*

  %562 = load i64, i64* %561

  %563 = add i64 %530, 72

  %564 = inttoptr i64 %563 to i64*

  %565 = load i64, i64* %564

  %566 = inttoptr i64 %531 to i64*

  %567 = load i64, i64* %566

  store i64 %567, i64* %3, align 8, !alias.scope !1564, !noalias !1567

  store i64 %530, i64* %19, align 8, !alias.scope !1564, !noalias !1567

  %568 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 528), i64 %525, i64 %533, i64 %534, i64 %535, i64 %536, i64 %538, i64 %541, i64 %544, i64 %547, i64 %550, i64 %553, i64 %556, i64 %559, i64 %562, i64 %565), !noalias !1564

  %569 = load i64, i64* %3, align 8

  %570 = load i64, i64* %20, align 8

  %571 = add i64 %570, 64

  %572 = inttoptr i64 %571 to i64*

  %573 = load i64, i64* %572

  %574 = add i64 %570, -296

  %575 = trunc i64 %568 to i32

  %576 = inttoptr i64 %574 to i32*

  store i32 %575, i32* %576

  %577 = add i64 %569, 27

  %578 = load i64, i64* %19, align 8, !tbaa !1240

  %579 = add i64 %578, -8

  %580 = inttoptr i64 %579 to i64*

  store i64 %577, i64* %580

  %581 = load i64, i64* %168, align 8, !alias.scope !1569, !noalias !1572

  %582 = load i64, i64* %167, align 8, !alias.scope !1569, !noalias !1572

  %583 = load i64, i64* %170, align 8, !alias.scope !1569, !noalias !1572

  %584 = load i64, i64* %171, align 8, !alias.scope !1569, !noalias !1572

  %585 = inttoptr i64 %578 to i64*

  %586 = load i64, i64* %585

  %587 = add i64 %578, 8

  %588 = inttoptr i64 %587 to i64*

  %589 = load i64, i64* %588

  %590 = add i64 %578, 16

  %591 = inttoptr i64 %590 to i64*

  %592 = load i64, i64* %591

  %593 = add i64 %578, 24

  %594 = inttoptr i64 %593 to i64*

  %595 = load i64, i64* %594

  %596 = add i64 %578, 32

  %597 = inttoptr i64 %596 to i64*

  %598 = load i64, i64* %597

  %599 = add i64 %578, 40

  %600 = inttoptr i64 %599 to i64*

  %601 = load i64, i64* %600

  %602 = add i64 %578, 48

  %603 = inttoptr i64 %602 to i64*

  %604 = load i64, i64* %603

  %605 = add i64 %578, 56

  %606 = inttoptr i64 %605 to i64*

  %607 = load i64, i64* %606

  %608 = add i64 %578, 64

  %609 = inttoptr i64 %608 to i64*

  %610 = load i64, i64* %609

  %611 = add i64 %578, 72

  %612 = inttoptr i64 %611 to i64*

  %613 = load i64, i64* %612

  %614 = inttoptr i64 %579 to i64*

  %615 = load i64, i64* %614

  store i64 %615, i64* %3, align 8, !alias.scope !1569, !noalias !1572

  store i64 %578, i64* %19, align 8, !alias.scope !1569, !noalias !1572

  %616 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 551), i64 %573, i64 %581, i64 %582, i64 %583, i64 %584, i64 %586, i64 %589, i64 %592, i64 %595, i64 %598, i64 %601, i64 %604, i64 %607, i64 %610, i64 %613), !noalias !1569

  %617 = load i64, i64* %3, align 8

  %618 = load i64, i64* %20, align 8

  %619 = add i64 %618, 72

  %620 = inttoptr i64 %619 to i64*

  %621 = load i64, i64* %620

  %622 = add i64 %618, -300

  %623 = trunc i64 %616 to i32

  %624 = inttoptr i64 %622 to i32*

  store i32 %623, i32* %624

  %625 = add i64 %617, 27

  %626 = load i64, i64* %19, align 8, !tbaa !1240

  %627 = add i64 %626, -8

  %628 = inttoptr i64 %627 to i64*

  store i64 %625, i64* %628

  %629 = load i64, i64* %168, align 8, !alias.scope !1574, !noalias !1577

  %630 = load i64, i64* %167, align 8, !alias.scope !1574, !noalias !1577

  %631 = load i64, i64* %170, align 8, !alias.scope !1574, !noalias !1577

  %632 = load i64, i64* %171, align 8, !alias.scope !1574, !noalias !1577

  %633 = inttoptr i64 %626 to i64*

  %634 = load i64, i64* %633

  %635 = add i64 %626, 8

  %636 = inttoptr i64 %635 to i64*

  %637 = load i64, i64* %636

  %638 = add i64 %626, 16

  %639 = inttoptr i64 %638 to i64*

  %640 = load i64, i64* %639

  %641 = add i64 %626, 24

  %642 = inttoptr i64 %641 to i64*

  %643 = load i64, i64* %642

  %644 = add i64 %626, 32

  %645 = inttoptr i64 %644 to i64*

  %646 = load i64, i64* %645

  %647 = add i64 %626, 40

  %648 = inttoptr i64 %647 to i64*

  %649 = load i64, i64* %648

  %650 = add i64 %626, 48

  %651 = inttoptr i64 %650 to i64*

  %652 = load i64, i64* %651

  %653 = add i64 %626, 56

  %654 = inttoptr i64 %653 to i64*

  %655 = load i64, i64* %654

  %656 = add i64 %626, 64

  %657 = inttoptr i64 %656 to i64*

  %658 = load i64, i64* %657

  %659 = add i64 %626, 72

  %660 = inttoptr i64 %659 to i64*

  %661 = load i64, i64* %660

  %662 = inttoptr i64 %627 to i64*

  %663 = load i64, i64* %662

  store i64 %663, i64* %3, align 8, !alias.scope !1574, !noalias !1577

  store i64 %626, i64* %19, align 8, !alias.scope !1574, !noalias !1577

  %664 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 574), i64 %621, i64 %629, i64 %630, i64 %631, i64 %632, i64 %634, i64 %637, i64 %640, i64 %643, i64 %646, i64 %649, i64 %652, i64 %655, i64 %658, i64 %661), !noalias !1574

  %665 = load i64, i64* %3, align 8

  %666 = load i64, i64* %20, align 8

  %667 = add i64 %666, 80

  %668 = inttoptr i64 %667 to i64*

  %669 = load i64, i64* %668

  %670 = add i64 %666, -304

  %671 = trunc i64 %664 to i32

  %672 = inttoptr i64 %670 to i32*

  store i32 %671, i32* %672

  %673 = add i64 %665, 27

  %674 = load i64, i64* %19, align 8, !tbaa !1240

  %675 = add i64 %674, -8

  %676 = inttoptr i64 %675 to i64*

  store i64 %673, i64* %676

  %677 = load i64, i64* %168, align 8, !alias.scope !1579, !noalias !1582

  %678 = load i64, i64* %167, align 8, !alias.scope !1579, !noalias !1582

  %679 = load i64, i64* %170, align 8, !alias.scope !1579, !noalias !1582

  %680 = load i64, i64* %171, align 8, !alias.scope !1579, !noalias !1582

  %681 = inttoptr i64 %674 to i64*

  %682 = load i64, i64* %681

  %683 = add i64 %674, 8

  %684 = inttoptr i64 %683 to i64*

  %685 = load i64, i64* %684

  %686 = add i64 %674, 16

  %687 = inttoptr i64 %686 to i64*

  %688 = load i64, i64* %687

  %689 = add i64 %674, 24

  %690 = inttoptr i64 %689 to i64*

  %691 = load i64, i64* %690

  %692 = add i64 %674, 32

  %693 = inttoptr i64 %692 to i64*

  %694 = load i64, i64* %693

  %695 = add i64 %674, 40

  %696 = inttoptr i64 %695 to i64*

  %697 = load i64, i64* %696

  %698 = add i64 %674, 48

  %699 = inttoptr i64 %698 to i64*

  %700 = load i64, i64* %699

  %701 = add i64 %674, 56

  %702 = inttoptr i64 %701 to i64*

  %703 = load i64, i64* %702

  %704 = add i64 %674, 64

  %705 = inttoptr i64 %704 to i64*

  %706 = load i64, i64* %705

  %707 = add i64 %674, 72

  %708 = inttoptr i64 %707 to i64*

  %709 = load i64, i64* %708

  %710 = inttoptr i64 %675 to i64*

  %711 = load i64, i64* %710

  store i64 %711, i64* %3, align 8, !alias.scope !1579, !noalias !1582

  store i64 %674, i64* %19, align 8, !alias.scope !1579, !noalias !1582

  %712 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 597), i64 %669, i64 %677, i64 %678, i64 %679, i64 %680, i64 %682, i64 %685, i64 %688, i64 %691, i64 %694, i64 %697, i64 %700, i64 %703, i64 %706, i64 %709), !noalias !1579

  %713 = load i64, i64* %3, align 8

  %714 = load i64, i64* %20, align 8

  %715 = add i64 %714, 88

  %716 = inttoptr i64 %715 to i64*

  %717 = load i64, i64* %716

  %718 = add i64 %714, -308

  %719 = trunc i64 %712 to i32

  %720 = inttoptr i64 %718 to i32*

  store i32 %719, i32* %720

  %721 = add i64 %713, 27

  %722 = load i64, i64* %19, align 8, !tbaa !1240

  %723 = add i64 %722, -8

  %724 = inttoptr i64 %723 to i64*

  store i64 %721, i64* %724

  %725 = load i64, i64* %168, align 8, !alias.scope !1584, !noalias !1587

  %726 = load i64, i64* %167, align 8, !alias.scope !1584, !noalias !1587

  %727 = load i64, i64* %170, align 8, !alias.scope !1584, !noalias !1587

  %728 = load i64, i64* %171, align 8, !alias.scope !1584, !noalias !1587

  %729 = inttoptr i64 %722 to i64*

  %730 = load i64, i64* %729

  %731 = add i64 %722, 8

  %732 = inttoptr i64 %731 to i64*

  %733 = load i64, i64* %732

  %734 = add i64 %722, 16

  %735 = inttoptr i64 %734 to i64*

  %736 = load i64, i64* %735

  %737 = add i64 %722, 24

  %738 = inttoptr i64 %737 to i64*

  %739 = load i64, i64* %738

  %740 = add i64 %722, 32

  %741 = inttoptr i64 %740 to i64*

  %742 = load i64, i64* %741

  %743 = add i64 %722, 40

  %744 = inttoptr i64 %743 to i64*

  %745 = load i64, i64* %744

  %746 = add i64 %722, 48

  %747 = inttoptr i64 %746 to i64*

  %748 = load i64, i64* %747

  %749 = add i64 %722, 56

  %750 = inttoptr i64 %749 to i64*

  %751 = load i64, i64* %750

  %752 = add i64 %722, 64

  %753 = inttoptr i64 %752 to i64*

  %754 = load i64, i64* %753

  %755 = add i64 %722, 72

  %756 = inttoptr i64 %755 to i64*

  %757 = load i64, i64* %756

  %758 = inttoptr i64 %723 to i64*

  %759 = load i64, i64* %758

  store i64 %759, i64* %3, align 8, !alias.scope !1584, !noalias !1587

  store i64 %722, i64* %19, align 8, !alias.scope !1584, !noalias !1587

  %760 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 620), i64 %717, i64 %725, i64 %726, i64 %727, i64 %728, i64 %730, i64 %733, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757), !noalias !1584

  %761 = load i64, i64* %3, align 8

  %762 = load i64, i64* %20, align 8

  %763 = add i64 %762, 96

  %764 = inttoptr i64 %763 to i64*

  %765 = load i64, i64* %764

  store i64 %765, i64* %17, align 8, !tbaa !1240

  %766 = add i64 %762, -312

  %767 = trunc i64 %760 to i32

  %768 = inttoptr i64 %766 to i32*

  store i32 %767, i32* %768

  %769 = add i64 %761, 27

  %770 = load i64, i64* %19, align 8, !tbaa !1240

  %771 = add i64 %770, -8

  %772 = inttoptr i64 %771 to i64*

  store i64 %769, i64* %772

  %773 = load i64, i64* %168, align 8, !alias.scope !1589, !noalias !1592

  %774 = load i64, i64* %167, align 8, !alias.scope !1589, !noalias !1592

  %775 = load i64, i64* %170, align 8, !alias.scope !1589, !noalias !1592

  %776 = load i64, i64* %171, align 8, !alias.scope !1589, !noalias !1592

  %777 = inttoptr i64 %770 to i64*

  %778 = load i64, i64* %777

  %779 = add i64 %770, 8

  %780 = inttoptr i64 %779 to i64*

  %781 = load i64, i64* %780

  %782 = add i64 %770, 16

  %783 = inttoptr i64 %782 to i64*

  %784 = load i64, i64* %783

  %785 = add i64 %770, 24

  %786 = inttoptr i64 %785 to i64*

  %787 = load i64, i64* %786

  %788 = add i64 %770, 32

  %789 = inttoptr i64 %788 to i64*

  %790 = load i64, i64* %789

  %791 = add i64 %770, 40

  %792 = inttoptr i64 %791 to i64*

  %793 = load i64, i64* %792

  %794 = add i64 %770, 48

  %795 = inttoptr i64 %794 to i64*

  %796 = load i64, i64* %795

  %797 = add i64 %770, 56

  %798 = inttoptr i64 %797 to i64*

  %799 = load i64, i64* %798

  %800 = add i64 %770, 64

  %801 = inttoptr i64 %800 to i64*

  %802 = load i64, i64* %801

  %803 = add i64 %770, 72

  %804 = inttoptr i64 %803 to i64*

  %805 = load i64, i64* %804

  %806 = inttoptr i64 %771 to i64*

  %807 = load i64, i64* %806

  store i64 %807, i64* %3, align 8, !alias.scope !1589, !noalias !1592

  store i64 %770, i64* %19, align 8, !alias.scope !1589, !noalias !1592

  %808 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1762), i64 %765, i64 %773, i64 %774, i64 %775, i64 %776, i64 %778, i64 %781, i64 %784, i64 %787, i64 %790, i64 %793, i64 %796, i64 %799, i64 %802, i64 %805), !noalias !1589

  %809 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1785), i64* %18, align 8, !tbaa !1240

  %810 = load i64, i64* %20, align 8

  %811 = add i64 %810, -316

  %812 = trunc i64 %808 to i32

  %813 = inttoptr i64 %811 to i32*

  store i32 %812, i32* %813

  %814 = add i64 %809, 23

  %815 = load i64, i64* %19, align 8, !tbaa !1240

  %816 = add i64 %815, -8

  %817 = inttoptr i64 %816 to i64*

  store i64 %814, i64* %817

  %818 = load i64, i64* %169, align 8, !alias.scope !1594, !noalias !1597

  %819 = load i64, i64* %168, align 8, !alias.scope !1594, !noalias !1597

  %820 = load i64, i64* %167, align 8, !alias.scope !1594, !noalias !1597

  %821 = load i64, i64* %170, align 8, !alias.scope !1594, !noalias !1597

  %822 = load i64, i64* %171, align 8, !alias.scope !1594, !noalias !1597

  %823 = inttoptr i64 %815 to i64*

  %824 = load i64, i64* %823

  %825 = add i64 %815, 8

  %826 = inttoptr i64 %825 to i64*

  %827 = load i64, i64* %826

  %828 = add i64 %815, 16

  %829 = inttoptr i64 %828 to i64*

  %830 = load i64, i64* %829

  %831 = add i64 %815, 24

  %832 = inttoptr i64 %831 to i64*

  %833 = load i64, i64* %832

  %834 = add i64 %815, 32

  %835 = inttoptr i64 %834 to i64*

  %836 = load i64, i64* %835

  %837 = add i64 %815, 40

  %838 = inttoptr i64 %837 to i64*

  %839 = load i64, i64* %838

  %840 = add i64 %815, 48

  %841 = inttoptr i64 %840 to i64*

  %842 = load i64, i64* %841

  %843 = add i64 %815, 56

  %844 = inttoptr i64 %843 to i64*

  %845 = load i64, i64* %844

  %846 = add i64 %815, 64

  %847 = inttoptr i64 %846 to i64*

  %848 = load i64, i64* %847

  %849 = add i64 %815, 72

  %850 = inttoptr i64 %849 to i64*

  %851 = load i64, i64* %850

  store i64 %815, i64* %19, align 8, !alias.scope !1594, !noalias !1597

  %852 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1785), i64 %818, i64 %819, i64 %820, i64 %821, i64 %822, i64 %824, i64 %827, i64 %830, i64 %833, i64 %836, i64 %839, i64 %842, i64 %845, i64 %848, i64 %851), !noalias !1594

  store i64 %852, i64* %166, align 8, !alias.scope !1594, !noalias !1597

  %853 = load i64, i64* %20, align 8

  %854 = add i64 %853, -320

  %855 = trunc i64 %852 to i32

  %856 = inttoptr i64 %854 to i32*

  store i32 %855, i32* %856

  %857 = load i64, i64* %19, align 8

  %858 = add i64 %857, 280

  %859 = icmp ugt i64 %857, -281

  %860 = zext i1 %859 to i8

  store i8 %860, i8* %49, align 1, !tbaa !1376

  %861 = trunc i64 %858 to i32

  %862 = and i32 %861, 255

  %863 = tail call i32 @llvm.ctpop.i32(i32 %862) #11

  %864 = trunc i32 %863 to i8

  %865 = and i8 %864, 1

  %866 = xor i8 %865, 1

  store i8 %866, i8* %50, align 1, !tbaa !1390

  %867 = xor i64 %857, 16

  %868 = xor i64 %867, %858

  %869 = lshr i64 %868, 4

  %870 = trunc i64 %869 to i8

  %871 = and i8 %870, 1

  store i8 %871, i8* %51, align 1, !tbaa !1391

  %872 = icmp eq i64 %858, 0

  %873 = zext i1 %872 to i8

  store i8 %873, i8* %52, align 1, !tbaa !1392

  %874 = lshr i64 %858, 63

  %875 = trunc i64 %874 to i8

  store i8 %875, i8* %53, align 1, !tbaa !1393

  %876 = lshr i64 %857, 63

  %877 = xor i64 %874, %876

  %878 = add nuw nsw i64 %877, %874

  %879 = icmp eq i64 %878, 2

  %880 = zext i1 %879 to i8

  store i8 %880, i8* %54, align 1, !tbaa !1394

  %881 = add i64 %857, 288

  %882 = inttoptr i64 %858 to i64*

  %883 = load i64, i64* %882

  store i64 %883, i64* %14, align 8, !tbaa !1240

  %884 = add i64 %857, 296

  %885 = inttoptr i64 %881 to i64*

  %886 = load i64, i64* %885

  store i64 %886, i64* %23, align 8, !tbaa !1240

  %887 = add i64 %857, 304

  %888 = inttoptr i64 %884 to i64*

  %889 = load i64, i64* %888

  store i64 %889, i64* %24, align 8, !tbaa !1240

  %890 = add i64 %857, 312

  %891 = inttoptr i64 %887 to i64*

  %892 = load i64, i64* %891

  store i64 %892, i64* %25, align 8, !tbaa !1240

  %893 = add i64 %857, 320

  %894 = inttoptr i64 %890 to i64*

  %895 = load i64, i64* %894

  store i64 %895, i64* %26, align 8, !tbaa !1240

  %896 = add i64 %857, 328

  %897 = inttoptr i64 %893 to i64*

  %898 = load i64, i64* %897

  store i64 %898, i64* %20, align 8, !tbaa !1240

  %899 = inttoptr i64 %896 to i64*

  %900 = load i64, i64* %899

  store i64 %900, i64* %3, align 8, !tbaa !1240

  %901 = add i64 %857, 336

  store i64 %901, i64* %19, align 8, !tbaa !1240

  ret %struct.Memory* %381



block_4019ec:                                     ; preds = %block_40194f

  %902 = add i64 %1327, 27

  %903 = load i64, i64* %19, align 8, !tbaa !1240

  %904 = add i64 %903, -8

  %905 = inttoptr i64 %904 to i64*

  store i64 %902, i64* %905

  %906 = load i64, i64* %168, align 8, !alias.scope !1599, !noalias !1602

  %907 = load i64, i64* %167, align 8, !alias.scope !1599, !noalias !1602

  %908 = load i64, i64* %170, align 8, !alias.scope !1599, !noalias !1602

  %909 = load i64, i64* %171, align 8, !alias.scope !1599, !noalias !1602

  %910 = inttoptr i64 %903 to i64*

  %911 = load i64, i64* %910

  %912 = add i64 %903, 8

  %913 = inttoptr i64 %912 to i64*

  %914 = load i64, i64* %913

  %915 = add i64 %903, 16

  %916 = inttoptr i64 %915 to i64*

  %917 = load i64, i64* %916

  %918 = add i64 %903, 24

  %919 = inttoptr i64 %918 to i64*

  %920 = load i64, i64* %919

  %921 = add i64 %903, 32

  %922 = inttoptr i64 %921 to i64*

  %923 = load i64, i64* %922

  %924 = add i64 %903, 40

  %925 = inttoptr i64 %924 to i64*

  %926 = load i64, i64* %925

  %927 = add i64 %903, 48

  %928 = inttoptr i64 %927 to i64*

  %929 = load i64, i64* %928

  %930 = add i64 %903, 56

  %931 = inttoptr i64 %930 to i64*

  %932 = load i64, i64* %931

  %933 = add i64 %903, 64

  %934 = inttoptr i64 %933 to i64*

  %935 = load i64, i64* %934

  %936 = add i64 %903, 72

  %937 = inttoptr i64 %936 to i64*

  %938 = load i64, i64* %937

  %939 = inttoptr i64 %904 to i64*

  %940 = load i64, i64* %939

  store i64 %940, i64* %3, align 8, !alias.scope !1599, !noalias !1602

  store i64 %903, i64* %19, align 8, !alias.scope !1599, !noalias !1602

  %941 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1670), i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1707), i64 %906, i64 %907, i64 %908, i64 %909, i64 %911, i64 %914, i64 %917, i64 %920, i64 %923, i64 %926, i64 %929, i64 %932, i64 %935, i64 %938), !noalias !1599

  %942 = load i64, i64* %20, align 8

  %943 = add i64 %942, -280

  %944 = trunc i64 %941 to i32

  %945 = load i64, i64* %3, align 8

  %946 = add i64 %945, 6

  %947 = inttoptr i64 %943 to i32*

  store i32 %944, i32* %947

  br label %block_401a0d



block_40192a:                                     ; preds = %block_4018e2, %block_401910

  %948 = phi i64 [ %370, %block_401910 ], [ %1093, %block_4018e2 ]

  %949 = phi i64 [ %374, %block_401910 ], [ %1098, %block_4018e2 ]

  %950 = phi %struct.Memory* [ %2, %block_401910 ], [ %1045, %block_4018e2 ]

  %951 = add i64 %949, 37

  br label %block_40194f



block_40187a:                                     ; preds = %block_401869

  %952 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 816) to double*)

  store double %952, double* %123, align 1, !tbaa !1279

  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %954 = bitcast i64* %953 to double*

  store double 0.000000e+00, double* %954, align 1, !tbaa !1279

  %955 = add i64 %258, -112

  %956 = add i64 %258, -56

  %957 = inttoptr i64 %956 to i32*

  %958 = load i32, i32* %957

  %959 = sitofp i32 %958 to double

  store double %959, double* %127, align 1, !tbaa !1279

  %960 = add i64 %258, -240

  %961 = inttoptr i64 %960 to i64*

  store i64 %955, i64* %961

  %962 = add i64 %1043, 31

  %963 = load i64, i64* %19, align 8, !tbaa !1240

  %964 = add i64 %963, -8

  %965 = inttoptr i64 %964 to i64*

  store i64 %962, i64* %965

  %966 = load i64, i64* %169, align 8, !alias.scope !1604, !noalias !1607

  %967 = inttoptr i64 %964 to i64*

  %968 = load i64, i64* %967

  store i64 %968, i64* %3, align 8, !alias.scope !1604, !noalias !1607

  store i64 %963, i64* %19, align 8, !alias.scope !1604, !noalias !1607

  %969 = tail call i64 @pow(i64 %955, i64 %966), !noalias !1604

  %970 = load i64, i64* %3, align 8

  %971 = load i64, i64* %20, align 8

  %972 = add i64 %971, -240

  %973 = inttoptr i64 %972 to i64*

  %974 = load i64, i64* %973

  %975 = add i64 %970, 24

  %976 = load i64, i64* %19, align 8, !tbaa !1240

  %977 = add i64 %976, -8

  %978 = inttoptr i64 %977 to i64*

  store i64 %975, i64* %978

  %979 = load i64, i64* %168, align 8, !alias.scope !1609, !noalias !1612

  %980 = load i64, i64* %167, align 8, !alias.scope !1609, !noalias !1612

  %981 = load i64, i64* %170, align 8, !alias.scope !1609, !noalias !1612

  %982 = load i64, i64* %171, align 8, !alias.scope !1609, !noalias !1612

  %983 = inttoptr i64 %976 to i64*

  %984 = load i64, i64* %983

  %985 = add i64 %976, 8

  %986 = inttoptr i64 %985 to i64*

  %987 = load i64, i64* %986

  %988 = add i64 %976, 16

  %989 = inttoptr i64 %988 to i64*

  %990 = load i64, i64* %989

  %991 = add i64 %976, 24

  %992 = inttoptr i64 %991 to i64*

  %993 = load i64, i64* %992

  %994 = add i64 %976, 32

  %995 = inttoptr i64 %994 to i64*

  %996 = load i64, i64* %995

  %997 = add i64 %976, 40

  %998 = inttoptr i64 %997 to i64*

  %999 = load i64, i64* %998

  %1000 = add i64 %976, 48

  %1001 = inttoptr i64 %1000 to i64*

  %1002 = load i64, i64* %1001

  %1003 = add i64 %976, 56

  %1004 = inttoptr i64 %1003 to i64*

  %1005 = load i64, i64* %1004

  %1006 = add i64 %976, 64

  %1007 = inttoptr i64 %1006 to i64*

  %1008 = load i64, i64* %1007

  %1009 = add i64 %976, 72

  %1010 = inttoptr i64 %1009 to i64*

  %1011 = load i64, i64* %1010

  %1012 = inttoptr i64 %977 to i64*

  %1013 = load i64, i64* %1012

  store i64 %1013, i64* %3, align 8, !alias.scope !1609, !noalias !1612

  store i64 %976, i64* %19, align 8, !alias.scope !1609, !noalias !1612

  %1014 = tail call i64 @sprintf(i64 %974, i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 941), i64 %979, i64 %980, i64 %981, i64 %982, i64 %984, i64 %987, i64 %990, i64 %993, i64 %996, i64 %999, i64 %1002, i64 %1005, i64 %1008, i64 %1011), !noalias !1609

  %1015 = load i64, i64* %20, align 8

  %1016 = add i64 %1015, -116

  %1017 = load i64, i64* %3, align 8

  %1018 = inttoptr i64 %1016 to i32*

  store i32 14, i32* %1018

  %1019 = inttoptr i64 %1016 to i32*

  %1020 = load i32, i32* %1019

  %1021 = sext i32 %1020 to i64

  %1022 = add nsw i64 %1021, -112

  %1023 = add i64 %1022, %1015

  %1024 = inttoptr i64 %1023 to i8*

  %1025 = load i8, i8* %1024

  %1026 = sext i8 %1025 to i32

  %1027 = add nsw i32 %1026, -46

  %1028 = icmp eq i32 %1027, 0

  %1029 = add i64 %1015, -244

  %1030 = trunc i64 %1014 to i32

  %1031 = inttoptr i64 %1029 to i32*

  store i32 %1030, i32* %1031

  %1032 = select i1 %1028, i64 31, i64 49

  %1033 = add i64 %1017, %1032

  br i1 %1028, label %block_4018d0, label %block_4018e2



block_401869:                                     ; preds = %block_401859

  %1034 = add i64 %1101, 1

  %1035 = inttoptr i64 %1034 to i8*

  %1036 = load i8, i8* %1035

  %1037 = sext i8 %1036 to i64

  %1038 = and i64 %1037, 4294967295

  store i64 %1038, i64* %15, align 8, !tbaa !1240

  %1039 = sext i8 %1036 to i32

  %1040 = add nsw i32 %1039, -80

  %1041 = icmp eq i32 %1040, 0

  %1042 = select i1 %1041, i64 17, i64 167

  %1043 = add i64 %1110, %1042

  br i1 %1041, label %block_40187a, label %block_401910



block_4018e2:                                     ; preds = %block_4018d0, %block_40187a

  %1044 = phi i64 [ %1033, %block_40187a ], [ %1120, %block_4018d0 ]

  %1045 = phi %struct.Memory* [ %2, %block_40187a ], [ %2, %block_4018d0 ]

  %1046 = add i64 %1015, -112

  %1047 = inttoptr i64 %1016 to i32*

  %1048 = load i32, i32* %1047

  %1049 = add i32 %1048, 1

  %1050 = sext i32 %1049 to i64

  store i64 %1050, i64* %15, align 8, !tbaa !1240

  %1051 = add nsw i64 %1050, -112

  %1052 = add i64 %1051, %1015

  %1053 = inttoptr i64 %1052 to i8*

  store i8 0, i8* %1053

  %1054 = add i64 %1044, 35

  %1055 = load i64, i64* %19, align 8, !tbaa !1240

  %1056 = add i64 %1055, -8

  %1057 = inttoptr i64 %1056 to i64*

  store i64 %1054, i64* %1057

  %1058 = load i64, i64* %168, align 8, !alias.scope !1614, !noalias !1617

  %1059 = load i64, i64* %170, align 8, !alias.scope !1614, !noalias !1617

  %1060 = load i64, i64* %171, align 8, !alias.scope !1614, !noalias !1617

  %1061 = inttoptr i64 %1055 to i64*

  %1062 = load i64, i64* %1061

  %1063 = add i64 %1055, 8

  %1064 = inttoptr i64 %1063 to i64*

  %1065 = load i64, i64* %1064

  %1066 = add i64 %1055, 16

  %1067 = inttoptr i64 %1066 to i64*

  %1068 = load i64, i64* %1067

  %1069 = add i64 %1055, 24

  %1070 = inttoptr i64 %1069 to i64*

  %1071 = load i64, i64* %1070

  %1072 = add i64 %1055, 32

  %1073 = inttoptr i64 %1072 to i64*

  %1074 = load i64, i64* %1073

  %1075 = add i64 %1055, 40

  %1076 = inttoptr i64 %1075 to i64*

  %1077 = load i64, i64* %1076

  %1078 = add i64 %1055, 48

  %1079 = inttoptr i64 %1078 to i64*

  %1080 = load i64, i64* %1079

  %1081 = add i64 %1055, 56

  %1082 = inttoptr i64 %1081 to i64*

  %1083 = load i64, i64* %1082

  %1084 = add i64 %1055, 64

  %1085 = inttoptr i64 %1084 to i64*

  %1086 = load i64, i64* %1085

  %1087 = add i64 %1055, 72

  %1088 = inttoptr i64 %1087 to i64*

  %1089 = load i64, i64* %1088

  %1090 = inttoptr i64 %1056 to i64*

  %1091 = load i64, i64* %1090

  store i64 %1091, i64* %3, align 8, !alias.scope !1614, !noalias !1617

  store i64 %1055, i64* %19, align 8, !alias.scope !1614, !noalias !1617

  %1092 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1480), i64 %1046, i64 %1058, i64 %1050, i64 %1059, i64 %1060, i64 %1062, i64 %1065, i64 %1068, i64 %1071, i64 %1074, i64 %1077, i64 %1080, i64 %1083, i64 %1086, i64 %1089), !noalias !1614

  %1093 = load i64, i64* %20, align 8

  %1094 = add i64 %1093, -248

  %1095 = trunc i64 %1092 to i32

  %1096 = load i64, i64* %3, align 8

  %1097 = inttoptr i64 %1094 to i32*

  store i32 %1095, i32* %1097

  %1098 = add i64 %1096, 37

  br label %block_40192a



block_401859:                                     ; preds = %block_40184f

  %1099 = add i64 %258, -48

  %1100 = inttoptr i64 %1099 to i64*

  %1101 = load i64, i64* %1100

  %1102 = inttoptr i64 %1101 to i8*

  %1103 = load i8, i8* %1102

  %1104 = sext i8 %1103 to i64

  %1105 = and i64 %1104, 4294967295

  store i64 %1105, i64* %15, align 8, !tbaa !1240

  %1106 = sext i8 %1103 to i32

  %1107 = add nsw i32 %1106, -69

  %1108 = icmp eq i32 %1107, 0

  %1109 = select i1 %1108, i64 16, i64 183

  %1110 = add i64 %378, %1109

  br i1 %1108, label %block_401869, label %block_401910



block_4018d0:                                     ; preds = %block_40187a

  %1111 = inttoptr i64 %1016 to i32*

  %1112 = load i32, i32* %1111

  %1113 = sext i32 %1112 to i64

  %1114 = add nsw i64 %1113, -112

  %1115 = add i64 %1114, %1015

  %1116 = inttoptr i64 %1115 to i8*

  store i8 32, i8* %1116

  %1117 = inttoptr i64 %1016 to i32*

  %1118 = load i32, i32* %1117

  %1119 = add i32 %1118, -1

  %1120 = add i64 %1033, 18

  %1121 = inttoptr i64 %1016 to i32*

  store i32 %1119, i32* %1121

  br label %block_4018e2



block_40194f:                                     ; preds = %block_40192a, %block_40192f

  %1122 = phi i64 [ %319, %block_40192f ], [ %948, %block_40192a ]

  %1123 = phi i64 [ %323, %block_40192f ], [ %951, %block_40192a ]

  %1124 = phi %struct.Memory* [ %2, %block_40192f ], [ %950, %block_40192a ]

  %1125 = add i64 %1122, -68

  %1126 = inttoptr i64 %1125 to i32*

  %1127 = load i32, i32* %1126

  %1128 = zext i32 %1127 to i64

  store i64 %1128, i64* %17, align 8, !tbaa !1240

  %1129 = add i64 %1123, 20

  %1130 = load i64, i64* %19, align 8, !tbaa !1240

  %1131 = add i64 %1130, -8

  %1132 = inttoptr i64 %1131 to i64*

  store i64 %1129, i64* %1132

  %1133 = load i64, i64* %168, align 8, !alias.scope !1619, !noalias !1622

  %1134 = load i64, i64* %167, align 8, !alias.scope !1619, !noalias !1622

  %1135 = load i64, i64* %170, align 8, !alias.scope !1619, !noalias !1622

  %1136 = load i64, i64* %171, align 8, !alias.scope !1619, !noalias !1622

  %1137 = inttoptr i64 %1130 to i64*

  %1138 = load i64, i64* %1137

  %1139 = add i64 %1130, 8

  %1140 = inttoptr i64 %1139 to i64*

  %1141 = load i64, i64* %1140

  %1142 = add i64 %1130, 16

  %1143 = inttoptr i64 %1142 to i64*

  %1144 = load i64, i64* %1143

  %1145 = add i64 %1130, 24

  %1146 = inttoptr i64 %1145 to i64*

  %1147 = load i64, i64* %1146

  %1148 = add i64 %1130, 32

  %1149 = inttoptr i64 %1148 to i64*

  %1150 = load i64, i64* %1149

  %1151 = add i64 %1130, 40

  %1152 = inttoptr i64 %1151 to i64*

  %1153 = load i64, i64* %1152

  %1154 = add i64 %1130, 48

  %1155 = inttoptr i64 %1154 to i64*

  %1156 = load i64, i64* %1155

  %1157 = add i64 %1130, 56

  %1158 = inttoptr i64 %1157 to i64*

  %1159 = load i64, i64* %1158

  %1160 = add i64 %1130, 64

  %1161 = inttoptr i64 %1160 to i64*

  %1162 = load i64, i64* %1161

  %1163 = add i64 %1130, 72

  %1164 = inttoptr i64 %1163 to i64*

  %1165 = load i64, i64* %1164

  %1166 = inttoptr i64 %1131 to i64*

  %1167 = load i64, i64* %1166

  store i64 %1167, i64* %3, align 8, !alias.scope !1619, !noalias !1622

  store i64 %1130, i64* %19, align 8, !alias.scope !1619, !noalias !1622

  %1168 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 159), i64 %1128, i64 %1133, i64 %1134, i64 %1135, i64 %1136, i64 %1138, i64 %1141, i64 %1144, i64 %1147, i64 %1150, i64 %1153, i64 %1156, i64 %1159, i64 %1162, i64 %1165), !noalias !1619

  %1169 = load i64, i64* %3, align 8

  %1170 = load i64, i64* %20, align 8

  %1171 = add i64 %1170, -80

  %1172 = inttoptr i64 %1171 to double*

  %1173 = load double, double* %1172

  store double %1173, double* %123, align 1, !tbaa !1279

  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1175 = bitcast i64* %1174 to double*

  store double 0.000000e+00, double* %1175, align 1, !tbaa !1279

  %1176 = add i64 %1170, -260

  %1177 = trunc i64 %1168 to i32

  %1178 = inttoptr i64 %1176 to i32*

  store i32 %1177, i32* %1178

  %1179 = add i64 %1169, 28

  %1180 = load i64, i64* %19, align 8, !tbaa !1240

  %1181 = add i64 %1180, -8

  %1182 = inttoptr i64 %1181 to i64*

  store i64 %1179, i64* %1182

  %1183 = load i64, i64* %169, align 8, !alias.scope !1624, !noalias !1627

  %1184 = load i64, i64* %168, align 8, !alias.scope !1624, !noalias !1627

  %1185 = load i64, i64* %167, align 8, !alias.scope !1624, !noalias !1627

  %1186 = load i64, i64* %170, align 8, !alias.scope !1624, !noalias !1627

  %1187 = load i64, i64* %171, align 8, !alias.scope !1624, !noalias !1627

  %1188 = inttoptr i64 %1180 to i64*

  %1189 = load i64, i64* %1188

  %1190 = add i64 %1180, 8

  %1191 = inttoptr i64 %1190 to i64*

  %1192 = load i64, i64* %1191

  %1193 = add i64 %1180, 16

  %1194 = inttoptr i64 %1193 to i64*

  %1195 = load i64, i64* %1194

  %1196 = add i64 %1180, 24

  %1197 = inttoptr i64 %1196 to i64*

  %1198 = load i64, i64* %1197

  %1199 = add i64 %1180, 32

  %1200 = inttoptr i64 %1199 to i64*

  %1201 = load i64, i64* %1200

  %1202 = add i64 %1180, 40

  %1203 = inttoptr i64 %1202 to i64*

  %1204 = load i64, i64* %1203

  %1205 = add i64 %1180, 48

  %1206 = inttoptr i64 %1205 to i64*

  %1207 = load i64, i64* %1206

  %1208 = add i64 %1180, 56

  %1209 = inttoptr i64 %1208 to i64*

  %1210 = load i64, i64* %1209

  %1211 = add i64 %1180, 64

  %1212 = inttoptr i64 %1211 to i64*

  %1213 = load i64, i64* %1212

  %1214 = add i64 %1180, 72

  %1215 = inttoptr i64 %1214 to i64*

  %1216 = load i64, i64* %1215

  %1217 = inttoptr i64 %1181 to i64*

  %1218 = load i64, i64* %1217

  store i64 %1218, i64* %3, align 8, !alias.scope !1624, !noalias !1627

  store i64 %1180, i64* %19, align 8, !alias.scope !1624, !noalias !1627

  %1219 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1593), i64 %1183, i64 %1184, i64 %1185, i64 %1186, i64 %1187, i64 %1189, i64 %1192, i64 %1195, i64 %1198, i64 %1201, i64 %1204, i64 %1207, i64 %1210, i64 %1213, i64 %1216), !noalias !1624

  %1220 = load i64, i64* %3, align 8

  %1221 = load i64, i64* %20, align 8

  %1222 = add i64 %1221, -88

  %1223 = inttoptr i64 %1222 to double*

  %1224 = load double, double* %1223

  store double %1224, double* %123, align 1, !tbaa !1279

  store double 0.000000e+00, double* %1175, align 1, !tbaa !1279

  %1225 = add i64 %1221, -264

  %1226 = trunc i64 %1219 to i32

  %1227 = inttoptr i64 %1225 to i32*

  store i32 %1226, i32* %1227

  %1228 = add i64 %1220, 28

  %1229 = load i64, i64* %19, align 8, !tbaa !1240

  %1230 = add i64 %1229, -8

  %1231 = inttoptr i64 %1230 to i64*

  store i64 %1228, i64* %1231

  %1232 = load i64, i64* %169, align 8, !alias.scope !1629, !noalias !1632

  %1233 = load i64, i64* %168, align 8, !alias.scope !1629, !noalias !1632

  %1234 = load i64, i64* %167, align 8, !alias.scope !1629, !noalias !1632

  %1235 = load i64, i64* %170, align 8, !alias.scope !1629, !noalias !1632

  %1236 = load i64, i64* %171, align 8, !alias.scope !1629, !noalias !1632

  %1237 = inttoptr i64 %1229 to i64*

  %1238 = load i64, i64* %1237

  %1239 = add i64 %1229, 8

  %1240 = inttoptr i64 %1239 to i64*

  %1241 = load i64, i64* %1240

  %1242 = add i64 %1229, 16

  %1243 = inttoptr i64 %1242 to i64*

  %1244 = load i64, i64* %1243

  %1245 = add i64 %1229, 24

  %1246 = inttoptr i64 %1245 to i64*

  %1247 = load i64, i64* %1246

  %1248 = add i64 %1229, 32

  %1249 = inttoptr i64 %1248 to i64*

  %1250 = load i64, i64* %1249

  %1251 = add i64 %1229, 40

  %1252 = inttoptr i64 %1251 to i64*

  %1253 = load i64, i64* %1252

  %1254 = add i64 %1229, 48

  %1255 = inttoptr i64 %1254 to i64*

  %1256 = load i64, i64* %1255

  %1257 = add i64 %1229, 56

  %1258 = inttoptr i64 %1257 to i64*

  %1259 = load i64, i64* %1258

  %1260 = add i64 %1229, 64

  %1261 = inttoptr i64 %1260 to i64*

  %1262 = load i64, i64* %1261

  %1263 = add i64 %1229, 72

  %1264 = inttoptr i64 %1263 to i64*

  %1265 = load i64, i64* %1264

  %1266 = inttoptr i64 %1230 to i64*

  %1267 = load i64, i64* %1266

  store i64 %1267, i64* %3, align 8, !alias.scope !1629, !noalias !1632

  store i64 %1229, i64* %19, align 8, !alias.scope !1629, !noalias !1632

  %1268 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1633), i64 %1232, i64 %1233, i64 %1234, i64 %1235, i64 %1236, i64 %1238, i64 %1241, i64 %1244, i64 %1247, i64 %1250, i64 %1253, i64 %1256, i64 %1259, i64 %1262, i64 %1265), !noalias !1629

  %1269 = load i64, i64* %3, align 8

  %1270 = load i64, i64* %20, align 8

  %1271 = add i64 %1270, 16

  %1272 = inttoptr i64 %1271 to i64*

  %1273 = load i64, i64* %1272

  %1274 = add i64 %1270, -268

  %1275 = trunc i64 %1268 to i32

  %1276 = inttoptr i64 %1274 to i32*

  store i32 %1275, i32* %1276

  %1277 = add i64 %1269, 27

  %1278 = load i64, i64* %19, align 8, !tbaa !1240

  %1279 = add i64 %1278, -8

  %1280 = inttoptr i64 %1279 to i64*

  store i64 %1277, i64* %1280

  %1281 = load i64, i64* %168, align 8, !alias.scope !1634, !noalias !1637

  %1282 = load i64, i64* %167, align 8, !alias.scope !1634, !noalias !1637

  %1283 = load i64, i64* %170, align 8, !alias.scope !1634, !noalias !1637

  %1284 = load i64, i64* %171, align 8, !alias.scope !1634, !noalias !1637

  %1285 = inttoptr i64 %1278 to i64*

  %1286 = load i64, i64* %1285

  %1287 = add i64 %1278, 8

  %1288 = inttoptr i64 %1287 to i64*

  %1289 = load i64, i64* %1288

  %1290 = add i64 %1278, 16

  %1291 = inttoptr i64 %1290 to i64*

  %1292 = load i64, i64* %1291

  %1293 = add i64 %1278, 24

  %1294 = inttoptr i64 %1293 to i64*

  %1295 = load i64, i64* %1294

  %1296 = add i64 %1278, 32

  %1297 = inttoptr i64 %1296 to i64*

  %1298 = load i64, i64* %1297

  %1299 = add i64 %1278, 40

  %1300 = inttoptr i64 %1299 to i64*

  %1301 = load i64, i64* %1300

  %1302 = add i64 %1278, 48

  %1303 = inttoptr i64 %1302 to i64*

  %1304 = load i64, i64* %1303

  %1305 = add i64 %1278, 56

  %1306 = inttoptr i64 %1305 to i64*

  %1307 = load i64, i64* %1306

  %1308 = add i64 %1278, 64

  %1309 = inttoptr i64 %1308 to i64*

  %1310 = load i64, i64* %1309

  %1311 = add i64 %1278, 72

  %1312 = inttoptr i64 %1311 to i64*

  %1313 = load i64, i64* %1312

  %1314 = inttoptr i64 %1279 to i64*

  %1315 = load i64, i64* %1314

  store i64 %1315, i64* %3, align 8, !alias.scope !1634, !noalias !1637

  store i64 %1278, i64* %19, align 8, !alias.scope !1634, !noalias !1637

  %1316 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 274), i64 %1273, i64 %1281, i64 %1282, i64 %1283, i64 %1284, i64 %1286, i64 %1289, i64 %1292, i64 %1295, i64 %1298, i64 %1301, i64 %1304, i64 %1307, i64 %1310, i64 %1313), !noalias !1634

  %1317 = load i64, i64* %20, align 8

  %1318 = add i64 %1317, 24

  %1319 = load i64, i64* %3, align 8

  %1320 = inttoptr i64 %1318 to i32*

  %1321 = load i32, i32* %1320

  %1322 = icmp eq i32 %1321, 0

  %1323 = add i64 %1317, -272

  %1324 = trunc i64 %1316 to i32

  %1325 = inttoptr i64 %1323 to i32*

  store i32 %1324, i32* %1325

  %1326 = select i1 %1322, i64 54, i64 16

  %1327 = add i64 %1319, %1326

  br i1 %1322, label %block_4019ec, label %block_4019c6



block_4019c6:                                     ; preds = %block_40194f

  %1328 = add i64 %1327, 27

  %1329 = load i64, i64* %19, align 8, !tbaa !1240

  %1330 = add i64 %1329, -8

  %1331 = inttoptr i64 %1330 to i64*

  store i64 %1328, i64* %1331

  %1332 = load i64, i64* %168, align 8, !alias.scope !1639, !noalias !1642

  %1333 = load i64, i64* %167, align 8, !alias.scope !1639, !noalias !1642

  %1334 = load i64, i64* %170, align 8, !alias.scope !1639, !noalias !1642

  %1335 = load i64, i64* %171, align 8, !alias.scope !1639, !noalias !1642

  %1336 = inttoptr i64 %1329 to i64*

  %1337 = load i64, i64* %1336

  %1338 = add i64 %1329, 8

  %1339 = inttoptr i64 %1338 to i64*

  %1340 = load i64, i64* %1339

  %1341 = add i64 %1329, 16

  %1342 = inttoptr i64 %1341 to i64*

  %1343 = load i64, i64* %1342

  %1344 = add i64 %1329, 24

  %1345 = inttoptr i64 %1344 to i64*

  %1346 = load i64, i64* %1345

  %1347 = add i64 %1329, 32

  %1348 = inttoptr i64 %1347 to i64*

  %1349 = load i64, i64* %1348

  %1350 = add i64 %1329, 40

  %1351 = inttoptr i64 %1350 to i64*

  %1352 = load i64, i64* %1351

  %1353 = add i64 %1329, 48

  %1354 = inttoptr i64 %1353 to i64*

  %1355 = load i64, i64* %1354

  %1356 = add i64 %1329, 56

  %1357 = inttoptr i64 %1356 to i64*

  %1358 = load i64, i64* %1357

  %1359 = add i64 %1329, 64

  %1360 = inttoptr i64 %1359 to i64*

  %1361 = load i64, i64* %1360

  %1362 = add i64 %1329, 72

  %1363 = inttoptr i64 %1362 to i64*

  %1364 = load i64, i64* %1363

  %1365 = inttoptr i64 %1330 to i64*

  %1366 = load i64, i64* %1365

  store i64 %1366, i64* %3, align 8, !alias.scope !1639, !noalias !1642

  store i64 %1329, i64* %19, align 8, !alias.scope !1639, !noalias !1642

  %1367 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1670), i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1709), i64 %1332, i64 %1333, i64 %1334, i64 %1335, i64 %1337, i64 %1340, i64 %1343, i64 %1346, i64 %1349, i64 %1352, i64 %1355, i64 %1358, i64 %1361, i64 %1364), !noalias !1639

  %1368 = load i64, i64* %20, align 8

  %1369 = add i64 %1368, -276

  %1370 = trunc i64 %1367 to i32

  %1371 = load i64, i64* %3, align 8

  %1372 = inttoptr i64 %1369 to i32*

  store i32 %1370, i32* %1372

  %1373 = add i64 %1371, 44

  br label %block_401a0d

}



; Function Attrs: noinline

define %struct.Memory* @sub_400b40_elapsed_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400b40:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %8 = load i64, i64* %6, align 8

  %9 = load i64, i64* %5, align 8, !tbaa !1240

  %10 = add i64 %9, -8

  %11 = inttoptr i64 %10 to i64*

  store i64 %8, i64* %11

  store i64 %10, i64* %6, align 8, !tbaa !1240

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %18 = add i64 %9, -16

  store i64 %18, i64* %4, align 8, !tbaa !1240

  %19 = add i64 %1, 4848

  %20 = add i64 %1, 17

  %21 = add i64 %9, -32

  %22 = inttoptr i64 %21 to i64*

  store i64 %20, i64* %22

  store i64 %21, i64* %5, align 8, !tbaa !1240

  %23 = tail call %struct.Memory* @sub_401e30_wtime_(%struct.State* nonnull %0, i64 %19, %struct.Memory* %2)

  %24 = load i64, i64* %6, align 8

  %25 = add i64 %24, -8

  %26 = inttoptr i64 %25 to double*

  %27 = load double, double* %26

  %28 = bitcast %union.VectorReg* %7 to double*

  store double %27, double* %28, align 1, !tbaa !1279

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %30 = bitcast i64* %29 to double*

  store double 0.000000e+00, double* %30, align 1, !tbaa !1279

  %31 = load i64, i64* %5, align 8

  %32 = add i64 %31, 16

  %33 = icmp ugt i64 %31, -17

  %34 = zext i1 %33 to i8

  store i8 %34, i8* %12, align 1, !tbaa !1376

  %35 = trunc i64 %32 to i32

  %36 = and i32 %35, 255

  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #11

  %38 = trunc i32 %37 to i8

  %39 = and i8 %38, 1

  %40 = xor i8 %39, 1

  store i8 %40, i8* %13, align 1, !tbaa !1390

  %41 = xor i64 %31, 16

  %42 = xor i64 %41, %32

  %43 = lshr i64 %42, 4

  %44 = trunc i64 %43 to i8

  %45 = and i8 %44, 1

  store i8 %45, i8* %14, align 1, !tbaa !1391

  %46 = icmp eq i64 %32, 0

  %47 = zext i1 %46 to i8

  store i8 %47, i8* %15, align 1, !tbaa !1392

  %48 = lshr i64 %32, 63

  %49 = trunc i64 %48 to i8

  store i8 %49, i8* %16, align 1, !tbaa !1393

  %50 = lshr i64 %31, 63

  %51 = xor i64 %48, %50

  %52 = add nuw nsw i64 %51, %48

  %53 = icmp eq i64 %52, 2

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %17, align 1, !tbaa !1394

  %55 = add i64 %31, 24

  %56 = inttoptr i64 %32 to i64*

  %57 = load i64, i64* %56

  store i64 %57, i64* %6, align 8, !tbaa !1240

  %58 = inttoptr i64 %55 to i64*

  %59 = load i64, i64* %58

  store i64 %59, i64* %3, align 8, !tbaa !1240

  %60 = add i64 %31, 32

  store i64 %60, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %23

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401c80_vranlc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401c80:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %19 = load i64, i64* %12, align 8

  %20 = load i64, i64* %11, align 8, !tbaa !1240

  %21 = add i64 %20, -8

  %22 = inttoptr i64 %21 to i64*

  store i64 %19, i64* %22

  store i64 %21, i64* %12, align 8, !tbaa !1240

  %23 = add i64 %20, -24

  store i64 %23, i64* %11, align 8, !tbaa !1240

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %30 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2000) to double*)

  %31 = bitcast %union.VectorReg* %14 to double*

  store double %30, double* %31, align 1, !tbaa !1279

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %33 = bitcast i64* %32 to double*

  %34 = bitcast %union.VectorReg* %15 to i8*

  %35 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2008) to double*)

  %36 = bitcast %union.VectorReg* %15 to double*

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %38 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1992) to double*)

  %39 = bitcast %union.VectorReg* %16 to double*

  store double %38, double* %39, align 1, !tbaa !1279

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %41 = bitcast i64* %40 to double*

  store double 0.000000e+00, double* %41, align 1, !tbaa !1279

  %42 = bitcast %union.VectorReg* %17 to i8*

  %43 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1984) to double*)

  %44 = bitcast %union.VectorReg* %17 to double*

  store double %43, double* %44, align 1, !tbaa !1279

  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %46 = bitcast i64* %45 to double*

  store double 0.000000e+00, double* %46, align 1, !tbaa !1279

  %47 = add i64 %20, -12

  %48 = load i32, i32* %5, align 4

  %49 = inttoptr i64 %47 to i32*

  store i32 %48, i32* %49

  %50 = add i64 %20, -24

  %51 = load i64, i64* %9, align 8

  %52 = inttoptr i64 %50 to i64*

  store i64 %51, i64* %52

  %53 = add i64 %20, -32

  %54 = bitcast [32 x %union.VectorReg]* %13 to double*

  %55 = load double, double* %54, align 1

  %56 = inttoptr i64 %53 to double*

  store double %55, double* %56

  %57 = add i64 %20, -40

  %58 = load i64, i64* %8, align 8

  %59 = inttoptr i64 %57 to i64*

  store i64 %58, i64* %59

  %60 = add i64 %20, -48

  %61 = inttoptr i64 %60 to double*

  store double %35, double* %61

  %62 = add i64 %20, -56

  %63 = inttoptr i64 %62 to double*

  store double %43, double* %63

  %64 = add i64 %20, -64

  %65 = inttoptr i64 %64 to double*

  store double %30, double* %65

  %66 = load i64, i64* %12, align 8

  %67 = add i64 %66, -64

  %68 = inttoptr i64 %67 to double*

  store double %38, double* %68

  %69 = add i64 %66, -24

  %70 = inttoptr i64 %69 to double*

  %71 = load double, double* %70

  %72 = fmul double %35, %71

  store double %72, double* %36, align 1, !tbaa !1279

  store i64 0, i64* %37, align 1, !tbaa !1279

  %73 = add i64 %66, -72

  %74 = inttoptr i64 %73 to double*

  store double %72, double* %74

  %75 = inttoptr i64 %73 to double*

  %76 = load double, double* %75

  %77 = tail call double @llvm.trunc.f64(double %76) #11

  %78 = tail call double @llvm.fabs.f64(double %77) #11

  %79 = fcmp ogt double %78, 0x41DFFFFFFFC00000

  %80 = fptosi double %77 to i32

  %81 = zext i32 %80 to i64

  %82 = select i1 %79, i64 2147483648, i64 %81

  store i64 %82, i64* %10, align 8, !tbaa !1240

  %83 = trunc i64 %82 to i32

  %84 = sitofp i32 %83 to double

  %85 = add i64 %66, -104

  %86 = inttoptr i64 %85 to double*

  store double %84, double* %86

  %87 = inttoptr i64 %69 to double*

  %88 = load double, double* %87

  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %90 = bitcast i64* %89 to double*

  %91 = load double, double* %31, align 1

  %92 = inttoptr i64 %85 to double*

  %93 = load double, double* %92

  %94 = fmul double %91, %93

  store double %94, double* %31, align 1, !tbaa !1279

  store i64 0, i64* %32, align 1, !tbaa !1279

  %95 = fsub double %88, %94

  store double %95, double* %54, align 1, !tbaa !1279

  store i64 0, i64* %89, align 1, !tbaa !1279

  %96 = add i64 %66, -112

  %97 = inttoptr i64 %96 to double*

  store double %95, double* %97

  %98 = add i64 %66, -140

  %99 = inttoptr i64 %98 to i32*

  store i32 0, i32* %99

  %100 = add i64 %66, -4

  %101 = add i64 %66, -16

  %102 = bitcast %union.VectorReg* %17 to i32*

  %103 = getelementptr inbounds i8, i8* %42, i64 4

  %104 = bitcast i8* %103 to i32*

  %105 = bitcast i64* %45 to i32*

  %106 = getelementptr inbounds i8, i8* %42, i64 12

  %107 = bitcast i8* %106 to i32*

  %108 = add i64 %66, -120

  %109 = bitcast %union.VectorReg* %18 to i8*

  %110 = bitcast %union.VectorReg* %18 to i32*

  %111 = getelementptr inbounds i8, i8* %109, i64 4

  %112 = bitcast i8* %111 to i32*

  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %114 = bitcast %union.VectorReg* %18 to double*

  %115 = add i64 %66, -128

  %116 = add i64 %66, -80

  %117 = add i64 %66, -136

  %118 = add i64 %66, -88

  %119 = bitcast [32 x %union.VectorReg]* %13 to <2 x i32>*

  %120 = bitcast %union.VectorReg* %15 to i32*

  %121 = getelementptr inbounds i8, i8* %34, i64 4

  %122 = bitcast i8* %121 to i32*

  %123 = add i64 %66, -96

  %124 = add i64 %66, -32

  br label %block_401d01



block_401e21:                                     ; preds = %block_401d01

  %125 = zext i32 %280 to i64

  store i64 %125, i64* %6, align 8, !tbaa !1240

  %126 = load i64, i64* %11, align 8

  %127 = add i64 %126, 16

  %128 = icmp ugt i64 %126, -17

  %129 = zext i1 %128 to i8

  store i8 %129, i8* %24, align 1, !tbaa !1376

  %130 = trunc i64 %127 to i32

  %131 = and i32 %130, 255

  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #11

  %133 = trunc i32 %132 to i8

  %134 = and i8 %133, 1

  %135 = xor i8 %134, 1

  store i8 %135, i8* %25, align 1, !tbaa !1390

  %136 = xor i64 %126, 16

  %137 = xor i64 %136, %127

  %138 = lshr i64 %137, 4

  %139 = trunc i64 %138 to i8

  %140 = and i8 %139, 1

  store i8 %140, i8* %26, align 1, !tbaa !1391

  %141 = icmp eq i64 %127, 0

  %142 = zext i1 %141 to i8

  store i8 %142, i8* %27, align 1, !tbaa !1392

  %143 = lshr i64 %127, 63

  %144 = trunc i64 %143 to i8

  store i8 %144, i8* %28, align 1, !tbaa !1393

  %145 = lshr i64 %126, 63

  %146 = xor i64 %143, %145

  %147 = add nuw nsw i64 %146, %143

  %148 = icmp eq i64 %147, 2

  %149 = zext i1 %148 to i8

  store i8 %149, i8* %29, align 1, !tbaa !1394

  %150 = add i64 %126, 24

  %151 = inttoptr i64 %127 to i64*

  %152 = load i64, i64* %151

  store i64 %152, i64* %12, align 8, !tbaa !1240

  %153 = inttoptr i64 %150 to i64*

  %154 = load i64, i64* %153

  store i64 %154, i64* %3, align 8, !tbaa !1240

  %155 = add i64 %126, 32

  store i64 %155, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %278



block_401d10:                                     ; preds = %block_401d01

  %156 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1984) to double*)

  store double %156, double* %54, align 1, !tbaa !1279

  store double 0.000000e+00, double* %90, align 1, !tbaa !1279

  %157 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 1992) to double*)

  store double %157, double* %31, align 1, !tbaa !1279

  store double 0.000000e+00, double* %33, align 1, !tbaa !1279

  %158 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2000) to double*)

  store double %158, double* %36, align 1, !tbaa !1279

  %159 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f30__rodata_type* @seg_401f30__rodata to i64), i64 2008) to double*)

  %160 = inttoptr i64 %101 to i64*

  %161 = load i64, i64* %160

  %162 = bitcast double %159 to <2 x i32>

  %163 = extractelement <2 x i32> %162, i32 0

  store i32 %163, i32* %102, align 1, !tbaa !1405

  %164 = extractelement <2 x i32> %162, i32 1

  store i32 %164, i32* %104, align 1, !tbaa !1405

  %165 = load double, double* %44, align 1

  %166 = inttoptr i64 %161 to double*

  %167 = load double, double* %166

  %168 = fmul double %165, %167

  %169 = inttoptr i64 %73 to double*

  store double %168, double* %169

  %170 = inttoptr i64 %73 to double*

  %171 = load double, double* %170

  %172 = tail call double @llvm.trunc.f64(double %171) #11

  %173 = tail call double @llvm.fabs.f64(double %172) #11

  %174 = fcmp ogt double %173, 0x41DFFFFFFFC00000

  %175 = fptosi double %172 to i32

  %176 = sitofp i32 %175 to double

  %177 = select i1 %174, double 0xC1E0000000000000, double %176

  %178 = inttoptr i64 %108 to double*

  store double %177, double* %178

  %179 = inttoptr i64 %101 to i64*

  %180 = load i64, i64* %179

  %181 = inttoptr i64 %180 to double*

  %182 = load double, double* %181

  %183 = bitcast double %158 to <2 x i32>

  %184 = extractelement <2 x i32> %183, i32 0

  store i32 %184, i32* %110, align 1, !tbaa !1405

  %185 = extractelement <2 x i32> %183, i32 1

  store i32 %185, i32* %112, align 1, !tbaa !1405

  %186 = load double, double* %114, align 1

  %187 = inttoptr i64 %108 to double*

  %188 = load double, double* %187

  %189 = fmul double %186, %188

  %190 = fsub double %182, %189

  %191 = inttoptr i64 %115 to double*

  store double %190, double* %191

  %192 = inttoptr i64 %85 to double*

  %193 = load double, double* %192

  %194 = inttoptr i64 %115 to double*

  %195 = load double, double* %194

  %196 = fmul double %193, %195

  %197 = inttoptr i64 %96 to double*

  %198 = load double, double* %197

  %199 = inttoptr i64 %108 to double*

  %200 = load double, double* %199

  %201 = fmul double %198, %200

  store double %201, double* %114, align 1, !tbaa !1279

  store i64 0, i64* %113, align 1, !tbaa !1279

  %202 = fadd double %196, %201

  %203 = inttoptr i64 %73 to double*

  store double %202, double* %203

  %204 = inttoptr i64 %73 to double*

  %205 = load double, double* %204

  %206 = fmul double %159, %205

  %207 = tail call double @llvm.trunc.f64(double %206) #11

  %208 = tail call double @llvm.fabs.f64(double %207) #11

  %209 = fcmp ogt double %208, 0x41DFFFFFFFC00000

  %210 = fptosi double %207 to i32

  %211 = sitofp i32 %210 to double

  %212 = select i1 %209, double 0xC1E0000000000000, double %211

  %213 = inttoptr i64 %116 to double*

  store double %212, double* %213

  %214 = inttoptr i64 %73 to double*

  %215 = load double, double* %214

  store i32 %184, i32* %102, align 1, !tbaa !1405

  store i32 %185, i32* %104, align 1, !tbaa !1405

  store i32 0, i32* %105, align 1, !tbaa !1405

  store i32 0, i32* %107, align 1, !tbaa !1405

  %216 = load double, double* %44, align 1

  %217 = inttoptr i64 %116 to double*

  %218 = load double, double* %217

  %219 = fmul double %216, %218

  store double %219, double* %44, align 1, !tbaa !1279

  %220 = fsub double %215, %219

  %221 = inttoptr i64 %117 to double*

  store double %220, double* %221

  %222 = load double, double* %36, align 1

  %223 = inttoptr i64 %117 to double*

  %224 = load double, double* %223

  %225 = fmul double %222, %224

  %226 = inttoptr i64 %96 to double*

  %227 = load double, double* %226

  %228 = inttoptr i64 %115 to double*

  %229 = load double, double* %228

  %230 = fmul double %227, %229

  store double %230, double* %39, align 1, !tbaa !1279

  store i64 0, i64* %40, align 1, !tbaa !1279

  %231 = fadd double %230, %225

  %232 = inttoptr i64 %118 to double*

  store double %231, double* %232

  %233 = load <2 x i32>, <2 x i32>* %119, align 1

  %234 = load i64, i64* %89, align 1

  %235 = extractelement <2 x i32> %233, i32 0

  store i32 %235, i32* %120, align 1, !tbaa !1405

  %236 = extractelement <2 x i32> %233, i32 1

  store i32 %236, i32* %122, align 1, !tbaa !1405

  %237 = load double, double* %36, align 1

  %238 = inttoptr i64 %118 to double*

  %239 = load double, double* %238

  %240 = fmul double %237, %239

  %241 = tail call double @llvm.trunc.f64(double %240) #11

  %242 = tail call double @llvm.fabs.f64(double %241) #11

  %243 = fcmp ogt double %242, 0x41DFFFFFFFC00000

  %244 = fptosi double %241 to i32

  %245 = zext i32 %244 to i64

  %246 = select i1 %243, i64 2147483648, i64 %245

  store i64 %246, i64* %7, align 8, !tbaa !1240

  %247 = trunc i64 %246 to i32

  %248 = sitofp i32 %247 to double

  %249 = inttoptr i64 %123 to double*

  store double %248, double* %249

  %250 = inttoptr i64 %118 to double*

  %251 = load double, double* %250

  %252 = load double, double* %31, align 1

  %253 = inttoptr i64 %123 to double*

  %254 = load double, double* %253

  %255 = fmul double %252, %254

  store double %255, double* %31, align 1, !tbaa !1279

  %256 = fsub double %251, %255

  store double %256, double* %36, align 1, !tbaa !1279

  store i64 0, i64* %37, align 1, !tbaa !1279

  %257 = inttoptr i64 %101 to i64*

  %258 = load i64, i64* %257

  %259 = inttoptr i64 %258 to double*

  store double %256, double* %259

  %260 = inttoptr i64 %101 to i64*

  %261 = load i64, i64* %260

  %262 = bitcast <2 x i32> %233 to double

  %263 = inttoptr i64 %261 to double*

  %264 = load double, double* %263

  %265 = fmul double %262, %264

  store double %265, double* %54, align 1, !tbaa !1279

  store i64 %234, i64* %89, align 1, !tbaa !1279

  %266 = inttoptr i64 %124 to i64*

  %267 = load i64, i64* %266

  %268 = inttoptr i64 %98 to i32*

  %269 = load i32, i32* %268

  %270 = sext i32 %269 to i64

  store i64 %270, i64* %8, align 8, !tbaa !1240

  %271 = shl nsw i64 %270, 3

  %272 = add i64 %271, %267

  %273 = inttoptr i64 %272 to double*

  store double %265, double* %273

  %274 = inttoptr i64 %98 to i32*

  %275 = load i32, i32* %274

  %276 = add i32 %275, 1

  %277 = inttoptr i64 %98 to i32*

  store i32 %276, i32* %277

  br label %block_401d01



block_401d01:                                     ; preds = %block_401d10, %block_401c80

  %278 = phi %struct.Memory* [ %2, %block_401c80 ], [ %278, %block_401d10 ]

  %279 = inttoptr i64 %98 to i32*

  %280 = load i32, i32* %279

  %281 = inttoptr i64 %100 to i32*

  %282 = load i32, i32* %281

  %283 = sub i32 %280, %282

  %284 = lshr i32 %283, 31

  %285 = lshr i32 %280, 31

  %286 = lshr i32 %282, 31

  %287 = xor i32 %286, %285

  %288 = xor i32 %284, %285

  %289 = add nuw nsw i32 %288, %287

  %290 = icmp eq i32 %289, 2

  %291 = icmp ne i32 %284, 0

  %292 = xor i1 %291, %290

  br i1 %292, label %block_401d10, label %block_401e21

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400af0_timer_clear(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400af0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8, !tbaa !1240

  %12 = add i64 %11, -8

  %13 = inttoptr i64 %12 to i64*

  store i64 %10, i64* %13

  %14 = bitcast %union.VectorReg* %9 to i8*

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %16 = bitcast %union.VectorReg* %9 to i32*

  store i32 0, i32* %16, align 1, !tbaa !1458

  %17 = getelementptr inbounds i8, i8* %14, i64 4

  %18 = bitcast i8* %17 to i32*

  store i32 0, i32* %18, align 1, !tbaa !1458

  %19 = bitcast i64* %15 to i32*

  store i32 0, i32* %19, align 1, !tbaa !1458

  %20 = getelementptr inbounds i8, i8* %14, i64 12

  %21 = bitcast i8* %20 to i32*

  store i32 0, i32* %21, align 1, !tbaa !1458

  %22 = add i64 %11, -12

  %23 = load i32, i32* %5, align 4

  %24 = inttoptr i64 %22 to i32*

  store i32 %23, i32* %24

  %25 = inttoptr i64 %22 to i32*

  %26 = load i32, i32* %25

  %27 = sext i32 %26 to i64

  store i64 %27, i64* %6, align 8, !tbaa !1240

  %28 = shl nsw i64 %27, 3

  %29 = add i64 %28, add (i64 ptrtoint (%seg_6030b0__bss_type* @seg_6030b0__bss to i64), i64 16)

  %30 = bitcast %union.VectorReg* %9 to double*

  %31 = load double, double* %30, align 1

  %32 = inttoptr i64 %29 to double*

  store double %31, double* %32

  %33 = inttoptr i64 %12 to i64*

  %34 = load i64, i64* %33

  store i64 %34, i64* %8, align 8, !tbaa !1240

  %35 = inttoptr i64 %11 to i64*

  %36 = load i64, i64* %35

  store i64 %36, i64* %3, align 8, !tbaa !1240

  %37 = add i64 %11, 8

  store i64 %37, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400650__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

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

  %18 = tail call %struct.Memory* @sub_400650__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195920, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: norecurse nounwind

define void @__mcsema_verify_reg_state() local_unnamed_addr #7 {

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

define i64 @callback_sub_400730_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196144, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400730_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196144, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400700___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196096, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400700___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196096, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603550_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %27 = tail call i64 %26(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25) #11

  store i64 %27, i64* %5, align 8

  %28 = inttoptr i64 %19 to i64*

  %29 = load i64, i64* %28

  store i64 %29, i64* %4, align 8

  store i64 %20, i64* %10, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603558_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401f20___libc_csu_fini() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202272, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401f20___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4202272, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401eb0___libc_csu_init() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202160, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401eb0___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4202160, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline

define i64 @main(i64, i64, i64) #6 {

  %4 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %5 = icmp eq i64 %4, 0

  br i1 %5, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %3

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %3

  %6 = phi i64 [ %4, %3 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197328, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_400bd0_main(%struct.State* nonnull @__mcsema_reg_state, i64 4197328, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %11

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603570___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_4005f0_pow(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %15 = tail call i64 @pow(i64 %9, i64 %10)

  store i64 %15, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400630_sprintf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %52 = tail call i64 @sprintf(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49)

  store i64 %52, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400600_log(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %13 = tail call i64 @log(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint nounwind

define %struct.Memory* @ext_400640_sqrt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #10 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %7 = bitcast %union.VectorReg* %6 to double*

  %8 = load double, double* %7, align 8

  %9 = load i64, i64* %5, align 8

  %10 = inttoptr i64 %9 to i64*

  %11 = load i64, i64* %10

  store i64 %11, i64* %4, align 8

  %12 = add i64 %9, 8

  store i64 %12, i64* %5, align 8

  %13 = tail call double @sqrt(double %8)

  %14 = bitcast %union.VectorReg* %6 to i128*

  store i128 0, i128* %14, align 8

  store double %13, double* %7, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603548_fclose(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %13 = tail call i64 @fclose(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_603578_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400620_fopen(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %15 = tail call i64 @fopen(i64 %9, i64 %10)

  store i64 %15, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @randlc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4201264, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401b30_randlc(%struct.State* nonnull @__mcsema_reg_state, i64 4201264, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @timer_clear(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197104, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400af0_timer_clear(%struct.State* nonnull @__mcsema_reg_state, i64 4197104, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @.init_proc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195728, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195728, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @print_results(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200256, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401740_print_results(%struct.State* nonnull @__mcsema_reg_state, i64 4200256, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @timer_read(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197296, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400bb0_timer_read(%struct.State* nonnull @__mcsema_reg_state, i64 4197296, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @vranlc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4201600, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401c80_vranlc(%struct.State* nonnull @__mcsema_reg_state, i64 4201600, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @c_print_results(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196160, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400740_c_print_results(%struct.State* nonnull @__mcsema_reg_state, i64 4196160, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @timer_stop(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197216, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400b60_timer_stop(%struct.State* nonnull @__mcsema_reg_state, i64 4197216, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @.term_proc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202276, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401f24__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4202276, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @wtime_(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202032, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401e30_wtime_(%struct.State* nonnull @__mcsema_reg_state, i64 4202032, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @timer_start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197136, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400b10_timer_start(%struct.State* nonnull @__mcsema_reg_state, i64 4197136, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nounwind

define internal void @__mcsema_constructor() #11 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_401eb0___libc_csu_init()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #11 {

  %1 = tail call i64 @callback_sub_401f20___libc_csu_fini()

  ret void

}



; Function Attrs: noinline optnone

define %struct.State* @__mcsema_debug_get_reg_state() #12 {

  ret %struct.State* @__mcsema_reg_state

}



; Function Attrs: noreturn nounwind

declare void @llvm.trap() #13



attributes #0 = { nounwind readnone speculatable }

attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #3 = { noinline }

attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #5 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #6 = { nobuiltin noinline }

attributes #7 = { norecurse nounwind }

attributes #8 = { nobuiltin noinline nounwind }

attributes #9 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #10 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #11 = { nounwind }

attributes #12 = { noinline optnone }

attributes #13 = { noreturn nounwind }

attributes #14 = { alwaysinline nobuiltin nounwind }



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

!1244 = !{!1245}

!1245 = distinct !{!1245, !1246, !"ext_603550_printf: argument 0"}

!1246 = distinct !{!1246, !"ext_603550_printf"}

!1247 = !{!1248}

!1248 = distinct !{!1248, !1246, !"ext_603550_printf: argument 1"}

!1249 = !{!1250}

!1250 = distinct !{!1250, !1251, !"ext_603550_printf: argument 0"}

!1251 = distinct !{!1251, !"ext_603550_printf"}

!1252 = !{!1253}

!1253 = distinct !{!1253, !1251, !"ext_603550_printf: argument 1"}

!1254 = !{!1255}

!1255 = distinct !{!1255, !1256, !"ext_603550_printf: argument 0"}

!1256 = distinct !{!1256, !"ext_603550_printf"}

!1257 = !{!1258}

!1258 = distinct !{!1258, !1256, !"ext_603550_printf: argument 1"}

!1259 = !{!1260}

!1260 = distinct !{!1260, !1261, !"ext_603550_printf: argument 0"}

!1261 = distinct !{!1261, !"ext_603550_printf"}

!1262 = !{!1263}

!1263 = distinct !{!1263, !1261, !"ext_603550_printf: argument 1"}

!1264 = !{!1265}

!1265 = distinct !{!1265, !1266, !"ext_603550_printf: argument 0"}

!1266 = distinct !{!1266, !"ext_603550_printf"}

!1267 = !{!1268}

!1268 = distinct !{!1268, !1266, !"ext_603550_printf: argument 1"}

!1269 = !{!1270}

!1270 = distinct !{!1270, !1271, !"ext_603550_printf: argument 0"}

!1271 = distinct !{!1271, !"ext_603550_printf"}

!1272 = !{!1273}

!1273 = distinct !{!1273, !1271, !"ext_603550_printf: argument 1"}

!1274 = !{!1275}

!1275 = distinct !{!1275, !1276, !"ext_603550_printf: argument 0"}

!1276 = distinct !{!1276, !"ext_603550_printf"}

!1277 = !{!1278}

!1278 = distinct !{!1278, !1276, !"ext_603550_printf: argument 1"}

!1279 = !{!1280, !1280, i64 0}

!1280 = !{!"double", !1242, i64 0}

!1281 = !{!1282}

!1282 = distinct !{!1282, !1283, !"ext_603550_printf: argument 0"}

!1283 = distinct !{!1283, !"ext_603550_printf"}

!1284 = !{!1285}

!1285 = distinct !{!1285, !1283, !"ext_603550_printf: argument 1"}

!1286 = !{!1287}

!1287 = distinct !{!1287, !1288, !"ext_603550_printf: argument 0"}

!1288 = distinct !{!1288, !"ext_603550_printf"}

!1289 = !{!1290}

!1290 = distinct !{!1290, !1288, !"ext_603550_printf: argument 1"}

!1291 = !{!1292}

!1292 = distinct !{!1292, !1293, !"ext_603550_printf: argument 0"}

!1293 = distinct !{!1293, !"ext_603550_printf"}

!1294 = !{!1295}

!1295 = distinct !{!1295, !1293, !"ext_603550_printf: argument 1"}

!1296 = !{!1297}

!1297 = distinct !{!1297, !1298, !"ext_603550_printf: argument 0"}

!1298 = distinct !{!1298, !"ext_603550_printf"}

!1299 = !{!1300}

!1300 = distinct !{!1300, !1298, !"ext_603550_printf: argument 1"}

!1301 = !{!1302}

!1302 = distinct !{!1302, !1303, !"ext_603550_printf: argument 0"}

!1303 = distinct !{!1303, !"ext_603550_printf"}

!1304 = !{!1305}

!1305 = distinct !{!1305, !1303, !"ext_603550_printf: argument 1"}

!1306 = !{!1307}

!1307 = distinct !{!1307, !1308, !"ext_603550_printf: argument 0"}

!1308 = distinct !{!1308, !"ext_603550_printf"}

!1309 = !{!1310}

!1310 = distinct !{!1310, !1308, !"ext_603550_printf: argument 1"}

!1311 = !{!1312}

!1312 = distinct !{!1312, !1313, !"ext_603550_printf: argument 0"}

!1313 = distinct !{!1313, !"ext_603550_printf"}

!1314 = !{!1315}

!1315 = distinct !{!1315, !1313, !"ext_603550_printf: argument 1"}

!1316 = !{!1317}

!1317 = distinct !{!1317, !1318, !"ext_603550_printf: argument 0"}

!1318 = distinct !{!1318, !"ext_603550_printf"}

!1319 = !{!1320}

!1320 = distinct !{!1320, !1318, !"ext_603550_printf: argument 1"}

!1321 = !{!1322}

!1322 = distinct !{!1322, !1323, !"ext_603550_printf: argument 0"}

!1323 = distinct !{!1323, !"ext_603550_printf"}

!1324 = !{!1325}

!1325 = distinct !{!1325, !1323, !"ext_603550_printf: argument 1"}

!1326 = !{!1327}

!1327 = distinct !{!1327, !1328, !"ext_603550_printf: argument 0"}

!1328 = distinct !{!1328, !"ext_603550_printf"}

!1329 = !{!1330}

!1330 = distinct !{!1330, !1328, !"ext_603550_printf: argument 1"}

!1331 = !{!1332}

!1332 = distinct !{!1332, !1333, !"ext_603550_printf: argument 0"}

!1333 = distinct !{!1333, !"ext_603550_printf"}

!1334 = !{!1335}

!1335 = distinct !{!1335, !1333, !"ext_603550_printf: argument 1"}

!1336 = !{!1337}

!1337 = distinct !{!1337, !1338, !"ext_603550_printf: argument 0"}

!1338 = distinct !{!1338, !"ext_603550_printf"}

!1339 = !{!1340}

!1340 = distinct !{!1340, !1338, !"ext_603550_printf: argument 1"}

!1341 = !{!1342}

!1342 = distinct !{!1342, !1343, !"ext_603550_printf: argument 0"}

!1343 = distinct !{!1343, !"ext_603550_printf"}

!1344 = !{!1345}

!1345 = distinct !{!1345, !1343, !"ext_603550_printf: argument 1"}

!1346 = !{!1347}

!1347 = distinct !{!1347, !1348, !"ext_603550_printf: argument 0"}

!1348 = distinct !{!1348, !"ext_603550_printf"}

!1349 = !{!1350}

!1350 = distinct !{!1350, !1348, !"ext_603550_printf: argument 1"}

!1351 = !{!1352}

!1352 = distinct !{!1352, !1353, !"ext_603550_printf: argument 0"}

!1353 = distinct !{!1353, !"ext_603550_printf"}

!1354 = !{!1355}

!1355 = distinct !{!1355, !1353, !"ext_603550_printf: argument 1"}

!1356 = !{!1357}

!1357 = distinct !{!1357, !1358, !"ext_603550_printf: argument 0"}

!1358 = distinct !{!1358, !"ext_603550_printf"}

!1359 = !{!1360}

!1360 = distinct !{!1360, !1358, !"ext_603550_printf: argument 1"}

!1361 = !{!1362}

!1362 = distinct !{!1362, !1363, !"ext_603550_printf: argument 0"}

!1363 = distinct !{!1363, !"ext_603550_printf"}

!1364 = !{!1365}

!1365 = distinct !{!1365, !1363, !"ext_603550_printf: argument 1"}

!1366 = !{!1367}

!1367 = distinct !{!1367, !1368, !"ext_603550_printf: argument 0"}

!1368 = distinct !{!1368, !"ext_603550_printf"}

!1369 = !{!1370}

!1370 = distinct !{!1370, !1368, !"ext_603550_printf: argument 1"}

!1371 = !{!1372}

!1372 = distinct !{!1372, !1373, !"ext_603550_printf: argument 0"}

!1373 = distinct !{!1373, !"ext_603550_printf"}

!1374 = !{!1375}

!1375 = distinct !{!1375, !1373, !"ext_603550_printf: argument 1"}

!1376 = !{!1377, !1242, i64 2065}

!1377 = !{!"_ZTS5State", !1242, i64 16, !1378, i64 2064, !1242, i64 2080, !1379, i64 2088, !1381, i64 2112, !1383, i64 2208, !1384, i64 2480, !1385, i64 2608, !1386, i64 2736, !1242, i64 2760, !1242, i64 2768, !1387, i64 3280}

!1378 = !{!"_ZTS10ArithFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15}

!1379 = !{!"_ZTS8Segments", !1380, i64 0, !1242, i64 2, !1380, i64 4, !1242, i64 6, !1380, i64 8, !1242, i64 10, !1380, i64 12, !1242, i64 14, !1380, i64 16, !1242, i64 18, !1380, i64 20, !1242, i64 22}

!1380 = !{!"short", !1242, i64 0}

!1381 = !{!"_ZTS12AddressSpace", !1241, i64 0, !1382, i64 8, !1241, i64 16, !1382, i64 24, !1241, i64 32, !1382, i64 40, !1241, i64 48, !1382, i64 56, !1241, i64 64, !1382, i64 72, !1241, i64 80, !1382, i64 88}

!1382 = !{!"_ZTS3Reg", !1242, i64 0}

!1383 = !{!"_ZTS3GPR", !1241, i64 0, !1382, i64 8, !1241, i64 16, !1382, i64 24, !1241, i64 32, !1382, i64 40, !1241, i64 48, !1382, i64 56, !1241, i64 64, !1382, i64 72, !1241, i64 80, !1382, i64 88, !1241, i64 96, !1382, i64 104, !1241, i64 112, !1382, i64 120, !1241, i64 128, !1382, i64 136, !1241, i64 144, !1382, i64 152, !1241, i64 160, !1382, i64 168, !1241, i64 176, !1382, i64 184, !1241, i64 192, !1382, i64 200, !1241, i64 208, !1382, i64 216, !1241, i64 224, !1382, i64 232, !1241, i64 240, !1382, i64 248, !1241, i64 256, !1382, i64 264}

!1384 = !{!"_ZTS8X87Stack", !1242, i64 0}

!1385 = !{!"_ZTS3MMX", !1242, i64 0}

!1386 = !{!"_ZTS14FPUStatusFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15, !1242, i64 16, !1242, i64 17, !1242, i64 18, !1242, i64 19, !1242, i64 20}

!1387 = !{!"_ZTS13SegmentCaches", !1388, i64 0, !1388, i64 16, !1388, i64 32, !1388, i64 48, !1388, i64 64, !1388, i64 80}

!1388 = !{!"_ZTS13SegmentShadow", !1242, i64 0, !1389, i64 8, !1389, i64 12}

!1389 = !{!"int", !1242, i64 0}

!1390 = !{!1377, !1242, i64 2067}

!1391 = !{!1377, !1242, i64 2069}

!1392 = !{!1377, !1242, i64 2071}

!1393 = !{!1377, !1242, i64 2073}

!1394 = !{!1377, !1242, i64 2077}

!1395 = !{!1396}

!1396 = distinct !{!1396, !1397, !"ext_603558_gettimeofday: argument 0"}

!1397 = distinct !{!1397, !"ext_603558_gettimeofday"}

!1398 = !{!1399}

!1399 = distinct !{!1399, !1397, !"ext_603558_gettimeofday: argument 1"}

!1400 = !{!1401}

!1401 = distinct !{!1401, !1402, !"ext_603570___libc_start_main: argument 0"}

!1402 = distinct !{!1402, !"ext_603570___libc_start_main"}

!1403 = !{!1404}

!1404 = distinct !{!1404, !1402, !"ext_603570___libc_start_main: argument 1"}

!1405 = !{!1406, !1406, i64 0}

!1406 = !{!"float", !1242, i64 0}

!1407 = !{!1242, !1242, i64 0}

!1408 = !{!1409}

!1409 = distinct !{!1409, !1410, !"ext_400620_fopen: argument 0"}

!1410 = distinct !{!1410, !"ext_400620_fopen"}

!1411 = !{!1412}

!1412 = distinct !{!1412, !1410, !"ext_400620_fopen: argument 1"}

!1413 = !{!1414}

!1414 = distinct !{!1414, !1415, !"ext_4005f0_pow: argument 0"}

!1415 = distinct !{!1415, !"ext_4005f0_pow"}

!1416 = !{!1417}

!1417 = distinct !{!1417, !1415, !"ext_4005f0_pow: argument 1"}

!1418 = !{!1419}

!1419 = distinct !{!1419, !1420, !"ext_603550_printf: argument 0"}

!1420 = distinct !{!1420, !"ext_603550_printf"}

!1421 = !{!1422}

!1422 = distinct !{!1422, !1420, !"ext_603550_printf: argument 1"}

!1423 = !{!1424}

!1424 = distinct !{!1424, !1425, !"ext_603550_printf: argument 0"}

!1425 = distinct !{!1425, !"ext_603550_printf"}

!1426 = !{!1427}

!1427 = distinct !{!1427, !1425, !"ext_603550_printf: argument 1"}

!1428 = !{!1429}

!1429 = distinct !{!1429, !1430, !"ext_603550_printf: argument 0"}

!1430 = distinct !{!1430, !"ext_603550_printf"}

!1431 = !{!1432}

!1432 = distinct !{!1432, !1430, !"ext_603550_printf: argument 1"}

!1433 = !{!1434}

!1434 = distinct !{!1434, !1435, !"ext_603550_printf: argument 0"}

!1435 = distinct !{!1435, !"ext_603550_printf"}

!1436 = !{!1437}

!1437 = distinct !{!1437, !1435, !"ext_603550_printf: argument 1"}

!1438 = !{!1439}

!1439 = distinct !{!1439, !1440, !"ext_603550_printf: argument 0"}

!1440 = distinct !{!1440, !"ext_603550_printf"}

!1441 = !{!1442}

!1442 = distinct !{!1442, !1440, !"ext_603550_printf: argument 1"}

!1443 = !{!1444}

!1444 = distinct !{!1444, !1445, !"ext_603550_printf: argument 0"}

!1445 = distinct !{!1445, !"ext_603550_printf"}

!1446 = !{!1447}

!1447 = distinct !{!1447, !1445, !"ext_603550_printf: argument 1"}

!1448 = !{!1449}

!1449 = distinct !{!1449, !1450, !"ext_4005f0_pow: argument 0"}

!1450 = distinct !{!1450, !"ext_4005f0_pow"}

!1451 = !{!1452}

!1452 = distinct !{!1452, !1450, !"ext_4005f0_pow: argument 1"}

!1453 = !{!1454}

!1454 = distinct !{!1454, !1455, !"ext_400630_sprintf: argument 0"}

!1455 = distinct !{!1455, !"ext_400630_sprintf"}

!1456 = !{!1457}

!1457 = distinct !{!1457, !1455, !"ext_400630_sprintf: argument 1"}

!1458 = !{!1389, !1389, i64 0}

!1459 = !{!1460}

!1460 = distinct !{!1460, !1461, !"ext_603550_printf: argument 0"}

!1461 = distinct !{!1461, !"ext_603550_printf"}

!1462 = !{!1463}

!1463 = distinct !{!1463, !1461, !"ext_603550_printf: argument 1"}

!1464 = !{!1465}

!1465 = distinct !{!1465, !1466, !"ext_603550_printf: argument 0"}

!1466 = distinct !{!1466, !"ext_603550_printf"}

!1467 = !{!1468}

!1468 = distinct !{!1468, !1466, !"ext_603550_printf: argument 1"}

!1469 = !{!1470}

!1470 = distinct !{!1470, !1471, !"ext_603550_printf: argument 0"}

!1471 = distinct !{!1471, !"ext_603550_printf"}

!1472 = !{!1473}

!1473 = distinct !{!1473, !1471, !"ext_603550_printf: argument 1"}

!1474 = !{!1475}

!1475 = distinct !{!1475, !1476, !"ext_603550_printf: argument 0"}

!1476 = distinct !{!1476, !"ext_603550_printf"}

!1477 = !{!1478}

!1478 = distinct !{!1478, !1476, !"ext_603550_printf: argument 1"}

!1479 = !{!1480}

!1480 = distinct !{!1480, !1481, !"ext_603550_printf: argument 0"}

!1481 = distinct !{!1481, !"ext_603550_printf"}

!1482 = !{!1483}

!1483 = distinct !{!1483, !1481, !"ext_603550_printf: argument 1"}

!1484 = !{!1485}

!1485 = distinct !{!1485, !1486, !"ext_400600_log: argument 0"}

!1486 = distinct !{!1486, !"ext_400600_log"}

!1487 = !{!1488}

!1488 = distinct !{!1488, !1486, !"ext_400600_log: argument 1"}

!1489 = !{!1490}

!1490 = distinct !{!1490, !1491, !"ext_400640_sqrt: argument 0"}

!1491 = distinct !{!1491, !"ext_400640_sqrt"}

!1492 = !{!1493}

!1493 = distinct !{!1493, !1491, !"ext_400640_sqrt: argument 1"}

!1494 = !{!1495}

!1495 = distinct !{!1495, !1496, !"ext_400640_sqrt: argument 0"}

!1496 = distinct !{!1496, !"ext_400640_sqrt"}

!1497 = !{!1498}

!1498 = distinct !{!1498, !1496, !"ext_400640_sqrt: argument 1"}

!1499 = !{!1500}

!1500 = distinct !{!1500, !1501, !"ext_400600_log: argument 0"}

!1501 = distinct !{!1501, !"ext_400600_log"}

!1502 = !{!1503}

!1503 = distinct !{!1503, !1501, !"ext_400600_log: argument 1"}

!1504 = !{!1505}

!1505 = distinct !{!1505, !1506, !"ext_603548_fclose: argument 0"}

!1506 = distinct !{!1506, !"ext_603548_fclose"}

!1507 = !{!1508}

!1508 = distinct !{!1508, !1506, !"ext_603548_fclose: argument 1"}

!1509 = !{!1510}

!1510 = distinct !{!1510, !1511, !"ext_603578_malloc: argument 0"}

!1511 = distinct !{!1511, !"ext_603578_malloc"}

!1512 = !{!1513}

!1513 = distinct !{!1513, !1511, !"ext_603578_malloc: argument 1"}

!1514 = !{!1515}

!1515 = distinct !{!1515, !1516, !"ext_603550_printf: argument 0"}

!1516 = distinct !{!1516, !"ext_603550_printf"}

!1517 = !{!1518}

!1518 = distinct !{!1518, !1516, !"ext_603550_printf: argument 1"}

!1519 = !{!1520}

!1520 = distinct !{!1520, !1521, !"ext_603550_printf: argument 0"}

!1521 = distinct !{!1521, !"ext_603550_printf"}

!1522 = !{!1523}

!1523 = distinct !{!1523, !1521, !"ext_603550_printf: argument 1"}

!1524 = !{!1525}

!1525 = distinct !{!1525, !1526, !"ext_603578_malloc: argument 0"}

!1526 = distinct !{!1526, !"ext_603578_malloc"}

!1527 = !{!1528}

!1528 = distinct !{!1528, !1526, !"ext_603578_malloc: argument 1"}

!1529 = !{!1530}

!1530 = distinct !{!1530, !1531, !"ext_603550_printf: argument 0"}

!1531 = distinct !{!1531, !"ext_603550_printf"}

!1532 = !{!1533}

!1533 = distinct !{!1533, !1531, !"ext_603550_printf: argument 1"}

!1534 = !{!1535}

!1535 = distinct !{!1535, !1536, !"ext_603550_printf: argument 0"}

!1536 = distinct !{!1536, !"ext_603550_printf"}

!1537 = !{!1538}

!1538 = distinct !{!1538, !1536, !"ext_603550_printf: argument 1"}

!1539 = !{!1540}

!1540 = distinct !{!1540, !1541, !"ext_603550_printf: argument 0"}

!1541 = distinct !{!1541, !"ext_603550_printf"}

!1542 = !{!1543}

!1543 = distinct !{!1543, !1541, !"ext_603550_printf: argument 1"}

!1544 = !{!1545}

!1545 = distinct !{!1545, !1546, !"ext_603550_printf: argument 0"}

!1546 = distinct !{!1546, !"ext_603550_printf"}

!1547 = !{!1548}

!1548 = distinct !{!1548, !1546, !"ext_603550_printf: argument 1"}

!1549 = !{!1550}

!1550 = distinct !{!1550, !1551, !"ext_603550_printf: argument 0"}

!1551 = distinct !{!1551, !"ext_603550_printf"}

!1552 = !{!1553}

!1553 = distinct !{!1553, !1551, !"ext_603550_printf: argument 1"}

!1554 = !{!1555}

!1555 = distinct !{!1555, !1556, !"ext_603550_printf: argument 0"}

!1556 = distinct !{!1556, !"ext_603550_printf"}

!1557 = !{!1558}

!1558 = distinct !{!1558, !1556, !"ext_603550_printf: argument 1"}

!1559 = !{!1560}

!1560 = distinct !{!1560, !1561, !"ext_603550_printf: argument 0"}

!1561 = distinct !{!1561, !"ext_603550_printf"}

!1562 = !{!1563}

!1563 = distinct !{!1563, !1561, !"ext_603550_printf: argument 1"}

!1564 = !{!1565}

!1565 = distinct !{!1565, !1566, !"ext_603550_printf: argument 0"}

!1566 = distinct !{!1566, !"ext_603550_printf"}

!1567 = !{!1568}

!1568 = distinct !{!1568, !1566, !"ext_603550_printf: argument 1"}

!1569 = !{!1570}

!1570 = distinct !{!1570, !1571, !"ext_603550_printf: argument 0"}

!1571 = distinct !{!1571, !"ext_603550_printf"}

!1572 = !{!1573}

!1573 = distinct !{!1573, !1571, !"ext_603550_printf: argument 1"}

!1574 = !{!1575}

!1575 = distinct !{!1575, !1576, !"ext_603550_printf: argument 0"}

!1576 = distinct !{!1576, !"ext_603550_printf"}

!1577 = !{!1578}

!1578 = distinct !{!1578, !1576, !"ext_603550_printf: argument 1"}

!1579 = !{!1580}

!1580 = distinct !{!1580, !1581, !"ext_603550_printf: argument 0"}

!1581 = distinct !{!1581, !"ext_603550_printf"}

!1582 = !{!1583}

!1583 = distinct !{!1583, !1581, !"ext_603550_printf: argument 1"}

!1584 = !{!1585}

!1585 = distinct !{!1585, !1586, !"ext_603550_printf: argument 0"}

!1586 = distinct !{!1586, !"ext_603550_printf"}

!1587 = !{!1588}

!1588 = distinct !{!1588, !1586, !"ext_603550_printf: argument 1"}

!1589 = !{!1590}

!1590 = distinct !{!1590, !1591, !"ext_603550_printf: argument 0"}

!1591 = distinct !{!1591, !"ext_603550_printf"}

!1592 = !{!1593}

!1593 = distinct !{!1593, !1591, !"ext_603550_printf: argument 1"}

!1594 = !{!1595}

!1595 = distinct !{!1595, !1596, !"ext_603550_printf: argument 0"}

!1596 = distinct !{!1596, !"ext_603550_printf"}

!1597 = !{!1598}

!1598 = distinct !{!1598, !1596, !"ext_603550_printf: argument 1"}

!1599 = !{!1600}

!1600 = distinct !{!1600, !1601, !"ext_603550_printf: argument 0"}

!1601 = distinct !{!1601, !"ext_603550_printf"}

!1602 = !{!1603}

!1603 = distinct !{!1603, !1601, !"ext_603550_printf: argument 1"}

!1604 = !{!1605}

!1605 = distinct !{!1605, !1606, !"ext_4005f0_pow: argument 0"}

!1606 = distinct !{!1606, !"ext_4005f0_pow"}

!1607 = !{!1608}

!1608 = distinct !{!1608, !1606, !"ext_4005f0_pow: argument 1"}

!1609 = !{!1610}

!1610 = distinct !{!1610, !1611, !"ext_400630_sprintf: argument 0"}

!1611 = distinct !{!1611, !"ext_400630_sprintf"}

!1612 = !{!1613}

!1613 = distinct !{!1613, !1611, !"ext_400630_sprintf: argument 1"}

!1614 = !{!1615}

!1615 = distinct !{!1615, !1616, !"ext_603550_printf: argument 0"}

!1616 = distinct !{!1616, !"ext_603550_printf"}

!1617 = !{!1618}

!1618 = distinct !{!1618, !1616, !"ext_603550_printf: argument 1"}

!1619 = !{!1620}

!1620 = distinct !{!1620, !1621, !"ext_603550_printf: argument 0"}

!1621 = distinct !{!1621, !"ext_603550_printf"}

!1622 = !{!1623}

!1623 = distinct !{!1623, !1621, !"ext_603550_printf: argument 1"}

!1624 = !{!1625}

!1625 = distinct !{!1625, !1626, !"ext_603550_printf: argument 0"}

!1626 = distinct !{!1626, !"ext_603550_printf"}

!1627 = !{!1628}

!1628 = distinct !{!1628, !1626, !"ext_603550_printf: argument 1"}

!1629 = !{!1630}

!1630 = distinct !{!1630, !1631, !"ext_603550_printf: argument 0"}

!1631 = distinct !{!1631, !"ext_603550_printf"}

!1632 = !{!1633}

!1633 = distinct !{!1633, !1631, !"ext_603550_printf: argument 1"}

!1634 = !{!1635}

!1635 = distinct !{!1635, !1636, !"ext_603550_printf: argument 0"}

!1636 = distinct !{!1636, !"ext_603550_printf"}

!1637 = !{!1638}

!1638 = distinct !{!1638, !1636, !"ext_603550_printf: argument 1"}

!1639 = !{!1640}

!1640 = distinct !{!1640, !1641, !"ext_603550_printf: argument 0"}

!1641 = distinct !{!1641, !"ext_603550_printf"}

!1642 = !{!1643}

!1643 = distinct !{!1643, !1641, !"ext_603550_printf: argument 1"}

