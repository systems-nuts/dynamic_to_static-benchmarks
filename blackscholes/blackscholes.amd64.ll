; ModuleID = 'blackscholes.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_4018f0__rodata_type = type <{ [84 x i8], [24 x i8], [48 x i8], [2 x i8], [34 x i8], [3 x i8], [39 x i8], [82 x i8], [46 x i8], [27 x i8], [35 x i8], [20 x i8], [17 x i8], [19 x i8], [22 x i8], [25 x i8], [2 x i8], [4 x i8], [38 x i8], [7 x i8] }>

%seg_601e00__init_array_type = type <{ i64, i64 }>

%seg_601ff0__got_type = type <{ i64, i64 }>

%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

%__bss_start_type = type <{ [4 x i8] }>

%numError_type = type <{ [12 x i8] }>

%rate_type = type <{ [8 x i8] }>

%strike_type = type <{ [8 x i8] }>

%otime_type = type <{ [8 x i8] }>

%data_type = type <{ [8 x i8] }>

%volatility_type = type <{ [8 x i8] }>

%nThreads_type = type <{ [8 x i8] }>

%otype_type = type <{ [8 x i8] }>

%numOptions_type = type <{ [8 x i8] }>

%inputFile_type = type <{ [128 x i8] }>

%sptprice_type = type <{ [16 x i8] }>

%outputFile_type = type <{ [128 x i8] }>

%prices_type = type <{ [8 x i8] }>

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

@seg_4018f0__rodata = internal constant %seg_4018f0__rodata_type <{ [84 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\F0?C)\F4\D6\CDH\F5?\D0x\F2N\DD#\FD\BFh^_\02\EF\80\FC?[2\A8\E5\F0\D1\D6\BF\EC\F8\92:\BFp\D4?\0E\10q\18q\A6\CD?Q6\D43E\88\D9?\00\00\00\00\00\00\E0?\00\00\00\BF", [24 x i8] c"PARSEC Benchmark Suite\0A\00", [48 x i8] c"Usage:\0A\09%s <nthreads> <inputFile> <outputFile>\0A\00", [2 x i8] c"r\00", [34 x i8] c"ERROR: Unable to open file `%s'.\0A\00", [3 x i8] c"%i\00", [39 x i8] c"ERROR: Unable to read from file `%s'.\0A\00", [82 x i8] c"WARNING: Not enough work, reducing number of threads to match number of options.\0A\00", [46 x i8] c"Error: <nthreads> must be 1 (serial version)\0A\00", [27 x i8] c"%f %f %f %f %f %f %c %f %f\00", [35 x i8] c"ERROR: Unable to close file `%s'.\0A\00", [20 x i8] c"Num of Options: %d\0A\00", [17 x i8] c"Num of Runs: %d\0A\00", [19 x i8] c"Size of data: %ld\0A\00", [22 x i8] c"init time: %ld.%06ld\0A\00", [25 x i8] c"compute time: %ld.%06ld\0A\00", [2 x i8] c"w\00", [4 x i8] c"%i\0A\00", [38 x i8] c"ERROR: Unable to write to file `%s'.\0A\00", [7 x i8] c"%.18f\0A\00" }>

@seg_601e00__init_array = internal global %seg_601e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400900_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4008d0___do_global_dtors_aux to i64) }>

@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] c"\10\1E`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSstrcpy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSS__isoc99_fscanf to i64), i64 ptrtoint (i64 (i64)* @SSSSSexp to i64), i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64)* @SSSSSlog to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSfprintf to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSfflush to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64), i64 ptrtoint (i64 (i64)* @SSSSSatoi to i64), i64 ptrtoint (i64 (i64)* @SSSSSexit to i64), i64 ptrtoint (double (double)* @SSSSSsqrt to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer

@numError = local_unnamed_addr global %numError_type zeroinitializer

@rate = global %rate_type zeroinitializer

@strike = global %strike_type zeroinitializer

@otime = global %otime_type zeroinitializer

@data = global %data_type zeroinitializer

@volatility = global %volatility_type zeroinitializer

@nThreads = global %nThreads_type zeroinitializer

@otype = global %otype_type zeroinitializer

@numOptions = global %numOptions_type zeroinitializer

@inputFile = global %inputFile_type zeroinitializer

@sptprice = global %sptprice_type zeroinitializer

@outputFile = global %outputFile_type zeroinitializer

@prices = global %prices_type zeroinitializer

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



; Function Attrs: nounwind readnone

declare double @sqrt(double) local_unnamed_addr #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSstrcpy(i64, i64) #3
declare i64 @strcpy(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSexp(i64) #3
declare i64 @exp(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #3
declare i64 @malloc(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #3
declare i64 @gettimeofday(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSexit(i64) #3
declare i64 @exit(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfree(i64) #3
declare i64 @free(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfclose(i64) #3
declare i64 @fclose(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSatoi(i64) #3
declare i64 @atoi(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSlog(i64) #3
declare i64 @log(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSS__isoc99_fscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @__isoc99_fscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfflush(i64) #3
declare i64 @fflush(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfopen(i64, i64) #3
declare i64 @fopen(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400708__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400708:

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

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #11

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

  br i1 %21, label %block_40071a, label %block_400718



block_40071a:                                     ; preds = %block_400718, %block_400708

  %27 = phi i64 [ %7, %block_400708 ], [ %58, %block_400718 ]

  %28 = phi %struct.Memory* [ %2, %block_400708 ], [ %57, %block_400718 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1244

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #11

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



block_400718:                                     ; preds = %block_400708

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_40071a

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400860_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400860:

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

  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #11

  %13 = trunc i32 %12 to i8

  %14 = and i8 %13, 1

  %15 = xor i8 %14, 1

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %15, i8* %16, align 1, !tbaa !1258

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %17, align 1, !tbaa !1262

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %18, align 1, !tbaa !1259

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %19, align 1, !tbaa !1260

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63), i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63))), i64 2) to i8), i8* %20, align 1, !tbaa !1261

  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400888, label %block_400871



block_400871:                                     ; preds = %block_400860

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %11, align 1, !tbaa !1244

  store i8 1, i8* %16, align 1, !tbaa !1258

  store i8 1, i8* %18, align 1, !tbaa !1259

  store i8 0, i8* %19, align 1, !tbaa !1260

  store i8 0, i8* %20, align 1, !tbaa !1261

  store i8 0, i8* %17, align 1, !tbaa !1262

  br label %block_400888



block_400888:                                     ; preds = %block_400871, %block_400860

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

define %struct.Memory* @sub_400890_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400890:

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

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !1263

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1) to i32), i32 255)) #11

  %19 = trunc i32 %18 to i8

  %20 = and i8 %19, 1

  %21 = xor i8 %20, 1

  store i8 %21, i8* %13, align 1, !tbaa !1263

  store i8 0, i8* %14, align 1, !tbaa !1263

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !1263

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !1263

  store i8 0, i8* %17, align 1, !tbaa !1263

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0), label %block_4008c8, label %block_4008b3



block_4008b3:                                     ; preds = %block_400890

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1244

  store i8 1, i8* %13, align 1, !tbaa !1258

  store i8 1, i8* %15, align 1, !tbaa !1259

  store i8 0, i8* %16, align 1, !tbaa !1260

  store i8 0, i8* %17, align 1, !tbaa !1261

  store i8 0, i8* %14, align 1, !tbaa !1262

  br label %block_4008c8



block_4008c8:                                     ; preds = %block_4008b3, %block_400890

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400720(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400720:

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

  %10 = icmp eq i64 %9, 4196140

  br i1 %10, label %block_40072c, label %12



block_40072c:                                     ; preds = %block_400720

  store i64 4196144, i64* %3, align 8

  %11 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 4196144, %struct.Memory* %2)

  ret %struct.Memory* %11



; <label>:12:                                     ; preds = %block_400720

  %13 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %13

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4008d0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4008d0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1244

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #11

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

  br i1 %14, label %block_4008d9, label %block_4008f0



block_4008f0:                                     ; preds = %block_4008d0

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4008d9:                                     ; preds = %block_4008d0

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

  %35 = tail call %struct.Memory* @sub_400860_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

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

define %struct.Memory* @sub_400db0_bs_thread(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400db0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %17 = load i64, i64* %10, align 8

  %18 = load i64, i64* %9, align 8, !tbaa !1240

  %19 = add i64 %18, -8

  %20 = inttoptr i64 %19 to i64*

  store i64 %17, i64* %20

  store i64 %19, i64* %10, align 8, !tbaa !1240

  %21 = add i64 %18, -56

  store i64 %21, i64* %9, align 8, !tbaa !1240

  %22 = icmp ult i64 %19, 48

  %23 = zext i1 %22 to i8

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %23, i8* %24, align 1, !tbaa !1244

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %30, i8* %31, align 1, !tbaa !1258

  %32 = xor i64 %19, 16

  %33 = xor i64 %32, %21

  %34 = lshr i64 %33, 4

  %35 = trunc i64 %34 to i8

  %36 = and i8 %35, 1

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %36, i8* %37, align 1, !tbaa !1262

  %38 = icmp eq i64 %21, 0

  %39 = zext i1 %38 to i8

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %39, i8* %40, align 1, !tbaa !1259

  %41 = lshr i64 %21, 63

  %42 = trunc i64 %41 to i8

  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %42, i8* %43, align 1, !tbaa !1260

  %44 = lshr i64 %19, 63

  %45 = xor i64 %41, %44

  %46 = add nuw nsw i64 %45, %44

  %47 = icmp eq i64 %46, 2

  %48 = zext i1 %47 to i8

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %48, i8* %49, align 1, !tbaa !1261

  %50 = add i64 %18, -16

  %51 = load i64, i64* %8, align 8

  %52 = inttoptr i64 %50 to i64*

  store i64 %51, i64* %52

  %53 = inttoptr i64 %50 to i64*

  %54 = load i64, i64* %53

  store i64 %54, i64* %8, align 8, !tbaa !1240

  %55 = inttoptr i64 %54 to i32*

  %56 = load i32, i32* %55

  %57 = add i64 %18, -36

  %58 = inttoptr i64 %57 to i32*

  store i32 %56, i32* %58

  %59 = inttoptr i64 %57 to i32*

  %60 = load i32, i32* %59

  %61 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %62 = zext i32 %61 to i64

  store i64 %62, i64* %7, align 8, !tbaa !1240

  %63 = add i64 %18, -48

  %64 = inttoptr i64 %63 to i32*

  store i32 %60, i32* %64

  store i64 %62, i64* %6, align 8, !tbaa !1240

  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %66 = sext i32 %61 to i64

  %67 = lshr i64 %66, 32

  store i64 %67, i64* %65, align 8, !tbaa !1240

  %68 = add i64 %1, 44

  store i64 %68, i64* %3, align 8

  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %70 = load i32, i32* bitcast (%nThreads_type* @nThreads to i32*)

  %71 = sext i32 %70 to i64

  %72 = shl nuw i64 %67, 32

  %73 = or i64 %72, %62

  %74 = sdiv i64 %73, %71

  %75 = shl i64 %74, 32

  %76 = ashr exact i64 %75, 32

  %77 = icmp eq i64 %74, %76

  br i1 %77, label %83, label %78



; <label>:78:                                     ; preds = %block_400db0

  %79 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %68, %struct.Memory* %2) #14

  %80 = load i64, i64* %3, align 8

  %81 = load i32, i32* %5, align 4

  %82 = load i64, i64* %10, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:83:                                     ; preds = %block_400db0

  %84 = trunc i64 %74 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %83, %78

  %85 = phi i8 [ 0, %78 ], [ 0, %83 ]

  %86 = phi i64 [ %82, %78 ], [ %19, %83 ]

  %87 = phi i32 [ %81, %78 ], [ %84, %83 ]

  %88 = phi i64 [ %80, %78 ], [ %68, %83 ]

  %89 = phi %struct.Memory* [ %79, %78 ], [ %2, %83 ]

  %90 = add i64 %86, -40

  %91 = inttoptr i64 %90 to i32*

  %92 = load i32, i32* %91

  %93 = sext i32 %92 to i64

  %94 = sext i32 %87 to i64

  %95 = mul nsw i64 %94, %93

  %96 = trunc i64 %95 to i32

  %97 = shl i64 %95, 32

  %98 = ashr exact i64 %97, 32

  %99 = icmp ne i64 %98, %95

  %100 = zext i1 %99 to i8

  store i8 %100, i8* %24, align 1, !tbaa !1244

  %101 = and i32 %96, 255

  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #11

  %103 = trunc i32 %102 to i8

  %104 = and i8 %103, 1

  %105 = xor i8 %104, 1

  store i8 %105, i8* %31, align 1, !tbaa !1258

  store i8 %85, i8* %37, align 1, !tbaa !1262

  store i8 %85, i8* %40, align 1, !tbaa !1259

  %106 = lshr i32 %96, 31

  %107 = trunc i32 %106 to i8

  store i8 %107, i8* %43, align 1, !tbaa !1260

  store i8 %100, i8* %49, align 1, !tbaa !1261

  %108 = add i64 %86, -32

  %109 = trunc i64 %95 to i32

  %110 = inttoptr i64 %108 to i32*

  store i32 %109, i32* %110

  %111 = inttoptr i64 %108 to i32*

  %112 = load i32, i32* %111

  %113 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %114 = zext i32 %113 to i64

  store i64 %114, i64* %7, align 8, !tbaa !1240

  %115 = add i64 %86, -44

  %116 = inttoptr i64 %115 to i32*

  store i32 %112, i32* %116

  store i64 %114, i64* %6, align 8, !tbaa !1240

  %117 = sext i32 %113 to i64

  %118 = lshr i64 %117, 32

  store i64 %118, i64* %65, align 8, !tbaa !1240

  %119 = add i64 %88, 32

  store i64 %119, i64* %3, align 8

  %120 = load i32, i32* bitcast (%nThreads_type* @nThreads to i32*)

  %121 = sext i32 %120 to i64

  %122 = shl nuw i64 %118, 32

  %123 = or i64 %122, %114

  %124 = sdiv i64 %123, %121

  %125 = shl i64 %124, 32

  %126 = ashr exact i64 %125, 32

  %127 = icmp eq i64 %124, %126

  br i1 %127, label %133, label %128



; <label>:128:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

  %129 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %119, %struct.Memory* %89) #14

  %130 = load i64, i64* %10, align 8

  %131 = load i64, i64* %3, align 8

  %132 = load i32, i32* %5, align 4

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1



; <label>:133:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

  %134 = srem i64 %123, %121

  %135 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0

  %136 = and i64 %134, 4294967295

  store i64 %136, i64* %135, align 8, !tbaa !1240

  %137 = trunc i64 %124 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %133, %128

  %138 = phi i32 [ %132, %128 ], [ %137, %133 ]

  %139 = phi i64 [ %131, %128 ], [ %119, %133 ]

  %140 = phi i64 [ %130, %128 ], [ %86, %133 ]

  %141 = phi %struct.Memory* [ %129, %128 ], [ %89, %133 ]

  %142 = add i64 %140, -44

  %143 = inttoptr i64 %142 to i32*

  %144 = load i32, i32* %143

  %145 = add i32 %138, %144

  %146 = zext i32 %145 to i64

  store i64 %146, i64* %7, align 8, !tbaa !1240

  %147 = add i64 %140, -36

  %148 = inttoptr i64 %147 to i32*

  store i32 %145, i32* %148

  %149 = add i64 %140, -16

  %150 = add i64 %139, 15

  %151 = inttoptr i64 %149 to i32*

  store i32 0, i32* %151

  %152 = bitcast %union.VectorReg* %16 to i8*

  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %154 = bitcast %union.VectorReg* %16 to i32*

  %155 = getelementptr inbounds i8, i8* %152, i64 4

  %156 = bitcast i8* %155 to i32*

  %157 = bitcast i64* %153 to i32*

  %158 = getelementptr inbounds i8, i8* %152, i64 12

  %159 = bitcast i8* %158 to i32*

  %160 = bitcast [32 x %union.VectorReg]* %11 to i8*

  %161 = bitcast [32 x %union.VectorReg]* %11 to float*

  %162 = getelementptr inbounds i8, i8* %160, i64 4

  %163 = bitcast i8* %162 to float*

  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %165 = bitcast i64* %164 to float*

  %166 = getelementptr inbounds i8, i8* %160, i64 12

  %167 = bitcast i8* %166 to float*

  %168 = bitcast %union.VectorReg* %12 to i8*

  %169 = bitcast %union.VectorReg* %12 to float*

  %170 = getelementptr inbounds i8, i8* %168, i64 4

  %171 = bitcast i8* %170 to float*

  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %173 = bitcast i64* %172 to float*

  %174 = getelementptr inbounds i8, i8* %168, i64 12

  %175 = bitcast i8* %174 to float*

  %176 = bitcast %union.VectorReg* %13 to i8*

  %177 = bitcast %union.VectorReg* %13 to float*

  %178 = getelementptr inbounds i8, i8* %176, i64 4

  %179 = bitcast i8* %178 to float*

  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %181 = bitcast i64* %180 to float*

  %182 = getelementptr inbounds i8, i8* %176, i64 12

  %183 = bitcast i8* %182 to float*

  %184 = bitcast %union.VectorReg* %14 to i8*

  %185 = bitcast %union.VectorReg* %14 to float*

  %186 = getelementptr inbounds i8, i8* %184, i64 4

  %187 = bitcast i8* %186 to float*

  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %189 = bitcast i64* %188 to float*

  %190 = getelementptr inbounds i8, i8* %184, i64 12

  %191 = bitcast i8* %190 to float*

  %192 = bitcast %union.VectorReg* %15 to i8*

  %193 = bitcast %union.VectorReg* %15 to float*

  %194 = getelementptr inbounds i8, i8* %192, i64 4

  %195 = bitcast i8* %194 to float*

  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %197 = bitcast i64* %196 to float*

  %198 = getelementptr inbounds i8, i8* %192, i64 12

  %199 = bitcast i8* %198 to float*

  %200 = bitcast [32 x %union.VectorReg]* %11 to <2 x float>*

  %201 = load i64, i64* %10, align 8

  br label %block_400e0b



block_400ebc:                                     ; preds = %block_400e1b

  %202 = add i64 %209, -16

  %203 = inttoptr i64 %202 to i32*

  %204 = load i32, i32* %203

  %205 = add i32 %204, 1

  %206 = inttoptr i64 %202 to i32*

  store i32 %205, i32* %206

  %207 = add i64 %229, -177

  br label %block_400e0b



block_400e1b:                                     ; preds = %block_400e27, %block_400e15

  %208 = phi i64 [ %234, %block_400e15 ], [ %338, %block_400e27 ]

  %209 = phi i64 [ %267, %block_400e15 ], [ %316, %block_400e27 ]

  %210 = phi %struct.Memory* [ %268, %block_400e15 ], [ %315, %block_400e27 ]

  %211 = add i64 %209, -12

  %212 = inttoptr i64 %211 to i32*

  %213 = load i32, i32* %212

  %214 = add i64 %209, -36

  %215 = inttoptr i64 %214 to i32*

  %216 = load i32, i32* %215

  %217 = sub i32 %213, %216

  %218 = lshr i32 %217, 31

  %219 = trunc i32 %218 to i8

  %220 = lshr i32 %213, 31

  %221 = lshr i32 %216, 31

  %222 = xor i32 %221, %220

  %223 = xor i32 %218, %220

  %224 = add nuw nsw i32 %223, %222

  %225 = icmp eq i32 %224, 2

  %226 = icmp ne i8 %219, 0

  %227 = xor i1 %226, %225

  %228 = select i1 %227, i64 12, i64 161

  %229 = add i64 %208, %228

  br i1 %227, label %block_400e27, label %block_400ebc



block_400e15:                                     ; preds = %block_400e0b

  %230 = add i64 %267, -32

  %231 = inttoptr i64 %230 to i32*

  %232 = load i32, i32* %231

  %233 = add i64 %267, -12

  %234 = add i64 %282, 6

  %235 = inttoptr i64 %233 to i32*

  store i32 %232, i32* %235

  br label %block_400e1b



block_400ecf:                                     ; preds = %block_400e0b

  store i64 0, i64* %6, align 8, !tbaa !1240

  %236 = load i64, i64* %9, align 8

  %237 = add i64 %236, 48

  %238 = icmp ugt i64 %236, -49

  %239 = zext i1 %238 to i8

  store i8 %239, i8* %24, align 1, !tbaa !1244

  %240 = trunc i64 %237 to i32

  %241 = and i32 %240, 255

  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #11

  %243 = trunc i32 %242 to i8

  %244 = and i8 %243, 1

  %245 = xor i8 %244, 1

  store i8 %245, i8* %31, align 1, !tbaa !1258

  %246 = xor i64 %236, 16

  %247 = xor i64 %246, %237

  %248 = lshr i64 %247, 4

  %249 = trunc i64 %248 to i8

  %250 = and i8 %249, 1

  store i8 %250, i8* %37, align 1, !tbaa !1262

  %251 = icmp eq i64 %237, 0

  %252 = zext i1 %251 to i8

  store i8 %252, i8* %40, align 1, !tbaa !1259

  %253 = lshr i64 %237, 63

  %254 = trunc i64 %253 to i8

  store i8 %254, i8* %43, align 1, !tbaa !1260

  %255 = lshr i64 %236, 63

  %256 = xor i64 %253, %255

  %257 = add nuw nsw i64 %256, %253

  %258 = icmp eq i64 %257, 2

  %259 = zext i1 %258 to i8

  store i8 %259, i8* %49, align 1, !tbaa !1261

  %260 = add i64 %236, 56

  %261 = inttoptr i64 %237 to i64*

  %262 = load i64, i64* %261

  store i64 %262, i64* %10, align 8, !tbaa !1240

  %263 = inttoptr i64 %260 to i64*

  %264 = load i64, i64* %263

  store i64 %264, i64* %3, align 8, !tbaa !1240

  %265 = add i64 %236, 64

  store i64 %265, i64* %9, align 8, !tbaa !1240

  ret %struct.Memory* %268



block_400e0b:                                     ; preds = %block_400ebc, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

  %266 = phi i64 [ %150, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %207, %block_400ebc ]

  %267 = phi i64 [ %201, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %209, %block_400ebc ]

  %268 = phi %struct.Memory* [ %141, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %210, %block_400ebc ]

  %269 = add i64 %267, -16

  %270 = inttoptr i64 %269 to i32*

  %271 = load i32, i32* %270

  %272 = add i32 %271, -100

  %273 = lshr i32 %272, 31

  %274 = trunc i32 %273 to i8

  %275 = lshr i32 %271, 31

  %276 = xor i32 %273, %275

  %277 = add nuw nsw i32 %276, %275

  %278 = icmp eq i32 %277, 2

  %279 = icmp ne i8 %274, 0

  %280 = xor i1 %279, %278

  %281 = select i1 %280, i64 10, i64 196

  %282 = add i64 %266, %281

  br i1 %280, label %block_400e15, label %block_400ecf



block_400e27:                                     ; preds = %block_400e1b

  store i32 0, i32* %154, align 1, !tbaa !1264

  store i32 0, i32* %156, align 1, !tbaa !1264

  store i32 0, i32* %157, align 1, !tbaa !1264

  store i32 0, i32* %159, align 1, !tbaa !1264

  %283 = load i64, i64* bitcast (%sptprice_type* @sptprice to i64*)

  %284 = sext i32 %213 to i64

  %285 = shl nsw i64 %284, 2

  %286 = add i64 %285, %283

  %287 = inttoptr i64 %286 to float*

  %288 = load float, float* %287

  store float %288, float* %161, align 1, !tbaa !1265

  store float 0.000000e+00, float* %163, align 1, !tbaa !1265

  store float 0.000000e+00, float* %165, align 1, !tbaa !1265

  store float 0.000000e+00, float* %167, align 1, !tbaa !1265

  %289 = load i64, i64* bitcast (%strike_type* @strike to i64*)

  %290 = add i64 %285, %289

  %291 = inttoptr i64 %290 to float*

  %292 = load float, float* %291

  store float %292, float* %169, align 1, !tbaa !1265

  store float 0.000000e+00, float* %171, align 1, !tbaa !1265

  store float 0.000000e+00, float* %173, align 1, !tbaa !1265

  store float 0.000000e+00, float* %175, align 1, !tbaa !1265

  %293 = load i64, i64* bitcast (%rate_type* @rate to i64*)

  %294 = add i64 %285, %293

  %295 = inttoptr i64 %294 to float*

  %296 = load float, float* %295

  store float %296, float* %177, align 1, !tbaa !1265

  store float 0.000000e+00, float* %179, align 1, !tbaa !1265

  store float 0.000000e+00, float* %181, align 1, !tbaa !1265

  store float 0.000000e+00, float* %183, align 1, !tbaa !1265

  %297 = load i64, i64* bitcast (%volatility_type* @volatility to i64*)

  %298 = add i64 %285, %297

  %299 = inttoptr i64 %298 to float*

  %300 = load float, float* %299

  store float %300, float* %185, align 1, !tbaa !1265

  store float 0.000000e+00, float* %187, align 1, !tbaa !1265

  store float 0.000000e+00, float* %189, align 1, !tbaa !1265

  store float 0.000000e+00, float* %191, align 1, !tbaa !1265

  %301 = load i64, i64* bitcast (%otime_type* @otime to i64*)

  %302 = add i64 %285, %301

  %303 = inttoptr i64 %302 to float*

  %304 = load float, float* %303

  store float %304, float* %193, align 1, !tbaa !1265

  store float 0.000000e+00, float* %195, align 1, !tbaa !1265

  store float 0.000000e+00, float* %197, align 1, !tbaa !1265

  store float 0.000000e+00, float* %199, align 1, !tbaa !1265

  %305 = load i64, i64* bitcast (%otype_type* @otype to i64*)

  store i64 %284, i64* %7, align 8, !tbaa !1240

  %306 = add i64 %285, %305

  %307 = inttoptr i64 %306 to i32*

  %308 = load i32, i32* %307

  %309 = zext i32 %308 to i64

  store i64 %309, i64* %8, align 8, !tbaa !1240

  %310 = add i64 %229, -679

  %311 = add i64 %229, 108

  %312 = load i64, i64* %9, align 8, !tbaa !1240

  %313 = add i64 %312, -8

  %314 = inttoptr i64 %313 to i64*

  store i64 %311, i64* %314

  store i64 %313, i64* %9, align 8, !tbaa !1240

  %315 = tail call %struct.Memory* @sub_400b80_BlkSchlsEqEuroNoDiv(%struct.State* nonnull %0, i64 %310, %struct.Memory* %210)

  %316 = load i64, i64* %10, align 8

  %317 = add i64 %316, -20

  %318 = load i64, i64* %3, align 8

  %319 = load <2 x float>, <2 x float>* %200, align 1

  %320 = extractelement <2 x float> %319, i32 0

  %321 = inttoptr i64 %317 to float*

  store float %320, float* %321

  %322 = inttoptr i64 %317 to float*

  %323 = load float, float* %322

  store float %323, float* %161, align 1, !tbaa !1265

  store float 0.000000e+00, float* %163, align 1, !tbaa !1265

  store float 0.000000e+00, float* %165, align 1, !tbaa !1265

  store float 0.000000e+00, float* %167, align 1, !tbaa !1265

  %324 = load i64, i64* bitcast (%prices_type* @prices to i64*)

  %325 = add i64 %316, -12

  %326 = inttoptr i64 %325 to i32*

  %327 = load i32, i32* %326

  %328 = sext i32 %327 to i64

  store i64 %328, i64* %7, align 8, !tbaa !1240

  %329 = shl nsw i64 %328, 2

  %330 = add i64 %329, %324

  %331 = load <2 x float>, <2 x float>* %200, align 1

  %332 = extractelement <2 x float> %331, i32 0

  %333 = inttoptr i64 %330 to float*

  store float %332, float* %333

  %334 = inttoptr i64 %325 to i32*

  %335 = load i32, i32* %334

  %336 = add i32 %335, 1

  %337 = inttoptr i64 %325 to i32*

  store i32 %336, i32* %337

  %338 = add i64 %318, -120

  br label %block_400e1b

}



; Function Attrs: noinline

define %struct.Memory* @sub_400910_CNDF(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400910:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8

  %17 = load i64, i64* %7, align 8

  %18 = load i64, i64* %6, align 8, !tbaa !1240

  %19 = add i64 %18, -8

  %20 = inttoptr i64 %19 to i64*

  store i64 %17, i64* %20

  store i64 %19, i64* %7, align 8, !tbaa !1240

  %21 = add i64 %18, -72

  store i64 %21, i64* %6, align 8, !tbaa !1240

  %22 = icmp ult i64 %19, 64

  %23 = zext i1 %22 to i8

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %23, i8* %24, align 1, !tbaa !1244

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %30, i8* %31, align 1, !tbaa !1258

  %32 = xor i64 %19, %21

  %33 = lshr i64 %32, 4

  %34 = trunc i64 %33 to i8

  %35 = and i8 %34, 1

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %35, i8* %36, align 1, !tbaa !1262

  %37 = icmp eq i64 %21, 0

  %38 = zext i1 %37 to i8

  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %38, i8* %39, align 1, !tbaa !1259

  %40 = lshr i64 %21, 63

  %41 = trunc i64 %40 to i8

  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %41, i8* %42, align 1, !tbaa !1260

  %43 = lshr i64 %19, 63

  %44 = xor i64 %40, %43

  %45 = add nuw nsw i64 %44, %43

  %46 = icmp eq i64 %45, 2

  %47 = zext i1 %46 to i8

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %47, i8* %48, align 1, !tbaa !1261

  %49 = bitcast %union.VectorReg* %9 to i8*

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %51 = bitcast %union.VectorReg* %9 to i32*

  store i32 0, i32* %51, align 1, !tbaa !1264

  %52 = getelementptr inbounds i8, i8* %49, i64 4

  %53 = bitcast i8* %52 to i32*

  store i32 0, i32* %53, align 1, !tbaa !1264

  %54 = bitcast i64* %50 to i32*

  store i32 0, i32* %54, align 1, !tbaa !1264

  %55 = getelementptr inbounds i8, i8* %49, i64 12

  %56 = bitcast i8* %55 to i32*

  store i32 0, i32* %56, align 1, !tbaa !1264

  %57 = add i64 %18, -12

  %58 = bitcast [32 x %union.VectorReg]* %8 to i8*

  %59 = bitcast [32 x %union.VectorReg]* %8 to <2 x float>*

  %60 = load <2 x float>, <2 x float>* %59, align 1

  %61 = extractelement <2 x float> %60, i32 0

  %62 = inttoptr i64 %57 to float*

  store float %61, float* %62

  %63 = inttoptr i64 %57 to float*

  %64 = load float, float* %63

  %65 = bitcast [32 x %union.VectorReg]* %8 to float*

  store float %64, float* %65, align 1, !tbaa !1265

  %66 = getelementptr inbounds i8, i8* %58, i64 4

  %67 = bitcast i8* %66 to float*

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %69 = bitcast i64* %68 to float*

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  %70 = getelementptr inbounds i8, i8* %58, i64 12

  %71 = bitcast i8* %70 to float*

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %72 = load <2 x float>, <2 x float>* %59, align 1

  %73 = extractelement <2 x float> %72, i32 0

  %74 = fpext float %73 to double

  %75 = bitcast [32 x %union.VectorReg]* %8 to double*

  store double %74, double* %75, align 1, !tbaa !1267

  %76 = add i64 %1, 29

  store i64 %76, i64* %3, align 8

  %77 = bitcast %union.VectorReg* %9 to double*

  %78 = load double, double* %77, align 1

  %79 = fcmp uno double %78, %74

  br i1 %79, label %80, label %93



; <label>:80:                                     ; preds = %block_400910

  %81 = fadd double %74, %78

  %82 = bitcast double %81 to i64

  %83 = and i64 %82, 9221120237041090560

  %84 = icmp eq i64 %83, 9218868437227405312

  %85 = and i64 %82, 2251799813685247

  %86 = icmp ne i64 %85, 0

  %87 = and i1 %84, %86

  br i1 %87, label %88, label %99



; <label>:88:                                     ; preds = %80

  %89 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %76, %struct.Memory* %2) #14

  %90 = load i64, i64* %3, align 8

  %91 = load i8, i8* %24, align 1, !tbaa !1244

  %92 = load i8, i8* %39, align 1, !tbaa !1259

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:93:                                     ; preds = %block_400910

  %94 = fcmp ogt double %78, %74

  br i1 %94, label %99, label %95



; <label>:95:                                     ; preds = %93

  %96 = fcmp olt double %78, %74

  br i1 %96, label %99, label %97



; <label>:97:                                     ; preds = %95

  %98 = fcmp oeq double %78, %74

  br i1 %98, label %99, label %102



; <label>:99:                                     ; preds = %97, %95, %93, %80

  %100 = phi i8 [ 0, %93 ], [ 0, %95 ], [ 1, %97 ], [ 1, %80 ]

  %101 = phi i8 [ 0, %93 ], [ 1, %95 ], [ 0, %97 ], [ 1, %80 ]

  br label %102



