; ModuleID = 'is-b.o3.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_401fc0__rodata_type = type <{ [4 x i8], [27 x i8], [46 x i8], [38 x i8], [44 x i8], [37 x i8], [39 x i8], [39 x i8], [25 x i8], [37 x i8], [37 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [24 x i8], [48 x i8], [80 x i8], [48 x i8], [48 x i8], [32 x i8], [80 x i8], [48 x i8], [136 x i8], [46 x i8], [56 x i8], [11 x i8], [2 x i8], [25 x i8], [19 x i8], [12 x i8], [25 x i8], [3 x i8], [12 x i8], [6 x i8], [12 x i8], [4 x i8], [6 x i8], [4 x i8], [12 x i8], [29 x i8], [25 x i8], [35 x i8], [35 x i8], [35 x i8], [26 x i8], [64 x i8], [40 x i8] }>

%seg_602e10__init_array_type = type <{ i64, i64 }>

%seg_602ff0__got_type = type <{ i64, i64 }>

%seg_603000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

%passed_verification_type = type <{ [16 x i8] }>

%S_test_index_array_type = type <{ [32 x i8] }>

%S_test_rank_array_type = type <{ [32 x i8] }>

%W_test_index_array_type = type <{ [32 x i8] }>

%W_test_rank_array_type = type <{ [32 x i8] }>

%A_test_index_array_type = type <{ [32 x i8] }>

%A_test_rank_array_type = type <{ [32 x i8] }>

%B_test_index_array_type = type <{ [32 x i8] }>

%B_test_rank_array_type = type <{ [32 x i8] }>

%C_test_index_array_type = type <{ [32 x i8] }>

%C_test_rank_array_type = type <{ [32 x i8] }>

%D_test_index_array_type = type <{ [32 x i8] }>

%D_test_rank_array_type = type <{ [20 x i8], [4 x i8] }>

%__bss_start_type = type <{ [8 x i8] }>

%seg_603200__bss_type = type <{ [8 x i8], [8 x i8], [512 x i8], [512 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [16 x i8] }>

%partial_verify_vals_type = type <{ [16 x i8] }>

%bucket_size_type = type <{ [4096 x i8] }>

%key_buff1_type = type <{ [8 x i8] }>

%key_array_type = type <{ [8 x i8] }>

%bucket_ptrs_type = type <{ [4096 x i8] }>

%test_rank_array_type = type <{ [32 x i8] }>

%test_index_array_type = type <{ [24 x i8] }>

%key_buff2_type = type <{ [8 x i8] }>

%key_buff_ptr_global_type = type <{ [8 x i8] }>

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

@stdout = external global i64, align 512

@seg_401fc0__rodata = internal constant %seg_401fc0__rodata_type <{ [4 x i8] c"\01\00\02\00", [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", [46 x i8] c" Class           =                        %c\0A\00", [38 x i8] c" Size            =             %12ld\0A\00", [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", [37 x i8] c" Iterations      =             %12d\0A\00", [39 x i8] c" Time in seconds =             %12.2f\0A\00", [39 x i8] c" Mop/s total     =             %12.2f\0A\00", [25 x i8] c" Operation type  = %24s\0A\00", [37 x i8] c" Version         =             %12s\0A\00", [37 x i8] c" Compile date    =             %12s\0A\00", [23 x i8] c"    CC           = %s\0A\00", [23 x i8] c"    CLINK        = %s\0A\00", [23 x i8] c"    C_LIB        = %s\0A\00", [23 x i8] c"    C_INC        = %s\0A\00", [23 x i8] c"    CFLAGS       = %s\0A\00", [24 x i8] c"    CLINKFLAGS   = %s\0A\00\00", [48 x i8] c" Verification    =             UNSUCCESSFUL\00\00\00\00\00", [80 x i8] c"\0A Compile options:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A--------------------------------------\00\00\00\00\00\00\00\00\00", [48 x i8] c" Please send all errors/feedbacks to:\00\00\00\00\00\00\00\00\00\00\00", [48 x i8] c" Center for Manycore Programming\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c" cmp@aces.snu.ac.kr\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c" http://aces.snu.ac.kr\00\00\00\00\00\00\00\00\00\00--------------------------------------\00\00\00\00\00\00\00\00\00\00", [48 x i8] c" Verification    =               SUCCESSFUL\00\00\00\00\00", [136 x i8] c" Verification    =            NOT PERFORMED\00\00\00\00\00\00\00\00\00\00\00\80>\00\00\00\00\00\00`A\00\00\00\00\00\00\10=\00\00\00\00\00\00\D0B\00\00\00\00\00\00 A\00\00\00\A1\B0\B9\B2A\00\00@\E5\9C0\D2A\00\00\00\00\00\00\B4A\00\00\00\00\80\84.A\00\00\00\00\00\00\F0?\00\00\00\00\00\00Y@", [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", [11 x i8] c"timer.flag\00", [2 x i8] c"r\00", [25 x i8] c" Size:  %ld  (class %c)\0A\00", [19 x i8] c" Iterations:   %d\0A\00", [12 x i8] c"        %d\0A\00", [25 x i8] c"passed verfications: %d\0A\00", [3 x i8] c"IS\00", [12 x i8] c"keys ranked\00", [6 x i8] c"3.3.1\00", [12 x i8] c"03 Nov 2017\00", [4 x i8] c"gcc\00", [6 x i8] c"$(CC)\00", [4 x i8] c"-lm\00", [12 x i8] c"-I../common\00", [29 x i8] c"-g -Wall -O3 -mcmodel=medium\00", [25 x i8] c" Total execution: %8.3f\0A\00", [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", [26 x i8] c"\0A   iteration\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\00\00\00\00\00\00\00\00\00", [40 x i8] c"\0AAdditional timers -\00\00\00\00\00\00\00\00\00\00\00\00\8D\ED\B5\A0\F7\C6\B0>" }>

@seg_602e10__init_array = internal global %seg_602e10__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400720___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c" .`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64)* @SSSSSputs to i64), i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSmemset to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSfflush to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64) }>
@passed_verification = global %passed_verification_type <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_index_array = local_unnamed_addr global %S_test_index_array_type <{ [32 x i8] c"+\BD\00\00\FCB\00\00K\5C\00\00T\F4\00\00O\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_rank_array = local_unnamed_addr global %S_test_rank_array_type <{ [32 x i8] c"\00\00\00\00\12\00\00\00Z\01\00\00\95\FD\00\00\B7\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_index_array = local_unnamed_addr global %W_test_index_array_type <{ [32 x i8] c"\8Du\05\00oC\0E\00\CB\5C\0D\00\B7\B7\0D\00\19,\06\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_rank_array = local_unnamed_addr global %W_test_rank_array_type <{ [32 x i8] c"\E1\04\00\00\B2-\00\00s\DE\0F\00\B8\ED\0F\00\D2\FD\0F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_index_array = local_unnamed_addr global %A_test_index_array_type <{ [32 x i8] c"y; \00\19\1A\0A\00klQ\00\D1\957\00\88\DC@\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_rank_array = local_unnamed_addr global %A_test_rank_array_type <{ [32 x i8] c"h\00\00\00sD\00\00\18\E4\01\00\A4z~\00\A8\FE\7F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@B_test_index_array = global %B_test_index_array_type <{ [32 x i8] c"\8D\A3\00\00\12e\0C\00\09\DDM\00\AF3\16\01\B6\DA\99\01\00\00\00\00\00\00\00\00\00\00\00\00" }>

@B_test_rank_array = global %B_test_rank_array_type <{ [32 x i8] c"Y\FE\FD\01\04(\00\00\0D\E7\00\00\B1\9A\F9\01c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@C_test_index_array = local_unnamed_addr global %C_test_index_array_type <{ [32 x i8] c"\7F\06\A2\02\F9\E0Y\04w!n\04\82\A2\B9\07n\ADK\01\00\00\00\00\00\00\00\00\00\00\00\00" }>

@C_test_rank_array = local_unnamed_addr global %C_test_rank_array_type <{ [32 x i8] c"\DB\EE\00\00,y\0D\002\10\04\00\1B\A4\FC\07\87q\F5\07\00\00\00\00\00\00\00\00\00\00\00\00" }>

@D_test_index_array = local_unnamed_addr global %D_test_index_array_type <{ [32 x i8] c"\02/\85N\16\B2\5C;\B2\BD\FAD\9F\8F\9AY}:\A6V\00\00\00\00\00\00\00\00\00\00\00\00" }>

@D_test_rank_array = global %D_test_rank_array_type <{ [20 x i8] c"\01\00\00\00i\89-\02Wc\E7u\AA\0A\DD\7F9\1C\FF\7F", [4 x i8] c"\FF\FF\FF\FF" }>

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer

@seg_603200__bss = internal global %seg_603200__bss_type zeroinitializer

@partial_verify_vals = global %partial_verify_vals_type zeroinitializer

@bucket_size = global %bucket_size_type zeroinitializer

@key_buff1 = global %key_buff1_type zeroinitializer

@key_array = global %key_array_type zeroinitializer

@bucket_ptrs = global %bucket_ptrs_type zeroinitializer

@test_rank_array = global %test_rank_array_type zeroinitializer

@test_index_array = global %test_index_array_type zeroinitializer

@key_buff2 = global %key_buff2_type zeroinitializer

@key_buff_ptr_global = global %key_buff_ptr_global_type zeroinitializer

@__mcsema_reg_state = internal thread_local global %struct.State zeroinitializer

@__mcsema_stack = internal thread_local global [131072 x i64] zeroinitializer

@__mcsema_tls = internal thread_local global [512 x i64] zeroinitializer

@0 = internal global i1 false

@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]



declare %struct.Memory* @__remill_sync_hyper_call(%struct.State* dereferenceable(3376), %struct.Memory*, i32) local_unnamed_addr #0



; Function Attrs: nounwind readnone speculatable

declare i32 @llvm.ctpop.i32(i32) #1



; Function Attrs: noduplicate noinline nounwind optnone

define %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #2 {

  call void @llvm.trap()

  unreachable

}



; Function Attrs: nounwind readnone speculatable

declare double @llvm.fabs.f64(double) #1



; Function Attrs: nounwind readnone speculatable

declare double @llvm.trunc.f64(double) #1



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfclose(i64) #3
declare i64 @fclose(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSputs(i64) #3
declare i64 @puts(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfopen(i64, i64) #3
declare i64 @fopen(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfree(i64) #3
declare i64 @free(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #3
declare i64 @gettimeofday(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfflush(i64) #3
declare i64 @fflush(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmemset(i64, i64, i64) #3
declare i64 @memset(i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #3
declare i64 @malloc(i64) #3


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4009c0_timer_clear(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4009c0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = load i32, i32* %5, align 4

  %8 = sext i32 %7 to i64

  store i64 %8, i64* %6, align 8, !tbaa !1240

  %9 = shl nsw i64 %8, 3

  %10 = add i64 %9, add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 16)

  %11 = inttoptr i64 %10 to i64*

  store i64 0, i64* %11

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = load i64, i64* %12, align 8, !tbaa !1240

  %14 = inttoptr i64 %13 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %3, align 8, !tbaa !1240

  %16 = add i64 %13, 8

  store i64 %16, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400670__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400670:

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

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #10

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

  store i64 ptrtoint (i64 ()* @callback_sub_401fb0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401f40___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401f40___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401fb0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1263

  store i64 %50, i64* %4, align 8, !alias.scope !1263, !noalias !1266

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline

define %struct.Memory* @sub_401740_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401740:

  %3 = alloca <2 x i64>, align 16

  %4 = alloca <2 x i64>, align 16

  %5 = alloca <2 x i64>, align 16

  %6 = alloca <2 x i64>, align 16

  %7 = alloca <2 x i64>, align 16

  %8 = alloca <2 x i64>, align 16

  %9 = alloca <2 x i64>, align 16

  %10 = alloca <2 x i64>, align 16

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %14 = bitcast %union.anon* %13 to i8*

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %16 = bitcast %union.anon* %15 to i8*

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %18 = bitcast %union.anon* %17 to i8*

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0

  %20 = bitcast %union.anon* %19 to i8*

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0

  %22 = bitcast %union.anon* %21 to i8*

  %23 = bitcast %union.anon* %13 to i32*

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %25 = bitcast %union.anon* %24 to i32*

  %26 = bitcast %union.anon* %15 to i32*

  %27 = bitcast %union.anon* %17 to i32*

  %28 = bitcast %union.anon* %19 to i32*

  %29 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %31 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0

  %32 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0

  %33 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0

  %34 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %36 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0

  %37 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %43 = load i64, i64* %36, align 8

  %44 = load i64, i64* %35, align 8, !tbaa !1240

  %45 = add i64 %44, -8

  %46 = inttoptr i64 %45 to i64*

  store i64 %43, i64* %46

  %47 = load i64, i64* %37, align 8

  %48 = add i64 %44, -16

  %49 = inttoptr i64 %48 to i64*

  store i64 %47, i64* %49

  %50 = load i64, i64* %30, align 8

  %51 = add i64 %44, -24

  %52 = inttoptr i64 %51 to i64*

  store i64 %50, i64* %52

  %53 = add i64 %44, -40

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %57 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %58 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %59 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %60 = add i64 %1, 18

  %61 = add i64 %44, -48

  %62 = inttoptr i64 %61 to i64*

  store i64 %60, i64* %62

  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %64 = inttoptr i64 %61 to i64*

  %65 = load i64, i64* %64

  store i64 %65, i64* %11, align 8, !alias.scope !1268, !noalias !1271

  store i64 %53, i64* %35, align 8, !alias.scope !1268, !noalias !1271

  %66 = tail call i64 @malloc(i64 134217728)

  %67 = load i64, i64* %11, align 8

  store i64 %66, i64* bitcast (%key_array_type* @key_array to i64*)

  %68 = add i64 %67, 17

  %69 = load i64, i64* %35, align 8, !tbaa !1240

  %70 = add i64 %69, -8

  %71 = inttoptr i64 %70 to i64*

  store i64 %68, i64* %71

  %72 = inttoptr i64 %70 to i64*

  %73 = load i64, i64* %72

  store i64 %73, i64* %11, align 8, !alias.scope !1273, !noalias !1276

  store i64 %69, i64* %35, align 8, !alias.scope !1273, !noalias !1276

  %74 = tail call i64 @malloc(i64 8388608)

  %75 = load i64, i64* %11, align 8

  store i64 %74, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %76 = add i64 %75, 17

  %77 = load i64, i64* %35, align 8, !tbaa !1240

  %78 = add i64 %77, -8

  %79 = inttoptr i64 %78 to i64*

  store i64 %76, i64* %79

  %80 = inttoptr i64 %78 to i64*

  %81 = load i64, i64* %80

  store i64 %81, i64* %11, align 8, !alias.scope !1278, !noalias !1281

  store i64 %77, i64* %35, align 8, !alias.scope !1278, !noalias !1281

  %82 = tail call i64 @malloc(i64 134217728)

  %83 = load i64, i64* %11, align 8

  store i64 %82, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %84 = add i64 %83, 17

  %85 = load i64, i64* %35, align 8, !tbaa !1240

  %86 = add i64 %85, -8

  %87 = inttoptr i64 %86 to i64*

  store i64 %84, i64* %87

  %88 = inttoptr i64 %86 to i64*

  %89 = load i64, i64* %88

  store i64 %89, i64* %11, align 8, !alias.scope !1283, !noalias !1286

  store i64 %85, i64* %35, align 8, !alias.scope !1283, !noalias !1286

  %90 = tail call i64 @malloc(i64 20)

  %91 = load i64, i64* %11, align 8

  store i64 %90, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1145), i64 4294967295), i64* %33, align 8, !tbaa !1240

  %92 = add i64 %91, 22

  %93 = load i64, i64* %35, align 8, !tbaa !1240

  %94 = add i64 %93, -8

  %95 = inttoptr i64 %94 to i64*

  store i64 %92, i64* %95

  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %97 = inttoptr i64 %94 to i64*

  %98 = load i64, i64* %97

  store i64 %98, i64* %11, align 8, !alias.scope !1288, !noalias !1291

  store i64 %93, i64* %35, align 8, !alias.scope !1288, !noalias !1291

  %99 = tail call i64 @fopen(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1134), i64 4294967295), i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1145), i64 4294967295))

  %100 = load i64, i64* %11, align 8

  %101 = icmp eq i64 %99, 0

  %102 = select i1 %101, i64 65, i64 5

  %103 = add i64 %100, %102

  br i1 %101, label %block_4017dc, label %block_4017a0



block_401d75:                                     ; preds = %block_401d49, %block_401d69

  %104 = phi i64 [ 51, %block_401d49 ], [ 0, %block_401d69 ]

  %105 = phi i64 [ %727, %block_401d49 ], [ %209, %block_401d69 ]

  %106 = phi %struct.Memory* [ %679, %block_401d49 ], [ %679, %block_401d69 ]

  %107 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1000) to double*)

  %108 = bitcast %union.VectorReg* %39 to double*

  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %110 = load i64, i64* %35, align 8

  %111 = inttoptr i64 %110 to double*

  %112 = load double, double* %111

  store double %112, double* %1257, align 1, !tbaa !1293

  %113 = bitcast i64* %739 to double*

  store double 0.000000e+00, double* %113, align 1, !tbaa !1293

  %114 = fdiv double %107, %112

  %115 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1008) to double*)

  %116 = fdiv double %114, %115

  store double %116, double* %108, align 1, !tbaa !1293

  store i64 0, i64* %109, align 1, !tbaa !1293

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1228), i64 4294967295), i64* %34, align 8, !tbaa !1240

  store i64 66, i64* %33, align 8, !tbaa !1240

  store i64 524288, i64* %32, align 8, !tbaa !1240

  store i64 64, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %776, align 8, !tbaa !1240

  store i64 10, i64* %777, align 8, !tbaa !1240

  %117 = add i64 %110, -8

  %118 = inttoptr i64 %117 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1296), i64* %118

  %119 = add i64 %110, -16

  %120 = inttoptr i64 %119 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1287), i64* %120

  %121 = add i64 %110, -24

  %122 = inttoptr i64 %121 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1275), i64* %122

  %123 = add i64 %110, -32

  %124 = inttoptr i64 %123 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1271), i64* %124

  %125 = add i64 %110, -40

  %126 = inttoptr i64 %125 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1265), i64* %126

  %127 = add i64 %110, -48

  %128 = inttoptr i64 %127 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1261), i64* %128

  %129 = add i64 %110, -56

  %130 = inttoptr i64 %129 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1249), i64* %130

  %131 = add i64 %110, -64

  %132 = inttoptr i64 %131 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1243), i64* %132

  %133 = add i64 %110, -72

  %134 = inttoptr i64 %133 to i64*

  store i64 %104, i64* %134

  %135 = add i64 %110, -80

  %136 = inttoptr i64 %135 to i64*

  store i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1231), i64* %136

  %137 = add i64 %105, -5653

  %138 = add i64 %105, 108

  %139 = add i64 %110, -88

  %140 = inttoptr i64 %139 to i64*

  store i64 %138, i64* %140

  store i64 %139, i64* %35, align 8, !tbaa !1240

  %141 = tail call %struct.Memory* @sub_400760_c_print_results(%struct.State* nonnull %0, i64 %137, %struct.Memory* %106)

  %142 = load i64, i64* %35, align 8

  %143 = load i64, i64* %11, align 8

  %144 = add i64 %142, 80

  %145 = load i8, i8* %22, align 1

  store i8 0, i8* %54, align 1, !tbaa !1244

  %146 = zext i8 %145 to i32

  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #10

  %148 = trunc i32 %147 to i8

  %149 = and i8 %148, 1

  %150 = xor i8 %149, 1

  store i8 %150, i8* %55, align 1, !tbaa !1258

  %151 = icmp eq i8 %145, 0

  %152 = zext i1 %151 to i8

  store i8 %152, i8* %57, align 1, !tbaa !1259

  %153 = lshr i8 %145, 7

  store i8 %153, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %154 = select i1 %151, i64 211, i64 13

  %155 = add i64 %143, %154

  br i1 %151, label %block_401eb4, label %block_401dee



block_401cfa:                                     ; preds = %block_401c69

  %156 = add i64 %2531, 14

  %157 = load i64, i64* %35, align 8, !tbaa !1240

  %158 = add i64 %157, -8

  %159 = inttoptr i64 %158 to i64*

  store i64 %156, i64* %159

  %160 = load i64, i64* %775, align 8, !alias.scope !1295, !noalias !1298

  %161 = load i64, i64* %776, align 8, !alias.scope !1295, !noalias !1298

  %162 = load i64, i64* %777, align 8, !alias.scope !1295, !noalias !1298

  %163 = inttoptr i64 %157 to i64*

  %164 = load i64, i64* %163

  %165 = add i64 %157, 8

  %166 = inttoptr i64 %165 to i64*

  %167 = load i64, i64* %166

  %168 = add i64 %157, 16

  %169 = inttoptr i64 %168 to i64*

  %170 = load i64, i64* %169

  %171 = add i64 %157, 24

  %172 = inttoptr i64 %171 to i64*

  %173 = load i64, i64* %172

  %174 = add i64 %157, 32

  %175 = inttoptr i64 %174 to i64*

  %176 = load i64, i64* %175

  %177 = add i64 %157, 40

  %178 = inttoptr i64 %177 to i64*

  %179 = load i64, i64* %178

  %180 = add i64 %157, 48

  %181 = inttoptr i64 %180 to i64*

  %182 = load i64, i64* %181

  %183 = add i64 %157, 56

  %184 = inttoptr i64 %183 to i64*

  %185 = load i64, i64* %184

  %186 = add i64 %157, 64

  %187 = inttoptr i64 %186 to i64*

  %188 = load i64, i64* %187

  %189 = add i64 %157, 72

  %190 = inttoptr i64 %189 to i64*

  %191 = load i64, i64* %190

  %192 = inttoptr i64 %158 to i64*

  %193 = load i64, i64* %192

  store i64 %193, i64* %11, align 8, !alias.scope !1295, !noalias !1298

  store i64 %157, i64* %35, align 8, !alias.scope !1295, !noalias !1298

  %194 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1032), i64 4294967295), i64 %2528, i64 %160, i64 %2528, i64 %161, i64 %162, i64 %164, i64 %167, i64 %170, i64 %173, i64 %176, i64 %179, i64 %182, i64 %185, i64 %188, i64 %191), !noalias !1295

  %195 = load i64, i64* %11, align 8

  %196 = load i64, i64* @stdout

  %197 = add i64 %195, 12

  %198 = load i64, i64* %35, align 8, !tbaa !1240

  %199 = add i64 %198, -8

  %200 = inttoptr i64 %199 to i64*

  store i64 %197, i64* %200

  %201 = inttoptr i64 %199 to i64*

  %202 = load i64, i64* %201

  store i64 %202, i64* %11, align 8, !alias.scope !1300, !noalias !1303

  store i64 %198, i64* %35, align 8, !alias.scope !1300, !noalias !1303

  %203 = tail call i64 @fflush(i64 %196), !noalias !1300

  %204 = load i8, i8* %22, align 1

  %205 = load i64, i64* %11, align 8

  %206 = icmp eq i8 %204, 0

  %207 = select i1 %206, i64 5, i64 43

  %208 = add i64 %205, %207

  br i1 %206, label %block_401d19, label %block_401d3f



block_401d69:                                     ; preds = %block_401d49

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %209 = add i64 %727, 12

  br label %block_401d75



block_401a60:                                     ; preds = %block_401a94

  %210 = shl i64 %2275, 2

  %211 = add i64 %2645, %210

  %212 = inttoptr i64 %211 to float*

  %213 = load float, float* %212

  %214 = add i64 %211, 4

  %215 = inttoptr i64 %214 to float*

  %216 = load float, float* %215

  %217 = add i64 %211, 8

  %218 = inttoptr i64 %217 to float*

  %219 = load float, float* %218

  %220 = add i64 %211, 12

  %221 = inttoptr i64 %220 to float*

  %222 = load float, float* %221

  store float %213, float* %2594, align 1, !tbaa !1305

  store float %216, float* %2596, align 1, !tbaa !1305

  store float %219, float* %2598, align 1, !tbaa !1305

  store float %222, float* %2600, align 1, !tbaa !1305

  %223 = add i64 %2646, %210

  %224 = inttoptr i64 %223 to float*

  %225 = load float, float* %224

  %226 = add i64 %223, 4

  %227 = inttoptr i64 %226 to float*

  %228 = load float, float* %227

  %229 = add i64 %223, 8

  %230 = inttoptr i64 %229 to float*

  %231 = load float, float* %230

  %232 = add i64 %223, 12

  %233 = inttoptr i64 %232 to float*

  %234 = load float, float* %233

  store float %225, float* %2647, align 1, !tbaa !1305

  store float %228, float* %2648, align 1, !tbaa !1305

  store float %231, float* %2649, align 1, !tbaa !1305

  store float %234, float* %2650, align 1, !tbaa !1305

  %235 = load i64, i64* %2621, align 1

  %236 = load i64, i64* %2606, align 1

  %237 = load i64, i64* %2611, align 1

  %238 = lshr i64 %236, 32

  %239 = trunc i64 %238 to i32

  %240 = trunc i64 %235 to i32

  %241 = trunc i64 %237 to i32

  store i32 %239, i32* %2651, align 1, !tbaa !1307

  store i32 %240, i32* %2652, align 1, !tbaa !1307

  store i32 %241, i32* %2653, align 1, !tbaa !1307

  store i32 %241, i32* %2654, align 1, !tbaa !1307

  %242 = load i64, i64* %2621, align 1

  %243 = load i64, i64* %2606, align 1

  %244 = load i64, i64* %2597, align 1

  %245 = trunc i64 %242 to i32

  %246 = trunc i64 %243 to i32

  %247 = lshr i64 %237, 32

  %248 = trunc i64 %247 to i32

  %249 = trunc i64 %244 to i32

  store i32 %245, i32* %2651, align 1, !tbaa !1307

  store i32 %246, i32* %2652, align 1, !tbaa !1307

  store i32 %248, i32* %2653, align 1, !tbaa !1307

  store i32 %249, i32* %2654, align 1, !tbaa !1307

  %250 = load i64, i64* %2621, align 1

  %251 = load i64, i64* %2606, align 1

  %252 = trunc i64 %250 to i32

  %253 = icmp sgt i32 %252, %241

  %254 = sext i1 %253 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2655)

  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 16

  store i32 %254, i32* %2656, align 16

  %255 = load i64, i64* %2657, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2655)

  %256 = lshr i64 %250, 32

  %257 = trunc i64 %256 to i32

  %258 = icmp sgt i32 %257, %248

  %259 = sext i1 %258 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2655)

  store i64 %255, i64* %2657, align 16

  store i64 0, i64* %2658, align 8

  store i32 %259, i32* %2660, align 4

  %260 = load i64, i64* %2657, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2655)

  %261 = trunc i64 %251 to i32

  %262 = icmp sgt i32 %261, %249

  %263 = sext i1 %262 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2655)

  store i64 %260, i64* %2657, align 16

  store i64 0, i64* %2658, align 8

  store i32 %263, i32* %2661, align 8

  %264 = load i64, i64* %2658, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2655)

  %265 = lshr i64 %251, 32

  %266 = trunc i64 %265 to i32

  %267 = lshr i64 %244, 32

  %268 = trunc i64 %267 to i32

  %269 = icmp sgt i32 %266, %268

  %270 = sext i1 %269 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2655)

  store i64 %260, i64* %2657, align 16

  store i64 %264, i64* %2658, align 8

  store i32 %270, i32* %2663, align 4

  %271 = load i64, i64* %2658, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2655)

  %272 = lshr i64 %260, 32

  %273 = trunc i64 %260 to i32

  %274 = trunc i64 %272 to i32

  store i32 %273, i32* %2651, align 1, !tbaa !1307

  store i32 %274, i32* %2652, align 1, !tbaa !1307

  %275 = trunc i64 %271 to i32

  store i32 %275, i32* %2653, align 1, !tbaa !1307

  %276 = lshr i64 %271, 32

  %277 = trunc i64 %276 to i32

  store i32 %277, i32* %2654, align 1, !tbaa !1307

  %278 = load i64, i64* %2610, align 1

  %279 = trunc i64 %278 to i32

  store i32 %268, i32* %2622, align 1, !tbaa !1307

  store i32 %241, i32* %2623, align 1, !tbaa !1307

  store i32 %279, i32* %2624, align 1, !tbaa !1307

  store i32 %279, i32* %2625, align 1, !tbaa !1307

  %280 = load i64, i64* %2611, align 1

  %281 = load i64, i64* %2597, align 1

  %282 = load i64, i64* %2584, align 1

  %283 = trunc i64 %280 to i32

  %284 = trunc i64 %281 to i32

  %285 = lshr i64 %278, 32

  %286 = trunc i64 %285 to i32

  %287 = trunc i64 %282 to i32

  store i32 %283, i32* %2622, align 1, !tbaa !1307

  store i32 %284, i32* %2623, align 1, !tbaa !1307

  store i32 %286, i32* %2624, align 1, !tbaa !1307

  store i32 %287, i32* %2625, align 1, !tbaa !1307

  %288 = load i64, i64* %2611, align 1

  %289 = load i64, i64* %2597, align 1

  %290 = trunc i64 %288 to i32

  %291 = icmp sgt i32 %290, %279

  %292 = sext i1 %291 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2664)

  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 16

  store i32 %292, i32* %2665, align 16

  %293 = load i64, i64* %2666, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2664)

  %294 = lshr i64 %288, 32

  %295 = trunc i64 %294 to i32

  %296 = icmp sgt i32 %295, %286

  %297 = sext i1 %296 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2664)

  store i64 %293, i64* %2666, align 16

  store i64 0, i64* %2667, align 8

  store i32 %297, i32* %2669, align 4

  %298 = load i64, i64* %2666, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2664)

  %299 = trunc i64 %289 to i32

  %300 = icmp sgt i32 %299, %287

  %301 = sext i1 %300 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2664)

  store i64 %298, i64* %2666, align 16

  store i64 0, i64* %2667, align 8

  store i32 %301, i32* %2670, align 8

  %302 = load i64, i64* %2667, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2664)

  %303 = lshr i64 %289, 32

  %304 = trunc i64 %303 to i32

  %305 = lshr i64 %282, 32

  %306 = trunc i64 %305 to i32

  %307 = icmp sgt i32 %304, %306

  %308 = sext i1 %307 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2664)

  store i64 %298, i64* %2666, align 16

  store i64 %302, i64* %2667, align 8

  store i32 %308, i32* %2672, align 4

  %309 = load i64, i64* %2667, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2664)

  %310 = lshr i64 %298, 32

  %311 = trunc i64 %298 to i32

  %312 = trunc i64 %310 to i32

  store i32 %311, i32* %2622, align 1, !tbaa !1307

  store i32 %312, i32* %2623, align 1, !tbaa !1307

  %313 = trunc i64 %309 to i32

  store i32 %313, i32* %2624, align 1, !tbaa !1307

  %314 = lshr i64 %309, 32

  %315 = trunc i64 %314 to i32

  store i32 %315, i32* %2625, align 1, !tbaa !1307

  %316 = load i64, i64* %2626, align 1

  %317 = load i64, i64* %739, align 1

  %318 = lshr i64 %316, 32

  %319 = load i64, i64* %2621, align 1

  %320 = load i64, i64* %2606, align 1

  %321 = lshr i64 %319, 32

  %322 = sub i64 %316, %319

  %323 = sub nsw i64 %318, %321

  %324 = sub i64 %317, %320

  %325 = lshr i64 %317, 32

  %326 = lshr i64 %320, 32

  %327 = sub nsw i64 %325, %326

  %328 = trunc i64 %322 to i32

  %329 = trunc i64 %323 to i32

  store i32 %328, i32* %2569, align 1, !tbaa !1307

  store i32 %329, i32* %2570, align 1, !tbaa !1307

  %330 = trunc i64 %324 to i32

  store i32 %330, i32* %2571, align 1, !tbaa !1307

  %331 = trunc i64 %327 to i32

  store i32 %331, i32* %2572, align 1, !tbaa !1307

  %332 = load i64, i64* %2636, align 1

  %333 = load i64, i64* %2637, align 1

  %334 = lshr i64 %332, 32

  %335 = load i64, i64* %2611, align 1

  %336 = load i64, i64* %2597, align 1

  %337 = lshr i64 %335, 32

  %338 = sub i64 %332, %335

  %339 = sub nsw i64 %334, %337

  %340 = sub i64 %333, %336

  %341 = lshr i64 %333, 32

  %342 = lshr i64 %336, 32

  %343 = sub nsw i64 %341, %342

  %344 = trunc i64 %338 to i32

  %345 = trunc i64 %339 to i32

  store i32 %344, i32* %2638, align 1, !tbaa !1307

  store i32 %345, i32* %2640, align 1, !tbaa !1307

  %346 = trunc i64 %340 to i32

  store i32 %346, i32* %2641, align 1, !tbaa !1307

  %347 = trunc i64 %343 to i32

  store i32 %347, i32* %2643, align 1, !tbaa !1307

  %348 = load i64, i64* %31, align 8

  %349 = add i64 %2278, 52

  %350 = add i64 %348, 16

  store i64 %350, i64* %31, align 8, !tbaa !1240

  br label %block_401a94



block_4019df:                                     ; preds = %block_401890

  store i64 2, i64* %34, align 8, !tbaa !1240

  %351 = add i64 %1782, -4111

  %352 = add i64 %1782, 10

  %353 = add i64 %1775, -8

  %354 = inttoptr i64 %353 to i64*

  store i64 %352, i64* %354

  store i64 %353, i64* %35, align 8, !tbaa !1240

  %355 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %351, %struct.Memory* %1774)

  %356 = load i64, i64* %11, align 8

  %357 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %358 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %358, i64* %29, align 8, !tbaa !1240

  %359 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %360 = add i64 %357, 134217728

  %361 = add i64 %358, -4

  %362 = add i64 %357, 134217732

  br label %block_401a10



block_401dee:                                     ; preds = %block_401d75

  %363 = bitcast i64* %109 to double*

  store i64 3, i64* %34, align 8, !tbaa !1240

  %364 = add i64 %155, -5038

  %365 = add i64 %155, 10

  %366 = add i64 %142, 72

  %367 = inttoptr i64 %366 to i64*

  store i64 %365, i64* %367

  store i64 %366, i64* %35, align 8, !tbaa !1240

  %368 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %364, %struct.Memory* %141)

  %369 = load i64, i64* %35, align 8

  %370 = load i64, i64* %11, align 8

  %371 = load double, double* %1257, align 1

  %372 = load double, double* %113, align 1

  %373 = inttoptr i64 %369 to double*

  store double %371, double* %373

  %374 = add i64 %369, 8

  %375 = inttoptr i64 %374 to double*

  store double %372, double* %375

  %376 = add i64 %370, 15

  %377 = add i64 %369, -8

  %378 = inttoptr i64 %377 to i64*

  store i64 %376, i64* %378

  %379 = inttoptr i64 %377 to i64*

  %380 = load i64, i64* %379

  store i64 %380, i64* %11, align 8, !alias.scope !1308, !noalias !1311

  store i64 %369, i64* %35, align 8, !alias.scope !1308, !noalias !1311

  %381 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1536), i64 4294967295)), !noalias !1308

  %382 = load i64, i64* %11, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1316), i64 4294967295), i64* %34, align 8, !tbaa !1240

  %383 = load i64, i64* %35, align 8

  %384 = inttoptr i64 %383 to float*

  %385 = load float, float* %384

  %386 = add i64 %383, 4

  %387 = inttoptr i64 %386 to float*

  %388 = load float, float* %387

  %389 = add i64 %383, 8

  %390 = inttoptr i64 %389 to float*

  %391 = load float, float* %390

  %392 = add i64 %383, 12

  %393 = inttoptr i64 %392 to float*

  %394 = load float, float* %393

  store float %385, float* %736, align 1, !tbaa !1305

  store float %388, float* %738, align 1, !tbaa !1305

  store float %391, float* %740, align 1, !tbaa !1305

  store float %394, float* %742, align 1, !tbaa !1305

  %395 = add i64 %382, 16

  %396 = add i64 %383, -8

  %397 = inttoptr i64 %396 to i64*

  store i64 %395, i64* %397

  %398 = load i64, i64* %96, align 8, !alias.scope !1313, !noalias !1316

  %399 = load i64, i64* %775, align 8, !alias.scope !1313, !noalias !1316

  %400 = load i64, i64* %774, align 8, !alias.scope !1313, !noalias !1316

  %401 = load i64, i64* %776, align 8, !alias.scope !1313, !noalias !1316

  %402 = load i64, i64* %777, align 8, !alias.scope !1313, !noalias !1316

  %403 = inttoptr i64 %383 to i64*

  %404 = load i64, i64* %403

  %405 = add i64 %383, 8

  %406 = inttoptr i64 %405 to i64*

  %407 = load i64, i64* %406

  %408 = add i64 %383, 16

  %409 = inttoptr i64 %408 to i64*

  %410 = load i64, i64* %409

  %411 = add i64 %383, 24

  %412 = inttoptr i64 %411 to i64*

  %413 = load i64, i64* %412

  %414 = add i64 %383, 32

  %415 = inttoptr i64 %414 to i64*

  %416 = load i64, i64* %415

  %417 = add i64 %383, 40

  %418 = inttoptr i64 %417 to i64*

  %419 = load i64, i64* %418

  %420 = add i64 %383, 48

  %421 = inttoptr i64 %420 to i64*

  %422 = load i64, i64* %421

  %423 = add i64 %383, 56

  %424 = inttoptr i64 %423 to i64*

  %425 = load i64, i64* %424

  %426 = add i64 %383, 64

  %427 = inttoptr i64 %426 to i64*

  %428 = load i64, i64* %427

  %429 = add i64 %383, 72

  %430 = inttoptr i64 %429 to i64*

  %431 = load i64, i64* %430

  %432 = inttoptr i64 %396 to i64*

  %433 = load i64, i64* %432

  store i64 %433, i64* %11, align 8, !alias.scope !1313, !noalias !1316

  store i64 %383, i64* %35, align 8, !alias.scope !1313, !noalias !1316

  %434 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1316), i64 4294967295), i64 %398, i64 %399, i64 %400, i64 %401, i64 %402, i64 %404, i64 %407, i64 %410, i64 %413, i64 %416, i64 %419, i64 %422, i64 %425, i64 %428, i64 %431), !noalias !1313

  store i64 %434, i64* %63, align 8, !alias.scope !1313, !noalias !1316

  %435 = load i64, i64* %11, align 8

  %436 = add i64 %435, 4

  store i64 %436, i64* %11, align 8

  %437 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %368, i32 257) #14

  %438 = load i64, i64* %35, align 8

  %439 = load i64, i64* %11, align 8

  %440 = inttoptr i64 %438 to double*

  %441 = load double, double* %440

  %442 = add i64 %438, 8

  %443 = inttoptr i64 %442 to double*

  %444 = load double, double* %443

  %445 = bitcast %union.VectorReg* %40 to double*

  store double %441, double* %445, align 1, !tbaa !1293

  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %447 = bitcast i64* %446 to double*

  store double %444, double* %447, align 1, !tbaa !1293

  %448 = load double, double* %108, align 1

  %449 = fcmp oeq double %448, %441

  %450 = sext i1 %449 to i64

  %451 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %450, i64* %451, align 1, !tbaa !1240

  store i64 0, i64* %109, align 1, !tbaa !1240

  %452 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1016) to double*)

  store double %452, double* %1257, align 1, !tbaa !1293

  store double 0.000000e+00, double* %113, align 1, !tbaa !1293

  %453 = add i64 %439, 22

  store i64 %453, i64* %11, align 8

  %454 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %437, i32 257) #14

  %455 = load i64, i64* %11, align 8

  %456 = add i64 %455, 4

  store i64 %456, i64* %11, align 8

  %457 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %454, i32 257) #14

  %458 = load i64, i64* %11, align 8

  %459 = add i64 %458, 4

  store i64 %459, i64* %11, align 8

  %460 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %457, i32 257) #14

  %461 = load i64, i64* %35, align 8

  %462 = load i64, i64* %11, align 8

  %463 = load double, double* %108, align 1

  %464 = load double, double* %363, align 1

  %465 = inttoptr i64 %461 to double*

  store double %463, double* %465

  %466 = add i64 %461, 8

  %467 = inttoptr i64 %466 to double*

  store double %464, double* %467

  store i64 1, i64* %34, align 8, !tbaa !1240

  %468 = add i64 %462, -5113

  %469 = add i64 %462, 15

  %470 = add i64 %461, -8

  %471 = inttoptr i64 %470 to i64*

  store i64 %469, i64* %471

  store i64 %470, i64* %35, align 8, !tbaa !1240

  %472 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %468, %struct.Memory* %460)

  %473 = load i64, i64* %11, align 8

  %474 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  %475 = load <2 x i64>, <2 x i64>* %474, align 1

  %476 = load i64, i64* %35, align 8

  %477 = bitcast <2 x i64> %475 to <2 x double>

  %478 = extractelement <2 x double> %477, i32 0

  %479 = extractelement <2 x i64> %475, i32 1

  %480 = inttoptr i64 %476 to double*

  %481 = load double, double* %480

  %482 = fdiv double %478, %481

  %483 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1024) to double*)

  %484 = fmul double %482, %483

  store double %484, double* %108, align 1, !tbaa !1293

  store i64 %479, i64* %109, align 1, !tbaa !1293

  %485 = add i64 %473, 29

  %486 = add i64 %476, -8

  %487 = inttoptr i64 %486 to i64*

  store i64 %485, i64* %487

  %488 = load i64, i64* %96, align 8, !alias.scope !1318, !noalias !1321

  %489 = load i64, i64* %775, align 8, !alias.scope !1318, !noalias !1321

  %490 = load i64, i64* %774, align 8, !alias.scope !1318, !noalias !1321

  %491 = load i64, i64* %776, align 8, !alias.scope !1318, !noalias !1321

  %492 = load i64, i64* %777, align 8, !alias.scope !1318, !noalias !1321

  %493 = inttoptr i64 %476 to i64*

  %494 = load i64, i64* %493

  %495 = add i64 %476, 8

  %496 = inttoptr i64 %495 to i64*

  %497 = load i64, i64* %496

  %498 = add i64 %476, 16

  %499 = inttoptr i64 %498 to i64*

  %500 = load i64, i64* %499

  %501 = add i64 %476, 24

  %502 = inttoptr i64 %501 to i64*

  %503 = load i64, i64* %502

  %504 = add i64 %476, 32

  %505 = inttoptr i64 %504 to i64*

  %506 = load i64, i64* %505

  %507 = add i64 %476, 40

  %508 = inttoptr i64 %507 to i64*

  %509 = load i64, i64* %508

  %510 = add i64 %476, 48

  %511 = inttoptr i64 %510 to i64*

  %512 = load i64, i64* %511

  %513 = add i64 %476, 56

  %514 = inttoptr i64 %513 to i64*

  %515 = load i64, i64* %514

  %516 = add i64 %476, 64

  %517 = inttoptr i64 %516 to i64*

  %518 = load i64, i64* %517

  %519 = add i64 %476, 72

  %520 = inttoptr i64 %519 to i64*

  %521 = load i64, i64* %520

  %522 = inttoptr i64 %486 to i64*

  %523 = load i64, i64* %522

  store i64 %523, i64* %11, align 8, !alias.scope !1318, !noalias !1321

  store i64 %476, i64* %35, align 8, !alias.scope !1318, !noalias !1321

  %524 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1341), i64 4294967295), i64 %488, i64 %489, i64 %490, i64 %491, i64 %492, i64 %494, i64 %497, i64 %500, i64 %503, i64 %506, i64 %509, i64 %512, i64 %515, i64 %518, i64 %521), !noalias !1318

  %525 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %526 = add i64 %525, -5157

  %527 = add i64 %525, 7

  %528 = load i64, i64* %35, align 8, !tbaa !1240

  %529 = add i64 %528, -8

  %530 = inttoptr i64 %529 to i64*

  store i64 %527, i64* %530

  store i64 %529, i64* %35, align 8, !tbaa !1240

  %531 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %526, %struct.Memory* %472)

  %532 = load i64, i64* %11, align 8

  %533 = load <2 x i64>, <2 x i64>* %474, align 1

  %534 = load i64, i64* %35, align 8

  %535 = bitcast <2 x i64> %533 to <2 x double>

  %536 = extractelement <2 x double> %535, i32 0

  %537 = extractelement <2 x i64> %533, i32 1

  %538 = inttoptr i64 %534 to double*

  %539 = load double, double* %538

  %540 = fdiv double %536, %539

  %541 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1024) to double*)

  %542 = fmul double %540, %541

  store double %542, double* %108, align 1, !tbaa !1293

  store i64 %537, i64* %109, align 1, !tbaa !1293

  %543 = add i64 %532, 29

  %544 = add i64 %534, -8

  %545 = inttoptr i64 %544 to i64*

  store i64 %543, i64* %545

  %546 = load i64, i64* %96, align 8, !alias.scope !1323, !noalias !1326

  %547 = load i64, i64* %775, align 8, !alias.scope !1323, !noalias !1326

  %548 = load i64, i64* %774, align 8, !alias.scope !1323, !noalias !1326

  %549 = load i64, i64* %776, align 8, !alias.scope !1323, !noalias !1326

  %550 = load i64, i64* %777, align 8, !alias.scope !1323, !noalias !1326

  %551 = inttoptr i64 %534 to i64*

  %552 = load i64, i64* %551

  %553 = add i64 %534, 8

  %554 = inttoptr i64 %553 to i64*

  %555 = load i64, i64* %554

  %556 = add i64 %534, 16

  %557 = inttoptr i64 %556 to i64*

  %558 = load i64, i64* %557

  %559 = add i64 %534, 24

  %560 = inttoptr i64 %559 to i64*

  %561 = load i64, i64* %560

  %562 = add i64 %534, 32

  %563 = inttoptr i64 %562 to i64*

  %564 = load i64, i64* %563

  %565 = add i64 %534, 40

  %566 = inttoptr i64 %565 to i64*

  %567 = load i64, i64* %566

  %568 = add i64 %534, 48

  %569 = inttoptr i64 %568 to i64*

  %570 = load i64, i64* %569

  %571 = add i64 %534, 56

  %572 = inttoptr i64 %571 to i64*

  %573 = load i64, i64* %572

  %574 = add i64 %534, 64

  %575 = inttoptr i64 %574 to i64*

  %576 = load i64, i64* %575

  %577 = add i64 %534, 72

  %578 = inttoptr i64 %577 to i64*

  %579 = load i64, i64* %578

  %580 = inttoptr i64 %544 to i64*

  %581 = load i64, i64* %580

  store i64 %581, i64* %11, align 8, !alias.scope !1323, !noalias !1326

  store i64 %534, i64* %35, align 8, !alias.scope !1323, !noalias !1326

  %582 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1376), i64 4294967295), i64 %546, i64 %547, i64 %548, i64 %549, i64 %550, i64 %552, i64 %555, i64 %558, i64 %561, i64 %564, i64 %567, i64 %570, i64 %573, i64 %576, i64 %579), !noalias !1323

  %583 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %584 = add i64 %583, -5193

  %585 = add i64 %583, 10

  %586 = load i64, i64* %35, align 8, !tbaa !1240

  %587 = add i64 %586, -8

  %588 = inttoptr i64 %587 to i64*

  store i64 %585, i64* %588

  store i64 %587, i64* %35, align 8, !tbaa !1240

  %589 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %584, %struct.Memory* %531)

  %590 = load i64, i64* %11, align 8

  %591 = load <2 x i64>, <2 x i64>* %474, align 1

  %592 = load i64, i64* %35, align 8

  %593 = bitcast <2 x i64> %591 to <2 x double>

  %594 = extractelement <2 x double> %593, i32 0

  %595 = extractelement <2 x i64> %591, i32 1

  %596 = inttoptr i64 %592 to double*

  %597 = load double, double* %596

  %598 = fdiv double %594, %597

  store double %598, double* %445, align 1, !tbaa !1293

  store i64 %595, i64* %446, align 1, !tbaa !1293

  %599 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1024) to double*)

  %600 = fmul double %599, %598

  store double %600, double* %108, align 1, !tbaa !1293

  store i64 0, i64* %109, align 1, !tbaa !1293

  %601 = add i64 %590, 33

  %602 = add i64 %592, -8

  %603 = inttoptr i64 %602 to i64*

  store i64 %601, i64* %603

  %604 = load i64, i64* %96, align 8, !alias.scope !1328, !noalias !1331

  %605 = load i64, i64* %775, align 8, !alias.scope !1328, !noalias !1331

  %606 = load i64, i64* %774, align 8, !alias.scope !1328, !noalias !1331

  %607 = load i64, i64* %776, align 8, !alias.scope !1328, !noalias !1331

  %608 = load i64, i64* %777, align 8, !alias.scope !1328, !noalias !1331

  %609 = inttoptr i64 %592 to i64*

  %610 = load i64, i64* %609

  %611 = add i64 %592, 8

  %612 = inttoptr i64 %611 to i64*

  %613 = load i64, i64* %612

  %614 = add i64 %592, 16

  %615 = inttoptr i64 %614 to i64*

  %616 = load i64, i64* %615

  %617 = add i64 %592, 24

  %618 = inttoptr i64 %617 to i64*

  %619 = load i64, i64* %618

  %620 = add i64 %592, 32

  %621 = inttoptr i64 %620 to i64*

  %622 = load i64, i64* %621

  %623 = add i64 %592, 40

  %624 = inttoptr i64 %623 to i64*

  %625 = load i64, i64* %624

  %626 = add i64 %592, 48

  %627 = inttoptr i64 %626 to i64*

  %628 = load i64, i64* %627

  %629 = add i64 %592, 56

  %630 = inttoptr i64 %629 to i64*

  %631 = load i64, i64* %630

  %632 = add i64 %592, 64

  %633 = inttoptr i64 %632 to i64*

  %634 = load i64, i64* %633

  %635 = add i64 %592, 72

  %636 = inttoptr i64 %635 to i64*

  %637 = load i64, i64* %636

  %638 = inttoptr i64 %602 to i64*

  %639 = load i64, i64* %638

  store i64 %639, i64* %11, align 8, !alias.scope !1328, !noalias !1331

  store i64 %592, i64* %35, align 8, !alias.scope !1328, !noalias !1331

  %640 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1411), i64 4294967295), i64 %604, i64 %605, i64 %606, i64 %607, i64 %608, i64 %610, i64 %613, i64 %616, i64 %619, i64 %622, i64 %625, i64 %628, i64 %631, i64 %634, i64 %637), !noalias !1328

  %641 = load i64, i64* %11, align 8

  %642 = load i64, i64* %35, align 8, !tbaa !1240

  br label %block_401eb4



block_4017dc:                                     ; preds = %block_401740

  store i64 0, i64* %37, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %643 = add i64 %103, -3612

  %644 = add i64 %103, 10

  %645 = load i64, i64* %35, align 8, !tbaa !1240

  %646 = add i64 %645, -8

  %647 = inttoptr i64 %646 to i64*

  store i64 %644, i64* %647

  store i64 %646, i64* %35, align 8, !tbaa !1240

  %648 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %643, %struct.Memory* %2)

  %649 = load i64, i64* %11, align 8

  br label %block_4017e6



block_401850:                                     ; preds = %block_4017e6

  store i64 1, i64* %34, align 8, !tbaa !1240

  %650 = add i64 %858, -3712

  %651 = add i64 %858, 10

  %652 = load i64, i64* %35, align 8, !tbaa !1240

  %653 = add i64 %652, -8

  %654 = inttoptr i64 %653 to i64*

  store i64 %651, i64* %654

  store i64 %653, i64* %35, align 8, !tbaa !1240

  %655 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %650, %struct.Memory* %729)

  %656 = load i64, i64* %11, align 8

  %657 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 984) to double*)

  %658 = bitcast [32 x %union.VectorReg]* %38 to double*

  store double %657, double* %658, align 1, !tbaa !1293

  %659 = bitcast i64* %739 to double*

  store double 0.000000e+00, double* %659, align 1, !tbaa !1293

  %660 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 992) to i64*)

  %661 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %660, i64* %661, align 1, !tbaa !1240

  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  store i64 0, i64* %662, align 1, !tbaa !1240

  %663 = add i64 %656, -3146

  %664 = add i64 %656, 21

  %665 = load i64, i64* %35, align 8, !tbaa !1240

  %666 = add i64 %665, -8

  %667 = inttoptr i64 %666 to i64*

  store i64 %664, i64* %667

  store i64 %666, i64* %35, align 8, !tbaa !1240

  %668 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull %0, i64 %663, %struct.Memory* %655)

  %669 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %670 = add i64 %669, -3695

  %671 = add i64 %669, 10

  %672 = load i64, i64* %35, align 8, !tbaa !1240

  %673 = add i64 %672, -8

  %674 = inttoptr i64 %673 to i64*

  store i64 %671, i64* %674

  store i64 %673, i64* %35, align 8, !tbaa !1240

  %675 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %670, %struct.Memory* %668)

  %676 = load i64, i64* %11, align 8

  %677 = add i64 %676, 23

  br label %block_401890



block_401d49:                                     ; preds = %block_401b8b, %block_401d19, %block_401d31, %block_401d33, %block_401d3f

  %678 = phi i64 [ %1148, %block_401d33 ], [ %927, %block_401d3f ], [ %2134, %block_401d19 ], [ %1256, %block_401d31 ], [ %2566, %block_401b8b ]

  %679 = phi %struct.Memory* [ %2533, %block_401d33 ], [ %926, %block_401d3f ], [ %2533, %block_401d19 ], [ %1847, %block_401d31 ], [ %913, %block_401b8b ]

  %680 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %681 = zext i32 %680 to i64

  %682 = add i64 %678, 18

  %683 = load i64, i64* %35, align 8, !tbaa !1240

  %684 = add i64 %683, -8

  %685 = inttoptr i64 %684 to i64*

  store i64 %682, i64* %685

  %686 = load i64, i64* %775, align 8, !alias.scope !1333, !noalias !1336

  %687 = load i64, i64* %774, align 8, !alias.scope !1333, !noalias !1336

  %688 = load i64, i64* %776, align 8, !alias.scope !1333, !noalias !1336

  %689 = load i64, i64* %777, align 8, !alias.scope !1333, !noalias !1336

  %690 = inttoptr i64 %683 to i64*

  %691 = load i64, i64* %690

  %692 = add i64 %683, 8

  %693 = inttoptr i64 %692 to i64*

  %694 = load i64, i64* %693

  %695 = add i64 %683, 16

  %696 = inttoptr i64 %695 to i64*

  %697 = load i64, i64* %696

  %698 = add i64 %683, 24

  %699 = inttoptr i64 %698 to i64*

  %700 = load i64, i64* %699

  %701 = add i64 %683, 32

  %702 = inttoptr i64 %701 to i64*

  %703 = load i64, i64* %702

  %704 = add i64 %683, 40

  %705 = inttoptr i64 %704 to i64*

  %706 = load i64, i64* %705

  %707 = add i64 %683, 48

  %708 = inttoptr i64 %707 to i64*

  %709 = load i64, i64* %708

  %710 = add i64 %683, 56

  %711 = inttoptr i64 %710 to i64*

  %712 = load i64, i64* %711

  %713 = add i64 %683, 64

  %714 = inttoptr i64 %713 to i64*

  %715 = load i64, i64* %714

  %716 = add i64 %683, 72

  %717 = inttoptr i64 %716 to i64*

  %718 = load i64, i64* %717

  %719 = inttoptr i64 %684 to i64*

  %720 = load i64, i64* %719

  store i64 %720, i64* %11, align 8, !alias.scope !1333, !noalias !1336

  store i64 %683, i64* %35, align 8, !alias.scope !1333, !noalias !1336

  %721 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1203), i64 4294967295), i64 %681, i64 %686, i64 %687, i64 %688, i64 %689, i64 %691, i64 %694, i64 %697, i64 %700, i64 %703, i64 %706, i64 %709, i64 %712, i64 %715, i64 %718), !noalias !1333

  %722 = load i64, i64* %11, align 8

  %723 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %724 = add i32 %723, -51

  %725 = icmp eq i32 %724, 0

  %726 = select i1 %725, i64 26, i64 14

  %727 = add i64 %722, %726

  br i1 %725, label %block_401d75, label %block_401d69



block_4017e6:                                     ; preds = %block_4017a0, %block_4017dc

  %728 = phi i64 [ %649, %block_4017dc ], [ %1826, %block_4017a0 ]

  %729 = phi %struct.Memory* [ %648, %block_4017dc ], [ %1824, %block_4017a0 ]

  %730 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%B_test_index_array_type* @B_test_index_array to i64), i64 16) to i32*)

  store i32 %730, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 16) to i32*)

  %731 = bitcast [32 x %union.VectorReg]* %38 to i8*

  %732 = load float, float* bitcast (%B_test_index_array_type* @B_test_index_array to float*)

  %733 = load float, float* inttoptr (i64 add (i64 ptrtoint (%B_test_index_array_type* @B_test_index_array to i64), i64 4) to float*)

  %734 = load float, float* inttoptr (i64 add (i64 ptrtoint (%B_test_index_array_type* @B_test_index_array to i64), i64 8) to float*)

  %735 = load float, float* inttoptr (i64 add (i64 ptrtoint (%B_test_index_array_type* @B_test_index_array to i64), i64 12) to float*)

  %736 = bitcast [32 x %union.VectorReg]* %38 to float*

  store float %732, float* %736, align 1, !tbaa !1305

  %737 = getelementptr inbounds i8, i8* %731, i64 4

  %738 = bitcast i8* %737 to float*

  store float %733, float* %738, align 1, !tbaa !1305

  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %740 = bitcast i64* %739 to float*

  store float %734, float* %740, align 1, !tbaa !1305

  %741 = getelementptr inbounds i8, i8* %731, i64 12

  %742 = bitcast i8* %741 to float*

  store float %735, float* %742, align 1, !tbaa !1305

  %743 = bitcast [32 x %union.VectorReg]* %38 to <2 x float>*

  %744 = load <2 x float>, <2 x float>* %743, align 1

  %745 = bitcast i64* %739 to <2 x float>*

  %746 = load <2 x float>, <2 x float>* %745, align 1

  %747 = extractelement <2 x float> %744, i32 0

  store float %747, float* bitcast (%test_index_array_type* @test_index_array to float*)

  %748 = extractelement <2 x float> %744, i32 1

  store float %748, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 4) to float*)

  %749 = extractelement <2 x float> %746, i32 0

  store float %749, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 8) to float*)

  %750 = extractelement <2 x float> %746, i32 1

  store float %750, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 12) to float*)

  %751 = load float, float* bitcast (%B_test_rank_array_type* @B_test_rank_array to float*)

  %752 = load float, float* inttoptr (i64 add (i64 ptrtoint (%B_test_rank_array_type* @B_test_rank_array to i64), i64 4) to float*)

  %753 = load float, float* inttoptr (i64 add (i64 ptrtoint (%B_test_rank_array_type* @B_test_rank_array to i64), i64 8) to float*)

  %754 = load float, float* inttoptr (i64 add (i64 ptrtoint (%B_test_rank_array_type* @B_test_rank_array to i64), i64 12) to float*)

  store float %751, float* %736, align 1, !tbaa !1305

  store float %752, float* %738, align 1, !tbaa !1305

  store float %753, float* %740, align 1, !tbaa !1305

  store float %754, float* %742, align 1, !tbaa !1305

  %755 = load <2 x float>, <2 x float>* %743, align 1

  %756 = load <2 x float>, <2 x float>* %745, align 1

  %757 = extractelement <2 x float> %755, i32 0

  store float %757, float* bitcast (%test_rank_array_type* @test_rank_array to float*)

  %758 = extractelement <2 x float> %755, i32 1

  store float %758, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4) to float*)

  %759 = extractelement <2 x float> %756, i32 0

  store float %759, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8) to float*)

  %760 = extractelement <2 x float> %756, i32 1

  store float %760, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 12) to float*)

  %761 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%B_test_rank_array_type* @B_test_rank_array to i64), i64 16) to i32*)

  store i32 %761, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 16) to i32*)

  %762 = add i64 %728, 62

  %763 = load i64, i64* %35, align 8, !tbaa !1240

  %764 = add i64 %763, -8

  %765 = inttoptr i64 %764 to i64*

  store i64 %762, i64* %765

  %766 = inttoptr i64 %764 to i64*

  %767 = load i64, i64* %766

  store i64 %767, i64* %11, align 8, !alias.scope !1338, !noalias !1341

  store i64 %763, i64* %35, align 8, !alias.scope !1338, !noalias !1341

  %768 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1472), i64 4294967295))

  %769 = load i64, i64* %11, align 8

  store i64 66, i64* %32, align 8, !tbaa !1240

  %770 = add i64 %769, 22

  %771 = load i64, i64* %35, align 8, !tbaa !1240

  %772 = add i64 %771, -8

  %773 = inttoptr i64 %772 to i64*

  store i64 %770, i64* %773

  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %778 = load i64, i64* %774, align 8, !alias.scope !1343, !noalias !1346

  %779 = load i64, i64* %776, align 8, !alias.scope !1343, !noalias !1346

  %780 = load i64, i64* %777, align 8, !alias.scope !1343, !noalias !1346

  %781 = inttoptr i64 %771 to i64*

  %782 = load i64, i64* %781

  %783 = add i64 %771, 8

  %784 = inttoptr i64 %783 to i64*

  %785 = load i64, i64* %784

  %786 = add i64 %771, 16

  %787 = inttoptr i64 %786 to i64*

  %788 = load i64, i64* %787

  %789 = add i64 %771, 24

  %790 = inttoptr i64 %789 to i64*

  %791 = load i64, i64* %790

  %792 = add i64 %771, 32

  %793 = inttoptr i64 %792 to i64*

  %794 = load i64, i64* %793

  %795 = add i64 %771, 40

  %796 = inttoptr i64 %795 to i64*

  %797 = load i64, i64* %796

  %798 = add i64 %771, 48

  %799 = inttoptr i64 %798 to i64*

  %800 = load i64, i64* %799

  %801 = add i64 %771, 56

  %802 = inttoptr i64 %801 to i64*

  %803 = load i64, i64* %802

  %804 = add i64 %771, 64

  %805 = inttoptr i64 %804 to i64*

  %806 = load i64, i64* %805

  %807 = add i64 %771, 72

  %808 = inttoptr i64 %807 to i64*

  %809 = load i64, i64* %808

  %810 = inttoptr i64 %772 to i64*

  %811 = load i64, i64* %810

  store i64 %811, i64* %11, align 8, !alias.scope !1343, !noalias !1346

  store i64 %771, i64* %35, align 8, !alias.scope !1343, !noalias !1346

  %812 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1147), i64 4294967295), i64 33554432, i64 66, i64 %778, i64 %779, i64 %780, i64 %782, i64 %785, i64 %788, i64 %791, i64 %794, i64 %797, i64 %800, i64 %803, i64 %806, i64 %809)

  %813 = load i64, i64* %11, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1172), i64 4294967295), i64* %34, align 8, !tbaa !1240

  store i64 10, i64* %33, align 8, !tbaa !1240

  %814 = add i64 %813, 17

  %815 = load i64, i64* %35, align 8, !tbaa !1240

  %816 = add i64 %815, -8

  %817 = inttoptr i64 %816 to i64*

  store i64 %814, i64* %817

  %818 = load i64, i64* %775, align 8, !alias.scope !1348, !noalias !1351

  %819 = load i64, i64* %774, align 8, !alias.scope !1348, !noalias !1351

  %820 = load i64, i64* %776, align 8, !alias.scope !1348, !noalias !1351

  %821 = load i64, i64* %777, align 8, !alias.scope !1348, !noalias !1351

  %822 = inttoptr i64 %815 to i64*

  %823 = load i64, i64* %822

  %824 = add i64 %815, 8

  %825 = inttoptr i64 %824 to i64*

  %826 = load i64, i64* %825

  %827 = add i64 %815, 16

  %828 = inttoptr i64 %827 to i64*

  %829 = load i64, i64* %828

  %830 = add i64 %815, 24

  %831 = inttoptr i64 %830 to i64*

  %832 = load i64, i64* %831

  %833 = add i64 %815, 32

  %834 = inttoptr i64 %833 to i64*

  %835 = load i64, i64* %834

  %836 = add i64 %815, 40

  %837 = inttoptr i64 %836 to i64*

  %838 = load i64, i64* %837

  %839 = add i64 %815, 48

  %840 = inttoptr i64 %839 to i64*

  %841 = load i64, i64* %840

  %842 = add i64 %815, 56

  %843 = inttoptr i64 %842 to i64*

  %844 = load i64, i64* %843

  %845 = add i64 %815, 64

  %846 = inttoptr i64 %845 to i64*

  %847 = load i64, i64* %846

  %848 = add i64 %815, 72

  %849 = inttoptr i64 %848 to i64*

  %850 = load i64, i64* %849

  %851 = inttoptr i64 %816 to i64*

  %852 = load i64, i64* %851

  store i64 %852, i64* %11, align 8, !alias.scope !1348, !noalias !1351

  store i64 %815, i64* %35, align 8, !alias.scope !1348, !noalias !1351

  %853 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1172), i64 4294967295), i64 10, i64 %818, i64 %819, i64 %820, i64 %821, i64 %823, i64 %826, i64 %829, i64 %832, i64 %835, i64 %838, i64 %841, i64 %844, i64 %847, i64 %850), !noalias !1348

  %854 = load i8, i8* %22, align 1

  %855 = load i64, i64* %11, align 8

  %856 = icmp eq i8 %854, 0

  %857 = select i1 %856, i64 48, i64 5

  %858 = add i64 %855, %857

  br i1 %856, label %block_40187b, label %block_401850



block_401b5e:                                     ; preds = %block_401ac9

  %859 = add i64 %2133, 14

  %860 = load i64, i64* %35, align 8, !tbaa !1240

  %861 = add i64 %860, -8

  %862 = inttoptr i64 %861 to i64*

  store i64 %859, i64* %862

  %863 = load i64, i64* %775, align 8, !alias.scope !1353, !noalias !1356

  %864 = load i64, i64* %776, align 8, !alias.scope !1353, !noalias !1356

  %865 = load i64, i64* %777, align 8, !alias.scope !1353, !noalias !1356

  %866 = inttoptr i64 %860 to i64*

  %867 = load i64, i64* %866

  %868 = add i64 %860, 8

  %869 = inttoptr i64 %868 to i64*

  %870 = load i64, i64* %869

  %871 = add i64 %860, 16

  %872 = inttoptr i64 %871 to i64*

  %873 = load i64, i64* %872

  %874 = add i64 %860, 24

  %875 = inttoptr i64 %874 to i64*

  %876 = load i64, i64* %875

  %877 = add i64 %860, 32

  %878 = inttoptr i64 %877 to i64*

  %879 = load i64, i64* %878

  %880 = add i64 %860, 40

  %881 = inttoptr i64 %880 to i64*

  %882 = load i64, i64* %881

  %883 = add i64 %860, 48

  %884 = inttoptr i64 %883 to i64*

  %885 = load i64, i64* %884

  %886 = add i64 %860, 56

  %887 = inttoptr i64 %886 to i64*

  %888 = load i64, i64* %887

  %889 = add i64 %860, 64

  %890 = inttoptr i64 %889 to i64*

  %891 = load i64, i64* %890

  %892 = add i64 %860, 72

  %893 = inttoptr i64 %892 to i64*

  %894 = load i64, i64* %893

  %895 = inttoptr i64 %861 to i64*

  %896 = load i64, i64* %895

  store i64 %896, i64* %11, align 8, !alias.scope !1353, !noalias !1356

  store i64 %860, i64* %35, align 8, !alias.scope !1353, !noalias !1356

  %897 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1032), i64 4294967295), i64 %2130, i64 %863, i64 %2130, i64 %864, i64 %865, i64 %867, i64 %870, i64 %873, i64 %876, i64 %879, i64 %882, i64 %885, i64 %888, i64 %891, i64 %894), !noalias !1353

  %898 = load i64, i64* %11, align 8

  %899 = load i64, i64* @stdout

  %900 = add i64 %898, 12

  %901 = load i64, i64* %35, align 8, !tbaa !1240

  %902 = add i64 %901, -8

  %903 = inttoptr i64 %902 to i64*

  store i64 %900, i64* %903

  %904 = inttoptr i64 %902 to i64*

  %905 = load i64, i64* %904

  store i64 %905, i64* %11, align 8, !alias.scope !1358, !noalias !1361

  store i64 %901, i64* %35, align 8, !alias.scope !1358, !noalias !1361

  %906 = tail call i64 @fflush(i64 %899), !noalias !1358

  %907 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %908 = add i64 %907, -4472

  %909 = add i64 %907, 10

  %910 = load i64, i64* %35, align 8, !tbaa !1240

  %911 = add i64 %910, -8

  %912 = inttoptr i64 %911 to i64*

  store i64 %909, i64* %912

  store i64 %911, i64* %35, align 8, !tbaa !1240

  %913 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %908, %struct.Memory* %1854)

  %914 = load i8, i8* %22, align 1

  %915 = load i64, i64* %11, align 8

  %916 = icmp eq i8 %914, 0

  %917 = select i1 %916, i64 9, i64 445

  %918 = add i64 %915, %917

  br i1 %916, label %block_401b8b, label %block_401d3f



block_401d3f:                                     ; preds = %block_401d1b, %block_401d33, %block_401b5e, %block_401cfa

  %919 = phi i64 [ %1148, %block_401d33 ], [ %208, %block_401cfa ], [ %1852, %block_401d1b ], [ %918, %block_401b5e ]

  %920 = phi %struct.Memory* [ %2533, %block_401d33 ], [ %2533, %block_401cfa ], [ %1847, %block_401d1b ], [ %913, %block_401b5e ]

  store i64 3, i64* %34, align 8, !tbaa !1240

  %921 = add i64 %919, -4927

  %922 = add i64 %919, 10

  %923 = load i64, i64* %35, align 8, !tbaa !1240

  %924 = add i64 %923, -8

  %925 = inttoptr i64 %924 to i64*

  store i64 %922, i64* %925

  store i64 %924, i64* %35, align 8, !tbaa !1240

  %926 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %921, %struct.Memory* %920)

  %927 = load i64, i64* %11, align 8

  br label %block_401d49



block_401c34:                                     ; preds = %block_401c00, %block_401be4

  %928 = phi i64 [ %2746, %block_401c00 ], [ %1255, %block_401be4 ]

  %929 = phi i64 [ %2814, %block_401c00 ], [ -33554416, %block_401be4 ]

  %930 = phi i64 [ %2813, %block_401c00 ], [ %1173, %block_401be4 ]

  %931 = shl i64 %929, 2

  %932 = add i64 %1175, %931

  %933 = inttoptr i64 %932 to float*

  %934 = load float, float* %933

  %935 = add i64 %932, 4

  %936 = inttoptr i64 %935 to float*

  %937 = load float, float* %936

  %938 = add i64 %932, 8

  %939 = inttoptr i64 %938 to float*

  %940 = load float, float* %939

  %941 = add i64 %932, 12

  %942 = inttoptr i64 %941 to float*

  %943 = load float, float* %942

  store float %934, float* %1176, align 1, !tbaa !1305

  store float %937, float* %1178, align 1, !tbaa !1305

  store float %940, float* %1180, align 1, !tbaa !1305

  store float %943, float* %1182, align 1, !tbaa !1305

  %944 = add i64 %1184, %931

  %945 = inttoptr i64 %944 to float*

  %946 = load float, float* %945

  %947 = add i64 %944, 4

  %948 = inttoptr i64 %947 to float*

  %949 = load float, float* %948

  %950 = add i64 %944, 8

  %951 = inttoptr i64 %950 to float*

  %952 = load float, float* %951

  %953 = add i64 %944, 12

  %954 = inttoptr i64 %953 to float*

  %955 = load float, float* %954

  store float %946, float* %1185, align 1, !tbaa !1305

  store float %949, float* %1187, align 1, !tbaa !1305

  store float %952, float* %1189, align 1, !tbaa !1305

  store float %955, float* %1191, align 1, !tbaa !1305

  %956 = load i64, i64* %1192, align 1

  %957 = load i64, i64* %1193, align 1

  %958 = lshr i64 %928, 32

  %959 = trunc i64 %958 to i32

  %960 = trunc i64 %956 to i32

  %961 = trunc i64 %957 to i32

  store i32 %959, i32* %1163, align 1, !tbaa !1307

  store i32 %960, i32* %1165, align 1, !tbaa !1307

  store i32 %961, i32* %1167, align 1, !tbaa !1307

  store i32 %961, i32* %1169, align 1, !tbaa !1307

  %962 = load i64, i64* %1192, align 1

  %963 = load i64, i64* %1166, align 1

  %964 = load i64, i64* %1179, align 1

  %965 = trunc i64 %962 to i32

  %966 = trunc i64 %963 to i32

  %967 = lshr i64 %957, 32

  %968 = trunc i64 %967 to i32

  %969 = trunc i64 %964 to i32

  store i32 %965, i32* %1163, align 1, !tbaa !1307

  store i32 %966, i32* %1165, align 1, !tbaa !1307

  store i32 %968, i32* %1167, align 1, !tbaa !1307

  store i32 %969, i32* %1169, align 1, !tbaa !1307

  %970 = load i64, i64* %1192, align 1

  %971 = load i64, i64* %1166, align 1

  %972 = trunc i64 %970 to i32

  %973 = icmp sgt i32 %972, %961

  %974 = sext i1 %973 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1194)

  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16

  store i32 %974, i32* %1195, align 16

  %975 = load i64, i64* %1196, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1194)

  %976 = lshr i64 %970, 32

  %977 = trunc i64 %976 to i32

  %978 = icmp sgt i32 %977, %968

  %979 = sext i1 %978 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1194)

  store i64 %975, i64* %1196, align 16

  store i64 0, i64* %1197, align 8

  store i32 %979, i32* %1199, align 4

  %980 = load i64, i64* %1196, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1194)

  %981 = trunc i64 %971 to i32

  %982 = icmp sgt i32 %981, %969

  %983 = sext i1 %982 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1194)

  store i64 %980, i64* %1196, align 16

  store i64 0, i64* %1197, align 8

  store i32 %983, i32* %1200, align 8

  %984 = load i64, i64* %1197, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1194)

  %985 = lshr i64 %971, 32

  %986 = trunc i64 %985 to i32

  %987 = lshr i64 %964, 32

  %988 = trunc i64 %987 to i32

  %989 = icmp sgt i32 %986, %988

  %990 = sext i1 %989 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1194)

  store i64 %980, i64* %1196, align 16

  store i64 %984, i64* %1197, align 8

  store i32 %990, i32* %1202, align 4

  %991 = load i64, i64* %1197, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1194)

  %992 = lshr i64 %980, 32

  %993 = trunc i64 %980 to i32

  %994 = trunc i64 %992 to i32

  store i32 %993, i32* %1163, align 1, !tbaa !1307

  store i32 %994, i32* %1165, align 1, !tbaa !1307

  %995 = trunc i64 %991 to i32

  store i32 %995, i32* %1167, align 1, !tbaa !1307

  %996 = lshr i64 %991, 32

  %997 = trunc i64 %996 to i32

  store i32 %997, i32* %1169, align 1, !tbaa !1307

  %998 = load i64, i64* %1203, align 1

  %999 = trunc i64 %998 to i32

  store i32 %988, i32* %1204, align 1, !tbaa !1307

  store i32 %961, i32* %1205, align 1, !tbaa !1307

  store i32 %999, i32* %1206, align 1, !tbaa !1307

  store i32 %999, i32* %1207, align 1, !tbaa !1307

  %1000 = load i64, i64* %1193, align 1

  %1001 = load i64, i64* %1179, align 1

  %1002 = load i64, i64* %1188, align 1

  %1003 = trunc i64 %1000 to i32

  %1004 = trunc i64 %1001 to i32

  %1005 = lshr i64 %998, 32

  %1006 = trunc i64 %1005 to i32

  %1007 = trunc i64 %1002 to i32

  store i32 %1003, i32* %1204, align 1, !tbaa !1307

  store i32 %1004, i32* %1205, align 1, !tbaa !1307

  store i32 %1006, i32* %1206, align 1, !tbaa !1307

  store i32 %1007, i32* %1207, align 1, !tbaa !1307

  %1008 = load i64, i64* %1208, align 1

  %1009 = load i64, i64* %739, align 1

  %1010 = lshr i64 %1008, 32

  %1011 = load i64, i64* %1192, align 1

  %1012 = load i64, i64* %1166, align 1

  %1013 = lshr i64 %1011, 32

  %1014 = sub i64 %1008, %1011

  %1015 = sub nsw i64 %1010, %1013

  %1016 = sub i64 %1009, %1012

  %1017 = lshr i64 %1009, 32

  %1018 = lshr i64 %1012, 32

  %1019 = sub nsw i64 %1017, %1018

  %1020 = trunc i64 %1014 to i32

  %1021 = trunc i64 %1015 to i32

  store i32 %1020, i32* %1151, align 1, !tbaa !1307

  store i32 %1021, i32* %1152, align 1, !tbaa !1307

  %1022 = trunc i64 %1016 to i32

  store i32 %1022, i32* %1153, align 1, !tbaa !1307

  %1023 = trunc i64 %1019 to i32

  store i32 %1023, i32* %1154, align 1, !tbaa !1307

  %1024 = load i64, i64* %1193, align 1

  %1025 = load i64, i64* %1179, align 1

  %1026 = trunc i64 %1024 to i32

  %1027 = icmp sgt i32 %1026, %999

  %1028 = sext i1 %1027 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1209)

  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16

  store i32 %1028, i32* %1210, align 16

  %1029 = load i64, i64* %1211, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1209)

  %1030 = lshr i64 %1024, 32

  %1031 = trunc i64 %1030 to i32

  %1032 = icmp sgt i32 %1031, %1006

  %1033 = sext i1 %1032 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1209)

  store i64 %1029, i64* %1211, align 16

  store i64 0, i64* %1212, align 8

  store i32 %1033, i32* %1214, align 4

  %1034 = load i64, i64* %1211, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1209)

  %1035 = trunc i64 %1025 to i32

  %1036 = icmp sgt i32 %1035, %1007

  %1037 = sext i1 %1036 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1209)

  store i64 %1034, i64* %1211, align 16

  store i64 0, i64* %1212, align 8

  store i32 %1037, i32* %1215, align 8

  %1038 = load i64, i64* %1212, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1209)

  %1039 = lshr i64 %1025, 32

  %1040 = trunc i64 %1039 to i32

  %1041 = lshr i64 %1002, 32

  %1042 = trunc i64 %1041 to i32

  %1043 = icmp sgt i32 %1040, %1042

  %1044 = sext i1 %1043 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1209)

  store i64 %1034, i64* %1211, align 16

  store i64 %1038, i64* %1212, align 8

  store i32 %1044, i32* %1217, align 4

  %1045 = load i64, i64* %1212, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1209)

  %1046 = lshr i64 %1034, 32

  %1047 = trunc i64 %1034 to i32

  %1048 = trunc i64 %1046 to i32

  store i32 %1047, i32* %1204, align 1, !tbaa !1307

  store i32 %1048, i32* %1205, align 1, !tbaa !1307

  %1049 = trunc i64 %1045 to i32

  store i32 %1049, i32* %1206, align 1, !tbaa !1307

  %1050 = lshr i64 %1045, 32

  %1051 = trunc i64 %1050 to i32

  store i32 %1051, i32* %1207, align 1, !tbaa !1307

  %1052 = load i64, i64* %1218, align 1

  %1053 = load i64, i64* %1219, align 1

  %1054 = lshr i64 %1052, 32

  %1055 = load i64, i64* %1193, align 1

  %1056 = load i64, i64* %1179, align 1

  %1057 = lshr i64 %1055, 32

  %1058 = sub i64 %1052, %1055

  %1059 = sub nsw i64 %1054, %1057

  %1060 = sub i64 %1053, %1056

  %1061 = lshr i64 %1053, 32

  %1062 = lshr i64 %1056, 32

  %1063 = sub nsw i64 %1061, %1062

  %1064 = trunc i64 %1058 to i32

  %1065 = trunc i64 %1059 to i32

  store i32 %1064, i32* %1220, align 1, !tbaa !1307

  store i32 %1065, i32* %1222, align 1, !tbaa !1307

  %1066 = trunc i64 %1060 to i32

  store i32 %1066, i32* %1223, align 1, !tbaa !1307

  %1067 = trunc i64 %1063 to i32

  store i32 %1067, i32* %1225, align 1, !tbaa !1307

  %1068 = load i64, i64* %31, align 8

  %1069 = icmp eq i64 %1068, 0

  %1070 = select i1 %1069, i64 53, i64 -52

  %1071 = add i64 %930, %1070

  br i1 %1069, label %block_401c69, label %block_401c00



block_401eb4:                                     ; preds = %block_401dee, %block_401d75

  %1072 = phi i64 [ %144, %block_401d75 ], [ %642, %block_401dee ]

  %1073 = phi i64 [ %155, %block_401d75 ], [ %641, %block_401dee ]

  %1074 = phi %struct.Memory* [ %141, %block_401d75 ], [ %589, %block_401dee ]

  %1075 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %1076 = add i64 %1073, 12

  %1077 = add i64 %1072, -8

  %1078 = inttoptr i64 %1077 to i64*

  store i64 %1076, i64* %1078

  %1079 = inttoptr i64 %1077 to i64*

  %1080 = load i64, i64* %1079

  store i64 %1080, i64* %11, align 8, !alias.scope !1363, !noalias !1366

  store i64 %1072, i64* %35, align 8, !alias.scope !1363, !noalias !1366

  %1081 = tail call i64 @free(i64 %1075), !noalias !1363

  %1082 = load i64, i64* %11, align 8

  %1083 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %1084 = add i64 %1082, 12

  %1085 = load i64, i64* %35, align 8, !tbaa !1240

  %1086 = add i64 %1085, -8

  %1087 = inttoptr i64 %1086 to i64*

  store i64 %1084, i64* %1087

  %1088 = inttoptr i64 %1086 to i64*

  %1089 = load i64, i64* %1088

  store i64 %1089, i64* %11, align 8, !alias.scope !1368, !noalias !1371

  store i64 %1085, i64* %35, align 8, !alias.scope !1368, !noalias !1371

  %1090 = tail call i64 @free(i64 %1083), !noalias !1368

  %1091 = load i64, i64* %11, align 8

  %1092 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %1093 = add i64 %1091, 12

  %1094 = load i64, i64* %35, align 8, !tbaa !1240

  %1095 = add i64 %1094, -8

  %1096 = inttoptr i64 %1095 to i64*

  store i64 %1093, i64* %1096

  %1097 = inttoptr i64 %1095 to i64*

  %1098 = load i64, i64* %1097

  store i64 %1098, i64* %11, align 8, !alias.scope !1373, !noalias !1376

  store i64 %1094, i64* %35, align 8, !alias.scope !1373, !noalias !1376

  %1099 = tail call i64 @free(i64 %1092), !noalias !1373

  %1100 = load i64, i64* %11, align 8

  %1101 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %1101, i64* %34, align 8, !tbaa !1240

  %1102 = add i64 %1100, 12

  %1103 = load i64, i64* %35, align 8, !tbaa !1240

  %1104 = add i64 %1103, -8

  %1105 = inttoptr i64 %1104 to i64*

  store i64 %1102, i64* %1105

  store i64 %1103, i64* %35, align 8, !alias.scope !1378, !noalias !1381

  %1106 = tail call i64 @free(i64 %1101)

  store i64 0, i64* %29, align 8, !tbaa !1240

  %1107 = load i64, i64* %35, align 8

  %1108 = add i64 %1107, 16

  %1109 = icmp ugt i64 %1107, -17

  %1110 = zext i1 %1109 to i8

  store i8 %1110, i8* %54, align 1, !tbaa !1244

  %1111 = trunc i64 %1108 to i32

  %1112 = and i32 %1111, 255

  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112) #10

  %1114 = trunc i32 %1113 to i8

  %1115 = and i8 %1114, 1

  %1116 = xor i8 %1115, 1

  store i8 %1116, i8* %55, align 1, !tbaa !1258

  %1117 = xor i64 %1107, 16

  %1118 = xor i64 %1117, %1108

  %1119 = lshr i64 %1118, 4

  %1120 = trunc i64 %1119 to i8

  %1121 = and i8 %1120, 1

  store i8 %1121, i8* %56, align 1, !tbaa !1262

  %1122 = icmp eq i64 %1108, 0

  %1123 = zext i1 %1122 to i8

  store i8 %1123, i8* %57, align 1, !tbaa !1259

  %1124 = lshr i64 %1108, 63

  %1125 = trunc i64 %1124 to i8

  store i8 %1125, i8* %58, align 1, !tbaa !1260

  %1126 = lshr i64 %1107, 63

  %1127 = xor i64 %1124, %1126

  %1128 = add nuw nsw i64 %1127, %1124

  %1129 = icmp eq i64 %1128, 2

  %1130 = zext i1 %1129 to i8

  store i8 %1130, i8* %59, align 1, !tbaa !1261

  %1131 = add i64 %1107, 24

  %1132 = inttoptr i64 %1108 to i64*

  %1133 = load i64, i64* %1132

  store i64 %1133, i64* %30, align 8, !tbaa !1240

  %1134 = add i64 %1107, 32

  %1135 = inttoptr i64 %1131 to i64*

  %1136 = load i64, i64* %1135

  store i64 %1136, i64* %37, align 8, !tbaa !1240

  %1137 = add i64 %1107, 40

  %1138 = inttoptr i64 %1134 to i64*

  %1139 = load i64, i64* %1138

  store i64 %1139, i64* %36, align 8, !tbaa !1240

  %1140 = inttoptr i64 %1137 to i64*

  %1141 = load i64, i64* %1140

  store i64 %1141, i64* %11, align 8, !tbaa !1240

  %1142 = add i64 %1107, 48

  store i64 %1142, i64* %35, align 8, !tbaa !1240

  ret %struct.Memory* %1074



block_401d33:                                     ; preds = %block_401c69

  %1143 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1144 = add i32 %1143, 1

  store i32 %1144, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1145 = load i8, i8* %22, align 1

  %1146 = icmp eq i8 %1145, 0

  %1147 = select i1 %1146, i64 22, i64 12

  %1148 = add i64 %2531, %1147

  br i1 %1146, label %block_401d49, label %block_401d3f



block_401be4:                                     ; preds = %block_401bb0

  store i64 %2558, i64* %30, align 8, !tbaa !1240

  %1149 = inttoptr i64 %2280 to i32*

  %1150 = load i32, i32* %1149

  %1151 = bitcast [32 x %union.VectorReg]* %38 to i32*

  store i32 %1150, i32* %1151, align 1, !tbaa !1307

  %1152 = bitcast i8* %737 to i32*

  store i32 0, i32* %1152, align 1, !tbaa !1307

  %1153 = bitcast i64* %739 to i32*

  store i32 0, i32* %1153, align 1, !tbaa !1307

  %1154 = bitcast i8* %741 to i32*

  store i32 0, i32* %1154, align 1, !tbaa !1307

  %1155 = bitcast %union.VectorReg* %40 to i8*

  %1156 = bitcast [32 x %union.VectorReg]* %38 to i128*

  %1157 = load i128, i128* %1156, align 1

  %1158 = trunc i128 %1157 to i32

  %1159 = lshr i128 %1157, 32

  %1160 = trunc i128 %1159 to i32

  %1161 = lshr i128 %1157, 64

  %1162 = trunc i128 %1161 to i32

  %1163 = bitcast %union.VectorReg* %40 to i32*

  store i32 %1158, i32* %1163, align 1, !tbaa !1307

  %1164 = getelementptr inbounds i8, i8* %1155, i64 4

  %1165 = bitcast i8* %1164 to i32*

  store i32 %1160, i32* %1165, align 1, !tbaa !1307

  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %1167 = bitcast i64* %1166 to i32*

  store i32 %1162, i32* %1167, align 1, !tbaa !1307

  %1168 = getelementptr inbounds i8, i8* %1155, i64 12

  %1169 = bitcast i8* %1168 to i32*

  store i32 %1158, i32* %1169, align 1, !tbaa !1307

  %1170 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %1170, align 1, !tbaa !1240

  store i64 -33554416, i64* %31, align 8, !tbaa !1240

  %1171 = bitcast %union.VectorReg* %39 to i8*

  %1172 = bitcast %union.VectorReg* %39 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %1172, align 1, !tbaa !1240

  %1173 = add i64 %1782, 164

  %1174 = bitcast %union.VectorReg* %42 to i8*

  %1175 = add i64 %2280, 134217668

  %1176 = bitcast %union.VectorReg* %42 to float*

  %1177 = getelementptr inbounds i8, i8* %1174, i64 4

  %1178 = bitcast i8* %1177 to float*

  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %1180 = bitcast i64* %1179 to float*

  %1181 = getelementptr inbounds i8, i8* %1174, i64 12

  %1182 = bitcast i8* %1181 to float*

  %1183 = bitcast %union.VectorReg* %41 to i8*

  %1184 = add i64 %2280, 134217684

  %1185 = bitcast %union.VectorReg* %41 to float*

  %1186 = getelementptr inbounds i8, i8* %1183, i64 4

  %1187 = bitcast i8* %1186 to float*

  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %1189 = bitcast i64* %1188 to float*

  %1190 = getelementptr inbounds i8, i8* %1183, i64 12

  %1191 = bitcast i8* %1190 to float*

  %1192 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0

  %1193 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %42, i64 0, i32 0, i32 0, i32 0, i64 0

  %1194 = bitcast <2 x i64>* %6 to i8*

  %1195 = bitcast <2 x i64>* %6 to i32*

  %1196 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0

  %1197 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 1

  %1198 = getelementptr inbounds i8, i8* %1194, i64 4

  %1199 = bitcast i8* %1198 to i32*

  %1200 = bitcast i64* %1197 to i32*

  %1201 = getelementptr inbounds i8, i8* %1194, i64 12

  %1202 = bitcast i8* %1201 to i32*

  %1203 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0

  %1204 = bitcast %union.VectorReg* %42 to i32*

  %1205 = bitcast i8* %1177 to i32*

  %1206 = bitcast i64* %1179 to i32*

  %1207 = bitcast i8* %1181 to i32*

  %1208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %1209 = bitcast <2 x i64>* %5 to i8*

  %1210 = bitcast <2 x i64>* %5 to i32*

  %1211 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 0

  %1212 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 1

  %1213 = getelementptr inbounds i8, i8* %1209, i64 4

  %1214 = bitcast i8* %1213 to i32*

  %1215 = bitcast i64* %1212 to i32*

  %1216 = getelementptr inbounds i8, i8* %1209, i64 12

  %1217 = bitcast i8* %1216 to i32*

  %1218 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %1220 = bitcast %union.VectorReg* %39 to i32*

  %1221 = getelementptr inbounds i8, i8* %1171, i64 4

  %1222 = bitcast i8* %1221 to i32*

  %1223 = bitcast i64* %1219 to i32*

  %1224 = getelementptr inbounds i8, i8* %1171, i64 12

  %1225 = bitcast i8* %1224 to i32*

  %1226 = load i64, i64* %29, align 8

  %1227 = add i64 %1226, 134217700

  %1228 = add i64 %1226, 134217716

  %1229 = bitcast %union.VectorReg* %40 to float*

  %1230 = bitcast i8* %1164 to float*

  %1231 = bitcast i64* %1166 to float*

  %1232 = bitcast i8* %1168 to float*

  %1233 = bitcast %union.VectorReg* %41 to i32*

  %1234 = bitcast i8* %1186 to i32*

  %1235 = bitcast i64* %1188 to i32*

  %1236 = bitcast i8* %1190 to i32*

  %1237 = bitcast <2 x i64>* %9 to i8*

  %1238 = bitcast <2 x i64>* %9 to i32*

  %1239 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 0

  %1240 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 1

  %1241 = getelementptr inbounds i8, i8* %1237, i64 4

  %1242 = bitcast i8* %1241 to i32*

  %1243 = bitcast i64* %1240 to i32*

  %1244 = getelementptr inbounds i8, i8* %1237, i64 12

  %1245 = bitcast i8* %1244 to i32*

  %1246 = bitcast <2 x i64>* %10 to i8*

  %1247 = bitcast <2 x i64>* %10 to i32*

  %1248 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 0

  %1249 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 1

  %1250 = getelementptr inbounds i8, i8* %1246, i64 4

  %1251 = bitcast i8* %1250 to i32*

  %1252 = bitcast i64* %1249 to i32*

  %1253 = getelementptr inbounds i8, i8* %1246, i64 12

  %1254 = bitcast i8* %1253 to i32*

  %1255 = load i64, i64* %1166, align 1

  br label %block_401c34



block_401d31:                                     ; preds = %block_401d1b

  %1256 = add i64 %1852, 24

  br label %block_401d49



block_401890:                                     ; preds = %block_40187b, %block_401850

  %1257 = phi double* [ %1828, %block_40187b ], [ %658, %block_401850 ]

  %1258 = phi i64 [ %1839, %block_40187b ], [ %677, %block_401850 ]

  %1259 = phi %struct.Memory* [ %1838, %block_40187b ], [ %675, %block_401850 ]

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1260 = add i64 %1258, -1408

  %1261 = add i64 %1258, 10

  %1262 = load i64, i64* %35, align 8, !tbaa !1240

  %1263 = add i64 %1262, -8

  %1264 = inttoptr i64 %1263 to i64*

  store i64 %1261, i64* %1264

  store i64 %1263, i64* %35, align 8, !tbaa !1240

  %1265 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1260, %struct.Memory* %1259)

  %1266 = load i64, i64* %11, align 8

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1267 = add i64 %1266, 20

  %1268 = load i64, i64* %35, align 8, !tbaa !1240

  %1269 = add i64 %1268, -8

  %1270 = inttoptr i64 %1269 to i64*

  store i64 %1267, i64* %1270

  %1271 = inttoptr i64 %1269 to i64*

  %1272 = load i64, i64* %1271

  store i64 %1272, i64* %11, align 8, !alias.scope !1383, !noalias !1386

  store i64 %1268, i64* %35, align 8, !alias.scope !1383, !noalias !1386

  %1273 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1446), i64 4294967295)), !noalias !1383

  %1274 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1275 = add i64 %1274, -3806

  %1276 = add i64 %1274, 7

  %1277 = load i64, i64* %35, align 8, !tbaa !1240

  %1278 = add i64 %1277, -8

  %1279 = inttoptr i64 %1278 to i64*

  store i64 %1276, i64* %1279

  store i64 %1278, i64* %35, align 8, !tbaa !1240

  %1280 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %1275, %struct.Memory* %1265)

  %1281 = load i64, i64* %11, align 8

  %1282 = add i64 %1281, 17

  %1283 = load i64, i64* %35, align 8, !tbaa !1240

  %1284 = add i64 %1283, -8

  %1285 = inttoptr i64 %1284 to i64*

  store i64 %1282, i64* %1285

  %1286 = load i64, i64* %775, align 8, !alias.scope !1388, !noalias !1391

  %1287 = load i64, i64* %774, align 8, !alias.scope !1388, !noalias !1391

  %1288 = load i64, i64* %776, align 8, !alias.scope !1388, !noalias !1391

  %1289 = load i64, i64* %777, align 8, !alias.scope !1388, !noalias !1391

  %1290 = inttoptr i64 %1283 to i64*

  %1291 = load i64, i64* %1290

  %1292 = add i64 %1283, 8

  %1293 = inttoptr i64 %1292 to i64*

  %1294 = load i64, i64* %1293

  %1295 = add i64 %1283, 16

  %1296 = inttoptr i64 %1295 to i64*

  %1297 = load i64, i64* %1296

  %1298 = add i64 %1283, 24

  %1299 = inttoptr i64 %1298 to i64*

  %1300 = load i64, i64* %1299

  %1301 = add i64 %1283, 32

  %1302 = inttoptr i64 %1301 to i64*

  %1303 = load i64, i64* %1302

  %1304 = add i64 %1283, 40

  %1305 = inttoptr i64 %1304 to i64*

  %1306 = load i64, i64* %1305

  %1307 = add i64 %1283, 48

  %1308 = inttoptr i64 %1307 to i64*

  %1309 = load i64, i64* %1308

  %1310 = add i64 %1283, 56

  %1311 = inttoptr i64 %1310 to i64*

  %1312 = load i64, i64* %1311

  %1313 = add i64 %1283, 64

  %1314 = inttoptr i64 %1313 to i64*

  %1315 = load i64, i64* %1314

  %1316 = add i64 %1283, 72

  %1317 = inttoptr i64 %1316 to i64*

  %1318 = load i64, i64* %1317

  %1319 = inttoptr i64 %1284 to i64*

  %1320 = load i64, i64* %1319

  store i64 %1320, i64* %11, align 8, !alias.scope !1388, !noalias !1391

  store i64 %1283, i64* %35, align 8, !alias.scope !1388, !noalias !1391

  %1321 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 1, i64 %1286, i64 %1287, i64 %1288, i64 %1289, i64 %1291, i64 %1294, i64 %1297, i64 %1300, i64 %1303, i64 %1306, i64 %1309, i64 %1312, i64 %1315, i64 %1318), !noalias !1388

  %1322 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1323 = add i64 %1322, -1462

  %1324 = add i64 %1322, 10

  %1325 = load i64, i64* %35, align 8, !tbaa !1240

  %1326 = add i64 %1325, -8

  %1327 = inttoptr i64 %1326 to i64*

  store i64 %1324, i64* %1327

  store i64 %1326, i64* %35, align 8, !tbaa !1240

  %1328 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1323, %struct.Memory* %1280)

  %1329 = load i64, i64* %11, align 8

  %1330 = add i64 %1329, 17

  %1331 = load i64, i64* %35, align 8, !tbaa !1240

  %1332 = add i64 %1331, -8

  %1333 = inttoptr i64 %1332 to i64*

  store i64 %1330, i64* %1333

  %1334 = load i64, i64* %775, align 8, !alias.scope !1393, !noalias !1396

  %1335 = load i64, i64* %774, align 8, !alias.scope !1393, !noalias !1396

  %1336 = load i64, i64* %776, align 8, !alias.scope !1393, !noalias !1396

  %1337 = load i64, i64* %777, align 8, !alias.scope !1393, !noalias !1396

  %1338 = inttoptr i64 %1331 to i64*

  %1339 = load i64, i64* %1338

  %1340 = add i64 %1331, 8

  %1341 = inttoptr i64 %1340 to i64*

  %1342 = load i64, i64* %1341

  %1343 = add i64 %1331, 16

  %1344 = inttoptr i64 %1343 to i64*

  %1345 = load i64, i64* %1344

  %1346 = add i64 %1331, 24

  %1347 = inttoptr i64 %1346 to i64*

  %1348 = load i64, i64* %1347

  %1349 = add i64 %1331, 32

  %1350 = inttoptr i64 %1349 to i64*

  %1351 = load i64, i64* %1350

  %1352 = add i64 %1331, 40

  %1353 = inttoptr i64 %1352 to i64*

  %1354 = load i64, i64* %1353

  %1355 = add i64 %1331, 48

  %1356 = inttoptr i64 %1355 to i64*

  %1357 = load i64, i64* %1356

  %1358 = add i64 %1331, 56

  %1359 = inttoptr i64 %1358 to i64*

  %1360 = load i64, i64* %1359

  %1361 = add i64 %1331, 64

  %1362 = inttoptr i64 %1361 to i64*

  %1363 = load i64, i64* %1362

  %1364 = add i64 %1331, 72

  %1365 = inttoptr i64 %1364 to i64*

  %1366 = load i64, i64* %1365

  %1367 = inttoptr i64 %1332 to i64*

  %1368 = load i64, i64* %1367

  store i64 %1368, i64* %11, align 8, !alias.scope !1393, !noalias !1396

  store i64 %1331, i64* %35, align 8, !alias.scope !1393, !noalias !1396

  %1369 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 2, i64 %1334, i64 %1335, i64 %1336, i64 %1337, i64 %1339, i64 %1342, i64 %1345, i64 %1348, i64 %1351, i64 %1354, i64 %1357, i64 %1360, i64 %1363, i64 %1366), !noalias !1393

  %1370 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1371 = add i64 %1370, -1489

  %1372 = add i64 %1370, 10

  %1373 = load i64, i64* %35, align 8, !tbaa !1240

  %1374 = add i64 %1373, -8

  %1375 = inttoptr i64 %1374 to i64*

  store i64 %1372, i64* %1375

  store i64 %1374, i64* %35, align 8, !tbaa !1240

  %1376 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1371, %struct.Memory* %1328)

  %1377 = load i64, i64* %11, align 8

  %1378 = add i64 %1377, 17

  %1379 = load i64, i64* %35, align 8, !tbaa !1240

  %1380 = add i64 %1379, -8

  %1381 = inttoptr i64 %1380 to i64*

  store i64 %1378, i64* %1381

  %1382 = load i64, i64* %775, align 8, !alias.scope !1398, !noalias !1401

  %1383 = load i64, i64* %774, align 8, !alias.scope !1398, !noalias !1401

  %1384 = load i64, i64* %776, align 8, !alias.scope !1398, !noalias !1401

  %1385 = load i64, i64* %777, align 8, !alias.scope !1398, !noalias !1401

  %1386 = inttoptr i64 %1379 to i64*

  %1387 = load i64, i64* %1386

  %1388 = add i64 %1379, 8

  %1389 = inttoptr i64 %1388 to i64*

  %1390 = load i64, i64* %1389

  %1391 = add i64 %1379, 16

  %1392 = inttoptr i64 %1391 to i64*

  %1393 = load i64, i64* %1392

  %1394 = add i64 %1379, 24

  %1395 = inttoptr i64 %1394 to i64*

  %1396 = load i64, i64* %1395

  %1397 = add i64 %1379, 32

  %1398 = inttoptr i64 %1397 to i64*

  %1399 = load i64, i64* %1398

  %1400 = add i64 %1379, 40

  %1401 = inttoptr i64 %1400 to i64*

  %1402 = load i64, i64* %1401

  %1403 = add i64 %1379, 48

  %1404 = inttoptr i64 %1403 to i64*

  %1405 = load i64, i64* %1404

  %1406 = add i64 %1379, 56

  %1407 = inttoptr i64 %1406 to i64*

  %1408 = load i64, i64* %1407

  %1409 = add i64 %1379, 64

  %1410 = inttoptr i64 %1409 to i64*

  %1411 = load i64, i64* %1410

  %1412 = add i64 %1379, 72

  %1413 = inttoptr i64 %1412 to i64*

  %1414 = load i64, i64* %1413

  %1415 = inttoptr i64 %1380 to i64*

  %1416 = load i64, i64* %1415

  store i64 %1416, i64* %11, align 8, !alias.scope !1398, !noalias !1401

  store i64 %1379, i64* %35, align 8, !alias.scope !1398, !noalias !1401

  %1417 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 3, i64 %1382, i64 %1383, i64 %1384, i64 %1385, i64 %1387, i64 %1390, i64 %1393, i64 %1396, i64 %1399, i64 %1402, i64 %1405, i64 %1408, i64 %1411, i64 %1414), !noalias !1398

  %1418 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1419 = add i64 %1418, -1516

  %1420 = add i64 %1418, 10

  %1421 = load i64, i64* %35, align 8, !tbaa !1240

  %1422 = add i64 %1421, -8

  %1423 = inttoptr i64 %1422 to i64*

  store i64 %1420, i64* %1423

  store i64 %1422, i64* %35, align 8, !tbaa !1240

  %1424 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1419, %struct.Memory* %1376)

  %1425 = load i64, i64* %11, align 8

  %1426 = add i64 %1425, 17

  %1427 = load i64, i64* %35, align 8, !tbaa !1240

  %1428 = add i64 %1427, -8

  %1429 = inttoptr i64 %1428 to i64*

  store i64 %1426, i64* %1429

  %1430 = load i64, i64* %775, align 8, !alias.scope !1403, !noalias !1406

  %1431 = load i64, i64* %774, align 8, !alias.scope !1403, !noalias !1406

  %1432 = load i64, i64* %776, align 8, !alias.scope !1403, !noalias !1406

  %1433 = load i64, i64* %777, align 8, !alias.scope !1403, !noalias !1406

  %1434 = inttoptr i64 %1427 to i64*

  %1435 = load i64, i64* %1434

  %1436 = add i64 %1427, 8

  %1437 = inttoptr i64 %1436 to i64*

  %1438 = load i64, i64* %1437

  %1439 = add i64 %1427, 16

  %1440 = inttoptr i64 %1439 to i64*

  %1441 = load i64, i64* %1440

  %1442 = add i64 %1427, 24

  %1443 = inttoptr i64 %1442 to i64*

  %1444 = load i64, i64* %1443

  %1445 = add i64 %1427, 32

  %1446 = inttoptr i64 %1445 to i64*

  %1447 = load i64, i64* %1446

  %1448 = add i64 %1427, 40

  %1449 = inttoptr i64 %1448 to i64*

  %1450 = load i64, i64* %1449

  %1451 = add i64 %1427, 48

  %1452 = inttoptr i64 %1451 to i64*

  %1453 = load i64, i64* %1452

  %1454 = add i64 %1427, 56

  %1455 = inttoptr i64 %1454 to i64*

  %1456 = load i64, i64* %1455

  %1457 = add i64 %1427, 64

  %1458 = inttoptr i64 %1457 to i64*

  %1459 = load i64, i64* %1458

  %1460 = add i64 %1427, 72

  %1461 = inttoptr i64 %1460 to i64*

  %1462 = load i64, i64* %1461

  %1463 = inttoptr i64 %1428 to i64*

  %1464 = load i64, i64* %1463

  store i64 %1464, i64* %11, align 8, !alias.scope !1403, !noalias !1406

  store i64 %1427, i64* %35, align 8, !alias.scope !1403, !noalias !1406

  %1465 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 4, i64 %1430, i64 %1431, i64 %1432, i64 %1433, i64 %1435, i64 %1438, i64 %1441, i64 %1444, i64 %1447, i64 %1450, i64 %1453, i64 %1456, i64 %1459, i64 %1462), !noalias !1403

  %1466 = load i64, i64* %11, align 8

  store i64 4, i64* %34, align 8, !tbaa !1240

  %1467 = add i64 %1466, -1543

  %1468 = add i64 %1466, 10

  %1469 = load i64, i64* %35, align 8, !tbaa !1240

  %1470 = add i64 %1469, -8

  %1471 = inttoptr i64 %1470 to i64*

  store i64 %1468, i64* %1471

  store i64 %1470, i64* %35, align 8, !tbaa !1240

  %1472 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1467, %struct.Memory* %1424)

  %1473 = load i64, i64* %11, align 8

  %1474 = add i64 %1473, 17

  %1475 = load i64, i64* %35, align 8, !tbaa !1240

  %1476 = add i64 %1475, -8

  %1477 = inttoptr i64 %1476 to i64*

  store i64 %1474, i64* %1477

  %1478 = load i64, i64* %775, align 8, !alias.scope !1408, !noalias !1411

  %1479 = load i64, i64* %774, align 8, !alias.scope !1408, !noalias !1411

  %1480 = load i64, i64* %776, align 8, !alias.scope !1408, !noalias !1411

  %1481 = load i64, i64* %777, align 8, !alias.scope !1408, !noalias !1411

  %1482 = inttoptr i64 %1475 to i64*

  %1483 = load i64, i64* %1482

  %1484 = add i64 %1475, 8

  %1485 = inttoptr i64 %1484 to i64*

  %1486 = load i64, i64* %1485

  %1487 = add i64 %1475, 16

  %1488 = inttoptr i64 %1487 to i64*

  %1489 = load i64, i64* %1488

  %1490 = add i64 %1475, 24

  %1491 = inttoptr i64 %1490 to i64*

  %1492 = load i64, i64* %1491

  %1493 = add i64 %1475, 32

  %1494 = inttoptr i64 %1493 to i64*

  %1495 = load i64, i64* %1494

  %1496 = add i64 %1475, 40

  %1497 = inttoptr i64 %1496 to i64*

  %1498 = load i64, i64* %1497

  %1499 = add i64 %1475, 48

  %1500 = inttoptr i64 %1499 to i64*

  %1501 = load i64, i64* %1500

  %1502 = add i64 %1475, 56

  %1503 = inttoptr i64 %1502 to i64*

  %1504 = load i64, i64* %1503

  %1505 = add i64 %1475, 64

  %1506 = inttoptr i64 %1505 to i64*

  %1507 = load i64, i64* %1506

  %1508 = add i64 %1475, 72

  %1509 = inttoptr i64 %1508 to i64*

  %1510 = load i64, i64* %1509

  %1511 = inttoptr i64 %1476 to i64*

  %1512 = load i64, i64* %1511

  store i64 %1512, i64* %11, align 8, !alias.scope !1408, !noalias !1411

  store i64 %1475, i64* %35, align 8, !alias.scope !1408, !noalias !1411

  %1513 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 5, i64 %1478, i64 %1479, i64 %1480, i64 %1481, i64 %1483, i64 %1486, i64 %1489, i64 %1492, i64 %1495, i64 %1498, i64 %1501, i64 %1504, i64 %1507, i64 %1510), !noalias !1408

  %1514 = load i64, i64* %11, align 8

  store i64 5, i64* %34, align 8, !tbaa !1240

  %1515 = add i64 %1514, -1570

  %1516 = add i64 %1514, 10

  %1517 = load i64, i64* %35, align 8, !tbaa !1240

  %1518 = add i64 %1517, -8

  %1519 = inttoptr i64 %1518 to i64*

  store i64 %1516, i64* %1519

  store i64 %1518, i64* %35, align 8, !tbaa !1240

  %1520 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1515, %struct.Memory* %1472)

  %1521 = load i64, i64* %11, align 8

  %1522 = add i64 %1521, 17

  %1523 = load i64, i64* %35, align 8, !tbaa !1240

  %1524 = add i64 %1523, -8

  %1525 = inttoptr i64 %1524 to i64*

  store i64 %1522, i64* %1525

  %1526 = load i64, i64* %775, align 8, !alias.scope !1413, !noalias !1416

  %1527 = load i64, i64* %774, align 8, !alias.scope !1413, !noalias !1416

  %1528 = load i64, i64* %776, align 8, !alias.scope !1413, !noalias !1416

  %1529 = load i64, i64* %777, align 8, !alias.scope !1413, !noalias !1416

  %1530 = inttoptr i64 %1523 to i64*

  %1531 = load i64, i64* %1530

  %1532 = add i64 %1523, 8

  %1533 = inttoptr i64 %1532 to i64*

  %1534 = load i64, i64* %1533

  %1535 = add i64 %1523, 16

  %1536 = inttoptr i64 %1535 to i64*

  %1537 = load i64, i64* %1536

  %1538 = add i64 %1523, 24

  %1539 = inttoptr i64 %1538 to i64*

  %1540 = load i64, i64* %1539

  %1541 = add i64 %1523, 32

  %1542 = inttoptr i64 %1541 to i64*

  %1543 = load i64, i64* %1542

  %1544 = add i64 %1523, 40

  %1545 = inttoptr i64 %1544 to i64*

  %1546 = load i64, i64* %1545

  %1547 = add i64 %1523, 48

  %1548 = inttoptr i64 %1547 to i64*

  %1549 = load i64, i64* %1548

  %1550 = add i64 %1523, 56

  %1551 = inttoptr i64 %1550 to i64*

  %1552 = load i64, i64* %1551

  %1553 = add i64 %1523, 64

  %1554 = inttoptr i64 %1553 to i64*

  %1555 = load i64, i64* %1554

  %1556 = add i64 %1523, 72

  %1557 = inttoptr i64 %1556 to i64*

  %1558 = load i64, i64* %1557

  %1559 = inttoptr i64 %1524 to i64*

  %1560 = load i64, i64* %1559

  store i64 %1560, i64* %11, align 8, !alias.scope !1413, !noalias !1416

  store i64 %1523, i64* %35, align 8, !alias.scope !1413, !noalias !1416

  %1561 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 6, i64 %1526, i64 %1527, i64 %1528, i64 %1529, i64 %1531, i64 %1534, i64 %1537, i64 %1540, i64 %1543, i64 %1546, i64 %1549, i64 %1552, i64 %1555, i64 %1558), !noalias !1413

  %1562 = load i64, i64* %11, align 8

  store i64 6, i64* %34, align 8, !tbaa !1240

  %1563 = add i64 %1562, -1597

  %1564 = add i64 %1562, 10

  %1565 = load i64, i64* %35, align 8, !tbaa !1240

  %1566 = add i64 %1565, -8

  %1567 = inttoptr i64 %1566 to i64*

  store i64 %1564, i64* %1567

  store i64 %1566, i64* %35, align 8, !tbaa !1240

  %1568 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1563, %struct.Memory* %1520)

  %1569 = load i64, i64* %11, align 8

  %1570 = add i64 %1569, 17

  %1571 = load i64, i64* %35, align 8, !tbaa !1240

  %1572 = add i64 %1571, -8

  %1573 = inttoptr i64 %1572 to i64*

  store i64 %1570, i64* %1573

  %1574 = load i64, i64* %775, align 8, !alias.scope !1418, !noalias !1421

  %1575 = load i64, i64* %774, align 8, !alias.scope !1418, !noalias !1421

  %1576 = load i64, i64* %776, align 8, !alias.scope !1418, !noalias !1421

  %1577 = load i64, i64* %777, align 8, !alias.scope !1418, !noalias !1421

  %1578 = inttoptr i64 %1571 to i64*

  %1579 = load i64, i64* %1578

  %1580 = add i64 %1571, 8

  %1581 = inttoptr i64 %1580 to i64*

  %1582 = load i64, i64* %1581

  %1583 = add i64 %1571, 16

  %1584 = inttoptr i64 %1583 to i64*

  %1585 = load i64, i64* %1584

  %1586 = add i64 %1571, 24

  %1587 = inttoptr i64 %1586 to i64*

  %1588 = load i64, i64* %1587

  %1589 = add i64 %1571, 32

  %1590 = inttoptr i64 %1589 to i64*

  %1591 = load i64, i64* %1590

  %1592 = add i64 %1571, 40

  %1593 = inttoptr i64 %1592 to i64*

  %1594 = load i64, i64* %1593

  %1595 = add i64 %1571, 48

  %1596 = inttoptr i64 %1595 to i64*

  %1597 = load i64, i64* %1596

  %1598 = add i64 %1571, 56

  %1599 = inttoptr i64 %1598 to i64*

  %1600 = load i64, i64* %1599

  %1601 = add i64 %1571, 64

  %1602 = inttoptr i64 %1601 to i64*

  %1603 = load i64, i64* %1602

  %1604 = add i64 %1571, 72

  %1605 = inttoptr i64 %1604 to i64*

  %1606 = load i64, i64* %1605

  %1607 = inttoptr i64 %1572 to i64*

  %1608 = load i64, i64* %1607

  store i64 %1608, i64* %11, align 8, !alias.scope !1418, !noalias !1421

  store i64 %1571, i64* %35, align 8, !alias.scope !1418, !noalias !1421

  %1609 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 7, i64 %1574, i64 %1575, i64 %1576, i64 %1577, i64 %1579, i64 %1582, i64 %1585, i64 %1588, i64 %1591, i64 %1594, i64 %1597, i64 %1600, i64 %1603, i64 %1606), !noalias !1418

  %1610 = load i64, i64* %11, align 8

  store i64 7, i64* %34, align 8, !tbaa !1240

  %1611 = add i64 %1610, -1624

  %1612 = add i64 %1610, 10

  %1613 = load i64, i64* %35, align 8, !tbaa !1240

  %1614 = add i64 %1613, -8

  %1615 = inttoptr i64 %1614 to i64*

  store i64 %1612, i64* %1615

  store i64 %1614, i64* %35, align 8, !tbaa !1240

  %1616 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1611, %struct.Memory* %1568)

  %1617 = load i64, i64* %11, align 8

  %1618 = add i64 %1617, 17

  %1619 = load i64, i64* %35, align 8, !tbaa !1240

  %1620 = add i64 %1619, -8

  %1621 = inttoptr i64 %1620 to i64*

  store i64 %1618, i64* %1621

  %1622 = load i64, i64* %775, align 8, !alias.scope !1423, !noalias !1426

  %1623 = load i64, i64* %774, align 8, !alias.scope !1423, !noalias !1426

  %1624 = load i64, i64* %776, align 8, !alias.scope !1423, !noalias !1426

  %1625 = load i64, i64* %777, align 8, !alias.scope !1423, !noalias !1426

  %1626 = inttoptr i64 %1619 to i64*

  %1627 = load i64, i64* %1626

  %1628 = add i64 %1619, 8

  %1629 = inttoptr i64 %1628 to i64*

  %1630 = load i64, i64* %1629

  %1631 = add i64 %1619, 16

  %1632 = inttoptr i64 %1631 to i64*

  %1633 = load i64, i64* %1632

  %1634 = add i64 %1619, 24

  %1635 = inttoptr i64 %1634 to i64*

  %1636 = load i64, i64* %1635

  %1637 = add i64 %1619, 32

  %1638 = inttoptr i64 %1637 to i64*

  %1639 = load i64, i64* %1638

  %1640 = add i64 %1619, 40

  %1641 = inttoptr i64 %1640 to i64*

  %1642 = load i64, i64* %1641

  %1643 = add i64 %1619, 48

  %1644 = inttoptr i64 %1643 to i64*

  %1645 = load i64, i64* %1644

  %1646 = add i64 %1619, 56

  %1647 = inttoptr i64 %1646 to i64*

  %1648 = load i64, i64* %1647

  %1649 = add i64 %1619, 64

  %1650 = inttoptr i64 %1649 to i64*

  %1651 = load i64, i64* %1650

  %1652 = add i64 %1619, 72

  %1653 = inttoptr i64 %1652 to i64*

  %1654 = load i64, i64* %1653

  %1655 = inttoptr i64 %1620 to i64*

  %1656 = load i64, i64* %1655

  store i64 %1656, i64* %11, align 8, !alias.scope !1423, !noalias !1426

  store i64 %1619, i64* %35, align 8, !alias.scope !1423, !noalias !1426

  %1657 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 8, i64 %1622, i64 %1623, i64 %1624, i64 %1625, i64 %1627, i64 %1630, i64 %1633, i64 %1636, i64 %1639, i64 %1642, i64 %1645, i64 %1648, i64 %1651, i64 %1654), !noalias !1423

  %1658 = load i64, i64* %11, align 8

  store i64 8, i64* %34, align 8, !tbaa !1240

  %1659 = add i64 %1658, -1651

  %1660 = add i64 %1658, 10

  %1661 = load i64, i64* %35, align 8, !tbaa !1240

  %1662 = add i64 %1661, -8

  %1663 = inttoptr i64 %1662 to i64*

  store i64 %1660, i64* %1663

  store i64 %1662, i64* %35, align 8, !tbaa !1240

  %1664 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1659, %struct.Memory* %1616)

  %1665 = load i64, i64* %11, align 8

  %1666 = add i64 %1665, 17

  %1667 = load i64, i64* %35, align 8, !tbaa !1240

  %1668 = add i64 %1667, -8

  %1669 = inttoptr i64 %1668 to i64*

  store i64 %1666, i64* %1669

  %1670 = load i64, i64* %775, align 8, !alias.scope !1428, !noalias !1431

  %1671 = load i64, i64* %774, align 8, !alias.scope !1428, !noalias !1431

  %1672 = load i64, i64* %776, align 8, !alias.scope !1428, !noalias !1431

  %1673 = load i64, i64* %777, align 8, !alias.scope !1428, !noalias !1431

  %1674 = inttoptr i64 %1667 to i64*

  %1675 = load i64, i64* %1674

  %1676 = add i64 %1667, 8

  %1677 = inttoptr i64 %1676 to i64*

  %1678 = load i64, i64* %1677

  %1679 = add i64 %1667, 16

  %1680 = inttoptr i64 %1679 to i64*

  %1681 = load i64, i64* %1680

  %1682 = add i64 %1667, 24

  %1683 = inttoptr i64 %1682 to i64*

  %1684 = load i64, i64* %1683

  %1685 = add i64 %1667, 32

  %1686 = inttoptr i64 %1685 to i64*

  %1687 = load i64, i64* %1686

  %1688 = add i64 %1667, 40

  %1689 = inttoptr i64 %1688 to i64*

  %1690 = load i64, i64* %1689

  %1691 = add i64 %1667, 48

  %1692 = inttoptr i64 %1691 to i64*

  %1693 = load i64, i64* %1692

  %1694 = add i64 %1667, 56

  %1695 = inttoptr i64 %1694 to i64*

  %1696 = load i64, i64* %1695

  %1697 = add i64 %1667, 64

  %1698 = inttoptr i64 %1697 to i64*

  %1699 = load i64, i64* %1698

  %1700 = add i64 %1667, 72

  %1701 = inttoptr i64 %1700 to i64*

  %1702 = load i64, i64* %1701

  %1703 = inttoptr i64 %1668 to i64*

  %1704 = load i64, i64* %1703

  store i64 %1704, i64* %11, align 8, !alias.scope !1428, !noalias !1431

  store i64 %1667, i64* %35, align 8, !alias.scope !1428, !noalias !1431

  %1705 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 9, i64 %1670, i64 %1671, i64 %1672, i64 %1673, i64 %1675, i64 %1678, i64 %1681, i64 %1684, i64 %1687, i64 %1690, i64 %1693, i64 %1696, i64 %1699, i64 %1702), !noalias !1428

  %1706 = load i64, i64* %11, align 8

  store i64 9, i64* %34, align 8, !tbaa !1240

  %1707 = add i64 %1706, -1678

  %1708 = add i64 %1706, 10

  %1709 = load i64, i64* %35, align 8, !tbaa !1240

  %1710 = add i64 %1709, -8

  %1711 = inttoptr i64 %1710 to i64*

  store i64 %1708, i64* %1711

  store i64 %1710, i64* %35, align 8, !tbaa !1240

  %1712 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1707, %struct.Memory* %1664)

  %1713 = load i64, i64* %11, align 8

  %1714 = add i64 %1713, 17

  %1715 = load i64, i64* %35, align 8, !tbaa !1240

  %1716 = add i64 %1715, -8

  %1717 = inttoptr i64 %1716 to i64*

  store i64 %1714, i64* %1717

  %1718 = load i64, i64* %775, align 8, !alias.scope !1433, !noalias !1436

  %1719 = load i64, i64* %774, align 8, !alias.scope !1433, !noalias !1436

  %1720 = load i64, i64* %776, align 8, !alias.scope !1433, !noalias !1436

  %1721 = load i64, i64* %777, align 8, !alias.scope !1433, !noalias !1436

  %1722 = inttoptr i64 %1715 to i64*

  %1723 = load i64, i64* %1722

  %1724 = add i64 %1715, 8

  %1725 = inttoptr i64 %1724 to i64*

  %1726 = load i64, i64* %1725

  %1727 = add i64 %1715, 16

  %1728 = inttoptr i64 %1727 to i64*

  %1729 = load i64, i64* %1728

  %1730 = add i64 %1715, 24

  %1731 = inttoptr i64 %1730 to i64*

  %1732 = load i64, i64* %1731

  %1733 = add i64 %1715, 32

  %1734 = inttoptr i64 %1733 to i64*

  %1735 = load i64, i64* %1734

  %1736 = add i64 %1715, 40

  %1737 = inttoptr i64 %1736 to i64*

  %1738 = load i64, i64* %1737

  %1739 = add i64 %1715, 48

  %1740 = inttoptr i64 %1739 to i64*

  %1741 = load i64, i64* %1740

  %1742 = add i64 %1715, 56

  %1743 = inttoptr i64 %1742 to i64*

  %1744 = load i64, i64* %1743

  %1745 = add i64 %1715, 64

  %1746 = inttoptr i64 %1745 to i64*

  %1747 = load i64, i64* %1746

  %1748 = add i64 %1715, 72

  %1749 = inttoptr i64 %1748 to i64*

  %1750 = load i64, i64* %1749

  %1751 = inttoptr i64 %1716 to i64*

  %1752 = load i64, i64* %1751

  store i64 %1752, i64* %11, align 8, !alias.scope !1433, !noalias !1436

  store i64 %1715, i64* %35, align 8, !alias.scope !1433, !noalias !1436

  %1753 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1191), i64 4294967295), i64 10, i64 %1718, i64 %1719, i64 %1720, i64 %1721, i64 %1723, i64 %1726, i64 %1729, i64 %1732, i64 %1735, i64 %1738, i64 %1741, i64 %1744, i64 %1747, i64 %1750), !noalias !1433

  %1754 = load i64, i64* %11, align 8

  store i64 10, i64* %34, align 8, !tbaa !1240

  %1755 = add i64 %1754, -1705

  %1756 = add i64 %1754, 10

  %1757 = load i64, i64* %35, align 8, !tbaa !1240

  %1758 = add i64 %1757, -8

  %1759 = inttoptr i64 %1758 to i64*

  store i64 %1756, i64* %1759

  store i64 %1758, i64* %35, align 8, !tbaa !1240

  %1760 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1755, %struct.Memory* %1712)

  %1761 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1762 = add i64 %1761, -4035

  %1763 = add i64 %1761, 7

  %1764 = load i64, i64* %35, align 8, !tbaa !1240

  %1765 = add i64 %1764, -8

  %1766 = inttoptr i64 %1765 to i64*

  store i64 %1763, i64* %1766

  store i64 %1765, i64* %35, align 8, !tbaa !1240

  %1767 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1762, %struct.Memory* %1760)

  %1768 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %1769 = add i64 %1768, -3978

  %1770 = add i64 %1768, 7

  %1771 = load i64, i64* %35, align 8, !tbaa !1240

  %1772 = add i64 %1771, -8

  %1773 = inttoptr i64 %1772 to i64*

  store i64 %1770, i64* %1773

  store i64 %1772, i64* %35, align 8, !tbaa !1240

  %1774 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %1769, %struct.Memory* %1767)

  %1775 = load i64, i64* %35, align 8

  %1776 = load i64, i64* %11, align 8

  %1777 = load double, double* %1257, align 1

  %1778 = inttoptr i64 %1775 to double*

  store double %1777, double* %1778

  %1779 = load i8, i8* %22, align 1

  %1780 = icmp eq i8 %1779, 0

  %1781 = select i1 %1780, i64 447, i64 14

  %1782 = add i64 %1776, %1781

  br i1 %1780, label %block_401b90, label %block_4019df



block_4017a0:                                     ; preds = %block_401740

  %1783 = add i64 %103, 8

  %1784 = load i64, i64* %35, align 8, !tbaa !1240

  %1785 = add i64 %1784, -8

  %1786 = inttoptr i64 %1785 to i64*

  store i64 %1783, i64* %1786

  %1787 = inttoptr i64 %1785 to i64*

  %1788 = load i64, i64* %1787

  store i64 %1788, i64* %11, align 8, !alias.scope !1438, !noalias !1441

  store i64 %1784, i64* %35, align 8, !alias.scope !1438, !noalias !1441

  %1789 = tail call i64 @fclose(i64 %99), !noalias !1438

  %1790 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %1791 = add i64 %1790, -3560

  %1792 = add i64 %1790, 7

  %1793 = load i64, i64* %35, align 8, !tbaa !1240

  %1794 = add i64 %1793, -8

  %1795 = inttoptr i64 %1794 to i64*

  store i64 %1792, i64* %1795

  store i64 %1794, i64* %35, align 8, !tbaa !1240

  %1796 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1791, %struct.Memory* %2)

  %1797 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1798 = add i64 %1797, -3567

  %1799 = add i64 %1797, 10

  %1800 = load i64, i64* %35, align 8, !tbaa !1240

  %1801 = add i64 %1800, -8

  %1802 = inttoptr i64 %1801 to i64*

  store i64 %1799, i64* %1802

  store i64 %1801, i64* %35, align 8, !tbaa !1240

  %1803 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1798, %struct.Memory* %1796)

  %1804 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1805 = add i64 %1804, -3577

  %1806 = add i64 %1804, 10

  %1807 = load i64, i64* %35, align 8, !tbaa !1240

  %1808 = add i64 %1807, -8

  %1809 = inttoptr i64 %1808 to i64*

  store i64 %1806, i64* %1809

  store i64 %1808, i64* %35, align 8, !tbaa !1240

  %1810 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1805, %struct.Memory* %1803)

  %1811 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1812 = add i64 %1811, -3587

  %1813 = add i64 %1811, 10

  %1814 = load i64, i64* %35, align 8, !tbaa !1240

  %1815 = add i64 %1814, -8

  %1816 = inttoptr i64 %1815 to i64*

  store i64 %1813, i64* %1816

  store i64 %1815, i64* %35, align 8, !tbaa !1240

  %1817 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1812, %struct.Memory* %1810)

  %1818 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1819 = add i64 %1818, -3581

  %1820 = add i64 %1818, 10

  %1821 = load i64, i64* %35, align 8, !tbaa !1240

  %1822 = add i64 %1821, -8

  %1823 = inttoptr i64 %1822 to i64*

  store i64 %1820, i64* %1823

  store i64 %1822, i64* %35, align 8, !tbaa !1240

  %1824 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %1819, %struct.Memory* %1817)

  %1825 = load i64, i64* %11, align 8

  store i8 1, i8* %22, align 1, !tbaa !1443

  %1826 = add i64 %1825, 15

  br label %block_4017e6



block_40187b:                                     ; preds = %block_4017e6

  %1827 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 984) to double*)

  %1828 = bitcast [32 x %union.VectorReg]* %38 to double*

  store double %1827, double* %1828, align 1, !tbaa !1293

  %1829 = bitcast i64* %739 to double*

  store double 0.000000e+00, double* %1829, align 1, !tbaa !1293

  %1830 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 992) to i64*)

  %1831 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %1830, i64* %1831, align 1, !tbaa !1240

  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  store i64 0, i64* %1832, align 1, !tbaa !1240

  %1833 = add i64 %858, -3179

  %1834 = add i64 %858, 21

  %1835 = load i64, i64* %35, align 8, !tbaa !1240

  %1836 = add i64 %1835, -8

  %1837 = inttoptr i64 %1836 to i64*

  store i64 %1834, i64* %1837

  store i64 %1836, i64* %35, align 8, !tbaa !1240

  %1838 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull %0, i64 %1833, %struct.Memory* %729)

  %1839 = load i64, i64* %11, align 8

  br label %block_401890



block_401d1b:                                     ; preds = %block_401ac9

  %1840 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1841 = add i32 %1840, 1

  store i32 %1841, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1842 = add i64 %2133, -4891

  %1843 = add i64 %2133, 17

  %1844 = load i64, i64* %35, align 8, !tbaa !1240

  %1845 = add i64 %1844, -8

  %1846 = inttoptr i64 %1845 to i64*

  store i64 %1843, i64* %1846

  store i64 %1845, i64* %35, align 8, !tbaa !1240

  %1847 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1842, %struct.Memory* %1854)

  %1848 = load i8, i8* %22, align 1

  %1849 = load i64, i64* %11, align 8

  %1850 = icmp eq i8 %1848, 0

  %1851 = select i1 %1850, i64 5, i64 19

  %1852 = add i64 %1849, %1851

  br i1 %1850, label %block_401d31, label %block_401d3f



block_401a10:                                     ; preds = %block_401a10, %block_4019df

  %1853 = phi i64 [ -33554432, %block_4019df ], [ %1885, %block_401a10 ]

  %1854 = phi %struct.Memory* [ %355, %block_4019df ], [ %1854, %block_401a10 ]

  %1855 = shl i64 %1853, 2

  %1856 = add i64 %360, %1855

  %1857 = inttoptr i64 %1856 to i32*

  %1858 = load i32, i32* %1857

  %1859 = sext i32 %1858 to i64

  %1860 = shl nsw i64 %1859, 2

  %1861 = add i64 %1860, %359

  %1862 = inttoptr i64 %1861 to i32*

  %1863 = load i32, i32* %1862

  %1864 = sext i32 %1863 to i64

  %1865 = add i32 %1863, -1

  %1866 = inttoptr i64 %1861 to i32*

  store i32 %1865, i32* %1866

  %1867 = shl nsw i64 %1864, 2

  %1868 = add i64 %361, %1867

  %1869 = inttoptr i64 %1868 to i32*

  store i32 %1858, i32* %1869

  %1870 = add i64 %362, %1855

  %1871 = inttoptr i64 %1870 to i32*

  %1872 = load i32, i32* %1871

  %1873 = sext i32 %1872 to i64

  %1874 = shl nsw i64 %1873, 2

  %1875 = add i64 %1874, %359

  %1876 = inttoptr i64 %1875 to i32*

  %1877 = load i32, i32* %1876

  %1878 = sext i32 %1877 to i64

  %1879 = add nsw i64 %1878, -1

  %1880 = trunc i64 %1879 to i32

  %1881 = inttoptr i64 %1875 to i32*

  store i32 %1880, i32* %1881

  %1882 = shl nsw i64 %1878, 2

  %1883 = add i64 %361, %1882

  %1884 = inttoptr i64 %1883 to i32*

  store i32 %1872, i32* %1884

  %1885 = add i64 %1853, 2

  %1886 = icmp eq i64 %1885, 0

  br i1 %1886, label %block_401a44, label %block_401a10



block_401ac9:                                     ; preds = %block_401a94

  %1887 = load i64, i64* %2636, align 1

  %1888 = load i64, i64* %2637, align 1

  %1889 = lshr i64 %1887, 32

  %1890 = load i64, i64* %2626, align 1

  %1891 = load i64, i64* %739, align 1

  %1892 = lshr i64 %1890, 32

  %1893 = add i64 %1890, %1887

  %1894 = add nuw nsw i64 %1892, %1889

  %1895 = add i64 %1891, %1888

  %1896 = lshr i64 %1888, 32

  %1897 = lshr i64 %1891, 32

  %1898 = add nuw nsw i64 %1897, %1896

  %1899 = trunc i64 %1893 to i32

  %1900 = trunc i64 %1894 to i32

  store i32 %1899, i32* %2638, align 1, !tbaa !1307

  store i32 %1900, i32* %2640, align 1, !tbaa !1307

  %1901 = trunc i64 %1895 to i32

  store i32 %1901, i32* %2641, align 1, !tbaa !1307

  %1902 = trunc i64 %1898 to i32

  store i32 %1902, i32* %2643, align 1, !tbaa !1307

  %1903 = bitcast %union.VectorReg* %39 to i128*

  %1904 = load i128, i128* %1903, align 1

  %1905 = lshr i128 %1904, 64

  %1906 = trunc i128 %1905 to i32

  %1907 = lshr i128 %1904, 96

  %1908 = trunc i128 %1907 to i32

  %1909 = trunc i128 %1904 to i32

  %1910 = lshr i128 %1904, 32

  %1911 = trunc i128 %1910 to i32

  store i32 %1906, i32* %2569, align 1, !tbaa !1307

  store i32 %1908, i32* %2570, align 1, !tbaa !1307

  store i32 %1909, i32* %2571, align 1, !tbaa !1307

  store i32 %1911, i32* %2572, align 1, !tbaa !1307

  %1912 = load i64, i64* %2626, align 1

  %1913 = load i64, i64* %739, align 1

  %1914 = lshr i64 %1912, 32

  %1915 = trunc i128 %1904 to i64

  %1916 = load i64, i64* %2637, align 1

  %1917 = lshr i64 %1915, 32

  %1918 = add i64 %1915, %1912

  %1919 = add nuw nsw i64 %1917, %1914

  %1920 = add i64 %1916, %1913

  %1921 = lshr i64 %1913, 32

  %1922 = lshr i64 %1916, 32

  %1923 = add nuw nsw i64 %1922, %1921

  %1924 = trunc i64 %1918 to i32

  %1925 = trunc i64 %1919 to i32

  store i32 %1924, i32* %2569, align 1, !tbaa !1307

  store i32 %1925, i32* %2570, align 1, !tbaa !1307

  %1926 = trunc i64 %1920 to i32

  store i32 %1926, i32* %2571, align 1, !tbaa !1307

  %1927 = trunc i64 %1923 to i32

  store i32 %1927, i32* %2572, align 1, !tbaa !1307

  %1928 = bitcast %union.VectorReg* %41 to i128*

  %1929 = load i128, i128* %1928, align 1

  %1930 = lshr i128 %1929, 96

  %1931 = trunc i128 %1930 to i32

  %1932 = lshr i128 %1929, 32

  %1933 = trunc i128 %1932 to i32

  store i32 %1931, i32* %2638, align 1, !tbaa !1307

  store i32 %1933, i32* %2640, align 1, !tbaa !1307

  %1934 = load i64, i64* %2636, align 1

  %1935 = trunc i64 %1934 to i32

  %1936 = load i128, i128* %2574, align 1

  %1937 = lshr i128 %1936, 32

  %1938 = trunc i128 %1937 to i32

  %1939 = lshr i128 %1936, 64

  %1940 = trunc i128 %1939 to i32

  %1941 = lshr i128 %1936, 96

  %1942 = trunc i128 %1941 to i32

  store i32 %1938, i32* %2638, align 1, !tbaa !1307

  store i32 %1938, i32* %2640, align 1, !tbaa !1307

  store i32 %1940, i32* %2641, align 1, !tbaa !1307

  store i32 %1942, i32* %2643, align 1, !tbaa !1307

  %1943 = load i64, i64* %2636, align 1

  %1944 = load i64, i64* %2637, align 1

  %1945 = lshr i64 %1943, 32

  %1946 = trunc i128 %1936 to i64

  %1947 = load i64, i64* %739, align 1

  %1948 = lshr i64 %1946, 32

  %1949 = add i64 %1946, %1943

  %1950 = add nuw nsw i64 %1948, %1945

  %1951 = add i64 %1947, %1944

  %1952 = lshr i64 %1944, 32

  %1953 = lshr i64 %1947, 32

  %1954 = add nuw nsw i64 %1953, %1952

  %1955 = trunc i64 %1949 to i32

  %1956 = trunc i64 %1950 to i32

  store i32 %1955, i32* %2638, align 1, !tbaa !1307

  store i32 %1956, i32* %2640, align 1, !tbaa !1307

  %1957 = trunc i64 %1951 to i32

  store i32 %1957, i32* %2641, align 1, !tbaa !1307

  %1958 = trunc i64 %1954 to i32

  store i32 %1958, i32* %2643, align 1, !tbaa !1307

  %1959 = load i64, i64* %2636, align 1

  %1960 = load i64, i64* %29, align 8

  %1961 = add i64 %1960, 134217700

  %1962 = inttoptr i64 %1961 to i32*

  %1963 = load i32, i32* %1962

  %1964 = zext i32 %1963 to i64

  store i64 %1964, i64* %33, align 8, !tbaa !1240

  %1965 = add i64 %1960, 134217704

  %1966 = inttoptr i64 %1965 to i32*

  %1967 = load i32, i32* %1966

  %1968 = zext i32 %1967 to i64

  store i64 %1968, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %1969 = sub i32 %1935, %1963

  %1970 = icmp eq i32 %1969, 0

  %1971 = lshr i32 %1969, 31

  %1972 = lshr i32 %1935, 31

  %1973 = lshr i32 %1963, 31

  %1974 = xor i32 %1973, %1972

  %1975 = xor i32 %1971, %1972

  %1976 = add nuw nsw i32 %1975, %1974

  %1977 = icmp eq i32 %1976, 2

  %1978 = icmp ne i32 %1971, 0

  %1979 = xor i1 %1977, %1978

  %1980 = or i1 %1970, %1979

  %1981 = xor i1 %1980, true

  %1982 = zext i1 %1981 to i8

  store i8 %1982, i8* %20, align 1, !tbaa !1443

  %1983 = load i64, i64* %36, align 8

  %1984 = add i64 %1959, %1983

  %1985 = and i64 %1984, 4294967295

  store i64 %1985, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %1986 = load i32, i32* %26, align 4

  %1987 = load i32, i32* %27, align 4

  %1988 = sub i32 %1986, %1987

  %1989 = icmp eq i32 %1988, 0

  %1990 = lshr i32 %1988, 31

  %1991 = lshr i32 %1986, 31

  %1992 = lshr i32 %1987, 31

  %1993 = xor i32 %1992, %1991

  %1994 = xor i32 %1990, %1991

  %1995 = add nuw nsw i32 %1994, %1993

  %1996 = icmp eq i32 %1995, 2

  %1997 = icmp ne i32 %1990, 0

  %1998 = xor i1 %1996, %1997

  %1999 = or i1 %1989, %1998

  %2000 = xor i1 %1999, true

  %2001 = zext i1 %2000 to i8

  store i8 %2001, i8* %14, align 1, !tbaa !1443

  %2002 = load i64, i64* %31, align 8

  %2003 = load i32, i32* %28, align 4

  %2004 = trunc i64 %2002 to i32

  %2005 = add i32 %2003, %2004

  %2006 = zext i32 %2005 to i64

  store i64 %2006, i64* %31, align 8, !tbaa !1240

  %2007 = load i64, i64* %29, align 8

  %2008 = add i64 %2007, 134217708

  %2009 = inttoptr i64 %2008 to i32*

  %2010 = load i32, i32* %2009

  %2011 = zext i32 %2010 to i64

  store i64 %2011, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2012 = load i32, i32* %27, align 4

  %2013 = sub i32 %2012, %2010

  %2014 = icmp eq i32 %2013, 0

  %2015 = lshr i32 %2013, 31

  %2016 = lshr i32 %2012, 31

  %2017 = lshr i32 %2010, 31

  %2018 = xor i32 %2017, %2016

  %2019 = xor i32 %2015, %2016

  %2020 = add nuw nsw i32 %2019, %2018

  %2021 = icmp eq i32 %2020, 2

  %2022 = icmp ne i32 %2015, 0

  %2023 = xor i1 %2021, %2022

  %2024 = or i1 %2014, %2023

  %2025 = xor i1 %2024, true

  %2026 = zext i1 %2025 to i8

  store i8 %2026, i8* %16, align 1, !tbaa !1443

  %2027 = load i64, i64* %33, align 8

  %2028 = load i32, i32* %23, align 4

  %2029 = trunc i64 %2027 to i32

  %2030 = add i32 %2028, %2029

  %2031 = zext i32 %2030 to i64

  store i64 %2031, i64* %33, align 8, !tbaa !1240

  %2032 = load i64, i64* %29, align 8

  %2033 = add i64 %2032, 134217712

  %2034 = inttoptr i64 %2033 to i32*

  %2035 = load i32, i32* %2034

  %2036 = zext i32 %2035 to i64

  store i64 %2036, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  %2037 = load i32, i32* %25, align 4

  %2038 = sub i32 %2037, %2035

  %2039 = icmp eq i32 %2038, 0

  %2040 = lshr i32 %2038, 31

  %2041 = lshr i32 %2037, 31

  %2042 = lshr i32 %2035, 31

  %2043 = xor i32 %2042, %2041

  %2044 = xor i32 %2040, %2041

  %2045 = add nuw nsw i32 %2044, %2043

  %2046 = icmp eq i32 %2045, 2

  %2047 = icmp ne i32 %2040, 0

  %2048 = xor i1 %2046, %2047

  %2049 = or i1 %2039, %2048

  %2050 = xor i1 %2049, true

  %2051 = zext i1 %2050 to i8

  store i8 %2051, i8* %18, align 1, !tbaa !1443

  %2052 = load i64, i64* %34, align 8

  %2053 = load i32, i32* %26, align 4

  %2054 = trunc i64 %2052 to i32

  %2055 = add i32 %2053, %2054

  %2056 = zext i32 %2055 to i64

  store i64 %2056, i64* %34, align 8, !tbaa !1240

  %2057 = load i64, i64* %29, align 8

  %2058 = add i64 %2057, 134217716

  %2059 = inttoptr i64 %2058 to i32*

  %2060 = load i32, i32* %2059

  %2061 = zext i32 %2060 to i64

  store i64 %2061, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2062 = load i32, i32* %23, align 4

  %2063 = sub i32 %2062, %2060

  %2064 = icmp eq i32 %2063, 0

  %2065 = lshr i32 %2063, 31

  %2066 = lshr i32 %2062, 31

  %2067 = lshr i32 %2060, 31

  %2068 = xor i32 %2067, %2066

  %2069 = xor i32 %2065, %2066

  %2070 = add nuw nsw i32 %2069, %2068

  %2071 = icmp eq i32 %2070, 2

  %2072 = icmp ne i32 %2065, 0

  %2073 = xor i1 %2071, %2072

  %2074 = or i1 %2064, %2073

  %2075 = xor i1 %2074, true

  %2076 = zext i1 %2075 to i8

  store i8 %2076, i8* %16, align 1, !tbaa !1443

  %2077 = load i64, i64* %33, align 8

  %2078 = load i32, i32* %27, align 4

  %2079 = trunc i64 %2077 to i32

  %2080 = add i32 %2078, %2079

  %2081 = zext i32 %2080 to i64

  store i64 %2081, i64* %33, align 8, !tbaa !1240

  %2082 = load i64, i64* %29, align 8

  %2083 = add i64 %2082, 134217720

  %2084 = inttoptr i64 %2083 to i32*

  %2085 = load i32, i32* %2084

  %2086 = zext i32 %2085 to i64

  store i64 %2086, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2087 = load i32, i32* %25, align 4

  %2088 = sub i32 %2087, %2085

  %2089 = icmp eq i32 %2088, 0

  %2090 = lshr i32 %2088, 31

  %2091 = lshr i32 %2087, 31

  %2092 = lshr i32 %2085, 31

  %2093 = xor i32 %2092, %2091

  %2094 = xor i32 %2090, %2091

  %2095 = add nuw nsw i32 %2094, %2093

  %2096 = icmp eq i32 %2095, 2

  %2097 = icmp ne i32 %2090, 0

  %2098 = xor i1 %2096, %2097

  %2099 = or i1 %2089, %2098

  %2100 = xor i1 %2099, true

  %2101 = zext i1 %2100 to i8

  store i8 %2101, i8* %20, align 1, !tbaa !1443

  %2102 = load i64, i64* %36, align 8

  %2103 = load i32, i32* %26, align 4

  %2104 = trunc i64 %2102 to i32

  %2105 = add i32 %2103, %2104

  %2106 = zext i32 %2105 to i64

  store i64 %2106, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2107 = load i32, i32* %27, align 4

  %2108 = load i64, i64* %29, align 8

  %2109 = add i64 %2108, 134217724

  %2110 = inttoptr i64 %2109 to i32*

  %2111 = load i32, i32* %2110

  %2112 = sub i32 %2107, %2111

  %2113 = icmp eq i32 %2112, 0

  %2114 = lshr i32 %2112, 31

  %2115 = lshr i32 %2107, 31

  %2116 = lshr i32 %2111, 31

  %2117 = xor i32 %2116, %2115

  %2118 = xor i32 %2114, %2115

  %2119 = add nuw nsw i32 %2118, %2117

  %2120 = icmp eq i32 %2119, 2

  %2121 = icmp ne i32 %2114, 0

  %2122 = xor i1 %2120, %2121

  %2123 = or i1 %2113, %2122

  %2124 = xor i1 %2123, true

  %2125 = zext i1 %2124 to i8

  store i8 %2125, i8* %14, align 1, !tbaa !1443

  %2126 = load i64, i64* %31, align 8

  %2127 = load i32, i32* %28, align 4

  %2128 = trunc i64 %2126 to i32

  %2129 = add i32 %2127, %2128

  %2130 = zext i32 %2129 to i64

  %2131 = icmp eq i32 %2129, 0

  %2132 = select i1 %2131, i64 594, i64 149

  %2133 = add i64 %2278, %2132

  br i1 %2131, label %block_401d1b, label %block_401b5e



block_401d19:                                     ; preds = %block_401cfa

  %2134 = add i64 %208, 48

  br label %block_401d49



block_401a94:                                     ; preds = %block_401a44, %block_401a60

  %2135 = phi i64 [ %2673, %block_401a44 ], [ %282, %block_401a60 ]

  %2136 = phi i64 [ -33554416, %block_401a44 ], [ %350, %block_401a60 ]

  %2137 = phi i64 [ %2591, %block_401a44 ], [ %349, %block_401a60 ]

  %2138 = shl i64 %2136, 2

  %2139 = add i64 %2593, %2138

  %2140 = inttoptr i64 %2139 to float*

  %2141 = load float, float* %2140

  %2142 = add i64 %2139, 4

  %2143 = inttoptr i64 %2142 to float*

  %2144 = load float, float* %2143

  %2145 = add i64 %2139, 8

  %2146 = inttoptr i64 %2145 to float*

  %2147 = load float, float* %2146

  %2148 = add i64 %2139, 12

  %2149 = inttoptr i64 %2148 to float*

  %2150 = load float, float* %2149

  store float %2141, float* %2594, align 1, !tbaa !1305

  store float %2144, float* %2596, align 1, !tbaa !1305

  store float %2147, float* %2598, align 1, !tbaa !1305

  store float %2150, float* %2600, align 1, !tbaa !1305

  %2151 = add i64 %2602, %2138

  %2152 = inttoptr i64 %2151 to float*

  %2153 = load float, float* %2152

  %2154 = add i64 %2151, 4

  %2155 = inttoptr i64 %2154 to float*

  %2156 = load float, float* %2155

  %2157 = add i64 %2151, 8

  %2158 = inttoptr i64 %2157 to float*

  %2159 = load float, float* %2158

  %2160 = add i64 %2151, 12

  %2161 = inttoptr i64 %2160 to float*

  %2162 = load float, float* %2161

  store float %2153, float* %2603, align 1, !tbaa !1305

  store float %2156, float* %2605, align 1, !tbaa !1305

  store float %2159, float* %2607, align 1, !tbaa !1305

  store float %2162, float* %2609, align 1, !tbaa !1305

  %2163 = load i64, i64* %2610, align 1

  %2164 = load i64, i64* %2611, align 1

  %2165 = lshr i64 %2135, 32

  %2166 = trunc i64 %2165 to i32

  %2167 = trunc i64 %2163 to i32

  %2168 = trunc i64 %2164 to i32

  store i32 %2166, i32* %2581, align 1, !tbaa !1307

  store i32 %2167, i32* %2583, align 1, !tbaa !1307

  store i32 %2168, i32* %2585, align 1, !tbaa !1307

  store i32 %2168, i32* %2587, align 1, !tbaa !1307

  %2169 = load i64, i64* %2610, align 1

  %2170 = load i64, i64* %2584, align 1

  %2171 = load i64, i64* %2597, align 1

  %2172 = trunc i64 %2169 to i32

  %2173 = trunc i64 %2170 to i32

  %2174 = lshr i64 %2164, 32

  %2175 = trunc i64 %2174 to i32

  %2176 = trunc i64 %2171 to i32

  store i32 %2172, i32* %2581, align 1, !tbaa !1307

  store i32 %2173, i32* %2583, align 1, !tbaa !1307

  store i32 %2175, i32* %2585, align 1, !tbaa !1307

  store i32 %2176, i32* %2587, align 1, !tbaa !1307

  %2177 = load i64, i64* %2610, align 1

  %2178 = load i64, i64* %2584, align 1

  %2179 = trunc i64 %2177 to i32

  %2180 = icmp sgt i32 %2179, %2168

  %2181 = sext i1 %2180 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2612)

  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 16

  store i32 %2181, i32* %2613, align 16

  %2182 = load i64, i64* %2614, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2612)

  %2183 = lshr i64 %2177, 32

  %2184 = trunc i64 %2183 to i32

  %2185 = icmp sgt i32 %2184, %2175

  %2186 = sext i1 %2185 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2612)

  store i64 %2182, i64* %2614, align 16

  store i64 0, i64* %2615, align 8

  store i32 %2186, i32* %2617, align 4

  %2187 = load i64, i64* %2614, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2612)

  %2188 = trunc i64 %2178 to i32

  %2189 = icmp sgt i32 %2188, %2176

  %2190 = sext i1 %2189 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2612)

  store i64 %2187, i64* %2614, align 16

  store i64 0, i64* %2615, align 8

  store i32 %2190, i32* %2618, align 8

  %2191 = load i64, i64* %2615, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2612)

  %2192 = lshr i64 %2178, 32

  %2193 = trunc i64 %2192 to i32

  %2194 = lshr i64 %2171, 32

  %2195 = trunc i64 %2194 to i32

  %2196 = icmp sgt i32 %2193, %2195

  %2197 = sext i1 %2196 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2612)

  store i64 %2187, i64* %2614, align 16

  store i64 %2191, i64* %2615, align 8

  store i32 %2197, i32* %2620, align 4

  %2198 = load i64, i64* %2615, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2612)

  %2199 = lshr i64 %2187, 32

  %2200 = trunc i64 %2187 to i32

  %2201 = trunc i64 %2199 to i32

  store i32 %2200, i32* %2581, align 1, !tbaa !1307

  store i32 %2201, i32* %2583, align 1, !tbaa !1307

  %2202 = trunc i64 %2198 to i32

  store i32 %2202, i32* %2585, align 1, !tbaa !1307

  %2203 = lshr i64 %2198, 32

  %2204 = trunc i64 %2203 to i32

  store i32 %2204, i32* %2587, align 1, !tbaa !1307

  %2205 = load i64, i64* %2621, align 1

  %2206 = trunc i64 %2205 to i32

  store i32 %2195, i32* %2622, align 1, !tbaa !1307

  store i32 %2168, i32* %2623, align 1, !tbaa !1307

  store i32 %2206, i32* %2624, align 1, !tbaa !1307

  store i32 %2206, i32* %2625, align 1, !tbaa !1307

  %2207 = load i64, i64* %2611, align 1

  %2208 = load i64, i64* %2597, align 1

  %2209 = load i64, i64* %2606, align 1

  %2210 = trunc i64 %2207 to i32

  %2211 = trunc i64 %2208 to i32

  %2212 = lshr i64 %2205, 32

  %2213 = trunc i64 %2212 to i32

  %2214 = trunc i64 %2209 to i32

  store i32 %2210, i32* %2622, align 1, !tbaa !1307

  store i32 %2211, i32* %2623, align 1, !tbaa !1307

  store i32 %2213, i32* %2624, align 1, !tbaa !1307

  store i32 %2214, i32* %2625, align 1, !tbaa !1307

  %2215 = load i64, i64* %2626, align 1

  %2216 = load i64, i64* %739, align 1

  %2217 = lshr i64 %2215, 32

  %2218 = load i64, i64* %2610, align 1

  %2219 = load i64, i64* %2584, align 1

  %2220 = lshr i64 %2218, 32

  %2221 = sub i64 %2215, %2218

  %2222 = sub nsw i64 %2217, %2220

  %2223 = sub i64 %2216, %2219

  %2224 = lshr i64 %2216, 32

  %2225 = lshr i64 %2219, 32

  %2226 = sub nsw i64 %2224, %2225

  %2227 = trunc i64 %2221 to i32

  %2228 = trunc i64 %2222 to i32

  store i32 %2227, i32* %2569, align 1, !tbaa !1307

  store i32 %2228, i32* %2570, align 1, !tbaa !1307

  %2229 = trunc i64 %2223 to i32

  store i32 %2229, i32* %2571, align 1, !tbaa !1307

  %2230 = trunc i64 %2226 to i32

  store i32 %2230, i32* %2572, align 1, !tbaa !1307

  %2231 = load i64, i64* %2611, align 1

  %2232 = load i64, i64* %2597, align 1

  %2233 = trunc i64 %2231 to i32

  %2234 = icmp sgt i32 %2233, %2206

  %2235 = sext i1 %2234 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2627)

  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16

  store i32 %2235, i32* %2628, align 16

  %2236 = load i64, i64* %2629, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2627)

  %2237 = lshr i64 %2231, 32

  %2238 = trunc i64 %2237 to i32

  %2239 = icmp sgt i32 %2238, %2213

  %2240 = sext i1 %2239 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2627)

  store i64 %2236, i64* %2629, align 16

  store i64 0, i64* %2630, align 8

  store i32 %2240, i32* %2632, align 4

  %2241 = load i64, i64* %2629, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2627)

  %2242 = trunc i64 %2232 to i32

  %2243 = icmp sgt i32 %2242, %2214

  %2244 = sext i1 %2243 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2627)

  store i64 %2241, i64* %2629, align 16

  store i64 0, i64* %2630, align 8

  store i32 %2244, i32* %2633, align 8

  %2245 = load i64, i64* %2630, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2627)

  %2246 = lshr i64 %2232, 32

  %2247 = trunc i64 %2246 to i32

  %2248 = lshr i64 %2209, 32

  %2249 = trunc i64 %2248 to i32

  %2250 = icmp sgt i32 %2247, %2249

  %2251 = sext i1 %2250 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2627)

  store i64 %2241, i64* %2629, align 16

  store i64 %2245, i64* %2630, align 8

  store i32 %2251, i32* %2635, align 4

  %2252 = load i64, i64* %2630, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2627)

  %2253 = lshr i64 %2241, 32

  %2254 = trunc i64 %2241 to i32

  %2255 = trunc i64 %2253 to i32

  store i32 %2254, i32* %2622, align 1, !tbaa !1307

  store i32 %2255, i32* %2623, align 1, !tbaa !1307

  %2256 = trunc i64 %2252 to i32

  store i32 %2256, i32* %2624, align 1, !tbaa !1307

  %2257 = lshr i64 %2252, 32

  %2258 = trunc i64 %2257 to i32

  store i32 %2258, i32* %2625, align 1, !tbaa !1307

  %2259 = load i64, i64* %2636, align 1

  %2260 = load i64, i64* %2637, align 1

  %2261 = lshr i64 %2259, 32

  %2262 = load i64, i64* %2611, align 1

  %2263 = load i64, i64* %2597, align 1

  %2264 = lshr i64 %2262, 32

  %2265 = sub i64 %2259, %2262

  %2266 = sub nsw i64 %2261, %2264

  %2267 = sub i64 %2260, %2263

  %2268 = lshr i64 %2260, 32

  %2269 = lshr i64 %2263, 32

  %2270 = sub nsw i64 %2268, %2269

  %2271 = trunc i64 %2265 to i32

  %2272 = trunc i64 %2266 to i32

  store i32 %2271, i32* %2638, align 1, !tbaa !1307

  store i32 %2272, i32* %2640, align 1, !tbaa !1307

  %2273 = trunc i64 %2267 to i32

  store i32 %2273, i32* %2641, align 1, !tbaa !1307

  %2274 = trunc i64 %2270 to i32

  store i32 %2274, i32* %2643, align 1, !tbaa !1307

  %2275 = load i64, i64* %31, align 8

  %2276 = icmp eq i64 %2275, 0

  %2277 = select i1 %2276, i64 53, i64 -52

  %2278 = add i64 %2137, %2277

  br i1 %2276, label %block_401ac9, label %block_401a60



block_401b90:                                     ; preds = %block_401890

  %2279 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %2280 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %2280, i64* %29, align 8, !tbaa !1240

  %2281 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %2282 = add i64 %2279, 134217728

  %2283 = add i64 %2280, -4

  %2284 = add i64 %2279, 134217732

  br label %block_401bb0



block_401c69:                                     ; preds = %block_401c34

  %2285 = load i64, i64* %1218, align 1

  %2286 = load i64, i64* %1219, align 1

  %2287 = lshr i64 %2285, 32

  %2288 = load i64, i64* %1208, align 1

  %2289 = load i64, i64* %739, align 1

  %2290 = lshr i64 %2288, 32

  %2291 = add i64 %2288, %2285

  %2292 = add nuw nsw i64 %2290, %2287

  %2293 = add i64 %2289, %2286

  %2294 = lshr i64 %2286, 32

  %2295 = lshr i64 %2289, 32

  %2296 = add nuw nsw i64 %2295, %2294

  %2297 = trunc i64 %2291 to i32

  %2298 = trunc i64 %2292 to i32

  store i32 %2297, i32* %1220, align 1, !tbaa !1307

  store i32 %2298, i32* %1222, align 1, !tbaa !1307

  %2299 = trunc i64 %2293 to i32

  store i32 %2299, i32* %1223, align 1, !tbaa !1307

  %2300 = trunc i64 %2296 to i32

  store i32 %2300, i32* %1225, align 1, !tbaa !1307

  %2301 = bitcast %union.VectorReg* %39 to i128*

  %2302 = load i128, i128* %2301, align 1

  %2303 = lshr i128 %2302, 64

  %2304 = trunc i128 %2303 to i32

  %2305 = lshr i128 %2302, 96

  %2306 = trunc i128 %2305 to i32

  %2307 = trunc i128 %2302 to i32

  %2308 = lshr i128 %2302, 32

  %2309 = trunc i128 %2308 to i32

  store i32 %2304, i32* %1151, align 1, !tbaa !1307

  store i32 %2306, i32* %1152, align 1, !tbaa !1307

  store i32 %2307, i32* %1153, align 1, !tbaa !1307

  store i32 %2309, i32* %1154, align 1, !tbaa !1307

  %2310 = load i64, i64* %1208, align 1

  %2311 = load i64, i64* %739, align 1

  %2312 = lshr i64 %2310, 32

  %2313 = trunc i128 %2302 to i64

  %2314 = load i64, i64* %1219, align 1

  %2315 = lshr i64 %2313, 32

  %2316 = add i64 %2313, %2310

  %2317 = add nuw nsw i64 %2315, %2312

  %2318 = add i64 %2314, %2311

  %2319 = lshr i64 %2311, 32

  %2320 = lshr i64 %2314, 32

  %2321 = add nuw nsw i64 %2320, %2319

  %2322 = trunc i64 %2316 to i32

  %2323 = trunc i64 %2317 to i32

  store i32 %2322, i32* %1151, align 1, !tbaa !1307

  store i32 %2323, i32* %1152, align 1, !tbaa !1307

  %2324 = trunc i64 %2318 to i32

  store i32 %2324, i32* %1153, align 1, !tbaa !1307

  %2325 = trunc i64 %2321 to i32

  store i32 %2325, i32* %1154, align 1, !tbaa !1307

  %2326 = bitcast %union.VectorReg* %41 to i128*

  %2327 = load i128, i128* %2326, align 1

  %2328 = lshr i128 %2327, 96

  %2329 = trunc i128 %2328 to i32

  %2330 = lshr i128 %2327, 32

  %2331 = trunc i128 %2330 to i32

  store i32 %2329, i32* %1220, align 1, !tbaa !1307

  store i32 %2331, i32* %1222, align 1, !tbaa !1307

  %2332 = load i64, i64* %1218, align 1

  %2333 = trunc i64 %2332 to i32

  %2334 = load i128, i128* %1156, align 1

  %2335 = lshr i128 %2334, 32

  %2336 = trunc i128 %2335 to i32

  %2337 = lshr i128 %2334, 64

  %2338 = trunc i128 %2337 to i32

  %2339 = lshr i128 %2334, 96

  %2340 = trunc i128 %2339 to i32

  store i32 %2336, i32* %1220, align 1, !tbaa !1307

  store i32 %2336, i32* %1222, align 1, !tbaa !1307

  store i32 %2338, i32* %1223, align 1, !tbaa !1307

  store i32 %2340, i32* %1225, align 1, !tbaa !1307

  %2341 = load i64, i64* %1218, align 1

  %2342 = load i64, i64* %1219, align 1

  %2343 = lshr i64 %2341, 32

  %2344 = trunc i128 %2334 to i64

  %2345 = load i64, i64* %739, align 1

  %2346 = lshr i64 %2344, 32

  %2347 = add i64 %2344, %2341

  %2348 = add nuw nsw i64 %2346, %2343

  %2349 = add i64 %2345, %2342

  %2350 = lshr i64 %2342, 32

  %2351 = lshr i64 %2345, 32

  %2352 = add nuw nsw i64 %2351, %2350

  %2353 = trunc i64 %2347 to i32

  %2354 = trunc i64 %2348 to i32

  store i32 %2353, i32* %1220, align 1, !tbaa !1307

  store i32 %2354, i32* %1222, align 1, !tbaa !1307

  %2355 = trunc i64 %2349 to i32

  store i32 %2355, i32* %1223, align 1, !tbaa !1307

  %2356 = trunc i64 %2352 to i32

  store i32 %2356, i32* %1225, align 1, !tbaa !1307

  %2357 = load i64, i64* %1218, align 1

  %2358 = load i64, i64* %29, align 8

  %2359 = add i64 %2358, 134217700

  %2360 = inttoptr i64 %2359 to i32*

  %2361 = load i32, i32* %2360

  %2362 = zext i32 %2361 to i64

  store i64 %2362, i64* %33, align 8, !tbaa !1240

  %2363 = add i64 %2358, 134217704

  %2364 = inttoptr i64 %2363 to i32*

  %2365 = load i32, i32* %2364

  %2366 = zext i32 %2365 to i64

  store i64 %2366, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2367 = sub i32 %2333, %2361

  %2368 = icmp eq i32 %2367, 0

  %2369 = lshr i32 %2367, 31

  %2370 = lshr i32 %2333, 31

  %2371 = lshr i32 %2361, 31

  %2372 = xor i32 %2371, %2370

  %2373 = xor i32 %2369, %2370

  %2374 = add nuw nsw i32 %2373, %2372

  %2375 = icmp eq i32 %2374, 2

  %2376 = icmp ne i32 %2369, 0

  %2377 = xor i1 %2375, %2376

  %2378 = or i1 %2368, %2377

  %2379 = xor i1 %2378, true

  %2380 = zext i1 %2379 to i8

  store i8 %2380, i8* %20, align 1, !tbaa !1443

  %2381 = load i64, i64* %36, align 8

  %2382 = add i64 %2357, %2381

  %2383 = and i64 %2382, 4294967295

  store i64 %2383, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2384 = load i32, i32* %26, align 4

  %2385 = load i32, i32* %27, align 4

  %2386 = sub i32 %2384, %2385

  %2387 = icmp eq i32 %2386, 0

  %2388 = lshr i32 %2386, 31

  %2389 = lshr i32 %2384, 31

  %2390 = lshr i32 %2385, 31

  %2391 = xor i32 %2390, %2389

  %2392 = xor i32 %2388, %2389

  %2393 = add nuw nsw i32 %2392, %2391

  %2394 = icmp eq i32 %2393, 2

  %2395 = icmp ne i32 %2388, 0

  %2396 = xor i1 %2394, %2395

  %2397 = or i1 %2387, %2396

  %2398 = xor i1 %2397, true

  %2399 = zext i1 %2398 to i8

  store i8 %2399, i8* %14, align 1, !tbaa !1443

  %2400 = load i64, i64* %31, align 8

  %2401 = load i32, i32* %28, align 4

  %2402 = trunc i64 %2400 to i32

  %2403 = add i32 %2401, %2402

  %2404 = zext i32 %2403 to i64

  store i64 %2404, i64* %31, align 8, !tbaa !1240

  %2405 = load i64, i64* %29, align 8

  %2406 = add i64 %2405, 134217708

  %2407 = inttoptr i64 %2406 to i32*

  %2408 = load i32, i32* %2407

  %2409 = zext i32 %2408 to i64

  store i64 %2409, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2410 = load i32, i32* %27, align 4

  %2411 = sub i32 %2410, %2408

  %2412 = icmp eq i32 %2411, 0

  %2413 = lshr i32 %2411, 31

  %2414 = lshr i32 %2410, 31

  %2415 = lshr i32 %2408, 31

  %2416 = xor i32 %2415, %2414

  %2417 = xor i32 %2413, %2414

  %2418 = add nuw nsw i32 %2417, %2416

  %2419 = icmp eq i32 %2418, 2

  %2420 = icmp ne i32 %2413, 0

  %2421 = xor i1 %2419, %2420

  %2422 = or i1 %2412, %2421

  %2423 = xor i1 %2422, true

  %2424 = zext i1 %2423 to i8

  store i8 %2424, i8* %16, align 1, !tbaa !1443

  %2425 = load i64, i64* %33, align 8

  %2426 = load i32, i32* %23, align 4

  %2427 = trunc i64 %2425 to i32

  %2428 = add i32 %2426, %2427

  %2429 = zext i32 %2428 to i64

  store i64 %2429, i64* %33, align 8, !tbaa !1240

  %2430 = load i64, i64* %29, align 8

  %2431 = add i64 %2430, 134217712

  %2432 = inttoptr i64 %2431 to i32*

  %2433 = load i32, i32* %2432

  %2434 = zext i32 %2433 to i64

  store i64 %2434, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  %2435 = load i32, i32* %25, align 4

  %2436 = sub i32 %2435, %2433

  %2437 = icmp eq i32 %2436, 0

  %2438 = lshr i32 %2436, 31

  %2439 = lshr i32 %2435, 31

  %2440 = lshr i32 %2433, 31

  %2441 = xor i32 %2440, %2439

  %2442 = xor i32 %2438, %2439

  %2443 = add nuw nsw i32 %2442, %2441

  %2444 = icmp eq i32 %2443, 2

  %2445 = icmp ne i32 %2438, 0

  %2446 = xor i1 %2444, %2445

  %2447 = or i1 %2437, %2446

  %2448 = xor i1 %2447, true

  %2449 = zext i1 %2448 to i8

  store i8 %2449, i8* %18, align 1, !tbaa !1443

  %2450 = load i64, i64* %34, align 8

  %2451 = load i32, i32* %26, align 4

  %2452 = trunc i64 %2450 to i32

  %2453 = add i32 %2451, %2452

  %2454 = zext i32 %2453 to i64

  store i64 %2454, i64* %34, align 8, !tbaa !1240

  %2455 = load i64, i64* %29, align 8

  %2456 = add i64 %2455, 134217716

  %2457 = inttoptr i64 %2456 to i32*

  %2458 = load i32, i32* %2457

  %2459 = zext i32 %2458 to i64

  store i64 %2459, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2460 = load i32, i32* %23, align 4

  %2461 = sub i32 %2460, %2458

  %2462 = icmp eq i32 %2461, 0

  %2463 = lshr i32 %2461, 31

  %2464 = lshr i32 %2460, 31

  %2465 = lshr i32 %2458, 31

  %2466 = xor i32 %2465, %2464

  %2467 = xor i32 %2463, %2464

  %2468 = add nuw nsw i32 %2467, %2466

  %2469 = icmp eq i32 %2468, 2

  %2470 = icmp ne i32 %2463, 0

  %2471 = xor i1 %2469, %2470

  %2472 = or i1 %2462, %2471

  %2473 = xor i1 %2472, true

  %2474 = zext i1 %2473 to i8

  store i8 %2474, i8* %16, align 1, !tbaa !1443

  %2475 = load i64, i64* %33, align 8

  %2476 = load i32, i32* %27, align 4

  %2477 = trunc i64 %2475 to i32

  %2478 = add i32 %2476, %2477

  %2479 = zext i32 %2478 to i64

  store i64 %2479, i64* %33, align 8, !tbaa !1240

  %2480 = load i64, i64* %29, align 8

  %2481 = add i64 %2480, 134217720

  %2482 = inttoptr i64 %2481 to i32*

  %2483 = load i32, i32* %2482

  %2484 = zext i32 %2483 to i64

  store i64 %2484, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2485 = load i32, i32* %25, align 4

  %2486 = sub i32 %2485, %2483

  %2487 = icmp eq i32 %2486, 0

  %2488 = lshr i32 %2486, 31

  %2489 = lshr i32 %2485, 31

  %2490 = lshr i32 %2483, 31

  %2491 = xor i32 %2490, %2489

  %2492 = xor i32 %2488, %2489

  %2493 = add nuw nsw i32 %2492, %2491

  %2494 = icmp eq i32 %2493, 2

  %2495 = icmp ne i32 %2488, 0

  %2496 = xor i1 %2494, %2495

  %2497 = or i1 %2487, %2496

  %2498 = xor i1 %2497, true

  %2499 = zext i1 %2498 to i8

  store i8 %2499, i8* %20, align 1, !tbaa !1443

  %2500 = load i64, i64* %36, align 8

  %2501 = load i32, i32* %26, align 4

  %2502 = trunc i64 %2500 to i32

  %2503 = add i32 %2501, %2502

  %2504 = zext i32 %2503 to i64

  store i64 %2504, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2505 = load i32, i32* %27, align 4

  %2506 = load i64, i64* %29, align 8

  %2507 = add i64 %2506, 134217724

  %2508 = inttoptr i64 %2507 to i32*

  %2509 = load i32, i32* %2508

  %2510 = sub i32 %2505, %2509

  %2511 = icmp eq i32 %2510, 0

  %2512 = lshr i32 %2510, 31

  %2513 = lshr i32 %2505, 31

  %2514 = lshr i32 %2509, 31

  %2515 = xor i32 %2514, %2513

  %2516 = xor i32 %2512, %2513

  %2517 = add nuw nsw i32 %2516, %2515

  %2518 = icmp eq i32 %2517, 2

  %2519 = icmp ne i32 %2512, 0

  %2520 = xor i1 %2518, %2519

  %2521 = or i1 %2511, %2520

  %2522 = xor i1 %2521, true

  %2523 = zext i1 %2522 to i8

  store i8 %2523, i8* %14, align 1, !tbaa !1443

  %2524 = load i64, i64* %31, align 8

  %2525 = load i32, i32* %28, align 4

  %2526 = trunc i64 %2524 to i32

  %2527 = add i32 %2525, %2526

  %2528 = zext i32 %2527 to i64

  store i64 %2528, i64* %31, align 8, !tbaa !1240

  %2529 = icmp eq i32 %2527, 0

  %2530 = select i1 %2529, i64 202, i64 145

  %2531 = add i64 %1071, %2530

  br i1 %2529, label %block_401d33, label %block_401cfa



block_401bb0:                                     ; preds = %block_401bb0, %block_401b90

  %2532 = phi i64 [ -33554432, %block_401b90 ], [ %2564, %block_401bb0 ]

  %2533 = phi %struct.Memory* [ %1774, %block_401b90 ], [ %2533, %block_401bb0 ]

  %2534 = shl i64 %2532, 2

  %2535 = add i64 %2282, %2534

  %2536 = inttoptr i64 %2535 to i32*

  %2537 = load i32, i32* %2536

  %2538 = sext i32 %2537 to i64

  %2539 = shl nsw i64 %2538, 2

  %2540 = add i64 %2539, %2281

  %2541 = inttoptr i64 %2540 to i32*

  %2542 = load i32, i32* %2541

  %2543 = sext i32 %2542 to i64

  %2544 = add i32 %2542, -1

  %2545 = inttoptr i64 %2540 to i32*

  store i32 %2544, i32* %2545

  %2546 = shl nsw i64 %2543, 2

  %2547 = add i64 %2283, %2546

  %2548 = inttoptr i64 %2547 to i32*

  store i32 %2537, i32* %2548

  %2549 = add i64 %2284, %2534

  %2550 = inttoptr i64 %2549 to i32*

  %2551 = load i32, i32* %2550

  %2552 = sext i32 %2551 to i64

  %2553 = shl nsw i64 %2552, 2

  %2554 = add i64 %2553, %2281

  %2555 = inttoptr i64 %2554 to i32*

  %2556 = load i32, i32* %2555

  %2557 = sext i32 %2556 to i64

  %2558 = add nsw i64 %2557, -1

  %2559 = trunc i64 %2558 to i32

  %2560 = inttoptr i64 %2554 to i32*

  store i32 %2559, i32* %2560

  %2561 = shl nsw i64 %2557, 2

  %2562 = add i64 %2283, %2561

  %2563 = inttoptr i64 %2562 to i32*

  store i32 %2551, i32* %2563

  %2564 = add i64 %2532, 2

  %2565 = icmp eq i64 %2564, 0

  br i1 %2565, label %block_401be4, label %block_401bb0



block_401b8b:                                     ; preds = %block_401b5e

  %2566 = add i64 %918, 446

  br label %block_401d49



block_401a44:                                     ; preds = %block_401a10

  store i64 %1879, i64* %30, align 8, !tbaa !1240

  %2567 = inttoptr i64 %358 to i32*

  %2568 = load i32, i32* %2567

  %2569 = bitcast [32 x %union.VectorReg]* %38 to i32*

  store i32 %2568, i32* %2569, align 1, !tbaa !1307

  %2570 = bitcast i8* %737 to i32*

  store i32 0, i32* %2570, align 1, !tbaa !1307

  %2571 = bitcast i64* %739 to i32*

  store i32 0, i32* %2571, align 1, !tbaa !1307

  %2572 = bitcast i8* %741 to i32*

  store i32 0, i32* %2572, align 1, !tbaa !1307

  %2573 = bitcast %union.VectorReg* %40 to i8*

  %2574 = bitcast [32 x %union.VectorReg]* %38 to i128*

  %2575 = load i128, i128* %2574, align 1

  %2576 = trunc i128 %2575 to i32

  %2577 = lshr i128 %2575, 32

  %2578 = trunc i128 %2577 to i32

  %2579 = lshr i128 %2575, 64

  %2580 = trunc i128 %2579 to i32

  %2581 = bitcast %union.VectorReg* %40 to i32*

  store i32 %2576, i32* %2581, align 1, !tbaa !1307

  %2582 = getelementptr inbounds i8, i8* %2573, i64 4

  %2583 = bitcast i8* %2582 to i32*

  store i32 %2578, i32* %2583, align 1, !tbaa !1307

  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %2585 = bitcast i64* %2584 to i32*

  store i32 %2580, i32* %2585, align 1, !tbaa !1307

  %2586 = getelementptr inbounds i8, i8* %2573, i64 12

  %2587 = bitcast i8* %2586 to i32*

  store i32 %2576, i32* %2587, align 1, !tbaa !1307

  %2588 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %2588, align 1, !tbaa !1240

  store i64 -33554416, i64* %31, align 8, !tbaa !1240

  %2589 = bitcast %union.VectorReg* %39 to i8*

  %2590 = bitcast %union.VectorReg* %39 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %2590, align 1, !tbaa !1240

  %2591 = add i64 %356, 171

  %2592 = bitcast %union.VectorReg* %42 to i8*

  %2593 = add i64 %358, 134217668

  %2594 = bitcast %union.VectorReg* %42 to float*

  %2595 = getelementptr inbounds i8, i8* %2592, i64 4

  %2596 = bitcast i8* %2595 to float*

  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %2598 = bitcast i64* %2597 to float*

  %2599 = getelementptr inbounds i8, i8* %2592, i64 12

  %2600 = bitcast i8* %2599 to float*

  %2601 = bitcast %union.VectorReg* %41 to i8*

  %2602 = add i64 %358, 134217684

  %2603 = bitcast %union.VectorReg* %41 to float*

  %2604 = getelementptr inbounds i8, i8* %2601, i64 4

  %2605 = bitcast i8* %2604 to float*

  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %2607 = bitcast i64* %2606 to float*

  %2608 = getelementptr inbounds i8, i8* %2601, i64 12

  %2609 = bitcast i8* %2608 to float*

  %2610 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0

  %2611 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %42, i64 0, i32 0, i32 0, i32 0, i64 0

  %2612 = bitcast <2 x i64>* %4 to i8*

  %2613 = bitcast <2 x i64>* %4 to i32*

  %2614 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 0

  %2615 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 1

  %2616 = getelementptr inbounds i8, i8* %2612, i64 4

  %2617 = bitcast i8* %2616 to i32*

  %2618 = bitcast i64* %2615 to i32*

  %2619 = getelementptr inbounds i8, i8* %2612, i64 12

  %2620 = bitcast i8* %2619 to i32*

  %2621 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0

  %2622 = bitcast %union.VectorReg* %42 to i32*

  %2623 = bitcast i8* %2595 to i32*

  %2624 = bitcast i64* %2597 to i32*

  %2625 = bitcast i8* %2599 to i32*

  %2626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %2627 = bitcast <2 x i64>* %3 to i8*

  %2628 = bitcast <2 x i64>* %3 to i32*

  %2629 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 0

  %2630 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 1

  %2631 = getelementptr inbounds i8, i8* %2627, i64 4

  %2632 = bitcast i8* %2631 to i32*

  %2633 = bitcast i64* %2630 to i32*

  %2634 = getelementptr inbounds i8, i8* %2627, i64 12

  %2635 = bitcast i8* %2634 to i32*

  %2636 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %2638 = bitcast %union.VectorReg* %39 to i32*

  %2639 = getelementptr inbounds i8, i8* %2589, i64 4

  %2640 = bitcast i8* %2639 to i32*

  %2641 = bitcast i64* %2637 to i32*

  %2642 = getelementptr inbounds i8, i8* %2589, i64 12

  %2643 = bitcast i8* %2642 to i32*

  %2644 = load i64, i64* %29, align 8

  %2645 = add i64 %2644, 134217700

  %2646 = add i64 %2644, 134217716

  %2647 = bitcast %union.VectorReg* %40 to float*

  %2648 = bitcast i8* %2582 to float*

  %2649 = bitcast i64* %2584 to float*

  %2650 = bitcast i8* %2586 to float*

  %2651 = bitcast %union.VectorReg* %41 to i32*

  %2652 = bitcast i8* %2604 to i32*

  %2653 = bitcast i64* %2606 to i32*

  %2654 = bitcast i8* %2608 to i32*

  %2655 = bitcast <2 x i64>* %8 to i8*

  %2656 = bitcast <2 x i64>* %8 to i32*

  %2657 = getelementptr inbounds <2 x i64>, <2 x i64>* %8, i64 0, i64 0

  %2658 = getelementptr inbounds <2 x i64>, <2 x i64>* %8, i64 0, i64 1

  %2659 = getelementptr inbounds i8, i8* %2655, i64 4

  %2660 = bitcast i8* %2659 to i32*

  %2661 = bitcast i64* %2658 to i32*

  %2662 = getelementptr inbounds i8, i8* %2655, i64 12

  %2663 = bitcast i8* %2662 to i32*

  %2664 = bitcast <2 x i64>* %7 to i8*

  %2665 = bitcast <2 x i64>* %7 to i32*

  %2666 = getelementptr inbounds <2 x i64>, <2 x i64>* %7, i64 0, i64 0

  %2667 = getelementptr inbounds <2 x i64>, <2 x i64>* %7, i64 0, i64 1

  %2668 = getelementptr inbounds i8, i8* %2664, i64 4

  %2669 = bitcast i8* %2668 to i32*

  %2670 = bitcast i64* %2667 to i32*

  %2671 = getelementptr inbounds i8, i8* %2664, i64 12

  %2672 = bitcast i8* %2671 to i32*

  %2673 = load i64, i64* %2584, align 1

  br label %block_401a94



block_401c00:                                     ; preds = %block_401c34

  %2674 = shl i64 %1068, 2

  %2675 = add i64 %1227, %2674

  %2676 = inttoptr i64 %2675 to float*

  %2677 = load float, float* %2676

  %2678 = add i64 %2675, 4

  %2679 = inttoptr i64 %2678 to float*

  %2680 = load float, float* %2679

  %2681 = add i64 %2675, 8

  %2682 = inttoptr i64 %2681 to float*

  %2683 = load float, float* %2682

  %2684 = add i64 %2675, 12

  %2685 = inttoptr i64 %2684 to float*

  %2686 = load float, float* %2685

  store float %2677, float* %1176, align 1, !tbaa !1305

  store float %2680, float* %1178, align 1, !tbaa !1305

  store float %2683, float* %1180, align 1, !tbaa !1305

  store float %2686, float* %1182, align 1, !tbaa !1305

  %2687 = add i64 %1228, %2674

  %2688 = inttoptr i64 %2687 to float*

  %2689 = load float, float* %2688

  %2690 = add i64 %2687, 4

  %2691 = inttoptr i64 %2690 to float*

  %2692 = load float, float* %2691

  %2693 = add i64 %2687, 8

  %2694 = inttoptr i64 %2693 to float*

  %2695 = load float, float* %2694

  %2696 = add i64 %2687, 12

  %2697 = inttoptr i64 %2696 to float*

  %2698 = load float, float* %2697

  store float %2689, float* %1229, align 1, !tbaa !1305

  store float %2692, float* %1230, align 1, !tbaa !1305

  store float %2695, float* %1231, align 1, !tbaa !1305

  store float %2698, float* %1232, align 1, !tbaa !1305

  %2699 = load i64, i64* %1203, align 1

  %2700 = load i64, i64* %1188, align 1

  %2701 = load i64, i64* %1193, align 1

  %2702 = lshr i64 %2700, 32

  %2703 = trunc i64 %2702 to i32

  %2704 = trunc i64 %2699 to i32

  %2705 = trunc i64 %2701 to i32

  store i32 %2703, i32* %1233, align 1, !tbaa !1307

  store i32 %2704, i32* %1234, align 1, !tbaa !1307

  store i32 %2705, i32* %1235, align 1, !tbaa !1307

  store i32 %2705, i32* %1236, align 1, !tbaa !1307

  %2706 = load i64, i64* %1203, align 1

  %2707 = load i64, i64* %1188, align 1

  %2708 = load i64, i64* %1179, align 1

  %2709 = trunc i64 %2706 to i32

  %2710 = trunc i64 %2707 to i32

  %2711 = lshr i64 %2701, 32

  %2712 = trunc i64 %2711 to i32

  %2713 = trunc i64 %2708 to i32

  store i32 %2709, i32* %1233, align 1, !tbaa !1307

  store i32 %2710, i32* %1234, align 1, !tbaa !1307

  store i32 %2712, i32* %1235, align 1, !tbaa !1307

  store i32 %2713, i32* %1236, align 1, !tbaa !1307

  %2714 = load i64, i64* %1203, align 1

  %2715 = load i64, i64* %1188, align 1

  %2716 = trunc i64 %2714 to i32

  %2717 = icmp sgt i32 %2716, %2705

  %2718 = sext i1 %2717 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1237)

  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 16

  store i32 %2718, i32* %1238, align 16

  %2719 = load i64, i64* %1239, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1237)

  %2720 = lshr i64 %2714, 32

  %2721 = trunc i64 %2720 to i32

  %2722 = icmp sgt i32 %2721, %2712

  %2723 = sext i1 %2722 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1237)

  store i64 %2719, i64* %1239, align 16

  store i64 0, i64* %1240, align 8

  store i32 %2723, i32* %1242, align 4

  %2724 = load i64, i64* %1239, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1237)

  %2725 = trunc i64 %2715 to i32

  %2726 = icmp sgt i32 %2725, %2713

  %2727 = sext i1 %2726 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1237)

  store i64 %2724, i64* %1239, align 16

  store i64 0, i64* %1240, align 8

  store i32 %2727, i32* %1243, align 8

  %2728 = load i64, i64* %1240, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1237)

  %2729 = lshr i64 %2715, 32

  %2730 = trunc i64 %2729 to i32

  %2731 = lshr i64 %2708, 32

  %2732 = trunc i64 %2731 to i32

  %2733 = icmp sgt i32 %2730, %2732

  %2734 = sext i1 %2733 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1237)

  store i64 %2724, i64* %1239, align 16

  store i64 %2728, i64* %1240, align 8

  store i32 %2734, i32* %1245, align 4

  %2735 = load i64, i64* %1240, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1237)

  %2736 = lshr i64 %2724, 32

  %2737 = trunc i64 %2724 to i32

  %2738 = trunc i64 %2736 to i32

  store i32 %2737, i32* %1233, align 1, !tbaa !1307

  store i32 %2738, i32* %1234, align 1, !tbaa !1307

  %2739 = trunc i64 %2735 to i32

  store i32 %2739, i32* %1235, align 1, !tbaa !1307

  %2740 = lshr i64 %2735, 32

  %2741 = trunc i64 %2740 to i32

  store i32 %2741, i32* %1236, align 1, !tbaa !1307

  %2742 = load i64, i64* %1192, align 1

  %2743 = trunc i64 %2742 to i32

  store i32 %2732, i32* %1204, align 1, !tbaa !1307

  store i32 %2705, i32* %1205, align 1, !tbaa !1307

  store i32 %2743, i32* %1206, align 1, !tbaa !1307

  store i32 %2743, i32* %1207, align 1, !tbaa !1307

  %2744 = load i64, i64* %1193, align 1

  %2745 = load i64, i64* %1179, align 1

  %2746 = load i64, i64* %1166, align 1

  %2747 = trunc i64 %2744 to i32

  %2748 = trunc i64 %2745 to i32

  %2749 = lshr i64 %2742, 32

  %2750 = trunc i64 %2749 to i32

  %2751 = trunc i64 %2746 to i32

  store i32 %2747, i32* %1204, align 1, !tbaa !1307

  store i32 %2748, i32* %1205, align 1, !tbaa !1307

  store i32 %2750, i32* %1206, align 1, !tbaa !1307

  store i32 %2751, i32* %1207, align 1, !tbaa !1307

  %2752 = load i64, i64* %1193, align 1

  %2753 = load i64, i64* %1179, align 1

  %2754 = trunc i64 %2752 to i32

  %2755 = icmp sgt i32 %2754, %2743

  %2756 = sext i1 %2755 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1246)

  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16

  store i32 %2756, i32* %1247, align 16

  %2757 = load i64, i64* %1248, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1246)

  %2758 = lshr i64 %2752, 32

  %2759 = trunc i64 %2758 to i32

  %2760 = icmp sgt i32 %2759, %2750

  %2761 = sext i1 %2760 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1246)

  store i64 %2757, i64* %1248, align 16

  store i64 0, i64* %1249, align 8

  store i32 %2761, i32* %1251, align 4

  %2762 = load i64, i64* %1248, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1246)

  %2763 = trunc i64 %2753 to i32

  %2764 = icmp sgt i32 %2763, %2751

  %2765 = sext i1 %2764 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1246)

  store i64 %2762, i64* %1248, align 16

  store i64 0, i64* %1249, align 8

  store i32 %2765, i32* %1252, align 8

  %2766 = load i64, i64* %1249, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1246)

  %2767 = lshr i64 %2753, 32

  %2768 = trunc i64 %2767 to i32

  %2769 = lshr i64 %2746, 32

  %2770 = trunc i64 %2769 to i32

  %2771 = icmp sgt i32 %2768, %2770

  %2772 = sext i1 %2771 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1246)

  store i64 %2762, i64* %1248, align 16

  store i64 %2766, i64* %1249, align 8

  store i32 %2772, i32* %1254, align 4

  %2773 = load i64, i64* %1249, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1246)

  %2774 = lshr i64 %2762, 32

  %2775 = trunc i64 %2762 to i32

  %2776 = trunc i64 %2774 to i32

  store i32 %2775, i32* %1204, align 1, !tbaa !1307

  store i32 %2776, i32* %1205, align 1, !tbaa !1307

  %2777 = trunc i64 %2773 to i32

  store i32 %2777, i32* %1206, align 1, !tbaa !1307

  %2778 = lshr i64 %2773, 32

  %2779 = trunc i64 %2778 to i32

  store i32 %2779, i32* %1207, align 1, !tbaa !1307

  %2780 = load i64, i64* %1208, align 1

  %2781 = load i64, i64* %739, align 1

  %2782 = lshr i64 %2780, 32

  %2783 = load i64, i64* %1203, align 1

  %2784 = load i64, i64* %1188, align 1

  %2785 = lshr i64 %2783, 32

  %2786 = sub i64 %2780, %2783

  %2787 = sub nsw i64 %2782, %2785

  %2788 = sub i64 %2781, %2784

  %2789 = lshr i64 %2781, 32

  %2790 = lshr i64 %2784, 32

  %2791 = sub nsw i64 %2789, %2790

  %2792 = trunc i64 %2786 to i32

  %2793 = trunc i64 %2787 to i32

  store i32 %2792, i32* %1151, align 1, !tbaa !1307

  store i32 %2793, i32* %1152, align 1, !tbaa !1307

  %2794 = trunc i64 %2788 to i32

  store i32 %2794, i32* %1153, align 1, !tbaa !1307

  %2795 = trunc i64 %2791 to i32

  store i32 %2795, i32* %1154, align 1, !tbaa !1307

  %2796 = load i64, i64* %1218, align 1

  %2797 = load i64, i64* %1219, align 1

  %2798 = lshr i64 %2796, 32

  %2799 = load i64, i64* %1193, align 1

  %2800 = load i64, i64* %1179, align 1

  %2801 = lshr i64 %2799, 32

  %2802 = sub i64 %2796, %2799

  %2803 = sub nsw i64 %2798, %2801

  %2804 = sub i64 %2797, %2800

  %2805 = lshr i64 %2797, 32

  %2806 = lshr i64 %2800, 32

  %2807 = sub nsw i64 %2805, %2806

  %2808 = trunc i64 %2802 to i32

  %2809 = trunc i64 %2803 to i32

  store i32 %2808, i32* %1220, align 1, !tbaa !1307

  store i32 %2809, i32* %1222, align 1, !tbaa !1307

  %2810 = trunc i64 %2804 to i32

  store i32 %2810, i32* %1223, align 1, !tbaa !1307

  %2811 = trunc i64 %2807 to i32

  store i32 %2811, i32* %1225, align 1, !tbaa !1307

  %2812 = load i64, i64* %31, align 8

  %2813 = add i64 %1071, 52

  %2814 = add i64 %2812, 16

  store i64 %2814, i64* %31, align 8, !tbaa !1240

  br label %block_401c34

}



; Function Attrs: noinline

define %struct.Memory* @sub_401160_full_verify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401160:

  %3 = alloca <2 x i64>, align 16

  %4 = alloca <2 x i64>, align 16

  %5 = alloca <2 x i64>, align 16

  %6 = alloca <2 x i64>, align 16

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %13 = bitcast %union.anon* %8 to i32*

  %14 = bitcast %union.anon* %9 to i32*

  %15 = bitcast %union.anon* %10 to i32*

  %16 = bitcast %union.anon* %12 to i32*

  %17 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %18 = getelementptr inbounds %union.anon, %union.anon* %9, i64 0, i32 0

  %19 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0

  %20 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0

  %21 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %26 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 %26, i64* %23, align 8, !tbaa !1240

  %27 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %27, i64* %22, align 8, !tbaa !1240

  %28 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %29 = add i64 %26, 134217728

  %30 = add i64 %27, -4

  %31 = add i64 %26, 134217732

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %34 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  br label %block_401180



block_4012ff:                                     ; preds = %block_40124d

  %35 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %36 = add i32 %35, 1

  store i32 %36, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %37 = icmp eq i32 %35, -1

  %38 = icmp eq i32 %36, 0

  %39 = or i1 %37, %38

  %40 = zext i1 %39 to i8

  store i8 %40, i8* %32, align 1, !tbaa !1244

  %41 = and i32 %36, 255

  %42 = tail call i32 @llvm.ctpop.i32(i32 %41) #10

  %43 = trunc i32 %42 to i8

  %44 = and i8 %43, 1

  %45 = xor i8 %44, 1

  store i8 %45, i8* %72, align 1, !tbaa !1258

  %46 = xor i32 %36, %35

  %47 = lshr i32 %46, 4

  %48 = trunc i32 %47 to i8

  %49 = and i8 %48, 1

  store i8 %49, i8* %33, align 1, !tbaa !1262

  %50 = zext i1 %38 to i8

  store i8 %50, i8* %73, align 1, !tbaa !1259

  %51 = lshr i32 %36, 31

  %52 = trunc i32 %51 to i8

  store i8 %52, i8* %34, align 1, !tbaa !1260

  %53 = lshr i32 %35, 31

  %54 = xor i32 %51, %53

  %55 = add nuw nsw i32 %54, %51

  %56 = icmp eq i32 %55, 2

  %57 = zext i1 %56 to i8

  store i8 %57, i8* %74, align 1, !tbaa !1261

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %59 = load i64, i64* %58, align 8, !tbaa !1240

  %60 = inttoptr i64 %59 to i64*

  %61 = load i64, i64* %60

  store i64 %61, i64* %7, align 8, !tbaa !1240

  %62 = add i64 %59, 8

  store i64 %62, i64* %58, align 8, !tbaa !1240

  ret %struct.Memory* %767



block_4011b6:                                     ; preds = %block_401180

  %63 = bitcast %union.anon* %8 to i8*

  %64 = bitcast %union.anon* %9 to i8*

  %65 = bitcast %union.anon* %10 to i8*

  %66 = bitcast %union.anon* %11 to i8*

  %67 = bitcast %union.anon* %12 to i8*

  %68 = bitcast %union.anon* %11 to i32*

  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %73 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %74 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %75 = bitcast [32 x %union.VectorReg]* %69 to i8*

  %76 = inttoptr i64 %27 to i32*

  %77 = load i32, i32* %76

  %78 = bitcast [32 x %union.VectorReg]* %69 to i32*

  store i32 %77, i32* %78, align 1, !tbaa !1307

  %79 = getelementptr inbounds i8, i8* %75, i64 4

  %80 = bitcast i8* %79 to i32*

  store i32 0, i32* %80, align 1, !tbaa !1307

  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %82 = bitcast i64* %81 to i32*

  store i32 0, i32* %82, align 1, !tbaa !1307

  %83 = getelementptr inbounds i8, i8* %75, i64 12

  %84 = bitcast i8* %83 to i32*

  store i32 0, i32* %84, align 1, !tbaa !1307

  %85 = bitcast %union.VectorReg* %70 to i8*

  %86 = bitcast [32 x %union.VectorReg]* %69 to i128*

  %87 = load i128, i128* %86, align 1

  %88 = trunc i128 %87 to i32

  %89 = lshr i128 %87, 32

  %90 = trunc i128 %89 to i32

  %91 = lshr i128 %87, 64

  %92 = trunc i128 %91 to i32

  %93 = bitcast %union.VectorReg* %70 to i32*

  store i32 %88, i32* %93, align 1, !tbaa !1307

  %94 = getelementptr inbounds i8, i8* %85, i64 4

  %95 = bitcast i8* %94 to i32*

  store i32 %90, i32* %95, align 1, !tbaa !1307

  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %97 = bitcast i64* %96 to i32*

  store i32 %92, i32* %97, align 1, !tbaa !1307

  %98 = getelementptr inbounds i8, i8* %85, i64 12

  %99 = bitcast i8* %98 to i32*

  store i32 %88, i32* %99, align 1, !tbaa !1307

  %100 = bitcast [32 x %union.VectorReg]* %69 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %100, align 1, !tbaa !1240

  store i64 -33554416, i64* %18, align 8, !tbaa !1240

  %101 = bitcast %union.VectorReg* %24 to i8*

  %102 = bitcast %union.VectorReg* %24 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %102, align 1, !tbaa !1240

  %103 = add i64 %1, 182

  %104 = bitcast %union.VectorReg* %71 to i8*

  %105 = add i64 %27, 134217668

  %106 = bitcast %union.VectorReg* %71 to float*

  %107 = getelementptr inbounds i8, i8* %104, i64 4

  %108 = bitcast i8* %107 to float*

  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %110 = bitcast i64* %109 to float*

  %111 = getelementptr inbounds i8, i8* %104, i64 12

  %112 = bitcast i8* %111 to float*

  %113 = bitcast %union.VectorReg* %25 to i8*

  %114 = add i64 %27, 134217684

  %115 = bitcast %union.VectorReg* %25 to float*

  %116 = getelementptr inbounds i8, i8* %113, i64 4

  %117 = bitcast i8* %116 to float*

  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %119 = bitcast i64* %118 to float*

  %120 = getelementptr inbounds i8, i8* %113, i64 12

  %121 = bitcast i8* %120 to float*

  %122 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %70, i64 0, i32 0, i32 0, i32 0, i64 0

  %123 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %71, i64 0, i32 0, i32 0, i32 0, i64 0

  %124 = bitcast <2 x i64>* %3 to i8*

  %125 = bitcast <2 x i64>* %3 to i32*

  %126 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 0

  %127 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 1

  %128 = getelementptr inbounds i8, i8* %124, i64 4

  %129 = bitcast i8* %128 to i32*

  %130 = bitcast i64* %127 to i32*

  %131 = getelementptr inbounds i8, i8* %124, i64 12

  %132 = bitcast i8* %131 to i32*

  %133 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %25, i64 0, i32 0, i32 0, i32 0, i64 0

  %134 = bitcast %union.VectorReg* %71 to i32*

  %135 = bitcast i8* %107 to i32*

  %136 = bitcast i64* %109 to i32*

  %137 = bitcast i8* %111 to i32*

  %138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %139 = bitcast <2 x i64>* %4 to i8*

  %140 = bitcast <2 x i64>* %4 to i32*

  %141 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 0

  %142 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 1

  %143 = getelementptr inbounds i8, i8* %139, i64 4

  %144 = bitcast i8* %143 to i32*

  %145 = bitcast i64* %142 to i32*

  %146 = getelementptr inbounds i8, i8* %139, i64 12

  %147 = bitcast i8* %146 to i32*

  %148 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %24, i64 0, i32 0, i32 0, i32 0, i64 0

  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %150 = bitcast %union.VectorReg* %24 to i32*

  %151 = getelementptr inbounds i8, i8* %101, i64 4

  %152 = bitcast i8* %151 to i32*

  %153 = bitcast i64* %149 to i32*

  %154 = getelementptr inbounds i8, i8* %101, i64 12

  %155 = bitcast i8* %154 to i32*

  %156 = load i64, i64* %22, align 8

  %157 = add i64 %156, 134217700

  %158 = add i64 %156, 134217716

  %159 = bitcast %union.VectorReg* %70 to float*

  %160 = bitcast i8* %94 to float*

  %161 = bitcast i64* %96 to float*

  %162 = bitcast i8* %98 to float*

  %163 = bitcast %union.VectorReg* %25 to i32*

  %164 = bitcast i8* %116 to i32*

  %165 = bitcast i64* %118 to i32*

  %166 = bitcast i8* %120 to i32*

  %167 = bitcast <2 x i64>* %6 to i8*

  %168 = bitcast <2 x i64>* %6 to i32*

  %169 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0

  %170 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 1

  %171 = getelementptr inbounds i8, i8* %167, i64 4

  %172 = bitcast i8* %171 to i32*

  %173 = bitcast i64* %170 to i32*

  %174 = getelementptr inbounds i8, i8* %167, i64 12

  %175 = bitcast i8* %174 to i32*

  %176 = bitcast <2 x i64>* %5 to i8*

  %177 = bitcast <2 x i64>* %5 to i32*

  %178 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 0

  %179 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 1

  %180 = getelementptr inbounds i8, i8* %176, i64 4

  %181 = bitcast i8* %180 to i32*

  %182 = bitcast i64* %179 to i32*

  %183 = getelementptr inbounds i8, i8* %176, i64 12

  %184 = bitcast i8* %183 to i32*

  %185 = load i64, i64* %96, align 1

  br label %block_401216



block_4011e0:                                     ; preds = %block_401216

  %186 = shl i64 %714, 2

  %187 = add i64 %157, %186

  %188 = inttoptr i64 %187 to float*

  %189 = load float, float* %188

  %190 = add i64 %187, 4

  %191 = inttoptr i64 %190 to float*

  %192 = load float, float* %191

  %193 = add i64 %187, 8

  %194 = inttoptr i64 %193 to float*

  %195 = load float, float* %194

  %196 = add i64 %187, 12

  %197 = inttoptr i64 %196 to float*

  %198 = load float, float* %197

  store float %189, float* %106, align 1, !tbaa !1305

  store float %192, float* %108, align 1, !tbaa !1305

  store float %195, float* %110, align 1, !tbaa !1305

  store float %198, float* %112, align 1, !tbaa !1305

  %199 = add i64 %158, %186

  %200 = inttoptr i64 %199 to float*

  %201 = load float, float* %200

  %202 = add i64 %199, 4

  %203 = inttoptr i64 %202 to float*

  %204 = load float, float* %203

  %205 = add i64 %199, 8

  %206 = inttoptr i64 %205 to float*

  %207 = load float, float* %206

  %208 = add i64 %199, 12

  %209 = inttoptr i64 %208 to float*

  %210 = load float, float* %209

  store float %201, float* %159, align 1, !tbaa !1305

  store float %204, float* %160, align 1, !tbaa !1305

  store float %207, float* %161, align 1, !tbaa !1305

  store float %210, float* %162, align 1, !tbaa !1305

  %211 = load i64, i64* %133, align 1

  %212 = load i64, i64* %118, align 1

  %213 = load i64, i64* %123, align 1

  %214 = lshr i64 %212, 32

  %215 = trunc i64 %214 to i32

  %216 = trunc i64 %211 to i32

  %217 = trunc i64 %213 to i32

  store i32 %215, i32* %163, align 1, !tbaa !1307

  store i32 %216, i32* %164, align 1, !tbaa !1307

  store i32 %217, i32* %165, align 1, !tbaa !1307

  store i32 %217, i32* %166, align 1, !tbaa !1307

  %218 = load i64, i64* %133, align 1

  %219 = load i64, i64* %118, align 1

  %220 = load i64, i64* %109, align 1

  %221 = trunc i64 %218 to i32

  %222 = trunc i64 %219 to i32

  %223 = lshr i64 %213, 32

  %224 = trunc i64 %223 to i32

  %225 = trunc i64 %220 to i32

  store i32 %221, i32* %163, align 1, !tbaa !1307

  store i32 %222, i32* %164, align 1, !tbaa !1307

  store i32 %224, i32* %165, align 1, !tbaa !1307

  store i32 %225, i32* %166, align 1, !tbaa !1307

  %226 = load i64, i64* %133, align 1

  %227 = load i64, i64* %118, align 1

  %228 = trunc i64 %226 to i32

  %229 = icmp sgt i32 %228, %217

  %230 = sext i1 %229 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %167)

  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16

  store i32 %230, i32* %168, align 16

  %231 = load i64, i64* %169, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %167)

  %232 = lshr i64 %226, 32

  %233 = trunc i64 %232 to i32

  %234 = icmp sgt i32 %233, %224

  %235 = sext i1 %234 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %167)

  store i64 %231, i64* %169, align 16

  store i64 0, i64* %170, align 8

  store i32 %235, i32* %172, align 4

  %236 = load i64, i64* %169, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %167)

  %237 = trunc i64 %227 to i32

  %238 = icmp sgt i32 %237, %225

  %239 = sext i1 %238 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %167)

  store i64 %236, i64* %169, align 16

  store i64 0, i64* %170, align 8

  store i32 %239, i32* %173, align 8

  %240 = load i64, i64* %170, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %167)

  %241 = lshr i64 %227, 32

  %242 = trunc i64 %241 to i32

  %243 = lshr i64 %220, 32

  %244 = trunc i64 %243 to i32

  %245 = icmp sgt i32 %242, %244

  %246 = sext i1 %245 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %167)

  store i64 %236, i64* %169, align 16

  store i64 %240, i64* %170, align 8

  store i32 %246, i32* %175, align 4

  %247 = load i64, i64* %170, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %167)

  %248 = lshr i64 %236, 32

  %249 = trunc i64 %236 to i32

  %250 = trunc i64 %248 to i32

  store i32 %249, i32* %163, align 1, !tbaa !1307

  store i32 %250, i32* %164, align 1, !tbaa !1307

  %251 = trunc i64 %247 to i32

  store i32 %251, i32* %165, align 1, !tbaa !1307

  %252 = lshr i64 %247, 32

  %253 = trunc i64 %252 to i32

  store i32 %253, i32* %166, align 1, !tbaa !1307

  %254 = load i64, i64* %122, align 1

  %255 = trunc i64 %254 to i32

  store i32 %244, i32* %134, align 1, !tbaa !1307

  store i32 %217, i32* %135, align 1, !tbaa !1307

  store i32 %255, i32* %136, align 1, !tbaa !1307

  store i32 %255, i32* %137, align 1, !tbaa !1307

  %256 = load i64, i64* %123, align 1

  %257 = load i64, i64* %109, align 1

  %258 = load i64, i64* %96, align 1

  %259 = trunc i64 %256 to i32

  %260 = trunc i64 %257 to i32

  %261 = lshr i64 %254, 32

  %262 = trunc i64 %261 to i32

  %263 = trunc i64 %258 to i32

  store i32 %259, i32* %134, align 1, !tbaa !1307

  store i32 %260, i32* %135, align 1, !tbaa !1307

  store i32 %262, i32* %136, align 1, !tbaa !1307

  store i32 %263, i32* %137, align 1, !tbaa !1307

  %264 = load i64, i64* %123, align 1

  %265 = load i64, i64* %109, align 1

  %266 = trunc i64 %264 to i32

  %267 = icmp sgt i32 %266, %255

  %268 = sext i1 %267 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %176)

  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16

  store i32 %268, i32* %177, align 16

  %269 = load i64, i64* %178, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %176)

  %270 = lshr i64 %264, 32

  %271 = trunc i64 %270 to i32

  %272 = icmp sgt i32 %271, %262

  %273 = sext i1 %272 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %176)

  store i64 %269, i64* %178, align 16

  store i64 0, i64* %179, align 8

  store i32 %273, i32* %181, align 4

  %274 = load i64, i64* %178, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %176)

  %275 = trunc i64 %265 to i32

  %276 = icmp sgt i32 %275, %263

  %277 = sext i1 %276 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %176)

  store i64 %274, i64* %178, align 16

  store i64 0, i64* %179, align 8

  store i32 %277, i32* %182, align 8

  %278 = load i64, i64* %179, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %176)

  %279 = lshr i64 %265, 32

  %280 = trunc i64 %279 to i32

  %281 = lshr i64 %258, 32

  %282 = trunc i64 %281 to i32

  %283 = icmp sgt i32 %280, %282

  %284 = sext i1 %283 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %176)

  store i64 %274, i64* %178, align 16

  store i64 %278, i64* %179, align 8

  store i32 %284, i32* %184, align 4

  %285 = load i64, i64* %179, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %176)

  %286 = lshr i64 %274, 32

  %287 = trunc i64 %274 to i32

  %288 = trunc i64 %286 to i32

  store i32 %287, i32* %134, align 1, !tbaa !1307

  store i32 %288, i32* %135, align 1, !tbaa !1307

  %289 = trunc i64 %285 to i32

  store i32 %289, i32* %136, align 1, !tbaa !1307

  %290 = lshr i64 %285, 32

  %291 = trunc i64 %290 to i32

  store i32 %291, i32* %137, align 1, !tbaa !1307

  %292 = load i64, i64* %138, align 1

  %293 = load i64, i64* %81, align 1

  %294 = lshr i64 %292, 32

  %295 = load i64, i64* %133, align 1

  %296 = load i64, i64* %118, align 1

  %297 = lshr i64 %295, 32

  %298 = sub i64 %292, %295

  %299 = sub nsw i64 %294, %297

  %300 = sub i64 %293, %296

  %301 = lshr i64 %293, 32

  %302 = lshr i64 %296, 32

  %303 = sub nsw i64 %301, %302

  %304 = trunc i64 %298 to i32

  %305 = trunc i64 %299 to i32

  store i32 %304, i32* %78, align 1, !tbaa !1307

  store i32 %305, i32* %80, align 1, !tbaa !1307

  %306 = trunc i64 %300 to i32

  store i32 %306, i32* %82, align 1, !tbaa !1307

  %307 = trunc i64 %303 to i32

  store i32 %307, i32* %84, align 1, !tbaa !1307

  %308 = load i64, i64* %148, align 1

  %309 = load i64, i64* %149, align 1

  %310 = lshr i64 %308, 32

  %311 = load i64, i64* %123, align 1

  %312 = load i64, i64* %109, align 1

  %313 = lshr i64 %311, 32

  %314 = sub i64 %308, %311

  %315 = sub nsw i64 %310, %313

  %316 = sub i64 %309, %312

  %317 = lshr i64 %309, 32

  %318 = lshr i64 %312, 32

  %319 = sub nsw i64 %317, %318

  %320 = trunc i64 %314 to i32

  %321 = trunc i64 %315 to i32

  store i32 %320, i32* %150, align 1, !tbaa !1307

  store i32 %321, i32* %152, align 1, !tbaa !1307

  %322 = trunc i64 %316 to i32

  store i32 %322, i32* %153, align 1, !tbaa !1307

  %323 = trunc i64 %319 to i32

  store i32 %323, i32* %155, align 1, !tbaa !1307

  %324 = load i64, i64* %18, align 8

  %325 = add i64 %717, 54

  %326 = add i64 %324, 16

  store i64 %326, i64* %18, align 8, !tbaa !1240

  br label %block_401216



block_40124d:                                     ; preds = %block_401216

  %327 = load i64, i64* %148, align 1

  %328 = load i64, i64* %149, align 1

  %329 = lshr i64 %327, 32

  %330 = load i64, i64* %138, align 1

  %331 = load i64, i64* %81, align 1

  %332 = lshr i64 %330, 32

  %333 = add i64 %330, %327

  %334 = add nuw nsw i64 %332, %329

  %335 = add i64 %331, %328

  %336 = lshr i64 %328, 32

  %337 = lshr i64 %331, 32

  %338 = add nuw nsw i64 %337, %336

  %339 = trunc i64 %333 to i32

  %340 = trunc i64 %334 to i32

  store i32 %339, i32* %150, align 1, !tbaa !1307

  store i32 %340, i32* %152, align 1, !tbaa !1307

  %341 = trunc i64 %335 to i32

  store i32 %341, i32* %153, align 1, !tbaa !1307

  %342 = trunc i64 %338 to i32

  store i32 %342, i32* %155, align 1, !tbaa !1307

  %343 = bitcast %union.VectorReg* %24 to i128*

  %344 = load i128, i128* %343, align 1

  %345 = lshr i128 %344, 64

  %346 = trunc i128 %345 to i32

  %347 = lshr i128 %344, 96

  %348 = trunc i128 %347 to i32

  %349 = trunc i128 %344 to i32

  %350 = lshr i128 %344, 32

  %351 = trunc i128 %350 to i32

  store i32 %346, i32* %78, align 1, !tbaa !1307

  store i32 %348, i32* %80, align 1, !tbaa !1307

  store i32 %349, i32* %82, align 1, !tbaa !1307

  store i32 %351, i32* %84, align 1, !tbaa !1307

  %352 = load i64, i64* %138, align 1

  %353 = load i64, i64* %81, align 1

  %354 = lshr i64 %352, 32

  %355 = trunc i128 %344 to i64

  %356 = load i64, i64* %149, align 1

  %357 = lshr i64 %355, 32

  %358 = add i64 %355, %352

  %359 = add nuw nsw i64 %357, %354

  %360 = add i64 %356, %353

  %361 = lshr i64 %353, 32

  %362 = lshr i64 %356, 32

  %363 = add nuw nsw i64 %362, %361

  %364 = trunc i64 %358 to i32

  %365 = trunc i64 %359 to i32

  store i32 %364, i32* %78, align 1, !tbaa !1307

  store i32 %365, i32* %80, align 1, !tbaa !1307

  %366 = trunc i64 %360 to i32

  store i32 %366, i32* %82, align 1, !tbaa !1307

  %367 = trunc i64 %363 to i32

  store i32 %367, i32* %84, align 1, !tbaa !1307

  %368 = bitcast %union.VectorReg* %25 to i128*

  %369 = load i128, i128* %368, align 1

  %370 = lshr i128 %369, 96

  %371 = trunc i128 %370 to i32

  %372 = lshr i128 %369, 32

  %373 = trunc i128 %372 to i32

  store i32 %371, i32* %150, align 1, !tbaa !1307

  store i32 %373, i32* %152, align 1, !tbaa !1307

  %374 = load i64, i64* %148, align 1

  %375 = trunc i64 %374 to i32

  %376 = load i128, i128* %86, align 1

  %377 = lshr i128 %376, 32

  %378 = trunc i128 %377 to i32

  %379 = lshr i128 %376, 64

  %380 = trunc i128 %379 to i32

  %381 = lshr i128 %376, 96

  %382 = trunc i128 %381 to i32

  store i32 %378, i32* %150, align 1, !tbaa !1307

  store i32 %378, i32* %152, align 1, !tbaa !1307

  store i32 %380, i32* %153, align 1, !tbaa !1307

  store i32 %382, i32* %155, align 1, !tbaa !1307

  %383 = load i64, i64* %148, align 1

  %384 = load i64, i64* %149, align 1

  %385 = lshr i64 %383, 32

  %386 = trunc i128 %376 to i64

  %387 = load i64, i64* %81, align 1

  %388 = lshr i64 %386, 32

  %389 = add i64 %386, %383

  %390 = add nuw nsw i64 %388, %385

  %391 = add i64 %387, %384

  %392 = lshr i64 %384, 32

  %393 = lshr i64 %387, 32

  %394 = add nuw nsw i64 %393, %392

  %395 = trunc i64 %389 to i32

  %396 = trunc i64 %390 to i32

  store i32 %395, i32* %150, align 1, !tbaa !1307

  store i32 %396, i32* %152, align 1, !tbaa !1307

  %397 = trunc i64 %391 to i32

  store i32 %397, i32* %153, align 1, !tbaa !1307

  %398 = trunc i64 %394 to i32

  store i32 %398, i32* %155, align 1, !tbaa !1307

  %399 = load i64, i64* %148, align 1

  %400 = load i64, i64* %22, align 8

  %401 = add i64 %400, 134217700

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = zext i32 %403 to i64

  store i64 %404, i64* %19, align 8, !tbaa !1240

  %405 = add i64 %400, 134217704

  %406 = inttoptr i64 %405 to i32*

  %407 = load i32, i32* %406

  %408 = zext i32 %407 to i64

  store i64 %408, i64* %20, align 8, !tbaa !1240

  store i64 0, i64* %21, align 8, !tbaa !1240

  %409 = sub i32 %375, %403

  %410 = icmp eq i32 %409, 0

  %411 = lshr i32 %409, 31

  %412 = lshr i32 %375, 31

  %413 = lshr i32 %403, 31

  %414 = xor i32 %413, %412

  %415 = xor i32 %411, %412

  %416 = add nuw nsw i32 %415, %414

  %417 = icmp eq i32 %416, 2

  %418 = icmp ne i32 %411, 0

  %419 = xor i1 %417, %418

  %420 = or i1 %410, %419

  %421 = xor i1 %420, true

  %422 = zext i1 %421 to i8

  store i8 %422, i8* %67, align 1, !tbaa !1443

  %423 = load i64, i64* %21, align 8

  %424 = add i64 %399, %423

  %425 = and i64 %424, 4294967295

  store i64 %425, i64* %21, align 8, !tbaa !1240

  store i64 0, i64* %17, align 8, !tbaa !1240

  %426 = load i32, i32* %15, align 4

  %427 = load i32, i32* %68, align 4

  %428 = sub i32 %426, %427

  %429 = icmp eq i32 %428, 0

  %430 = lshr i32 %428, 31

  %431 = lshr i32 %426, 31

  %432 = lshr i32 %427, 31

  %433 = xor i32 %432, %431

  %434 = xor i32 %430, %431

  %435 = add nuw nsw i32 %434, %433

  %436 = icmp eq i32 %435, 2

  %437 = icmp ne i32 %430, 0

  %438 = xor i1 %436, %437

  %439 = or i1 %429, %438

  %440 = xor i1 %439, true

  %441 = zext i1 %440 to i8

  store i8 %441, i8* %63, align 1, !tbaa !1443

  %442 = load i64, i64* %17, align 8

  %443 = load i32, i32* %16, align 4

  %444 = trunc i64 %442 to i32

  %445 = add i32 %443, %444

  %446 = zext i32 %445 to i64

  store i64 %446, i64* %17, align 8, !tbaa !1240

  %447 = load i64, i64* %22, align 8

  %448 = add i64 %447, 134217708

  %449 = inttoptr i64 %448 to i32*

  %450 = load i32, i32* %449

  %451 = zext i32 %450 to i64

  store i64 %451, i64* %18, align 8, !tbaa !1240

  store i64 0, i64* %19, align 8, !tbaa !1240

  %452 = load i32, i32* %68, align 4

  %453 = sub i32 %452, %450

  %454 = icmp eq i32 %453, 0

  %455 = lshr i32 %453, 31

  %456 = lshr i32 %452, 31

  %457 = lshr i32 %450, 31

  %458 = xor i32 %457, %456

  %459 = xor i32 %455, %456

  %460 = add nuw nsw i32 %459, %458

  %461 = icmp eq i32 %460, 2

  %462 = icmp ne i32 %455, 0

  %463 = xor i1 %461, %462

  %464 = or i1 %454, %463

  %465 = xor i1 %464, true

  %466 = zext i1 %465 to i8

  store i8 %466, i8* %65, align 1, !tbaa !1443

  %467 = load i64, i64* %19, align 8

  %468 = load i32, i32* %13, align 4

  %469 = trunc i64 %467 to i32

  %470 = add i32 %468, %469

  %471 = zext i32 %470 to i64

  store i64 %471, i64* %19, align 8, !tbaa !1240

  %472 = load i64, i64* %22, align 8

  %473 = add i64 %472, 134217712

  %474 = inttoptr i64 %473 to i32*

  %475 = load i32, i32* %474

  %476 = zext i32 %475 to i64

  store i64 %476, i64* %17, align 8, !tbaa !1240

  store i64 0, i64* %20, align 8, !tbaa !1240

  %477 = load i32, i32* %14, align 4

  %478 = sub i32 %477, %475

  %479 = icmp eq i32 %478, 0

  %480 = lshr i32 %478, 31

  %481 = lshr i32 %477, 31

  %482 = lshr i32 %475, 31

  %483 = xor i32 %482, %481

  %484 = xor i32 %480, %481

  %485 = add nuw nsw i32 %484, %483

  %486 = icmp eq i32 %485, 2

  %487 = icmp ne i32 %480, 0

  %488 = xor i1 %486, %487

  %489 = or i1 %479, %488

  %490 = xor i1 %489, true

  %491 = zext i1 %490 to i8

  store i8 %491, i8* %66, align 1, !tbaa !1443

  %492 = load i64, i64* %20, align 8

  %493 = load i32, i32* %15, align 4

  %494 = trunc i64 %492 to i32

  %495 = add i32 %493, %494

  %496 = zext i32 %495 to i64

  store i64 %496, i64* %20, align 8, !tbaa !1240

  %497 = load i64, i64* %22, align 8

  %498 = add i64 %497, 134217716

  %499 = inttoptr i64 %498 to i32*

  %500 = load i32, i32* %499

  %501 = zext i32 %500 to i64

  store i64 %501, i64* %18, align 8, !tbaa !1240

  store i64 0, i64* %19, align 8, !tbaa !1240

  %502 = load i32, i32* %13, align 4

  %503 = sub i32 %502, %500

  %504 = icmp eq i32 %503, 0

  %505 = lshr i32 %503, 31

  %506 = lshr i32 %502, 31

  %507 = lshr i32 %500, 31

  %508 = xor i32 %507, %506

  %509 = xor i32 %505, %506

  %510 = add nuw nsw i32 %509, %508

  %511 = icmp eq i32 %510, 2

  %512 = icmp ne i32 %505, 0

  %513 = xor i1 %511, %512

  %514 = or i1 %504, %513

  %515 = xor i1 %514, true

  %516 = zext i1 %515 to i8

  store i8 %516, i8* %65, align 1, !tbaa !1443

  %517 = load i64, i64* %19, align 8

  %518 = load i32, i32* %68, align 4

  %519 = trunc i64 %517 to i32

  %520 = add i32 %518, %519

  %521 = zext i32 %520 to i64

  store i64 %521, i64* %19, align 8, !tbaa !1240

  %522 = load i64, i64* %22, align 8

  %523 = add i64 %522, 134217720

  %524 = inttoptr i64 %523 to i32*

  %525 = load i32, i32* %524

  %526 = zext i32 %525 to i64

  store i64 %526, i64* %17, align 8, !tbaa !1240

  store i64 0, i64* %20, align 8, !tbaa !1240

  %527 = load i32, i32* %14, align 4

  %528 = sub i32 %527, %525

  %529 = icmp eq i32 %528, 0

  %530 = lshr i32 %528, 31

  %531 = lshr i32 %527, 31

  %532 = lshr i32 %525, 31

  %533 = xor i32 %532, %531

  %534 = xor i32 %530, %531

  %535 = add nuw nsw i32 %534, %533

  %536 = icmp eq i32 %535, 2

  %537 = icmp ne i32 %530, 0

  %538 = xor i1 %536, %537

  %539 = or i1 %529, %538

  %540 = xor i1 %539, true

  %541 = zext i1 %540 to i8

  store i8 %541, i8* %66, align 1, !tbaa !1443

  %542 = load i64, i64* %20, align 8

  %543 = load i32, i32* %15, align 4

  %544 = trunc i64 %542 to i32

  %545 = add i32 %543, %544

  %546 = zext i32 %545 to i64

  store i64 %546, i64* %20, align 8, !tbaa !1240

  store i64 0, i64* %18, align 8, !tbaa !1240

  %547 = load i32, i32* %13, align 4

  %548 = load i64, i64* %22, align 8

  %549 = add i64 %548, 134217724

  %550 = inttoptr i64 %549 to i32*

  %551 = load i32, i32* %550

  %552 = sub i32 %547, %551

  %553 = icmp eq i32 %552, 0

  %554 = lshr i32 %552, 31

  %555 = lshr i32 %547, 31

  %556 = lshr i32 %551, 31

  %557 = xor i32 %556, %555

  %558 = xor i32 %554, %555

  %559 = add nuw nsw i32 %558, %557

  %560 = icmp eq i32 %559, 2

  %561 = icmp ne i32 %554, 0

  %562 = xor i1 %560, %561

  %563 = or i1 %553, %562

  %564 = xor i1 %563, true

  %565 = zext i1 %564 to i8

  store i8 %565, i8* %64, align 1, !tbaa !1443

  %566 = load i64, i64* %18, align 8

  %567 = load i32, i32* %68, align 4

  %568 = trunc i64 %566 to i32

  %569 = add i32 %567, %568

  %570 = zext i32 %569 to i64

  store i64 %570, i64* %18, align 8, !tbaa !1240

  %571 = icmp eq i32 %569, 0

  %572 = select i1 %571, i64 178, i64 150

  %573 = add i64 %717, %572

  br i1 %571, label %block_4012ff, label %block_4012e3



block_401216:                                     ; preds = %block_4011e0, %block_4011b6

  %574 = phi i64 [ %258, %block_4011e0 ], [ %185, %block_4011b6 ]

  %575 = phi i64 [ %326, %block_4011e0 ], [ -33554416, %block_4011b6 ]

  %576 = phi i64 [ %325, %block_4011e0 ], [ %103, %block_4011b6 ]

  %577 = shl i64 %575, 2

  %578 = add i64 %105, %577

  %579 = inttoptr i64 %578 to float*

  %580 = load float, float* %579

  %581 = add i64 %578, 4

  %582 = inttoptr i64 %581 to float*

  %583 = load float, float* %582

  %584 = add i64 %578, 8

  %585 = inttoptr i64 %584 to float*

  %586 = load float, float* %585

  %587 = add i64 %578, 12

  %588 = inttoptr i64 %587 to float*

  %589 = load float, float* %588

  store float %580, float* %106, align 1, !tbaa !1305

  store float %583, float* %108, align 1, !tbaa !1305

  store float %586, float* %110, align 1, !tbaa !1305

  store float %589, float* %112, align 1, !tbaa !1305

  %590 = add i64 %114, %577

  %591 = inttoptr i64 %590 to float*

  %592 = load float, float* %591

  %593 = add i64 %590, 4

  %594 = inttoptr i64 %593 to float*

  %595 = load float, float* %594

  %596 = add i64 %590, 8

  %597 = inttoptr i64 %596 to float*

  %598 = load float, float* %597

  %599 = add i64 %590, 12

  %600 = inttoptr i64 %599 to float*

  %601 = load float, float* %600

  store float %592, float* %115, align 1, !tbaa !1305

  store float %595, float* %117, align 1, !tbaa !1305

  store float %598, float* %119, align 1, !tbaa !1305

  store float %601, float* %121, align 1, !tbaa !1305

  %602 = load i64, i64* %122, align 1

  %603 = load i64, i64* %123, align 1

  %604 = lshr i64 %574, 32

  %605 = trunc i64 %604 to i32

  %606 = trunc i64 %602 to i32

  %607 = trunc i64 %603 to i32

  store i32 %605, i32* %93, align 1, !tbaa !1307

  store i32 %606, i32* %95, align 1, !tbaa !1307

  store i32 %607, i32* %97, align 1, !tbaa !1307

  store i32 %607, i32* %99, align 1, !tbaa !1307

  %608 = load i64, i64* %122, align 1

  %609 = load i64, i64* %96, align 1

  %610 = load i64, i64* %109, align 1

  %611 = trunc i64 %608 to i32

  %612 = trunc i64 %609 to i32

  %613 = lshr i64 %603, 32

  %614 = trunc i64 %613 to i32

  %615 = trunc i64 %610 to i32

  store i32 %611, i32* %93, align 1, !tbaa !1307

  store i32 %612, i32* %95, align 1, !tbaa !1307

  store i32 %614, i32* %97, align 1, !tbaa !1307

  store i32 %615, i32* %99, align 1, !tbaa !1307

  %616 = load i64, i64* %122, align 1

  %617 = load i64, i64* %96, align 1

  %618 = trunc i64 %616 to i32

  %619 = icmp sgt i32 %618, %607

  %620 = sext i1 %619 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %124)

  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16

  store i32 %620, i32* %125, align 16

  %621 = load i64, i64* %126, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %124)

  %622 = lshr i64 %616, 32

  %623 = trunc i64 %622 to i32

  %624 = icmp sgt i32 %623, %614

  %625 = sext i1 %624 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %124)

  store i64 %621, i64* %126, align 16

  store i64 0, i64* %127, align 8

  store i32 %625, i32* %129, align 4

  %626 = load i64, i64* %126, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %124)

  %627 = trunc i64 %617 to i32

  %628 = icmp sgt i32 %627, %615

  %629 = sext i1 %628 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %124)

  store i64 %626, i64* %126, align 16

  store i64 0, i64* %127, align 8

  store i32 %629, i32* %130, align 8

  %630 = load i64, i64* %127, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %124)

  %631 = lshr i64 %617, 32

  %632 = trunc i64 %631 to i32

  %633 = lshr i64 %610, 32

  %634 = trunc i64 %633 to i32

  %635 = icmp sgt i32 %632, %634

  %636 = sext i1 %635 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %124)

  store i64 %626, i64* %126, align 16

  store i64 %630, i64* %127, align 8

  store i32 %636, i32* %132, align 4

  %637 = load i64, i64* %127, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %124)

  %638 = lshr i64 %626, 32

  %639 = trunc i64 %626 to i32

  %640 = trunc i64 %638 to i32

  store i32 %639, i32* %93, align 1, !tbaa !1307

  store i32 %640, i32* %95, align 1, !tbaa !1307

  %641 = trunc i64 %637 to i32

  store i32 %641, i32* %97, align 1, !tbaa !1307

  %642 = lshr i64 %637, 32

  %643 = trunc i64 %642 to i32

  store i32 %643, i32* %99, align 1, !tbaa !1307

  %644 = load i64, i64* %133, align 1

  %645 = trunc i64 %644 to i32

  store i32 %634, i32* %134, align 1, !tbaa !1307

  store i32 %607, i32* %135, align 1, !tbaa !1307

  store i32 %645, i32* %136, align 1, !tbaa !1307

  store i32 %645, i32* %137, align 1, !tbaa !1307

  %646 = load i64, i64* %123, align 1

  %647 = load i64, i64* %109, align 1

  %648 = load i64, i64* %118, align 1

  %649 = trunc i64 %646 to i32

  %650 = trunc i64 %647 to i32

  %651 = lshr i64 %644, 32

  %652 = trunc i64 %651 to i32

  %653 = trunc i64 %648 to i32

  store i32 %649, i32* %134, align 1, !tbaa !1307

  store i32 %650, i32* %135, align 1, !tbaa !1307

  store i32 %652, i32* %136, align 1, !tbaa !1307

  store i32 %653, i32* %137, align 1, !tbaa !1307

  %654 = load i64, i64* %138, align 1

  %655 = load i64, i64* %81, align 1

  %656 = lshr i64 %654, 32

  %657 = load i64, i64* %122, align 1

  %658 = load i64, i64* %96, align 1

  %659 = lshr i64 %657, 32

  %660 = sub i64 %654, %657

  %661 = sub nsw i64 %656, %659

  %662 = sub i64 %655, %658

  %663 = lshr i64 %655, 32

  %664 = lshr i64 %658, 32

  %665 = sub nsw i64 %663, %664

  %666 = trunc i64 %660 to i32

  %667 = trunc i64 %661 to i32

  store i32 %666, i32* %78, align 1, !tbaa !1307

  store i32 %667, i32* %80, align 1, !tbaa !1307

  %668 = trunc i64 %662 to i32

  store i32 %668, i32* %82, align 1, !tbaa !1307

  %669 = trunc i64 %665 to i32

  store i32 %669, i32* %84, align 1, !tbaa !1307

  %670 = load i64, i64* %123, align 1

  %671 = load i64, i64* %109, align 1

  %672 = trunc i64 %670 to i32

  %673 = icmp sgt i32 %672, %645

  %674 = sext i1 %673 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %139)

  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 16

  store i32 %674, i32* %140, align 16

  %675 = load i64, i64* %141, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %139)

  %676 = lshr i64 %670, 32

  %677 = trunc i64 %676 to i32

  %678 = icmp sgt i32 %677, %652

  %679 = sext i1 %678 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %139)

  store i64 %675, i64* %141, align 16

  store i64 0, i64* %142, align 8

  store i32 %679, i32* %144, align 4

  %680 = load i64, i64* %141, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %139)

  %681 = trunc i64 %671 to i32

  %682 = icmp sgt i32 %681, %653

  %683 = sext i1 %682 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %139)

  store i64 %680, i64* %141, align 16

  store i64 0, i64* %142, align 8

  store i32 %683, i32* %145, align 8

  %684 = load i64, i64* %142, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %139)

  %685 = lshr i64 %671, 32

  %686 = trunc i64 %685 to i32

  %687 = lshr i64 %648, 32

  %688 = trunc i64 %687 to i32

  %689 = icmp sgt i32 %686, %688

  %690 = sext i1 %689 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %139)

  store i64 %680, i64* %141, align 16

  store i64 %684, i64* %142, align 8

  store i32 %690, i32* %147, align 4

  %691 = load i64, i64* %142, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %139)

  %692 = lshr i64 %680, 32

  %693 = trunc i64 %680 to i32

  %694 = trunc i64 %692 to i32

  store i32 %693, i32* %134, align 1, !tbaa !1307

  store i32 %694, i32* %135, align 1, !tbaa !1307

  %695 = trunc i64 %691 to i32

  store i32 %695, i32* %136, align 1, !tbaa !1307

  %696 = lshr i64 %691, 32

  %697 = trunc i64 %696 to i32

  store i32 %697, i32* %137, align 1, !tbaa !1307

  %698 = load i64, i64* %148, align 1

  %699 = load i64, i64* %149, align 1

  %700 = lshr i64 %698, 32

  %701 = load i64, i64* %123, align 1

  %702 = load i64, i64* %109, align 1

  %703 = lshr i64 %701, 32

  %704 = sub i64 %698, %701

  %705 = sub nsw i64 %700, %703

  %706 = sub i64 %699, %702

  %707 = lshr i64 %699, 32

  %708 = lshr i64 %702, 32

  %709 = sub nsw i64 %707, %708

  %710 = trunc i64 %704 to i32

  %711 = trunc i64 %705 to i32

  store i32 %710, i32* %150, align 1, !tbaa !1307

  store i32 %711, i32* %152, align 1, !tbaa !1307

  %712 = trunc i64 %706 to i32

  store i32 %712, i32* %153, align 1, !tbaa !1307

  %713 = trunc i64 %709 to i32

  store i32 %713, i32* %155, align 1, !tbaa !1307

  %714 = load i64, i64* %18, align 8

  %715 = icmp eq i64 %714, 0

  %716 = select i1 %715, i64 55, i64 -54

  %717 = add i64 %576, %716

  br i1 %715, label %block_40124d, label %block_4011e0



block_4012e3:                                     ; preds = %block_40124d

  %718 = load i64, i64* %17, align 8

  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %720 = load i64, i64* %719, align 8, !tbaa !1240

  %721 = add i64 %720, -8

  %722 = inttoptr i64 %721 to i64*

  store i64 %718, i64* %722

  store i64 %570, i64* %20, align 8, !tbaa !1240

  store i8 0, i8* %32, align 1, !tbaa !1244

  store i8 1, i8* %72, align 1, !tbaa !1258

  store i8 1, i8* %73, align 1, !tbaa !1259

  store i8 0, i8* %34, align 1, !tbaa !1260

  store i8 0, i8* %74, align 1, !tbaa !1261

  store i8 0, i8* %33, align 1, !tbaa !1262

  %723 = add i64 %573, 15

  %724 = add i64 %720, -16

  %725 = inttoptr i64 %724 to i64*

  store i64 %723, i64* %725

  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %728 = load i64, i64* %727, align 8, !alias.scope !1444, !noalias !1447

  %729 = load i64, i64* %23, align 8, !alias.scope !1444, !noalias !1447

  %730 = inttoptr i64 %721 to i64*

  %731 = load i64, i64* %730

  %732 = inttoptr i64 %720 to i64*

  %733 = load i64, i64* %732

  %734 = add i64 %720, 8

  %735 = inttoptr i64 %734 to i64*

  %736 = load i64, i64* %735

  %737 = add i64 %720, 16

  %738 = inttoptr i64 %737 to i64*

  %739 = load i64, i64* %738

  %740 = add i64 %720, 24

  %741 = inttoptr i64 %740 to i64*

  %742 = load i64, i64* %741

  %743 = add i64 %720, 32

  %744 = inttoptr i64 %743 to i64*

  %745 = load i64, i64* %744

  %746 = add i64 %720, 40

  %747 = inttoptr i64 %746 to i64*

  %748 = load i64, i64* %747

  %749 = add i64 %720, 48

  %750 = inttoptr i64 %749 to i64*

  %751 = load i64, i64* %750

  %752 = add i64 %720, 56

  %753 = inttoptr i64 %752 to i64*

  %754 = load i64, i64* %753

  %755 = add i64 %720, 64

  %756 = inttoptr i64 %755 to i64*

  %757 = load i64, i64* %756

  store i64 %721, i64* %719, align 8, !alias.scope !1444, !noalias !1447

  %758 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1032), i64 4294967295), i64 %570, i64 %728, i64 %570, i64 %548, i64 %729, i64 %731, i64 %733, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757), !noalias !1444

  %759 = load i64, i64* @stdout

  store i64 %759, i64* %21, align 8, !tbaa !1240

  %760 = load i64, i64* %719, align 8, !tbaa !1240

  %761 = add i64 %760, 8

  %762 = inttoptr i64 %761 to i64*

  %763 = load i64, i64* %762

  store i64 %763, i64* %7, align 8, !alias.scope !1449, !noalias !1452

  %764 = add i64 %760, 16

  store i64 %764, i64* %719, align 8, !alias.scope !1449, !noalias !1452

  %765 = tail call i64 @fflush(i64 %759), !noalias !1449

  store i64 %765, i64* %726, align 8, !alias.scope !1449, !noalias !1452

  ret %struct.Memory* %767



block_401180:                                     ; preds = %block_401180, %block_401160

  %766 = phi i64 [ -33554432, %block_401160 ], [ %798, %block_401180 ]

  %767 = phi %struct.Memory* [ %2, %block_401160 ], [ %767, %block_401180 ]

  %768 = shl i64 %766, 2

  %769 = add i64 %29, %768

  %770 = inttoptr i64 %769 to i32*

  %771 = load i32, i32* %770

  %772 = sext i32 %771 to i64

  %773 = shl nsw i64 %772, 2

  %774 = add i64 %773, %28

  %775 = inttoptr i64 %774 to i32*

  %776 = load i32, i32* %775

  %777 = sext i32 %776 to i64

  %778 = add i32 %776, -1

  %779 = inttoptr i64 %774 to i32*

  store i32 %778, i32* %779

  %780 = shl nsw i64 %777, 2

  %781 = add i64 %30, %780

  %782 = inttoptr i64 %781 to i32*

  store i32 %771, i32* %782

  %783 = add i64 %31, %768

  %784 = inttoptr i64 %783 to i32*

  %785 = load i32, i32* %784

  %786 = sext i32 %785 to i64

  %787 = shl nsw i64 %786, 2

  %788 = add i64 %787, %28

  %789 = inttoptr i64 %788 to i32*

  %790 = load i32, i32* %789

  %791 = sext i32 %790 to i64

  %792 = add nsw i64 %791, -1

  %793 = trunc i64 %792 to i32

  %794 = inttoptr i64 %788 to i32*

  store i32 %793, i32* %794

  %795 = shl nsw i64 %791, 2

  %796 = add i64 %30, %795

  %797 = inttoptr i64 %796 to i32*

  store i32 %785, i32* %797

  %798 = add i64 %766, 2

  %799 = icmp eq i64 %798, 0

  br i1 %799, label %block_4011b6, label %block_401180

}



; Function Attrs: noinline

define %struct.Memory* @sub_400a00_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400a00:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %13 = load i64, i64* %9, align 8

  %14 = load i64, i64* %11, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = load i32, i32* %7, align 4

  %24 = zext i32 %23 to i64

  store i64 %24, i64* %9, align 8, !tbaa !1240

  %25 = add i64 %14, -16

  store i64 %25, i64* %10, align 8, !tbaa !1240

  %26 = add i64 %1, 5360

  %27 = add i64 %1, 17

  %28 = add i64 %14, -32

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  store i64 %28, i64* %11, align 8, !tbaa !1240

  %30 = tail call %struct.Memory* @sub_401ef0_wtime_(%struct.State* nonnull %0, i64 %26, %struct.Memory* %2)

  %31 = load i64, i64* %11, align 8

  %32 = add i64 %31, 8

  %33 = inttoptr i64 %32 to double*

  %34 = load double, double* %33

  %35 = bitcast %union.VectorReg* %12 to double*

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %37 = load i32, i32* %5, align 4

  %38 = sext i32 %37 to i64

  store i64 %38, i64* %8, align 8, !tbaa !1240

  %39 = shl nsw i64 %38, 3

  %40 = add i64 %39, add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 528)

  %41 = inttoptr i64 %40 to double*

  %42 = load double, double* %41

  %43 = fsub double %34, %42

  %44 = add i64 %39, add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 16)

  %45 = inttoptr i64 %44 to double*

  %46 = load double, double* %45

  %47 = fadd double %43, %46

  store double %47, double* %35, align 1, !tbaa !1293

  store i64 0, i64* %36, align 1, !tbaa !1293

  %48 = inttoptr i64 %44 to double*

  store double %47, double* %48

  %49 = add i64 %31, 16

  %50 = icmp ugt i64 %31, -17

  %51 = zext i1 %50 to i8

  store i8 %51, i8* %17, align 1, !tbaa !1244

  %52 = trunc i64 %49 to i32

  %53 = and i32 %52, 255

  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #10

  %55 = trunc i32 %54 to i8

  %56 = and i8 %55, 1

  %57 = xor i8 %56, 1

  store i8 %57, i8* %18, align 1, !tbaa !1258

  %58 = xor i64 %31, 16

  %59 = xor i64 %58, %49

  %60 = lshr i64 %59, 4

  %61 = trunc i64 %60 to i8

  %62 = and i8 %61, 1

  store i8 %62, i8* %19, align 1, !tbaa !1262

  %63 = icmp eq i64 %49, 0

  %64 = zext i1 %63 to i8

  store i8 %64, i8* %20, align 1, !tbaa !1259

  %65 = lshr i64 %49, 63

  %66 = trunc i64 %65 to i8

  store i8 %66, i8* %21, align 1, !tbaa !1260

  %67 = lshr i64 %31, 63

  %68 = xor i64 %65, %67

  %69 = add nuw nsw i64 %68, %65

  %70 = icmp eq i64 %69, 2

  %71 = zext i1 %70 to i8

  store i8 %71, i8* %22, align 1, !tbaa !1261

  %72 = add i64 %31, 24

  %73 = inttoptr i64 %49 to i64*

  %74 = load i64, i64* %73

  store i64 %74, i64* %9, align 8, !tbaa !1240

  %75 = inttoptr i64 %72 to i64*

  %76 = load i64, i64* %75

  store i64 %76, i64* %3, align 8, !tbaa !1240

  %77 = add i64 %31, 32

  store i64 %77, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %30

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006a0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4006a0:

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

define %struct.Memory* @sub_4005b8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4005b8:

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

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10

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

  br i1 %21, label %block_4005ca, label %block_4005c8



block_4005ca:                                     ; preds = %block_4005c8, %block_4005b8

  %27 = phi i64 [ %7, %block_4005b8 ], [ %58, %block_4005c8 ]

  %28 = phi %struct.Memory* [ %2, %block_4005b8 ], [ %57, %block_4005c8 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1244

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #10

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



block_4005c8:                                     ; preds = %block_4005b8

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_4005ca

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400720:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 8) to i8*)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1244

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #10

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

  br i1 %14, label %block_400729, label %block_400740



block_400740:                                     ; preds = %block_400720

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_400729:                                     ; preds = %block_400720

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

  %35 = tail call %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 8) to i8*)

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

define %struct.Memory* @sub_400ae0_randlc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400ae0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8

  %16 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1040) to i8*)

  %17 = add i8 %16, -1

  %18 = icmp eq i8 %16, 0

  %19 = zext i1 %18 to i8

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %19, i8* %20, align 1, !tbaa !1244

  %21 = zext i8 %17 to i32

  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #10

  %23 = trunc i32 %22 to i8

  %24 = and i8 %23, 1

  %25 = xor i8 %24, 1

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %25, i8* %26, align 1, !tbaa !1258

  %27 = xor i8 %17, %16

  %28 = lshr i8 %27, 4

  %29 = and i8 %28, 1

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %29, i8* %30, align 1, !tbaa !1262

  %31 = icmp eq i8 %17, 0

  %32 = zext i1 %31 to i8

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %32, i8* %33, align 1, !tbaa !1259

  %34 = lshr i8 %17, 7

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %34, i8* %35, align 1, !tbaa !1260

  %36 = lshr i8 %16, 7

  %37 = xor i8 %34, %36

  %38 = add nuw nsw i8 %37, %36

  %39 = icmp eq i8 %38, 2

  %40 = zext i1 %39 to i8

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %40, i8* %41, align 1, !tbaa !1261

  br i1 %31, label %block_400ae9, label %block_400b0c



block_400b78:                                     ; preds = %block_400ae9, %block_400b0c

  %42 = phi double* [ %174, %block_400ae9 ], [ %158, %block_400b0c ]

  %43 = phi i64* [ %167, %block_400ae9 ], [ %151, %block_400b0c ]

  %44 = phi double* [ %166, %block_400ae9 ], [ %150, %block_400b0c ]

  %45 = phi double* [ %162, %block_400ae9 ], [ %146, %block_400b0c ]

  %46 = phi %struct.Memory* [ %2, %block_400ae9 ], [ %2, %block_400b0c ]

  %47 = load i64, i64* %5, align 8

  %48 = inttoptr i64 %47 to double*

  %49 = load double, double* %48

  %50 = bitcast %union.VectorReg* %12 to double*

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %52 = bitcast %union.VectorReg* %11 to <2 x double>*

  %53 = load <2 x double>, <2 x double>* %52, align 1

  %54 = bitcast [32 x %union.VectorReg]* %7 to double*

  %55 = extractelement <2 x double> %53, i32 0

  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %57 = fmul double %55, %49

  %58 = tail call double @llvm.trunc.f64(double %57) #10

  %59 = tail call double @llvm.fabs.f64(double %58) #10

  %60 = fcmp ogt double %59, 0x41DFFFFFFFC00000

  %61 = fptosi double %58 to i32

  %62 = sitofp i32 %61 to double

  %63 = select i1 %60, double 0xC1E0000000000000, double %62

  %64 = bitcast %union.VectorReg* %13 to double*

  %65 = bitcast %union.VectorReg* %9 to i8*

  %66 = bitcast %union.VectorReg* %9 to <2 x i64>*

  %67 = bitcast %union.VectorReg* %9 to <2 x double>*

  %68 = load <2 x double>, <2 x double>* %67, align 1

  %69 = extractelement <2 x double> %68, i32 0

  %70 = fmul double %69, %63

  %71 = fsub double %49, %70

  store double %71, double* %50, align 1, !tbaa !1293

  store i64 0, i64* %51, align 1, !tbaa !1293

  %72 = load i64, i64* %6, align 8

  %73 = inttoptr i64 %72 to double*

  %74 = load double, double* %73

  %75 = bitcast %union.VectorReg* %14 to i8*

  %76 = bitcast %union.VectorReg* %14 to double*

  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1

  %78 = fmul double %55, %74

  %79 = tail call double @llvm.trunc.f64(double %78) #10

  %80 = tail call double @llvm.fabs.f64(double %79) #10

  %81 = fcmp ogt double %80, 0x41DFFFFFFFC00000

  %82 = fptosi double %79 to i32

  %83 = bitcast i64* %77 to i32*

  store i32 0, i32* %83, align 1, !tbaa !1307

  %84 = getelementptr inbounds i8, i8* %75, i64 12

  %85 = bitcast i8* %84 to i32*

  store i32 0, i32* %85, align 1, !tbaa !1307

  %86 = sitofp i32 %82 to double

  %87 = select i1 %81, double 0xC1E0000000000000, double %86

  %88 = bitcast %union.VectorReg* %10 to i8*

  %89 = bitcast %union.VectorReg* %10 to double*

  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %91 = fmul double %69, %87

  %92 = fsub double %74, %91

  %93 = fmul double %63, %92

  store double %93, double* %64, align 1, !tbaa !1293

  %94 = fmul double %87, %71

  %95 = fadd double %94, %93

  %96 = load double, double* %45, align 1

  %97 = fmul double %96, %95

  store double %97, double* %45, align 1, !tbaa !1293

  %98 = tail call double @llvm.trunc.f64(double %97) #10

  %99 = tail call double @llvm.fabs.f64(double %98) #10

  %100 = fcmp ogt double %99, 0x41DFFFFFFFC00000

  %101 = fptosi double %98 to i32

  %102 = bitcast i64* %90 to i32*

  store i32 0, i32* %102, align 1, !tbaa !1307

  %103 = getelementptr inbounds i8, i8* %88, i64 12

  %104 = bitcast i8* %103 to i32*

  store i32 0, i32* %104, align 1, !tbaa !1307

  %105 = sitofp i32 %101 to double

  %106 = select i1 %100, double 0xC1E0000000000000, double %105

  %107 = load double, double* %44, align 1

  %108 = fmul double %106, %107

  store double %108, double* %89, align 1, !tbaa !1293

  %109 = fsub double %95, %108

  %110 = fmul double %109, %107

  store double %110, double* %76, align 1, !tbaa !1293

  %111 = load double, double* %50, align 1

  %112 = fmul double %92, %111

  %113 = fadd double %112, %110

  %114 = bitcast %union.VectorReg* %8 to <2 x i64>*

  %115 = load <2 x i64>, <2 x i64>* %114, align 1

  store <2 x i64> %115, <2 x i64>* %66, align 1, !tbaa !1293

  %116 = bitcast <2 x i64> %115 to <2 x double>

  %117 = extractelement <2 x double> %116, i32 0

  %118 = extractelement <2 x i64> %115, i32 1

  %119 = fmul double %117, %113

  store i64 %118, i64* %43, align 1, !tbaa !1293

  %120 = tail call double @llvm.trunc.f64(double %119) #10

  %121 = tail call double @llvm.fabs.f64(double %120) #10

  %122 = fcmp ogt double %121, 0x41DFFFFFFFC00000

  %123 = fptosi double %120 to i32

  %124 = zext i32 %123 to i64

  %125 = select i1 %122, i64 2147483648, i64 %124

  store i64 %125, i64* %4, align 8, !tbaa !1240

  %126 = bitcast %union.VectorReg* %9 to i32*

  store i32 0, i32* %126, align 1, !tbaa !1307

  %127 = getelementptr inbounds i8, i8* %65, i64 4

  %128 = bitcast i8* %127 to i32*

  store i32 0, i32* %128, align 1, !tbaa !1307

  %129 = bitcast i64* %43 to i32*

  store i32 0, i32* %129, align 1, !tbaa !1307

  %130 = getelementptr inbounds i8, i8* %65, i64 12

  %131 = bitcast i8* %130 to i32*

  store i32 0, i32* %131, align 1, !tbaa !1307

  %132 = trunc i64 %125 to i32

  %133 = sitofp i32 %132 to double

  %134 = load double, double* %42, align 1

  %135 = fmul double %133, %134

  store double %135, double* %44, align 1, !tbaa !1293

  %136 = fsub double %113, %135

  %137 = load i64, i64* %6, align 8

  %138 = inttoptr i64 %137 to double*

  store double %136, double* %138

  %139 = fmul double %136, %117

  store double %139, double* %54, align 1, !tbaa !1293

  store i64 0, i64* %56, align 1, !tbaa !1293

  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %141 = load i64, i64* %140, align 8, !tbaa !1240

  %142 = inttoptr i64 %141 to i64*

  %143 = load i64, i64* %142

  store i64 %143, i64* %3, align 8, !tbaa !1240

  %144 = add i64 %141, 8

  store i64 %144, i64* %140, align 8, !tbaa !1240

  ret %struct.Memory* %46



block_400b0c:                                     ; preds = %block_400ae0

  store i64 4503599627370496000, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to i64*)

  store i64 4710765210229538816, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to i64*)

  store i64 4400016835940974592, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to i64*)

  store i64 4814348001659060224, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to i64*)

  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1040) to i8*)

  %145 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 944) to double*)

  %146 = bitcast %union.VectorReg* %11 to double*

  store double %145, double* %146, align 1, !tbaa !1293

  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %148 = bitcast i64* %147 to double*

  store double 0.000000e+00, double* %148, align 1, !tbaa !1293

  %149 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 952) to double*)

  %150 = bitcast %union.VectorReg* %9 to double*

  store double %149, double* %150, align 1, !tbaa !1293

  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %152 = bitcast i64* %151 to double*

  store double 0.000000e+00, double* %152, align 1, !tbaa !1293

  %153 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 960) to double*)

  %154 = bitcast %union.VectorReg* %8 to double*

  store double %153, double* %154, align 1, !tbaa !1293

  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %156 = bitcast i64* %155 to double*

  store double 0.000000e+00, double* %156, align 1, !tbaa !1293

  %157 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 968) to double*)

  %158 = bitcast %union.VectorReg* %15 to double*

  store double %157, double* %158, align 1, !tbaa !1293

  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %160 = bitcast i64* %159 to double*

  store double 0.000000e+00, double* %160, align 1, !tbaa !1293

  br label %block_400b78



block_400ae9:                                     ; preds = %block_400ae0

  %161 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to double*)

  %162 = bitcast %union.VectorReg* %11 to double*

  store double %161, double* %162, align 1, !tbaa !1293

  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %164 = bitcast i64* %163 to double*

  store double 0.000000e+00, double* %164, align 1, !tbaa !1293

  %165 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to double*)

  %166 = bitcast %union.VectorReg* %9 to double*

  store double %165, double* %166, align 1, !tbaa !1293

  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %168 = bitcast i64* %167 to double*

  store double 0.000000e+00, double* %168, align 1, !tbaa !1293

  %169 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to double*)

  %170 = bitcast %union.VectorReg* %8 to double*

  store double %169, double* %170, align 1, !tbaa !1293

  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %172 = bitcast i64* %171 to double*

  store double 0.000000e+00, double* %172, align 1, !tbaa !1293

  %173 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to double*)

  %174 = bitcast %union.VectorReg* %15 to double*

  store double %173, double* %174, align 1, !tbaa !1293

  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %176 = bitcast i64* %175 to double*

  store double 0.000000e+00, double* %176, align 1, !tbaa !1293

  br label %block_400b78

}



; Function Attrs: noinline

define %struct.Memory* @sub_400a50_allocate_arrays(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400a50:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %6 = load i64, i64* %4, align 8

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = load i64, i64* %7, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %6, i64* %10

  %11 = add i64 %1, 11

  %12 = add i64 %8, -16

  %13 = inttoptr i64 %12 to i64*

  store i64 %11, i64* %13

  %14 = inttoptr i64 %12 to i64*

  %15 = load i64, i64* %14

  %16 = tail call i64 @malloc(i64 134217728), !noalias !1454

  store i64 %16, i64* bitcast (%key_array_type* @key_array to i64*)

  %17 = add i64 %15, 17

  %18 = add i64 %8, -16

  %19 = inttoptr i64 %18 to i64*

  store i64 %17, i64* %19

  %20 = inttoptr i64 %18 to i64*

  %21 = load i64, i64* %20

  %22 = tail call i64 @malloc(i64 8388608), !noalias !1457

  store i64 %22, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %23 = add i64 %21, 17

  %24 = add i64 %8, -16

  %25 = inttoptr i64 %24 to i64*

  store i64 %23, i64* %25

  %26 = inttoptr i64 %24 to i64*

  %27 = load i64, i64* %26

  %28 = tail call i64 @malloc(i64 134217728), !noalias !1460

  store i64 %28, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 20, i64* %5, align 8, !tbaa !1240

  %29 = add i64 %27, 17

  %30 = add i64 %8, -16

  %31 = inttoptr i64 %30 to i64*

  store i64 %29, i64* %31

  %32 = tail call i64 @malloc(i64 20), !noalias !1463

  store i64 %32, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %33 = inttoptr i64 %9 to i64*

  %34 = load i64, i64* %33

  store i64 %34, i64* %4, align 8, !tbaa !1240

  %35 = inttoptr i64 %8 to i64*

  %36 = load i64, i64* %35

  store i64 %36, i64* %3, align 8, !tbaa !1240

  %37 = add i64 %8, 8

  store i64 %37, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400760_c_print_results(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400760:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %11 = bitcast %union.anon* %10 to i32*

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0

  %13 = bitcast %union.anon* %12 to i32*

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %15 = bitcast %union.anon* %14 to i32*

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0

  %17 = bitcast %union.anon* %16 to i32*

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0

  %19 = bitcast %union.anon* %18 to i32*

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0

  %21 = bitcast %union.anon* %20 to i32*

  %22 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %23 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %24 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %27 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %30 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0

  %31 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %34 = load i64, i64* %27, align 8

  %35 = load i64, i64* %26, align 8, !tbaa !1240

  %36 = add i64 %35, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %34, i64* %37

  %38 = load i64, i64* %31, align 8

  %39 = add i64 %35, -16

  %40 = inttoptr i64 %39 to i64*

  store i64 %38, i64* %40

  %41 = load i64, i64* %30, align 8

  %42 = add i64 %35, -24

  %43 = inttoptr i64 %42 to i64*

  store i64 %41, i64* %43

  %44 = load i64, i64* %29, align 8

  %45 = add i64 %35, -32

  %46 = inttoptr i64 %45 to i64*

  store i64 %44, i64* %46

  %47 = load i64, i64* %28, align 8

  %48 = add i64 %35, -40

  %49 = inttoptr i64 %48 to i64*

  store i64 %47, i64* %49

  %50 = load i64, i64* %22, align 8

  %51 = add i64 %35, -48

  %52 = inttoptr i64 %51 to i64*

  store i64 %50, i64* %52

  %53 = add i64 %35, -136

  store i64 %53, i64* %26, align 8, !tbaa !1240

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %57 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %60 = add i64 %35, -64

  %61 = bitcast %union.VectorReg* %33 to double*

  %62 = load double, double* %61, align 1

  %63 = inttoptr i64 %60 to double*

  store double %62, double* %63

  %64 = add i64 %35, -72

  %65 = bitcast [32 x %union.VectorReg]* %32 to double*

  %66 = load double, double* %65, align 1

  %67 = inttoptr i64 %64 to double*

  store double %66, double* %67

  %68 = add i64 %35, -132

  %69 = load i32, i32* %17, align 4

  %70 = inttoptr i64 %68 to i32*

  store i32 %69, i32* %70

  %71 = load i32, i32* %15, align 4

  %72 = zext i32 %71 to i64

  store i64 %72, i64* %27, align 8, !tbaa !1240

  %73 = load i32, i32* %7, align 4

  %74 = zext i32 %73 to i64

  store i64 %74, i64* %22, align 8, !tbaa !1240

  %75 = load i32, i32* %9, align 4

  %76 = zext i32 %75 to i64

  store i64 %76, i64* %30, align 8, !tbaa !1240

  %77 = load i32, i32* %11, align 4

  %78 = zext i32 %77 to i64

  store i64 %78, i64* %31, align 8, !tbaa !1240

  %79 = load i64, i64* %25, align 8

  store i64 %79, i64* %23, align 8, !tbaa !1240

  %80 = add i64 %35, 80

  %81 = inttoptr i64 %80 to i64*

  %82 = load i64, i64* %81

  %83 = add i64 %35, -88

  %84 = inttoptr i64 %83 to i64*

  store i64 %82, i64* %84

  %85 = add i64 %35, 72

  %86 = inttoptr i64 %85 to i64*

  %87 = load i64, i64* %86

  %88 = add i64 %35, -96

  %89 = inttoptr i64 %88 to i64*

  store i64 %87, i64* %89

  %90 = add i64 %35, 64

  %91 = inttoptr i64 %90 to i64*

  %92 = load i64, i64* %91

  %93 = add i64 %35, -56

  %94 = inttoptr i64 %93 to i64*

  store i64 %92, i64* %94

  %95 = load i64, i64* %26, align 8

  %96 = add i64 %95, 192

  %97 = inttoptr i64 %96 to i64*

  %98 = load i64, i64* %97

  %99 = add i64 %95, 32

  %100 = inttoptr i64 %99 to i64*

  store i64 %98, i64* %100

  %101 = add i64 %95, 184

  %102 = inttoptr i64 %101 to i64*

  %103 = load i64, i64* %102

  %104 = add i64 %95, 24

  %105 = inttoptr i64 %104 to i64*

  store i64 %103, i64* %105

  %106 = add i64 %95, 176

  %107 = inttoptr i64 %106 to i64*

  %108 = load i64, i64* %107

  store i64 %108, i64* %28, align 8, !tbaa !1240

  %109 = add i64 %95, 168

  %110 = inttoptr i64 %109 to i64*

  %111 = load i64, i64* %110

  store i64 %111, i64* %29, align 8, !tbaa !1240

  %112 = add i64 %95, 160

  %113 = inttoptr i64 %112 to i64*

  %114 = load i64, i64* %113

  %115 = add i64 %95, 8

  %116 = inttoptr i64 %115 to i64*

  store i64 %114, i64* %116

  %117 = add i64 %95, 152

  %118 = inttoptr i64 %117 to i32*

  %119 = load i32, i32* %118

  %120 = add i64 %95, 20

  %121 = inttoptr i64 %120 to i32*

  store i32 %119, i32* %121

  %122 = add i64 %95, 144

  %123 = inttoptr i64 %122 to i64*

  %124 = load i64, i64* %123

  %125 = add i64 %95, 56

  %126 = inttoptr i64 %125 to i64*

  store i64 %124, i64* %126

  %127 = load i64, i64* %23, align 8

  %128 = add i64 %1, 178

  %129 = add i64 %95, -8

  %130 = inttoptr i64 %129 to i64*

  store i64 %128, i64* %130

  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %137 = load i64, i64* %133, align 8, !alias.scope !1466, !noalias !1469

  %138 = load i64, i64* %135, align 8, !alias.scope !1466, !noalias !1469

  %139 = load i64, i64* %136, align 8, !alias.scope !1466, !noalias !1469

  %140 = inttoptr i64 %95 to i64*

  %141 = load i64, i64* %140

  %142 = add i64 %95, 8

  %143 = inttoptr i64 %142 to i64*

  %144 = load i64, i64* %143

  %145 = add i64 %95, 16

  %146 = inttoptr i64 %145 to i64*

  %147 = load i64, i64* %146

  %148 = add i64 %95, 24

  %149 = inttoptr i64 %148 to i64*

  %150 = load i64, i64* %149

  %151 = add i64 %95, 32

  %152 = inttoptr i64 %151 to i64*

  %153 = load i64, i64* %152

  %154 = add i64 %95, 40

  %155 = inttoptr i64 %154 to i64*

  %156 = load i64, i64* %155

  %157 = add i64 %95, 48

  %158 = inttoptr i64 %157 to i64*

  %159 = load i64, i64* %158

  %160 = add i64 %95, 56

  %161 = inttoptr i64 %160 to i64*

  %162 = load i64, i64* %161

  %163 = add i64 %95, 64

  %164 = inttoptr i64 %163 to i64*

  %165 = load i64, i64* %164

  %166 = add i64 %95, 72

  %167 = inttoptr i64 %166 to i64*

  %168 = load i64, i64* %167

  %169 = inttoptr i64 %129 to i64*

  %170 = load i64, i64* %169

  store i64 %170, i64* %3, align 8, !alias.scope !1466, !noalias !1469

  store i64 %95, i64* %26, align 8, !alias.scope !1466, !noalias !1469

  %171 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 4), i64 4294967295), i64 %127, i64 %137, i64 %127, i64 %138, i64 %139, i64 %141, i64 %144, i64 %147, i64 %150, i64 %153, i64 %156, i64 %159, i64 %162, i64 %165, i64 %168)

  %172 = load i64, i64* %3, align 8

  %173 = load i32, i32* %21, align 4

  %174 = zext i32 %173 to i64

  %175 = add i64 %172, 15

  %176 = load i64, i64* %26, align 8, !tbaa !1240

  %177 = add i64 %176, -8

  %178 = inttoptr i64 %177 to i64*

  store i64 %175, i64* %178

  %179 = load i64, i64* %133, align 8, !alias.scope !1471, !noalias !1474

  %180 = load i64, i64* %132, align 8, !alias.scope !1471, !noalias !1474

  %181 = load i64, i64* %135, align 8, !alias.scope !1471, !noalias !1474

  %182 = load i64, i64* %136, align 8, !alias.scope !1471, !noalias !1474

  %183 = inttoptr i64 %176 to i64*

  %184 = load i64, i64* %183

  %185 = add i64 %176, 8

  %186 = inttoptr i64 %185 to i64*

  %187 = load i64, i64* %186

  %188 = add i64 %176, 16

  %189 = inttoptr i64 %188 to i64*

  %190 = load i64, i64* %189

  %191 = add i64 %176, 24

  %192 = inttoptr i64 %191 to i64*

  %193 = load i64, i64* %192

  %194 = add i64 %176, 32

  %195 = inttoptr i64 %194 to i64*

  %196 = load i64, i64* %195

  %197 = add i64 %176, 40

  %198 = inttoptr i64 %197 to i64*

  %199 = load i64, i64* %198

  %200 = add i64 %176, 48

  %201 = inttoptr i64 %200 to i64*

  %202 = load i64, i64* %201

  %203 = add i64 %176, 56

  %204 = inttoptr i64 %203 to i64*

  %205 = load i64, i64* %204

  %206 = add i64 %176, 64

  %207 = inttoptr i64 %206 to i64*

  %208 = load i64, i64* %207

  %209 = add i64 %176, 72

  %210 = inttoptr i64 %209 to i64*

  %211 = load i64, i64* %210

  %212 = inttoptr i64 %177 to i64*

  %213 = load i64, i64* %212

  store i64 %213, i64* %3, align 8, !alias.scope !1471, !noalias !1474

  store i64 %176, i64* %26, align 8, !alias.scope !1471, !noalias !1474

  %214 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 31), i64 4294967295), i64 %174, i64 %179, i64 %180, i64 %181, i64 %182, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199, i64 %202, i64 %205, i64 %208, i64 %211), !noalias !1471

  %215 = load i32, i32* %13, align 4

  %216 = load i64, i64* %3, align 8

  %217 = icmp eq i32 %215, 0

  %218 = select i1 %217, i64 25, i64 4

  %219 = add i64 %216, %218

  br i1 %217, label %block_40083a, label %block_400825



block_4008dc:                                     ; preds = %block_4008c9, %block_4008d0, %block_4008d7

  %220 = phi i64 [ and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 848), i64 4294967295), %block_4008c9 ], [ and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 896), i64 4294967295), %block_4008d0 ], [ and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 512), i64 4294967295), %block_4008d7 ]

  %221 = phi i64 [ %916, %block_4008c9 ], [ %660, %block_4008d0 ], [ %919, %block_4008d7 ]

  %222 = add i64 %221, 5

  %223 = add i64 %856, -8

  %224 = inttoptr i64 %223 to i64*

  store i64 %222, i64* %224

  %225 = inttoptr i64 %223 to i64*

  %226 = load i64, i64* %225

  store i64 %226, i64* %3, align 8, !alias.scope !1476, !noalias !1479

  store i64 %856, i64* %26, align 8, !alias.scope !1476, !noalias !1479

  %227 = tail call i64 @puts(i64 %220)

  %228 = load i64, i64* %26, align 8

  %229 = add i64 %228, 8

  %230 = load i64, i64* %3, align 8

  %231 = inttoptr i64 %229 to i64*

  %232 = load i64, i64* %231

  %233 = add i64 %230, 17

  %234 = add i64 %228, -8

  %235 = inttoptr i64 %234 to i64*

  store i64 %233, i64* %235

  %236 = load i64, i64* %133, align 8, !alias.scope !1481, !noalias !1484

  %237 = load i64, i64* %132, align 8, !alias.scope !1481, !noalias !1484

  %238 = load i64, i64* %135, align 8, !alias.scope !1481, !noalias !1484

  %239 = load i64, i64* %136, align 8, !alias.scope !1481, !noalias !1484

  %240 = inttoptr i64 %228 to i64*

  %241 = load i64, i64* %240

  %242 = add i64 %228, 8

  %243 = inttoptr i64 %242 to i64*

  %244 = load i64, i64* %243

  %245 = add i64 %228, 16

  %246 = inttoptr i64 %245 to i64*

  %247 = load i64, i64* %246

  %248 = add i64 %228, 24

  %249 = inttoptr i64 %248 to i64*

  %250 = load i64, i64* %249

  %251 = add i64 %228, 32

  %252 = inttoptr i64 %251 to i64*

  %253 = load i64, i64* %252

  %254 = add i64 %228, 40

  %255 = inttoptr i64 %254 to i64*

  %256 = load i64, i64* %255

  %257 = add i64 %228, 48

  %258 = inttoptr i64 %257 to i64*

  %259 = load i64, i64* %258

  %260 = add i64 %228, 56

  %261 = inttoptr i64 %260 to i64*

  %262 = load i64, i64* %261

  %263 = add i64 %228, 64

  %264 = inttoptr i64 %263 to i64*

  %265 = load i64, i64* %264

  %266 = add i64 %228, 72

  %267 = inttoptr i64 %266 to i64*

  %268 = load i64, i64* %267

  %269 = inttoptr i64 %234 to i64*

  %270 = load i64, i64* %269

  store i64 %270, i64* %3, align 8, !alias.scope !1481, !noalias !1484

  store i64 %228, i64* %26, align 8, !alias.scope !1481, !noalias !1484

  %271 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 299), i64 4294967295), i64 %232, i64 %236, i64 %237, i64 %238, i64 %239, i64 %241, i64 %244, i64 %247, i64 %250, i64 %253, i64 %256, i64 %259, i64 %262, i64 %265, i64 %268)

  %272 = load i64, i64* %3, align 8

  %273 = load i64, i64* %22, align 8

  %274 = add i64 %272, 15

  %275 = load i64, i64* %26, align 8, !tbaa !1240

  %276 = add i64 %275, -8

  %277 = inttoptr i64 %276 to i64*

  store i64 %274, i64* %277

  %278 = load i64, i64* %133, align 8, !alias.scope !1486, !noalias !1489

  %279 = load i64, i64* %132, align 8, !alias.scope !1486, !noalias !1489

  %280 = load i64, i64* %135, align 8, !alias.scope !1486, !noalias !1489

  %281 = load i64, i64* %136, align 8, !alias.scope !1486, !noalias !1489

  %282 = inttoptr i64 %275 to i64*

  %283 = load i64, i64* %282

  %284 = add i64 %275, 8

  %285 = inttoptr i64 %284 to i64*

  %286 = load i64, i64* %285

  %287 = add i64 %275, 16

  %288 = inttoptr i64 %287 to i64*

  %289 = load i64, i64* %288

  %290 = add i64 %275, 24

  %291 = inttoptr i64 %290 to i64*

  %292 = load i64, i64* %291

  %293 = add i64 %275, 32

  %294 = inttoptr i64 %293 to i64*

  %295 = load i64, i64* %294

  %296 = add i64 %275, 40

  %297 = inttoptr i64 %296 to i64*

  %298 = load i64, i64* %297

  %299 = add i64 %275, 48

  %300 = inttoptr i64 %299 to i64*

  %301 = load i64, i64* %300

  %302 = add i64 %275, 56

  %303 = inttoptr i64 %302 to i64*

  %304 = load i64, i64* %303

  %305 = add i64 %275, 64

  %306 = inttoptr i64 %305 to i64*

  %307 = load i64, i64* %306

  %308 = add i64 %275, 72

  %309 = inttoptr i64 %308 to i64*

  %310 = load i64, i64* %309

  %311 = inttoptr i64 %276 to i64*

  %312 = load i64, i64* %311

  store i64 %312, i64* %3, align 8, !alias.scope !1486, !noalias !1489

  store i64 %275, i64* %26, align 8, !alias.scope !1486, !noalias !1489

  %313 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 336), i64 4294967295), i64 %273, i64 %278, i64 %279, i64 %280, i64 %281, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304, i64 %307, i64 %310), !noalias !1486

  %314 = load i64, i64* %3, align 8

  %315 = add i64 %314, 10

  %316 = load i64, i64* %26, align 8, !tbaa !1240

  %317 = add i64 %316, -8

  %318 = inttoptr i64 %317 to i64*

  store i64 %315, i64* %318

  %319 = inttoptr i64 %317 to i64*

  %320 = load i64, i64* %319

  store i64 %320, i64* %3, align 8, !alias.scope !1491, !noalias !1494

  store i64 %316, i64* %26, align 8, !alias.scope !1491, !noalias !1494

  %321 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 560), i64 4294967295))

  %322 = load i64, i64* %3, align 8

  %323 = load i64, i64* %27, align 8

  %324 = add i64 %322, 15

  %325 = load i64, i64* %26, align 8, !tbaa !1240

  %326 = add i64 %325, -8

  %327 = inttoptr i64 %326 to i64*

  store i64 %324, i64* %327

  %328 = load i64, i64* %133, align 8, !alias.scope !1496, !noalias !1499

  %329 = load i64, i64* %132, align 8, !alias.scope !1496, !noalias !1499

  %330 = load i64, i64* %135, align 8, !alias.scope !1496, !noalias !1499

  %331 = load i64, i64* %136, align 8, !alias.scope !1496, !noalias !1499

  %332 = inttoptr i64 %325 to i64*

  %333 = load i64, i64* %332

  %334 = add i64 %325, 8

  %335 = inttoptr i64 %334 to i64*

  %336 = load i64, i64* %335

  %337 = add i64 %325, 16

  %338 = inttoptr i64 %337 to i64*

  %339 = load i64, i64* %338

  %340 = add i64 %325, 24

  %341 = inttoptr i64 %340 to i64*

  %342 = load i64, i64* %341

  %343 = add i64 %325, 32

  %344 = inttoptr i64 %343 to i64*

  %345 = load i64, i64* %344

  %346 = add i64 %325, 40

  %347 = inttoptr i64 %346 to i64*

  %348 = load i64, i64* %347

  %349 = add i64 %325, 48

  %350 = inttoptr i64 %349 to i64*

  %351 = load i64, i64* %350

  %352 = add i64 %325, 56

  %353 = inttoptr i64 %352 to i64*

  %354 = load i64, i64* %353

  %355 = add i64 %325, 64

  %356 = inttoptr i64 %355 to i64*

  %357 = load i64, i64* %356

  %358 = add i64 %325, 72

  %359 = inttoptr i64 %358 to i64*

  %360 = load i64, i64* %359

  %361 = inttoptr i64 %326 to i64*

  %362 = load i64, i64* %361

  store i64 %362, i64* %3, align 8, !alias.scope !1496, !noalias !1499

  store i64 %325, i64* %26, align 8, !alias.scope !1496, !noalias !1499

  %363 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 373), i64 4294967295), i64 %323, i64 %328, i64 %329, i64 %330, i64 %331, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357, i64 %360)

  %364 = load i64, i64* %3, align 8

  %365 = load i64, i64* %30, align 8

  %366 = add i64 %364, 15

  %367 = load i64, i64* %26, align 8, !tbaa !1240

  %368 = add i64 %367, -8

  %369 = inttoptr i64 %368 to i64*

  store i64 %366, i64* %369

  %370 = load i64, i64* %133, align 8, !alias.scope !1501, !noalias !1504

  %371 = load i64, i64* %132, align 8, !alias.scope !1501, !noalias !1504

  %372 = load i64, i64* %135, align 8, !alias.scope !1501, !noalias !1504

  %373 = load i64, i64* %136, align 8, !alias.scope !1501, !noalias !1504

  %374 = inttoptr i64 %367 to i64*

  %375 = load i64, i64* %374

  %376 = add i64 %367, 8

  %377 = inttoptr i64 %376 to i64*

  %378 = load i64, i64* %377

  %379 = add i64 %367, 16

  %380 = inttoptr i64 %379 to i64*

  %381 = load i64, i64* %380

  %382 = add i64 %367, 24

  %383 = inttoptr i64 %382 to i64*

  %384 = load i64, i64* %383

  %385 = add i64 %367, 32

  %386 = inttoptr i64 %385 to i64*

  %387 = load i64, i64* %386

  %388 = add i64 %367, 40

  %389 = inttoptr i64 %388 to i64*

  %390 = load i64, i64* %389

  %391 = add i64 %367, 48

  %392 = inttoptr i64 %391 to i64*

  %393 = load i64, i64* %392

  %394 = add i64 %367, 56

  %395 = inttoptr i64 %394 to i64*

  %396 = load i64, i64* %395

  %397 = add i64 %367, 64

  %398 = inttoptr i64 %397 to i64*

  %399 = load i64, i64* %398

  %400 = add i64 %367, 72

  %401 = inttoptr i64 %400 to i64*

  %402 = load i64, i64* %401

  %403 = inttoptr i64 %368 to i64*

  %404 = load i64, i64* %403

  store i64 %404, i64* %3, align 8, !alias.scope !1501, !noalias !1504

  store i64 %367, i64* %26, align 8, !alias.scope !1501, !noalias !1504

  %405 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 396), i64 4294967295), i64 %365, i64 %370, i64 %371, i64 %372, i64 %373, i64 %375, i64 %378, i64 %381, i64 %384, i64 %387, i64 %390, i64 %393, i64 %396, i64 %399, i64 %402)

  %406 = load i64, i64* %3, align 8

  %407 = load i64, i64* %31, align 8

  %408 = add i64 %406, 15

  %409 = load i64, i64* %26, align 8, !tbaa !1240

  %410 = add i64 %409, -8

  %411 = inttoptr i64 %410 to i64*

  store i64 %408, i64* %411

  %412 = load i64, i64* %133, align 8, !alias.scope !1506, !noalias !1509

  %413 = load i64, i64* %132, align 8, !alias.scope !1506, !noalias !1509

  %414 = load i64, i64* %135, align 8, !alias.scope !1506, !noalias !1509

  %415 = load i64, i64* %136, align 8, !alias.scope !1506, !noalias !1509

  %416 = inttoptr i64 %409 to i64*

  %417 = load i64, i64* %416

  %418 = add i64 %409, 8

  %419 = inttoptr i64 %418 to i64*

  %420 = load i64, i64* %419

  %421 = add i64 %409, 16

  %422 = inttoptr i64 %421 to i64*

  %423 = load i64, i64* %422

  %424 = add i64 %409, 24

  %425 = inttoptr i64 %424 to i64*

  %426 = load i64, i64* %425

  %427 = add i64 %409, 32

  %428 = inttoptr i64 %427 to i64*

  %429 = load i64, i64* %428

  %430 = add i64 %409, 40

  %431 = inttoptr i64 %430 to i64*

  %432 = load i64, i64* %431

  %433 = add i64 %409, 48

  %434 = inttoptr i64 %433 to i64*

  %435 = load i64, i64* %434

  %436 = add i64 %409, 56

  %437 = inttoptr i64 %436 to i64*

  %438 = load i64, i64* %437

  %439 = add i64 %409, 64

  %440 = inttoptr i64 %439 to i64*

  %441 = load i64, i64* %440

  %442 = add i64 %409, 72

  %443 = inttoptr i64 %442 to i64*

  %444 = load i64, i64* %443

  %445 = inttoptr i64 %410 to i64*

  %446 = load i64, i64* %445

  store i64 %446, i64* %3, align 8, !alias.scope !1506, !noalias !1509

  store i64 %409, i64* %26, align 8, !alias.scope !1506, !noalias !1509

  %447 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 419), i64 4294967295), i64 %407, i64 %412, i64 %413, i64 %414, i64 %415, i64 %417, i64 %420, i64 %423, i64 %426, i64 %429, i64 %432, i64 %435, i64 %438, i64 %441, i64 %444)

  %448 = load i64, i64* %3, align 8

  %449 = load i64, i64* %26, align 8

  %450 = add i64 %449, 80

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %448, 17

  %454 = add i64 %449, -8

  %455 = inttoptr i64 %454 to i64*

  store i64 %453, i64* %455

  %456 = load i64, i64* %133, align 8, !alias.scope !1511, !noalias !1514

  %457 = load i64, i64* %132, align 8, !alias.scope !1511, !noalias !1514

  %458 = load i64, i64* %135, align 8, !alias.scope !1511, !noalias !1514

  %459 = load i64, i64* %136, align 8, !alias.scope !1511, !noalias !1514

  %460 = inttoptr i64 %449 to i64*

  %461 = load i64, i64* %460

  %462 = add i64 %449, 8

  %463 = inttoptr i64 %462 to i64*

  %464 = load i64, i64* %463

  %465 = add i64 %449, 16

  %466 = inttoptr i64 %465 to i64*

  %467 = load i64, i64* %466

  %468 = add i64 %449, 24

  %469 = inttoptr i64 %468 to i64*

  %470 = load i64, i64* %469

  %471 = add i64 %449, 32

  %472 = inttoptr i64 %471 to i64*

  %473 = load i64, i64* %472

  %474 = add i64 %449, 40

  %475 = inttoptr i64 %474 to i64*

  %476 = load i64, i64* %475

  %477 = add i64 %449, 48

  %478 = inttoptr i64 %477 to i64*

  %479 = load i64, i64* %478

  %480 = add i64 %449, 56

  %481 = inttoptr i64 %480 to i64*

  %482 = load i64, i64* %481

  %483 = add i64 %449, 64

  %484 = inttoptr i64 %483 to i64*

  %485 = load i64, i64* %484

  %486 = add i64 %449, 72

  %487 = inttoptr i64 %486 to i64*

  %488 = load i64, i64* %487

  %489 = inttoptr i64 %454 to i64*

  %490 = load i64, i64* %489

  store i64 %490, i64* %3, align 8, !alias.scope !1511, !noalias !1514

  store i64 %449, i64* %26, align 8, !alias.scope !1511, !noalias !1514

  %491 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 442), i64 4294967295), i64 %452, i64 %456, i64 %457, i64 %458, i64 %459, i64 %461, i64 %464, i64 %467, i64 %470, i64 %473, i64 %476, i64 %479, i64 %482, i64 %485, i64 %488)

  %492 = load i64, i64* %3, align 8

  %493 = load i64, i64* %29, align 8

  %494 = add i64 %492, 15

  %495 = load i64, i64* %26, align 8, !tbaa !1240

  %496 = add i64 %495, -8

  %497 = inttoptr i64 %496 to i64*

  store i64 %494, i64* %497

  %498 = load i64, i64* %133, align 8, !alias.scope !1516, !noalias !1519

  %499 = load i64, i64* %132, align 8, !alias.scope !1516, !noalias !1519

  %500 = load i64, i64* %135, align 8, !alias.scope !1516, !noalias !1519

  %501 = load i64, i64* %136, align 8, !alias.scope !1516, !noalias !1519

  %502 = inttoptr i64 %495 to i64*

  %503 = load i64, i64* %502

  %504 = add i64 %495, 8

  %505 = inttoptr i64 %504 to i64*

  %506 = load i64, i64* %505

  %507 = add i64 %495, 16

  %508 = inttoptr i64 %507 to i64*

  %509 = load i64, i64* %508

  %510 = add i64 %495, 24

  %511 = inttoptr i64 %510 to i64*

  %512 = load i64, i64* %511

  %513 = add i64 %495, 32

  %514 = inttoptr i64 %513 to i64*

  %515 = load i64, i64* %514

  %516 = add i64 %495, 40

  %517 = inttoptr i64 %516 to i64*

  %518 = load i64, i64* %517

  %519 = add i64 %495, 48

  %520 = inttoptr i64 %519 to i64*

  %521 = load i64, i64* %520

  %522 = add i64 %495, 56

  %523 = inttoptr i64 %522 to i64*

  %524 = load i64, i64* %523

  %525 = add i64 %495, 64

  %526 = inttoptr i64 %525 to i64*

  %527 = load i64, i64* %526

  %528 = add i64 %495, 72

  %529 = inttoptr i64 %528 to i64*

  %530 = load i64, i64* %529

  %531 = inttoptr i64 %496 to i64*

  %532 = load i64, i64* %531

  store i64 %532, i64* %3, align 8, !alias.scope !1516, !noalias !1519

  store i64 %495, i64* %26, align 8, !alias.scope !1516, !noalias !1519

  %533 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 465), i64 4294967295), i64 %493, i64 %498, i64 %499, i64 %500, i64 %501, i64 %503, i64 %506, i64 %509, i64 %512, i64 %515, i64 %518, i64 %521, i64 %524, i64 %527, i64 %530)

  %534 = load i64, i64* %3, align 8

  %535 = load i64, i64* %28, align 8

  store i64 %535, i64* %24, align 8, !tbaa !1240

  %536 = add i64 %534, 15

  %537 = load i64, i64* %26, align 8, !tbaa !1240

  %538 = add i64 %537, -8

  %539 = inttoptr i64 %538 to i64*

  store i64 %536, i64* %539

  %540 = load i64, i64* %133, align 8, !alias.scope !1521, !noalias !1524

  %541 = load i64, i64* %132, align 8, !alias.scope !1521, !noalias !1524

  %542 = load i64, i64* %135, align 8, !alias.scope !1521, !noalias !1524

  %543 = load i64, i64* %136, align 8, !alias.scope !1521, !noalias !1524

  %544 = inttoptr i64 %537 to i64*

  %545 = load i64, i64* %544

  %546 = add i64 %537, 8

  %547 = inttoptr i64 %546 to i64*

  %548 = load i64, i64* %547

  %549 = add i64 %537, 16

  %550 = inttoptr i64 %549 to i64*

  %551 = load i64, i64* %550

  %552 = add i64 %537, 24

  %553 = inttoptr i64 %552 to i64*

  %554 = load i64, i64* %553

  %555 = add i64 %537, 32

  %556 = inttoptr i64 %555 to i64*

  %557 = load i64, i64* %556

  %558 = add i64 %537, 40

  %559 = inttoptr i64 %558 to i64*

  %560 = load i64, i64* %559

  %561 = add i64 %537, 48

  %562 = inttoptr i64 %561 to i64*

  %563 = load i64, i64* %562

  %564 = add i64 %537, 56

  %565 = inttoptr i64 %564 to i64*

  %566 = load i64, i64* %565

  %567 = add i64 %537, 64

  %568 = inttoptr i64 %567 to i64*

  %569 = load i64, i64* %568

  %570 = add i64 %537, 72

  %571 = inttoptr i64 %570 to i64*

  %572 = load i64, i64* %571

  %573 = inttoptr i64 %538 to i64*

  %574 = load i64, i64* %573

  store i64 %574, i64* %3, align 8, !alias.scope !1521, !noalias !1524

  store i64 %537, i64* %26, align 8, !alias.scope !1521, !noalias !1524

  %575 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 488), i64 4294967295), i64 %535, i64 %540, i64 %541, i64 %542, i64 %543, i64 %545, i64 %548, i64 %551, i64 %554, i64 %557, i64 %560, i64 %563, i64 %566, i64 %569, i64 %572), !noalias !1521

  %576 = load i64, i64* %3, align 8

  %577 = add i64 %576, 10

  %578 = load i64, i64* %26, align 8, !tbaa !1240

  %579 = add i64 %578, -8

  %580 = inttoptr i64 %579 to i64*

  store i64 %577, i64* %580

  %581 = inttoptr i64 %579 to i64*

  %582 = load i64, i64* %581

  store i64 %582, i64* %3, align 8, !alias.scope !1526, !noalias !1529

  store i64 %578, i64* %26, align 8, !alias.scope !1526, !noalias !1529

  %583 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 592), i64 4294967295)), !noalias !1526

  %584 = load i64, i64* %3, align 8

  %585 = add i64 %584, 10

  %586 = load i64, i64* %26, align 8, !tbaa !1240

  %587 = add i64 %586, -8

  %588 = inttoptr i64 %587 to i64*

  store i64 %585, i64* %588

  %589 = inttoptr i64 %587 to i64*

  %590 = load i64, i64* %589

  store i64 %590, i64* %3, align 8, !alias.scope !1531, !noalias !1534

  store i64 %586, i64* %26, align 8, !alias.scope !1531, !noalias !1534

  %591 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 640), i64 4294967295)), !noalias !1531

  %592 = load i64, i64* %3, align 8

  %593 = add i64 %592, 10

  %594 = load i64, i64* %26, align 8, !tbaa !1240

  %595 = add i64 %594, -8

  %596 = inttoptr i64 %595 to i64*

  store i64 %593, i64* %596

  %597 = inttoptr i64 %595 to i64*

  %598 = load i64, i64* %597

  store i64 %598, i64* %3, align 8, !alias.scope !1536, !noalias !1539

  store i64 %594, i64* %26, align 8, !alias.scope !1536, !noalias !1539

  %599 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 688), i64 4294967295)), !noalias !1536

  %600 = load i64, i64* %3, align 8

  %601 = add i64 %600, 10

  %602 = load i64, i64* %26, align 8, !tbaa !1240

  %603 = add i64 %602, -8

  %604 = inttoptr i64 %603 to i64*

  store i64 %601, i64* %604

  %605 = inttoptr i64 %603 to i64*

  %606 = load i64, i64* %605

  store i64 %606, i64* %3, align 8, !alias.scope !1541, !noalias !1544

  store i64 %602, i64* %26, align 8, !alias.scope !1541, !noalias !1544

  %607 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 736), i64 4294967295)), !noalias !1541

  %608 = load i64, i64* %3, align 8

  %609 = add i64 %608, 10

  %610 = load i64, i64* %26, align 8, !tbaa !1240

  %611 = add i64 %610, -8

  %612 = inttoptr i64 %611 to i64*

  store i64 %609, i64* %612

  store i64 %610, i64* %26, align 8, !alias.scope !1546, !noalias !1549

  %613 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 768), i64 4294967295)), !noalias !1546

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 800), i64 4294967295), i64* %25, align 8, !tbaa !1240

  %614 = load i64, i64* %26, align 8

  %615 = add i64 %614, 88

  %616 = icmp ugt i64 %614, -89

  %617 = zext i1 %616 to i8

  store i8 %617, i8* %54, align 1, !tbaa !1244

  %618 = trunc i64 %615 to i32

  %619 = and i32 %618, 255

  %620 = tail call i32 @llvm.ctpop.i32(i32 %619) #10

  %621 = trunc i32 %620 to i8

  %622 = and i8 %621, 1

  %623 = xor i8 %622, 1

  store i8 %623, i8* %55, align 1, !tbaa !1258

  %624 = xor i64 %614, 16

  %625 = xor i64 %624, %615

  %626 = lshr i64 %625, 4

  %627 = trunc i64 %626 to i8

  %628 = and i8 %627, 1

  store i8 %628, i8* %56, align 1, !tbaa !1262

  %629 = icmp eq i64 %615, 0

  %630 = zext i1 %629 to i8

  store i8 %630, i8* %57, align 1, !tbaa !1259

  %631 = lshr i64 %615, 63

  %632 = trunc i64 %631 to i8

  store i8 %632, i8* %58, align 1, !tbaa !1260

  %633 = lshr i64 %614, 63

  %634 = xor i64 %631, %633

  %635 = add nuw nsw i64 %634, %631

  %636 = icmp eq i64 %635, 2

  %637 = zext i1 %636 to i8

  store i8 %637, i8* %59, align 1, !tbaa !1261

  %638 = add i64 %614, 96

  %639 = inttoptr i64 %615 to i64*

  %640 = load i64, i64* %639

  store i64 %640, i64* %22, align 8, !tbaa !1240

  %641 = add i64 %614, 104

  %642 = inttoptr i64 %638 to i64*

  %643 = load i64, i64* %642

  store i64 %643, i64* %28, align 8, !tbaa !1240

  %644 = add i64 %614, 112

  %645 = inttoptr i64 %641 to i64*

  %646 = load i64, i64* %645

  store i64 %646, i64* %29, align 8, !tbaa !1240

  %647 = add i64 %614, 120

  %648 = inttoptr i64 %644 to i64*

  %649 = load i64, i64* %648

  store i64 %649, i64* %30, align 8, !tbaa !1240

  %650 = add i64 %614, 128

  %651 = inttoptr i64 %647 to i64*

  %652 = load i64, i64* %651

  store i64 %652, i64* %31, align 8, !tbaa !1240

  %653 = add i64 %614, 136

  %654 = inttoptr i64 %650 to i64*

  %655 = load i64, i64* %654

  store i64 %655, i64* %27, align 8, !tbaa !1240

  %656 = inttoptr i64 %653 to i64*

  %657 = load i64, i64* %656

  store i64 %657, i64* %3, align 8, !alias.scope !1551, !noalias !1554

  %658 = add i64 %614, 144

  store i64 %658, i64* %26, align 8, !alias.scope !1551, !noalias !1554

  %659 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 800), i64 4294967295)), !noalias !1551

  store i64 %659, i64* %131, align 8, !alias.scope !1551, !noalias !1554

  ret %struct.Memory* %662



block_4008d7:                                     ; preds = %block_4008c7

  br label %block_4008dc



block_4008d0:                                     ; preds = %block_40085b

  %660 = add i64 %867, 12

  br label %block_4008dc



block_40085b:                                     ; preds = %block_400825, %block_40083a

  %661 = phi i64 [ %915, %block_40083a ], [ %965, %block_400825 ]

  %662 = phi %struct.Memory* [ %2, %block_40083a ], [ %2, %block_400825 ]

  %663 = load i64, i64* %26, align 8

  %664 = add i64 %663, 48

  %665 = inttoptr i64 %664 to i64*

  %666 = load i64, i64* %665

  %667 = add i64 %663, 40

  %668 = inttoptr i64 %667 to i64*

  %669 = load i64, i64* %668

  store i64 %669, i64* %23, align 8, !tbaa !1240

  %670 = add i64 %663, 32

  %671 = inttoptr i64 %670 to i64*

  %672 = load i64, i64* %671

  store i64 %672, i64* %31, align 8, !tbaa !1240

  %673 = add i64 %663, 24

  %674 = inttoptr i64 %673 to i64*

  %675 = load i64, i64* %674

  store i64 %675, i64* %30, align 8, !tbaa !1240

  %676 = load i64, i64* %28, align 8

  store i64 %676, i64* %27, align 8, !tbaa !1240

  store i64 %666, i64* %28, align 8, !tbaa !1240

  %677 = load i64, i64* %29, align 8

  store i64 %677, i64* %22, align 8, !tbaa !1240

  store i64 %669, i64* %29, align 8, !tbaa !1240

  %678 = add i64 %663, 4

  %679 = inttoptr i64 %678 to i32*

  %680 = load i32, i32* %679

  %681 = zext i32 %680 to i64

  store i64 %681, i64* %24, align 8, !tbaa !1240

  %682 = add i64 %661, 48

  %683 = add i64 %663, -8

  %684 = inttoptr i64 %683 to i64*

  store i64 %682, i64* %684

  %685 = load i64, i64* %133, align 8, !alias.scope !1556, !noalias !1559

  %686 = load i64, i64* %135, align 8, !alias.scope !1556, !noalias !1559

  %687 = load i64, i64* %136, align 8, !alias.scope !1556, !noalias !1559

  %688 = inttoptr i64 %663 to i64*

  %689 = load i64, i64* %688

  %690 = add i64 %663, 8

  %691 = inttoptr i64 %690 to i64*

  %692 = load i64, i64* %691

  %693 = add i64 %663, 16

  %694 = inttoptr i64 %693 to i64*

  %695 = load i64, i64* %694

  %696 = add i64 %663, 24

  %697 = inttoptr i64 %696 to i64*

  %698 = load i64, i64* %697

  %699 = add i64 %663, 32

  %700 = inttoptr i64 %699 to i64*

  %701 = load i64, i64* %700

  %702 = add i64 %663, 40

  %703 = inttoptr i64 %702 to i64*

  %704 = load i64, i64* %703

  %705 = add i64 %663, 48

  %706 = inttoptr i64 %705 to i64*

  %707 = load i64, i64* %706

  %708 = add i64 %663, 56

  %709 = inttoptr i64 %708 to i64*

  %710 = load i64, i64* %709

  %711 = add i64 %663, 64

  %712 = inttoptr i64 %711 to i64*

  %713 = load i64, i64* %712

  %714 = add i64 %663, 72

  %715 = inttoptr i64 %714 to i64*

  %716 = load i64, i64* %715

  %717 = inttoptr i64 %683 to i64*

  %718 = load i64, i64* %717

  store i64 %718, i64* %3, align 8, !alias.scope !1556, !noalias !1559

  store i64 %663, i64* %26, align 8, !alias.scope !1556, !noalias !1559

  %719 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 159), i64 4294967295), i64 %681, i64 %685, i64 %669, i64 %686, i64 %687, i64 %689, i64 %692, i64 %695, i64 %698, i64 %701, i64 %704, i64 %707, i64 %710, i64 %713, i64 %716), !noalias !1556

  %720 = load i64, i64* %3, align 8

  %721 = load i64, i64* %26, align 8

  %722 = add i64 %721, 64

  %723 = inttoptr i64 %722 to double*

  %724 = load double, double* %723

  store double %724, double* %65, align 1, !tbaa !1293

  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %726 = bitcast i64* %725 to double*

  store double 0.000000e+00, double* %726, align 1, !tbaa !1293

  %727 = add i64 %720, 18

  %728 = add i64 %721, -8

  %729 = inttoptr i64 %728 to i64*

  store i64 %727, i64* %729

  %730 = load i64, i64* %134, align 8, !alias.scope !1561, !noalias !1564

  %731 = load i64, i64* %133, align 8, !alias.scope !1561, !noalias !1564

  %732 = load i64, i64* %132, align 8, !alias.scope !1561, !noalias !1564

  %733 = load i64, i64* %135, align 8, !alias.scope !1561, !noalias !1564

  %734 = load i64, i64* %136, align 8, !alias.scope !1561, !noalias !1564

  %735 = inttoptr i64 %721 to i64*

  %736 = load i64, i64* %735

  %737 = add i64 %721, 8

  %738 = inttoptr i64 %737 to i64*

  %739 = load i64, i64* %738

  %740 = add i64 %721, 16

  %741 = inttoptr i64 %740 to i64*

  %742 = load i64, i64* %741

  %743 = add i64 %721, 24

  %744 = inttoptr i64 %743 to i64*

  %745 = load i64, i64* %744

  %746 = add i64 %721, 32

  %747 = inttoptr i64 %746 to i64*

  %748 = load i64, i64* %747

  %749 = add i64 %721, 40

  %750 = inttoptr i64 %749 to i64*

  %751 = load i64, i64* %750

  %752 = add i64 %721, 48

  %753 = inttoptr i64 %752 to i64*

  %754 = load i64, i64* %753

  %755 = add i64 %721, 56

  %756 = inttoptr i64 %755 to i64*

  %757 = load i64, i64* %756

  %758 = add i64 %721, 64

  %759 = inttoptr i64 %758 to i64*

  %760 = load i64, i64* %759

  %761 = add i64 %721, 72

  %762 = inttoptr i64 %761 to i64*

  %763 = load i64, i64* %762

  %764 = inttoptr i64 %728 to i64*

  %765 = load i64, i64* %764

  store i64 %765, i64* %3, align 8, !alias.scope !1561, !noalias !1564

  store i64 %721, i64* %26, align 8, !alias.scope !1561, !noalias !1564

  %766 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 196), i64 4294967295), i64 %730, i64 %731, i64 %732, i64 %733, i64 %734, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757, i64 %760, i64 %763), !noalias !1561

  %767 = load i64, i64* %3, align 8

  %768 = load i64, i64* %26, align 8

  %769 = add i64 %768, 72

  %770 = inttoptr i64 %769 to double*

  %771 = load double, double* %770

  store double %771, double* %65, align 1, !tbaa !1293

  store double 0.000000e+00, double* %726, align 1, !tbaa !1293

  %772 = add i64 %767, 18

  %773 = add i64 %768, -8

  %774 = inttoptr i64 %773 to i64*

  store i64 %772, i64* %774

  %775 = load i64, i64* %134, align 8, !alias.scope !1566, !noalias !1569

  %776 = load i64, i64* %133, align 8, !alias.scope !1566, !noalias !1569

  %777 = load i64, i64* %132, align 8, !alias.scope !1566, !noalias !1569

  %778 = load i64, i64* %135, align 8, !alias.scope !1566, !noalias !1569

  %779 = load i64, i64* %136, align 8, !alias.scope !1566, !noalias !1569

  %780 = inttoptr i64 %768 to i64*

  %781 = load i64, i64* %780

  %782 = add i64 %768, 8

  %783 = inttoptr i64 %782 to i64*

  %784 = load i64, i64* %783

  %785 = add i64 %768, 16

  %786 = inttoptr i64 %785 to i64*

  %787 = load i64, i64* %786

  %788 = add i64 %768, 24

  %789 = inttoptr i64 %788 to i64*

  %790 = load i64, i64* %789

  %791 = add i64 %768, 32

  %792 = inttoptr i64 %791 to i64*

  %793 = load i64, i64* %792

  %794 = add i64 %768, 40

  %795 = inttoptr i64 %794 to i64*

  %796 = load i64, i64* %795

  %797 = add i64 %768, 48

  %798 = inttoptr i64 %797 to i64*

  %799 = load i64, i64* %798

  %800 = add i64 %768, 56

  %801 = inttoptr i64 %800 to i64*

  %802 = load i64, i64* %801

  %803 = add i64 %768, 64

  %804 = inttoptr i64 %803 to i64*

  %805 = load i64, i64* %804

  %806 = add i64 %768, 72

  %807 = inttoptr i64 %806 to i64*

  %808 = load i64, i64* %807

  %809 = inttoptr i64 %773 to i64*

  %810 = load i64, i64* %809

  store i64 %810, i64* %3, align 8, !alias.scope !1566, !noalias !1569

  store i64 %768, i64* %26, align 8, !alias.scope !1566, !noalias !1569

  %811 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 235), i64 4294967295), i64 %775, i64 %776, i64 %777, i64 %778, i64 %779, i64 %781, i64 %784, i64 %787, i64 %790, i64 %793, i64 %796, i64 %799, i64 %802, i64 %805, i64 %808)

  %812 = load i64, i64* %3, align 8

  %813 = load i64, i64* %26, align 8

  %814 = add i64 %813, 56

  %815 = inttoptr i64 %814 to i64*

  %816 = load i64, i64* %815

  %817 = add i64 %812, 17

  %818 = add i64 %813, -8

  %819 = inttoptr i64 %818 to i64*

  store i64 %817, i64* %819

  %820 = load i64, i64* %133, align 8, !alias.scope !1571, !noalias !1574

  %821 = load i64, i64* %132, align 8, !alias.scope !1571, !noalias !1574

  %822 = load i64, i64* %135, align 8, !alias.scope !1571, !noalias !1574

  %823 = load i64, i64* %136, align 8, !alias.scope !1571, !noalias !1574

  %824 = inttoptr i64 %813 to i64*

  %825 = load i64, i64* %824

  %826 = add i64 %813, 8

  %827 = inttoptr i64 %826 to i64*

  %828 = load i64, i64* %827

  %829 = add i64 %813, 16

  %830 = inttoptr i64 %829 to i64*

  %831 = load i64, i64* %830

  %832 = add i64 %813, 24

  %833 = inttoptr i64 %832 to i64*

  %834 = load i64, i64* %833

  %835 = add i64 %813, 32

  %836 = inttoptr i64 %835 to i64*

  %837 = load i64, i64* %836

  %838 = add i64 %813, 40

  %839 = inttoptr i64 %838 to i64*

  %840 = load i64, i64* %839

  %841 = add i64 %813, 48

  %842 = inttoptr i64 %841 to i64*

  %843 = load i64, i64* %842

  %844 = add i64 %813, 56

  %845 = inttoptr i64 %844 to i64*

  %846 = load i64, i64* %845

  %847 = add i64 %813, 64

  %848 = inttoptr i64 %847 to i64*

  %849 = load i64, i64* %848

  %850 = add i64 %813, 72

  %851 = inttoptr i64 %850 to i64*

  %852 = load i64, i64* %851

  %853 = inttoptr i64 %818 to i64*

  %854 = load i64, i64* %853

  store i64 %854, i64* %3, align 8, !alias.scope !1571, !noalias !1574

  store i64 %813, i64* %26, align 8, !alias.scope !1571, !noalias !1574

  %855 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 274), i64 4294967295), i64 %816, i64 %820, i64 %821, i64 %822, i64 %823, i64 %825, i64 %828, i64 %831, i64 %834, i64 %837, i64 %840, i64 %843, i64 %846, i64 %849, i64 %852), !noalias !1571

  %856 = load i64, i64* %26, align 8

  %857 = add i64 %856, 20

  %858 = load i64, i64* %3, align 8

  %859 = add i64 %858, 5

  %860 = inttoptr i64 %857 to i32*

  %861 = load i32, i32* %860

  %862 = icmp eq i32 %861, 0

  %863 = lshr i32 %861, 31

  %864 = trunc i32 %863 to i8

  %865 = icmp ne i8 %864, 0

  %866 = select i1 %865, i64 11, i64 2

  %867 = add i64 %859, %866

  %868 = icmp eq i8 %864, 1

  br i1 %868, label %block_4008d0, label %block_4008c7



block_40083a:                                     ; preds = %block_400760

  %869 = load i32, i32* %19, align 4

  %870 = sext i32 %869 to i64

  %871 = load i32, i32* %5, align 4

  %872 = icmp eq i32 %871, 0

  %873 = sext i32 %871 to i64

  %874 = select i1 %872, i64 1, i64 %873

  %875 = mul nsw i64 %870, %874

  %876 = add i64 %219, 33

  %877 = load i64, i64* %26, align 8, !tbaa !1240

  %878 = add i64 %877, -8

  %879 = inttoptr i64 %878 to i64*

  store i64 %876, i64* %879

  %880 = load i64, i64* %133, align 8, !alias.scope !1576, !noalias !1579

  %881 = load i64, i64* %135, align 8, !alias.scope !1576, !noalias !1579

  %882 = load i64, i64* %136, align 8, !alias.scope !1576, !noalias !1579

  %883 = inttoptr i64 %877 to i64*

  %884 = load i64, i64* %883

  %885 = add i64 %877, 8

  %886 = inttoptr i64 %885 to i64*

  %887 = load i64, i64* %886

  %888 = add i64 %877, 16

  %889 = inttoptr i64 %888 to i64*

  %890 = load i64, i64* %889

  %891 = add i64 %877, 24

  %892 = inttoptr i64 %891 to i64*

  %893 = load i64, i64* %892

  %894 = add i64 %877, 32

  %895 = inttoptr i64 %894 to i64*

  %896 = load i64, i64* %895

  %897 = add i64 %877, 40

  %898 = inttoptr i64 %897 to i64*

  %899 = load i64, i64* %898

  %900 = add i64 %877, 48

  %901 = inttoptr i64 %900 to i64*

  %902 = load i64, i64* %901

  %903 = add i64 %877, 56

  %904 = inttoptr i64 %903 to i64*

  %905 = load i64, i64* %904

  %906 = add i64 %877, 64

  %907 = inttoptr i64 %906 to i64*

  %908 = load i64, i64* %907

  %909 = add i64 %877, 72

  %910 = inttoptr i64 %909 to i64*

  %911 = load i64, i64* %910

  %912 = inttoptr i64 %878 to i64*

  %913 = load i64, i64* %912

  store i64 %913, i64* %3, align 8, !alias.scope !1576, !noalias !1579

  store i64 %877, i64* %26, align 8, !alias.scope !1576, !noalias !1579

  %914 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 77), i64 4294967295), i64 %875, i64 %880, i64 %873, i64 %881, i64 %882, i64 %884, i64 %887, i64 %890, i64 %893, i64 %896, i64 %899, i64 %902, i64 %905, i64 %908, i64 %911), !noalias !1576

  %915 = load i64, i64* %3, align 8

  br label %block_40085b



block_4008c9:                                     ; preds = %block_4008c7

  %916 = add i64 %918, 19

  br label %block_4008dc



block_4008c7:                                     ; preds = %block_40085b

  %917 = select i1 %862, i64 16, i64 2

  %918 = add i64 %867, %917

  %919 = add i64 %918, 5

  br i1 %862, label %block_4008d7, label %block_4008c9



block_400825:                                     ; preds = %block_400760

  %920 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %921 = load i32, i32* %19, align 4

  %922 = zext i32 %921 to i64

  %923 = load i32, i32* %5, align 4

  %924 = zext i32 %923 to i64

  store i64 %924, i64* %920, align 8, !tbaa !1240

  %925 = zext i32 %215 to i64

  %926 = add i64 %219, 19

  %927 = load i64, i64* %26, align 8, !tbaa !1240

  %928 = add i64 %927, -8

  %929 = inttoptr i64 %928 to i64*

  store i64 %926, i64* %929

  %930 = load i64, i64* %135, align 8, !alias.scope !1581, !noalias !1584

  %931 = load i64, i64* %136, align 8, !alias.scope !1581, !noalias !1584

  %932 = inttoptr i64 %927 to i64*

  %933 = load i64, i64* %932

  %934 = add i64 %927, 8

  %935 = inttoptr i64 %934 to i64*

  %936 = load i64, i64* %935

  %937 = add i64 %927, 16

  %938 = inttoptr i64 %937 to i64*

  %939 = load i64, i64* %938

  %940 = add i64 %927, 24

  %941 = inttoptr i64 %940 to i64*

  %942 = load i64, i64* %941

  %943 = add i64 %927, 32

  %944 = inttoptr i64 %943 to i64*

  %945 = load i64, i64* %944

  %946 = add i64 %927, 40

  %947 = inttoptr i64 %946 to i64*

  %948 = load i64, i64* %947

  %949 = add i64 %927, 48

  %950 = inttoptr i64 %949 to i64*

  %951 = load i64, i64* %950

  %952 = add i64 %927, 56

  %953 = inttoptr i64 %952 to i64*

  %954 = load i64, i64* %953

  %955 = add i64 %927, 64

  %956 = inttoptr i64 %955 to i64*

  %957 = load i64, i64* %956

  %958 = add i64 %927, 72

  %959 = inttoptr i64 %958 to i64*

  %960 = load i64, i64* %959

  %961 = inttoptr i64 %928 to i64*

  %962 = load i64, i64* %961

  store i64 %962, i64* %3, align 8, !alias.scope !1581, !noalias !1584

  store i64 %927, i64* %26, align 8, !alias.scope !1581, !noalias !1584

  %963 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 115), i64 4294967295), i64 %922, i64 %924, i64 %925, i64 %930, i64 %931, i64 %933, i64 %936, i64 %939, i64 %942, i64 %945, i64 %948, i64 %951, i64 %954, i64 %957, i64 %960), !noalias !1581

  %964 = load i64, i64* %3, align 8

  %965 = add i64 %964, 35

  br label %block_40085b

}



; Function Attrs: noinline

define %struct.Memory* @sub_401ef0_wtime_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401ef0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %12 = load i64, i64* %5, align 8

  %13 = load i64, i64* %9, align 8, !tbaa !1240

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  %16 = add i64 %13, -24

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = load i64, i64* %8, align 8

  store i64 %23, i64* %5, align 8, !tbaa !1240

  store i64 %16, i64* %8, align 8, !tbaa !1240

  store i64 0, i64* %7, align 8, !tbaa !1240

  %24 = add i64 %1, 18

  %25 = add i64 %13, -32

  %26 = inttoptr i64 %25 to i64*

  store i64 %24, i64* %26

  %27 = tail call i64 @gettimeofday(i64 %16, i64 0), !noalias !1586

  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  %29 = inttoptr i64 %16 to i64*

  %30 = load i64, i64* %29

  %31 = lshr i32 %28, 31

  %32 = trunc i32 %31 to i8

  %33 = icmp eq i8 %32, 0

  %34 = trunc i64 %30 to i32

  br i1 %33, label %block_401f18, label %block_401f10



block_401f10:                                     ; preds = %block_401ef0

  store i32 %34, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  br label %block_401f18



block_401f18:                                     ; preds = %block_401f10, %block_401ef0

  %35 = phi i32 [ %28, %block_401ef0 ], [ %34, %block_401f10 ]

  %36 = phi %struct.Memory* [ %2, %block_401ef0 ], [ %2, %block_401f10 ]

  %37 = sext i32 %35 to i64

  store i64 %37, i64* %6, align 8, !tbaa !1240

  %38 = sub i64 %30, %37

  store i64 %38, i64* %4, align 8, !tbaa !1240

  %39 = sitofp i64 %38 to double

  %40 = bitcast [32 x %union.VectorReg]* %10 to double*

  store double %39, double* %40, align 1, !tbaa !1293

  %41 = add i64 %13, -16

  %42 = inttoptr i64 %41 to i64*

  %43 = load i64, i64* %42

  %44 = sitofp i64 %43 to double

  %45 = bitcast %union.VectorReg* %11 to double*

  %46 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1568) to double*)

  %47 = fmul double %44, %46

  %48 = fadd double %47, %39

  store double %48, double* %45, align 1, !tbaa !1293

  %49 = load i64, i64* %5, align 8

  %50 = inttoptr i64 %49 to double*

  store double %48, double* %50

  %51 = add i64 %13, -8

  %52 = icmp ugt i64 %16, -17

  %53 = zext i1 %52 to i8

  store i8 %53, i8* %17, align 1, !tbaa !1244

  %54 = trunc i64 %51 to i32

  %55 = and i32 %54, 255

  %56 = tail call i32 @llvm.ctpop.i32(i32 %55) #10

  %57 = trunc i32 %56 to i8

  %58 = and i8 %57, 1

  %59 = xor i8 %58, 1

  store i8 %59, i8* %18, align 1, !tbaa !1258

  %60 = xor i64 %16, 16

  %61 = xor i64 %60, %51

  %62 = lshr i64 %61, 4

  %63 = trunc i64 %62 to i8

  %64 = and i8 %63, 1

  store i8 %64, i8* %19, align 1, !tbaa !1262

  %65 = icmp eq i64 %51, 0

  %66 = zext i1 %65 to i8

  store i8 %66, i8* %20, align 1, !tbaa !1259

  %67 = lshr i64 %51, 63

  %68 = trunc i64 %67 to i8

  store i8 %68, i8* %21, align 1, !tbaa !1260

  %69 = lshr i64 %16, 63

  %70 = xor i64 %67, %69

  %71 = add nuw nsw i64 %70, %67

  %72 = icmp eq i64 %71, 2

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %22, align 1, !tbaa !1261

  %74 = inttoptr i64 %51 to i64*

  %75 = load i64, i64* %74

  store i64 %75, i64* %5, align 8, !tbaa !1240

  %76 = inttoptr i64 %13 to i64*

  %77 = load i64, i64* %76

  store i64 %77, i64* %3, align 8, !tbaa !1240

  %78 = add i64 %13, 8

  store i64 %78, i64* %9, align 8, !tbaa !1240

  ret %struct.Memory* %36

}



; Function Attrs: noinline

define %struct.Memory* @sub_4005d0(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_4005d0:

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

  %10 = icmp eq i64 %9, 4195804

  br i1 %10, label %block_4005dc, label %17



block_4005dc:                                     ; preds = %block_4005d0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %13 = load i64, i64* %12, align 8, !alias.scope !1589, !noalias !1592

  %14 = inttoptr i64 %7 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %3, align 8, !alias.scope !1589, !noalias !1592

  store i64 %6, i64* %5, align 8, !alias.scope !1589, !noalias !1592

  %16 = tail call i64 @free(i64 %13), !noalias !1589

  store i64 %16, i64* %11, align 8, !alias.scope !1589, !noalias !1592

  ret %struct.Memory* %2



; <label>:17:                                     ; preds = %block_4005d0

  %18 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %18

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401fb0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401fb0:

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

define %struct.Memory* @sub_400aa0_deallocate_arrays(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400aa0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %6 = load i64, i64* %4, align 8

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = load i64, i64* %7, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %6, i64* %10

  %11 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %12 = add i64 %1, 13

  %13 = add i64 %8, -16

  %14 = inttoptr i64 %13 to i64*

  store i64 %12, i64* %14

  %15 = inttoptr i64 %13 to i64*

  %16 = load i64, i64* %15

  %17 = tail call i64 @free(i64 %11), !noalias !1594

  %18 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %19 = add i64 %16, 12

  %20 = add i64 %8, -16

  %21 = inttoptr i64 %20 to i64*

  store i64 %19, i64* %21

  %22 = inttoptr i64 %20 to i64*

  %23 = load i64, i64* %22

  %24 = tail call i64 @free(i64 %18), !noalias !1597

  %25 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %26 = add i64 %23, 12

  %27 = add i64 %8, -16

  %28 = inttoptr i64 %27 to i64*

  store i64 %26, i64* %28

  %29 = tail call i64 @free(i64 %25), !noalias !1600

  %30 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %30, i64* %5, align 8, !tbaa !1240

  %31 = inttoptr i64 %8 to i64*

  %32 = load i64, i64* %31

  store i64 %32, i64* %3, align 8, !alias.scope !1603, !noalias !1606

  %33 = add i64 %8, 8

  store i64 %33, i64* %7, align 8, !alias.scope !1603, !noalias !1606

  %34 = tail call i64 @free(i64 %30), !noalias !1603

  store i64 %34, i64* %4, align 8, !alias.scope !1603, !noalias !1606

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401f40___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401f40:

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

  store i64 ptrtoint (%seg_602e10__init_array_type* @seg_602e10__init_array to i64), i64* %14, align 8, !tbaa !1240

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

  store i64 ashr (i64 sub (i64 add (i64 ptrtoint (%seg_602e10__init_array_type* @seg_602e10__init_array to i64), i64 8), i64 ptrtoint (%seg_602e10__init_array_type* @seg_602e10__init_array to i64)), i64 3), i64* %13, align 8, !tbaa !1240

  %47 = add i64 %1, -6536

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_4005b8__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_401f96, label %block_401f76



block_401f96.loopexit:                            ; preds = %block_401f80

  br label %block_401f96



block_401f96:                                     ; preds = %block_401f96.loopexit, %block_401f40

  %57 = phi %struct.Memory* [ %51, %block_401f40 ], [ %119, %block_401f96.loopexit ]

  %58 = load i64, i64* %12, align 8

  %59 = add i64 %58, 8

  %60 = icmp ugt i64 %58, -9

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %41, align 1, !tbaa !1244

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #10

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



block_401f76:                                     ; preds = %block_401f40

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1259

  store i8 0, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  store i8 0, i8* %43, align 1, !tbaa !1262

  %102 = add i64 %56, 10

  br label %block_401f80



block_401f80:                                     ; preds = %block_401f80, %block_401f76

  %103 = phi i64 [ 0, %block_401f76 ], [ %122, %block_401f80 ]

  %104 = phi i64 [ %102, %block_401f76 ], [ %150, %block_401f80 ]

  %105 = phi %struct.Memory* [ %51, %block_401f76 ], [ %119, %block_401f80 ]

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

  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #10

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

  br i1 %139, label %block_401f96.loopexit, label %block_401f80

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400750_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400750:

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

  %12 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400a40_timer_read(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_400a40:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0

  %8 = load i32, i32* %5, align 4

  %9 = sext i32 %8 to i64

  store i64 %9, i64* %6, align 8, !tbaa !1240

  %10 = shl nsw i64 %9, 3

  %11 = add i64 %10, add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 16)

  %12 = inttoptr i64 %11 to double*

  %13 = load double, double* %12

  %14 = bitcast %union.VectorReg* %7 to double*

  store double %13, double* %14, align 1, !tbaa !1293

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %16 = bitcast i64* %15 to double*

  store double 0.000000e+00, double* %16, align 1, !tbaa !1293

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %18 = load i64, i64* %17, align 8, !tbaa !1240

  %19 = inttoptr i64 %18 to i64*

  %20 = load i64, i64* %19

  store i64 %20, i64* %3, align 8, !tbaa !1240

  %21 = add i64 %18, 8

  store i64 %21, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_401310_rank(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401310:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %13 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %16 = load i64, i64* %14, align 8

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %18 = load i64, i64* %17, align 8, !tbaa !1240

  %19 = add i64 %18, -8

  %20 = inttoptr i64 %19 to i64*

  store i64 %16, i64* %20

  %21 = load i64, i64* %15, align 8

  %22 = add i64 %18, -16

  %23 = inttoptr i64 %22 to i64*

  store i64 %21, i64* %23

  %24 = load i64, i64* %9, align 8

  %25 = add i64 %18, -24

  %26 = inttoptr i64 %25 to i64*

  store i64 %24, i64* %26

  store i64 %25, i64* %17, align 8, !tbaa !1240

  %27 = load i32, i32* %5, align 4

  %28 = zext i32 %27 to i64

  store i64 %28, i64* %15, align 8, !tbaa !1240

  %29 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %29, i64* %9, align 8, !tbaa !1240

  %30 = sext i32 %27 to i64

  %31 = shl nsw i64 %30, 2

  %32 = add i64 %31, %29

  %33 = inttoptr i64 %32 to i32*

  store i32 %27, i32* %33

  %34 = sub i32 2097152, %27

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %41 = add i64 %29, 40

  %42 = add i64 %41, %31

  %43 = inttoptr i64 %42 to i32*

  store i32 %34, i32* %43

  %44 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %45 = load i32, i32* bitcast (%test_index_array_type* @test_index_array to i32*)

  %46 = sext i32 %45 to i64

  %47 = shl nsw i64 %46, 2

  %48 = add i64 %47, %29

  %49 = inttoptr i64 %48 to i32*

  %50 = load i32, i32* %49

  %51 = inttoptr i64 %44 to i32*

  store i32 %50, i32* %51

  %52 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 4) to i32*)

  %53 = sext i32 %52 to i64

  %54 = shl nsw i64 %53, 2

  %55 = add i64 %54, %29

  %56 = inttoptr i64 %55 to i32*

  %57 = load i32, i32* %56

  %58 = add i64 %44, 4

  %59 = inttoptr i64 %58 to i32*

  store i32 %57, i32* %59

  %60 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 8) to i32*)

  %61 = sext i32 %60 to i64

  %62 = shl nsw i64 %61, 2

  %63 = add i64 %62, %29

  %64 = inttoptr i64 %63 to i32*

  %65 = load i32, i32* %64

  %66 = add i64 %44, 8

  %67 = inttoptr i64 %66 to i32*

  store i32 %65, i32* %67

  %68 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 12) to i32*)

  %69 = sext i32 %68 to i64

  %70 = load i64, i64* %9, align 8

  %71 = shl nsw i64 %69, 2

  %72 = add i64 %71, %70

  %73 = inttoptr i64 %72 to i32*

  %74 = load i32, i32* %73

  %75 = add i64 %44, 12

  %76 = inttoptr i64 %75 to i32*

  store i32 %74, i32* %76

  %77 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 16) to i32*)

  %78 = sext i32 %77 to i64

  %79 = shl nsw i64 %78, 2

  %80 = add i64 %79, %70

  %81 = inttoptr i64 %80 to i32*

  %82 = load i32, i32* %81

  %83 = add i64 %44, 16

  %84 = inttoptr i64 %83 to i32*

  store i32 %82, i32* %84

  %85 = add i64 %1, 119

  %86 = load i64, i64* %17, align 8, !tbaa !1240

  %87 = add i64 %86, -8

  %88 = inttoptr i64 %87 to i64*

  store i64 %85, i64* %88

  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %90 = inttoptr i64 %87 to i64*

  %91 = load i64, i64* %90

  store i64 %91, i64* %3, align 8, !alias.scope !1608, !noalias !1611

  store i64 %86, i64* %17, align 8, !alias.scope !1608, !noalias !1611

  %92 = tail call i64 @memset(i64 and (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 4294967295), i64 0, i64 4096), !noalias !1608

  %93 = load i64, i64* %3, align 8

  %94 = load i64, i64* %9, align 8

  %95 = add i64 %94, 134217728

  %96 = add i64 %94, 134217732

  br label %block_401390



block_40157c:                                     ; preds = %block_4016ba, %block_40156b, %block_4016a0

  %97 = phi %struct.Memory* [ %195, %block_40156b ], [ %642, %block_4016ba ], [ %642, %block_4016a0 ]

  %98 = load i32, i32* %7, align 4

  %99 = add i32 %98, -10

  %100 = icmp ult i32 %98, 10

  %101 = zext i1 %100 to i8

  store i8 %101, i8* %35, align 1, !tbaa !1244

  %102 = and i32 %99, 255

  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #10

  %104 = trunc i32 %103 to i8

  %105 = and i8 %104, 1

  %106 = xor i8 %105, 1

  store i8 %106, i8* %36, align 1, !tbaa !1258

  %107 = xor i32 %99, %98

  %108 = lshr i32 %107, 4

  %109 = trunc i32 %108 to i8

  %110 = and i8 %109, 1

  store i8 %110, i8* %37, align 1, !tbaa !1262

  %111 = icmp eq i32 %99, 0

  %112 = zext i1 %111 to i8

  store i8 %112, i8* %38, align 1, !tbaa !1259

  %113 = lshr i32 %99, 31

  %114 = trunc i32 %113 to i8

  store i8 %114, i8* %39, align 1, !tbaa !1260

  %115 = lshr i32 %98, 31

  %116 = xor i32 %113, %115

  %117 = add nuw nsw i32 %116, %115

  %118 = icmp eq i32 %117, 2

  %119 = zext i1 %118 to i8

  store i8 %119, i8* %40, align 1, !tbaa !1261

  br i1 %111, label %block_401727, label %block_401586



block_401660:                                     ; preds = %block_401647

  %120 = add i64 %302, 47

  br label %block_40168f



block_4016a0:                                     ; preds = %block_40168f

  %121 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %122 = add i32 %121, 1

  store i32 %122, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %123 = load i64, i64* %8, align 8

  %124 = add i64 %123, 16

  %125 = inttoptr i64 %124 to i32*

  %126 = load i32, i32* %125

  %127 = add i32 %126, -1

  %128 = zext i32 %127 to i64

  store i64 %128, i64* %8, align 8, !tbaa !1240

  %129 = add i32 %126, -33554431

  %130 = icmp ult i32 %127, 33554430

  %131 = icmp eq i32 %129, 0

  %132 = or i1 %131, %130

  %133 = select i1 %132, i64 24, i64 -292

  %134 = add i64 %656, %133

  br i1 %132, label %block_4016b8, label %block_40157c



block_4016f6:                                     ; preds = %block_4016e6

  %135 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %136 = add i32 %135, 1

  store i32 %136, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %137 = add i32 %309, -10

  %138 = icmp ult i32 %309, 10

  %139 = zext i1 %138 to i8

  store i8 %139, i8* %35, align 1, !tbaa !1244

  %140 = and i32 %137, 255

  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #10

  %142 = trunc i32 %141 to i8

  %143 = and i8 %142, 1

  %144 = xor i8 %143, 1

  store i8 %144, i8* %36, align 1, !tbaa !1258

  %145 = xor i32 %137, %309

  %146 = lshr i32 %145, 4

  %147 = trunc i32 %146 to i8

  %148 = and i8 %147, 1

  store i8 %148, i8* %37, align 1, !tbaa !1262

  %149 = icmp eq i32 %137, 0

  %150 = zext i1 %149 to i8

  store i8 %150, i8* %38, align 1, !tbaa !1259

  %151 = lshr i32 %137, 31

  %152 = trunc i32 %151 to i8

  store i8 %152, i8* %39, align 1, !tbaa !1260

  %153 = xor i32 %151, %312

  %154 = add nuw nsw i32 %153, %312

  %155 = icmp eq i32 %154, 2

  %156 = zext i1 %155 to i8

  store i8 %156, i8* %40, align 1, !tbaa !1261

  br i1 %149, label %block_401707, label %block_401586



block_4014f2:                                     ; preds = %block_4014c6, %block_4014e0

  %157 = phi i64 [ -2097148, %block_4014c6 ], [ %258, %block_4014e0 ]

  %158 = phi i32 [ %382, %block_4014c6 ], [ %255, %block_4014e0 ]

  %159 = phi i64 [ %383, %block_4014c6 ], [ %257, %block_4014e0 ]

  %160 = phi %struct.Memory* [ %208, %block_4014c6 ], [ %160, %block_4014e0 ]

  %161 = shl i64 %157, 2

  %162 = add i64 %384, %161

  %163 = inttoptr i64 %162 to i32*

  %164 = load i32, i32* %163

  %165 = add i32 %164, %158

  %166 = inttoptr i64 %162 to i32*

  store i32 %165, i32* %166

  %167 = add i64 %385, %161

  %168 = inttoptr i64 %167 to i32*

  %169 = load i32, i32* %168

  %170 = add i32 %169, %165

  %171 = inttoptr i64 %167 to i32*

  store i32 %170, i32* %171

  %172 = add i64 %386, %161

  %173 = inttoptr i64 %172 to i32*

  %174 = load i32, i32* %173

  %175 = add i32 %174, %170

  %176 = inttoptr i64 %172 to i32*

  store i32 %175, i32* %176

  %177 = icmp eq i64 %157, 0

  %178 = select i1 %177, i64 47, i64 -18

  %179 = add i64 %159, %178

  br i1 %177, label %block_401521, label %block_4014e0



block_4015ee:                                     ; preds = %block_4015dd

  %180 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %181 = add i32 %180, 1

  store i32 %181, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %182 = load i64, i64* %8, align 8

  %183 = add i64 %182, 8

  %184 = inttoptr i64 %183 to i32*

  %185 = load i32, i32* %184

  %186 = add i32 %185, -1

  %187 = add i32 %185, -33554431

  %188 = icmp ult i32 %186, 33554430

  %189 = icmp eq i32 %187, 0

  %190 = or i1 %189, %188

  %191 = select i1 %190, i64 25, i64 -149

  %192 = add i64 %275, %191

  br i1 %190, label %block_401607, label %block_401559



block_40156b:                                     ; preds = %block_401662, %block_401647.block_40156b_crit_edge, %block_401559

  %193 = phi i64 [ %564, %block_401662 ], [ %302, %block_401647.block_40156b_crit_edge ], [ %289, %block_401559 ]

  %194 = phi i64 [ %553, %block_401662 ], [ %303, %block_401647.block_40156b_crit_edge ], [ %277, %block_401559 ]

  %195 = phi %struct.Memory* [ %348, %block_401662 ], [ %348, %block_401647.block_40156b_crit_edge ], [ %278, %block_401559 ]

  %196 = add i64 %194, 16

  %197 = inttoptr i64 %196 to i32*

  %198 = load i32, i32* %197

  %199 = add i32 %198, -1

  %200 = zext i32 %199 to i64

  store i64 %200, i64* %8, align 8, !tbaa !1240

  %201 = add i32 %198, -33554431

  %202 = icmp ult i32 %199, 33554430

  %203 = icmp eq i32 %201, 0

  %204 = or i1 %203, %202

  %205 = select i1 %204, i64 379, i64 17

  %206 = add i64 %193, %205

  br i1 %204, label %block_4016e6, label %block_40157c



block_401490:                                     ; preds = %block_401470, %block_401490

  %207 = phi i64 [ -33554432, %block_401470 ], [ %250, %block_401490 ]

  %208 = phi %struct.Memory* [ %427, %block_401470 ], [ %208, %block_401490 ]

  %209 = shl i64 %207, 2

  %210 = add i64 %376, %209

  %211 = inttoptr i64 %210 to i32*

  %212 = load i32, i32* %211

  %213 = sext i32 %212 to i64

  %214 = shl nsw i64 %213, 2

  %215 = add i64 %214, %377

  %216 = inttoptr i64 %215 to i32*

  %217 = load i32, i32* %216

  %218 = add i32 %217, 1

  %219 = inttoptr i64 %215 to i32*

  store i32 %218, i32* %219

  %220 = add i64 %378, %209

  %221 = inttoptr i64 %220 to i32*

  %222 = load i32, i32* %221

  %223 = sext i32 %222 to i64

  %224 = shl nsw i64 %223, 2

  %225 = add i64 %224, %377

  %226 = inttoptr i64 %225 to i32*

  %227 = load i32, i32* %226

  %228 = add i32 %227, 1

  %229 = inttoptr i64 %225 to i32*

  store i32 %228, i32* %229

  %230 = add i64 %379, %209

  %231 = inttoptr i64 %230 to i32*

  %232 = load i32, i32* %231

  %233 = sext i32 %232 to i64

  %234 = shl nsw i64 %233, 2

  %235 = add i64 %234, %377

  %236 = inttoptr i64 %235 to i32*

  %237 = load i32, i32* %236

  %238 = add i32 %237, 1

  %239 = inttoptr i64 %235 to i32*

  store i32 %238, i32* %239

  %240 = add i64 %380, %209

  %241 = inttoptr i64 %240 to i32*

  %242 = load i32, i32* %241

  %243 = sext i32 %242 to i64

  %244 = shl nsw i64 %243, 2

  %245 = add i64 %244, %377

  %246 = inttoptr i64 %245 to i32*

  %247 = load i32, i32* %246

  %248 = add i32 %247, 1

  %249 = inttoptr i64 %245 to i32*

  store i32 %248, i32* %249

  %250 = add i64 %207, 4

  %251 = icmp eq i64 %250, 0

  br i1 %251, label %block_4014c6, label %block_401490



block_4014e0:                                     ; preds = %block_4014f2

  %252 = add i64 %387, %161

  %253 = inttoptr i64 %252 to i32*

  %254 = load i32, i32* %253

  %255 = add i32 %254, %175

  %256 = inttoptr i64 %252 to i32*

  store i32 %255, i32* %256

  %257 = add i64 %179, 18

  %258 = add i64 %157, 4

  br label %block_4014f2



block_4015dd:                                     ; preds = %block_4015b1, %block_4015b3, %block_401535

  %259 = phi i64 [ %707, %block_4015b3 ], [ %824, %block_4015b1 ], [ %572, %block_401535 ]

  %260 = phi i32 [ %704, %block_4015b3 ], [ %473, %block_4015b1 ], [ %569, %block_401535 ]

  %261 = phi %struct.Memory* [ %160, %block_4015b3 ], [ %160, %block_4015b1 ], [ %160, %block_401535 ]

  %262 = sext i32 %260 to i64

  %263 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4) to i32*)

  %264 = load i32, i32* %7, align 4

  %265 = add i32 %264, %263

  %266 = zext i32 %265 to i64

  store i64 %266, i64* %11, align 8, !tbaa !1240

  %267 = load i64, i64* %9, align 8

  %268 = shl nsw i64 %262, 2

  %269 = add i64 %268, %267

  %270 = inttoptr i64 %269 to i32*

  %271 = load i32, i32* %270

  %272 = sub i32 %271, %265

  %273 = icmp eq i32 %272, 0

  %274 = select i1 %273, i64 17, i64 44

  %275 = add i64 %259, %274

  br i1 %273, label %block_4015ee, label %block_401609



block_401559:                                     ; preds = %block_401609, %block_401547, %block_4015ee

  %276 = phi i64 [ %400, %block_401547 ], [ %760, %block_401609 ], [ %192, %block_4015ee ]

  %277 = phi i64 [ %388, %block_401547 ], [ %750, %block_401609 ], [ %182, %block_4015ee ]

  %278 = phi %struct.Memory* [ %390, %block_401547 ], [ %261, %block_401609 ], [ %261, %block_4015ee ]

  %279 = add i64 %277, 12

  %280 = inttoptr i64 %279 to i32*

  %281 = load i32, i32* %280

  %282 = add i32 %281, -1

  %283 = zext i32 %282 to i64

  store i64 %283, i64* %10, align 8, !tbaa !1240

  %284 = add i32 %281, -33554431

  %285 = icmp ult i32 %282, 33554430

  %286 = icmp eq i32 %284, 0

  %287 = or i1 %286, %285

  %288 = select i1 %287, i64 310, i64 18

  %289 = add i64 %276, %288

  br i1 %287, label %block_40168f, label %block_40156b



block_401707:                                     ; preds = %block_4016f6

  br label %block_401727



block_401647:                                     ; preds = %block_401636

  %290 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %291 = add i32 %290, 1

  store i32 %291, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %292 = add i64 %345, 12

  %293 = inttoptr i64 %292 to i32*

  %294 = load i32, i32* %293

  %295 = add i32 %294, -1

  %296 = zext i32 %295 to i64

  store i64 %296, i64* %10, align 8, !tbaa !1240

  %297 = add i32 %294, -33554431

  %298 = icmp ult i32 %295, 33554430

  %299 = icmp eq i32 %297, 0

  %300 = or i1 %299, %298

  %301 = select i1 %300, i64 25, i64 -220

  %302 = add i64 %362, %301

  br i1 %300, label %block_401660, label %block_401647.block_40156b_crit_edge



block_401647.block_40156b_crit_edge:              ; preds = %block_401647

  %303 = load i64, i64* %8, align 8

  br label %block_40156b



block_4016e6:                                     ; preds = %block_4016ba, %block_4016b8, %block_40156b

  %304 = phi i32 [ %199, %block_40156b ], [ %632, %block_4016ba ], [ %127, %block_4016b8 ]

  %305 = phi i64 [ %206, %block_40156b ], [ %639, %block_4016ba ], [ %565, %block_4016b8 ]

  %306 = phi %struct.Memory* [ %195, %block_40156b ], [ %642, %block_4016ba ], [ %642, %block_4016b8 ]

  %307 = sext i32 %304 to i64

  store i64 %307, i64* %8, align 8, !tbaa !1240

  %308 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 16) to i32*)

  %309 = load i32, i32* %7, align 4

  %310 = add i32 %309, %308

  %311 = zext i32 %310 to i64

  store i64 %311, i64* %10, align 8, !tbaa !1240

  %312 = lshr i32 %309, 31

  %313 = load i64, i64* %9, align 8

  %314 = shl nsw i64 %307, 2

  %315 = add i64 %314, %313

  %316 = inttoptr i64 %315 to i32*

  %317 = load i32, i32* %316

  %318 = sub i32 %317, %310

  %319 = icmp eq i32 %318, 0

  %320 = select i1 %319, i64 16, i64 35

  %321 = add i64 %305, %320

  br i1 %319, label %block_4016f6, label %block_401709



block_4013e0:                                     ; preds = %block_4013c0, %block_4013e0

  %322 = phi i32 [ 0, %block_4013c0 ], [ %340, %block_4013e0 ]

  %323 = phi i64 [ -4092, %block_4013c0 ], [ %343, %block_4013e0 ]

  %324 = phi %struct.Memory* [ %479, %block_4013c0 ], [ %324, %block_4013e0 ]

  %325 = add i64 %323, add (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 4092)

  %326 = inttoptr i64 %325 to i32*

  %327 = load i32, i32* %326

  %328 = add i32 %327, %322

  %329 = add i64 %323, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %330 = inttoptr i64 %329 to i32*

  store i32 %328, i32* %330

  %331 = add i64 %323, ptrtoint (%key_buff1_type* @key_buff1 to i64)

  %332 = inttoptr i64 %331 to i32*

  %333 = load i32, i32* %332

  %334 = add i32 %333, %328

  %335 = add i64 %323, add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4)

  %336 = inttoptr i64 %335 to i32*

  store i32 %334, i32* %336

  %337 = add i64 %323, add (i64 ptrtoint (%key_buff1_type* @key_buff1 to i64), i64 4)

  %338 = inttoptr i64 %337 to i32*

  %339 = load i32, i32* %338

  %340 = add i32 %339, %334

  %341 = add i64 %323, add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8)

  %342 = inttoptr i64 %341 to i32*

  store i32 %340, i32* %342

  %343 = add nsw i64 %323, 12

  %344 = icmp eq i64 %343, 0

  br i1 %344, label %block_40140a, label %block_4013e0



block_4013c0:                                     ; preds = %block_401390

  store i32 0, i32* bitcast (%bucket_ptrs_type* @bucket_ptrs to i32*)

  br label %block_4013e0



block_401636:                                     ; preds = %block_401607, %block_401609, %block_401547

  %345 = phi i64 [ %388, %block_401547 ], [ %750, %block_401609 ], [ %182, %block_401607 ]

  %346 = phi i64 [ %400, %block_401547 ], [ %760, %block_401609 ], [ %825, %block_401607 ]

  %347 = phi i32 [ %394, %block_401547 ], [ %754, %block_401609 ], [ %186, %block_401607 ]

  %348 = phi %struct.Memory* [ %390, %block_401547 ], [ %261, %block_401609 ], [ %261, %block_401607 ]

  %349 = sext i32 %347 to i64

  %350 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8) to i32*)

  %351 = load i32, i32* %7, align 4

  %352 = add i32 %351, %350

  %353 = zext i32 %352 to i64

  store i64 %353, i64* %11, align 8, !tbaa !1240

  %354 = load i64, i64* %9, align 8

  %355 = shl nsw i64 %349, 2

  %356 = add i64 %355, %354

  %357 = inttoptr i64 %356 to i32*

  %358 = load i32, i32* %357

  %359 = sub i32 %358, %352

  %360 = icmp eq i32 %359, 0

  %361 = select i1 %360, i64 17, i64 44

  %362 = add i64 %346, %361

  br i1 %360, label %block_401647, label %block_401662



block_401470:                                     ; preds = %block_401420

  %363 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  store i64 %363, i64* %9, align 8, !tbaa !1240

  %364 = zext i32 %458 to i64

  %365 = xor i64 %364, %459

  %366 = and i64 %365, 4294967295

  store i64 %366, i64* %12, align 8, !tbaa !1240

  store i64 8388608, i64* %11, align 8, !tbaa !1240

  store i64 %363, i64* %13, align 8, !tbaa !1240

  %367 = add i64 %93, 255

  %368 = load i64, i64* %17, align 8, !tbaa !1240

  %369 = add i64 %368, -8

  %370 = inttoptr i64 %369 to i64*

  store i64 %367, i64* %370

  %371 = inttoptr i64 %369 to i64*

  %372 = load i64, i64* %371

  store i64 %372, i64* %3, align 8, !alias.scope !1613, !noalias !1616

  store i64 %368, i64* %17, align 8, !alias.scope !1613, !noalias !1616

  %373 = tail call i64 @memset(i64 %363, i64 %366, i64 8388608), !noalias !1613

  %374 = load i64, i64* %3, align 8

  %375 = load i64, i64* %14, align 8

  %376 = add i64 %375, 134217728

  %377 = load i64, i64* %9, align 8

  %378 = add i64 %375, 134217732

  %379 = add i64 %375, 134217736

  %380 = add i64 %375, 134217740

  br label %block_401490



block_4014c6:                                     ; preds = %block_401490

  %381 = inttoptr i64 %377 to i32*

  %382 = load i32, i32* %381

  %383 = add i64 %374, 108

  %384 = add i64 %377, 8388596

  %385 = add i64 %377, 8388600

  %386 = add i64 %377, 8388604

  %387 = add i64 %377, 8388608

  br label %block_4014f2



block_401547:                                     ; preds = %block_4015b3, %block_401535, %block_40159c.block_401547_crit_edge

  %388 = phi i64 [ %700, %block_4015b3 ], [ %477, %block_40159c.block_401547_crit_edge ], [ %416, %block_401535 ]

  %389 = phi i64 [ %707, %block_4015b3 ], [ %476, %block_40159c.block_401547_crit_edge ], [ %572, %block_401535 ]

  %390 = phi %struct.Memory* [ %160, %block_4015b3 ], [ %160, %block_40159c.block_401547_crit_edge ], [ %160, %block_401535 ]

  %391 = add i64 %388, 8

  %392 = inttoptr i64 %391 to i32*

  %393 = load i32, i32* %392

  %394 = add i32 %393, -1

  %395 = add i32 %393, -33554431

  %396 = icmp ult i32 %394, 33554430

  %397 = icmp eq i32 %395, 0

  %398 = or i1 %397, %396

  %399 = select i1 %398, i64 239, i64 18

  %400 = add i64 %389, %399

  br i1 %398, label %block_401636, label %block_401559



block_401727:                                     ; preds = %block_401709, %block_401707, %block_40157c

  %401 = phi %struct.Memory* [ %306, %block_401709 ], [ %306, %block_401707 ], [ %97, %block_40157c ]

  %402 = load i64, i64* %9, align 8

  store i64 %402, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %403 = load i64, i64* %17, align 8, !tbaa !1240

  %404 = add i64 %403, 8

  %405 = inttoptr i64 %403 to i64*

  %406 = load i64, i64* %405

  store i64 %406, i64* %9, align 8, !tbaa !1240

  %407 = add i64 %403, 16

  %408 = inttoptr i64 %404 to i64*

  %409 = load i64, i64* %408

  store i64 %409, i64* %15, align 8, !tbaa !1240

  %410 = add i64 %403, 24

  %411 = inttoptr i64 %407 to i64*

  %412 = load i64, i64* %411

  store i64 %412, i64* %14, align 8, !tbaa !1240

  %413 = inttoptr i64 %410 to i64*

  %414 = load i64, i64* %413

  store i64 %414, i64* %3, align 8, !tbaa !1240

  %415 = add i64 %403, 32

  store i64 %415, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %401



block_401521:                                     ; preds = %block_4014f2

  %416 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %416, i64* %8, align 8, !tbaa !1240

  %417 = inttoptr i64 %416 to i32*

  %418 = load i32, i32* %417

  %419 = add i32 %418, -1

  %420 = add i32 %418, -33554431

  %421 = icmp ult i32 %419, 33554430

  %422 = icmp eq i32 %420, 0

  %423 = or i1 %422, %421

  %424 = select i1 %423, i64 106, i64 20

  %425 = add i64 %179, %424

  br i1 %423, label %block_40158b, label %block_401535



block_401420:                                     ; preds = %block_40140a, %block_401420

  %426 = phi i64 [ -33554432, %block_40140a ], [ %466, %block_401420 ]

  %427 = phi %struct.Memory* [ %324, %block_40140a ], [ %427, %block_401420 ]

  %428 = shl i64 %426, 2

  %429 = add i64 %95, %428

  %430 = inttoptr i64 %429 to i32*

  %431 = load i32, i32* %430

  %432 = zext i32 %431 to i64

  %433 = shl nuw i64 %432, 32

  %434 = ashr i64 %433, 42

  %435 = lshr i64 %434, 1

  %436 = shl i64 %435, 32

  %437 = ashr exact i64 %436, 30

  %438 = add i64 %437, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %439 = inttoptr i64 %438 to i32*

  %440 = load i32, i32* %439

  %441 = sext i32 %440 to i64

  %442 = add i32 %440, 1

  %443 = inttoptr i64 %438 to i32*

  store i32 %442, i32* %443

  %444 = shl nsw i64 %441, 2

  %445 = add i64 %444, %657

  %446 = inttoptr i64 %445 to i32*

  store i32 %431, i32* %446

  %447 = add i64 %96, %428

  %448 = inttoptr i64 %447 to i32*

  %449 = load i32, i32* %448

  %450 = zext i32 %449 to i64

  %451 = shl nuw i64 %450, 32

  %452 = ashr i64 %451, 42

  %453 = lshr i64 %452, 1

  %454 = shl i64 %453, 32

  %455 = ashr exact i64 %454, 30

  %456 = add i64 %455, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %457 = inttoptr i64 %456 to i32*

  %458 = load i32, i32* %457

  %459 = sext i32 %458 to i64

  %460 = add nsw i64 %459, 1

  %461 = trunc i64 %460 to i32

  %462 = inttoptr i64 %456 to i32*

  store i32 %461, i32* %462

  %463 = shl nsw i64 %459, 2

  %464 = add i64 %463, %657

  %465 = inttoptr i64 %464 to i32*

  store i32 %449, i32* %465

  %466 = add i64 %426, 2

  %467 = icmp eq i64 %466, 0

  br i1 %467, label %block_401470, label %block_401420



block_40159c:                                     ; preds = %block_40158b

  %468 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %469 = add i32 %468, 1

  store i32 %469, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %470 = add i64 %416, 4

  %471 = inttoptr i64 %470 to i32*

  %472 = load i32, i32* %471

  %473 = add i32 %472, -1

  %474 = icmp ult i32 %473, 33554431

  %475 = select i1 %474, i64 21, i64 -85

  %476 = add i64 %585, %475

  br i1 %474, label %block_4015b1, label %block_40159c.block_401547_crit_edge



block_40159c.block_401547_crit_edge:              ; preds = %block_40159c

  %477 = load i64, i64* %8, align 8

  br label %block_401547



block_401390:                                     ; preds = %block_401390, %block_401310

  %478 = phi i64 [ -33554432, %block_401310 ], [ %509, %block_401390 ]

  %479 = phi %struct.Memory* [ %2, %block_401310 ], [ %479, %block_401390 ]

  %480 = shl i64 %478, 2

  %481 = add i64 %95, %480

  %482 = inttoptr i64 %481 to i32*

  %483 = load i32, i32* %482

  %484 = zext i32 %483 to i64

  %485 = shl nuw i64 %484, 32

  %486 = ashr i64 %485, 42

  %487 = lshr i64 %486, 1

  %488 = shl i64 %487, 32

  %489 = ashr exact i64 %488, 30

  %490 = add i64 %489, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %491 = inttoptr i64 %490 to i32*

  %492 = load i32, i32* %491

  %493 = add i32 %492, 1

  %494 = inttoptr i64 %490 to i32*

  store i32 %493, i32* %494

  %495 = add i64 %96, %480

  %496 = inttoptr i64 %495 to i32*

  %497 = load i32, i32* %496

  %498 = zext i32 %497 to i64

  %499 = shl nuw i64 %498, 32

  %500 = ashr i64 %499, 42

  %501 = lshr i64 %500, 1

  %502 = shl i64 %501, 32

  %503 = ashr exact i64 %502, 30

  %504 = add i64 %503, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %505 = inttoptr i64 %504 to i32*

  %506 = load i32, i32* %505

  %507 = add i32 %506, 1

  %508 = inttoptr i64 %504 to i32*

  store i32 %507, i32* %508

  %509 = add nsw i64 %478, 2

  %510 = icmp eq i64 %509, 0

  br i1 %510, label %block_4013c0, label %block_401390



block_401662:                                     ; preds = %block_401636

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 2, i64* %11, align 8, !tbaa !1240

  %511 = zext i32 %351 to i64

  store i64 %511, i64* %12, align 8, !tbaa !1240

  %512 = add i64 %362, 20

  %513 = load i64, i64* %17, align 8, !tbaa !1240

  %514 = add i64 %513, -8

  %515 = inttoptr i64 %514 to i64*

  store i64 %512, i64* %515

  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %518 = load i64, i64* %516, align 8, !alias.scope !1618, !noalias !1621

  %519 = load i64, i64* %517, align 8, !alias.scope !1618, !noalias !1621

  %520 = inttoptr i64 %513 to i64*

  %521 = load i64, i64* %520

  %522 = add i64 %513, 8

  %523 = inttoptr i64 %522 to i64*

  %524 = load i64, i64* %523

  %525 = add i64 %513, 16

  %526 = inttoptr i64 %525 to i64*

  %527 = load i64, i64* %526

  %528 = add i64 %513, 24

  %529 = inttoptr i64 %528 to i64*

  %530 = load i64, i64* %529

  %531 = add i64 %513, 32

  %532 = inttoptr i64 %531 to i64*

  %533 = load i64, i64* %532

  %534 = add i64 %513, 40

  %535 = inttoptr i64 %534 to i64*

  %536 = load i64, i64* %535

  %537 = add i64 %513, 48

  %538 = inttoptr i64 %537 to i64*

  %539 = load i64, i64* %538

  %540 = add i64 %513, 56

  %541 = inttoptr i64 %540 to i64*

  %542 = load i64, i64* %541

  %543 = add i64 %513, 64

  %544 = inttoptr i64 %543 to i64*

  %545 = load i64, i64* %544

  %546 = add i64 %513, 72

  %547 = inttoptr i64 %546 to i64*

  %548 = load i64, i64* %547

  %549 = inttoptr i64 %514 to i64*

  %550 = load i64, i64* %549

  store i64 %550, i64* %3, align 8, !alias.scope !1618, !noalias !1621

  store i64 %513, i64* %17, align 8, !alias.scope !1618, !noalias !1621

  %551 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64 %511, i64 2, i64 %349, i64 %518, i64 %519, i64 %521, i64 %524, i64 %527, i64 %530, i64 %533, i64 %536, i64 %539, i64 %542, i64 %545, i64 %548), !noalias !1618

  %552 = load i64, i64* %3, align 8

  %553 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %553, i64* %8, align 8, !tbaa !1240

  %554 = add i64 %553, 12

  %555 = inttoptr i64 %554 to i32*

  %556 = load i32, i32* %555

  %557 = add i32 %556, -1

  %558 = zext i32 %557 to i64

  store i64 %558, i64* %10, align 8, !tbaa !1240

  %559 = add i32 %556, -33554431

  %560 = icmp ult i32 %557, 33554430

  %561 = icmp eq i32 %559, 0

  %562 = or i1 %561, %560

  %563 = select i1 %562, i64 25, i64 -267

  %564 = add i64 %552, %563

  br i1 %562, label %block_40168f, label %block_40156b



block_4016b8:                                     ; preds = %block_4016a0

  %565 = add i64 %134, 46

  br label %block_4016e6



block_401535:                                     ; preds = %block_401521

  %566 = add i64 %416, 4

  %567 = inttoptr i64 %566 to i32*

  %568 = load i32, i32* %567

  %569 = add i32 %568, -1

  %570 = icmp ult i32 %569, 33554431

  %571 = select i1 %570, i64 168, i64 18

  %572 = add i64 %425, %571

  br i1 %570, label %block_4015dd, label %block_401547



block_40158b:                                     ; preds = %block_401521

  %573 = load i32, i32* bitcast (%test_rank_array_type* @test_rank_array to i32*)

  %574 = sext i32 %419 to i64

  %575 = load i32, i32* %7, align 4

  %576 = sub i32 %573, %575

  %577 = zext i32 %576 to i64

  store i64 %577, i64* %11, align 8, !tbaa !1240

  %578 = shl nsw i64 %574, 2

  %579 = add i64 %578, %377

  %580 = inttoptr i64 %579 to i32*

  %581 = load i32, i32* %580

  %582 = sub i32 %581, %576

  %583 = icmp eq i32 %582, 0

  %584 = select i1 %583, i64 17, i64 40

  %585 = add i64 %425, %584

  br i1 %583, label %block_40159c, label %block_4015b3



block_4016ba:                                     ; preds = %block_40168f

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 3, i64* %11, align 8, !tbaa !1240

  %586 = zext i32 %645 to i64

  store i64 %586, i64* %12, align 8, !tbaa !1240

  %587 = add i64 %656, 20

  %588 = load i64, i64* %17, align 8, !tbaa !1240

  %589 = add i64 %588, -8

  %590 = inttoptr i64 %589 to i64*

  store i64 %587, i64* %590

  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %593 = load i64, i64* %591, align 8, !alias.scope !1623, !noalias !1626

  %594 = load i64, i64* %592, align 8, !alias.scope !1623, !noalias !1626

  %595 = inttoptr i64 %588 to i64*

  %596 = load i64, i64* %595

  %597 = add i64 %588, 8

  %598 = inttoptr i64 %597 to i64*

  %599 = load i64, i64* %598

  %600 = add i64 %588, 16

  %601 = inttoptr i64 %600 to i64*

  %602 = load i64, i64* %601

  %603 = add i64 %588, 24

  %604 = inttoptr i64 %603 to i64*

  %605 = load i64, i64* %604

  %606 = add i64 %588, 32

  %607 = inttoptr i64 %606 to i64*

  %608 = load i64, i64* %607

  %609 = add i64 %588, 40

  %610 = inttoptr i64 %609 to i64*

  %611 = load i64, i64* %610

  %612 = add i64 %588, 48

  %613 = inttoptr i64 %612 to i64*

  %614 = load i64, i64* %613

  %615 = add i64 %588, 56

  %616 = inttoptr i64 %615 to i64*

  %617 = load i64, i64* %616

  %618 = add i64 %588, 64

  %619 = inttoptr i64 %618 to i64*

  %620 = load i64, i64* %619

  %621 = add i64 %588, 72

  %622 = inttoptr i64 %621 to i64*

  %623 = load i64, i64* %622

  %624 = inttoptr i64 %589 to i64*

  %625 = load i64, i64* %624

  store i64 %625, i64* %3, align 8, !alias.scope !1623, !noalias !1626

  store i64 %588, i64* %17, align 8, !alias.scope !1623, !noalias !1626

  %626 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64 %586, i64 3, i64 %644, i64 %593, i64 %594, i64 %596, i64 %599, i64 %602, i64 %605, i64 %608, i64 %611, i64 %614, i64 %617, i64 %620, i64 %623), !noalias !1623

  %627 = load i64, i64* %3, align 8

  %628 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %629 = add i64 %628, 16

  %630 = inttoptr i64 %629 to i32*

  %631 = load i32, i32* %630

  %632 = add i32 %631, -1

  %633 = zext i32 %632 to i64

  store i64 %633, i64* %8, align 8, !tbaa !1240

  %634 = add i32 %631, -33554431

  %635 = icmp ult i32 %632, 33554430

  %636 = icmp eq i32 %634, 0

  %637 = or i1 %636, %635

  %638 = select i1 %637, i64 24, i64 -338

  %639 = add i64 %627, %638

  br i1 %637, label %block_4016e6, label %block_40157c



block_40168f:                                     ; preds = %block_401662, %block_401559, %block_401660

  %640 = phi i32 [ %557, %block_401662 ], [ %295, %block_401660 ], [ %282, %block_401559 ]

  %641 = phi i64 [ %564, %block_401662 ], [ %120, %block_401660 ], [ %289, %block_401559 ]

  %642 = phi %struct.Memory* [ %348, %block_401662 ], [ %348, %block_401660 ], [ %278, %block_401559 ]

  %643 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 12) to i32*)

  %644 = sext i32 %640 to i64

  store i64 %644, i64* %10, align 8, !tbaa !1240

  %645 = load i32, i32* %7, align 4

  %646 = sub i32 %643, %645

  %647 = zext i32 %646 to i64

  store i64 %647, i64* %11, align 8, !tbaa !1240

  %648 = load i64, i64* %9, align 8

  %649 = shl nsw i64 %644, 2

  %650 = add i64 %649, %648

  %651 = inttoptr i64 %650 to i32*

  %652 = load i32, i32* %651

  %653 = sub i32 %652, %646

  %654 = icmp eq i32 %653, 0

  %655 = select i1 %654, i64 17, i64 43

  %656 = add i64 %641, %655

  br i1 %654, label %block_4016a0, label %block_4016ba



block_40140a:                                     ; preds = %block_4013e0

  %657 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 %657, i64* %14, align 8, !tbaa !1240

  br label %block_401420



block_4015b3:                                     ; preds = %block_40158b

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 0, i64* %11, align 8, !tbaa !1240

  %658 = zext i32 %575 to i64

  store i64 %658, i64* %12, align 8, !tbaa !1240

  %659 = add i64 %585, 17

  %660 = load i64, i64* %17, align 8, !tbaa !1240

  %661 = add i64 %660, -8

  %662 = inttoptr i64 %661 to i64*

  store i64 %659, i64* %662

  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %665 = load i64, i64* %663, align 8, !alias.scope !1628, !noalias !1631

  %666 = load i64, i64* %664, align 8, !alias.scope !1628, !noalias !1631

  %667 = inttoptr i64 %660 to i64*

  %668 = load i64, i64* %667

  %669 = add i64 %660, 8

  %670 = inttoptr i64 %669 to i64*

  %671 = load i64, i64* %670

  %672 = add i64 %660, 16

  %673 = inttoptr i64 %672 to i64*

  %674 = load i64, i64* %673

  %675 = add i64 %660, 24

  %676 = inttoptr i64 %675 to i64*

  %677 = load i64, i64* %676

  %678 = add i64 %660, 32

  %679 = inttoptr i64 %678 to i64*

  %680 = load i64, i64* %679

  %681 = add i64 %660, 40

  %682 = inttoptr i64 %681 to i64*

  %683 = load i64, i64* %682

  %684 = add i64 %660, 48

  %685 = inttoptr i64 %684 to i64*

  %686 = load i64, i64* %685

  %687 = add i64 %660, 56

  %688 = inttoptr i64 %687 to i64*

  %689 = load i64, i64* %688

  %690 = add i64 %660, 64

  %691 = inttoptr i64 %690 to i64*

  %692 = load i64, i64* %691

  %693 = add i64 %660, 72

  %694 = inttoptr i64 %693 to i64*

  %695 = load i64, i64* %694

  %696 = inttoptr i64 %661 to i64*

  %697 = load i64, i64* %696

  store i64 %697, i64* %3, align 8, !alias.scope !1628, !noalias !1631

  store i64 %660, i64* %17, align 8, !alias.scope !1628, !noalias !1631

  %698 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64 %658, i64 0, i64 %574, i64 %665, i64 %666, i64 %668, i64 %671, i64 %674, i64 %677, i64 %680, i64 %683, i64 %686, i64 %689, i64 %692, i64 %695), !noalias !1628

  %699 = load i64, i64* %3, align 8

  %700 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %700, i64* %8, align 8, !tbaa !1240

  %701 = add i64 %700, 4

  %702 = inttoptr i64 %701 to i32*

  %703 = load i32, i32* %702

  %704 = add i32 %703, -1

  %705 = icmp ult i32 %704, 33554431

  %706 = select i1 %705, i64 25, i64 -125

  %707 = add i64 %699, %706

  br i1 %705, label %block_4015dd, label %block_401547



block_401609:                                     ; preds = %block_4015dd

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 1, i64* %11, align 8, !tbaa !1240

  %708 = zext i32 %264 to i64

  store i64 %708, i64* %12, align 8, !tbaa !1240

  %709 = add i64 %275, 20

  %710 = load i64, i64* %17, align 8, !tbaa !1240

  %711 = add i64 %710, -8

  %712 = inttoptr i64 %711 to i64*

  store i64 %709, i64* %712

  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %715 = load i64, i64* %713, align 8, !alias.scope !1633, !noalias !1636

  %716 = load i64, i64* %714, align 8, !alias.scope !1633, !noalias !1636

  %717 = inttoptr i64 %710 to i64*

  %718 = load i64, i64* %717

  %719 = add i64 %710, 8

  %720 = inttoptr i64 %719 to i64*

  %721 = load i64, i64* %720

  %722 = add i64 %710, 16

  %723 = inttoptr i64 %722 to i64*

  %724 = load i64, i64* %723

  %725 = add i64 %710, 24

  %726 = inttoptr i64 %725 to i64*

  %727 = load i64, i64* %726

  %728 = add i64 %710, 32

  %729 = inttoptr i64 %728 to i64*

  %730 = load i64, i64* %729

  %731 = add i64 %710, 40

  %732 = inttoptr i64 %731 to i64*

  %733 = load i64, i64* %732

  %734 = add i64 %710, 48

  %735 = inttoptr i64 %734 to i64*

  %736 = load i64, i64* %735

  %737 = add i64 %710, 56

  %738 = inttoptr i64 %737 to i64*

  %739 = load i64, i64* %738

  %740 = add i64 %710, 64

  %741 = inttoptr i64 %740 to i64*

  %742 = load i64, i64* %741

  %743 = add i64 %710, 72

  %744 = inttoptr i64 %743 to i64*

  %745 = load i64, i64* %744

  %746 = inttoptr i64 %711 to i64*

  %747 = load i64, i64* %746

  store i64 %747, i64* %3, align 8, !alias.scope !1633, !noalias !1636

  store i64 %710, i64* %17, align 8, !alias.scope !1633, !noalias !1636

  %748 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64 %708, i64 1, i64 %262, i64 %715, i64 %716, i64 %718, i64 %721, i64 %724, i64 %727, i64 %730, i64 %733, i64 %736, i64 %739, i64 %742, i64 %745), !noalias !1633

  %749 = load i64, i64* %3, align 8

  %750 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %750, i64* %8, align 8, !tbaa !1240

  %751 = add i64 %750, 8

  %752 = inttoptr i64 %751 to i32*

  %753 = load i32, i32* %752

  %754 = add i32 %753, -1

  %755 = add i32 %753, -33554431

  %756 = icmp ult i32 %754, 33554430

  %757 = icmp eq i32 %755, 0

  %758 = or i1 %757, %756

  %759 = select i1 %758, i64 25, i64 -196

  %760 = add i64 %749, %759

  br i1 %758, label %block_401636, label %block_401559



block_401709:                                     ; preds = %block_4016e6

  store i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 4, i64* %11, align 8, !tbaa !1240

  %761 = zext i32 %309 to i64

  store i64 %761, i64* %12, align 8, !tbaa !1240

  %762 = add i64 %321, 20

  %763 = load i64, i64* %17, align 8, !tbaa !1240

  %764 = add i64 %763, -8

  %765 = inttoptr i64 %764 to i64*

  store i64 %762, i64* %765

  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %768 = load i64, i64* %766, align 8, !alias.scope !1638, !noalias !1641

  %769 = load i64, i64* %767, align 8, !alias.scope !1638, !noalias !1641

  %770 = inttoptr i64 %763 to i64*

  %771 = load i64, i64* %770

  %772 = add i64 %763, 8

  %773 = inttoptr i64 %772 to i64*

  %774 = load i64, i64* %773

  %775 = add i64 %763, 16

  %776 = inttoptr i64 %775 to i64*

  %777 = load i64, i64* %776

  %778 = add i64 %763, 24

  %779 = inttoptr i64 %778 to i64*

  %780 = load i64, i64* %779

  %781 = add i64 %763, 32

  %782 = inttoptr i64 %781 to i64*

  %783 = load i64, i64* %782

  %784 = add i64 %763, 40

  %785 = inttoptr i64 %784 to i64*

  %786 = load i64, i64* %785

  %787 = add i64 %763, 48

  %788 = inttoptr i64 %787 to i64*

  %789 = load i64, i64* %788

  %790 = add i64 %763, 56

  %791 = inttoptr i64 %790 to i64*

  %792 = load i64, i64* %791

  %793 = add i64 %763, 64

  %794 = inttoptr i64 %793 to i64*

  %795 = load i64, i64* %794

  %796 = add i64 %763, 72

  %797 = inttoptr i64 %796 to i64*

  %798 = load i64, i64* %797

  %799 = inttoptr i64 %764 to i64*

  %800 = load i64, i64* %799

  store i64 %800, i64* %3, align 8, !alias.scope !1638, !noalias !1641

  store i64 %763, i64* %17, align 8, !alias.scope !1638, !noalias !1641

  %801 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 1078), i64 4294967295), i64 %761, i64 4, i64 %311, i64 %768, i64 %769, i64 %771, i64 %774, i64 %777, i64 %780, i64 %783, i64 %786, i64 %789, i64 %792, i64 %795, i64 %798), !noalias !1638

  store i64 %801, i64* %89, align 8, !alias.scope !1638, !noalias !1641

  %802 = load i32, i32* %7, align 4

  %803 = add i32 %802, -10

  %804 = icmp ult i32 %802, 10

  %805 = zext i1 %804 to i8

  store i8 %805, i8* %35, align 1, !tbaa !1244

  %806 = and i32 %803, 255

  %807 = tail call i32 @llvm.ctpop.i32(i32 %806) #10

  %808 = trunc i32 %807 to i8

  %809 = and i8 %808, 1

  %810 = xor i8 %809, 1

  store i8 %810, i8* %36, align 1, !tbaa !1258

  %811 = xor i32 %803, %802

  %812 = lshr i32 %811, 4

  %813 = trunc i32 %812 to i8

  %814 = and i8 %813, 1

  store i8 %814, i8* %37, align 1, !tbaa !1262

  %815 = icmp eq i32 %803, 0

  %816 = zext i1 %815 to i8

  store i8 %816, i8* %38, align 1, !tbaa !1259

  %817 = lshr i32 %803, 31

  %818 = trunc i32 %817 to i8

  store i8 %818, i8* %39, align 1, !tbaa !1260

  %819 = lshr i32 %802, 31

  %820 = xor i32 %817, %819

  %821 = add nuw nsw i32 %820, %819

  %822 = icmp eq i32 %821, 2

  %823 = zext i1 %822 to i8

  store i8 %823, i8* %40, align 1, !tbaa !1261

  br i1 %815, label %block_401727, label %block_401586



block_4015b1:                                     ; preds = %block_40159c

  %824 = add i64 %476, 44

  br label %block_4015dd



block_401607:                                     ; preds = %block_4015ee

  %825 = add i64 %192, 47

  br label %block_401636



block_401586:                                     ; preds = %block_401709, %block_4016f6, %block_40157c

  %826 = phi %struct.Memory* [ %306, %block_401709 ], [ %306, %block_4016f6 ], [ %97, %block_40157c ]

  %827 = load i64, i64* %17, align 8, !tbaa !1240

  %828 = add i64 %827, 8

  %829 = inttoptr i64 %827 to i64*

  %830 = load i64, i64* %829

  store i64 %830, i64* %9, align 8, !tbaa !1240

  %831 = add i64 %827, 16

  %832 = inttoptr i64 %828 to i64*

  %833 = load i64, i64* %832

  store i64 %833, i64* %15, align 8, !tbaa !1240

  %834 = add i64 %827, 24

  %835 = inttoptr i64 %831 to i64*

  %836 = load i64, i64* %835

  store i64 %836, i64* %14, align 8, !tbaa !1240

  %837 = inttoptr i64 %834 to i64*

  %838 = load i64, i64* %837

  store i64 %838, i64* %3, align 8, !tbaa !1240

  %839 = add i64 %827, 32

  store i64 %839, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %826

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401fb4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401fb4:

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

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #10

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

define %struct.Memory* @sub_400c10_create_seq(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400c10:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 10

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 11

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 12

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 13

  %22 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %22, i64* %5, align 8, !tbaa !1240

  %23 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1040) to i8*)

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %26 = icmp eq i8 %23, 0

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  br i1 %26, label %block_400c45, label %block_400c21



block_401158:                                     ; preds = %block_400f10

  store i32 0, i32* %332, align 1, !tbaa !1307

  store i32 0, i32* %334, align 1, !tbaa !1307

  store double %511, double* %335, align 1

  store double %431, double* %350, align 1

  store i64 %374, i64* %351, align 1, !tbaa !1293

  store double %541, double* %49, align 1, !tbaa !1293

  store i64 %374, i64* %51, align 1, !tbaa !1293

  store i64 %547, i64* %7, align 8, !tbaa !1240

  store i64 0, i64* %6, align 8

  store i8 1, i8* %24, align 1, !tbaa !1244

  store i8 1, i8* %25, align 1, !tbaa !1258

  store i8 1, i8* %30, align 1, !tbaa !1262

  store i8 1, i8* %27, align 1, !tbaa !1259

  store i8 0, i8* %28, align 1, !tbaa !1260

  store i8 0, i8* %29, align 1, !tbaa !1261

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %32 = load i64, i64* %31, align 8, !tbaa !1240

  %33 = inttoptr i64 %32 to i64*

  %34 = load i64, i64* %33

  store i64 %34, i64* %3, align 8, !tbaa !1240

  %35 = add i64 %32, 8

  store i64 %35, i64* %31, align 8, !tbaa !1240

  ret %struct.Memory* %382



block_400cb2:                                     ; preds = %block_400c21, %block_400c45

  %36 = phi i64* [ %576, %block_400c21 ], [ %560, %block_400c45 ]

  %37 = phi double* [ %585, %block_400c21 ], [ %569, %block_400c45 ]

  %38 = phi double* [ %573, %block_400c21 ], [ %557, %block_400c45 ]

  %39 = phi i64* [ %580, %block_400c21 ], [ %564, %block_400c45 ]

  %40 = phi double* [ %579, %block_400c21 ], [ %563, %block_400c45 ]

  %41 = phi double* [ %571, %block_400c21 ], [ %555, %block_400c45 ]

  %42 = phi double* [ %583, %block_400c21 ], [ %567, %block_400c45 ]

  %43 = phi double* [ %575, %block_400c21 ], [ %559, %block_400c45 ]

  %44 = phi %struct.Memory* [ %2, %block_400c21 ], [ %2, %block_400c45 ]

  %45 = bitcast %union.VectorReg* %11 to i8*

  %46 = bitcast %union.VectorReg* %19 to <2 x i64>*

  %47 = bitcast %union.VectorReg* %19 to <2 x double>*

  %48 = load <2 x double>, <2 x double>* %47, align 1

  %49 = bitcast %union.VectorReg* %11 to double*

  %50 = extractelement <2 x double> %48, i32 0

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %52 = bitcast %union.VectorReg* %9 to double*

  %53 = load double, double* %52, align 1

  %54 = fmul double %50, %53

  %55 = tail call double @llvm.trunc.f64(double %54) #10

  %56 = tail call double @llvm.fabs.f64(double %55) #10

  %57 = fcmp ogt double %56, 0x41DFFFFFFFC00000

  %58 = fptosi double %55 to i32

  %59 = sitofp i32 %58 to double

  %60 = select i1 %57, double 0xC1E0000000000000, double %59

  %61 = bitcast %union.VectorReg* %18 to double*

  store double %60, double* %61, align 1, !tbaa !1293

  %62 = bitcast %union.VectorReg* %13 to i8*

  %63 = bitcast %union.VectorReg* %13 to <2 x i64>*

  %64 = bitcast %union.VectorReg* %13 to <2 x double>*

  %65 = load <2 x double>, <2 x double>* %64, align 1

  %66 = extractelement <2 x double> %65, i32 0

  %67 = fmul double %66, %60

  %68 = bitcast %union.VectorReg* %9 to <2 x i64>*

  %69 = load <2 x i64>, <2 x i64>* %68, align 1

  %70 = bitcast %union.VectorReg* %15 to i8*

  %71 = bitcast %union.VectorReg* %15 to <2 x i64>*

  %72 = bitcast [32 x %union.VectorReg]* %8 to i8*

  %73 = bitcast %union.VectorReg* %15 to double*

  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1

  %75 = bitcast [32 x %union.VectorReg]* %8 to double*

  %76 = load double, double* %75, align 1

  %77 = fmul double %50, %76

  %78 = tail call double @llvm.trunc.f64(double %77) #10

  %79 = tail call double @llvm.fabs.f64(double %78) #10

  %80 = fcmp ogt double %79, 0x41DFFFFFFFC00000

  %81 = fptosi double %78 to i32

  %82 = bitcast i64* %74 to i32*

  store i32 0, i32* %82, align 1, !tbaa !1307

  %83 = getelementptr inbounds i8, i8* %70, i64 12

  %84 = bitcast i8* %83 to i32*

  store i32 0, i32* %84, align 1, !tbaa !1307

  %85 = sitofp i32 %81 to double

  %86 = select i1 %80, double 0xC1E0000000000000, double %85

  %87 = bitcast %union.VectorReg* %14 to double*

  %88 = bitcast <2 x i64> %69 to <2 x double>

  %89 = extractelement <2 x double> %88, i32 0

  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1

  %91 = extractelement <2 x i64> %69, i32 1

  %92 = fsub double %89, %67

  store double %92, double* %87, align 1, !tbaa !1293

  store i64 %91, i64* %90, align 1, !tbaa !1293

  %93 = fmul double %66, %86

  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %95 = fsub double %76, %93

  %96 = bitcast %union.VectorReg* %14 to <2 x double>*

  %97 = load <2 x double>, <2 x double>* %96, align 1

  %98 = extractelement <2 x double> %97, i32 0

  %99 = fmul double %98, %95

  %100 = load double, double* %61, align 1

  %101 = fmul double %95, %100

  %102 = fmul double %86, %98

  %103 = fadd double %102, %101

  %104 = bitcast %union.VectorReg* %19 to <2 x double>*

  %105 = load <2 x double>, <2 x double>* %104, align 1

  %106 = extractelement <2 x double> %105, i32 0

  %107 = fmul double %106, %103

  %108 = tail call double @llvm.trunc.f64(double %107) #10

  %109 = tail call double @llvm.fabs.f64(double %108) #10

  %110 = fcmp ogt double %109, 0x41DFFFFFFFC00000

  %111 = fptosi double %108 to i32

  %112 = bitcast i64* %94 to i32*

  %113 = getelementptr inbounds i8, i8* %72, i64 12

  %114 = bitcast i8* %113 to i32*

  %115 = sitofp i32 %111 to double

  %116 = select i1 %110, double 0xC1E0000000000000, double %115

  %117 = load double, double* %43, align 1

  %118 = fmul double %116, %117

  %119 = fsub double %103, %118

  %120 = fmul double %119, %117

  %121 = fadd double %120, %99

  %122 = bitcast %union.VectorReg* %10 to i8*

  %123 = bitcast %union.VectorReg* %10 to <2 x i64>*

  %124 = load <2 x i64>, <2 x i64>* %123, align 1

  %125 = bitcast <2 x i64> %124 to <2 x double>

  %126 = extractelement <2 x double> %125, i32 0

  %127 = extractelement <2 x i64> %124, i32 1

  %128 = fmul double %126, %121

  %129 = tail call double @llvm.trunc.f64(double %128) #10

  %130 = tail call double @llvm.fabs.f64(double %129) #10

  %131 = fcmp ogt double %130, 0x41DFFFFFFFC00000

  %132 = fptosi double %129 to i32

  %133 = sitofp i32 %132 to double

  %134 = select i1 %131, double 0xC1E0000000000000, double %133

  %135 = load double, double* %42, align 1

  %136 = fmul double %134, %135

  %137 = fsub double %121, %136

  store double %137, double* %73, align 1, !tbaa !1293

  %138 = bitcast %union.VectorReg* %15 to <2 x double>*

  %139 = load <2 x double>, <2 x double>* %138, align 1

  %140 = extractelement <2 x double> %139, i32 0

  %141 = load double, double* %41, align 1

  %142 = fmul double %140, %141

  %143 = tail call double @llvm.trunc.f64(double %142) #10

  %144 = tail call double @llvm.fabs.f64(double %143) #10

  %145 = fcmp ogt double %144, 0x41DFFFFFFFC00000

  %146 = fptosi double %143 to i32

  %147 = bitcast %union.VectorReg* %17 to double*

  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9, i32 0, i32 0, i32 0, i64 1

  %149 = fmul double %126, %140

  store double %149, double* %147, align 1, !tbaa !1293

  store i64 %127, i64* %148, align 1, !tbaa !1293

  %150 = bitcast i64* %51 to i32*

  store i32 0, i32* %150, align 1, !tbaa !1307

  %151 = getelementptr inbounds i8, i8* %45, i64 12

  %152 = bitcast i8* %151 to i32*

  store i32 0, i32* %152, align 1, !tbaa !1307

  %153 = sitofp i32 %146 to double

  %154 = select i1 %145, double 0xC1E0000000000000, double %153

  %155 = bitcast %union.VectorReg* %13 to <2 x double>*

  %156 = load <2 x double>, <2 x double>* %155, align 1

  %157 = extractelement <2 x double> %156, i32 0

  %158 = fmul double %157, %154

  %159 = fsub double %140, %158

  %160 = bitcast %union.VectorReg* %14 to <2 x double>*

  %161 = load <2 x double>, <2 x double>* %160, align 1

  %162 = extractelement <2 x double> %161, i32 0

  %163 = fmul double %162, %159

  %164 = load double, double* %61, align 1

  %165 = fmul double %159, %164

  %166 = fmul double %154, %162

  %167 = fadd double %166, %165

  %168 = bitcast %union.VectorReg* %19 to <2 x double>*

  %169 = load <2 x double>, <2 x double>* %168, align 1

  %170 = extractelement <2 x double> %169, i32 0

  %171 = fmul double %170, %167

  %172 = tail call double @llvm.trunc.f64(double %171) #10

  %173 = tail call double @llvm.fabs.f64(double %172) #10

  %174 = fcmp ogt double %173, 0x41DFFFFFFFC00000

  %175 = fptosi double %172 to i32

  %176 = sitofp i32 %175 to double

  %177 = select i1 %174, double 0xC1E0000000000000, double %176

  %178 = fmul double %177, %157

  %179 = fsub double %167, %178

  %180 = load double, double* %43, align 1

  %181 = fmul double %179, %180

  %182 = fadd double %181, %163

  %183 = bitcast %union.VectorReg* %10 to <2 x double>*

  %184 = load <2 x double>, <2 x double>* %183, align 1

  %185 = extractelement <2 x double> %184, i32 0

  %186 = fmul double %185, %182

  %187 = tail call double @llvm.trunc.f64(double %186) #10

  %188 = tail call double @llvm.fabs.f64(double %187) #10

  %189 = fcmp ogt double %188, 0x41DFFFFFFFC00000

  %190 = fptosi double %187 to i32

  %191 = sitofp i32 %190 to double

  %192 = select i1 %189, double 0xC1E0000000000000, double %191

  %193 = load double, double* %42, align 1

  %194 = fmul double %192, %193

  %195 = fsub double %182, %194

  store double %195, double* %49, align 1, !tbaa !1293

  %196 = bitcast %union.VectorReg* %11 to <2 x double>*

  %197 = load <2 x double>, <2 x double>* %196, align 1

  %198 = extractelement <2 x double> %197, i32 0

  %199 = load double, double* %41, align 1

  %200 = fmul double %198, %199

  %201 = tail call double @llvm.trunc.f64(double %200) #10

  %202 = tail call double @llvm.fabs.f64(double %201) #10

  %203 = fcmp ogt double %202, 0x41DFFFFFFFC00000

  %204 = fptosi double %201 to i32

  store i32 0, i32* %112, align 1, !tbaa !1307

  store i32 0, i32* %114, align 1, !tbaa !1307

  %205 = sitofp i32 %204 to double

  %206 = select i1 %203, double 0xC1E0000000000000, double %205

  %207 = fmul double %185, %198

  store double %207, double* %73, align 1, !tbaa !1293

  %208 = bitcast %union.VectorReg* %12 to i8*

  %209 = bitcast %union.VectorReg* %13 to <2 x double>*

  %210 = load <2 x double>, <2 x double>* %209, align 1

  %211 = bitcast %union.VectorReg* %12 to double*

  %212 = extractelement <2 x double> %210, i32 0

  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %214 = fmul double %212, %206

  %215 = fsub double %198, %214

  %216 = bitcast %union.VectorReg* %14 to <2 x double>*

  %217 = load <2 x double>, <2 x double>* %216, align 1

  %218 = extractelement <2 x double> %217, i32 0

  %219 = fmul double %218, %215

  %220 = load double, double* %61, align 1

  %221 = fmul double %215, %220

  %222 = fmul double %206, %218

  %223 = fadd double %222, %221

  %224 = bitcast %union.VectorReg* %19 to <2 x double>*

  %225 = load <2 x double>, <2 x double>* %224, align 1

  %226 = extractelement <2 x double> %225, i32 0

  %227 = fmul double %226, %223

  %228 = tail call double @llvm.trunc.f64(double %227) #10

  %229 = tail call double @llvm.fabs.f64(double %228) #10

  %230 = fcmp ogt double %229, 0x41DFFFFFFFC00000

  %231 = fptosi double %228 to i32

  %232 = sitofp i32 %231 to double

  %233 = select i1 %230, double 0xC1E0000000000000, double %232

  %234 = fmul double %233, %212

  %235 = fsub double %223, %234

  %236 = load double, double* %43, align 1

  %237 = fmul double %235, %236

  %238 = fadd double %237, %219

  %239 = load <2 x i64>, <2 x i64>* %123, align 1

  %240 = bitcast <2 x i64> %239 to <2 x double>

  %241 = extractelement <2 x double> %240, i32 0

  %242 = extractelement <2 x i64> %239, i32 1

  %243 = fmul double %241, %238

  %244 = tail call double @llvm.trunc.f64(double %243) #10

  %245 = tail call double @llvm.fabs.f64(double %244) #10

  %246 = fcmp ogt double %245, 0x41DFFFFFFFC00000

  %247 = fptosi double %244 to i32

  %248 = load double, double* %73, align 1

  %249 = load double, double* %147, align 1

  %250 = fadd double %248, %249

  %251 = sitofp i32 %247 to double

  %252 = select i1 %246, double 0xC1E0000000000000, double %251

  %253 = load double, double* %42, align 1

  %254 = fmul double %252, %253

  %255 = fsub double %238, %254

  store double %255, double* %75, align 1, !tbaa !1293

  %256 = fmul double %241, %255

  %257 = fadd double %256, %250

  store double %257, double* %49, align 1, !tbaa !1293

  store i64 %242, i64* %51, align 1, !tbaa !1293

  %258 = bitcast [32 x %union.VectorReg]* %8 to <2 x double>*

  %259 = load <2 x double>, <2 x double>* %258, align 1

  %260 = extractelement <2 x double> %259, i32 0

  %261 = load double, double* %41, align 1

  %262 = fmul double %260, %261

  %263 = tail call double @llvm.trunc.f64(double %262) #10

  %264 = tail call double @llvm.fabs.f64(double %263) #10

  %265 = fcmp ogt double %264, 0x41DFFFFFFFC00000

  %266 = fptosi double %263 to i32

  %267 = bitcast i64* %213 to i32*

  %268 = getelementptr inbounds i8, i8* %208, i64 12

  %269 = bitcast i8* %268 to i32*

  %270 = sitofp i32 %266 to double

  %271 = select i1 %265, double 0xC1E0000000000000, double %270

  %272 = bitcast %union.VectorReg* %13 to <2 x double>*

  %273 = load <2 x double>, <2 x double>* %272, align 1

  %274 = extractelement <2 x double> %273, i32 0

  %275 = fmul double %274, %271

  %276 = fsub double %260, %275

  %277 = load double, double* %61, align 1

  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 10, i32 0, i32 0, i32 0, i64 1

  %279 = fmul double %277, %276

  %280 = load double, double* %87, align 1

  %281 = fmul double %271, %280

  %282 = fadd double %281, %279

  %283 = fmul double %261, %282

  %284 = tail call double @llvm.trunc.f64(double %283) #10

  %285 = tail call double @llvm.fabs.f64(double %284) #10

  %286 = fcmp ogt double %285, 0x41DFFFFFFFC00000

  %287 = fptosi double %284 to i32

  store i32 0, i32* %82, align 1, !tbaa !1307

  store i32 0, i32* %84, align 1, !tbaa !1307

  %288 = sitofp i32 %287 to double

  %289 = select i1 %286, double 0xC1E0000000000000, double %288

  %290 = fmul double %289, %274

  store double %290, double* %73, align 1, !tbaa !1293

  %291 = fsub double %282, %290

  %292 = fmul double %291, %274

  %293 = fmul double %276, %280

  %294 = fadd double %293, %292

  %295 = bitcast %union.VectorReg* %10 to <2 x double>*

  %296 = load <2 x double>, <2 x double>* %295, align 1

  %297 = extractelement <2 x double> %296, i32 0

  %298 = fmul double %297, %294

  %299 = tail call double @llvm.trunc.f64(double %298) #10

  %300 = tail call double @llvm.fabs.f64(double %299) #10

  %301 = fcmp ogt double %300, 0x41DFFFFFFFC00000

  %302 = fptosi double %299 to i32

  store i32 0, i32* %267, align 1, !tbaa !1307

  store i32 0, i32* %269, align 1, !tbaa !1307

  %303 = sitofp i32 %302 to double

  %304 = select i1 %301, double 0xC1E0000000000000, double %303

  %305 = load double, double* %42, align 1

  %306 = fmul double %304, %305

  store double %306, double* %211, align 1, !tbaa !1293

  %307 = fsub double %294, %306

  store double %307, double* %75, align 1, !tbaa !1293

  %308 = fmul double %297, %307

  %309 = load double, double* %49, align 1

  %310 = fadd double %308, %309

  %311 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 976) to double*)

  %312 = fmul double %310, %311

  store double %312, double* %40, align 1, !tbaa !1293

  %313 = tail call double @llvm.trunc.f64(double %312) #10

  %314 = tail call double @llvm.fabs.f64(double %313) #10

  %315 = fcmp ogt double %314, 0x41DFFFFFFFC00000

  %316 = fptosi double %313 to i32

  %317 = load i64, i64* %5, align 8

  %318 = select i1 %315, i32 -2147483648, i32 %316

  %319 = inttoptr i64 %317 to i32*

  store i32 %318, i32* %319

  %320 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to double*)

  store double %320, double* %41, align 1, !tbaa !1293

  store double 0.000000e+00, double* %38, align 1, !tbaa !1293

  %321 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to double*)

  store double %321, double* %87, align 1, !tbaa !1293

  %322 = bitcast i64* %90 to double*

  store double 0.000000e+00, double* %322, align 1, !tbaa !1293

  %323 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to double*)

  store double %323, double* %61, align 1, !tbaa !1293

  %324 = bitcast i64* %278 to double*

  store double 0.000000e+00, double* %324, align 1, !tbaa !1293

  %325 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to double*)

  store double %325, double* %147, align 1, !tbaa !1293

  %326 = bitcast i64* %148 to double*

  store double 0.000000e+00, double* %326, align 1, !tbaa !1293

  %327 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 976) to double*)

  store double %327, double* %42, align 1, !tbaa !1293

  store double 0.000000e+00, double* %37, align 1, !tbaa !1293

  %328 = load <2 x i64>, <2 x i64>* %46, align 1

  %329 = load double, double* %52, align 1

  %330 = bitcast %union.VectorReg* %21 to i8*

  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 13, i32 0, i32 0, i32 0, i64 1

  %332 = bitcast i64* %331 to i32*

  %333 = getelementptr inbounds i8, i8* %330, i64 12

  %334 = bitcast i8* %333 to i32*

  %335 = bitcast %union.VectorReg* %21 to double*

  %336 = bitcast %union.VectorReg* %14 to <2 x double>*

  %337 = load <2 x double>, <2 x double>* %336, align 1

  %338 = load <2 x i64>, <2 x i64>* %68, align 1

  %339 = bitcast <2 x i64> %328 to <2 x double>

  %340 = extractelement <2 x double> %339, i32 0

  %341 = extractelement <2 x double> %337, i32 0

  %342 = bitcast %union.VectorReg* %18 to <2 x i64>*

  %343 = load <2 x i64>, <2 x i64>* %342, align 1

  %344 = bitcast %union.VectorReg* %10 to i32*

  %345 = getelementptr inbounds i8, i8* %122, i64 4

  %346 = bitcast i8* %345 to i32*

  %347 = bitcast i64* %39 to i32*

  %348 = getelementptr inbounds i8, i8* %122, i64 12

  %349 = bitcast i8* %348 to i32*

  %350 = bitcast %union.VectorReg* %20 to double*

  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 12, i32 0, i32 0, i32 0, i64 1

  %352 = bitcast %union.VectorReg* %13 to i32*

  %353 = getelementptr inbounds i8, i8* %62, i64 4

  %354 = bitcast i8* %353 to i32*

  %355 = bitcast i64* %36 to i32*

  %356 = getelementptr inbounds i8, i8* %62, i64 12

  %357 = bitcast i8* %356 to i32*

  %358 = add i64 %317, 134217728

  %359 = extractelement <2 x i64> %328, i32 1

  %360 = fmul double %340, %329

  %361 = tail call double @llvm.trunc.f64(double %360) #10

  %362 = tail call double @llvm.fabs.f64(double %361) #10

  %363 = fcmp ogt double %362, 0x41DFFFFFFFC00000

  %364 = fptosi double %361 to i32

  %365 = sitofp i32 %364 to double

  %366 = select i1 %363, double 0xC1E0000000000000, double %365

  %367 = fmul double %341, %366

  %368 = bitcast <2 x i64> %338 to <2 x double>

  %369 = extractelement <2 x double> %368, i32 0

  %370 = extractelement <2 x i64> %338, i32 1

  %371 = fsub double %369, %367

  %372 = bitcast <2 x i64> %343 to <2 x double>

  %373 = extractelement <2 x double> %372, i32 0

  %374 = extractelement <2 x i64> %343, i32 1

  %375 = bitcast [32 x %union.VectorReg]* %8 to <2 x double>*

  %376 = bitcast %union.VectorReg* %12 to <2 x double>*

  %377 = bitcast %union.VectorReg* %15 to <2 x double>*

  %378 = bitcast %union.VectorReg* %10 to <2 x double>*

  %379 = bitcast %union.VectorReg* %15 to <2 x double>*

  %380 = bitcast [32 x %union.VectorReg]* %8 to <2 x double>*

  br label %block_400f10



block_400f10:                                     ; preds = %block_400f10, %block_400cb2

  %381 = phi i64 [ -33554431, %block_400cb2 ], [ %552, %block_400f10 ]

  %382 = phi %struct.Memory* [ %44, %block_400cb2 ], [ %382, %block_400f10 ]

  %383 = load <2 x double>, <2 x double>* %375, align 1

  %384 = extractelement <2 x double> %383, i32 0

  %385 = fmul double %384, %340

  %386 = tail call double @llvm.trunc.f64(double %385) #10

  %387 = tail call double @llvm.fabs.f64(double %386) #10

  %388 = fcmp ogt double %387, 0x41DFFFFFFFC00000

  %389 = fptosi double %386 to i32

  store double %371, double* %73, align 1, !tbaa !1293

  store i64 %370, i64* %74, align 1, !tbaa !1293

  store i32 0, i32* %267, align 1, !tbaa !1307

  store i32 0, i32* %269, align 1, !tbaa !1307

  %390 = sitofp i32 %389 to double

  %391 = select i1 %388, double 0xC1E0000000000000, double %390

  %392 = fmul double %341, %391

  %393 = fsub double %384, %392

  %394 = load <2 x i64>, <2 x i64>* %71, align 1

  store <2 x i64> %394, <2 x i64>* %123, align 1, !tbaa !1293

  %395 = bitcast <2 x i64> %394 to <2 x double>

  %396 = extractelement <2 x double> %395, i32 0

  %397 = extractelement <2 x i64> %394, i32 1

  %398 = fmul double %396, %393

  store i64 %397, i64* %39, align 1, !tbaa !1293

  %399 = fmul double %393, %366

  %400 = fmul double %391, %396

  %401 = fadd double %400, %399

  %402 = fmul double %340, %401

  %403 = tail call double @llvm.trunc.f64(double %402) #10

  %404 = tail call double @llvm.fabs.f64(double %403) #10

  %405 = fcmp ogt double %404, 0x41DFFFFFFFC00000

  %406 = fptosi double %403 to i32

  %407 = sitofp i32 %406 to double

  %408 = select i1 %405, double 0xC1E0000000000000, double %407

  %409 = fmul double %408, %341

  %410 = fsub double %401, %409

  %411 = fmul double %410, %341

  %412 = fadd double %411, %398

  %413 = fmul double %373, %412

  %414 = tail call double @llvm.trunc.f64(double %413) #10

  %415 = tail call double @llvm.fabs.f64(double %414) #10

  %416 = fcmp ogt double %415, 0x41DFFFFFFFC00000

  %417 = fptosi double %414 to i32

  %418 = sitofp i32 %417 to double

  %419 = select i1 %416, double 0xC1E0000000000000, double %418

  %420 = fmul double %419, %325

  %421 = fsub double %412, %420

  store double %421, double* %211, align 1, !tbaa !1293

  %422 = load <2 x double>, <2 x double>* %376, align 1

  %423 = extractelement <2 x double> %422, i32 0

  %424 = fmul double %423, %340

  %425 = tail call double @llvm.trunc.f64(double %424) #10

  %426 = tail call double @llvm.fabs.f64(double %425) #10

  %427 = fcmp ogt double %426, 0x41DFFFFFFFC00000

  %428 = fptosi double %425 to i32

  store i32 0, i32* %344, align 1, !tbaa !1307

  store i32 0, i32* %346, align 1, !tbaa !1307

  store i32 0, i32* %347, align 1, !tbaa !1307

  store i32 0, i32* %349, align 1, !tbaa !1307

  %429 = sitofp i32 %428 to double

  %430 = select i1 %427, double 0xC1E0000000000000, double %429

  %431 = fmul double %373, %423

  %432 = fmul double %341, %430

  %433 = fsub double %423, %432

  %434 = load <2 x double>, <2 x double>* %377, align 1

  %435 = extractelement <2 x double> %434, i32 0

  %436 = fmul double %435, %433

  %437 = fmul double %433, %366

  %438 = fmul double %430, %435

  %439 = fadd double %438, %437

  %440 = fmul double %340, %439

  %441 = tail call double @llvm.trunc.f64(double %440) #10

  %442 = tail call double @llvm.fabs.f64(double %441) #10

  %443 = fcmp ogt double %442, 0x41DFFFFFFFC00000

  %444 = fptosi double %441 to i32

  %445 = sitofp i32 %444 to double

  %446 = select i1 %443, double 0xC1E0000000000000, double %445

  %447 = fmul double %446, %341

  %448 = fsub double %439, %447

  %449 = fmul double %448, %341

  %450 = fadd double %449, %436

  %451 = fmul double %373, %450

  %452 = tail call double @llvm.trunc.f64(double %451) #10

  %453 = tail call double @llvm.fabs.f64(double %452) #10

  %454 = fcmp ogt double %453, 0x41DFFFFFFFC00000

  %455 = fptosi double %452 to i32

  %456 = sitofp i32 %455 to double

  %457 = select i1 %454, double 0xC1E0000000000000, double %456

  %458 = fmul double %457, %325

  %459 = fsub double %450, %458

  store double %459, double* %40, align 1, !tbaa !1293

  %460 = load <2 x double>, <2 x double>* %378, align 1

  %461 = extractelement <2 x double> %460, i32 0

  %462 = fmul double %461, %340

  %463 = tail call double @llvm.trunc.f64(double %462) #10

  %464 = tail call double @llvm.fabs.f64(double %463) #10

  %465 = fcmp ogt double %464, 0x41DFFFFFFFC00000

  %466 = fptosi double %463 to i32

  %467 = fmul double %373, %461

  store i32 0, i32* %112, align 1, !tbaa !1307

  store i32 0, i32* %114, align 1, !tbaa !1307

  %468 = sitofp i32 %466 to double

  %469 = select i1 %465, double 0xC1E0000000000000, double %468

  %470 = fmul double %341, %469

  %471 = fsub double %461, %470

  %472 = load <2 x double>, <2 x double>* %379, align 1

  %473 = extractelement <2 x double> %472, i32 0

  %474 = fmul double %473, %471

  %475 = fmul double %471, %366

  %476 = fmul double %469, %473

  %477 = fadd double %476, %475

  %478 = fmul double %340, %477

  %479 = tail call double @llvm.trunc.f64(double %478) #10

  %480 = tail call double @llvm.fabs.f64(double %479) #10

  %481 = fcmp ogt double %480, 0x41DFFFFFFFC00000

  %482 = fptosi double %479 to i32

  %483 = fadd double %467, %431

  store double %483, double* %211, align 1, !tbaa !1293

  store i64 %374, i64* %213, align 1, !tbaa !1293

  %484 = sitofp i32 %482 to double

  %485 = select i1 %481, double 0xC1E0000000000000, double %484

  %486 = fmul double %485, %341

  %487 = fsub double %477, %486

  %488 = fmul double %487, %341

  %489 = fadd double %488, %474

  %490 = fmul double %373, %489

  %491 = tail call double @llvm.trunc.f64(double %490) #10

  %492 = tail call double @llvm.fabs.f64(double %491) #10

  %493 = fcmp ogt double %492, 0x41DFFFFFFFC00000

  %494 = fptosi double %491 to i32

  %495 = sitofp i32 %494 to double

  %496 = select i1 %493, double 0xC1E0000000000000, double %495

  %497 = fmul double %496, %325

  %498 = fsub double %489, %497

  store double %498, double* %75, align 1, !tbaa !1293

  store <2 x i64> %343, <2 x i64>* %123, align 1, !tbaa !1293

  %499 = fmul double %373, %498

  store double %499, double* %40, align 1, !tbaa !1293

  store i64 %374, i64* %39, align 1, !tbaa !1293

  %500 = load <2 x double>, <2 x double>* %380, align 1

  %501 = extractelement <2 x double> %500, i32 0

  %502 = fmul double %501, %340

  %503 = tail call double @llvm.trunc.f64(double %502) #10

  %504 = tail call double @llvm.fabs.f64(double %503) #10

  %505 = fcmp ogt double %504, 0x41DFFFFFFFC00000

  %506 = fptosi double %503 to i32

  %507 = sitofp i32 %506 to double

  %508 = select i1 %505, double 0xC1E0000000000000, double %507

  %509 = fmul double %341, %508

  %510 = fsub double %501, %509

  %511 = fmul double %366, %510

  %512 = load double, double* %73, align 1

  %513 = fmul double %508, %512

  %514 = fadd double %513, %511

  store <2 x i64> %328, <2 x i64>* %63, align 1, !tbaa !1293

  %515 = fmul double %340, %514

  store i64 %359, i64* %36, align 1, !tbaa !1293

  %516 = tail call double @llvm.trunc.f64(double %515) #10

  %517 = tail call double @llvm.fabs.f64(double %516) #10

  %518 = fcmp ogt double %517, 0x41DFFFFFFFC00000

  %519 = fptosi double %516 to i32

  store i32 0, i32* %352, align 1, !tbaa !1307

  store i32 0, i32* %354, align 1, !tbaa !1307

  store i32 0, i32* %355, align 1, !tbaa !1307

  store i32 0, i32* %357, align 1, !tbaa !1307

  %520 = sitofp i32 %519 to double

  %521 = select i1 %518, double 0xC1E0000000000000, double %520

  %522 = fmul double %521, %341

  store double %522, double* %43, align 1, !tbaa !1293

  %523 = fsub double %514, %522

  %524 = fmul double %523, %341

  %525 = fmul double %510, %512

  %526 = fadd double %525, %524

  %527 = fmul double %373, %526

  %528 = tail call double @llvm.trunc.f64(double %527) #10

  %529 = tail call double @llvm.fabs.f64(double %528) #10

  %530 = fcmp ogt double %529, 0x41DFFFFFFFC00000

  %531 = fptosi double %528 to i32

  %532 = sitofp i32 %531 to double

  %533 = select i1 %530, double 0xC1E0000000000000, double %532

  %534 = load double, double* %40, align 1

  %535 = load double, double* %211, align 1

  %536 = fadd double %534, %535

  store double %536, double* %40, align 1, !tbaa !1293

  %537 = fmul double %533, %325

  %538 = fsub double %526, %537

  store double %538, double* %75, align 1, !tbaa !1293

  %539 = fmul double %373, %538

  %540 = fadd double %539, %536

  %541 = fmul double %540, %327

  %542 = tail call double @llvm.trunc.f64(double %541) #10

  %543 = tail call double @llvm.fabs.f64(double %542) #10

  %544 = fcmp ogt double %543, 0x41DFFFFFFFC00000

  %545 = fptosi double %542 to i32

  %546 = zext i32 %545 to i64

  %547 = select i1 %544, i64 2147483648, i64 %546

  %548 = shl i64 %381, 2

  %549 = add i64 %358, %548

  %550 = trunc i64 %547 to i32

  %551 = inttoptr i64 %549 to i32*

  store i32 %550, i32* %551

  %552 = add i64 %381, 1

  %553 = icmp eq i64 %552, 0

  br i1 %553, label %block_401158, label %block_400f10



block_400c45:                                     ; preds = %block_400c10

  store i64 4503599627370496000, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to i64*)

  store i64 4710765210229538816, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to i64*)

  store i64 4400016835940974592, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to i64*)

  store i64 4814348001659060224, i64* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to i64*)

  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1040) to i8*)

  %554 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 944) to double*)

  %555 = bitcast %union.VectorReg* %19 to double*

  store double %554, double* %555, align 1, !tbaa !1293

  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 11, i32 0, i32 0, i32 0, i64 1

  %557 = bitcast i64* %556 to double*

  store double 0.000000e+00, double* %557, align 1, !tbaa !1293

  %558 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 952) to double*)

  %559 = bitcast %union.VectorReg* %13 to double*

  store double %558, double* %559, align 1, !tbaa !1293

  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %561 = bitcast i64* %560 to double*

  store double 0.000000e+00, double* %561, align 1, !tbaa !1293

  %562 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 960) to double*)

  %563 = bitcast %union.VectorReg* %10 to double*

  store double %562, double* %563, align 1, !tbaa !1293

  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %565 = bitcast i64* %564 to double*

  store double 0.000000e+00, double* %565, align 1, !tbaa !1293

  %566 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fc0__rodata_type* @seg_401fc0__rodata to i64), i64 968) to double*)

  %567 = bitcast %union.VectorReg* %16 to double*

  store double %566, double* %567, align 1, !tbaa !1293

  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %569 = bitcast i64* %568 to double*

  store double 0.000000e+00, double* %569, align 1, !tbaa !1293

  br label %block_400cb2



block_400c21:                                     ; preds = %block_400c10

  %570 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to double*)

  %571 = bitcast %union.VectorReg* %19 to double*

  store double %570, double* %571, align 1, !tbaa !1293

  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 11, i32 0, i32 0, i32 0, i64 1

  %573 = bitcast i64* %572 to double*

  store double 0.000000e+00, double* %573, align 1, !tbaa !1293

  %574 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to double*)

  %575 = bitcast %union.VectorReg* %13 to double*

  store double %574, double* %575, align 1, !tbaa !1293

  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %577 = bitcast i64* %576 to double*

  store double 0.000000e+00, double* %577, align 1, !tbaa !1293

  %578 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to double*)

  %579 = bitcast %union.VectorReg* %10 to double*

  store double %578, double* %579, align 1, !tbaa !1293

  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %581 = bitcast i64* %580 to double*

  store double 0.000000e+00, double* %581, align 1, !tbaa !1293

  %582 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to double*)

  %583 = bitcast %union.VectorReg* %16 to double*

  store double %582, double* %583, align 1, !tbaa !1293

  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %585 = bitcast i64* %584 to double*

  store double 0.000000e+00, double* %585, align 1, !tbaa !1293

  br label %block_400cb2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4006d8:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 6304248, i64* %4, align 8, !tbaa !1240

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %11, align 1, !tbaa !1244

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 1, i8* %12, align 1, !tbaa !1258

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1262

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 1, i8* %14, align 1, !tbaa !1259

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 0, i8* %15, align 1, !tbaa !1260

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %16, align 1, !tbaa !1261

  %17 = inttoptr i64 %9 to i64*

  %18 = load i64, i64* %17

  store i64 %18, i64* %6, align 8, !tbaa !1240

  %19 = inttoptr i64 %8 to i64*

  %20 = load i64, i64* %19

  store i64 %20, i64* %3, align 8, !tbaa !1240

  %21 = add i64 %8, 8

  store i64 %21, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400718:

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

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i64 0, i64* %5, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1443

  store i8 1, i8* %13, align 1, !tbaa !1443

  store i8 0, i8* %14, align 1, !tbaa !1443

  store i8 1, i8* %15, align 1, !tbaa !1443

  store i8 0, i8* %16, align 1, !tbaa !1443

  store i8 0, i8* %17, align 1, !tbaa !1443

  %18 = inttoptr i64 %10 to i64*

  %19 = load i64, i64* %18

  store i64 %19, i64* %7, align 8, !tbaa !1240

  %20 = inttoptr i64 %9 to i64*

  %21 = load i64, i64* %20

  store i64 %21, i64* %3, align 8, !tbaa !1240

  %22 = add i64 %9, 8

  store i64 %22, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_4009d0_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_4009d0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %11 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = load i64, i64* %9, align 8

  %14 = load i64, i64* %12, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = load i32, i32* %7, align 4

  %24 = zext i32 %23 to i64

  store i64 %24, i64* %9, align 8, !tbaa !1240

  %25 = add i64 %14, -16

  store i64 %25, i64* %11, align 8, !tbaa !1240

  %26 = add i64 %1, 5408

  %27 = add i64 %1, 17

  %28 = add i64 %14, -32

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  store i64 %28, i64* %12, align 8, !tbaa !1240

  %30 = tail call %struct.Memory* @sub_401ef0_wtime_(%struct.State* nonnull %0, i64 %26, %struct.Memory* %2)

  %31 = load i64, i64* %12, align 8

  %32 = add i64 %31, 8

  %33 = inttoptr i64 %32 to i64*

  %34 = load i64, i64* %33

  store i64 %34, i64* %8, align 8, !tbaa !1240

  %35 = load i32, i32* %5, align 4

  %36 = sext i32 %35 to i64

  store i64 %36, i64* %10, align 8, !tbaa !1240

  %37 = shl nsw i64 %36, 3

  %38 = add i64 %37, add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 528)

  %39 = inttoptr i64 %38 to i64*

  store i64 %34, i64* %39

  %40 = add i64 %31, 16

  %41 = icmp ugt i64 %31, -17

  %42 = zext i1 %41 to i8

  store i8 %42, i8* %17, align 1, !tbaa !1244

  %43 = trunc i64 %40 to i32

  %44 = and i32 %43, 255

  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #10

  %46 = trunc i32 %45 to i8

  %47 = and i8 %46, 1

  %48 = xor i8 %47, 1

  store i8 %48, i8* %18, align 1, !tbaa !1258

  %49 = xor i64 %31, 16

  %50 = xor i64 %49, %40

  %51 = lshr i64 %50, 4

  %52 = trunc i64 %51 to i8

  %53 = and i8 %52, 1

  store i8 %53, i8* %19, align 1, !tbaa !1262

  %54 = icmp eq i64 %40, 0

  %55 = zext i1 %54 to i8

  store i8 %55, i8* %20, align 1, !tbaa !1259

  %56 = lshr i64 %40, 63

  %57 = trunc i64 %56 to i8

  store i8 %57, i8* %21, align 1, !tbaa !1260

  %58 = lshr i64 %31, 63

  %59 = xor i64 %56, %58

  %60 = add nuw nsw i64 %59, %56

  %61 = icmp eq i64 %60, 2

  %62 = zext i1 %61 to i8

  store i8 %62, i8* %22, align 1, !tbaa !1261

  %63 = add i64 %31, 24

  %64 = inttoptr i64 %40 to i64*

  %65 = load i64, i64* %64

  store i64 %65, i64* %9, align 8, !tbaa !1240

  %66 = inttoptr i64 %63 to i64*

  %67 = load i64, i64* %66

  store i64 %67, i64* %3, align 8, !tbaa !1240

  %68 = add i64 %31, 32

  store i64 %68, i64* %12, align 8, !tbaa !1240

  ret %struct.Memory* %30

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400670__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195952, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400670__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195952, %struct.Memory* null)

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

define i64 @callback_sub_400750_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196176, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400750_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196176, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400720___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

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

  %18 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196128, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401fb0___libc_csu_fini() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202416, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401fb0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4202416, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401f40___libc_csu_init() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202304, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401f40___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4202304, %struct.Memory* null)

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

  store i64 4200256, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_401740_main(%struct.State* nonnull @__mcsema_reg_state, i64 4200256, %struct.Memory* null)

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

  %27 = tail call i64 %26(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25) #10

  store i64 %27, i64* %5, align 8

  %28 = inttoptr i64 %19 to i64*

  %29 = load i64, i64* %28

  store i64 %29, i64* %4, align 8

  store i64 %20, i64* %10, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6056e0___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6056c8_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400650_fflush(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6056b8_puts(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %13 = tail call i64 @puts(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400640_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400660_fopen(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6056b0_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6056c0_fclose(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400620_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400630_memset(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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



; Function Attrs: nobuiltin noinline

define i64 @full_verify(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198752, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401160_full_verify(%struct.State* nonnull @__mcsema_reg_state, i64 4198752, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @create_seq(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197392, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull @__mcsema_reg_state, i64 4197392, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @rank(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4199184, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull @__mcsema_reg_state, i64 4199184, %struct.Memory* null)

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

  store i64 4196192, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400760_c_print_results(%struct.State* nonnull @__mcsema_reg_state, i64 4196192, %struct.Memory* null)

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

  store i64 4196928, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull @__mcsema_reg_state, i64 4196928, %struct.Memory* null)

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

  store i64 4202420, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401fb4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4202420, %struct.Memory* null)

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

  store i64 4195768, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4005b8__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195768, %struct.Memory* null)

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

  %18 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull @__mcsema_reg_state, i64 4196800, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @deallocate_arrays(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197024, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400aa0_deallocate_arrays(%struct.State* nonnull @__mcsema_reg_state, i64 4197024, %struct.Memory* null)

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

  store i64 4196864, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull @__mcsema_reg_state, i64 4196864, %struct.Memory* null)

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

  store i64 4196816, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull @__mcsema_reg_state, i64 4196816, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

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

  store i64 4197088, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400ae0_randlc(%struct.State* nonnull @__mcsema_reg_state, i64 4197088, %struct.Memory* null)

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

  store i64 4202224, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401ef0_wtime_(%struct.State* nonnull @__mcsema_reg_state, i64 4202224, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @allocate_arrays(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196944, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400a50_allocate_arrays(%struct.State* nonnull @__mcsema_reg_state, i64 4196944, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #10 {

  %1 = tail call i64 @callback_sub_401fb0___libc_csu_fini()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_constructor() #10 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_401f40___libc_csu_init()

  ret void

}



; Function Attrs: noinline optnone

define %struct.State* @__mcsema_debug_get_reg_state() #11 {

  ret %struct.State* @__mcsema_reg_state

}



; Function Attrs: noreturn nounwind

declare void @llvm.trap() #12



; Function Attrs: argmemonly nounwind

declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #13



; Function Attrs: argmemonly nounwind

declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #13



attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #1 = { nounwind readnone speculatable }

attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #3 = { noinline }

attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #5 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #6 = { nobuiltin noinline }

attributes #7 = { norecurse nounwind }

attributes #8 = { nobuiltin noinline nounwind }

attributes #9 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #10 = { nounwind }

attributes #11 = { noinline optnone }

attributes #12 = { noreturn nounwind }

attributes #13 = { argmemonly nounwind }

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

!1263 = !{!1264}

!1264 = distinct !{!1264, !1265, !"ext_6056e0___libc_start_main: argument 0"}

!1265 = distinct !{!1265, !"ext_6056e0___libc_start_main"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_6056e0___libc_start_main: argument 1"}

!1268 = !{!1269}

!1269 = distinct !{!1269, !1270, !"ext_400640_malloc: argument 0"}

!1270 = distinct !{!1270, !"ext_400640_malloc"}

!1271 = !{!1272}

!1272 = distinct !{!1272, !1270, !"ext_400640_malloc: argument 1"}

!1273 = !{!1274}

!1274 = distinct !{!1274, !1275, !"ext_400640_malloc: argument 0"}

!1275 = distinct !{!1275, !"ext_400640_malloc"}

!1276 = !{!1277}

!1277 = distinct !{!1277, !1275, !"ext_400640_malloc: argument 1"}

!1278 = !{!1279}

!1279 = distinct !{!1279, !1280, !"ext_400640_malloc: argument 0"}

!1280 = distinct !{!1280, !"ext_400640_malloc"}

!1281 = !{!1282}

!1282 = distinct !{!1282, !1280, !"ext_400640_malloc: argument 1"}

!1283 = !{!1284}

!1284 = distinct !{!1284, !1285, !"ext_400640_malloc: argument 0"}

!1285 = distinct !{!1285, !"ext_400640_malloc"}

!1286 = !{!1287}

!1287 = distinct !{!1287, !1285, !"ext_400640_malloc: argument 1"}

!1288 = !{!1289}

!1289 = distinct !{!1289, !1290, !"ext_400660_fopen: argument 0"}

!1290 = distinct !{!1290, !"ext_400660_fopen"}

!1291 = !{!1292}

!1292 = distinct !{!1292, !1290, !"ext_400660_fopen: argument 1"}

!1293 = !{!1294, !1294, i64 0}

!1294 = !{!"double", !1242, i64 0}

!1295 = !{!1296}

!1296 = distinct !{!1296, !1297, !"ext_6056c8_printf: argument 0"}

!1297 = distinct !{!1297, !"ext_6056c8_printf"}

!1298 = !{!1299}

!1299 = distinct !{!1299, !1297, !"ext_6056c8_printf: argument 1"}

!1300 = !{!1301}

!1301 = distinct !{!1301, !1302, !"ext_400650_fflush: argument 0"}

!1302 = distinct !{!1302, !"ext_400650_fflush"}

!1303 = !{!1304}

!1304 = distinct !{!1304, !1302, !"ext_400650_fflush: argument 1"}

!1305 = !{!1306, !1306, i64 0}

!1306 = !{!"float", !1242, i64 0}

!1307 = !{!1257, !1257, i64 0}

!1308 = !{!1309}

!1309 = distinct !{!1309, !1310, !"ext_6056b8_puts: argument 0"}

!1310 = distinct !{!1310, !"ext_6056b8_puts"}

!1311 = !{!1312}

!1312 = distinct !{!1312, !1310, !"ext_6056b8_puts: argument 1"}

!1313 = !{!1314}

!1314 = distinct !{!1314, !1315, !"ext_6056c8_printf: argument 0"}

!1315 = distinct !{!1315, !"ext_6056c8_printf"}

!1316 = !{!1317}

!1317 = distinct !{!1317, !1315, !"ext_6056c8_printf: argument 1"}

!1318 = !{!1319}

!1319 = distinct !{!1319, !1320, !"ext_6056c8_printf: argument 0"}

!1320 = distinct !{!1320, !"ext_6056c8_printf"}

!1321 = !{!1322}

!1322 = distinct !{!1322, !1320, !"ext_6056c8_printf: argument 1"}

!1323 = !{!1324}

!1324 = distinct !{!1324, !1325, !"ext_6056c8_printf: argument 0"}

!1325 = distinct !{!1325, !"ext_6056c8_printf"}

!1326 = !{!1327}

!1327 = distinct !{!1327, !1325, !"ext_6056c8_printf: argument 1"}

!1328 = !{!1329}

!1329 = distinct !{!1329, !1330, !"ext_6056c8_printf: argument 0"}

!1330 = distinct !{!1330, !"ext_6056c8_printf"}

!1331 = !{!1332}

!1332 = distinct !{!1332, !1330, !"ext_6056c8_printf: argument 1"}

!1333 = !{!1334}

!1334 = distinct !{!1334, !1335, !"ext_6056c8_printf: argument 0"}

!1335 = distinct !{!1335, !"ext_6056c8_printf"}

!1336 = !{!1337}

!1337 = distinct !{!1337, !1335, !"ext_6056c8_printf: argument 1"}

!1338 = !{!1339}

!1339 = distinct !{!1339, !1340, !"ext_6056b8_puts: argument 0"}

!1340 = distinct !{!1340, !"ext_6056b8_puts"}

!1341 = !{!1342}

!1342 = distinct !{!1342, !1340, !"ext_6056b8_puts: argument 1"}

!1343 = !{!1344}

!1344 = distinct !{!1344, !1345, !"ext_6056c8_printf: argument 0"}

!1345 = distinct !{!1345, !"ext_6056c8_printf"}

!1346 = !{!1347}

!1347 = distinct !{!1347, !1345, !"ext_6056c8_printf: argument 1"}

!1348 = !{!1349}

!1349 = distinct !{!1349, !1350, !"ext_6056c8_printf: argument 0"}

!1350 = distinct !{!1350, !"ext_6056c8_printf"}

!1351 = !{!1352}

!1352 = distinct !{!1352, !1350, !"ext_6056c8_printf: argument 1"}

!1353 = !{!1354}

!1354 = distinct !{!1354, !1355, !"ext_6056c8_printf: argument 0"}

!1355 = distinct !{!1355, !"ext_6056c8_printf"}

!1356 = !{!1357}

!1357 = distinct !{!1357, !1355, !"ext_6056c8_printf: argument 1"}

!1358 = !{!1359}

!1359 = distinct !{!1359, !1360, !"ext_400650_fflush: argument 0"}

!1360 = distinct !{!1360, !"ext_400650_fflush"}

!1361 = !{!1362}

!1362 = distinct !{!1362, !1360, !"ext_400650_fflush: argument 1"}

!1363 = !{!1364}

!1364 = distinct !{!1364, !1365, !"ext_6056b0_free: argument 0"}

!1365 = distinct !{!1365, !"ext_6056b0_free"}

!1366 = !{!1367}

!1367 = distinct !{!1367, !1365, !"ext_6056b0_free: argument 1"}

!1368 = !{!1369}

!1369 = distinct !{!1369, !1370, !"ext_6056b0_free: argument 0"}

!1370 = distinct !{!1370, !"ext_6056b0_free"}

!1371 = !{!1372}

!1372 = distinct !{!1372, !1370, !"ext_6056b0_free: argument 1"}

!1373 = !{!1374}

!1374 = distinct !{!1374, !1375, !"ext_6056b0_free: argument 0"}

!1375 = distinct !{!1375, !"ext_6056b0_free"}

!1376 = !{!1377}

!1377 = distinct !{!1377, !1375, !"ext_6056b0_free: argument 1"}

!1378 = !{!1379}

!1379 = distinct !{!1379, !1380, !"ext_6056b0_free: argument 0"}

!1380 = distinct !{!1380, !"ext_6056b0_free"}

!1381 = !{!1382}

!1382 = distinct !{!1382, !1380, !"ext_6056b0_free: argument 1"}

!1383 = !{!1384}

!1384 = distinct !{!1384, !1385, !"ext_6056b8_puts: argument 0"}

!1385 = distinct !{!1385, !"ext_6056b8_puts"}

!1386 = !{!1387}

!1387 = distinct !{!1387, !1385, !"ext_6056b8_puts: argument 1"}

!1388 = !{!1389}

!1389 = distinct !{!1389, !1390, !"ext_6056c8_printf: argument 0"}

!1390 = distinct !{!1390, !"ext_6056c8_printf"}

!1391 = !{!1392}

!1392 = distinct !{!1392, !1390, !"ext_6056c8_printf: argument 1"}

!1393 = !{!1394}

!1394 = distinct !{!1394, !1395, !"ext_6056c8_printf: argument 0"}

!1395 = distinct !{!1395, !"ext_6056c8_printf"}

!1396 = !{!1397}

!1397 = distinct !{!1397, !1395, !"ext_6056c8_printf: argument 1"}

!1398 = !{!1399}

!1399 = distinct !{!1399, !1400, !"ext_6056c8_printf: argument 0"}

!1400 = distinct !{!1400, !"ext_6056c8_printf"}

!1401 = !{!1402}

!1402 = distinct !{!1402, !1400, !"ext_6056c8_printf: argument 1"}

!1403 = !{!1404}

!1404 = distinct !{!1404, !1405, !"ext_6056c8_printf: argument 0"}

!1405 = distinct !{!1405, !"ext_6056c8_printf"}

!1406 = !{!1407}

!1407 = distinct !{!1407, !1405, !"ext_6056c8_printf: argument 1"}

!1408 = !{!1409}

!1409 = distinct !{!1409, !1410, !"ext_6056c8_printf: argument 0"}

!1410 = distinct !{!1410, !"ext_6056c8_printf"}

!1411 = !{!1412}

!1412 = distinct !{!1412, !1410, !"ext_6056c8_printf: argument 1"}

!1413 = !{!1414}

!1414 = distinct !{!1414, !1415, !"ext_6056c8_printf: argument 0"}

!1415 = distinct !{!1415, !"ext_6056c8_printf"}

!1416 = !{!1417}

!1417 = distinct !{!1417, !1415, !"ext_6056c8_printf: argument 1"}

!1418 = !{!1419}

!1419 = distinct !{!1419, !1420, !"ext_6056c8_printf: argument 0"}

!1420 = distinct !{!1420, !"ext_6056c8_printf"}

!1421 = !{!1422}

!1422 = distinct !{!1422, !1420, !"ext_6056c8_printf: argument 1"}

!1423 = !{!1424}

!1424 = distinct !{!1424, !1425, !"ext_6056c8_printf: argument 0"}

!1425 = distinct !{!1425, !"ext_6056c8_printf"}

!1426 = !{!1427}

!1427 = distinct !{!1427, !1425, !"ext_6056c8_printf: argument 1"}

!1428 = !{!1429}

!1429 = distinct !{!1429, !1430, !"ext_6056c8_printf: argument 0"}

!1430 = distinct !{!1430, !"ext_6056c8_printf"}

!1431 = !{!1432}

!1432 = distinct !{!1432, !1430, !"ext_6056c8_printf: argument 1"}

!1433 = !{!1434}

!1434 = distinct !{!1434, !1435, !"ext_6056c8_printf: argument 0"}

!1435 = distinct !{!1435, !"ext_6056c8_printf"}

!1436 = !{!1437}

!1437 = distinct !{!1437, !1435, !"ext_6056c8_printf: argument 1"}

!1438 = !{!1439}

!1439 = distinct !{!1439, !1440, !"ext_6056c0_fclose: argument 0"}

!1440 = distinct !{!1440, !"ext_6056c0_fclose"}

!1441 = !{!1442}

!1442 = distinct !{!1442, !1440, !"ext_6056c0_fclose: argument 1"}

!1443 = !{!1242, !1242, i64 0}

!1444 = !{!1445}

!1445 = distinct !{!1445, !1446, !"ext_6056c8_printf: argument 0"}

!1446 = distinct !{!1446, !"ext_6056c8_printf"}

!1447 = !{!1448}

!1448 = distinct !{!1448, !1446, !"ext_6056c8_printf: argument 1"}

!1449 = !{!1450}

!1450 = distinct !{!1450, !1451, !"ext_400650_fflush: argument 0"}

!1451 = distinct !{!1451, !"ext_400650_fflush"}

!1452 = !{!1453}

!1453 = distinct !{!1453, !1451, !"ext_400650_fflush: argument 1"}

!1454 = !{!1455}

!1455 = distinct !{!1455, !1456, !"ext_400640_malloc: argument 0"}

!1456 = distinct !{!1456, !"ext_400640_malloc"}

!1457 = !{!1458}

!1458 = distinct !{!1458, !1459, !"ext_400640_malloc: argument 0"}

!1459 = distinct !{!1459, !"ext_400640_malloc"}

!1460 = !{!1461}

!1461 = distinct !{!1461, !1462, !"ext_400640_malloc: argument 0"}

!1462 = distinct !{!1462, !"ext_400640_malloc"}

!1463 = !{!1464}

!1464 = distinct !{!1464, !1465, !"ext_400640_malloc: argument 0"}

!1465 = distinct !{!1465, !"ext_400640_malloc"}

!1466 = !{!1467}

!1467 = distinct !{!1467, !1468, !"ext_6056c8_printf: argument 0"}

!1468 = distinct !{!1468, !"ext_6056c8_printf"}

!1469 = !{!1470}

!1470 = distinct !{!1470, !1468, !"ext_6056c8_printf: argument 1"}

!1471 = !{!1472}

!1472 = distinct !{!1472, !1473, !"ext_6056c8_printf: argument 0"}

!1473 = distinct !{!1473, !"ext_6056c8_printf"}

!1474 = !{!1475}

!1475 = distinct !{!1475, !1473, !"ext_6056c8_printf: argument 1"}

!1476 = !{!1477}

!1477 = distinct !{!1477, !1478, !"ext_6056b8_puts: argument 0"}

!1478 = distinct !{!1478, !"ext_6056b8_puts"}

!1479 = !{!1480}

!1480 = distinct !{!1480, !1478, !"ext_6056b8_puts: argument 1"}

!1481 = !{!1482}

!1482 = distinct !{!1482, !1483, !"ext_6056c8_printf: argument 0"}

!1483 = distinct !{!1483, !"ext_6056c8_printf"}

!1484 = !{!1485}

!1485 = distinct !{!1485, !1483, !"ext_6056c8_printf: argument 1"}

!1486 = !{!1487}

!1487 = distinct !{!1487, !1488, !"ext_6056c8_printf: argument 0"}

!1488 = distinct !{!1488, !"ext_6056c8_printf"}

!1489 = !{!1490}

!1490 = distinct !{!1490, !1488, !"ext_6056c8_printf: argument 1"}

!1491 = !{!1492}

!1492 = distinct !{!1492, !1493, !"ext_6056b8_puts: argument 0"}

!1493 = distinct !{!1493, !"ext_6056b8_puts"}

!1494 = !{!1495}

!1495 = distinct !{!1495, !1493, !"ext_6056b8_puts: argument 1"}

!1496 = !{!1497}

!1497 = distinct !{!1497, !1498, !"ext_6056c8_printf: argument 0"}

!1498 = distinct !{!1498, !"ext_6056c8_printf"}

!1499 = !{!1500}

!1500 = distinct !{!1500, !1498, !"ext_6056c8_printf: argument 1"}

!1501 = !{!1502}

!1502 = distinct !{!1502, !1503, !"ext_6056c8_printf: argument 0"}

!1503 = distinct !{!1503, !"ext_6056c8_printf"}

!1504 = !{!1505}

!1505 = distinct !{!1505, !1503, !"ext_6056c8_printf: argument 1"}

!1506 = !{!1507}

!1507 = distinct !{!1507, !1508, !"ext_6056c8_printf: argument 0"}

!1508 = distinct !{!1508, !"ext_6056c8_printf"}

!1509 = !{!1510}

!1510 = distinct !{!1510, !1508, !"ext_6056c8_printf: argument 1"}

!1511 = !{!1512}

!1512 = distinct !{!1512, !1513, !"ext_6056c8_printf: argument 0"}

!1513 = distinct !{!1513, !"ext_6056c8_printf"}

!1514 = !{!1515}

!1515 = distinct !{!1515, !1513, !"ext_6056c8_printf: argument 1"}

!1516 = !{!1517}

!1517 = distinct !{!1517, !1518, !"ext_6056c8_printf: argument 0"}

!1518 = distinct !{!1518, !"ext_6056c8_printf"}

!1519 = !{!1520}

!1520 = distinct !{!1520, !1518, !"ext_6056c8_printf: argument 1"}

!1521 = !{!1522}

!1522 = distinct !{!1522, !1523, !"ext_6056c8_printf: argument 0"}

!1523 = distinct !{!1523, !"ext_6056c8_printf"}

!1524 = !{!1525}

!1525 = distinct !{!1525, !1523, !"ext_6056c8_printf: argument 1"}

!1526 = !{!1527}

!1527 = distinct !{!1527, !1528, !"ext_6056b8_puts: argument 0"}

!1528 = distinct !{!1528, !"ext_6056b8_puts"}

!1529 = !{!1530}

!1530 = distinct !{!1530, !1528, !"ext_6056b8_puts: argument 1"}

!1531 = !{!1532}

!1532 = distinct !{!1532, !1533, !"ext_6056b8_puts: argument 0"}

!1533 = distinct !{!1533, !"ext_6056b8_puts"}

!1534 = !{!1535}

!1535 = distinct !{!1535, !1533, !"ext_6056b8_puts: argument 1"}

!1536 = !{!1537}

!1537 = distinct !{!1537, !1538, !"ext_6056b8_puts: argument 0"}

!1538 = distinct !{!1538, !"ext_6056b8_puts"}

!1539 = !{!1540}

!1540 = distinct !{!1540, !1538, !"ext_6056b8_puts: argument 1"}

!1541 = !{!1542}

!1542 = distinct !{!1542, !1543, !"ext_6056b8_puts: argument 0"}

!1543 = distinct !{!1543, !"ext_6056b8_puts"}

!1544 = !{!1545}

!1545 = distinct !{!1545, !1543, !"ext_6056b8_puts: argument 1"}

!1546 = !{!1547}

!1547 = distinct !{!1547, !1548, !"ext_6056b8_puts: argument 0"}

!1548 = distinct !{!1548, !"ext_6056b8_puts"}

!1549 = !{!1550}

!1550 = distinct !{!1550, !1548, !"ext_6056b8_puts: argument 1"}

!1551 = !{!1552}

!1552 = distinct !{!1552, !1553, !"ext_6056b8_puts: argument 0"}

!1553 = distinct !{!1553, !"ext_6056b8_puts"}

!1554 = !{!1555}

!1555 = distinct !{!1555, !1553, !"ext_6056b8_puts: argument 1"}

!1556 = !{!1557}

!1557 = distinct !{!1557, !1558, !"ext_6056c8_printf: argument 0"}

!1558 = distinct !{!1558, !"ext_6056c8_printf"}

!1559 = !{!1560}

!1560 = distinct !{!1560, !1558, !"ext_6056c8_printf: argument 1"}

!1561 = !{!1562}

!1562 = distinct !{!1562, !1563, !"ext_6056c8_printf: argument 0"}

!1563 = distinct !{!1563, !"ext_6056c8_printf"}

!1564 = !{!1565}

!1565 = distinct !{!1565, !1563, !"ext_6056c8_printf: argument 1"}

!1566 = !{!1567}

!1567 = distinct !{!1567, !1568, !"ext_6056c8_printf: argument 0"}

!1568 = distinct !{!1568, !"ext_6056c8_printf"}

!1569 = !{!1570}

!1570 = distinct !{!1570, !1568, !"ext_6056c8_printf: argument 1"}

!1571 = !{!1572}

!1572 = distinct !{!1572, !1573, !"ext_6056c8_printf: argument 0"}

!1573 = distinct !{!1573, !"ext_6056c8_printf"}

!1574 = !{!1575}

!1575 = distinct !{!1575, !1573, !"ext_6056c8_printf: argument 1"}

!1576 = !{!1577}

!1577 = distinct !{!1577, !1578, !"ext_6056c8_printf: argument 0"}

!1578 = distinct !{!1578, !"ext_6056c8_printf"}

!1579 = !{!1580}

!1580 = distinct !{!1580, !1578, !"ext_6056c8_printf: argument 1"}

!1581 = !{!1582}

!1582 = distinct !{!1582, !1583, !"ext_6056c8_printf: argument 0"}

!1583 = distinct !{!1583, !"ext_6056c8_printf"}

!1584 = !{!1585}

!1585 = distinct !{!1585, !1583, !"ext_6056c8_printf: argument 1"}

!1586 = !{!1587}

!1587 = distinct !{!1587, !1588, !"ext_400620_gettimeofday: argument 0"}

!1588 = distinct !{!1588, !"ext_400620_gettimeofday"}

!1589 = !{!1590}

!1590 = distinct !{!1590, !1591, !"ext_6056b0_free: argument 0"}

!1591 = distinct !{!1591, !"ext_6056b0_free"}

!1592 = !{!1593}

!1593 = distinct !{!1593, !1591, !"ext_6056b0_free: argument 1"}

!1594 = !{!1595}

!1595 = distinct !{!1595, !1596, !"ext_6056b0_free: argument 0"}

!1596 = distinct !{!1596, !"ext_6056b0_free"}

!1597 = !{!1598}

!1598 = distinct !{!1598, !1599, !"ext_6056b0_free: argument 0"}

!1599 = distinct !{!1599, !"ext_6056b0_free"}

!1600 = !{!1601}

!1601 = distinct !{!1601, !1602, !"ext_6056b0_free: argument 0"}

!1602 = distinct !{!1602, !"ext_6056b0_free"}

!1603 = !{!1604}

!1604 = distinct !{!1604, !1605, !"ext_6056b0_free: argument 0"}

!1605 = distinct !{!1605, !"ext_6056b0_free"}

!1606 = !{!1607}

!1607 = distinct !{!1607, !1605, !"ext_6056b0_free: argument 1"}

!1608 = !{!1609}

!1609 = distinct !{!1609, !1610, !"ext_400630_memset: argument 0"}

!1610 = distinct !{!1610, !"ext_400630_memset"}

!1611 = !{!1612}

!1612 = distinct !{!1612, !1610, !"ext_400630_memset: argument 1"}

!1613 = !{!1614}

!1614 = distinct !{!1614, !1615, !"ext_400630_memset: argument 0"}

!1615 = distinct !{!1615, !"ext_400630_memset"}

!1616 = !{!1617}

!1617 = distinct !{!1617, !1615, !"ext_400630_memset: argument 1"}

!1618 = !{!1619}

!1619 = distinct !{!1619, !1620, !"ext_6056c8_printf: argument 0"}

!1620 = distinct !{!1620, !"ext_6056c8_printf"}

!1621 = !{!1622}

!1622 = distinct !{!1622, !1620, !"ext_6056c8_printf: argument 1"}

!1623 = !{!1624}

!1624 = distinct !{!1624, !1625, !"ext_6056c8_printf: argument 0"}

!1625 = distinct !{!1625, !"ext_6056c8_printf"}

!1626 = !{!1627}

!1627 = distinct !{!1627, !1625, !"ext_6056c8_printf: argument 1"}

!1628 = !{!1629}

!1629 = distinct !{!1629, !1630, !"ext_6056c8_printf: argument 0"}

!1630 = distinct !{!1630, !"ext_6056c8_printf"}

!1631 = !{!1632}

!1632 = distinct !{!1632, !1630, !"ext_6056c8_printf: argument 1"}

!1633 = !{!1634}

!1634 = distinct !{!1634, !1635, !"ext_6056c8_printf: argument 0"}

!1635 = distinct !{!1635, !"ext_6056c8_printf"}

!1636 = !{!1637}

!1637 = distinct !{!1637, !1635, !"ext_6056c8_printf: argument 1"}

!1638 = !{!1639}

!1639 = distinct !{!1639, !1640, !"ext_6056c8_printf: argument 0"}

!1640 = distinct !{!1640, !"ext_6056c8_printf"}

!1641 = !{!1642}

!1642 = distinct !{!1642, !1640, !"ext_6056c8_printf: argument 1"}