; <label>:102:                                    ; preds = %99, %97

  %103 = phi i8 [ %100, %99 ], [ %38, %97 ]

  %104 = phi i8 [ %101, %99 ], [ %23, %97 ]

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %102, %88

  %105 = phi i8 [ %92, %88 ], [ %103, %102 ]

  %106 = phi i8 [ %91, %88 ], [ %104, %102 ]

  %107 = phi i64 [ %90, %88 ], [ %76, %102 ]

  %108 = phi %struct.Memory* [ %89, %88 ], [ %2, %102 ]

  %109 = or i8 %105, %106

  %110 = icmp ne i8 %109, 0

  %111 = select i1 %110, i64 41, i64 6

  %112 = add i64 %107, %111

  br i1 %110, label %block_400956, label %block_400933



block_400956:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %113 = load i64, i64* %7, align 8

  %114 = add i64 %113, -8

  %115 = add i64 %112, 7

  %116 = inttoptr i64 %114 to i32*

  store i32 0, i32* %116

  %117 = bitcast i8* %66 to i32*

  %118 = bitcast i64* %68 to i32*

  %119 = bitcast i8* %70 to i32*

  br label %block_40095d



block_400b54:                                     ; preds = %block_40095d

  %120 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 8) to double*)

  %121 = load i64, i64* %7, align 8

  %122 = add i64 %121, -12

  %123 = inttoptr i64 %122 to float*

  %124 = load float, float* %123

  store float %124, float* %168, align 1, !tbaa !1265

  store float 0.000000e+00, float* %169, align 1, !tbaa !1265

  store float 0.000000e+00, float* %170, align 1, !tbaa !1265

  store float 0.000000e+00, float* %171, align 1, !tbaa !1265

  %125 = load <2 x float>, <2 x float>* %173, align 1

  %126 = extractelement <2 x float> %125, i32 0

  %127 = fpext float %126 to double

  store double %127, double* %77, align 1, !tbaa !1267

  %128 = fsub double %120, %127

  store double %128, double* %75, align 1, !tbaa !1267

  store i64 0, i64* %68, align 1, !tbaa !1267

  %129 = bitcast double %128 to <2 x i32>

  %130 = fptrunc double %128 to float

  store float %130, float* %65, align 1, !tbaa !1265

  %131 = extractelement <2 x i32> %129, i32 1

  store i32 %131, i32* %160, align 1, !tbaa !1265

  store i32 0, i32* %159, align 1, !tbaa !1265

  store i32 0, i32* %158, align 1, !tbaa !1265

  %132 = load <2 x float>, <2 x float>* %59, align 1

  %133 = extractelement <2 x float> %132, i32 0

  %134 = inttoptr i64 %122 to float*

  store float %133, float* %134

  br label %block_400b72



block_400933:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %135 = bitcast %union.anon* %4 to i32*

  %136 = load i64, i64* %7, align 8

  %137 = add i64 %136, -4

  %138 = inttoptr i64 %137 to float*

  %139 = load float, float* %138

  store float %139, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  %140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %141 = load i64, i64* %140, align 1

  %142 = trunc i64 %141 to i32

  %143 = bitcast %union.anon* %4 to [2 x i32]*

  store i32 %142, i32* %135, align 1, !tbaa !1264

  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 0, i64 1

  store i32 0, i32* %144, align 1, !tbaa !1264

  %145 = load i64, i64* %5, align 8

  %146 = xor i64 %145, -2147483648

  %147 = trunc i64 %146 to i32

  %148 = bitcast [32 x %union.VectorReg]* %8 to i32*

  store i32 %147, i32* %148, align 1, !tbaa !1264

  %149 = bitcast i8* %66 to i32*

  store i32 0, i32* %149, align 1, !tbaa !1264

  %150 = bitcast i64* %68 to i32*

  store i32 0, i32* %150, align 1, !tbaa !1264

  %151 = bitcast i8* %70 to i32*

  store i32 0, i32* %151, align 1, !tbaa !1264

  %152 = load <2 x float>, <2 x float>* %59, align 1

  %153 = extractelement <2 x float> %152, i32 0

  %154 = inttoptr i64 %137 to float*

  store float %153, float* %154

  %155 = add i64 %136, -8

  %156 = inttoptr i64 %155 to i32*

  store i32 1, i32* %156

  %157 = add i64 %112, 42

  br label %block_40095d



block_40095d:                                     ; preds = %block_400933, %block_400956

  %158 = phi i32* [ %151, %block_400933 ], [ %119, %block_400956 ]

  %159 = phi i32* [ %150, %block_400933 ], [ %118, %block_400956 ]

  %160 = phi i32* [ %149, %block_400933 ], [ %117, %block_400956 ]

  %161 = phi i64 [ %136, %block_400933 ], [ %113, %block_400956 ]

  %162 = phi i64 [ %157, %block_400933 ], [ %115, %block_400956 ]

  %163 = phi %struct.Memory* [ %108, %block_400933 ], [ %108, %block_400956 ]

  %164 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 80) to float*)

  store float %164, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %165 = add i64 %161, -4

  %166 = inttoptr i64 %165 to float*

  %167 = load float, float* %166

  %168 = bitcast %union.VectorReg* %9 to float*

  store float %167, float* %168, align 1, !tbaa !1265

  %169 = bitcast i8* %52 to float*

  store float 0.000000e+00, float* %169, align 1, !tbaa !1265

  %170 = bitcast i64* %50 to float*

  store float 0.000000e+00, float* %170, align 1, !tbaa !1265

  %171 = bitcast i8* %55 to float*

  store float 0.000000e+00, float* %171, align 1, !tbaa !1265

  %172 = add i64 %161, -16

  %173 = bitcast %union.VectorReg* %9 to <2 x float>*

  %174 = load <2 x float>, <2 x float>* %173, align 1

  %175 = extractelement <2 x float> %174, i32 0

  %176 = inttoptr i64 %172 to float*

  store float %175, float* %176

  %177 = load <2 x float>, <2 x float>* %59, align 1

  %178 = bitcast i64* %68 to <2 x i32>*

  %179 = load <2 x i32>, <2 x i32>* %178, align 1

  %180 = inttoptr i64 %165 to float*

  %181 = load float, float* %180

  %182 = extractelement <2 x float> %177, i32 0

  %183 = fmul float %182, %181

  store float %183, float* %65, align 1, !tbaa !1265

  %184 = bitcast <2 x float> %177 to <2 x i32>

  %185 = extractelement <2 x i32> %184, i32 1

  store i32 %185, i32* %160, align 1, !tbaa !1265

  %186 = extractelement <2 x i32> %179, i32 0

  store i32 %186, i32* %159, align 1, !tbaa !1265

  %187 = extractelement <2 x i32> %179, i32 1

  store i32 %187, i32* %158, align 1, !tbaa !1265

  %188 = load <2 x float>, <2 x float>* %59, align 1

  %189 = load <2 x i32>, <2 x i32>* %178, align 1

  %190 = extractelement <2 x float> %188, i32 0

  %191 = fmul float %190, %181

  store float %191, float* %65, align 1, !tbaa !1265

  %192 = bitcast <2 x float> %188 to <2 x i32>

  %193 = extractelement <2 x i32> %192, i32 1

  store i32 %193, i32* %160, align 1, !tbaa !1265

  %194 = extractelement <2 x i32> %189, i32 0

  store i32 %194, i32* %159, align 1, !tbaa !1265

  %195 = extractelement <2 x i32> %189, i32 1

  store i32 %195, i32* %158, align 1, !tbaa !1265

  %196 = load <2 x float>, <2 x float>* %59, align 1

  %197 = extractelement <2 x float> %196, i32 0

  %198 = fpext float %197 to double

  store double %198, double* %75, align 1, !tbaa !1267

  %199 = add i64 %162, 37

  %200 = load i64, i64* %6, align 8, !tbaa !1240

  %201 = add i64 %200, -8

  %202 = inttoptr i64 %201 to i64*

  store i64 %199, i64* %202

  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %205 = load i64, i64* %204, align 8, !alias.scope !1269, !noalias !1272

  %206 = inttoptr i64 %201 to i64*

  %207 = load i64, i64* %206

  store i64 %207, i64* %3, align 8, !alias.scope !1269, !noalias !1272

  store i64 %200, i64* %6, align 8, !alias.scope !1269, !noalias !1272

  %208 = tail call i64 @exp(i64 %205), !noalias !1269

  store i64 %208, i64* %203, align 8, !alias.scope !1269, !noalias !1272

  %209 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 8) to double*)

  store double %209, double* %77, align 1, !tbaa !1267

  %210 = bitcast i64* %50 to double*

  store double 0.000000e+00, double* %210, align 1, !tbaa !1267

  %211 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 16) to double*)

  %212 = bitcast %union.VectorReg* %10 to double*

  store double %211, double* %212, align 1, !tbaa !1267

  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %214 = bitcast i64* %213 to double*

  store double 0.000000e+00, double* %214, align 1, !tbaa !1267

  %215 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 24) to double*)

  %216 = bitcast %union.VectorReg* %11 to double*

  store double %215, double* %216, align 1, !tbaa !1267

  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %218 = bitcast i64* %217 to double*

  store double 0.000000e+00, double* %218, align 1, !tbaa !1267

  %219 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 32) to double*)

  %220 = bitcast %union.VectorReg* %12 to double*

  store double %219, double* %220, align 1, !tbaa !1267

  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %222 = bitcast i64* %221 to double*

  store double 0.000000e+00, double* %222, align 1, !tbaa !1267

  %223 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to double*)

  %224 = bitcast %union.VectorReg* %13 to double*

  store double %223, double* %224, align 1, !tbaa !1267

  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %226 = bitcast i64* %225 to double*

  store double 0.000000e+00, double* %226, align 1, !tbaa !1267

  %227 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 48) to double*)

  %228 = bitcast %union.VectorReg* %14 to double*

  store double %227, double* %228, align 1, !tbaa !1267

  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1

  %230 = bitcast i64* %229 to double*

  store double 0.000000e+00, double* %230, align 1, !tbaa !1267

  %231 = bitcast %union.VectorReg* %15 to i8*

  %232 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 56) to double*)

  %233 = bitcast %union.VectorReg* %15 to double*

  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1

  %235 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 64) to double*)

  %236 = bitcast %union.VectorReg* %16 to double*

  store double %235, double* %236, align 1, !tbaa !1267

  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %238 = bitcast i64* %237 to double*

  store double 0.000000e+00, double* %238, align 1, !tbaa !1267

  %239 = bitcast [32 x %union.VectorReg]* %8 to <2 x i32>*

  %240 = load <2 x i32>, <2 x i32>* %239, align 1

  %241 = load <2 x i32>, <2 x i32>* %178, align 1

  %242 = bitcast <2 x i32> %240 to double

  %243 = fptrunc double %242 to float

  store float %243, float* %65, align 1, !tbaa !1265

  %244 = extractelement <2 x i32> %240, i32 1

  store i32 %244, i32* %160, align 1, !tbaa !1265

  %245 = extractelement <2 x i32> %241, i32 0

  store i32 %245, i32* %159, align 1, !tbaa !1265

  %246 = extractelement <2 x i32> %241, i32 1

  store i32 %246, i32* %158, align 1, !tbaa !1265

  %247 = load i64, i64* %7, align 8

  %248 = add i64 %247, -24

  %249 = load <2 x float>, <2 x float>* %59, align 1

  %250 = extractelement <2 x float> %249, i32 0

  %251 = inttoptr i64 %248 to float*

  store float %250, float* %251

  %252 = inttoptr i64 %248 to float*

  %253 = load float, float* %252

  store float %253, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  %254 = add i64 %247, -20

  %255 = load <2 x float>, <2 x float>* %59, align 1

  %256 = extractelement <2 x float> %255, i32 0

  %257 = inttoptr i64 %254 to float*

  store float %256, float* %257

  %258 = inttoptr i64 %254 to float*

  %259 = load float, float* %258

  store float %259, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %260 = load <2 x float>, <2 x float>* %59, align 1

  %261 = extractelement <2 x float> %260, i32 0

  %262 = fpext float %261 to double

  %263 = bitcast i64* %68 to <2 x i32>*

  %264 = load <2 x i32>, <2 x i32>* %263, align 1

  %265 = fmul double %262, %235

  store double %265, double* %75, align 1, !tbaa !1267

  %266 = bitcast double %265 to <2 x i32>

  %267 = fptrunc double %265 to float

  store float %267, float* %65, align 1, !tbaa !1265

  %268 = extractelement <2 x i32> %266, i32 1

  store i32 %268, i32* %160, align 1, !tbaa !1265

  %269 = extractelement <2 x i32> %264, i32 0

  store i32 %269, i32* %159, align 1, !tbaa !1265

  %270 = extractelement <2 x i32> %264, i32 1

  store i32 %270, i32* %158, align 1, !tbaa !1265

  %271 = load <2 x float>, <2 x float>* %59, align 1

  %272 = extractelement <2 x float> %271, i32 0

  %273 = inttoptr i64 %254 to float*

  store float %272, float* %273

  %274 = add i64 %247, -16

  %275 = inttoptr i64 %274 to float*

  %276 = load float, float* %275

  store float %276, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %277 = load <2 x float>, <2 x float>* %59, align 1

  %278 = extractelement <2 x float> %277, i32 0

  %279 = fpext float %278 to double

  store double %279, double* %75, align 1, !tbaa !1267

  %280 = fmul double %279, %232

  %281 = bitcast double %279 to <2 x i32>

  %282 = load <2 x i32>, <2 x i32>* %178, align 1

  %283 = fptrunc double %280 to float

  store float %283, float* %65, align 1, !tbaa !1265

  %284 = extractelement <2 x i32> %281, i32 1

  store i32 %284, i32* %160, align 1, !tbaa !1265

  %285 = extractelement <2 x i32> %282, i32 0

  store i32 %285, i32* %159, align 1, !tbaa !1265

  %286 = extractelement <2 x i32> %282, i32 1

  store i32 %286, i32* %158, align 1, !tbaa !1265

  %287 = add i64 %247, -28

  %288 = load <2 x float>, <2 x float>* %59, align 1

  %289 = extractelement <2 x float> %288, i32 0

  %290 = inttoptr i64 %287 to float*

  store float %289, float* %290

  %291 = inttoptr i64 %287 to float*

  %292 = load float, float* %291

  store float %292, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %293 = load <2 x float>, <2 x float>* %59, align 1

  %294 = extractelement <2 x float> %293, i32 0

  %295 = fpext float %294 to double

  store double %295, double* %75, align 1, !tbaa !1267

  %296 = bitcast %union.VectorReg* %9 to <2 x i32>*

  %297 = load <2 x i32>, <2 x i32>* %296, align 1

  %298 = bitcast i64* %50 to <2 x i32>*

  %299 = load <2 x i32>, <2 x i32>* %298, align 1

  %300 = extractelement <2 x i32> %297, i32 0

  %301 = bitcast %union.VectorReg* %15 to i32*

  store i32 %300, i32* %301, align 1, !tbaa !1265

  %302 = extractelement <2 x i32> %297, i32 1

  %303 = getelementptr inbounds i8, i8* %231, i64 4

  %304 = bitcast i8* %303 to i32*

  store i32 %302, i32* %304, align 1, !tbaa !1265

  %305 = extractelement <2 x i32> %299, i32 0

  %306 = bitcast i64* %234 to i32*

  %307 = extractelement <2 x i32> %299, i32 1

  %308 = getelementptr inbounds i8, i8* %231, i64 12

  %309 = bitcast i8* %308 to i32*

  %310 = load double, double* %233, align 1

  %311 = fadd double %310, %295

  %312 = bitcast double %295 to <2 x i32>

  %313 = load <2 x i32>, <2 x i32>* %178, align 1

  %314 = fptrunc double %311 to float

  store float %314, float* %65, align 1, !tbaa !1265

  %315 = extractelement <2 x i32> %312, i32 1

  store i32 %315, i32* %160, align 1, !tbaa !1265

  %316 = extractelement <2 x i32> %313, i32 0

  store i32 %316, i32* %159, align 1, !tbaa !1265

  %317 = extractelement <2 x i32> %313, i32 1

  store i32 %317, i32* %158, align 1, !tbaa !1265

  %318 = load i64, i64* %7, align 8

  %319 = add i64 %318, -28

  %320 = load <2 x float>, <2 x float>* %59, align 1

  %321 = extractelement <2 x float> %320, i32 0

  %322 = inttoptr i64 %319 to float*

  store float %321, float* %322

  %323 = inttoptr i64 %319 to float*

  %324 = load float, float* %323

  store float %324, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %325 = load <2 x float>, <2 x float>* %59, align 1

  %326 = extractelement <2 x float> %325, i32 0

  %327 = fpext float %326 to double

  store double %327, double* %75, align 1, !tbaa !1267

  store i32 %300, i32* %301, align 1, !tbaa !1265

  store i32 %302, i32* %304, align 1, !tbaa !1265

  store i32 %305, i32* %306, align 1, !tbaa !1265

  store i32 %307, i32* %309, align 1, !tbaa !1265

  %328 = load double, double* %233, align 1

  %329 = fdiv double %328, %327

  store double %329, double* %233, align 1, !tbaa !1267

  %330 = bitcast double %327 to <2 x i32>

  %331 = load <2 x i32>, <2 x i32>* %178, align 1

  %332 = fptrunc double %329 to float

  store float %332, float* %65, align 1, !tbaa !1265

  %333 = extractelement <2 x i32> %330, i32 1

  store i32 %333, i32* %160, align 1, !tbaa !1265

  %334 = extractelement <2 x i32> %331, i32 0

  store i32 %334, i32* %159, align 1, !tbaa !1265

  %335 = extractelement <2 x i32> %331, i32 1

  store i32 %335, i32* %158, align 1, !tbaa !1265

  %336 = load <2 x float>, <2 x float>* %59, align 1

  %337 = extractelement <2 x float> %336, i32 0

  %338 = inttoptr i64 %319 to float*

  store float %337, float* %338

  %339 = inttoptr i64 %319 to float*

  %340 = load float, float* %339

  store float %340, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %341 = load <2 x float>, <2 x float>* %59, align 1

  %342 = load <2 x i32>, <2 x i32>* %178, align 1

  %343 = extractelement <2 x float> %341, i32 0

  %344 = fmul float %343, %340

  store float %344, float* %65, align 1, !tbaa !1265

  %345 = bitcast <2 x float> %341 to <2 x i32>

  %346 = extractelement <2 x i32> %345, i32 1

  store i32 %346, i32* %160, align 1, !tbaa !1265

  %347 = extractelement <2 x i32> %342, i32 0

  store i32 %347, i32* %159, align 1, !tbaa !1265

  %348 = extractelement <2 x i32> %342, i32 1

  store i32 %348, i32* %158, align 1, !tbaa !1265

  %349 = add i64 %318, -32

  %350 = load <2 x float>, <2 x float>* %59, align 1

  %351 = extractelement <2 x float> %350, i32 0

  %352 = inttoptr i64 %349 to float*

  store float %351, float* %352

  %353 = inttoptr i64 %349 to float*

  %354 = load float, float* %353

  store float %354, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %355 = load <2 x float>, <2 x float>* %59, align 1

  %356 = load <2 x i32>, <2 x i32>* %178, align 1

  %357 = inttoptr i64 %319 to float*

  %358 = load float, float* %357

  %359 = extractelement <2 x float> %355, i32 0

  %360 = fmul float %359, %358

  store float %360, float* %65, align 1, !tbaa !1265

  %361 = bitcast <2 x float> %355 to <2 x i32>

  %362 = extractelement <2 x i32> %361, i32 1

  store i32 %362, i32* %160, align 1, !tbaa !1265

  %363 = extractelement <2 x i32> %356, i32 0

  store i32 %363, i32* %159, align 1, !tbaa !1265

  %364 = extractelement <2 x i32> %356, i32 1

  store i32 %364, i32* %158, align 1, !tbaa !1265

  %365 = load i64, i64* %7, align 8

  %366 = add i64 %365, -36

  %367 = load <2 x float>, <2 x float>* %59, align 1

  %368 = extractelement <2 x float> %367, i32 0

  %369 = inttoptr i64 %366 to float*

  store float %368, float* %369

  %370 = inttoptr i64 %366 to float*

  %371 = load float, float* %370

  store float %371, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %372 = add i64 %365, -28

  %373 = load <2 x float>, <2 x float>* %59, align 1

  %374 = load <2 x i32>, <2 x i32>* %178, align 1

  %375 = inttoptr i64 %372 to float*

  %376 = load float, float* %375

  %377 = extractelement <2 x float> %373, i32 0

  %378 = fmul float %377, %376

  store float %378, float* %65, align 1, !tbaa !1265

  %379 = bitcast <2 x float> %373 to <2 x i32>

  %380 = extractelement <2 x i32> %379, i32 1

  store i32 %380, i32* %160, align 1, !tbaa !1265

  %381 = extractelement <2 x i32> %374, i32 0

  store i32 %381, i32* %159, align 1, !tbaa !1265

  %382 = extractelement <2 x i32> %374, i32 1

  store i32 %382, i32* %158, align 1, !tbaa !1265

  %383 = add i64 %365, -40

  %384 = load <2 x float>, <2 x float>* %59, align 1

  %385 = extractelement <2 x float> %384, i32 0

  %386 = inttoptr i64 %383 to float*

  store float %385, float* %386

  %387 = inttoptr i64 %383 to float*

  %388 = load float, float* %387

  store float %388, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %389 = load <2 x float>, <2 x float>* %59, align 1

  %390 = load <2 x i32>, <2 x i32>* %178, align 1

  %391 = inttoptr i64 %372 to float*

  %392 = load float, float* %391

  %393 = extractelement <2 x float> %389, i32 0

  %394 = fmul float %393, %392

  store float %394, float* %65, align 1, !tbaa !1265

  %395 = bitcast <2 x float> %389 to <2 x i32>

  %396 = extractelement <2 x i32> %395, i32 1

  store i32 %396, i32* %160, align 1, !tbaa !1265

  %397 = extractelement <2 x i32> %390, i32 0

  store i32 %397, i32* %159, align 1, !tbaa !1265

  %398 = extractelement <2 x i32> %390, i32 1

  store i32 %398, i32* %158, align 1, !tbaa !1265

  %399 = add i64 %365, -44

  %400 = load <2 x float>, <2 x float>* %59, align 1

  %401 = extractelement <2 x float> %400, i32 0

  %402 = inttoptr i64 %399 to float*

  store float %401, float* %402

  %403 = inttoptr i64 %372 to float*

  %404 = load float, float* %403

  store float %404, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %405 = load <2 x float>, <2 x float>* %59, align 1

  %406 = extractelement <2 x float> %405, i32 0

  %407 = fpext float %406 to double

  %408 = bitcast i64* %68 to <2 x i32>*

  %409 = load <2 x i32>, <2 x i32>* %408, align 1

  %410 = load double, double* %228, align 1

  %411 = fmul double %407, %410

  store double %411, double* %75, align 1, !tbaa !1267

  %412 = bitcast double %411 to <2 x i32>

  %413 = fptrunc double %411 to float

  store float %413, float* %65, align 1, !tbaa !1265

  %414 = extractelement <2 x i32> %412, i32 1

  store i32 %414, i32* %160, align 1, !tbaa !1265

  %415 = extractelement <2 x i32> %409, i32 0

  store i32 %415, i32* %159, align 1, !tbaa !1265

  %416 = extractelement <2 x i32> %409, i32 1

  store i32 %416, i32* %158, align 1, !tbaa !1265

  %417 = add i64 %365, -52

  %418 = load <2 x float>, <2 x float>* %59, align 1

  %419 = extractelement <2 x float> %418, i32 0

  %420 = inttoptr i64 %417 to float*

  store float %419, float* %420

  %421 = add i64 %365, -32

  %422 = inttoptr i64 %421 to float*

  %423 = load float, float* %422

  store float %423, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %424 = load <2 x float>, <2 x float>* %59, align 1

  %425 = extractelement <2 x float> %424, i32 0

  %426 = fpext float %425 to double

  %427 = bitcast i64* %68 to <2 x i32>*

  %428 = load <2 x i32>, <2 x i32>* %427, align 1

  %429 = load double, double* %224, align 1

  %430 = fmul double %426, %429

  store double %430, double* %75, align 1, !tbaa !1267

  %431 = bitcast double %430 to <2 x i32>

  %432 = fptrunc double %430 to float

  store float %432, float* %65, align 1, !tbaa !1265

  %433 = extractelement <2 x i32> %431, i32 1

  store i32 %433, i32* %160, align 1, !tbaa !1265

  %434 = extractelement <2 x i32> %428, i32 0

  store i32 %434, i32* %159, align 1, !tbaa !1265

  %435 = extractelement <2 x i32> %428, i32 1

  store i32 %435, i32* %158, align 1, !tbaa !1265

  %436 = load i64, i64* %7, align 8

  %437 = add i64 %436, -56

  %438 = load <2 x float>, <2 x float>* %59, align 1

  %439 = extractelement <2 x float> %438, i32 0

  %440 = inttoptr i64 %437 to float*

  store float %439, float* %440

  %441 = add i64 %436, -36

  %442 = inttoptr i64 %441 to float*

  %443 = load float, float* %442

  store float %443, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %444 = load <2 x float>, <2 x float>* %59, align 1

  %445 = extractelement <2 x float> %444, i32 0

  %446 = fpext float %445 to double

  %447 = bitcast i64* %68 to <2 x i32>*

  %448 = load <2 x i32>, <2 x i32>* %447, align 1

  %449 = load double, double* %220, align 1

  %450 = fmul double %446, %449

  store double %450, double* %75, align 1, !tbaa !1267

  %451 = bitcast double %450 to <2 x i32>

  %452 = fptrunc double %450 to float

  store float %452, float* %65, align 1, !tbaa !1265

  %453 = extractelement <2 x i32> %451, i32 1

  store i32 %453, i32* %160, align 1, !tbaa !1265

  %454 = extractelement <2 x i32> %448, i32 0

  store i32 %454, i32* %159, align 1, !tbaa !1265

  %455 = extractelement <2 x i32> %448, i32 1

  store i32 %455, i32* %158, align 1, !tbaa !1265

  %456 = add i64 %436, -60

  %457 = load <2 x float>, <2 x float>* %59, align 1

  %458 = extractelement <2 x float> %457, i32 0

  %459 = inttoptr i64 %456 to float*

  store float %458, float* %459

  %460 = inttoptr i64 %437 to float*

  %461 = load float, float* %460

  store float %461, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %462 = load <2 x float>, <2 x float>* %59, align 1

  %463 = load <2 x i32>, <2 x i32>* %178, align 1

  %464 = inttoptr i64 %456 to float*

  %465 = load float, float* %464

  %466 = extractelement <2 x float> %462, i32 0

  %467 = fadd float %466, %465

  store float %467, float* %65, align 1, !tbaa !1265

  %468 = bitcast <2 x float> %462 to <2 x i32>

  %469 = extractelement <2 x i32> %468, i32 1

  store i32 %469, i32* %160, align 1, !tbaa !1265

  %470 = extractelement <2 x i32> %463, i32 0

  store i32 %470, i32* %159, align 1, !tbaa !1265

  %471 = extractelement <2 x i32> %463, i32 1

  store i32 %471, i32* %158, align 1, !tbaa !1265

  %472 = load <2 x float>, <2 x float>* %59, align 1

  %473 = extractelement <2 x float> %472, i32 0

  %474 = inttoptr i64 %437 to float*

  store float %473, float* %474

  %475 = add i64 %436, -40

  %476 = inttoptr i64 %475 to float*

  %477 = load float, float* %476

  store float %477, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %478 = load <2 x float>, <2 x float>* %59, align 1

  %479 = extractelement <2 x float> %478, i32 0

  %480 = fpext float %479 to double

  %481 = bitcast i64* %68 to <2 x i32>*

  %482 = load <2 x i32>, <2 x i32>* %481, align 1

  %483 = load double, double* %216, align 1

  %484 = fmul double %480, %483

  store double %484, double* %75, align 1, !tbaa !1267

  %485 = bitcast double %484 to <2 x i32>

  %486 = fptrunc double %484 to float

  store float %486, float* %65, align 1, !tbaa !1265

  %487 = extractelement <2 x i32> %485, i32 1

  store i32 %487, i32* %160, align 1, !tbaa !1265

  %488 = extractelement <2 x i32> %482, i32 0

  store i32 %488, i32* %159, align 1, !tbaa !1265

  %489 = extractelement <2 x i32> %482, i32 1

  store i32 %489, i32* %158, align 1, !tbaa !1265

  %490 = load i64, i64* %7, align 8

  %491 = add i64 %490, -60

  %492 = load <2 x float>, <2 x float>* %59, align 1

  %493 = extractelement <2 x float> %492, i32 0

  %494 = inttoptr i64 %491 to float*

  store float %493, float* %494

  %495 = add i64 %490, -56

  %496 = inttoptr i64 %495 to float*

  %497 = load float, float* %496

  store float %497, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %498 = load <2 x float>, <2 x float>* %59, align 1

  %499 = load <2 x i32>, <2 x i32>* %178, align 1

  %500 = inttoptr i64 %491 to float*

  %501 = load float, float* %500

  %502 = extractelement <2 x float> %498, i32 0

  %503 = fadd float %502, %501

  store float %503, float* %65, align 1, !tbaa !1265

  %504 = bitcast <2 x float> %498 to <2 x i32>

  %505 = extractelement <2 x i32> %504, i32 1

  store i32 %505, i32* %160, align 1, !tbaa !1265

  %506 = extractelement <2 x i32> %499, i32 0

  store i32 %506, i32* %159, align 1, !tbaa !1265

  %507 = extractelement <2 x i32> %499, i32 1

  store i32 %507, i32* %158, align 1, !tbaa !1265

  %508 = load <2 x float>, <2 x float>* %59, align 1

  %509 = extractelement <2 x float> %508, i32 0

  %510 = inttoptr i64 %495 to float*

  store float %509, float* %510

  %511 = add i64 %490, -44

  %512 = inttoptr i64 %511 to float*

  %513 = load float, float* %512

  store float %513, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %514 = load <2 x float>, <2 x float>* %59, align 1

  %515 = extractelement <2 x float> %514, i32 0

  %516 = fpext float %515 to double

  %517 = bitcast i64* %68 to <2 x i32>*

  %518 = load <2 x i32>, <2 x i32>* %517, align 1

  %519 = load double, double* %212, align 1

  %520 = fmul double %516, %519

  store double %520, double* %75, align 1, !tbaa !1267

  %521 = bitcast double %520 to <2 x i32>

  %522 = fptrunc double %520 to float

  store float %522, float* %65, align 1, !tbaa !1265

  %523 = extractelement <2 x i32> %521, i32 1

  store i32 %523, i32* %160, align 1, !tbaa !1265

  %524 = extractelement <2 x i32> %518, i32 0

  store i32 %524, i32* %159, align 1, !tbaa !1265

  %525 = extractelement <2 x i32> %518, i32 1

  store i32 %525, i32* %158, align 1, !tbaa !1265

  %526 = load <2 x float>, <2 x float>* %59, align 1

  %527 = extractelement <2 x float> %526, i32 0

  %528 = inttoptr i64 %491 to float*

  store float %527, float* %528

  %529 = inttoptr i64 %495 to float*

  %530 = load float, float* %529

  store float %530, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %531 = load <2 x float>, <2 x float>* %59, align 1

  %532 = load <2 x i32>, <2 x i32>* %178, align 1

  %533 = inttoptr i64 %491 to float*

  %534 = load float, float* %533

  %535 = extractelement <2 x float> %531, i32 0

  %536 = fadd float %535, %534

  store float %536, float* %65, align 1, !tbaa !1265

  %537 = bitcast <2 x float> %531 to <2 x i32>

  %538 = extractelement <2 x i32> %537, i32 1

  store i32 %538, i32* %160, align 1, !tbaa !1265

  %539 = extractelement <2 x i32> %532, i32 0

  store i32 %539, i32* %159, align 1, !tbaa !1265

  %540 = extractelement <2 x i32> %532, i32 1

  store i32 %540, i32* %158, align 1, !tbaa !1265

  %541 = load <2 x float>, <2 x float>* %59, align 1

  %542 = extractelement <2 x float> %541, i32 0

  %543 = inttoptr i64 %495 to float*

  store float %542, float* %543

  %544 = inttoptr i64 %495 to float*

  %545 = load float, float* %544

  store float %545, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %546 = load i64, i64* %7, align 8

  %547 = add i64 %546, -52

  %548 = load <2 x float>, <2 x float>* %59, align 1

  %549 = load <2 x i32>, <2 x i32>* %178, align 1

  %550 = inttoptr i64 %547 to float*

  %551 = load float, float* %550

  %552 = extractelement <2 x float> %548, i32 0

  %553 = fadd float %552, %551

  store float %553, float* %65, align 1, !tbaa !1265

  %554 = bitcast <2 x float> %548 to <2 x i32>

  %555 = extractelement <2 x i32> %554, i32 1

  store i32 %555, i32* %160, align 1, !tbaa !1265

  %556 = extractelement <2 x i32> %549, i32 0

  store i32 %556, i32* %159, align 1, !tbaa !1265

  %557 = extractelement <2 x i32> %549, i32 1

  store i32 %557, i32* %158, align 1, !tbaa !1265

  %558 = load <2 x float>, <2 x float>* %59, align 1

  %559 = extractelement <2 x float> %558, i32 0

  %560 = inttoptr i64 %547 to float*

  store float %559, float* %560

  %561 = inttoptr i64 %547 to float*

  %562 = load float, float* %561

  store float %562, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %563 = add i64 %546, -20

  %564 = load <2 x float>, <2 x float>* %59, align 1

  %565 = load <2 x i32>, <2 x i32>* %178, align 1

  %566 = inttoptr i64 %563 to float*

  %567 = load float, float* %566

  %568 = extractelement <2 x float> %564, i32 0

  %569 = fmul float %568, %567

  store float %569, float* %65, align 1, !tbaa !1265

  %570 = bitcast <2 x float> %564 to <2 x i32>

  %571 = extractelement <2 x i32> %570, i32 1

  store i32 %571, i32* %160, align 1, !tbaa !1265

  %572 = extractelement <2 x i32> %565, i32 0

  store i32 %572, i32* %159, align 1, !tbaa !1265

  %573 = extractelement <2 x i32> %565, i32 1

  store i32 %573, i32* %158, align 1, !tbaa !1265

  %574 = add i64 %546, -48

  %575 = load <2 x float>, <2 x float>* %59, align 1

  %576 = extractelement <2 x float> %575, i32 0

  %577 = inttoptr i64 %574 to float*

  store float %576, float* %577

  %578 = inttoptr i64 %574 to float*

  %579 = load float, float* %578

  store float %579, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %580 = load <2 x float>, <2 x float>* %59, align 1

  %581 = extractelement <2 x float> %580, i32 0

  %582 = fpext float %581 to double

  store double %582, double* %75, align 1, !tbaa !1267

  %583 = load double, double* %77, align 1

  %584 = fsub double %583, %582

  store double %584, double* %77, align 1, !tbaa !1267

  %585 = bitcast double %582 to <2 x i32>

  %586 = load <2 x i32>, <2 x i32>* %178, align 1

  %587 = fptrunc double %584 to float

  store float %587, float* %65, align 1, !tbaa !1265

  %588 = extractelement <2 x i32> %585, i32 1

  store i32 %588, i32* %160, align 1, !tbaa !1265

  %589 = extractelement <2 x i32> %586, i32 0

  store i32 %589, i32* %159, align 1, !tbaa !1265

  %590 = extractelement <2 x i32> %586, i32 1

  store i32 %590, i32* %158, align 1, !tbaa !1265

  %591 = load <2 x float>, <2 x float>* %59, align 1

  %592 = extractelement <2 x float> %591, i32 0

  %593 = inttoptr i64 %574 to float*

  store float %592, float* %593

  %594 = inttoptr i64 %574 to float*

  %595 = load float, float* %594

  store float %595, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %596 = add i64 %546, -12

  %597 = load <2 x float>, <2 x float>* %59, align 1

  %598 = extractelement <2 x float> %597, i32 0

  %599 = inttoptr i64 %596 to float*

  store float %598, float* %599

  %600 = add i64 %546, -8

  %601 = inttoptr i64 %600 to i32*

  %602 = load i32, i32* %601

  %603 = icmp eq i32 %602, 0

  br i1 %603, label %block_40095d.block_400b72_crit_edge, label %block_400b54



block_40095d.block_400b72_crit_edge:              ; preds = %block_40095d

  %604 = load i64, i64* %7, align 8

  br label %block_400b72



block_400b72:                                     ; preds = %block_40095d.block_400b72_crit_edge, %block_400b54

  %605 = phi i64 [ %604, %block_40095d.block_400b72_crit_edge ], [ %121, %block_400b54 ]

  %606 = phi %struct.Memory* [ %163, %block_40095d.block_400b72_crit_edge ], [ %163, %block_400b54 ]

  %607 = add i64 %605, -12

  %608 = inttoptr i64 %607 to float*

  %609 = load float, float* %608

  store float %609, float* %65, align 1, !tbaa !1265

  store float 0.000000e+00, float* %67, align 1, !tbaa !1265

  store float 0.000000e+00, float* %69, align 1, !tbaa !1265

  store float 0.000000e+00, float* %71, align 1, !tbaa !1265

  %610 = load i64, i64* %6, align 8

  %611 = add i64 %610, 64

  %612 = icmp ugt i64 %610, -65

  %613 = zext i1 %612 to i8

  store i8 %613, i8* %24, align 1, !tbaa !1244

  %614 = trunc i64 %611 to i32

  %615 = and i32 %614, 255

  %616 = tail call i32 @llvm.ctpop.i32(i32 %615) #11

  %617 = trunc i32 %616 to i8

  %618 = and i8 %617, 1

  %619 = xor i8 %618, 1

  store i8 %619, i8* %31, align 1, !tbaa !1258

  %620 = xor i64 %611, %610

  %621 = lshr i64 %620, 4

  %622 = trunc i64 %621 to i8

  %623 = and i8 %622, 1

  store i8 %623, i8* %36, align 1, !tbaa !1262

  %624 = icmp eq i64 %611, 0

  %625 = zext i1 %624 to i8

  store i8 %625, i8* %39, align 1, !tbaa !1259

  %626 = lshr i64 %611, 63

  %627 = trunc i64 %626 to i8

  store i8 %627, i8* %42, align 1, !tbaa !1260

  %628 = lshr i64 %610, 63

  %629 = xor i64 %626, %628

  %630 = add nuw nsw i64 %629, %626

  %631 = icmp eq i64 %630, 2

  %632 = zext i1 %631 to i8

  store i8 %632, i8* %48, align 1, !tbaa !1261

  %633 = add i64 %610, 72

  %634 = inttoptr i64 %611 to i64*

  %635 = load i64, i64* %634

  store i64 %635, i64* %7, align 8, !tbaa !1240

  %636 = inttoptr i64 %633 to i64*

  %637 = load i64, i64* %636

  store i64 %637, i64* %3, align 8, !tbaa !1240

  %638 = add i64 %610, 80

  store i64 %638, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %606

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401870___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401870:

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

  %47 = add i64 %1, -4456

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400708__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_4018c6, label %block_4018a6



block_4018c6.loopexit:                            ; preds = %block_4018b0

  br label %block_4018c6



block_4018c6:                                     ; preds = %block_4018c6.loopexit, %block_401870

  %57 = phi %struct.Memory* [ %51, %block_401870 ], [ %119, %block_4018c6.loopexit ]

  %58 = load i64, i64* %12, align 8

  %59 = add i64 %58, 8

  %60 = icmp ugt i64 %58, -9

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %41, align 1, !tbaa !1244

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #11

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



block_4018a6:                                     ; preds = %block_401870

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1259

  store i8 0, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  store i8 0, i8* %43, align 1, !tbaa !1262

  %102 = add i64 %56, 10

  br label %block_4018b0



block_4018b0:                                     ; preds = %block_4018b0, %block_4018a6

  %103 = phi i64 [ 0, %block_4018a6 ], [ %122, %block_4018b0 ]

  %104 = phi i64 [ %102, %block_4018a6 ], [ %150, %block_4018b0 ]

  %105 = phi %struct.Memory* [ %51, %block_4018a6 ], [ %119, %block_4018b0 ]

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

  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #11

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

  br i1 %139, label %block_4018c6.loopexit, label %block_4018b0

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400900_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400900:

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

  %12 = tail call %struct.Memory* @sub_400890_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4018e0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4018e0:

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

define %struct.Memory* @sub_400850__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_400850:

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

define %struct.Memory* @sub_400b80_BlkSchlsEqEuroNoDiv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400b80:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %15 = load i64, i64* %8, align 8

  %16 = load i64, i64* %7, align 8, !tbaa !1240

  %17 = add i64 %16, -8

  %18 = inttoptr i64 %17 to i64*

  store i64 %15, i64* %18

  store i64 %17, i64* %8, align 8, !tbaa !1240

  %19 = add i64 %16, -136

  store i64 %19, i64* %7, align 8, !tbaa !1240

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %26 = add i64 %16, -12

  %27 = bitcast [32 x %union.VectorReg]* %9 to i8*

  %28 = bitcast [32 x %union.VectorReg]* %9 to <2 x float>*

  %29 = load <2 x float>, <2 x float>* %28, align 1

  %30 = extractelement <2 x float> %29, i32 0

  %31 = inttoptr i64 %26 to float*

  store float %30, float* %31

  %32 = add i64 %16, -16

  %33 = bitcast %union.VectorReg* %10 to i8*

  %34 = bitcast %union.VectorReg* %10 to <2 x float>*

  %35 = load <2 x float>, <2 x float>* %34, align 1

  %36 = extractelement <2 x float> %35, i32 0

  %37 = inttoptr i64 %32 to float*

  store float %36, float* %37

  %38 = add i64 %16, -20

  %39 = bitcast %union.VectorReg* %11 to i8*

  %40 = bitcast %union.VectorReg* %11 to <2 x float>*

  %41 = load <2 x float>, <2 x float>* %40, align 1

  %42 = extractelement <2 x float> %41, i32 0

  %43 = inttoptr i64 %38 to float*

  store float %42, float* %43

  %44 = add i64 %16, -24

  %45 = bitcast %union.VectorReg* %12 to <2 x float>*

  %46 = load <2 x float>, <2 x float>* %45, align 1

  %47 = extractelement <2 x float> %46, i32 0

  %48 = inttoptr i64 %44 to float*

  store float %47, float* %48

  %49 = add i64 %16, -28

  %50 = bitcast %union.VectorReg* %13 to <2 x float>*

  %51 = load <2 x float>, <2 x float>* %50, align 1

  %52 = extractelement <2 x float> %51, i32 0

  %53 = inttoptr i64 %49 to float*

  store float %52, float* %53

  %54 = add i64 %16, -32

  %55 = load i32, i32* %5, align 4

  %56 = inttoptr i64 %54 to i32*

  store i32 %55, i32* %56

  %57 = add i64 %16, -36

  %58 = bitcast %union.VectorReg* %14 to <2 x float>*

  %59 = load <2 x float>, <2 x float>* %58, align 1

  %60 = extractelement <2 x float> %59, i32 0

  %61 = inttoptr i64 %57 to float*

  store float %60, float* %61

  %62 = inttoptr i64 %26 to float*

  %63 = load float, float* %62

  %64 = bitcast [32 x %union.VectorReg]* %9 to float*

  store float %63, float* %64, align 1, !tbaa !1265

  %65 = getelementptr inbounds i8, i8* %27, i64 4

  %66 = bitcast i8* %65 to float*

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %68 = bitcast i64* %67 to float*

  %69 = getelementptr inbounds i8, i8* %27, i64 12

  %70 = bitcast i8* %69 to float*

  %71 = load i64, i64* %8, align 8

  %72 = add i64 %71, -36

  %73 = load <2 x float>, <2 x float>* %28, align 1

  %74 = extractelement <2 x float> %73, i32 0

  %75 = inttoptr i64 %72 to float*

  store float %74, float* %75

  %76 = add i64 %71, -8

  %77 = inttoptr i64 %76 to float*

  %78 = load float, float* %77

  store float %78, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %79 = add i64 %71, -40

  %80 = load <2 x float>, <2 x float>* %28, align 1

  %81 = extractelement <2 x float> %80, i32 0

  %82 = inttoptr i64 %79 to float*

  store float %81, float* %82

  %83 = add i64 %71, -12

  %84 = inttoptr i64 %83 to float*

  %85 = load float, float* %84

  store float %85, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %86 = add i64 %71, -44

  %87 = load <2 x float>, <2 x float>* %28, align 1

  %88 = extractelement <2 x float> %87, i32 0

  %89 = inttoptr i64 %86 to float*

  store float %88, float* %89

  %90 = add i64 %71, -16

  %91 = inttoptr i64 %90 to float*

  %92 = load float, float* %91

  store float %92, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %93 = add i64 %71, -48

  %94 = load <2 x float>, <2 x float>* %28, align 1

  %95 = extractelement <2 x float> %94, i32 0

  %96 = inttoptr i64 %93 to float*

  store float %95, float* %96

  %97 = add i64 %71, -20

  %98 = inttoptr i64 %97 to float*

  %99 = load float, float* %98

  store float %99, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %100 = add i64 %71, -52

  %101 = load <2 x float>, <2 x float>* %28, align 1

  %102 = extractelement <2 x float> %101, i32 0

  %103 = inttoptr i64 %100 to float*

  store float %102, float* %103

  %104 = inttoptr i64 %100 to float*

  %105 = load float, float* %104

  store float %105, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %106 = load <2 x float>, <2 x float>* %28, align 1

  %107 = extractelement <2 x float> %106, i32 0

  %108 = fpext float %107 to double

  %109 = bitcast [32 x %union.VectorReg]* %9 to double*

  %110 = add i64 %1, 108

  %111 = load i64, i64* %7, align 8, !tbaa !1240

  %112 = add i64 %111, -8

  %113 = inttoptr i64 %112 to i64*

  store i64 %110, i64* %113

  %114 = inttoptr i64 %112 to i64*

  %115 = load i64, i64* %114

  %116 = tail call double @sqrt(double %108) #11

  %117 = bitcast [32 x %union.VectorReg]* %9 to <2 x i32>*

  %118 = bitcast double %116 to <2 x i32>

  %119 = bitcast i64* %67 to <2 x i32>*

  %120 = fptrunc double %116 to float

  store float %120, float* %64, align 1, !tbaa !1265

  %121 = extractelement <2 x i32> %118, i32 1

  %122 = bitcast i8* %65 to i32*

  store i32 %121, i32* %122, align 1, !tbaa !1265

  %123 = bitcast i64* %67 to i32*

  %124 = bitcast i8* %69 to i32*

  %125 = load i64, i64* %8, align 8

  %126 = add i64 %125, -56

  %127 = load <2 x float>, <2 x float>* %28, align 1

  %128 = extractelement <2 x float> %127, i32 0

  %129 = inttoptr i64 %126 to float*

  store float %128, float* %129

  %130 = add i64 %125, -4

  %131 = inttoptr i64 %130 to float*

  %132 = load float, float* %131

  store float %132, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  store float 0.000000e+00, float* %68, align 1, !tbaa !1265

  store float 0.000000e+00, float* %70, align 1, !tbaa !1265

  %133 = add i64 %125, -8

  %134 = load <2 x float>, <2 x float>* %28, align 1

  %135 = load <2 x i32>, <2 x i32>* %119, align 1

  %136 = inttoptr i64 %133 to float*

  %137 = load float, float* %136

  %138 = extractelement <2 x float> %134, i32 0

  %139 = fdiv float %138, %137

  store float %139, float* %64, align 1, !tbaa !1265

  %140 = bitcast <2 x float> %134 to <2 x i32>

  %141 = extractelement <2 x i32> %140, i32 1

  store i32 %141, i32* %122, align 1, !tbaa !1265

  %142 = extractelement <2 x i32> %135, i32 0

  store i32 %142, i32* %123, align 1, !tbaa !1265

  %143 = extractelement <2 x i32> %135, i32 1

  store i32 %143, i32* %124, align 1, !tbaa !1265

  %144 = load <2 x float>, <2 x float>* %28, align 1

  %145 = extractelement <2 x float> %144, i32 0

  %146 = fpext float %145 to double

  store double %146, double* %109, align 1, !tbaa !1267

  %147 = add i64 %115, 28

  %148 = inttoptr i64 %112 to i64*

  store i64 %147, i64* %148

  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %151 = load i64, i64* %150, align 8, !alias.scope !1274, !noalias !1277

  %152 = inttoptr i64 %112 to i64*

  %153 = load i64, i64* %152

  store i64 %153, i64* %3, align 8, !alias.scope !1274, !noalias !1277

  store i64 %111, i64* %7, align 8, !alias.scope !1274, !noalias !1277

  %154 = tail call i64 @log(i64 %151), !noalias !1274

  store i64 %154, i64* %149, align 8, !alias.scope !1274, !noalias !1277

  %155 = load i64, i64* %3, align 8

  %156 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 72) to double*)

  %157 = bitcast %union.VectorReg* %10 to double*

  store double %156, double* %157, align 1, !tbaa !1267

  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %159 = bitcast i64* %158 to double*

  store double 0.000000e+00, double* %159, align 1, !tbaa !1267

  %160 = load <2 x i32>, <2 x i32>* %117, align 1

  %161 = bitcast <2 x i32> %160 to double

  %162 = fptrunc double %161 to float

  store float %162, float* %64, align 1, !tbaa !1265

  %163 = extractelement <2 x i32> %160, i32 1

  store i32 %163, i32* %122, align 1, !tbaa !1265

  %164 = load i64, i64* %8, align 8

  %165 = add i64 %164, -60

  %166 = load <2 x float>, <2 x float>* %28, align 1

  %167 = extractelement <2 x float> %166, i32 0

  %168 = inttoptr i64 %165 to float*

  store float %167, float* %168

  %169 = inttoptr i64 %165 to float*

  %170 = load float, float* %169

  store float %170, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %171 = add i64 %164, -64

  %172 = load <2 x float>, <2 x float>* %28, align 1

  %173 = extractelement <2 x float> %172, i32 0

  %174 = inttoptr i64 %171 to float*

  store float %173, float* %174

  %175 = add i64 %164, -48

  %176 = inttoptr i64 %175 to float*

  %177 = load float, float* %176

  store float %177, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %178 = load <2 x float>, <2 x float>* %28, align 1

  %179 = extractelement <2 x float> %178, i32 0

  %180 = fmul float %179, %177

  store float %180, float* %64, align 1, !tbaa !1265

  %181 = bitcast <2 x float> %178 to <2 x i32>

  %182 = extractelement <2 x i32> %181, i32 1

  store i32 %182, i32* %122, align 1, !tbaa !1265

  %183 = add i64 %164, -76

  %184 = load <2 x float>, <2 x float>* %28, align 1

  %185 = extractelement <2 x float> %184, i32 0

  %186 = inttoptr i64 %183 to float*

  store float %185, float* %186

  %187 = inttoptr i64 %183 to float*

  %188 = load float, float* %187

  store float %188, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %189 = load <2 x float>, <2 x float>* %28, align 1

  %190 = extractelement <2 x float> %189, i32 0

  %191 = fpext float %190 to double

  %192 = fmul double %191, %156

  %193 = bitcast double %192 to <2 x i32>

  %194 = fptrunc double %192 to float

  store float %194, float* %64, align 1, !tbaa !1265

  %195 = extractelement <2 x i32> %193, i32 1

  store i32 %195, i32* %122, align 1, !tbaa !1265

  %196 = load <2 x float>, <2 x float>* %28, align 1

  %197 = extractelement <2 x float> %196, i32 0

  %198 = inttoptr i64 %183 to float*

  store float %197, float* %198

  %199 = add i64 %164, -44

  %200 = inttoptr i64 %199 to float*

  %201 = load float, float* %200

  store float %201, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %202 = load <2 x float>, <2 x float>* %28, align 1

  %203 = inttoptr i64 %183 to float*

  %204 = load float, float* %203

  %205 = extractelement <2 x float> %202, i32 0

  %206 = fadd float %205, %204

  store float %206, float* %64, align 1, !tbaa !1265

  %207 = bitcast <2 x float> %202 to <2 x i32>

  %208 = extractelement <2 x i32> %207, i32 1

  store i32 %208, i32* %122, align 1, !tbaa !1265

  %209 = load i64, i64* %8, align 8

  %210 = add i64 %209, -68

  %211 = load <2 x float>, <2 x float>* %28, align 1

  %212 = extractelement <2 x float> %211, i32 0

  %213 = inttoptr i64 %210 to float*

  store float %212, float* %213

  %214 = inttoptr i64 %210 to float*

  %215 = load float, float* %214

  store float %215, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %216 = add i64 %209, -52

  %217 = load <2 x float>, <2 x float>* %28, align 1

  %218 = inttoptr i64 %216 to float*

  %219 = load float, float* %218

  %220 = extractelement <2 x float> %217, i32 0

  %221 = fmul float %220, %219

  store float %221, float* %64, align 1, !tbaa !1265

  %222 = bitcast <2 x float> %217 to <2 x i32>

  %223 = extractelement <2 x i32> %222, i32 1

  store i32 %223, i32* %122, align 1, !tbaa !1265

  %224 = load <2 x float>, <2 x float>* %28, align 1

  %225 = extractelement <2 x float> %224, i32 0

  %226 = inttoptr i64 %210 to float*

  store float %225, float* %226

  %227 = inttoptr i64 %210 to float*

  %228 = load float, float* %227

  store float %228, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %229 = add i64 %209, -64

  %230 = load <2 x float>, <2 x float>* %28, align 1

  %231 = inttoptr i64 %229 to float*

  %232 = load float, float* %231

  %233 = extractelement <2 x float> %230, i32 0

  %234 = fadd float %233, %232

  store float %234, float* %64, align 1, !tbaa !1265

  %235 = bitcast <2 x float> %230 to <2 x i32>

  %236 = extractelement <2 x i32> %235, i32 1

  store i32 %236, i32* %122, align 1, !tbaa !1265

  %237 = load <2 x float>, <2 x float>* %28, align 1

  %238 = extractelement <2 x float> %237, i32 0

  %239 = inttoptr i64 %210 to float*

  store float %238, float* %239

  %240 = add i64 %209, -48

  %241 = inttoptr i64 %240 to float*

  %242 = load float, float* %241

  store float %242, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %243 = add i64 %209, -56

  %244 = load <2 x float>, <2 x float>* %28, align 1

  %245 = inttoptr i64 %243 to float*

  %246 = load float, float* %245

  %247 = extractelement <2 x float> %244, i32 0

  %248 = fmul float %247, %246

  store float %248, float* %64, align 1, !tbaa !1265

  %249 = bitcast <2 x float> %244 to <2 x i32>

  %250 = extractelement <2 x i32> %249, i32 1

  store i32 %250, i32* %122, align 1, !tbaa !1265

  %251 = add i64 %209, -80

  %252 = load <2 x float>, <2 x float>* %28, align 1

  %253 = extractelement <2 x float> %252, i32 0

  %254 = inttoptr i64 %251 to float*

  store float %253, float* %254

  %255 = inttoptr i64 %210 to float*

  %256 = load float, float* %255

  store float %256, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %257 = load i64, i64* %8, align 8

  %258 = add i64 %257, -80

  %259 = load <2 x float>, <2 x float>* %28, align 1

  %260 = inttoptr i64 %258 to float*

  %261 = load float, float* %260

  %262 = extractelement <2 x float> %259, i32 0

  %263 = fdiv float %262, %261

  store float %263, float* %64, align 1, !tbaa !1265

  %264 = bitcast <2 x float> %259 to <2 x i32>

  %265 = extractelement <2 x i32> %264, i32 1

  store i32 %265, i32* %122, align 1, !tbaa !1265

  %266 = add i64 %257, -68

  %267 = load <2 x float>, <2 x float>* %28, align 1

  %268 = extractelement <2 x float> %267, i32 0

  %269 = inttoptr i64 %266 to float*

  store float %268, float* %269

  %270 = inttoptr i64 %266 to float*

  %271 = load float, float* %270

  store float %271, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %272 = load <2 x float>, <2 x float>* %28, align 1

  %273 = inttoptr i64 %258 to float*

  %274 = load float, float* %273

  %275 = extractelement <2 x float> %272, i32 0

  %276 = fsub float %275, %274

  store float %276, float* %64, align 1, !tbaa !1265

  %277 = bitcast <2 x float> %272 to <2 x i32>

  %278 = extractelement <2 x i32> %277, i32 1

  store i32 %278, i32* %122, align 1, !tbaa !1265

  %279 = add i64 %257, -72

  %280 = load <2 x float>, <2 x float>* %28, align 1

  %281 = extractelement <2 x float> %280, i32 0

  %282 = inttoptr i64 %279 to float*

  store float %281, float* %282

  %283 = inttoptr i64 %266 to float*

  %284 = load float, float* %283

  store float %284, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %285 = add i64 %257, -84

  %286 = load <2 x float>, <2 x float>* %28, align 1

  %287 = extractelement <2 x float> %286, i32 0

  %288 = inttoptr i64 %285 to float*

  store float %287, float* %288

  %289 = inttoptr i64 %279 to float*

  %290 = load float, float* %289

  store float %290, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %291 = add i64 %257, -88

  %292 = load <2 x float>, <2 x float>* %28, align 1

  %293 = extractelement <2 x float> %292, i32 0

  %294 = inttoptr i64 %291 to float*

  store float %293, float* %294

  %295 = inttoptr i64 %285 to float*

  %296 = load float, float* %295

  store float %296, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  store float 0.000000e+00, float* %68, align 1, !tbaa !1265

  store float 0.000000e+00, float* %70, align 1, !tbaa !1265

  %297 = add i64 %155, -760

  %298 = add i64 %155, 184

  %299 = load i64, i64* %7, align 8, !tbaa !1240

  %300 = add i64 %299, -8

  %301 = inttoptr i64 %300 to i64*

  store i64 %298, i64* %301

  store i64 %300, i64* %7, align 8, !tbaa !1240

  %302 = tail call %struct.Memory* @sub_400910_CNDF(%struct.State* nonnull %0, i64 %297, %struct.Memory* %2)

  %303 = load i64, i64* %8, align 8

  %304 = add i64 %303, -96

  %305 = load i64, i64* %3, align 8

  %306 = load <2 x float>, <2 x float>* %28, align 1

  %307 = extractelement <2 x float> %306, i32 0

  %308 = inttoptr i64 %304 to float*

  store float %307, float* %308

  %309 = add i64 %303, -88

  %310 = inttoptr i64 %309 to float*

  %311 = load float, float* %310

  store float %311, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  store float 0.000000e+00, float* %68, align 1, !tbaa !1265

  store float 0.000000e+00, float* %70, align 1, !tbaa !1265

  %312 = add i64 %305, -944

  %313 = add i64 %305, 15

  %314 = load i64, i64* %7, align 8, !tbaa !1240

  %315 = add i64 %314, -8

  %316 = inttoptr i64 %315 to i64*

  store i64 %313, i64* %316

  store i64 %315, i64* %7, align 8, !tbaa !1240

  %317 = tail call %struct.Memory* @sub_400910_CNDF(%struct.State* nonnull %0, i64 %312, %struct.Memory* %302)

  %318 = load i64, i64* %8, align 8

  %319 = add i64 %318, -100

  %320 = load i64, i64* %3, align 8

  %321 = load <2 x float>, <2 x float>* %28, align 1

  %322 = extractelement <2 x float> %321, i32 0

  %323 = inttoptr i64 %319 to float*

  store float %322, float* %323

  %324 = add i64 %318, -8

  %325 = inttoptr i64 %324 to float*

  %326 = load float, float* %325

  store float %326, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  %327 = load <2 x float>, <2 x float>* %28, align 1

  %328 = extractelement <2 x float> %327, i32 0

  %329 = fpext float %328 to double

  %330 = add i64 %318, -12

  %331 = inttoptr i64 %330 to float*

  %332 = load float, float* %331

  %333 = bitcast %union.VectorReg* %10 to float*

  store float %332, float* %333, align 1, !tbaa !1265

  %334 = getelementptr inbounds i8, i8* %33, i64 4

  %335 = bitcast i8* %334 to float*

  store float 0.000000e+00, float* %335, align 1, !tbaa !1265

  %336 = bitcast i64* %158 to float*

  %337 = getelementptr inbounds i8, i8* %33, i64 12

  %338 = bitcast i8* %337 to float*

  %339 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0

  %340 = load i64, i64* %339, align 1

  %341 = trunc i64 %340 to i32

  %342 = bitcast %union.anon* %4 to [2 x i32]*

  store i32 %341, i32* %5, align 1, !tbaa !1264

  %343 = getelementptr inbounds [2 x i32], [2 x i32]* %342, i64 0, i64 1

  store i32 0, i32* %343, align 1, !tbaa !1264

  %344 = load i64, i64* %6, align 8

  %345 = xor i64 %344, -2147483648

  %346 = and i64 %345, 4294967295

  store i64 %346, i64* %6, align 8, !tbaa !1240

  %347 = trunc i64 %345 to i32

  %348 = bitcast %union.VectorReg* %10 to i32*

  store i32 %347, i32* %348, align 1, !tbaa !1264

  %349 = bitcast i8* %334 to i32*

  store i32 0, i32* %349, align 1, !tbaa !1264

  %350 = bitcast i64* %158 to i32*

  store i32 0, i32* %350, align 1, !tbaa !1264

  %351 = bitcast i8* %337 to i32*

  store i32 0, i32* %351, align 1, !tbaa !1264

  %352 = add i64 %318, -20

  %353 = load <2 x float>, <2 x float>* %34, align 1

  %354 = bitcast i64* %158 to <2 x i32>*

  %355 = load <2 x i32>, <2 x i32>* %354, align 1

  %356 = inttoptr i64 %352 to float*

  %357 = load float, float* %356

  %358 = extractelement <2 x float> %353, i32 0

  %359 = fmul float %358, %357

  store float %359, float* %333, align 1, !tbaa !1265

  %360 = bitcast <2 x float> %353 to <2 x i32>

  %361 = extractelement <2 x i32> %360, i32 1

  store i32 %361, i32* %349, align 1, !tbaa !1265

  %362 = extractelement <2 x i32> %355, i32 0

  store i32 %362, i32* %350, align 1, !tbaa !1265

  %363 = extractelement <2 x i32> %355, i32 1

  store i32 %363, i32* %351, align 1, !tbaa !1265

  %364 = load <2 x float>, <2 x float>* %34, align 1

  %365 = extractelement <2 x float> %364, i32 0

  %366 = fpext float %365 to double

  store double %366, double* %157, align 1, !tbaa !1267

  %367 = load i64, i64* %8, align 8

  %368 = add i64 %367, -120

  %369 = inttoptr i64 %368 to double*

  store double %329, double* %369

  %370 = bitcast double %366 to <2 x i32>

  %371 = load <2 x i32>, <2 x i32>* %354, align 1

  %372 = extractelement <2 x i32> %370, i32 0

  %373 = bitcast [32 x %union.VectorReg]* %9 to i32*

  store i32 %372, i32* %373, align 1, !tbaa !1265

  %374 = extractelement <2 x i32> %370, i32 1

  store i32 %374, i32* %122, align 1, !tbaa !1265

  %375 = extractelement <2 x i32> %371, i32 0

  store i32 %375, i32* %123, align 1, !tbaa !1265

  %376 = extractelement <2 x i32> %371, i32 1

  store i32 %376, i32* %124, align 1, !tbaa !1265

  %377 = add i64 %320, 55

  %378 = load i64, i64* %7, align 8, !tbaa !1240

  %379 = add i64 %378, -8

  %380 = inttoptr i64 %379 to i64*

  store i64 %377, i64* %380

  %381 = inttoptr i64 %379 to i64*

  %382 = load i64, i64* %381

  store i64 %382, i64* %3, align 8, !alias.scope !1279, !noalias !1282

  store i64 %378, i64* %7, align 8, !alias.scope !1279, !noalias !1282

  %383 = tail call i64 @exp(i64 %346), !noalias !1279

  store i64 %383, i64* %149, align 8, !alias.scope !1279, !noalias !1282

  %384 = load i64, i64* %8, align 8

  %385 = add i64 %384, -120

  %386 = inttoptr i64 %385 to double*

  %387 = load double, double* %386

  %388 = load double, double* %109, align 1

  %389 = fmul double %387, %388

  store double %389, double* %157, align 1, !tbaa !1267

  store i64 0, i64* %158, align 1, !tbaa !1267

  %390 = bitcast double %388 to <2 x i32>

  %391 = load <2 x i32>, <2 x i32>* %119, align 1

  %392 = fptrunc double %389 to float

  store float %392, float* %64, align 1, !tbaa !1265

  %393 = extractelement <2 x i32> %390, i32 1

  store i32 %393, i32* %122, align 1, !tbaa !1265

  %394 = extractelement <2 x i32> %391, i32 0

  store i32 %394, i32* %123, align 1, !tbaa !1265

  %395 = extractelement <2 x i32> %391, i32 1

  store i32 %395, i32* %124, align 1, !tbaa !1265

  %396 = add i64 %384, -92

  %397 = load <2 x float>, <2 x float>* %28, align 1

  %398 = extractelement <2 x float> %397, i32 0

  %399 = inttoptr i64 %396 to float*

  store float %398, float* %399

  %400 = add i64 %384, -24

  %401 = inttoptr i64 %400 to i32*

  %402 = load i32, i32* %401

  %403 = icmp eq i32 %402, 0

  br i1 %403, label %block_400d22, label %block_400d44



block_400d22:                                     ; preds = %block_400b80

  %404 = add i64 %384, -4

  %405 = inttoptr i64 %404 to float*

  %406 = load float, float* %405

  store float %406, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  store float 0.000000e+00, float* %68, align 1, !tbaa !1265

  store float 0.000000e+00, float* %70, align 1, !tbaa !1265

  %407 = add i64 %384, -96

  %408 = load <2 x float>, <2 x float>* %28, align 1

  %409 = load <2 x i32>, <2 x i32>* %119, align 1

  %410 = inttoptr i64 %407 to float*

  %411 = load float, float* %410

  %412 = extractelement <2 x float> %408, i32 0

  %413 = fmul float %412, %411

  store float %413, float* %64, align 1, !tbaa !1265

  %414 = bitcast <2 x float> %408 to <2 x i32>

  %415 = extractelement <2 x i32> %414, i32 1

  store i32 %415, i32* %122, align 1, !tbaa !1265

  %416 = extractelement <2 x i32> %409, i32 0

  store i32 %416, i32* %123, align 1, !tbaa !1265

  %417 = extractelement <2 x i32> %409, i32 1

  store i32 %417, i32* %124, align 1, !tbaa !1265

  %418 = inttoptr i64 %396 to float*

  %419 = load float, float* %418

  store float %419, float* %333, align 1, !tbaa !1265

  store float 0.000000e+00, float* %335, align 1, !tbaa !1265

  store float 0.000000e+00, float* %336, align 1, !tbaa !1265

  store float 0.000000e+00, float* %338, align 1, !tbaa !1265

  %420 = add i64 %384, -100

  %421 = load <2 x float>, <2 x float>* %34, align 1

  %422 = load <2 x i32>, <2 x i32>* %354, align 1

  %423 = inttoptr i64 %420 to float*

  %424 = load float, float* %423

  %425 = extractelement <2 x float> %421, i32 0

  %426 = fmul float %425, %424

  store float %426, float* %333, align 1, !tbaa !1265

  %427 = bitcast <2 x float> %421 to <2 x i32>

  %428 = extractelement <2 x i32> %427, i32 1

  store i32 %428, i32* %349, align 1, !tbaa !1265

  %429 = extractelement <2 x i32> %422, i32 0

  store i32 %429, i32* %350, align 1, !tbaa !1265

  %430 = extractelement <2 x i32> %422, i32 1

  store i32 %430, i32* %351, align 1, !tbaa !1265

  %431 = load <2 x float>, <2 x float>* %28, align 1

  %432 = load <2 x i32>, <2 x i32>* %119, align 1

  %433 = load <2 x float>, <2 x float>* %34, align 1

  %434 = extractelement <2 x float> %431, i32 0

  %435 = extractelement <2 x float> %433, i32 0

  %436 = fsub float %434, %435

  store float %436, float* %64, align 1, !tbaa !1265

  %437 = bitcast <2 x float> %431 to <2 x i32>

  %438 = extractelement <2 x i32> %437, i32 1

  store i32 %438, i32* %122, align 1, !tbaa !1265

  %439 = extractelement <2 x i32> %432, i32 0

  store i32 %439, i32* %123, align 1, !tbaa !1265

  %440 = extractelement <2 x i32> %432, i32 1

  store i32 %440, i32* %124, align 1, !tbaa !1265

  %441 = add i64 %384, -32

  %442 = load <2 x float>, <2 x float>* %28, align 1

  %443 = extractelement <2 x float> %442, i32 0

  %444 = inttoptr i64 %441 to float*

  store float %443, float* %444

  br label %block_400d98



block_400d44:                                     ; preds = %block_400b80

  %445 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 8) to double*)

  %446 = add i64 %384, -96

  %447 = inttoptr i64 %446 to float*

  %448 = load float, float* %447

  store float %448, float* %333, align 1, !tbaa !1265

  store float 0.000000e+00, float* %335, align 1, !tbaa !1265

  %449 = load <2 x float>, <2 x float>* %34, align 1

  %450 = extractelement <2 x float> %449, i32 0

  %451 = fpext float %450 to double

  %452 = bitcast double %445 to <2 x i32>

  %453 = extractelement <2 x i32> %452, i32 0

  %454 = bitcast %union.VectorReg* %11 to i32*

  store i32 %453, i32* %454, align 1, !tbaa !1265

  %455 = extractelement <2 x i32> %452, i32 1

  %456 = getelementptr inbounds i8, i8* %39, i64 4

  %457 = bitcast i8* %456 to i32*

  store i32 %455, i32* %457, align 1, !tbaa !1265

  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %459 = bitcast i64* %458 to i32*

  store i32 0, i32* %459, align 1, !tbaa !1265

  %460 = getelementptr inbounds i8, i8* %39, i64 12

  %461 = bitcast i8* %460 to i32*

  store i32 0, i32* %461, align 1, !tbaa !1265

  %462 = bitcast %union.VectorReg* %11 to double*

  %463 = load double, double* %462, align 1

  %464 = fsub double %463, %451

  store double %464, double* %462, align 1, !tbaa !1267

  %465 = bitcast double %451 to <2 x i32>

  %466 = fptrunc double %464 to float

  store float %466, float* %333, align 1, !tbaa !1265

  %467 = extractelement <2 x i32> %465, i32 1

  store i32 %467, i32* %349, align 1, !tbaa !1265

  %468 = add i64 %384, -104

  %469 = load <2 x float>, <2 x float>* %34, align 1

  %470 = extractelement <2 x float> %469, i32 0

  %471 = inttoptr i64 %468 to float*

  store float %470, float* %471

  %472 = add i64 %384, -100

  %473 = inttoptr i64 %472 to float*

  %474 = load float, float* %473

  store float %474, float* %333, align 1, !tbaa !1265

  store float 0.000000e+00, float* %335, align 1, !tbaa !1265

  %475 = load <2 x float>, <2 x float>* %34, align 1

  %476 = extractelement <2 x float> %475, i32 0

  %477 = fpext float %476 to double

  %478 = fsub double %445, %477

  %479 = bitcast double %478 to <2 x i32>

  %480 = fptrunc double %478 to float

  store float %480, float* %64, align 1, !tbaa !1265

  %481 = extractelement <2 x i32> %479, i32 1

  store i32 %481, i32* %122, align 1, !tbaa !1265

  %482 = add i64 %384, -108

  %483 = load <2 x float>, <2 x float>* %28, align 1

  %484 = extractelement <2 x float> %483, i32 0

  %485 = inttoptr i64 %482 to float*

  store float %484, float* %485

  %486 = inttoptr i64 %396 to float*

  %487 = load float, float* %486

  store float %487, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  store float 0.000000e+00, float* %68, align 1, !tbaa !1265

  store float 0.000000e+00, float* %70, align 1, !tbaa !1265

  %488 = load i64, i64* %8, align 8

  %489 = add i64 %488, -108

  %490 = load <2 x float>, <2 x float>* %28, align 1

  %491 = load <2 x i32>, <2 x i32>* %119, align 1

  %492 = inttoptr i64 %489 to float*

  %493 = load float, float* %492

  %494 = extractelement <2 x float> %490, i32 0

  %495 = fmul float %494, %493

  store float %495, float* %64, align 1, !tbaa !1265

  %496 = bitcast <2 x float> %490 to <2 x i32>

  %497 = extractelement <2 x i32> %496, i32 1

  store i32 %497, i32* %122, align 1, !tbaa !1265

  %498 = extractelement <2 x i32> %491, i32 0

  store i32 %498, i32* %123, align 1, !tbaa !1265

  %499 = extractelement <2 x i32> %491, i32 1

  store i32 %499, i32* %124, align 1, !tbaa !1265

  %500 = add i64 %488, -4

  %501 = inttoptr i64 %500 to float*

  %502 = load float, float* %501

  store float %502, float* %333, align 1, !tbaa !1265

  store float 0.000000e+00, float* %335, align 1, !tbaa !1265

  store float 0.000000e+00, float* %336, align 1, !tbaa !1265

  store float 0.000000e+00, float* %338, align 1, !tbaa !1265

  %503 = add i64 %488, -104

  %504 = load <2 x float>, <2 x float>* %34, align 1

  %505 = load <2 x i32>, <2 x i32>* %354, align 1

  %506 = inttoptr i64 %503 to float*

  %507 = load float, float* %506

  %508 = extractelement <2 x float> %504, i32 0

  %509 = fmul float %508, %507

  store float %509, float* %333, align 1, !tbaa !1265

  %510 = bitcast <2 x float> %504 to <2 x i32>

  %511 = extractelement <2 x i32> %510, i32 1

  store i32 %511, i32* %349, align 1, !tbaa !1265

  %512 = extractelement <2 x i32> %505, i32 0

  store i32 %512, i32* %350, align 1, !tbaa !1265

  %513 = extractelement <2 x i32> %505, i32 1

  store i32 %513, i32* %351, align 1, !tbaa !1265

  %514 = load <2 x float>, <2 x float>* %28, align 1

  %515 = load <2 x i32>, <2 x i32>* %119, align 1

  %516 = load <2 x float>, <2 x float>* %34, align 1

  %517 = extractelement <2 x float> %514, i32 0

  %518 = extractelement <2 x float> %516, i32 0

  %519 = fsub float %517, %518

  store float %519, float* %64, align 1, !tbaa !1265

  %520 = bitcast <2 x float> %514 to <2 x i32>

  %521 = extractelement <2 x i32> %520, i32 1

  store i32 %521, i32* %122, align 1, !tbaa !1265

  %522 = extractelement <2 x i32> %515, i32 0

  store i32 %522, i32* %123, align 1, !tbaa !1265

  %523 = extractelement <2 x i32> %515, i32 1

  store i32 %523, i32* %124, align 1, !tbaa !1265

  %524 = add i64 %488, -32

  %525 = load <2 x float>, <2 x float>* %28, align 1

  %526 = extractelement <2 x float> %525, i32 0

  %527 = inttoptr i64 %524 to float*

  store float %526, float* %527

  br label %block_400d98



block_400d98:                                     ; preds = %block_400d44, %block_400d22

  %528 = phi i64 [ %488, %block_400d44 ], [ %384, %block_400d22 ]

  %529 = phi %struct.Memory* [ %317, %block_400d44 ], [ %317, %block_400d22 ]

  %530 = add i64 %528, -32

  %531 = inttoptr i64 %530 to float*

  %532 = load float, float* %531

  store float %532, float* %64, align 1, !tbaa !1265

  store float 0.000000e+00, float* %66, align 1, !tbaa !1265

  store float 0.000000e+00, float* %68, align 1, !tbaa !1265

  store float 0.000000e+00, float* %70, align 1, !tbaa !1265

  %533 = load i64, i64* %7, align 8

  %534 = add i64 %533, 128

  %535 = icmp ugt i64 %533, -129

  %536 = zext i1 %535 to i8

  store i8 %536, i8* %20, align 1, !tbaa !1244

  %537 = trunc i64 %534 to i32

  %538 = and i32 %537, 255

  %539 = tail call i32 @llvm.ctpop.i32(i32 %538) #11

  %540 = trunc i32 %539 to i8

  %541 = and i8 %540, 1

  %542 = xor i8 %541, 1

  store i8 %542, i8* %21, align 1, !tbaa !1258

  %543 = xor i64 %534, %533

  %544 = lshr i64 %543, 4

  %545 = trunc i64 %544 to i8

  %546 = and i8 %545, 1

  store i8 %546, i8* %22, align 1, !tbaa !1262

  %547 = icmp eq i64 %534, 0

  %548 = zext i1 %547 to i8

  store i8 %548, i8* %23, align 1, !tbaa !1259

  %549 = lshr i64 %534, 63

  %550 = trunc i64 %549 to i8

  store i8 %550, i8* %24, align 1, !tbaa !1260

  %551 = lshr i64 %533, 63

  %552 = xor i64 %549, %551

  %553 = add nuw nsw i64 %552, %549

  %554 = icmp eq i64 %553, 2

  %555 = zext i1 %554 to i8

  store i8 %555, i8* %25, align 1, !tbaa !1261

  %556 = add i64 %533, 136

  %557 = inttoptr i64 %534 to i64*

  %558 = load i64, i64* %557

  store i64 %558, i64* %8, align 8, !tbaa !1240

  %559 = inttoptr i64 %556 to i64*

  %560 = load i64, i64* %559

  store i64 %560, i64* %3, align 8, !tbaa !1240

  %561 = add i64 %533, 144

  store i64 %561, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %529

}



; Function Attrs: noinline

define %struct.Memory* @sub_400820__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400820:

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

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11

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

  store i64 ptrtoint (i64 ()* @callback_sub_4018e0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401870___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  store i64 %38, i64* %9, align 8, !alias.scope !1284, !noalias !1287

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401870___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_4018e0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1284

  store i64 %50, i64* %4, align 8, !alias.scope !1284, !noalias !1287

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4018e4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4018e4:

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

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11

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



; Function Attrs: noinline

define %struct.Memory* @sub_400ee0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400ee0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %13 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %24 = load i64, i64* %15, align 8

  %25 = load i64, i64* %14, align 8, !tbaa !1240

  %26 = add i64 %25, -8

  %27 = inttoptr i64 %26 to i64*

  store i64 %24, i64* %27

  store i64 %26, i64* %15, align 8, !tbaa !1240

  %28 = load i64, i64* %22, align 8

  %29 = add i64 %25, -16

  %30 = inttoptr i64 %29 to i64*

  store i64 %28, i64* %30

  %31 = load i64, i64* %21, align 8

  %32 = add i64 %25, -24

  %33 = inttoptr i64 %32 to i64*

  store i64 %31, i64* %33

  %34 = load i64, i64* %20, align 8

  %35 = add i64 %25, -32

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = load i64, i64* %9, align 8

  %38 = add i64 %25, -40

  %39 = inttoptr i64 %38 to i64*

  store i64 %37, i64* %39

  %40 = add i64 %25, -360

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %44 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %47 = add i64 %25, -112

  store i64 0, i64* %10, align 8, !tbaa !1240

  store i64 0, i64* %11, align 8, !tbaa !1240

  %48 = add i64 %25, -44

  %49 = inttoptr i64 %48 to i32*

  store i32 0, i32* %49

  %50 = add i64 %25, -48

  %51 = load i32, i32* %7, align 4

  %52 = inttoptr i64 %50 to i32*

  store i32 %51, i32* %52

  %53 = load i64, i64* %15, align 8

  %54 = add i64 %53, -48

  %55 = load i64, i64* %12, align 8

  %56 = inttoptr i64 %54 to i64*

  store i64 %55, i64* %56

  store i64 0, i64* %12, align 8, !tbaa !1240

  %57 = add i64 %1, 51

  %58 = add i64 %25, -368

  %59 = inttoptr i64 %58 to i64*

  store i64 %57, i64* %59

  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %63 = inttoptr i64 %58 to i64*

  %64 = load i64, i64* %63

  store i64 %64, i64* %3, align 8, !alias.scope !1289, !noalias !1292

  store i64 %40, i64* %14, align 8, !alias.scope !1289, !noalias !1292

  %65 = tail call i64 @gettimeofday(i64 %47, i64 0), !noalias !1289

  %66 = load i64, i64* %3, align 8

  %67 = load i64, i64* %15, align 8

  %68 = add i64 %67, -144

  %69 = trunc i64 %65 to i32

  %70 = inttoptr i64 %68 to i32*

  store i32 %69, i32* %70

  %71 = add i64 %66, 23

  %72 = load i64, i64* %14, align 8, !tbaa !1240

  %73 = add i64 %72, -8

  %74 = inttoptr i64 %73 to i64*

  store i64 %71, i64* %74

  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %77 = load i64, i64* %61, align 8, !alias.scope !1294, !noalias !1297

  %78 = load i64, i64* %11, align 8, !alias.scope !1294, !noalias !1297

  %79 = load i64, i64* %75, align 8, !alias.scope !1294, !noalias !1297

  %80 = load i64, i64* %76, align 8, !alias.scope !1294, !noalias !1297

  %81 = load i64, i64* %17, align 8, !alias.scope !1294, !noalias !1297

  %82 = inttoptr i64 %72 to i64*

  %83 = load i64, i64* %82

  %84 = add i64 %72, 8

  %85 = inttoptr i64 %84 to i64*

  %86 = load i64, i64* %85

  %87 = add i64 %72, 16

  %88 = inttoptr i64 %87 to i64*

  %89 = load i64, i64* %88

  %90 = add i64 %72, 24

  %91 = inttoptr i64 %90 to i64*

  %92 = load i64, i64* %91

  %93 = add i64 %72, 32

  %94 = inttoptr i64 %93 to i64*

  %95 = load i64, i64* %94

  %96 = add i64 %72, 40

  %97 = inttoptr i64 %96 to i64*

  %98 = load i64, i64* %97

  %99 = add i64 %72, 48

  %100 = inttoptr i64 %99 to i64*

  %101 = load i64, i64* %100

  %102 = add i64 %72, 56

  %103 = inttoptr i64 %102 to i64*

  %104 = load i64, i64* %103

  %105 = add i64 %72, 64

  %106 = inttoptr i64 %105 to i64*

  %107 = load i64, i64* %106

  %108 = add i64 %72, 72

  %109 = inttoptr i64 %108 to i64*

  %110 = load i64, i64* %109

  %111 = inttoptr i64 %73 to i64*

  %112 = load i64, i64* %111

  store i64 %112, i64* %3, align 8, !alias.scope !1294, !noalias !1297

  store i64 %72, i64* %14, align 8, !alias.scope !1294, !noalias !1297

  %113 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 84), i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %83, i64 %86, i64 %89, i64 %92, i64 %95, i64 %98, i64 %101, i64 %104, i64 %107, i64 %110), !noalias !1294

  %114 = load i64, i64* %3, align 8

  store i64 0, i64* %10, align 8, !tbaa !1240

  %115 = load i64, i64* %15, align 8

  %116 = add i64 %115, -148

  %117 = trunc i64 %113 to i32

  %118 = inttoptr i64 %116 to i32*

  store i32 %117, i32* %118

  %119 = add i64 %114, 15

  %120 = load i64, i64* %14, align 8, !tbaa !1240

  %121 = add i64 %120, -8

  %122 = inttoptr i64 %121 to i64*

  store i64 %119, i64* %122

  %123 = inttoptr i64 %121 to i64*

  %124 = load i64, i64* %123

  store i64 %124, i64* %3, align 8, !alias.scope !1299, !noalias !1302

  store i64 %120, i64* %14, align 8, !alias.scope !1299, !noalias !1302

  %125 = tail call i64 @fflush(i64 0), !noalias !1299

  %126 = load i64, i64* %15, align 8

  %127 = add i64 %126, -40

  %128 = load i64, i64* %3, align 8

  %129 = inttoptr i64 %127 to i32*

  %130 = load i32, i32* %129

  %131 = add i32 %130, -4

  %132 = icmp ult i32 %130, 4

  %133 = zext i1 %132 to i8

  store i8 %133, i8* %41, align 1, !tbaa !1244

  %134 = and i32 %131, 255

  %135 = tail call i32 @llvm.ctpop.i32(i32 %134) #11

  %136 = trunc i32 %135 to i8

  %137 = and i8 %136, 1

  %138 = xor i8 %137, 1

  store i8 %138, i8* %42, align 1, !tbaa !1258

  %139 = xor i32 %131, %130

  %140 = lshr i32 %139, 4

  %141 = trunc i32 %140 to i8

  %142 = and i8 %141, 1

  store i8 %142, i8* %43, align 1, !tbaa !1262

  %143 = icmp eq i32 %131, 0

  %144 = zext i1 %143 to i8

  store i8 %144, i8* %44, align 1, !tbaa !1259

  %145 = lshr i32 %131, 31

  %146 = trunc i32 %145 to i8

  store i8 %146, i8* %45, align 1, !tbaa !1260

  %147 = lshr i32 %130, 31

  %148 = xor i32 %145, %147

  %149 = add nuw nsw i32 %148, %147

  %150 = icmp eq i32 %149, 2

  %151 = zext i1 %150 to i8

  store i8 %151, i8* %46, align 1, !tbaa !1261

  %152 = add i64 %126, -152

  %153 = trunc i64 %125 to i32

  %154 = inttoptr i64 %152 to i32*

  store i32 %153, i32* %154

  %155 = select i1 %143, i64 56, i64 16

  %156 = add i64 %128, %155

  br i1 %143, label %block_400f71, label %block_400f49



block_4017fb:                                     ; preds = %block_401767

  %157 = add i64 %408, -56

  %158 = inttoptr i64 %157 to i64*

  %159 = load i64, i64* %158

  %160 = add i64 %426, 9

  %161 = load i64, i64* %14, align 8, !tbaa !1240

  %162 = add i64 %161, -8

  %163 = inttoptr i64 %162 to i64*

  store i64 %160, i64* %163

  %164 = inttoptr i64 %162 to i64*

  %165 = load i64, i64* %164

  store i64 %165, i64* %3, align 8, !alias.scope !1304, !noalias !1307

  store i64 %161, i64* %14, align 8, !alias.scope !1304, !noalias !1307

  %166 = tail call i64 @fclose(i64 %159), !noalias !1304

  %167 = load i64, i64* %15, align 8

  %168 = add i64 %167, -84

  %169 = trunc i64 %166 to i32

  %170 = load i64, i64* %3, align 8

  %171 = inttoptr i64 %168 to i32*

  store i32 %169, i32* %171

  %172 = inttoptr i64 %168 to i32*

  %173 = load i32, i32* %172

  store i8 0, i8* %41, align 1, !tbaa !1244

  %174 = and i32 %173, 255

  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #11

  %176 = trunc i32 %175 to i8

  %177 = and i8 %176, 1

  %178 = xor i8 %177, 1

  store i8 %178, i8* %42, align 1, !tbaa !1258

  store i8 0, i8* %43, align 1, !tbaa !1262

  %179 = icmp eq i32 %173, 0

  %180 = zext i1 %179 to i8

  store i8 %180, i8* %44, align 1, !tbaa !1259

  %181 = lshr i32 %173, 31

  %182 = trunc i32 %181 to i8

  store i8 %182, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  %183 = select i1 %179, i64 56, i64 13

  %184 = add i64 %170, %183

  br i1 %179, label %block_40183c, label %block_401811



block_400f71:                                     ; preds = %block_400ee0

  %185 = add i64 %126, -48

  %186 = inttoptr i64 %185 to i64*

  %187 = load i64, i64* %186

  %188 = add i64 %187, 8

  %189 = inttoptr i64 %188 to i64*

  %190 = load i64, i64* %189

  %191 = add i64 %156, 13

  %192 = load i64, i64* %14, align 8, !tbaa !1240

  %193 = add i64 %192, -8

  %194 = inttoptr i64 %193 to i64*

  store i64 %191, i64* %194

  %195 = inttoptr i64 %193 to i64*

  %196 = load i64, i64* %195

  store i64 %196, i64* %3, align 8, !alias.scope !1309, !noalias !1312

  store i64 %192, i64* %14, align 8, !alias.scope !1309, !noalias !1312

  %197 = tail call i64 @atoi(i64 %190), !noalias !1309

  %198 = load i64, i64* %3, align 8

  %199 = trunc i64 %197 to i32

  store i32 %199, i32* bitcast (%nThreads_type* @nThreads to i32*)

  %200 = load i64, i64* %15, align 8

  %201 = add i64 %200, -48

  %202 = inttoptr i64 %201 to i64*

  %203 = load i64, i64* %202

  %204 = add i64 %203, 16

  %205 = inttoptr i64 %204 to i64*

  %206 = load i64, i64* %205

  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%inputFile_type* @inputFile to i64), i64 4294967295) to i32) to i64), i64* %11, align 8, !tbaa !1240

  %207 = add i64 %200, -168

  %208 = inttoptr i64 %207 to i64*

  store i64 ptrtoint (%inputFile_type* @inputFile to i64), i64* %208

  %209 = add i64 %200, -176

  %210 = inttoptr i64 %209 to i64*

  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 156), i64* %210

  %211 = add i64 %198, 67

  %212 = load i64, i64* %14, align 8, !tbaa !1240

  %213 = add i64 %212, -8

  %214 = inttoptr i64 %213 to i64*

  store i64 %211, i64* %214

  %215 = inttoptr i64 %213 to i64*

  %216 = load i64, i64* %215

  store i64 %216, i64* %3, align 8, !alias.scope !1314, !noalias !1317

  store i64 %212, i64* %14, align 8, !alias.scope !1314, !noalias !1317

  %217 = tail call i64 @strcpy(i64 zext (i32 trunc (i64 and (i64 ptrtoint (%inputFile_type* @inputFile to i64), i64 4294967295) to i32) to i64), i64 %206)

  %218 = load i64, i64* %15, align 8

  %219 = add i64 %218, -48

  %220 = load i64, i64* %3, align 8

  %221 = inttoptr i64 %219 to i64*

  %222 = load i64, i64* %221

  store i64 %222, i64* %10, align 8, !tbaa !1240

  %223 = add i64 %222, 24

  %224 = inttoptr i64 %223 to i64*

  %225 = load i64, i64* %224

  store i64 and (i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 4294967295), i64* %16, align 8, !tbaa !1240

  %226 = add i64 %218, -184

  %227 = inttoptr i64 %226 to i64*

  store i64 %217, i64* %227

  %228 = add i64 %220, 29

  %229 = load i64, i64* %14, align 8, !tbaa !1240

  %230 = add i64 %229, -8

  %231 = inttoptr i64 %230 to i64*

  store i64 %228, i64* %231

  %232 = inttoptr i64 %230 to i64*

  %233 = load i64, i64* %232

  store i64 %233, i64* %3, align 8, !alias.scope !1319, !noalias !1322

  store i64 %229, i64* %14, align 8, !alias.scope !1319, !noalias !1322

  %234 = tail call i64 @strcpy(i64 zext (i32 trunc (i64 and (i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 4294967295) to i32) to i64), i64 %225)

  %235 = load i64, i64* %15, align 8

  %236 = add i64 %235, -168

  %237 = load i64, i64* %3, align 8

  %238 = inttoptr i64 %236 to i64*

  %239 = load i64, i64* %238

  %240 = add i64 %235, -176

  %241 = inttoptr i64 %240 to i64*

  %242 = load i64, i64* %241

  %243 = add i64 %235, -192

  %244 = inttoptr i64 %243 to i64*

  store i64 %234, i64* %244

  %245 = add i64 %237, 26

  %246 = load i64, i64* %14, align 8, !tbaa !1240

  %247 = add i64 %246, -8

  %248 = inttoptr i64 %247 to i64*

  store i64 %245, i64* %248

  %249 = inttoptr i64 %247 to i64*

  %250 = load i64, i64* %249

  store i64 %250, i64* %3, align 8, !alias.scope !1324, !noalias !1327

  store i64 %246, i64* %14, align 8, !alias.scope !1324, !noalias !1327

  %251 = tail call i64 @fopen(i64 %239, i64 %242)

  %252 = load i64, i64* %15, align 8

  %253 = add i64 %252, -56

  %254 = load i64, i64* %3, align 8

  %255 = inttoptr i64 %253 to i64*

  store i64 %251, i64* %255

  %256 = inttoptr i64 %253 to i64*

  %257 = load i64, i64* %256

  store i8 0, i8* %41, align 1, !tbaa !1244

  %258 = trunc i64 %257 to i32

  %259 = and i32 %258, 255

  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #11

  %261 = trunc i32 %260 to i8

  %262 = and i8 %261, 1

  %263 = xor i8 %262, 1

  store i8 %263, i8* %42, align 1, !tbaa !1258

  store i8 0, i8* %43, align 1, !tbaa !1262

  %264 = icmp eq i64 %257, 0

  %265 = zext i1 %264 to i8

  store i8 %265, i8* %44, align 1, !tbaa !1259

  %266 = lshr i64 %257, 63

  %267 = trunc i64 %266 to i8

  store i8 %267, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  %268 = select i1 %264, i64 15, i64 58

  %269 = add i64 %254, %268

  br i1 %264, label %block_401007, label %block_401032



block_401760:                                     ; preds = %block_4016fd

  %270 = add i64 %468, -60

  %271 = add i64 %487, 7

  %272 = inttoptr i64 %270 to i32*

  store i32 0, i32* %272

  %273 = bitcast %union.VectorReg* %23 to double*

  %274 = load i64, i64* %11, align 8

  %275 = load i64, i64* %76, align 8

  %276 = load i64, i64* %17, align 8

  br label %block_401767



block_4010df:                                     ; preds = %block_4010d1

  %277 = add i64 %1744, 17

  %278 = load i64, i64* %14, align 8, !tbaa !1240

  %279 = add i64 %278, -8

  %280 = inttoptr i64 %279 to i64*

  store i64 %277, i64* %280

  %281 = load i64, i64* %61, align 8, !alias.scope !1329, !noalias !1332

  %282 = load i64, i64* %11, align 8, !alias.scope !1329, !noalias !1332

  %283 = load i64, i64* %75, align 8, !alias.scope !1329, !noalias !1332

  %284 = load i64, i64* %76, align 8, !alias.scope !1329, !noalias !1332

  %285 = load i64, i64* %17, align 8, !alias.scope !1329, !noalias !1332

  %286 = inttoptr i64 %278 to i64*

  %287 = load i64, i64* %286

  %288 = add i64 %278, 8

  %289 = inttoptr i64 %288 to i64*

  %290 = load i64, i64* %289

  %291 = add i64 %278, 16

  %292 = inttoptr i64 %291 to i64*

  %293 = load i64, i64* %292

  %294 = add i64 %278, 24

  %295 = inttoptr i64 %294 to i64*

  %296 = load i64, i64* %295

  %297 = add i64 %278, 32

  %298 = inttoptr i64 %297 to i64*

  %299 = load i64, i64* %298

  %300 = add i64 %278, 40

  %301 = inttoptr i64 %300 to i64*

  %302 = load i64, i64* %301

  %303 = add i64 %278, 48

  %304 = inttoptr i64 %303 to i64*

  %305 = load i64, i64* %304

  %306 = add i64 %278, 56

  %307 = inttoptr i64 %306 to i64*

  %308 = load i64, i64* %307

  %309 = add i64 %278, 64

  %310 = inttoptr i64 %309 to i64*

  %311 = load i64, i64* %310

  %312 = add i64 %278, 72

  %313 = inttoptr i64 %312 to i64*

  %314 = load i64, i64* %313

  %315 = inttoptr i64 %279 to i64*

  %316 = load i64, i64* %315

  store i64 %316, i64* %3, align 8, !alias.scope !1329, !noalias !1332

  store i64 %278, i64* %14, align 8, !alias.scope !1329, !noalias !1332

  %317 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 316), i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %287, i64 %290, i64 %293, i64 %296, i64 %299, i64 %302, i64 %305, i64 %308, i64 %311, i64 %314), !noalias !1329

  %318 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %319 = load i64, i64* %15, align 8

  %320 = add i64 %319, -212

  %321 = trunc i64 %317 to i32

  %322 = inttoptr i64 %320 to i32*

  store i32 %321, i32* %322

  %323 = add i64 %318, 16

  %324 = load i64, i64* %14, align 8, !tbaa !1240

  %325 = add i64 %324, -8

  %326 = inttoptr i64 %325 to i64*

  store i64 %323, i64* %326

  %327 = inttoptr i64 %325 to i64*

  %328 = load i64, i64* %327

  store i64 %328, i64* %3, align 8, !alias.scope !1334, !noalias !1337

  store i64 %324, i64* %14, align 8, !alias.scope !1334, !noalias !1337

  %329 = tail call i64 @exit(i64 1), !noalias !1334

  store i64 %329, i64* %60, align 8, !alias.scope !1334, !noalias !1337

  %330 = load i64, i64* %3, align 8

  %331 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %330, %struct.Memory* %1720)

  ret %struct.Memory* %331



block_40105e:                                     ; preds = %block_401032

  store i64 ptrtoint (%inputFile_type* @inputFile to i64), i64* %12, align 8, !tbaa !1240

  %332 = add i64 %1824, 27

  %333 = load i64, i64* %14, align 8, !tbaa !1240

  %334 = add i64 %333, -8

  %335 = inttoptr i64 %334 to i64*

  store i64 %332, i64* %335

  %336 = load i64, i64* %11, align 8, !alias.scope !1339, !noalias !1342

  %337 = load i64, i64* %75, align 8, !alias.scope !1339, !noalias !1342

  %338 = load i64, i64* %76, align 8, !alias.scope !1339, !noalias !1342

  %339 = load i64, i64* %17, align 8, !alias.scope !1339, !noalias !1342

  %340 = inttoptr i64 %333 to i64*

  %341 = load i64, i64* %340

  %342 = add i64 %333, 8

  %343 = inttoptr i64 %342 to i64*

  %344 = load i64, i64* %343

  %345 = add i64 %333, 16

  %346 = inttoptr i64 %345 to i64*

  %347 = load i64, i64* %346

  %348 = add i64 %333, 24

  %349 = inttoptr i64 %348 to i64*

  %350 = load i64, i64* %349

  %351 = add i64 %333, 32

  %352 = inttoptr i64 %351 to i64*

  %353 = load i64, i64* %352

  %354 = add i64 %333, 40

  %355 = inttoptr i64 %354 to i64*

  %356 = load i64, i64* %355

  %357 = add i64 %333, 48

  %358 = inttoptr i64 %357 to i64*

  %359 = load i64, i64* %358

  %360 = add i64 %333, 56

  %361 = inttoptr i64 %360 to i64*

  %362 = load i64, i64* %361

  %363 = add i64 %333, 64

  %364 = inttoptr i64 %363 to i64*

  %365 = load i64, i64* %364

  %366 = add i64 %333, 72

  %367 = inttoptr i64 %366 to i64*

  %368 = load i64, i64* %367

  %369 = inttoptr i64 %334 to i64*

  %370 = load i64, i64* %369

  store i64 %370, i64* %3, align 8, !alias.scope !1339, !noalias !1342

  store i64 %333, i64* %14, align 8, !alias.scope !1339, !noalias !1342

  %371 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 195), i64 ptrtoint (%inputFile_type* @inputFile to i64), i64 %336, i64 %337, i64 %338, i64 %339, i64 %341, i64 %344, i64 %347, i64 %350, i64 %353, i64 %356, i64 %359, i64 %362, i64 %365, i64 %368), !noalias !1339

  %372 = load i64, i64* %15, align 8

  %373 = add i64 %372, -56

  %374 = load i64, i64* %3, align 8

  %375 = inttoptr i64 %373 to i64*

  %376 = load i64, i64* %375

  %377 = add i64 %372, -200

  %378 = trunc i64 %371 to i32

  %379 = inttoptr i64 %377 to i32*

  store i32 %378, i32* %379

  %380 = add i64 %374, 15

  %381 = load i64, i64* %14, align 8, !tbaa !1240

  %382 = add i64 %381, -8

  %383 = inttoptr i64 %382 to i64*

  store i64 %380, i64* %383

  %384 = inttoptr i64 %382 to i64*

  %385 = load i64, i64* %384

  store i64 %385, i64* %3, align 8, !alias.scope !1344, !noalias !1347

  store i64 %381, i64* %14, align 8, !alias.scope !1344, !noalias !1347

  %386 = tail call i64 @fclose(i64 %376), !noalias !1344

  %387 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %388 = load i64, i64* %15, align 8

  %389 = add i64 %388, -204

  %390 = trunc i64 %386 to i32

  %391 = inttoptr i64 %389 to i32*

  store i32 %390, i32* %391

  %392 = add i64 %387, 16

  %393 = load i64, i64* %14, align 8, !tbaa !1240

  %394 = add i64 %393, -8

  %395 = inttoptr i64 %394 to i64*

  store i64 %392, i64* %395

  %396 = inttoptr i64 %394 to i64*

  %397 = load i64, i64* %396

  store i64 %397, i64* %3, align 8, !alias.scope !1349, !noalias !1352

  store i64 %393, i64* %14, align 8, !alias.scope !1349, !noalias !1352

  %398 = tail call i64 @exit(i64 1), !noalias !1349

  store i64 %398, i64* %60, align 8, !alias.scope !1349, !noalias !1352

  %399 = load i64, i64* %3, align 8

  %400 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %399, %struct.Memory* %2)

  ret %struct.Memory* %400



block_4017e8:                                     ; preds = %block_401777

  %401 = add i64 %951, -60

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = add i32 %403, 1

  %405 = inttoptr i64 %401 to i32*

  store i32 %404, i32* %405

  %406 = add i64 %970, -129

  br label %block_401767



block_401767:                                     ; preds = %block_4017e8, %block_401760

  %407 = phi i64 [ %271, %block_401760 ], [ %406, %block_4017e8 ]

  %408 = phi i64 [ %468, %block_401760 ], [ %951, %block_4017e8 ]

  %409 = phi %struct.Memory* [ %1977, %block_401760 ], [ %409, %block_4017e8 ]

  %410 = add i64 %408, -60

  %411 = inttoptr i64 %410 to i32*

  %412 = load i32, i32* %411

  %413 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %414 = sub i32 %412, %413

  %415 = lshr i32 %414, 31

  %416 = trunc i32 %415 to i8

  %417 = lshr i32 %412, 31

  %418 = lshr i32 %413, 31

  %419 = xor i32 %418, %417

  %420 = xor i32 %415, %417

  %421 = add nuw nsw i32 %420, %419

  %422 = icmp eq i32 %421, 2

  %423 = icmp ne i8 %416, 0

  %424 = xor i1 %423, %422

  %425 = select i1 %424, i64 16, i64 148

  %426 = add i64 %407, %425

  br i1 %424, label %block_401777, label %block_4017fb



block_4016fd:                                     ; preds = %block_401683

  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 529), i64* %12, align 8, !tbaa !1240

  %427 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %428 = zext i32 %427 to i64

  store i64 %428, i64* %11, align 8, !tbaa !1240

  %429 = add i64 %2052, 28

  %430 = load i64, i64* %14, align 8, !tbaa !1240

  %431 = add i64 %430, -8

  %432 = inttoptr i64 %431 to i64*

  store i64 %429, i64* %432

  %433 = load i64, i64* %75, align 8, !alias.scope !1354, !noalias !1357

  %434 = load i64, i64* %76, align 8, !alias.scope !1354, !noalias !1357

  %435 = load i64, i64* %17, align 8, !alias.scope !1354, !noalias !1357

  %436 = inttoptr i64 %430 to i64*

  %437 = load i64, i64* %436

  %438 = add i64 %430, 8

  %439 = inttoptr i64 %438 to i64*

  %440 = load i64, i64* %439

  %441 = add i64 %430, 16

  %442 = inttoptr i64 %441 to i64*

  %443 = load i64, i64* %442

  %444 = add i64 %430, 24

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %430, 32

  %448 = inttoptr i64 %447 to i64*

  %449 = load i64, i64* %448

  %450 = add i64 %430, 40

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %430, 48

  %454 = inttoptr i64 %453 to i64*

  %455 = load i64, i64* %454

  %456 = add i64 %430, 56

  %457 = inttoptr i64 %456 to i64*

  %458 = load i64, i64* %457

  %459 = add i64 %430, 64

  %460 = inttoptr i64 %459 to i64*

  %461 = load i64, i64* %460

  %462 = add i64 %430, 72

  %463 = inttoptr i64 %462 to i64*

  %464 = load i64, i64* %463

  %465 = inttoptr i64 %431 to i64*

  %466 = load i64, i64* %465

  store i64 %466, i64* %3, align 8, !alias.scope !1354, !noalias !1357

  store i64 %430, i64* %14, align 8, !alias.scope !1354, !noalias !1357

  %467 = tail call i64 @fprintf(i64 %2040, i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 529), i64 %428, i64 %433, i64 %434, i64 %435, i64 %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452, i64 %455, i64 %458, i64 %461, i64 %464), !noalias !1354

  %468 = load i64, i64* %15, align 8

  %469 = add i64 %468, -84

  %470 = trunc i64 %467 to i32

  %471 = load i64, i64* %3, align 8

  %472 = inttoptr i64 %469 to i32*

  store i32 %470, i32* %472

  %473 = add i64 %471, 7

  %474 = inttoptr i64 %469 to i32*

  %475 = load i32, i32* %474

  store i8 0, i8* %41, align 1, !tbaa !1244

  %476 = and i32 %475, 255

  %477 = tail call i32 @llvm.ctpop.i32(i32 %476) #11

  %478 = trunc i32 %477 to i8

  %479 = and i8 %478, 1

  %480 = xor i8 %479, 1

  store i8 %480, i8* %42, align 1, !tbaa !1258

  store i8 0, i8* %43, align 1, !tbaa !1262

  %481 = icmp eq i32 %475, 0

  %482 = zext i1 %481 to i8

  store i8 %482, i8* %44, align 1, !tbaa !1259

  %483 = lshr i32 %475, 31

  %484 = trunc i32 %483 to i8

  store i8 %484, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  %485 = icmp ne i8 %484, 0

  %486 = select i1 %485, i64 6, i64 64

  %487 = add i64 %473, %486

  br i1 %485, label %block_401726, label %block_401760



block_4016d2:                                     ; preds = %block_401683

  store i64 ptrtoint (%outputFile_type* @outputFile to i64), i64* %12, align 8, !tbaa !1240

  %488 = add i64 %2052, 27

  %489 = load i64, i64* %14, align 8, !tbaa !1240

  %490 = add i64 %489, -8

  %491 = inttoptr i64 %490 to i64*

  store i64 %488, i64* %491

  %492 = load i64, i64* %11, align 8, !alias.scope !1359, !noalias !1362

  %493 = load i64, i64* %75, align 8, !alias.scope !1359, !noalias !1362

  %494 = load i64, i64* %76, align 8, !alias.scope !1359, !noalias !1362

  %495 = load i64, i64* %17, align 8, !alias.scope !1359, !noalias !1362

  %496 = inttoptr i64 %489 to i64*

  %497 = load i64, i64* %496

  %498 = add i64 %489, 8

  %499 = inttoptr i64 %498 to i64*

  %500 = load i64, i64* %499

  %501 = add i64 %489, 16

  %502 = inttoptr i64 %501 to i64*

  %503 = load i64, i64* %502

  %504 = add i64 %489, 24

  %505 = inttoptr i64 %504 to i64*

  %506 = load i64, i64* %505

  %507 = add i64 %489, 32

  %508 = inttoptr i64 %507 to i64*

  %509 = load i64, i64* %508

  %510 = add i64 %489, 40

  %511 = inttoptr i64 %510 to i64*

  %512 = load i64, i64* %511

  %513 = add i64 %489, 48

  %514 = inttoptr i64 %513 to i64*

  %515 = load i64, i64* %514

  %516 = add i64 %489, 56

  %517 = inttoptr i64 %516 to i64*

  %518 = load i64, i64* %517

  %519 = add i64 %489, 64

  %520 = inttoptr i64 %519 to i64*

  %521 = load i64, i64* %520

  %522 = add i64 %489, 72

  %523 = inttoptr i64 %522 to i64*

  %524 = load i64, i64* %523

  %525 = inttoptr i64 %490 to i64*

  %526 = load i64, i64* %525

  store i64 %526, i64* %3, align 8, !alias.scope !1359, !noalias !1362

  store i64 %489, i64* %14, align 8, !alias.scope !1359, !noalias !1362

  %527 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 158), i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 %492, i64 %493, i64 %494, i64 %495, i64 %497, i64 %500, i64 %503, i64 %506, i64 %509, i64 %512, i64 %515, i64 %518, i64 %521, i64 %524), !noalias !1359

  %528 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %529 = load i64, i64* %15, align 8

  %530 = add i64 %529, -292

  %531 = trunc i64 %527 to i32

  %532 = inttoptr i64 %530 to i32*

  store i32 %531, i32* %532

  %533 = add i64 %528, 16

  %534 = load i64, i64* %14, align 8, !tbaa !1240

  %535 = add i64 %534, -8

  %536 = inttoptr i64 %535 to i64*

  store i64 %533, i64* %536

  %537 = inttoptr i64 %535 to i64*

  %538 = load i64, i64* %537

  store i64 %538, i64* %3, align 8, !alias.scope !1364, !noalias !1367

  store i64 %534, i64* %14, align 8, !alias.scope !1364, !noalias !1367

  %539 = tail call i64 @exit(i64 1), !noalias !1364

  store i64 %539, i64* %60, align 8, !alias.scope !1364, !noalias !1367

  %540 = load i64, i64* %3, align 8

  %541 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %540, %struct.Memory* %1977)

  ret %struct.Memory* %541



block_4015d1:                                     ; preds = %block_4015b1, %block_401555

  %542 = phi i64 [ %1754, %block_4015b1 ], [ %750, %block_401555 ]

  %543 = phi %struct.Memory* [ %998, %block_4015b1 ], [ %998, %block_401555 ]

  %544 = add i64 %751, -136

  %545 = inttoptr i64 %544 to i64*

  %546 = load i64, i64* %545

  %547 = add i64 %751, -128

  %548 = inttoptr i64 %547 to i64*

  %549 = load i64, i64* %548

  %550 = add i64 %542, 33

  %551 = load i64, i64* %14, align 8, !tbaa !1240

  %552 = add i64 %551, -8

  %553 = inttoptr i64 %552 to i64*

  store i64 %550, i64* %553

  %554 = load i64, i64* %75, align 8, !alias.scope !1369, !noalias !1372

  %555 = load i64, i64* %76, align 8, !alias.scope !1369, !noalias !1372

  %556 = load i64, i64* %17, align 8, !alias.scope !1369, !noalias !1372

  %557 = inttoptr i64 %551 to i64*

  %558 = load i64, i64* %557

  %559 = add i64 %551, 8

  %560 = inttoptr i64 %559 to i64*

  %561 = load i64, i64* %560

  %562 = add i64 %551, 16

  %563 = inttoptr i64 %562 to i64*

  %564 = load i64, i64* %563

  %565 = add i64 %551, 24

  %566 = inttoptr i64 %565 to i64*

  %567 = load i64, i64* %566

  %568 = add i64 %551, 32

  %569 = inttoptr i64 %568 to i64*

  %570 = load i64, i64* %569

  %571 = add i64 %551, 40

  %572 = inttoptr i64 %571 to i64*

  %573 = load i64, i64* %572

  %574 = add i64 %551, 48

  %575 = inttoptr i64 %574 to i64*

  %576 = load i64, i64* %575

  %577 = add i64 %551, 56

  %578 = inttoptr i64 %577 to i64*

  %579 = load i64, i64* %578

  %580 = add i64 %551, 64

  %581 = inttoptr i64 %580 to i64*

  %582 = load i64, i64* %581

  %583 = add i64 %551, 72

  %584 = inttoptr i64 %583 to i64*

  %585 = load i64, i64* %584

  %586 = inttoptr i64 %552 to i64*

  %587 = load i64, i64* %586

  store i64 %587, i64* %3, align 8, !alias.scope !1369, !noalias !1372

  store i64 %551, i64* %14, align 8, !alias.scope !1369, !noalias !1372

  %588 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 480), i64 %546, i64 %549, i64 %554, i64 %555, i64 %556, i64 %558, i64 %561, i64 %564, i64 %567, i64 %570, i64 %573, i64 %576, i64 %579, i64 %582, i64 %585), !noalias !1369

  %589 = load i64, i64* %15, align 8

  %590 = add i64 %589, -104

  %591 = load i64, i64* %3, align 8

  store i64 0, i64* %12, align 8, !tbaa !1240

  %592 = add i64 %589, -272

  %593 = trunc i64 %588 to i32

  %594 = inttoptr i64 %592 to i32*

  store i32 %593, i32* %594

  %595 = add i64 %591, 19

  %596 = load i64, i64* %14, align 8, !tbaa !1240

  %597 = add i64 %596, -8

  %598 = inttoptr i64 %597 to i64*

  store i64 %595, i64* %598

  %599 = inttoptr i64 %597 to i64*

  %600 = load i64, i64* %599

  store i64 %600, i64* %3, align 8, !alias.scope !1374, !noalias !1377

  store i64 %596, i64* %14, align 8, !alias.scope !1374, !noalias !1377

  %601 = tail call i64 @gettimeofday(i64 %590, i64 0), !noalias !1374

  %602 = load i64, i64* %15, align 8

  %603 = add i64 %602, -140

  %604 = load i64, i64* %3, align 8

  %605 = inttoptr i64 %603 to i32*

  store i32 0, i32* %605

  store i64 %603, i64* %13, align 8, !tbaa !1240

  %606 = add i64 %602, -276

  %607 = trunc i64 %601 to i32

  %608 = inttoptr i64 %606 to i32*

  store i32 %607, i32* %608

  %609 = add i64 %604, -2133

  %610 = add i64 %604, 31

  %611 = load i64, i64* %14, align 8, !tbaa !1240

  %612 = add i64 %611, -8

  %613 = inttoptr i64 %612 to i64*

  store i64 %610, i64* %613

  store i64 %612, i64* %14, align 8, !tbaa !1240

  %614 = tail call %struct.Memory* @sub_400db0_bs_thread(%struct.State* nonnull %0, i64 %609, %struct.Memory* %543)

  %615 = load i64, i64* %15, align 8

  %616 = add i64 %615, -120

  %617 = load i64, i64* %3, align 8

  store i64 0, i64* %10, align 8, !tbaa !1240

  %618 = add i64 %615, -280

  %619 = load i32, i32* %5, align 4

  %620 = inttoptr i64 %618 to i32*

  store i32 %619, i32* %620

  %621 = add i64 %617, 19

  %622 = load i64, i64* %14, align 8, !tbaa !1240

  %623 = add i64 %622, -8

  %624 = inttoptr i64 %623 to i64*

  store i64 %621, i64* %624

  %625 = inttoptr i64 %623 to i64*

  %626 = load i64, i64* %625

  store i64 %626, i64* %3, align 8, !alias.scope !1379, !noalias !1382

  store i64 %622, i64* %14, align 8, !alias.scope !1379, !noalias !1382

  %627 = tail call i64 @gettimeofday(i64 %616, i64 0), !noalias !1379

  %628 = load i64, i64* %15, align 8

  %629 = add i64 %628, -284

  %630 = trunc i64 %627 to i32

  %631 = load i64, i64* %3, align 8

  %632 = inttoptr i64 %629 to i32*

  store i32 %630, i32* %632

  %633 = add i64 %628, -120

  %634 = inttoptr i64 %633 to i64*

  %635 = load i64, i64* %634

  %636 = add i64 %628, -104

  %637 = inttoptr i64 %636 to i64*

  %638 = load i64, i64* %637

  %639 = sub i64 %635, %638

  %640 = add i64 %628, -136

  %641 = inttoptr i64 %640 to i64*

  store i64 %639, i64* %641

  %642 = add i64 %628, -112

  %643 = inttoptr i64 %642 to i64*

  %644 = load i64, i64* %643

  %645 = add i64 %628, -96

  %646 = inttoptr i64 %645 to i64*

  %647 = load i64, i64* %646

  %648 = sub i64 %644, %647

  %649 = add i64 %628, -128

  %650 = inttoptr i64 %649 to i64*

  store i64 %648, i64* %650

  %651 = add i64 %631, 38

  %652 = inttoptr i64 %649 to i64*

  %653 = load i64, i64* %652

  %654 = lshr i64 %653, 63

  %655 = trunc i64 %654 to i8

  %656 = icmp ne i8 %655, 0

  %657 = select i1 %656, i64 6, i64 38

  %658 = add i64 %651, %657

  %659 = load i64, i64* %15, align 8

  br i1 %656, label %block_401663, label %block_401683



block_401555:                                     ; preds = %block_401438

  %660 = sext i32 %1001 to i64

  %661 = sext i32 %1001 to i128

  %662 = and i128 %661, -18446744073709551616

  %663 = zext i64 %660 to i128

  %664 = or i128 %662, %663

  %665 = mul nsw i128 %664, 40

  %666 = trunc i128 %665 to i64

  %667 = add i64 %1013, 29

  %668 = load i64, i64* %14, align 8, !tbaa !1240

  %669 = add i64 %668, -8

  %670 = inttoptr i64 %669 to i64*

  store i64 %667, i64* %670

  %671 = load i64, i64* %11, align 8, !alias.scope !1384, !noalias !1387

  %672 = load i64, i64* %75, align 8, !alias.scope !1384, !noalias !1387

  %673 = load i64, i64* %76, align 8, !alias.scope !1384, !noalias !1387

  %674 = load i64, i64* %17, align 8, !alias.scope !1384, !noalias !1387

  %675 = inttoptr i64 %668 to i64*

  %676 = load i64, i64* %675

  %677 = add i64 %668, 8

  %678 = inttoptr i64 %677 to i64*

  %679 = load i64, i64* %678

  %680 = add i64 %668, 16

  %681 = inttoptr i64 %680 to i64*

  %682 = load i64, i64* %681

  %683 = add i64 %668, 24

  %684 = inttoptr i64 %683 to i64*

  %685 = load i64, i64* %684

  %686 = add i64 %668, 32

  %687 = inttoptr i64 %686 to i64*

  %688 = load i64, i64* %687

  %689 = add i64 %668, 40

  %690 = inttoptr i64 %689 to i64*

  %691 = load i64, i64* %690

  %692 = add i64 %668, 48

  %693 = inttoptr i64 %692 to i64*

  %694 = load i64, i64* %693

  %695 = add i64 %668, 56

  %696 = inttoptr i64 %695 to i64*

  %697 = load i64, i64* %696

  %698 = add i64 %668, 64

  %699 = inttoptr i64 %698 to i64*

  %700 = load i64, i64* %699

  %701 = add i64 %668, 72

  %702 = inttoptr i64 %701 to i64*

  %703 = load i64, i64* %702

  %704 = inttoptr i64 %669 to i64*

  %705 = load i64, i64* %704

  store i64 %705, i64* %3, align 8, !alias.scope !1384, !noalias !1387

  store i64 %668, i64* %14, align 8, !alias.scope !1384, !noalias !1387

  %706 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 461), i64 %666, i64 %671, i64 %672, i64 %673, i64 %674, i64 %676, i64 %679, i64 %682, i64 %685, i64 %688, i64 %691, i64 %694, i64 %697, i64 %700, i64 %703), !noalias !1384

  %707 = load i64, i64* %15, align 8

  %708 = add i64 %707, -120

  %709 = load i64, i64* %3, align 8

  store i64 0, i64* %10, align 8, !tbaa !1240

  %710 = add i64 %707, -264

  %711 = trunc i64 %706 to i32

  %712 = inttoptr i64 %710 to i32*

  store i32 %711, i32* %712

  %713 = add i64 %709, 19

  %714 = load i64, i64* %14, align 8, !tbaa !1240

  %715 = add i64 %714, -8

  %716 = inttoptr i64 %715 to i64*

  store i64 %713, i64* %716

  %717 = inttoptr i64 %715 to i64*

  %718 = load i64, i64* %717

  store i64 %718, i64* %3, align 8, !alias.scope !1389, !noalias !1392

  store i64 %714, i64* %14, align 8, !alias.scope !1389, !noalias !1392

  %719 = tail call i64 @gettimeofday(i64 %708, i64 0), !noalias !1389

  %720 = load i64, i64* %15, align 8

  %721 = add i64 %720, -268

  %722 = trunc i64 %719 to i32

  %723 = load i64, i64* %3, align 8

  %724 = inttoptr i64 %721 to i32*

  store i32 %722, i32* %724

  %725 = add i64 %720, -120

  %726 = inttoptr i64 %725 to i64*

  %727 = load i64, i64* %726

  %728 = add i64 %720, -104

  %729 = inttoptr i64 %728 to i64*

  %730 = load i64, i64* %729

  %731 = sub i64 %727, %730

  %732 = add i64 %720, -136

  %733 = inttoptr i64 %732 to i64*

  store i64 %731, i64* %733

  %734 = add i64 %720, -112

  %735 = inttoptr i64 %734 to i64*

  %736 = load i64, i64* %735

  %737 = add i64 %720, -96

  %738 = inttoptr i64 %737 to i64*

  %739 = load i64, i64* %738

  %740 = sub i64 %736, %739

  %741 = add i64 %720, -128

  %742 = inttoptr i64 %741 to i64*

  store i64 %740, i64* %742

  %743 = add i64 %723, 38

  %744 = inttoptr i64 %741 to i64*

  %745 = load i64, i64* %744

  %746 = lshr i64 %745, 63

  %747 = trunc i64 %746 to i8

  %748 = icmp ne i8 %747, 0

  %749 = select i1 %748, i64 6, i64 38

  %750 = add i64 %743, %749

  %751 = load i64, i64* %15, align 8

  br i1 %748, label %block_4015b1, label %block_4015d1



block_400f49:                                     ; preds = %block_400ee0

  %752 = add i64 %126, -48

  %753 = inttoptr i64 %752 to i64*

  %754 = load i64, i64* %753

  %755 = inttoptr i64 %754 to i64*

  %756 = load i64, i64* %755

  store i64 %756, i64* %12, align 8, !tbaa !1240

  %757 = add i64 %156, 24

  %758 = load i64, i64* %14, align 8, !tbaa !1240

  %759 = add i64 %758, -8

  %760 = inttoptr i64 %759 to i64*

  store i64 %757, i64* %760

  %761 = load i64, i64* %11, align 8, !alias.scope !1394, !noalias !1397

  %762 = load i64, i64* %75, align 8, !alias.scope !1394, !noalias !1397

  %763 = load i64, i64* %76, align 8, !alias.scope !1394, !noalias !1397

  %764 = load i64, i64* %17, align 8, !alias.scope !1394, !noalias !1397

  %765 = inttoptr i64 %758 to i64*

  %766 = load i64, i64* %765

  %767 = add i64 %758, 8

  %768 = inttoptr i64 %767 to i64*

  %769 = load i64, i64* %768

  %770 = add i64 %758, 16

  %771 = inttoptr i64 %770 to i64*

  %772 = load i64, i64* %771

  %773 = add i64 %758, 24

  %774 = inttoptr i64 %773 to i64*

  %775 = load i64, i64* %774

  %776 = add i64 %758, 32

  %777 = inttoptr i64 %776 to i64*

  %778 = load i64, i64* %777

  %779 = add i64 %758, 40

  %780 = inttoptr i64 %779 to i64*

  %781 = load i64, i64* %780

  %782 = add i64 %758, 48

  %783 = inttoptr i64 %782 to i64*

  %784 = load i64, i64* %783

  %785 = add i64 %758, 56

  %786 = inttoptr i64 %785 to i64*

  %787 = load i64, i64* %786

  %788 = add i64 %758, 64

  %789 = inttoptr i64 %788 to i64*

  %790 = load i64, i64* %789

  %791 = add i64 %758, 72

  %792 = inttoptr i64 %791 to i64*

  %793 = load i64, i64* %792

  %794 = inttoptr i64 %759 to i64*

  %795 = load i64, i64* %794

  store i64 %795, i64* %3, align 8, !alias.scope !1394, !noalias !1397

  store i64 %758, i64* %14, align 8, !alias.scope !1394, !noalias !1397

  %796 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 108), i64 %756, i64 %761, i64 %762, i64 %763, i64 %764, i64 %766, i64 %769, i64 %772, i64 %775, i64 %778, i64 %781, i64 %784, i64 %787, i64 %790, i64 %793), !noalias !1394

  %797 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %798 = load i64, i64* %15, align 8

  %799 = add i64 %798, -156

  %800 = trunc i64 %796 to i32

  %801 = inttoptr i64 %799 to i32*

  store i32 %800, i32* %801

  %802 = add i64 %797, 16

  %803 = load i64, i64* %14, align 8, !tbaa !1240

  %804 = add i64 %803, -8

  %805 = inttoptr i64 %804 to i64*

  store i64 %802, i64* %805

  %806 = inttoptr i64 %804 to i64*

  %807 = load i64, i64* %806

  store i64 %807, i64* %3, align 8, !alias.scope !1399, !noalias !1402

  store i64 %803, i64* %14, align 8, !alias.scope !1399, !noalias !1402

  %808 = tail call i64 @exit(i64 1), !noalias !1399

  store i64 %808, i64* %60, align 8, !alias.scope !1399, !noalias !1402

  %809 = load i64, i64* %3, align 8

  %810 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %809, %struct.Memory* %2)

  ret %struct.Memory* %810



block_401448:                                     ; preds = %block_401438

  store i64 1, i64* %10, align 8, !tbaa !1240

  %811 = load i64, i64* bitcast (%data_type* @data to i64*)

  %812 = sext i32 %1000 to i64

  %813 = mul nsw i64 %812, 36

  %814 = add i64 %813, %811

  %815 = add i64 %814, 24

  %816 = inttoptr i64 %815 to i8*

  %817 = load i8, i8* %816

  %818 = icmp eq i8 %817, 80

  %819 = load i64, i64* bitcast (%otype_type* @otype to i64*)

  %820 = shl nsw i64 %812, 2

  %821 = add i64 %820, %819

  %822 = zext i1 %818 to i32

  %823 = inttoptr i64 %821 to i32*

  store i32 %822, i32* %823

  %824 = load i64, i64* bitcast (%data_type* @data to i64*)

  %825 = inttoptr i64 %1586 to i32*

  %826 = load i32, i32* %825

  %827 = sext i32 %826 to i64

  %828 = mul nsw i64 %827, 36

  %829 = add i64 %828, %824

  %830 = inttoptr i64 %829 to float*

  %831 = load float, float* %830

  store float %831, float* %1590, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1592, align 1, !tbaa !1265

  %832 = load i64, i64* bitcast (%sptprice_type* @sptprice to i64*)

  %833 = shl nsw i64 %827, 2

  %834 = add i64 %833, %832

  %835 = load <2 x float>, <2 x float>* %1597, align 1

  %836 = extractelement <2 x float> %835, i32 0

  %837 = inttoptr i64 %834 to float*

  store float %836, float* %837

  %838 = load i64, i64* bitcast (%data_type* @data to i64*)

  %839 = inttoptr i64 %1586 to i32*

  %840 = load i32, i32* %839

  %841 = sext i32 %840 to i64

  %842 = mul nsw i64 %841, 36

  %843 = add i64 %842, %838

  %844 = add i64 %843, 4

  %845 = inttoptr i64 %844 to float*

  %846 = load float, float* %845

  store float %846, float* %1590, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1592, align 1, !tbaa !1265

  %847 = load i64, i64* bitcast (%strike_type* @strike to i64*)

  %848 = shl nsw i64 %841, 2

  %849 = add i64 %848, %847

  %850 = load <2 x float>, <2 x float>* %1597, align 1

  %851 = extractelement <2 x float> %850, i32 0

  %852 = inttoptr i64 %849 to float*

  store float %851, float* %852

  %853 = load i64, i64* bitcast (%data_type* @data to i64*)

  %854 = inttoptr i64 %1586 to i32*

  %855 = load i32, i32* %854

  %856 = sext i32 %855 to i64

  %857 = mul nsw i64 %856, 36

  %858 = add i64 %857, %853

  %859 = add i64 %858, 8

  %860 = inttoptr i64 %859 to float*

  %861 = load float, float* %860

  store float %861, float* %1590, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1592, align 1, !tbaa !1265

  %862 = load i64, i64* bitcast (%rate_type* @rate to i64*)

  %863 = shl nsw i64 %856, 2

  %864 = add i64 %863, %862

  %865 = load <2 x float>, <2 x float>* %1597, align 1

  %866 = extractelement <2 x float> %865, i32 0

  %867 = inttoptr i64 %864 to float*

  store float %866, float* %867

  %868 = load i64, i64* bitcast (%data_type* @data to i64*)

  %869 = inttoptr i64 %1586 to i32*

  %870 = load i32, i32* %869

  %871 = sext i32 %870 to i64

  %872 = mul nsw i64 %871, 36

  %873 = add i64 %872, %868

  %874 = add i64 %873, 16

  %875 = inttoptr i64 %874 to float*

  %876 = load float, float* %875

  store float %876, float* %1590, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1592, align 1, !tbaa !1265

  %877 = load i64, i64* bitcast (%volatility_type* @volatility to i64*)

  %878 = shl nsw i64 %871, 2

  %879 = add i64 %878, %877

  %880 = load <2 x float>, <2 x float>* %1597, align 1

  %881 = extractelement <2 x float> %880, i32 0

  %882 = inttoptr i64 %879 to float*

  store float %881, float* %882

  %883 = load i64, i64* bitcast (%data_type* @data to i64*)

  %884 = inttoptr i64 %1586 to i32*

  %885 = load i32, i32* %884

  %886 = sext i32 %885 to i64

  %887 = mul nsw i64 %886, 36

  %888 = add i64 %887, %883

  %889 = add i64 %888, 20

  %890 = inttoptr i64 %889 to float*

  %891 = load float, float* %890

  store float %891, float* %1590, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1592, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1594, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1596, align 1, !tbaa !1265

  %892 = load i64, i64* bitcast (%otime_type* @otime to i64*)

  store i64 %892, i64* %11, align 8, !tbaa !1240

  %893 = shl nsw i64 %886, 2

  %894 = add i64 %893, %892

  %895 = load <2 x float>, <2 x float>* %1597, align 1

  %896 = extractelement <2 x float> %895, i32 0

  %897 = inttoptr i64 %894 to float*

  store float %896, float* %897

  %898 = inttoptr i64 %1586 to i32*

  %899 = load i32, i32* %898

  %900 = add i32 %899, 1

  %901 = inttoptr i64 %1586 to i32*

  store i32 %900, i32* %901

  %902 = add i64 %1013, -16

  br label %block_401438



block_401777:                                     ; preds = %block_401767

  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 571), i64* %12, align 8, !tbaa !1240

  %903 = add i64 %408, -56

  %904 = inttoptr i64 %903 to i64*

  %905 = load i64, i64* %904

  %906 = load i64, i64* bitcast (%prices_type* @prices to i64*)

  %907 = sext i32 %412 to i64

  store i64 %907, i64* %10, align 8, !tbaa !1240

  %908 = shl nsw i64 %907, 2

  %909 = add i64 %908, %906

  %910 = inttoptr i64 %909 to float*

  %911 = load float, float* %910

  store float %911, float* %1590, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1592, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1594, align 1, !tbaa !1265

  store float 0.000000e+00, float* %1596, align 1, !tbaa !1265

  %912 = load <2 x float>, <2 x float>* %1597, align 1

  %913 = extractelement <2 x float> %912, i32 0

  %914 = fpext float %913 to double

  store double %914, double* %273, align 1, !tbaa !1267

  %915 = add i64 %426, 42

  %916 = load i64, i64* %14, align 8, !tbaa !1240

  %917 = add i64 %916, -8

  %918 = inttoptr i64 %917 to i64*

  store i64 %915, i64* %918

  %919 = inttoptr i64 %916 to i64*

  %920 = load i64, i64* %919

  %921 = add i64 %916, 8

  %922 = inttoptr i64 %921 to i64*

  %923 = load i64, i64* %922

  %924 = add i64 %916, 16

  %925 = inttoptr i64 %924 to i64*

  %926 = load i64, i64* %925

  %927 = add i64 %916, 24

  %928 = inttoptr i64 %927 to i64*

  %929 = load i64, i64* %928

  %930 = add i64 %916, 32

  %931 = inttoptr i64 %930 to i64*

  %932 = load i64, i64* %931

  %933 = add i64 %916, 40

  %934 = inttoptr i64 %933 to i64*

  %935 = load i64, i64* %934

  %936 = add i64 %916, 48

  %937 = inttoptr i64 %936 to i64*

  %938 = load i64, i64* %937

  %939 = add i64 %916, 56

  %940 = inttoptr i64 %939 to i64*

  %941 = load i64, i64* %940

  %942 = add i64 %916, 64

  %943 = inttoptr i64 %942 to i64*

  %944 = load i64, i64* %943

  %945 = add i64 %916, 72

  %946 = inttoptr i64 %945 to i64*

  %947 = load i64, i64* %946

  %948 = inttoptr i64 %917 to i64*

  %949 = load i64, i64* %948

  store i64 %949, i64* %3, align 8, !alias.scope !1404, !noalias !1407

  store i64 %916, i64* %14, align 8, !alias.scope !1404, !noalias !1407

  %950 = tail call i64 @fprintf(i64 %905, i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 571), i64 %274, i64 %907, i64 %275, i64 %276, i64 %920, i64 %923, i64 %926, i64 %929, i64 %932, i64 %935, i64 %938, i64 %941, i64 %944, i64 %947), !noalias !1404

  %951 = load i64, i64* %15, align 8

  %952 = add i64 %951, -84

  %953 = trunc i64 %950 to i32

  %954 = load i64, i64* %3, align 8

  %955 = inttoptr i64 %952 to i32*

  store i32 %953, i32* %955

  %956 = add i64 %954, 7

  %957 = inttoptr i64 %952 to i32*

  %958 = load i32, i32* %957

  store i8 0, i8* %41, align 1, !tbaa !1244

  %959 = and i32 %958, 255

  %960 = tail call i32 @llvm.ctpop.i32(i32 %959) #11

  %961 = trunc i32 %960 to i8

  %962 = and i8 %961, 1

  %963 = xor i8 %962, 1

  store i8 %963, i8* %42, align 1, !tbaa !1258

  store i8 0, i8* %43, align 1, !tbaa !1262

  %964 = icmp eq i32 %958, 0

  %965 = zext i1 %964 to i8

  store i8 %965, i8* %44, align 1, !tbaa !1259

  %966 = lshr i32 %958, 31

  %967 = trunc i32 %966 to i8

  store i8 %967, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  %968 = icmp ne i8 %967, 0

  %969 = select i1 %968, i64 6, i64 64

  %970 = add i64 %956, %969

  br i1 %968, label %block_4017ae, label %block_4017e8



block_4012be:                                     ; preds = %block_40114c

  %971 = add i64 %1147, -64

  %972 = inttoptr i64 %971 to i32*

  %973 = load i32, i32* %972

  %974 = add i32 %973, 1

  %975 = inttoptr i64 %971 to i32*

  store i32 %974, i32* %975

  %976 = add i64 %1176, -386

  br label %block_40113c



block_40113c:                                     ; preds = %block_401100, %block_4012be

  %977 = phi i64 [ %2082, %block_401100 ], [ %976, %block_4012be ]

  %978 = phi i64 [ %2080, %block_401100 ], [ %1147, %block_4012be ]

  %979 = phi %struct.Memory* [ %1720, %block_401100 ], [ %979, %block_4012be ]

  %980 = add i64 %978, -64

  %981 = inttoptr i64 %980 to i32*

  %982 = load i32, i32* %981

  %983 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %984 = sub i32 %982, %983

  %985 = lshr i32 %984, 31

  %986 = trunc i32 %985 to i8

  %987 = lshr i32 %982, 31

  %988 = lshr i32 %983, 31

  %989 = xor i32 %988, %987

  %990 = xor i32 %985, %987

  %991 = add nuw nsw i32 %990, %989

  %992 = icmp eq i32 %991, 2

  %993 = icmp ne i8 %986, 0

  %994 = xor i1 %993, %992

  %995 = select i1 %994, i64 16, i64 405

  %996 = add i64 %977, %995

  br i1 %994, label %block_40114c, label %block_4012d1



block_401438:                                     ; preds = %block_401312, %block_401448

  %997 = phi i64 [ %1587, %block_401312 ], [ %902, %block_401448 ]

  %998 = phi %struct.Memory* [ %979, %block_401312 ], [ %998, %block_401448 ]

  %999 = inttoptr i64 %1586 to i32*

  %1000 = load i32, i32* %999

  %1001 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1002 = sub i32 %1000, %1001

  %1003 = lshr i32 %1002, 31

  %1004 = lshr i32 %1000, 31

  %1005 = lshr i32 %1001, 31

  %1006 = xor i32 %1005, %1004

  %1007 = xor i32 %1003, %1004

  %1008 = add nuw nsw i32 %1007, %1006

  %1009 = icmp eq i32 %1008, 2

  %1010 = icmp ne i32 %1003, 0

  %1011 = xor i1 %1010, %1009

  %1012 = select i1 %1011, i64 16, i64 285

  %1013 = add i64 %997, %1012

  br i1 %1011, label %block_401448, label %block_401555



block_40114c:                                     ; preds = %block_40113c

  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 362), i64* %12, align 8, !tbaa !1240

  %1014 = add i64 %978, -56

  %1015 = inttoptr i64 %1014 to i64*

  %1016 = load i64, i64* %1015

  store i64 %1016, i64* %13, align 8, !tbaa !1240

  %1017 = load i64, i64* bitcast (%data_type* @data to i64*)

  %1018 = sext i32 %982 to i64

  %1019 = mul nsw i64 %1018, 36

  %1020 = add i64 %1019, %1017

  store i64 %1020, i64* %8, align 8, !tbaa !1240

  %1021 = add i64 %1020, 4

  store i64 %1021, i64* %10, align 8, !tbaa !1240

  %1022 = load i64, i64* %15, align 8

  %1023 = add i64 %1022, -64

  %1024 = inttoptr i64 %1023 to i32*

  %1025 = load i32, i32* %1024

  %1026 = sext i32 %1025 to i64

  %1027 = mul nsw i64 %1026, 36

  %1028 = add i64 %1027, %1017

  %1029 = add i64 %1028, 8

  store i64 %1029, i64* %11, align 8, !tbaa !1240

  %1030 = load i64, i64* %15, align 8

  %1031 = add i64 %1030, -64

  %1032 = inttoptr i64 %1031 to i32*

  %1033 = load i32, i32* %1032

  %1034 = sext i32 %1033 to i64

  %1035 = mul nsw i64 %1034, 36

  %1036 = add i64 %1035, %1017

  %1037 = add i64 %1036, 12

  store i64 %1037, i64* %16, align 8, !tbaa !1240

  %1038 = load i64, i64* %15, align 8

  %1039 = add i64 %1038, -64

  %1040 = inttoptr i64 %1039 to i32*

  %1041 = load i32, i32* %1040

  %1042 = sext i32 %1041 to i64

  %1043 = mul nsw i64 %1042, 36

  %1044 = add i64 %1043, %1017

  %1045 = add i64 %1044, 16

  store i64 %1045, i64* %17, align 8, !tbaa !1240

  %1046 = load i64, i64* %15, align 8

  %1047 = add i64 %1046, -64

  %1048 = inttoptr i64 %1047 to i32*

  %1049 = load i32, i32* %1048

  %1050 = sext i32 %1049 to i64

  %1051 = mul nsw i64 %1050, 36

  %1052 = add i64 %1051, %1017

  %1053 = add i64 %1052, 20

  store i64 %1053, i64* %18, align 8, !tbaa !1240

  %1054 = load i64, i64* %15, align 8

  %1055 = add i64 %1054, -64

  %1056 = inttoptr i64 %1055 to i32*

  %1057 = load i32, i32* %1056

  %1058 = sext i32 %1057 to i64

  %1059 = mul nsw i64 %1058, 36

  %1060 = add i64 %1059, %1017

  %1061 = add i64 %1060, 24

  store i64 %1061, i64* %19, align 8, !tbaa !1240

  %1062 = load i64, i64* %15, align 8

  %1063 = add i64 %1062, -64

  %1064 = inttoptr i64 %1063 to i32*

  %1065 = load i32, i32* %1064

  %1066 = sext i32 %1065 to i64

  %1067 = mul nsw i64 %1066, 36

  %1068 = add i64 %1067, %1017

  %1069 = add i64 %1068, 28

  store i64 %1069, i64* %9, align 8, !tbaa !1240

  %1070 = load i64, i64* %15, align 8

  %1071 = add i64 %1070, -64

  %1072 = inttoptr i64 %1071 to i32*

  %1073 = load i32, i32* %1072

  %1074 = sext i32 %1073 to i64

  %1075 = mul nsw i64 %1074, 36

  %1076 = add i64 %1075, %1017

  %1077 = add i64 %1076, 32

  store i64 %1077, i64* %21, align 8, !tbaa !1240

  %1078 = add i64 %1070, -224

  %1079 = load i64, i64* %11, align 8

  %1080 = inttoptr i64 %1078 to i64*

  store i64 %1079, i64* %1080

  %1081 = load i64, i64* %8, align 8

  store i64 %1081, i64* %11, align 8, !tbaa !1240

  %1082 = load i64, i64* %15, align 8

  %1083 = add i64 %1082, -224

  %1084 = inttoptr i64 %1083 to i64*

  %1085 = load i64, i64* %1084

  %1086 = add i64 %1082, -232

  %1087 = load i64, i64* %16, align 8

  %1088 = inttoptr i64 %1086 to i64*

  store i64 %1087, i64* %1088

  store i64 %1085, i64* %16, align 8, !tbaa !1240

  %1089 = inttoptr i64 %1086 to i64*

  %1090 = load i64, i64* %1089

  store i64 %1090, i64* %22, align 8, !tbaa !1240

  %1091 = add i64 %1082, -240

  %1092 = load i64, i64* %17, align 8

  %1093 = inttoptr i64 %1091 to i64*

  store i64 %1092, i64* %1093

  store i64 %1090, i64* %17, align 8, !tbaa !1240

  %1094 = inttoptr i64 %1091 to i64*

  %1095 = load i64, i64* %1094

  store i64 %1095, i64* %20, align 8, !tbaa !1240

  %1096 = load i64, i64* %14, align 8

  %1097 = inttoptr i64 %1096 to i64*

  store i64 %1095, i64* %1097

  %1098 = add i64 %1096, 8

  %1099 = load i64, i64* %18, align 8

  %1100 = inttoptr i64 %1098 to i64*

  store i64 %1099, i64* %1100

  %1101 = add i64 %1096, 16

  %1102 = load i64, i64* %19, align 8

  %1103 = inttoptr i64 %1101 to i64*

  store i64 %1102, i64* %1103

  %1104 = add i64 %1096, 24

  %1105 = load i64, i64* %9, align 8

  %1106 = inttoptr i64 %1104 to i64*

  store i64 %1105, i64* %1106

  %1107 = add i64 %1096, 32

  %1108 = inttoptr i64 %1107 to i64*

  store i64 %1077, i64* %1108

  %1109 = add i64 %996, 299

  %1110 = add i64 %1096, -8

  %1111 = inttoptr i64 %1110 to i64*

  store i64 %1109, i64* %1111

  %1112 = load i64, i64* %62, align 8, !alias.scope !1409, !noalias !1412

  %1113 = load i64, i64* %61, align 8, !alias.scope !1409, !noalias !1412

  %1114 = load i64, i64* %75, align 8, !alias.scope !1409, !noalias !1412

  %1115 = inttoptr i64 %1096 to i64*

  %1116 = load i64, i64* %1115

  %1117 = add i64 %1096, 8

  %1118 = inttoptr i64 %1117 to i64*

  %1119 = load i64, i64* %1118

  %1120 = add i64 %1096, 16

  %1121 = inttoptr i64 %1120 to i64*

  %1122 = load i64, i64* %1121

  %1123 = add i64 %1096, 24

  %1124 = inttoptr i64 %1123 to i64*

  %1125 = load i64, i64* %1124

  %1126 = add i64 %1096, 32

  %1127 = inttoptr i64 %1126 to i64*

  %1128 = load i64, i64* %1127

  %1129 = add i64 %1096, 40

  %1130 = inttoptr i64 %1129 to i64*

  %1131 = load i64, i64* %1130

  %1132 = add i64 %1096, 48

  %1133 = inttoptr i64 %1132 to i64*

  %1134 = load i64, i64* %1133

  %1135 = add i64 %1096, 56

  %1136 = inttoptr i64 %1135 to i64*

  %1137 = load i64, i64* %1136

  %1138 = add i64 %1096, 64

  %1139 = inttoptr i64 %1138 to i64*

  %1140 = load i64, i64* %1139

  %1141 = add i64 %1096, 72

  %1142 = inttoptr i64 %1141 to i64*

  %1143 = load i64, i64* %1142

  %1144 = inttoptr i64 %1110 to i64*

  %1145 = load i64, i64* %1144

  store i64 %1145, i64* %3, align 8, !alias.scope !1409, !noalias !1412

  store i64 %1096, i64* %14, align 8, !alias.scope !1409, !noalias !1412

  %1146 = tail call i64 @__isoc99_fscanf(i64 %1112, i64 %1113, i64 %1081, i64 %1114, i64 %1085, i64 %1090, i64 %1116, i64 %1119, i64 %1122, i64 %1125, i64 %1128, i64 %1131, i64 %1134, i64 %1137, i64 %1140, i64 %1143), !noalias !1409

  %1147 = load i64, i64* %15, align 8

  %1148 = add i64 %1147, -84

  %1149 = trunc i64 %1146 to i32

  %1150 = load i64, i64* %3, align 8

  %1151 = inttoptr i64 %1148 to i32*

  store i32 %1149, i32* %1151

  %1152 = inttoptr i64 %1148 to i32*

  %1153 = load i32, i32* %1152

  %1154 = add i32 %1153, -9

  %1155 = icmp ult i32 %1153, 9

  %1156 = zext i1 %1155 to i8

  store i8 %1156, i8* %41, align 1, !tbaa !1244

  %1157 = and i32 %1154, 255

  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157) #11

  %1159 = trunc i32 %1158 to i8

  %1160 = and i8 %1159, 1

  %1161 = xor i8 %1160, 1

  store i8 %1161, i8* %42, align 1, !tbaa !1258

  %1162 = xor i32 %1154, %1153

  %1163 = lshr i32 %1162, 4

  %1164 = trunc i32 %1163 to i8

  %1165 = and i8 %1164, 1

  store i8 %1165, i8* %43, align 1, !tbaa !1262

  %1166 = icmp eq i32 %1154, 0

  %1167 = zext i1 %1166 to i8

  store i8 %1167, i8* %44, align 1, !tbaa !1259

  %1168 = lshr i32 %1154, 31

  %1169 = trunc i32 %1168 to i8

  store i8 %1169, i8* %45, align 1, !tbaa !1260

  %1170 = lshr i32 %1153, 31

  %1171 = xor i32 %1168, %1170

  %1172 = add nuw nsw i32 %1171, %1170

  %1173 = icmp eq i32 %1172, 2

  %1174 = zext i1 %1173 to i8

  store i8 %1174, i8* %46, align 1, !tbaa !1261

  %1175 = select i1 %1166, i64 71, i64 13

  %1176 = add i64 %1150, %1175

  br i1 %1166, label %block_4012be, label %block_401284



block_4017ae:                                     ; preds = %block_401777

  store i64 ptrtoint (%outputFile_type* @outputFile to i64), i64* %12, align 8, !tbaa !1240

  %1177 = add i64 %970, 27

  %1178 = load i64, i64* %14, align 8, !tbaa !1240

  %1179 = add i64 %1178, -8

  %1180 = inttoptr i64 %1179 to i64*

  store i64 %1177, i64* %1180

  %1181 = load i64, i64* %11, align 8, !alias.scope !1414, !noalias !1417

  %1182 = load i64, i64* %75, align 8, !alias.scope !1414, !noalias !1417

  %1183 = load i64, i64* %76, align 8, !alias.scope !1414, !noalias !1417

  %1184 = load i64, i64* %17, align 8, !alias.scope !1414, !noalias !1417

  %1185 = inttoptr i64 %1178 to i64*

  %1186 = load i64, i64* %1185

  %1187 = add i64 %1178, 8

  %1188 = inttoptr i64 %1187 to i64*

  %1189 = load i64, i64* %1188

  %1190 = add i64 %1178, 16

  %1191 = inttoptr i64 %1190 to i64*

  %1192 = load i64, i64* %1191

  %1193 = add i64 %1178, 24

  %1194 = inttoptr i64 %1193 to i64*

  %1195 = load i64, i64* %1194

  %1196 = add i64 %1178, 32

  %1197 = inttoptr i64 %1196 to i64*

  %1198 = load i64, i64* %1197

  %1199 = add i64 %1178, 40

  %1200 = inttoptr i64 %1199 to i64*

  %1201 = load i64, i64* %1200

  %1202 = add i64 %1178, 48

  %1203 = inttoptr i64 %1202 to i64*

  %1204 = load i64, i64* %1203

  %1205 = add i64 %1178, 56

  %1206 = inttoptr i64 %1205 to i64*

  %1207 = load i64, i64* %1206

  %1208 = add i64 %1178, 64

  %1209 = inttoptr i64 %1208 to i64*

  %1210 = load i64, i64* %1209

  %1211 = add i64 %1178, 72

  %1212 = inttoptr i64 %1211 to i64*

  %1213 = load i64, i64* %1212

  %1214 = inttoptr i64 %1179 to i64*

  %1215 = load i64, i64* %1214

  store i64 %1215, i64* %3, align 8, !alias.scope !1414, !noalias !1417

  store i64 %1178, i64* %14, align 8, !alias.scope !1414, !noalias !1417

  %1216 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 533), i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 %1181, i64 %1182, i64 %1183, i64 %1184, i64 %1186, i64 %1189, i64 %1192, i64 %1195, i64 %1198, i64 %1201, i64 %1204, i64 %1207, i64 %1210, i64 %1213), !noalias !1414

  %1217 = load i64, i64* %15, align 8

  %1218 = add i64 %1217, -56

  %1219 = load i64, i64* %3, align 8

  %1220 = inttoptr i64 %1218 to i64*

  %1221 = load i64, i64* %1220

  %1222 = add i64 %1217, -304

  %1223 = trunc i64 %1216 to i32

  %1224 = inttoptr i64 %1222 to i32*

  store i32 %1223, i32* %1224

  %1225 = add i64 %1219, 15

  %1226 = load i64, i64* %14, align 8, !tbaa !1240

  %1227 = add i64 %1226, -8

  %1228 = inttoptr i64 %1227 to i64*

  store i64 %1225, i64* %1228

  %1229 = inttoptr i64 %1227 to i64*

  %1230 = load i64, i64* %1229

  store i64 %1230, i64* %3, align 8, !alias.scope !1419, !noalias !1422

  store i64 %1226, i64* %14, align 8, !alias.scope !1419, !noalias !1422

  %1231 = tail call i64 @fclose(i64 %1221), !noalias !1419

  %1232 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1233 = load i64, i64* %15, align 8

  %1234 = add i64 %1233, -308

  %1235 = trunc i64 %1231 to i32

  %1236 = inttoptr i64 %1234 to i32*

  store i32 %1235, i32* %1236

  %1237 = add i64 %1232, 16

  %1238 = load i64, i64* %14, align 8, !tbaa !1240

  %1239 = add i64 %1238, -8

  %1240 = inttoptr i64 %1239 to i64*

  store i64 %1237, i64* %1240

  %1241 = inttoptr i64 %1239 to i64*

  %1242 = load i64, i64* %1241

  store i64 %1242, i64* %3, align 8, !alias.scope !1424, !noalias !1427

  store i64 %1238, i64* %14, align 8, !alias.scope !1424, !noalias !1427

  %1243 = tail call i64 @exit(i64 1), !noalias !1424

  store i64 %1243, i64* %60, align 8, !alias.scope !1424, !noalias !1427

  %1244 = load i64, i64* %3, align 8

  %1245 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1244, %struct.Memory* %409)

  ret %struct.Memory* %1245



block_4010ac:                                     ; preds = %block_401098

  %1246 = add i64 %1380, 17

  %1247 = load i64, i64* %14, align 8, !tbaa !1240

  %1248 = add i64 %1247, -8

  %1249 = inttoptr i64 %1248 to i64*

  store i64 %1246, i64* %1249

  %1250 = load i64, i64* %61, align 8, !alias.scope !1429, !noalias !1432

  %1251 = load i64, i64* %11, align 8, !alias.scope !1429, !noalias !1432

  %1252 = load i64, i64* %75, align 8, !alias.scope !1429, !noalias !1432

  %1253 = load i64, i64* %76, align 8, !alias.scope !1429, !noalias !1432

  %1254 = load i64, i64* %17, align 8, !alias.scope !1429, !noalias !1432

  %1255 = inttoptr i64 %1247 to i64*

  %1256 = load i64, i64* %1255

  %1257 = add i64 %1247, 8

  %1258 = inttoptr i64 %1257 to i64*

  %1259 = load i64, i64* %1258

  %1260 = add i64 %1247, 16

  %1261 = inttoptr i64 %1260 to i64*

  %1262 = load i64, i64* %1261

  %1263 = add i64 %1247, 24

  %1264 = inttoptr i64 %1263 to i64*

  %1265 = load i64, i64* %1264

  %1266 = add i64 %1247, 32

  %1267 = inttoptr i64 %1266 to i64*

  %1268 = load i64, i64* %1267

  %1269 = add i64 %1247, 40

  %1270 = inttoptr i64 %1269 to i64*

  %1271 = load i64, i64* %1270

  %1272 = add i64 %1247, 48

  %1273 = inttoptr i64 %1272 to i64*

  %1274 = load i64, i64* %1273

  %1275 = add i64 %1247, 56

  %1276 = inttoptr i64 %1275 to i64*

  %1277 = load i64, i64* %1276

  %1278 = add i64 %1247, 64

  %1279 = inttoptr i64 %1278 to i64*

  %1280 = load i64, i64* %1279

  %1281 = add i64 %1247, 72

  %1282 = inttoptr i64 %1281 to i64*

  %1283 = load i64, i64* %1282

  %1284 = inttoptr i64 %1248 to i64*

  %1285 = load i64, i64* %1284

  store i64 %1285, i64* %3, align 8, !alias.scope !1429, !noalias !1432

  store i64 %1247, i64* %14, align 8, !alias.scope !1429, !noalias !1432

  %1286 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 234), i64 %1250, i64 %1251, i64 %1252, i64 %1253, i64 %1254, i64 %1256, i64 %1259, i64 %1262, i64 %1265, i64 %1268, i64 %1271, i64 %1274, i64 %1277, i64 %1280, i64 %1283), !noalias !1429

  %1287 = load i64, i64* %3, align 8

  %1288 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1289 = zext i32 %1288 to i64

  store i64 %1289, i64* %10, align 8, !tbaa !1240

  store i32 %1288, i32* bitcast (%nThreads_type* @nThreads to i32*)

  %1290 = load i64, i64* %15, align 8

  %1291 = add i64 %1290, -208

  %1292 = trunc i64 %1286 to i32

  %1293 = add i64 %1287, 20

  %1294 = inttoptr i64 %1291 to i32*

  store i32 %1292, i32* %1294

  br label %block_4010d1



block_401726:                                     ; preds = %block_4016fd

  store i64 ptrtoint (%outputFile_type* @outputFile to i64), i64* %12, align 8, !tbaa !1240

  %1295 = add i64 %487, 27

  %1296 = load i64, i64* %14, align 8, !tbaa !1240

  %1297 = add i64 %1296, -8

  %1298 = inttoptr i64 %1297 to i64*

  store i64 %1295, i64* %1298

  %1299 = load i64, i64* %11, align 8, !alias.scope !1434, !noalias !1437

  %1300 = load i64, i64* %75, align 8, !alias.scope !1434, !noalias !1437

  %1301 = load i64, i64* %76, align 8, !alias.scope !1434, !noalias !1437

  %1302 = load i64, i64* %17, align 8, !alias.scope !1434, !noalias !1437

  %1303 = inttoptr i64 %1296 to i64*

  %1304 = load i64, i64* %1303

  %1305 = add i64 %1296, 8

  %1306 = inttoptr i64 %1305 to i64*

  %1307 = load i64, i64* %1306

  %1308 = add i64 %1296, 16

  %1309 = inttoptr i64 %1308 to i64*

  %1310 = load i64, i64* %1309

  %1311 = add i64 %1296, 24

  %1312 = inttoptr i64 %1311 to i64*

  %1313 = load i64, i64* %1312

  %1314 = add i64 %1296, 32

  %1315 = inttoptr i64 %1314 to i64*

  %1316 = load i64, i64* %1315

  %1317 = add i64 %1296, 40

  %1318 = inttoptr i64 %1317 to i64*

  %1319 = load i64, i64* %1318

  %1320 = add i64 %1296, 48

  %1321 = inttoptr i64 %1320 to i64*

  %1322 = load i64, i64* %1321

  %1323 = add i64 %1296, 56

  %1324 = inttoptr i64 %1323 to i64*

  %1325 = load i64, i64* %1324

  %1326 = add i64 %1296, 64

  %1327 = inttoptr i64 %1326 to i64*

  %1328 = load i64, i64* %1327

  %1329 = add i64 %1296, 72

  %1330 = inttoptr i64 %1329 to i64*

  %1331 = load i64, i64* %1330

  %1332 = inttoptr i64 %1297 to i64*

  %1333 = load i64, i64* %1332

  store i64 %1333, i64* %3, align 8, !alias.scope !1434, !noalias !1437

  store i64 %1296, i64* %14, align 8, !alias.scope !1434, !noalias !1437

  %1334 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 533), i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 %1299, i64 %1300, i64 %1301, i64 %1302, i64 %1304, i64 %1307, i64 %1310, i64 %1313, i64 %1316, i64 %1319, i64 %1322, i64 %1325, i64 %1328, i64 %1331), !noalias !1434

  %1335 = load i64, i64* %15, align 8

  %1336 = add i64 %1335, -56

  %1337 = load i64, i64* %3, align 8

  %1338 = inttoptr i64 %1336 to i64*

  %1339 = load i64, i64* %1338

  %1340 = add i64 %1335, -296

  %1341 = trunc i64 %1334 to i32

  %1342 = inttoptr i64 %1340 to i32*

  store i32 %1341, i32* %1342

  %1343 = add i64 %1337, 15

  %1344 = load i64, i64* %14, align 8, !tbaa !1240

  %1345 = add i64 %1344, -8

  %1346 = inttoptr i64 %1345 to i64*

  store i64 %1343, i64* %1346

  %1347 = inttoptr i64 %1345 to i64*

  %1348 = load i64, i64* %1347

  store i64 %1348, i64* %3, align 8, !alias.scope !1439, !noalias !1442

  store i64 %1344, i64* %14, align 8, !alias.scope !1439, !noalias !1442

  %1349 = tail call i64 @fclose(i64 %1339), !noalias !1439

  %1350 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1351 = load i64, i64* %15, align 8

  %1352 = add i64 %1351, -300

  %1353 = trunc i64 %1349 to i32

  %1354 = inttoptr i64 %1352 to i32*

  store i32 %1353, i32* %1354

  %1355 = add i64 %1350, 16

  %1356 = load i64, i64* %14, align 8, !tbaa !1240

  %1357 = add i64 %1356, -8

  %1358 = inttoptr i64 %1357 to i64*

  store i64 %1355, i64* %1358

  %1359 = inttoptr i64 %1357 to i64*

  %1360 = load i64, i64* %1359

  store i64 %1360, i64* %3, align 8, !alias.scope !1444, !noalias !1447

  store i64 %1356, i64* %14, align 8, !alias.scope !1444, !noalias !1447

  %1361 = tail call i64 @exit(i64 1), !noalias !1444

  store i64 %1361, i64* %60, align 8, !alias.scope !1444, !noalias !1447

  %1362 = load i64, i64* %3, align 8

  %1363 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1362, %struct.Memory* %1977)

  ret %struct.Memory* %1363



block_401098:                                     ; preds = %block_401032

  %1364 = load i32, i32* bitcast (%nThreads_type* @nThreads to i32*)

  %1365 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1366 = sub i32 %1364, %1365

  %1367 = icmp eq i32 %1366, 0

  %1368 = lshr i32 %1366, 31

  %1369 = trunc i32 %1368 to i8

  %1370 = lshr i32 %1364, 31

  %1371 = lshr i32 %1365, 31

  %1372 = xor i32 %1371, %1370

  %1373 = xor i32 %1368, %1370

  %1374 = add nuw nsw i32 %1373, %1372

  %1375 = icmp eq i32 %1374, 2

  %1376 = icmp ne i8 %1369, 0

  %1377 = xor i1 %1376, %1375

  %1378 = or i1 %1367, %1377

  %1379 = select i1 %1378, i64 57, i64 20

  %1380 = add i64 %1824, %1379

  br i1 %1378, label %block_4010d1, label %block_4010ac



block_4012e7:                                     ; preds = %block_4012d1

  store i64 ptrtoint (%inputFile_type* @inputFile to i64), i64* %12, align 8, !tbaa !1240

  %1381 = add i64 %1975, 27

  %1382 = load i64, i64* %14, align 8, !tbaa !1240

  %1383 = add i64 %1382, -8

  %1384 = inttoptr i64 %1383 to i64*

  store i64 %1381, i64* %1384

  %1385 = load i64, i64* %11, align 8, !alias.scope !1449, !noalias !1452

  %1386 = load i64, i64* %75, align 8, !alias.scope !1449, !noalias !1452

  %1387 = load i64, i64* %76, align 8, !alias.scope !1449, !noalias !1452

  %1388 = load i64, i64* %17, align 8, !alias.scope !1449, !noalias !1452

  %1389 = inttoptr i64 %1382 to i64*

  %1390 = load i64, i64* %1389

  %1391 = add i64 %1382, 8

  %1392 = inttoptr i64 %1391 to i64*

  %1393 = load i64, i64* %1392

  %1394 = add i64 %1382, 16

  %1395 = inttoptr i64 %1394 to i64*

  %1396 = load i64, i64* %1395

  %1397 = add i64 %1382, 24

  %1398 = inttoptr i64 %1397 to i64*

  %1399 = load i64, i64* %1398

  %1400 = add i64 %1382, 32

  %1401 = inttoptr i64 %1400 to i64*

  %1402 = load i64, i64* %1401

  %1403 = add i64 %1382, 40

  %1404 = inttoptr i64 %1403 to i64*

  %1405 = load i64, i64* %1404

  %1406 = add i64 %1382, 48

  %1407 = inttoptr i64 %1406 to i64*

  %1408 = load i64, i64* %1407

  %1409 = add i64 %1382, 56

  %1410 = inttoptr i64 %1409 to i64*

  %1411 = load i64, i64* %1410

  %1412 = add i64 %1382, 64

  %1413 = inttoptr i64 %1412 to i64*

  %1414 = load i64, i64* %1413

  %1415 = add i64 %1382, 72

  %1416 = inttoptr i64 %1415 to i64*

  %1417 = load i64, i64* %1416

  %1418 = inttoptr i64 %1383 to i64*

  %1419 = load i64, i64* %1418

  store i64 %1419, i64* %3, align 8, !alias.scope !1449, !noalias !1452

  store i64 %1382, i64* %14, align 8, !alias.scope !1449, !noalias !1452

  %1420 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 389), i64 ptrtoint (%inputFile_type* @inputFile to i64), i64 %1385, i64 %1386, i64 %1387, i64 %1388, i64 %1390, i64 %1393, i64 %1396, i64 %1399, i64 %1402, i64 %1405, i64 %1408, i64 %1411, i64 %1414, i64 %1417), !noalias !1449

  %1421 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1422 = load i64, i64* %15, align 8

  %1423 = add i64 %1422, -252

  %1424 = trunc i64 %1420 to i32

  %1425 = inttoptr i64 %1423 to i32*

  store i32 %1424, i32* %1425

  %1426 = add i64 %1421, 16

  %1427 = load i64, i64* %14, align 8, !tbaa !1240

  %1428 = add i64 %1427, -8

  %1429 = inttoptr i64 %1428 to i64*

  store i64 %1426, i64* %1429

  %1430 = inttoptr i64 %1428 to i64*

  %1431 = load i64, i64* %1430

  store i64 %1431, i64* %3, align 8, !alias.scope !1454, !noalias !1457

  store i64 %1427, i64* %14, align 8, !alias.scope !1454, !noalias !1457

  %1432 = tail call i64 @exit(i64 1), !noalias !1454

  store i64 %1432, i64* %60, align 8, !alias.scope !1454, !noalias !1457

  %1433 = load i64, i64* %3, align 8

  %1434 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1433, %struct.Memory* %979)

  ret %struct.Memory* %1434



block_401312:                                     ; preds = %block_4012d1

  %1435 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1436 = zext i32 %1435 to i64

  %1437 = add i64 %1975, 24

  %1438 = load i64, i64* %14, align 8, !tbaa !1240

  %1439 = add i64 %1438, -8

  %1440 = inttoptr i64 %1439 to i64*

  store i64 %1437, i64* %1440

  %1441 = load i64, i64* %11, align 8, !alias.scope !1459, !noalias !1462

  %1442 = load i64, i64* %75, align 8, !alias.scope !1459, !noalias !1462

  %1443 = load i64, i64* %76, align 8, !alias.scope !1459, !noalias !1462

  %1444 = load i64, i64* %17, align 8, !alias.scope !1459, !noalias !1462

  %1445 = inttoptr i64 %1438 to i64*

  %1446 = load i64, i64* %1445

  %1447 = add i64 %1438, 8

  %1448 = inttoptr i64 %1447 to i64*

  %1449 = load i64, i64* %1448

  %1450 = add i64 %1438, 16

  %1451 = inttoptr i64 %1450 to i64*

  %1452 = load i64, i64* %1451

  %1453 = add i64 %1438, 24

  %1454 = inttoptr i64 %1453 to i64*

  %1455 = load i64, i64* %1454

  %1456 = add i64 %1438, 32

  %1457 = inttoptr i64 %1456 to i64*

  %1458 = load i64, i64* %1457

  %1459 = add i64 %1438, 40

  %1460 = inttoptr i64 %1459 to i64*

  %1461 = load i64, i64* %1460

  %1462 = add i64 %1438, 48

  %1463 = inttoptr i64 %1462 to i64*

  %1464 = load i64, i64* %1463

  %1465 = add i64 %1438, 56

  %1466 = inttoptr i64 %1465 to i64*

  %1467 = load i64, i64* %1466

  %1468 = add i64 %1438, 64

  %1469 = inttoptr i64 %1468 to i64*

  %1470 = load i64, i64* %1469

  %1471 = add i64 %1438, 72

  %1472 = inttoptr i64 %1471 to i64*

  %1473 = load i64, i64* %1472

  %1474 = inttoptr i64 %1439 to i64*

  %1475 = load i64, i64* %1474

  store i64 %1475, i64* %3, align 8, !alias.scope !1459, !noalias !1462

  store i64 %1438, i64* %14, align 8, !alias.scope !1459, !noalias !1462

  %1476 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 424), i64 %1436, i64 %1441, i64 %1442, i64 %1443, i64 %1444, i64 %1446, i64 %1449, i64 %1452, i64 %1455, i64 %1458, i64 %1461, i64 %1464, i64 %1467, i64 %1470, i64 %1473), !noalias !1459

  %1477 = load i64, i64* %3, align 8

  %1478 = load i64, i64* %15, align 8

  %1479 = add i64 %1478, -256

  %1480 = trunc i64 %1476 to i32

  %1481 = inttoptr i64 %1479 to i32*

  store i32 %1480, i32* %1481

  %1482 = add i64 %1477, 28

  %1483 = load i64, i64* %14, align 8, !tbaa !1240

  %1484 = add i64 %1483, -8

  %1485 = inttoptr i64 %1484 to i64*

  store i64 %1482, i64* %1485

  %1486 = load i64, i64* %11, align 8, !alias.scope !1464, !noalias !1467

  %1487 = load i64, i64* %75, align 8, !alias.scope !1464, !noalias !1467

  %1488 = load i64, i64* %76, align 8, !alias.scope !1464, !noalias !1467

  %1489 = load i64, i64* %17, align 8, !alias.scope !1464, !noalias !1467

  %1490 = inttoptr i64 %1483 to i64*

  %1491 = load i64, i64* %1490

  %1492 = add i64 %1483, 8

  %1493 = inttoptr i64 %1492 to i64*

  %1494 = load i64, i64* %1493

  %1495 = add i64 %1483, 16

  %1496 = inttoptr i64 %1495 to i64*

  %1497 = load i64, i64* %1496

  %1498 = add i64 %1483, 24

  %1499 = inttoptr i64 %1498 to i64*

  %1500 = load i64, i64* %1499

  %1501 = add i64 %1483, 32

  %1502 = inttoptr i64 %1501 to i64*

  %1503 = load i64, i64* %1502

  %1504 = add i64 %1483, 40

  %1505 = inttoptr i64 %1504 to i64*

  %1506 = load i64, i64* %1505

  %1507 = add i64 %1483, 48

  %1508 = inttoptr i64 %1507 to i64*

  %1509 = load i64, i64* %1508

  %1510 = add i64 %1483, 56

  %1511 = inttoptr i64 %1510 to i64*

  %1512 = load i64, i64* %1511

  %1513 = add i64 %1483, 64

  %1514 = inttoptr i64 %1513 to i64*

  %1515 = load i64, i64* %1514

  %1516 = add i64 %1483, 72

  %1517 = inttoptr i64 %1516 to i64*

  %1518 = load i64, i64* %1517

  %1519 = inttoptr i64 %1484 to i64*

  %1520 = load i64, i64* %1519

  store i64 %1520, i64* %3, align 8, !alias.scope !1464, !noalias !1467

  store i64 %1483, i64* %14, align 8, !alias.scope !1464, !noalias !1467

  %1521 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 444), i64 100, i64 %1486, i64 %1487, i64 %1488, i64 %1489, i64 %1491, i64 %1494, i64 %1497, i64 %1500, i64 %1503, i64 %1506, i64 %1509, i64 %1512, i64 %1515, i64 %1518), !noalias !1464

  %1522 = load i64, i64* %3, align 8

  %1523 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1524 = sext i32 %1523 to i64

  %1525 = mul i64 %1524, 21474836480

  %1526 = ashr exact i64 %1525, 30

  %1527 = add nsw i64 %1526, 256

  %1528 = load i64, i64* %15, align 8

  %1529 = add i64 %1528, -260

  %1530 = trunc i64 %1521 to i32

  %1531 = inttoptr i64 %1529 to i32*

  store i32 %1530, i32* %1531

  %1532 = add i64 %1522, 33

  %1533 = load i64, i64* %14, align 8, !tbaa !1240

  %1534 = add i64 %1533, -8

  %1535 = inttoptr i64 %1534 to i64*

  store i64 %1532, i64* %1535

  %1536 = inttoptr i64 %1534 to i64*

  %1537 = load i64, i64* %1536

  store i64 %1537, i64* %3, align 8, !alias.scope !1469, !noalias !1472

  store i64 %1533, i64* %14, align 8, !alias.scope !1469, !noalias !1472

  %1538 = tail call i64 @malloc(i64 %1527)

  %1539 = load i64, i64* %15, align 8

  %1540 = add i64 %1539, -72

  %1541 = load i64, i64* %3, align 8

  %1542 = inttoptr i64 %1540 to i64*

  store i64 %1538, i64* %1542

  %1543 = inttoptr i64 %1540 to i64*

  %1544 = load i64, i64* %1543

  %1545 = add i64 %1544, 256

  %1546 = and i64 %1545, -64

  store i64 %1546, i64* bitcast (%sptprice_type* @sptprice to i64*)

  %1547 = load i64, i64* bitcast (%sptprice_type* @sptprice to i64*)

  %1548 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1549 = sext i32 %1548 to i64

  %1550 = shl nsw i64 %1549, 2

  %1551 = add i64 %1550, %1547

  store i64 %1551, i64* bitcast (%strike_type* @strike to i64*)

  %1552 = load i64, i64* bitcast (%strike_type* @strike to i64*)

  %1553 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1554 = sext i32 %1553 to i64

  %1555 = shl nsw i64 %1554, 2

  %1556 = add i64 %1555, %1552

  store i64 %1556, i64* bitcast (%rate_type* @rate to i64*)

  %1557 = load i64, i64* bitcast (%rate_type* @rate to i64*)

  %1558 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1559 = sext i32 %1558 to i64

  %1560 = shl nsw i64 %1559, 2

  %1561 = add i64 %1560, %1557

  store i64 %1561, i64* bitcast (%volatility_type* @volatility to i64*)

  %1562 = load i64, i64* bitcast (%volatility_type* @volatility to i64*)

  %1563 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1564 = sext i32 %1563 to i64

  %1565 = shl nsw i64 %1564, 2

  %1566 = add i64 %1565, %1562

  store i64 %1566, i64* bitcast (%otime_type* @otime to i64*)

  %1567 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %1568 = sext i32 %1567 to i64

  %1569 = shl nsw i64 %1568, 2

  %1570 = add nsw i64 %1569, 256

  %1571 = add i64 %1541, 176

  %1572 = load i64, i64* %14, align 8, !tbaa !1240

  %1573 = add i64 %1572, -8

  %1574 = inttoptr i64 %1573 to i64*

  store i64 %1571, i64* %1574

  %1575 = inttoptr i64 %1573 to i64*

  %1576 = load i64, i64* %1575

  store i64 %1576, i64* %3, align 8, !alias.scope !1474, !noalias !1477

  store i64 %1572, i64* %14, align 8, !alias.scope !1474, !noalias !1477

  %1577 = tail call i64 @malloc(i64 %1570)

  %1578 = load i64, i64* %15, align 8

  %1579 = add i64 %1578, -80

  %1580 = load i64, i64* %3, align 8

  %1581 = inttoptr i64 %1579 to i64*

  store i64 %1577, i64* %1581

  %1582 = inttoptr i64 %1579 to i64*

  %1583 = load i64, i64* %1582

  %1584 = add i64 %1583, 256

  %1585 = and i64 %1584, -64

  store i64 %1585, i64* bitcast (%otype_type* @otype to i64*)

  %1586 = add i64 %1578, -60

  %1587 = add i64 %1580, 33

  %1588 = inttoptr i64 %1586 to i32*

  store i32 0, i32* %1588

  %1589 = bitcast %union.VectorReg* %23 to i8*

  %1590 = bitcast %union.VectorReg* %23 to float*

  %1591 = getelementptr inbounds i8, i8* %1589, i64 4

  %1592 = bitcast i8* %1591 to float*

  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1594 = bitcast i64* %1593 to float*

  %1595 = getelementptr inbounds i8, i8* %1589, i64 12

  %1596 = bitcast i8* %1595 to float*

  %1597 = bitcast %union.VectorReg* %23 to <2 x float>*

  br label %block_401438



block_40183c:                                     ; preds = %block_4017fb

  %1598 = load i64, i64* bitcast (%data_type* @data to i64*)

  %1599 = add i64 %184, 16

  %1600 = load i64, i64* %14, align 8, !tbaa !1240

  %1601 = add i64 %1600, -8

  %1602 = inttoptr i64 %1601 to i64*

  store i64 %1599, i64* %1602

  %1603 = inttoptr i64 %1601 to i64*

  %1604 = load i64, i64* %1603

  store i64 %1604, i64* %3, align 8, !alias.scope !1479, !noalias !1482

  store i64 %1600, i64* %14, align 8, !alias.scope !1479, !noalias !1482

  %1605 = tail call i64 @free(i64 %1598), !noalias !1479

  %1606 = load i64, i64* %3, align 8

  %1607 = load i64, i64* bitcast (%prices_type* @prices to i64*)

  store i64 %1607, i64* %13, align 8, !tbaa !1240

  %1608 = add i64 %1606, 16

  %1609 = load i64, i64* %14, align 8, !tbaa !1240

  %1610 = add i64 %1609, -8

  %1611 = inttoptr i64 %1610 to i64*

  store i64 %1608, i64* %1611

  store i64 %1609, i64* %14, align 8, !alias.scope !1484, !noalias !1487

  %1612 = tail call i64 @free(i64 %1607)

  store i64 0, i64* %8, align 8, !tbaa !1240

  %1613 = load i64, i64* %14, align 8

  %1614 = add i64 %1613, 320

  %1615 = icmp ugt i64 %1613, -321

  %1616 = zext i1 %1615 to i8

  store i8 %1616, i8* %41, align 1, !tbaa !1244

  %1617 = trunc i64 %1614 to i32

  %1618 = and i32 %1617, 255

  %1619 = tail call i32 @llvm.ctpop.i32(i32 %1618) #11

  %1620 = trunc i32 %1619 to i8

  %1621 = and i8 %1620, 1

  %1622 = xor i8 %1621, 1

  store i8 %1622, i8* %42, align 1, !tbaa !1258

  %1623 = xor i64 %1614, %1613

  %1624 = lshr i64 %1623, 4

  %1625 = trunc i64 %1624 to i8

  %1626 = and i8 %1625, 1

  store i8 %1626, i8* %43, align 1, !tbaa !1262

  %1627 = icmp eq i64 %1614, 0

  %1628 = zext i1 %1627 to i8

  store i8 %1628, i8* %44, align 1, !tbaa !1259

  %1629 = lshr i64 %1614, 63

  %1630 = trunc i64 %1629 to i8

  store i8 %1630, i8* %45, align 1, !tbaa !1260

  %1631 = lshr i64 %1613, 63

  %1632 = xor i64 %1629, %1631

  %1633 = add nuw nsw i64 %1632, %1629

  %1634 = icmp eq i64 %1633, 2

  %1635 = zext i1 %1634 to i8

  store i8 %1635, i8* %46, align 1, !tbaa !1261

  %1636 = add i64 %1613, 328

  %1637 = inttoptr i64 %1614 to i64*

  %1638 = load i64, i64* %1637

  store i64 %1638, i64* %9, align 8, !tbaa !1240

  %1639 = add i64 %1613, 336

  %1640 = inttoptr i64 %1636 to i64*

  %1641 = load i64, i64* %1640

  store i64 %1641, i64* %20, align 8, !tbaa !1240

  %1642 = add i64 %1613, 344

  %1643 = inttoptr i64 %1639 to i64*

  %1644 = load i64, i64* %1643

  store i64 %1644, i64* %21, align 8, !tbaa !1240

  %1645 = add i64 %1613, 352

  %1646 = inttoptr i64 %1642 to i64*

  %1647 = load i64, i64* %1646

  store i64 %1647, i64* %22, align 8, !tbaa !1240

  %1648 = add i64 %1613, 360

  %1649 = inttoptr i64 %1645 to i64*

  %1650 = load i64, i64* %1649

  store i64 %1650, i64* %15, align 8, !tbaa !1240

  %1651 = inttoptr i64 %1648 to i64*

  %1652 = load i64, i64* %1651

  store i64 %1652, i64* %3, align 8, !tbaa !1240

  %1653 = add i64 %1613, 368

  store i64 %1653, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %409



block_401663:                                     ; preds = %block_4015d1

  %1654 = add i64 %659, -136

  %1655 = inttoptr i64 %1654 to i64*

  %1656 = load i64, i64* %1655

  %1657 = add i64 %1656, -1

  %1658 = inttoptr i64 %1654 to i64*

  store i64 %1657, i64* %1658

  %1659 = add i64 %659, -128

  %1660 = inttoptr i64 %1659 to i64*

  %1661 = load i64, i64* %1660

  %1662 = add i64 %1661, 1000000

  %1663 = add i64 %658, 32

  %1664 = inttoptr i64 %1659 to i64*

  store i64 %1662, i64* %1664

  br label %block_401683



block_401811:                                     ; preds = %block_4017fb

  store i64 ptrtoint (%outputFile_type* @outputFile to i64), i64* %12, align 8, !tbaa !1240

  %1665 = add i64 %184, 27

  %1666 = load i64, i64* %14, align 8, !tbaa !1240

  %1667 = add i64 %1666, -8

  %1668 = inttoptr i64 %1667 to i64*

  store i64 %1665, i64* %1668

  %1669 = load i64, i64* %11, align 8, !alias.scope !1489, !noalias !1492

  %1670 = load i64, i64* %75, align 8, !alias.scope !1489, !noalias !1492

  %1671 = load i64, i64* %76, align 8, !alias.scope !1489, !noalias !1492

  %1672 = load i64, i64* %17, align 8, !alias.scope !1489, !noalias !1492

  %1673 = inttoptr i64 %1666 to i64*

  %1674 = load i64, i64* %1673

  %1675 = add i64 %1666, 8

  %1676 = inttoptr i64 %1675 to i64*

  %1677 = load i64, i64* %1676

  %1678 = add i64 %1666, 16

  %1679 = inttoptr i64 %1678 to i64*

  %1680 = load i64, i64* %1679

  %1681 = add i64 %1666, 24

  %1682 = inttoptr i64 %1681 to i64*

  %1683 = load i64, i64* %1682

  %1684 = add i64 %1666, 32

  %1685 = inttoptr i64 %1684 to i64*

  %1686 = load i64, i64* %1685

  %1687 = add i64 %1666, 40

  %1688 = inttoptr i64 %1687 to i64*

  %1689 = load i64, i64* %1688

  %1690 = add i64 %1666, 48

  %1691 = inttoptr i64 %1690 to i64*

  %1692 = load i64, i64* %1691

  %1693 = add i64 %1666, 56

  %1694 = inttoptr i64 %1693 to i64*

  %1695 = load i64, i64* %1694

  %1696 = add i64 %1666, 64

  %1697 = inttoptr i64 %1696 to i64*

  %1698 = load i64, i64* %1697

  %1699 = add i64 %1666, 72

  %1700 = inttoptr i64 %1699 to i64*

  %1701 = load i64, i64* %1700

  %1702 = inttoptr i64 %1667 to i64*

  %1703 = load i64, i64* %1702

  store i64 %1703, i64* %3, align 8, !alias.scope !1489, !noalias !1492

  store i64 %1666, i64* %14, align 8, !alias.scope !1489, !noalias !1492

  %1704 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 389), i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 %1669, i64 %1670, i64 %1671, i64 %1672, i64 %1674, i64 %1677, i64 %1680, i64 %1683, i64 %1686, i64 %1689, i64 %1692, i64 %1695, i64 %1698, i64 %1701), !noalias !1489

  %1705 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1706 = load i64, i64* %15, align 8

  %1707 = add i64 %1706, -312

  %1708 = trunc i64 %1704 to i32

  %1709 = inttoptr i64 %1707 to i32*

  store i32 %1708, i32* %1709

  %1710 = add i64 %1705, 16

  %1711 = load i64, i64* %14, align 8, !tbaa !1240

  %1712 = add i64 %1711, -8

  %1713 = inttoptr i64 %1712 to i64*

  store i64 %1710, i64* %1713

  %1714 = inttoptr i64 %1712 to i64*

  %1715 = load i64, i64* %1714

  store i64 %1715, i64* %3, align 8, !alias.scope !1494, !noalias !1497

  store i64 %1711, i64* %14, align 8, !alias.scope !1494, !noalias !1497

  %1716 = tail call i64 @exit(i64 1), !noalias !1494

  store i64 %1716, i64* %60, align 8, !alias.scope !1494, !noalias !1497

  %1717 = load i64, i64* %3, align 8

  %1718 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1717, %struct.Memory* %409)

  ret %struct.Memory* %1718



block_4010d1:                                     ; preds = %block_401098, %block_4010ac

  %1719 = phi i64 [ %1380, %block_401098 ], [ %1293, %block_4010ac ]

  %1720 = phi %struct.Memory* [ %2, %block_401098 ], [ %2, %block_4010ac ]

  %1721 = load i32, i32* bitcast (%nThreads_type* @nThreads to i32*)

  %1722 = add i32 %1721, -1

  %1723 = icmp eq i32 %1721, 0

  %1724 = zext i1 %1723 to i8

  store i8 %1724, i8* %41, align 1, !tbaa !1244

  %1725 = and i32 %1722, 255

  %1726 = tail call i32 @llvm.ctpop.i32(i32 %1725) #11

  %1727 = trunc i32 %1726 to i8

  %1728 = and i8 %1727, 1

  %1729 = xor i8 %1728, 1

  store i8 %1729, i8* %42, align 1, !tbaa !1258

  %1730 = xor i32 %1722, %1721

  %1731 = lshr i32 %1730, 4

  %1732 = trunc i32 %1731 to i8

  %1733 = and i8 %1732, 1

  store i8 %1733, i8* %43, align 1, !tbaa !1262

  %1734 = icmp eq i32 %1722, 0

  %1735 = zext i1 %1734 to i8

  store i8 %1735, i8* %44, align 1, !tbaa !1259

  %1736 = lshr i32 %1722, 31

  %1737 = trunc i32 %1736 to i8

  store i8 %1737, i8* %45, align 1, !tbaa !1260

  %1738 = lshr i32 %1721, 31

  %1739 = xor i32 %1736, %1738

  %1740 = add nuw nsw i32 %1739, %1738

  %1741 = icmp eq i32 %1740, 2

  %1742 = zext i1 %1741 to i8

  store i8 %1742, i8* %46, align 1, !tbaa !1261

  %1743 = select i1 %1734, i64 47, i64 14

  %1744 = add i64 %1719, %1743

  br i1 %1734, label %block_401100, label %block_4010df



block_4015b1:                                     ; preds = %block_401555

  %1745 = add i64 %751, -136

  %1746 = inttoptr i64 %1745 to i64*

  %1747 = load i64, i64* %1746

  %1748 = add i64 %1747, -1

  %1749 = inttoptr i64 %1745 to i64*

  store i64 %1748, i64* %1749

  %1750 = add i64 %751, -128

  %1751 = inttoptr i64 %1750 to i64*

  %1752 = load i64, i64* %1751

  %1753 = add i64 %1752, 1000000

  %1754 = add i64 %750, 32

  %1755 = inttoptr i64 %1750 to i64*

  store i64 %1753, i64* %1755

  br label %block_4015d1



block_401032:                                     ; preds = %block_400f71

  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 192), i64* %12, align 8, !tbaa !1240

  store i64 ptrtoint (%numOptions_type* @numOptions to i64), i64* %11, align 8, !tbaa !1240

  %1756 = add i64 %269, 31

  %1757 = load i64, i64* %14, align 8, !tbaa !1240

  %1758 = add i64 %1757, -8

  %1759 = inttoptr i64 %1758 to i64*

  store i64 %1756, i64* %1759

  %1760 = load i64, i64* %75, align 8, !alias.scope !1499, !noalias !1502

  %1761 = load i64, i64* %76, align 8, !alias.scope !1499, !noalias !1502

  %1762 = load i64, i64* %17, align 8, !alias.scope !1499, !noalias !1502

  %1763 = inttoptr i64 %1757 to i64*

  %1764 = load i64, i64* %1763

  %1765 = add i64 %1757, 8

  %1766 = inttoptr i64 %1765 to i64*

  %1767 = load i64, i64* %1766

  %1768 = add i64 %1757, 16

  %1769 = inttoptr i64 %1768 to i64*

  %1770 = load i64, i64* %1769

  %1771 = add i64 %1757, 24

  %1772 = inttoptr i64 %1771 to i64*

  %1773 = load i64, i64* %1772

  %1774 = add i64 %1757, 32

  %1775 = inttoptr i64 %1774 to i64*

  %1776 = load i64, i64* %1775

  %1777 = add i64 %1757, 40

  %1778 = inttoptr i64 %1777 to i64*

  %1779 = load i64, i64* %1778

  %1780 = add i64 %1757, 48

  %1781 = inttoptr i64 %1780 to i64*

  %1782 = load i64, i64* %1781

  %1783 = add i64 %1757, 56

  %1784 = inttoptr i64 %1783 to i64*

  %1785 = load i64, i64* %1784

  %1786 = add i64 %1757, 64

  %1787 = inttoptr i64 %1786 to i64*

  %1788 = load i64, i64* %1787

  %1789 = add i64 %1757, 72

  %1790 = inttoptr i64 %1789 to i64*

  %1791 = load i64, i64* %1790

  %1792 = inttoptr i64 %1758 to i64*

  %1793 = load i64, i64* %1792

  store i64 %1793, i64* %3, align 8, !alias.scope !1499, !noalias !1502

  store i64 %1757, i64* %14, align 8, !alias.scope !1499, !noalias !1502

  %1794 = tail call i64 @__isoc99_fscanf(i64 %257, i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 192), i64 ptrtoint (%numOptions_type* @numOptions to i64), i64 %1760, i64 %1761, i64 %1762, i64 %1764, i64 %1767, i64 %1770, i64 %1773, i64 %1776, i64 %1779, i64 %1782, i64 %1785, i64 %1788, i64 %1791), !noalias !1499

  %1795 = load i64, i64* %15, align 8

  %1796 = add i64 %1795, -84

  %1797 = trunc i64 %1794 to i32

  %1798 = load i64, i64* %3, align 8

  %1799 = inttoptr i64 %1796 to i32*

  store i32 %1797, i32* %1799

  %1800 = inttoptr i64 %1796 to i32*

  %1801 = load i32, i32* %1800

  %1802 = add i32 %1801, -1

  %1803 = icmp eq i32 %1801, 0

  %1804 = zext i1 %1803 to i8

  store i8 %1804, i8* %41, align 1, !tbaa !1244

  %1805 = and i32 %1802, 255

  %1806 = tail call i32 @llvm.ctpop.i32(i32 %1805) #11

  %1807 = trunc i32 %1806 to i8

  %1808 = and i8 %1807, 1

  %1809 = xor i8 %1808, 1

  store i8 %1809, i8* %42, align 1, !tbaa !1258

  %1810 = xor i32 %1802, %1801

  %1811 = lshr i32 %1810, 4

  %1812 = trunc i32 %1811 to i8

  %1813 = and i8 %1812, 1

  store i8 %1813, i8* %43, align 1, !tbaa !1262

  %1814 = icmp eq i32 %1802, 0

  %1815 = zext i1 %1814 to i8

  store i8 %1815, i8* %44, align 1, !tbaa !1259

  %1816 = lshr i32 %1802, 31

  %1817 = trunc i32 %1816 to i8

  store i8 %1817, i8* %45, align 1, !tbaa !1260

  %1818 = lshr i32 %1801, 31

  %1819 = xor i32 %1816, %1818

  %1820 = add nuw nsw i32 %1819, %1818

  %1821 = icmp eq i32 %1820, 2

  %1822 = zext i1 %1821 to i8

  store i8 %1822, i8* %46, align 1, !tbaa !1261

  %1823 = select i1 %1814, i64 71, i64 13

  %1824 = add i64 %1798, %1823

  br i1 %1814, label %block_401098, label %block_40105e



block_401007:                                     ; preds = %block_400f71

  store i64 ptrtoint (%inputFile_type* @inputFile to i64), i64* %12, align 8, !tbaa !1240

  %1825 = add i64 %269, 27

  %1826 = load i64, i64* %14, align 8, !tbaa !1240

  %1827 = add i64 %1826, -8

  %1828 = inttoptr i64 %1827 to i64*

  store i64 %1825, i64* %1828

  %1829 = load i64, i64* %11, align 8, !alias.scope !1504, !noalias !1507

  %1830 = load i64, i64* %75, align 8, !alias.scope !1504, !noalias !1507

  %1831 = load i64, i64* %76, align 8, !alias.scope !1504, !noalias !1507

  %1832 = load i64, i64* %17, align 8, !alias.scope !1504, !noalias !1507

  %1833 = inttoptr i64 %1826 to i64*

  %1834 = load i64, i64* %1833

  %1835 = add i64 %1826, 8

  %1836 = inttoptr i64 %1835 to i64*

  %1837 = load i64, i64* %1836

  %1838 = add i64 %1826, 16

  %1839 = inttoptr i64 %1838 to i64*

  %1840 = load i64, i64* %1839

  %1841 = add i64 %1826, 24

  %1842 = inttoptr i64 %1841 to i64*

  %1843 = load i64, i64* %1842

  %1844 = add i64 %1826, 32

  %1845 = inttoptr i64 %1844 to i64*

  %1846 = load i64, i64* %1845

  %1847 = add i64 %1826, 40

  %1848 = inttoptr i64 %1847 to i64*

  %1849 = load i64, i64* %1848

  %1850 = add i64 %1826, 48

  %1851 = inttoptr i64 %1850 to i64*

  %1852 = load i64, i64* %1851

  %1853 = add i64 %1826, 56

  %1854 = inttoptr i64 %1853 to i64*

  %1855 = load i64, i64* %1854

  %1856 = add i64 %1826, 64

  %1857 = inttoptr i64 %1856 to i64*

  %1858 = load i64, i64* %1857

  %1859 = add i64 %1826, 72

  %1860 = inttoptr i64 %1859 to i64*

  %1861 = load i64, i64* %1860

  %1862 = inttoptr i64 %1827 to i64*

  %1863 = load i64, i64* %1862

  store i64 %1863, i64* %3, align 8, !alias.scope !1504, !noalias !1507

  store i64 %1826, i64* %14, align 8, !alias.scope !1504, !noalias !1507

  %1864 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 158), i64 ptrtoint (%inputFile_type* @inputFile to i64), i64 %1829, i64 %1830, i64 %1831, i64 %1832, i64 %1834, i64 %1837, i64 %1840, i64 %1843, i64 %1846, i64 %1849, i64 %1852, i64 %1855, i64 %1858, i64 %1861), !noalias !1504

  %1865 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1866 = load i64, i64* %15, align 8

  %1867 = add i64 %1866, -196

  %1868 = trunc i64 %1864 to i32

  %1869 = inttoptr i64 %1867 to i32*

  store i32 %1868, i32* %1869

  %1870 = add i64 %1865, 16

  %1871 = load i64, i64* %14, align 8, !tbaa !1240

  %1872 = add i64 %1871, -8

  %1873 = inttoptr i64 %1872 to i64*

  store i64 %1870, i64* %1873

  %1874 = inttoptr i64 %1872 to i64*

  %1875 = load i64, i64* %1874

  store i64 %1875, i64* %3, align 8, !alias.scope !1509, !noalias !1512

  store i64 %1871, i64* %14, align 8, !alias.scope !1509, !noalias !1512

  %1876 = tail call i64 @exit(i64 1), !noalias !1509

  store i64 %1876, i64* %60, align 8, !alias.scope !1509, !noalias !1512

  %1877 = load i64, i64* %3, align 8

  %1878 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1877, %struct.Memory* %2)

  ret %struct.Memory* %1878



block_401284:                                     ; preds = %block_40114c

  store i64 ptrtoint (%inputFile_type* @inputFile to i64), i64* %12, align 8, !tbaa !1240

  %1879 = add i64 %1176, 27

  %1880 = load i64, i64* %14, align 8, !tbaa !1240

  %1881 = add i64 %1880, -8

  %1882 = inttoptr i64 %1881 to i64*

  store i64 %1879, i64* %1882

  %1883 = load i64, i64* %11, align 8, !alias.scope !1514, !noalias !1517

  %1884 = load i64, i64* %75, align 8, !alias.scope !1514, !noalias !1517

  %1885 = load i64, i64* %76, align 8, !alias.scope !1514, !noalias !1517

  %1886 = load i64, i64* %17, align 8, !alias.scope !1514, !noalias !1517

  %1887 = inttoptr i64 %1880 to i64*

  %1888 = load i64, i64* %1887

  %1889 = add i64 %1880, 8

  %1890 = inttoptr i64 %1889 to i64*

  %1891 = load i64, i64* %1890

  %1892 = add i64 %1880, 16

  %1893 = inttoptr i64 %1892 to i64*

  %1894 = load i64, i64* %1893

  %1895 = add i64 %1880, 24

  %1896 = inttoptr i64 %1895 to i64*

  %1897 = load i64, i64* %1896

  %1898 = add i64 %1880, 32

  %1899 = inttoptr i64 %1898 to i64*

  %1900 = load i64, i64* %1899

  %1901 = add i64 %1880, 40

  %1902 = inttoptr i64 %1901 to i64*

  %1903 = load i64, i64* %1902

  %1904 = add i64 %1880, 48

  %1905 = inttoptr i64 %1904 to i64*

  %1906 = load i64, i64* %1905

  %1907 = add i64 %1880, 56

  %1908 = inttoptr i64 %1907 to i64*

  %1909 = load i64, i64* %1908

  %1910 = add i64 %1880, 64

  %1911 = inttoptr i64 %1910 to i64*

  %1912 = load i64, i64* %1911

  %1913 = add i64 %1880, 72

  %1914 = inttoptr i64 %1913 to i64*

  %1915 = load i64, i64* %1914

  %1916 = inttoptr i64 %1881 to i64*

  %1917 = load i64, i64* %1916

  store i64 %1917, i64* %3, align 8, !alias.scope !1514, !noalias !1517

  store i64 %1880, i64* %14, align 8, !alias.scope !1514, !noalias !1517

  %1918 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 195), i64 ptrtoint (%inputFile_type* @inputFile to i64), i64 %1883, i64 %1884, i64 %1885, i64 %1886, i64 %1888, i64 %1891, i64 %1894, i64 %1897, i64 %1900, i64 %1903, i64 %1906, i64 %1909, i64 %1912, i64 %1915), !noalias !1514

  %1919 = load i64, i64* %15, align 8

  %1920 = add i64 %1919, -56

  %1921 = load i64, i64* %3, align 8

  %1922 = inttoptr i64 %1920 to i64*

  %1923 = load i64, i64* %1922

  %1924 = add i64 %1919, -244

  %1925 = trunc i64 %1918 to i32

  %1926 = inttoptr i64 %1924 to i32*

  store i32 %1925, i32* %1926

  %1927 = add i64 %1921, 15

  %1928 = load i64, i64* %14, align 8, !tbaa !1240

  %1929 = add i64 %1928, -8

  %1930 = inttoptr i64 %1929 to i64*

  store i64 %1927, i64* %1930

  %1931 = inttoptr i64 %1929 to i64*

  %1932 = load i64, i64* %1931

  store i64 %1932, i64* %3, align 8, !alias.scope !1519, !noalias !1522

  store i64 %1928, i64* %14, align 8, !alias.scope !1519, !noalias !1522

  %1933 = tail call i64 @fclose(i64 %1923), !noalias !1519

  %1934 = load i64, i64* %3, align 8

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1935 = load i64, i64* %15, align 8

  %1936 = add i64 %1935, -248

  %1937 = trunc i64 %1933 to i32

  %1938 = inttoptr i64 %1936 to i32*

  store i32 %1937, i32* %1938

  %1939 = add i64 %1934, 16

  %1940 = load i64, i64* %14, align 8, !tbaa !1240

  %1941 = add i64 %1940, -8

  %1942 = inttoptr i64 %1941 to i64*

  store i64 %1939, i64* %1942

  %1943 = inttoptr i64 %1941 to i64*

  %1944 = load i64, i64* %1943

  store i64 %1944, i64* %3, align 8, !alias.scope !1524, !noalias !1527

  store i64 %1940, i64* %14, align 8, !alias.scope !1524, !noalias !1527

  %1945 = tail call i64 @exit(i64 1), !noalias !1524

  store i64 %1945, i64* %60, align 8, !alias.scope !1524, !noalias !1527

  %1946 = load i64, i64* %3, align 8

  %1947 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1946, %struct.Memory* %979)

  ret %struct.Memory* %1947



block_4012d1:                                     ; preds = %block_40113c

  %1948 = add i64 %978, -56

  %1949 = inttoptr i64 %1948 to i64*

  %1950 = load i64, i64* %1949

  %1951 = add i64 %996, 9

  %1952 = load i64, i64* %14, align 8, !tbaa !1240

  %1953 = add i64 %1952, -8

  %1954 = inttoptr i64 %1953 to i64*

  store i64 %1951, i64* %1954

  %1955 = inttoptr i64 %1953 to i64*

  %1956 = load i64, i64* %1955

  store i64 %1956, i64* %3, align 8, !alias.scope !1529, !noalias !1532

  store i64 %1952, i64* %14, align 8, !alias.scope !1529, !noalias !1532

  %1957 = tail call i64 @fclose(i64 %1950), !noalias !1529

  %1958 = load i64, i64* %15, align 8

  %1959 = add i64 %1958, -84

  %1960 = trunc i64 %1957 to i32

  %1961 = load i64, i64* %3, align 8

  %1962 = inttoptr i64 %1959 to i32*

  store i32 %1960, i32* %1962

  %1963 = inttoptr i64 %1959 to i32*

  %1964 = load i32, i32* %1963

  store i8 0, i8* %41, align 1, !tbaa !1244

  %1965 = and i32 %1964, 255

  %1966 = tail call i32 @llvm.ctpop.i32(i32 %1965) #11

  %1967 = trunc i32 %1966 to i8

  %1968 = and i8 %1967, 1

  %1969 = xor i8 %1968, 1

  store i8 %1969, i8* %42, align 1, !tbaa !1258

  store i8 0, i8* %43, align 1, !tbaa !1262

  %1970 = icmp eq i32 %1964, 0

  %1971 = zext i1 %1970 to i8

  store i8 %1971, i8* %44, align 1, !tbaa !1259

  %1972 = lshr i32 %1964, 31

  %1973 = trunc i32 %1972 to i8

  store i8 %1973, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  %1974 = select i1 %1970, i64 56, i64 13

  %1975 = add i64 %1961, %1974

  br i1 %1970, label %block_401312, label %block_4012e7



block_401683:                                     ; preds = %block_401663, %block_4015d1

  %1976 = phi i64 [ %1663, %block_401663 ], [ %658, %block_4015d1 ]

  %1977 = phi %struct.Memory* [ %614, %block_401663 ], [ %614, %block_4015d1 ]

  %1978 = add i64 %659, -136

  %1979 = inttoptr i64 %1978 to i64*

  %1980 = load i64, i64* %1979

  %1981 = add i64 %659, -128

  %1982 = inttoptr i64 %1981 to i64*

  %1983 = load i64, i64* %1982

  store i64 %1983, i64* %11, align 8, !tbaa !1240

  %1984 = add i64 %1976, 33

  %1985 = load i64, i64* %14, align 8, !tbaa !1240

  %1986 = add i64 %1985, -8

  %1987 = inttoptr i64 %1986 to i64*

  store i64 %1984, i64* %1987

  %1988 = load i64, i64* %75, align 8, !alias.scope !1534, !noalias !1537

  %1989 = load i64, i64* %76, align 8, !alias.scope !1534, !noalias !1537

  %1990 = load i64, i64* %17, align 8, !alias.scope !1534, !noalias !1537

  %1991 = inttoptr i64 %1985 to i64*

  %1992 = load i64, i64* %1991

  %1993 = add i64 %1985, 8

  %1994 = inttoptr i64 %1993 to i64*

  %1995 = load i64, i64* %1994

  %1996 = add i64 %1985, 16

  %1997 = inttoptr i64 %1996 to i64*

  %1998 = load i64, i64* %1997

  %1999 = add i64 %1985, 24

  %2000 = inttoptr i64 %1999 to i64*

  %2001 = load i64, i64* %2000

  %2002 = add i64 %1985, 32

  %2003 = inttoptr i64 %2002 to i64*

  %2004 = load i64, i64* %2003

  %2005 = add i64 %1985, 40

  %2006 = inttoptr i64 %2005 to i64*

  %2007 = load i64, i64* %2006

  %2008 = add i64 %1985, 48

  %2009 = inttoptr i64 %2008 to i64*

  %2010 = load i64, i64* %2009

  %2011 = add i64 %1985, 56

  %2012 = inttoptr i64 %2011 to i64*

  %2013 = load i64, i64* %2012

  %2014 = add i64 %1985, 64

  %2015 = inttoptr i64 %2014 to i64*

  %2016 = load i64, i64* %2015

  %2017 = add i64 %1985, 72

  %2018 = inttoptr i64 %2017 to i64*

  %2019 = load i64, i64* %2018

  %2020 = inttoptr i64 %1986 to i64*

  %2021 = load i64, i64* %2020

  store i64 %2021, i64* %3, align 8, !alias.scope !1534, !noalias !1537

  store i64 %1985, i64* %14, align 8, !alias.scope !1534, !noalias !1537

  %2022 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 502), i64 %1980, i64 %1983, i64 %1988, i64 %1989, i64 %1990, i64 %1992, i64 %1995, i64 %1998, i64 %2001, i64 %2004, i64 %2007, i64 %2010, i64 %2013, i64 %2016, i64 %2019), !noalias !1534

  %2023 = load i64, i64* %3, align 8

  %2024 = load i64, i64* %15, align 8

  %2025 = add i64 %2024, -288

  %2026 = trunc i64 %2022 to i32

  %2027 = inttoptr i64 %2025 to i32*

  store i32 %2026, i32* %2027

  %2028 = add i64 %2023, 31

  %2029 = load i64, i64* %14, align 8, !tbaa !1240

  %2030 = add i64 %2029, -8

  %2031 = inttoptr i64 %2030 to i64*

  store i64 %2028, i64* %2031

  %2032 = inttoptr i64 %2030 to i64*

  %2033 = load i64, i64* %2032

  store i64 %2033, i64* %3, align 8, !alias.scope !1539, !noalias !1542

  store i64 %2029, i64* %14, align 8, !alias.scope !1539, !noalias !1542

  %2034 = tail call i64 @fopen(i64 ptrtoint (%outputFile_type* @outputFile to i64), i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 527))

  %2035 = load i64, i64* %15, align 8

  %2036 = add i64 %2035, -56

  %2037 = load i64, i64* %3, align 8

  %2038 = inttoptr i64 %2036 to i64*

  store i64 %2034, i64* %2038

  %2039 = inttoptr i64 %2036 to i64*

  %2040 = load i64, i64* %2039

  store i8 0, i8* %41, align 1, !tbaa !1244

  %2041 = trunc i64 %2040 to i32

  %2042 = and i32 %2041, 255

  %2043 = tail call i32 @llvm.ctpop.i32(i32 %2042) #11

  %2044 = trunc i32 %2043 to i8

  %2045 = and i8 %2044, 1

  %2046 = xor i8 %2045, 1

  store i8 %2046, i8* %42, align 1, !tbaa !1258

  store i8 0, i8* %43, align 1, !tbaa !1262

  %2047 = icmp eq i64 %2040, 0

  %2048 = zext i1 %2047 to i8

  store i8 %2048, i8* %44, align 1, !tbaa !1259

  %2049 = lshr i64 %2040, 63

  %2050 = trunc i64 %2049 to i8

  store i8 %2050, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  %2051 = select i1 %2047, i64 15, i64 58

  %2052 = add i64 %2037, %2051

  br i1 %2047, label %block_4016d2, label %block_4016fd



block_401100:                                     ; preds = %block_4010d1

  %2053 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %2054 = sext i32 %2053 to i64

  %2055 = sext i32 %2053 to i128

  %2056 = and i128 %2055, -18446744073709551616

  %2057 = zext i64 %2054 to i128

  %2058 = or i128 %2056, %2057

  %2059 = mul nsw i128 %2058, 36

  %2060 = trunc i128 %2059 to i64

  %2061 = add i64 %1744, 17

  %2062 = load i64, i64* %14, align 8, !tbaa !1240

  %2063 = add i64 %2062, -8

  %2064 = inttoptr i64 %2063 to i64*

  store i64 %2061, i64* %2064

  %2065 = inttoptr i64 %2063 to i64*

  %2066 = load i64, i64* %2065

  store i64 %2066, i64* %3, align 8, !alias.scope !1544, !noalias !1547

  store i64 %2062, i64* %14, align 8, !alias.scope !1544, !noalias !1547

  %2067 = tail call i64 @malloc(i64 %2060)

  %2068 = load i64, i64* %3, align 8

  store i64 %2067, i64* bitcast (%data_type* @data to i64*)

  %2069 = load i32, i32* bitcast (%numOptions_type* @numOptions to i32*)

  %2070 = sext i32 %2069 to i64

  %2071 = shl nsw i64 %2070, 2

  %2072 = add i64 %2068, 28

  %2073 = load i64, i64* %14, align 8, !tbaa !1240

  %2074 = add i64 %2073, -8

  %2075 = inttoptr i64 %2074 to i64*

  store i64 %2072, i64* %2075

  %2076 = inttoptr i64 %2074 to i64*

  %2077 = load i64, i64* %2076

  store i64 %2077, i64* %3, align 8, !alias.scope !1549, !noalias !1552

  store i64 %2073, i64* %14, align 8, !alias.scope !1549, !noalias !1552

  %2078 = tail call i64 @malloc(i64 %2071)

  %2079 = load i64, i64* %3, align 8

  store i64 %2078, i64* bitcast (%prices_type* @prices to i64*)

  %2080 = load i64, i64* %15, align 8

  %2081 = add i64 %2080, -64

  %2082 = add i64 %2079, 15

  %2083 = inttoptr i64 %2081 to i32*

  store i32 0, i32* %2083

  br label %block_40113c

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400820__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196384, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400820__start(%struct.State* nonnull @__mcsema_reg_state, i64 4196384, %struct.Memory* null)

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

define i64 @callback_sub_400900_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196608, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400900_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196608, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4008d0___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196560, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4008d0___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196560, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

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

define %struct.Memory* @ext_400760_exp(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %13 = tail call i64 @exp(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint nounwind

define %struct.Memory* @ext_400810_sqrt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #10 {

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

define %struct.Memory* @ext_602248_log(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4018e0___libc_csu_fini() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200672, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_4018e0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4200672, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401870___libc_csu_init() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200560, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401870___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4200560, %struct.Memory* null)

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

  store i64 4198112, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_400ee0_main(%struct.State* nonnull @__mcsema_reg_state, i64 4198112, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %11

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602250___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400770_fclose(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_4007f0_atoi(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400740_strcpy(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %15 = tail call i64 @strcpy(i64 %9, i64 %10)

  store i64 %15, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_4007e0_fopen(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602238_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_602280_exit(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_4007b0_fprintf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %52 = tail call i64 @fprintf(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49)

  store i64 %52, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602240_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_602268_fflush(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %13 = tail call i64 @fflush(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602220___isoc99_fscanf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %52 = tail call i64 @__isoc99_fscanf(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49)

  store i64 %52, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602260_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_602210_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  store i64 4200676, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4018e4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4200676, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @CNDF(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196624, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400910_CNDF(%struct.State* nonnull @__mcsema_reg_state, i64 4196624, %struct.Memory* null)

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

  store i64 4196104, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400708__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4196104, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @BlkSchlsEqEuroNoDiv(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197248, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400b80_BlkSchlsEqEuroNoDiv(%struct.State* nonnull @__mcsema_reg_state, i64 4197248, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @bs_thread(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197808, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400db0_bs_thread(%struct.State* nonnull @__mcsema_reg_state, i64 4197808, %struct.Memory* null)

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

  %3 = tail call i64 @callback_sub_401870___libc_csu_init()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #11 {

  %1 = tail call i64 @callback_sub_4018e0___libc_csu_fini()

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

!1263 = !{!1242, !1242, i64 0}

!1264 = !{!1257, !1257, i64 0}

!1265 = !{!1266, !1266, i64 0}

!1266 = !{!"float", !1242, i64 0}

!1267 = !{!1268, !1268, i64 0}

!1268 = !{!"double", !1242, i64 0}

!1269 = !{!1270}

!1270 = distinct !{!1270, !1271, !"ext_400760_exp: argument 0"}

!1271 = distinct !{!1271, !"ext_400760_exp"}

!1272 = !{!1273}

!1273 = distinct !{!1273, !1271, !"ext_400760_exp: argument 1"}

!1274 = !{!1275}

!1275 = distinct !{!1275, !1276, !"ext_602248_log: argument 0"}

!1276 = distinct !{!1276, !"ext_602248_log"}

!1277 = !{!1278}

!1278 = distinct !{!1278, !1276, !"ext_602248_log: argument 1"}

!1279 = !{!1280}

!1280 = distinct !{!1280, !1281, !"ext_400760_exp: argument 0"}

!1281 = distinct !{!1281, !"ext_400760_exp"}

!1282 = !{!1283}

!1283 = distinct !{!1283, !1281, !"ext_400760_exp: argument 1"}

!1284 = !{!1285}

!1285 = distinct !{!1285, !1286, !"ext_602250___libc_start_main: argument 0"}

!1286 = distinct !{!1286, !"ext_602250___libc_start_main"}

!1287 = !{!1288}

!1288 = distinct !{!1288, !1286, !"ext_602250___libc_start_main: argument 1"}

!1289 = !{!1290}

!1290 = distinct !{!1290, !1291, !"ext_602240_gettimeofday: argument 0"}

!1291 = distinct !{!1291, !"ext_602240_gettimeofday"}

!1292 = !{!1293}

!1293 = distinct !{!1293, !1291, !"ext_602240_gettimeofday: argument 1"}

!1294 = !{!1295}

!1295 = distinct !{!1295, !1296, !"ext_602238_printf: argument 0"}

!1296 = distinct !{!1296, !"ext_602238_printf"}

!1297 = !{!1298}

!1298 = distinct !{!1298, !1296, !"ext_602238_printf: argument 1"}

!1299 = !{!1300}

!1300 = distinct !{!1300, !1301, !"ext_602268_fflush: argument 0"}

!1301 = distinct !{!1301, !"ext_602268_fflush"}

!1302 = !{!1303}

!1303 = distinct !{!1303, !1301, !"ext_602268_fflush: argument 1"}

!1304 = !{!1305}

!1305 = distinct !{!1305, !1306, !"ext_400770_fclose: argument 0"}

!1306 = distinct !{!1306, !"ext_400770_fclose"}

!1307 = !{!1308}

!1308 = distinct !{!1308, !1306, !"ext_400770_fclose: argument 1"}

!1309 = !{!1310}

!1310 = distinct !{!1310, !1311, !"ext_4007f0_atoi: argument 0"}

!1311 = distinct !{!1311, !"ext_4007f0_atoi"}

!1312 = !{!1313}

!1313 = distinct !{!1313, !1311, !"ext_4007f0_atoi: argument 1"}

!1314 = !{!1315}

!1315 = distinct !{!1315, !1316, !"ext_400740_strcpy: argument 0"}

!1316 = distinct !{!1316, !"ext_400740_strcpy"}

!1317 = !{!1318}

!1318 = distinct !{!1318, !1316, !"ext_400740_strcpy: argument 1"}

!1319 = !{!1320}

!1320 = distinct !{!1320, !1321, !"ext_400740_strcpy: argument 0"}

!1321 = distinct !{!1321, !"ext_400740_strcpy"}

!1322 = !{!1323}

!1323 = distinct !{!1323, !1321, !"ext_400740_strcpy: argument 1"}

!1324 = !{!1325}

!1325 = distinct !{!1325, !1326, !"ext_4007e0_fopen: argument 0"}

!1326 = distinct !{!1326, !"ext_4007e0_fopen"}

!1327 = !{!1328}

!1328 = distinct !{!1328, !1326, !"ext_4007e0_fopen: argument 1"}

!1329 = !{!1330}

!1330 = distinct !{!1330, !1331, !"ext_602238_printf: argument 0"}

!1331 = distinct !{!1331, !"ext_602238_printf"}

!1332 = !{!1333}

!1333 = distinct !{!1333, !1331, !"ext_602238_printf: argument 1"}

!1334 = !{!1335}

!1335 = distinct !{!1335, !1336, !"ext_602280_exit: argument 0"}

!1336 = distinct !{!1336, !"ext_602280_exit"}

!1337 = !{!1338}

!1338 = distinct !{!1338, !1336, !"ext_602280_exit: argument 1"}

!1339 = !{!1340}

!1340 = distinct !{!1340, !1341, !"ext_602238_printf: argument 0"}

!1341 = distinct !{!1341, !"ext_602238_printf"}

!1342 = !{!1343}

!1343 = distinct !{!1343, !1341, !"ext_602238_printf: argument 1"}

!1344 = !{!1345}

!1345 = distinct !{!1345, !1346, !"ext_400770_fclose: argument 0"}

!1346 = distinct !{!1346, !"ext_400770_fclose"}

!1347 = !{!1348}

!1348 = distinct !{!1348, !1346, !"ext_400770_fclose: argument 1"}

!1349 = !{!1350}

!1350 = distinct !{!1350, !1351, !"ext_602280_exit: argument 0"}

!1351 = distinct !{!1351, !"ext_602280_exit"}

!1352 = !{!1353}

!1353 = distinct !{!1353, !1351, !"ext_602280_exit: argument 1"}

!1354 = !{!1355}

!1355 = distinct !{!1355, !1356, !"ext_4007b0_fprintf: argument 0"}

!1356 = distinct !{!1356, !"ext_4007b0_fprintf"}

!1357 = !{!1358}

!1358 = distinct !{!1358, !1356, !"ext_4007b0_fprintf: argument 1"}

!1359 = !{!1360}

!1360 = distinct !{!1360, !1361, !"ext_602238_printf: argument 0"}

!1361 = distinct !{!1361, !"ext_602238_printf"}

!1362 = !{!1363}

!1363 = distinct !{!1363, !1361, !"ext_602238_printf: argument 1"}

!1364 = !{!1365}

!1365 = distinct !{!1365, !1366, !"ext_602280_exit: argument 0"}

!1366 = distinct !{!1366, !"ext_602280_exit"}

!1367 = !{!1368}

!1368 = distinct !{!1368, !1366, !"ext_602280_exit: argument 1"}

!1369 = !{!1370}

!1370 = distinct !{!1370, !1371, !"ext_602238_printf: argument 0"}

!1371 = distinct !{!1371, !"ext_602238_printf"}

!1372 = !{!1373}

!1373 = distinct !{!1373, !1371, !"ext_602238_printf: argument 1"}

!1374 = !{!1375}

!1375 = distinct !{!1375, !1376, !"ext_602240_gettimeofday: argument 0"}

!1376 = distinct !{!1376, !"ext_602240_gettimeofday"}

!1377 = !{!1378}

!1378 = distinct !{!1378, !1376, !"ext_602240_gettimeofday: argument 1"}

!1379 = !{!1380}

!1380 = distinct !{!1380, !1381, !"ext_602240_gettimeofday: argument 0"}

!1381 = distinct !{!1381, !"ext_602240_gettimeofday"}

!1382 = !{!1383}

!1383 = distinct !{!1383, !1381, !"ext_602240_gettimeofday: argument 1"}

!1384 = !{!1385}

!1385 = distinct !{!1385, !1386, !"ext_602238_printf: argument 0"}

!1386 = distinct !{!1386, !"ext_602238_printf"}

!1387 = !{!1388}

!1388 = distinct !{!1388, !1386, !"ext_602238_printf: argument 1"}

!1389 = !{!1390}

!1390 = distinct !{!1390, !1391, !"ext_602240_gettimeofday: argument 0"}

!1391 = distinct !{!1391, !"ext_602240_gettimeofday"}

!1392 = !{!1393}

!1393 = distinct !{!1393, !1391, !"ext_602240_gettimeofday: argument 1"}

!1394 = !{!1395}

!1395 = distinct !{!1395, !1396, !"ext_602238_printf: argument 0"}

!1396 = distinct !{!1396, !"ext_602238_printf"}

!1397 = !{!1398}

!1398 = distinct !{!1398, !1396, !"ext_602238_printf: argument 1"}

!1399 = !{!1400}

!1400 = distinct !{!1400, !1401, !"ext_602280_exit: argument 0"}

!1401 = distinct !{!1401, !"ext_602280_exit"}

!1402 = !{!1403}

!1403 = distinct !{!1403, !1401, !"ext_602280_exit: argument 1"}

!1404 = !{!1405}

!1405 = distinct !{!1405, !1406, !"ext_4007b0_fprintf: argument 0"}

!1406 = distinct !{!1406, !"ext_4007b0_fprintf"}

!1407 = !{!1408}

!1408 = distinct !{!1408, !1406, !"ext_4007b0_fprintf: argument 1"}

!1409 = !{!1410}

!1410 = distinct !{!1410, !1411, !"ext_602220___isoc99_fscanf: argument 0"}

!1411 = distinct !{!1411, !"ext_602220___isoc99_fscanf"}

!1412 = !{!1413}

!1413 = distinct !{!1413, !1411, !"ext_602220___isoc99_fscanf: argument 1"}

!1414 = !{!1415}

!1415 = distinct !{!1415, !1416, !"ext_602238_printf: argument 0"}

!1416 = distinct !{!1416, !"ext_602238_printf"}

!1417 = !{!1418}

!1418 = distinct !{!1418, !1416, !"ext_602238_printf: argument 1"}

!1419 = !{!1420}

!1420 = distinct !{!1420, !1421, !"ext_400770_fclose: argument 0"}

!1421 = distinct !{!1421, !"ext_400770_fclose"}

!1422 = !{!1423}

!1423 = distinct !{!1423, !1421, !"ext_400770_fclose: argument 1"}

!1424 = !{!1425}

!1425 = distinct !{!1425, !1426, !"ext_602280_exit: argument 0"}

!1426 = distinct !{!1426, !"ext_602280_exit"}

!1427 = !{!1428}

!1428 = distinct !{!1428, !1426, !"ext_602280_exit: argument 1"}

!1429 = !{!1430}

!1430 = distinct !{!1430, !1431, !"ext_602238_printf: argument 0"}

!1431 = distinct !{!1431, !"ext_602238_printf"}

!1432 = !{!1433}

!1433 = distinct !{!1433, !1431, !"ext_602238_printf: argument 1"}

!1434 = !{!1435}

!1435 = distinct !{!1435, !1436, !"ext_602238_printf: argument 0"}

!1436 = distinct !{!1436, !"ext_602238_printf"}

!1437 = !{!1438}

!1438 = distinct !{!1438, !1436, !"ext_602238_printf: argument 1"}

!1439 = !{!1440}

!1440 = distinct !{!1440, !1441, !"ext_400770_fclose: argument 0"}

!1441 = distinct !{!1441, !"ext_400770_fclose"}

!1442 = !{!1443}

!1443 = distinct !{!1443, !1441, !"ext_400770_fclose: argument 1"}

!1444 = !{!1445}

!1445 = distinct !{!1445, !1446, !"ext_602280_exit: argument 0"}

!1446 = distinct !{!1446, !"ext_602280_exit"}

!1447 = !{!1448}

!1448 = distinct !{!1448, !1446, !"ext_602280_exit: argument 1"}

!1449 = !{!1450}

!1450 = distinct !{!1450, !1451, !"ext_602238_printf: argument 0"}

!1451 = distinct !{!1451, !"ext_602238_printf"}

!1452 = !{!1453}

!1453 = distinct !{!1453, !1451, !"ext_602238_printf: argument 1"}

!1454 = !{!1455}

!1455 = distinct !{!1455, !1456, !"ext_602280_exit: argument 0"}

!1456 = distinct !{!1456, !"ext_602280_exit"}

!1457 = !{!1458}

!1458 = distinct !{!1458, !1456, !"ext_602280_exit: argument 1"}

!1459 = !{!1460}

!1460 = distinct !{!1460, !1461, !"ext_602238_printf: argument 0"}

!1461 = distinct !{!1461, !"ext_602238_printf"}

!1462 = !{!1463}

!1463 = distinct !{!1463, !1461, !"ext_602238_printf: argument 1"}

!1464 = !{!1465}

!1465 = distinct !{!1465, !1466, !"ext_602238_printf: argument 0"}

!1466 = distinct !{!1466, !"ext_602238_printf"}

!1467 = !{!1468}

!1468 = distinct !{!1468, !1466, !"ext_602238_printf: argument 1"}

!1469 = !{!1470}

!1470 = distinct !{!1470, !1471, !"ext_602260_malloc: argument 0"}

!1471 = distinct !{!1471, !"ext_602260_malloc"}

!1472 = !{!1473}

!1473 = distinct !{!1473, !1471, !"ext_602260_malloc: argument 1"}

!1474 = !{!1475}

!1475 = distinct !{!1475, !1476, !"ext_602260_malloc: argument 0"}

!1476 = distinct !{!1476, !"ext_602260_malloc"}

!1477 = !{!1478}

!1478 = distinct !{!1478, !1476, !"ext_602260_malloc: argument 1"}

!1479 = !{!1480}

!1480 = distinct !{!1480, !1481, !"ext_602210_free: argument 0"}

!1481 = distinct !{!1481, !"ext_602210_free"}

!1482 = !{!1483}

!1483 = distinct !{!1483, !1481, !"ext_602210_free: argument 1"}

!1484 = !{!1485}

!1485 = distinct !{!1485, !1486, !"ext_602210_free: argument 0"}

!1486 = distinct !{!1486, !"ext_602210_free"}

!1487 = !{!1488}

!1488 = distinct !{!1488, !1486, !"ext_602210_free: argument 1"}

!1489 = !{!1490}

!1490 = distinct !{!1490, !1491, !"ext_602238_printf: argument 0"}

!1491 = distinct !{!1491, !"ext_602238_printf"}

!1492 = !{!1493}

!1493 = distinct !{!1493, !1491, !"ext_602238_printf: argument 1"}

!1494 = !{!1495}

!1495 = distinct !{!1495, !1496, !"ext_602280_exit: argument 0"}

!1496 = distinct !{!1496, !"ext_602280_exit"}

!1497 = !{!1498}

!1498 = distinct !{!1498, !1496, !"ext_602280_exit: argument 1"}

!1499 = !{!1500}

!1500 = distinct !{!1500, !1501, !"ext_602220___isoc99_fscanf: argument 0"}

!1501 = distinct !{!1501, !"ext_602220___isoc99_fscanf"}

!1502 = !{!1503}

!1503 = distinct !{!1503, !1501, !"ext_602220___isoc99_fscanf: argument 1"}

!1504 = !{!1505}

!1505 = distinct !{!1505, !1506, !"ext_602238_printf: argument 0"}

!1506 = distinct !{!1506, !"ext_602238_printf"}

!1507 = !{!1508}

!1508 = distinct !{!1508, !1506, !"ext_602238_printf: argument 1"}

!1509 = !{!1510}

!1510 = distinct !{!1510, !1511, !"ext_602280_exit: argument 0"}

!1511 = distinct !{!1511, !"ext_602280_exit"}

!1512 = !{!1513}

!1513 = distinct !{!1513, !1511, !"ext_602280_exit: argument 1"}

!1514 = !{!1515}

!1515 = distinct !{!1515, !1516, !"ext_602238_printf: argument 0"}

!1516 = distinct !{!1516, !"ext_602238_printf"}

!1517 = !{!1518}

!1518 = distinct !{!1518, !1516, !"ext_602238_printf: argument 1"}

!1519 = !{!1520}

!1520 = distinct !{!1520, !1521, !"ext_400770_fclose: argument 0"}

!1521 = distinct !{!1521, !"ext_400770_fclose"}

!1522 = !{!1523}

!1523 = distinct !{!1523, !1521, !"ext_400770_fclose: argument 1"}

!1524 = !{!1525}

!1525 = distinct !{!1525, !1526, !"ext_602280_exit: argument 0"}

!1526 = distinct !{!1526, !"ext_602280_exit"}

!1527 = !{!1528}

!1528 = distinct !{!1528, !1526, !"ext_602280_exit: argument 1"}

!1529 = !{!1530}

!1530 = distinct !{!1530, !1531, !"ext_400770_fclose: argument 0"}

!1531 = distinct !{!1531, !"ext_400770_fclose"}

!1532 = !{!1533}

!1533 = distinct !{!1533, !1531, !"ext_400770_fclose: argument 1"}

!1534 = !{!1535}

!1535 = distinct !{!1535, !1536, !"ext_602238_printf: argument 0"}

!1536 = distinct !{!1536, !"ext_602238_printf"}

!1537 = !{!1538}

!1538 = distinct !{!1538, !1536, !"ext_602238_printf: argument 1"}

!1539 = !{!1540}

!1540 = distinct !{!1540, !1541, !"ext_4007e0_fopen: argument 0"}

!1541 = distinct !{!1541, !"ext_4007e0_fopen"}

!1542 = !{!1543}

!1543 = distinct !{!1543, !1541, !"ext_4007e0_fopen: argument 1"}

!1544 = !{!1545}

!1545 = distinct !{!1545, !1546, !"ext_602260_malloc: argument 0"}

!1546 = distinct !{!1546, !"ext_602260_malloc"}

!1547 = !{!1548}

!1548 = distinct !{!1548, !1546, !"ext_602260_malloc: argument 1"}

!1549 = !{!1550}

!1550 = distinct !{!1550, !1551, !"ext_602260_malloc: argument 0"}

!1551 = distinct !{!1551, !"ext_602260_malloc"}

!1552 = !{!1553}

!1553 = distinct !{!1553, !1551, !"ext_602260_malloc: argument 1"}

