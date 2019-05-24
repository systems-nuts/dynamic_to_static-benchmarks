; ModuleID = 'is-s.o3.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_401f20__rodata_type = type <{ [4 x i8], [27 x i8], [46 x i8], [38 x i8], [44 x i8], [37 x i8], [39 x i8], [39 x i8], [25 x i8], [37 x i8], [37 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [24 x i8], [48 x i8], [80 x i8], [48 x i8], [48 x i8], [32 x i8], [80 x i8], [48 x i8], [136 x i8], [46 x i8], [56 x i8], [11 x i8], [2 x i8], [25 x i8], [19 x i8], [25 x i8], [3 x i8], [12 x i8], [6 x i8], [12 x i8], [4 x i8], [6 x i8], [4 x i8], [12 x i8], [29 x i8], [25 x i8], [35 x i8], [35 x i8], [41 x i8], [64 x i8], [40 x i8] }>

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

%bucket_size_type = type <{ [2048 x i8] }>

%key_buff1_type = type <{ [8 x i8] }>

%key_array_type = type <{ [8 x i8] }>

%bucket_ptrs_type = type <{ [2048 x i8] }>

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

@seg_401f20__rodata = internal constant %seg_401f20__rodata_type <{ [4 x i8] c"\01\00\02\00", [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", [46 x i8] c" Class           =                        %c\0A\00", [38 x i8] c" Size            =             %12ld\0A\00", [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", [37 x i8] c" Iterations      =             %12d\0A\00", [39 x i8] c" Time in seconds =             %12.2f\0A\00", [39 x i8] c" Mop/s total     =             %12.2f\0A\00", [25 x i8] c" Operation type  = %24s\0A\00", [37 x i8] c" Version         =             %12s\0A\00", [37 x i8] c" Compile date    =             %12s\0A\00", [23 x i8] c"    CC           = %s\0A\00", [23 x i8] c"    CLINK        = %s\0A\00", [23 x i8] c"    C_LIB        = %s\0A\00", [23 x i8] c"    C_INC        = %s\0A\00", [23 x i8] c"    CFLAGS       = %s\0A\00", [24 x i8] c"    CLINKFLAGS   = %s\0A\00\00", [48 x i8] c" Verification    =             UNSUCCESSFUL\00\00\00\00\00", [80 x i8] c"\0A Compile options:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A--------------------------------------\00\00\00\00\00\00\00\00\00", [48 x i8] c" Please send all errors/feedbacks to:\00\00\00\00\00\00\00\00\00\00\00", [48 x i8] c" Center for Manycore Programming\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c" cmp@aces.snu.ac.kr\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c" http://aces.snu.ac.kr\00\00\00\00\00\00\00\00\00\00--------------------------------------\00\00\00\00\00\00\00\00\00\00", [48 x i8] c" Verification    =               SUCCESSFUL\00\00\00\00\00", [136 x i8] c" Verification    =            NOT PERFORMED\00\00\00\00\00\00\00\00\00\00\00\80>\00\00\00\00\00\00`A\00\00\00\00\00\00\10=\00\00\00\00\00\00\D0B\00\00\00\00\00\00\80@\00\00\00\A1\B0\B9\B2A\00\00@\E5\9C0\D2A\00\00\00\00\00\00$A\00\00\00\00\80\84.A\00\00\00\00\00\00\F0?\00\00\00\00\00\00Y@", [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", [11 x i8] c"timer.flag\00", [2 x i8] c"r\00", [25 x i8] c" Size:  %ld  (class %c)\0A\00", [19 x i8] c" Iterations:   %d\0A\00", [25 x i8] c"passed verfications: %d\0A\00", [3 x i8] c"IS\00", [12 x i8] c"keys ranked\00", [6 x i8] c"3.3.1\00", [12 x i8] c"03 Nov 2017\00", [4 x i8] c"gcc\00", [6 x i8] c"$(CC)\00", [4 x i8] c"-lm\00", [12 x i8] c"-I../common\00", [29 x i8] c"-g -Wall -O3 -mcmodel=medium\00", [25 x i8] c" Total execution: %8.3f\0A\00", [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", [41 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00\00\00\00\00\00\00", [64 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\00\00\00\00\00\00\00\00\00", [40 x i8] c"\0AAdditional timers -\00\00\00\00\00\00\00\00\00\00\00\00\8D\ED\B5\A0\F7\C6\B0>" }>

@seg_602e10__init_array = internal global %seg_602e10__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400720___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c" .`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64)* @SSSSSputs to i64), i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSmemset to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSfflush to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64) }>
@passed_verification = global %passed_verification_type <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_index_array = global %S_test_index_array_type <{ [32 x i8] c"+\BD\00\00\FCB\00\00K\5C\00\00T\F4\00\00O\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_rank_array = global %S_test_rank_array_type <{ [32 x i8] c"\00\00\00\00\12\00\00\00Z\01\00\00\95\FD\00\00\B7\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_index_array = local_unnamed_addr global %W_test_index_array_type <{ [32 x i8] c"\8Du\05\00oC\0E\00\CB\5C\0D\00\B7\B7\0D\00\19,\06\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_rank_array = local_unnamed_addr global %W_test_rank_array_type <{ [32 x i8] c"\E1\04\00\00\B2-\00\00s\DE\0F\00\B8\ED\0F\00\D2\FD\0F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_index_array = local_unnamed_addr global %A_test_index_array_type <{ [32 x i8] c"y; \00\19\1A\0A\00klQ\00\D1\957\00\88\DC@\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_rank_array = local_unnamed_addr global %A_test_rank_array_type <{ [32 x i8] c"h\00\00\00sD\00\00\18\E4\01\00\A4z~\00\A8\FE\7F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@B_test_index_array = local_unnamed_addr global %B_test_index_array_type <{ [32 x i8] c"\8D\A3\00\00\12e\0C\00\09\DDM\00\AF3\16\01\B6\DA\99\01\00\00\00\00\00\00\00\00\00\00\00\00" }>

@B_test_rank_array = local_unnamed_addr global %B_test_rank_array_type <{ [32 x i8] c"Y\FE\FD\01\04(\00\00\0D\E7\00\00\B1\9A\F9\01c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfclose(i64) #3
declare i64 @fclose(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #3
declare i64 @gettimeofday(i64, i64) #3


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

declare extern_weak x86_64_sysvcc i64 @SSSSSfflush(i64) #3
declare i64 @fflush(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmemset(i64, i64, i64) #3
declare i64 @memset(i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #3
declare i64 @malloc(i64) #3


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401f10___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401f10:

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

  store i64 ptrtoint (i64 ()* @callback_sub_401f10___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401ea0___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401ea0___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401f10___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1263

  store i64 %50, i64* %4, align 8, !alias.scope !1263, !noalias !1266

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



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

define %struct.Memory* @sub_401e50_wtime_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401e50:

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

  %27 = tail call i64 @gettimeofday(i64 %16, i64 0), !noalias !1268

  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  %29 = inttoptr i64 %16 to i64*

  %30 = load i64, i64* %29

  %31 = lshr i32 %28, 31

  %32 = trunc i32 %31 to i8

  %33 = icmp eq i8 %32, 0

  %34 = trunc i64 %30 to i32

  br i1 %33, label %block_401e78, label %block_401e70



block_401e70:                                     ; preds = %block_401e50

  store i32 %34, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  br label %block_401e78



block_401e78:                                     ; preds = %block_401e70, %block_401e50

  %35 = phi i32 [ %28, %block_401e50 ], [ %34, %block_401e70 ]

  %36 = phi %struct.Memory* [ %2, %block_401e50 ], [ %2, %block_401e70 ]

  %37 = sext i32 %35 to i64

  store i64 %37, i64* %6, align 8, !tbaa !1240

  %38 = sub i64 %30, %37

  store i64 %38, i64* %4, align 8, !tbaa !1240

  %39 = sitofp i64 %38 to double

  %40 = bitcast [32 x %union.VectorReg]* %10 to double*

  store double %39, double* %40, align 1, !tbaa !1271

  %41 = add i64 %13, -16

  %42 = inttoptr i64 %41 to i64*

  %43 = load i64, i64* %42

  %44 = sitofp i64 %43 to double

  %45 = bitcast %union.VectorReg* %11 to double*

  %46 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1536) to double*)

  %47 = fmul double %44, %46

  %48 = fadd double %47, %39

  store double %48, double* %45, align 1, !tbaa !1271

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

  %137 = load i64, i64* %133, align 8, !alias.scope !1273, !noalias !1276

  %138 = load i64, i64* %135, align 8, !alias.scope !1273, !noalias !1276

  %139 = load i64, i64* %136, align 8, !alias.scope !1273, !noalias !1276

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

  store i64 %170, i64* %3, align 8, !alias.scope !1273, !noalias !1276

  store i64 %95, i64* %26, align 8, !alias.scope !1273, !noalias !1276

  %171 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 4), i64 4294967295), i64 %127, i64 %137, i64 %127, i64 %138, i64 %139, i64 %141, i64 %144, i64 %147, i64 %150, i64 %153, i64 %156, i64 %159, i64 %162, i64 %165, i64 %168)

  %172 = load i64, i64* %3, align 8

  %173 = load i32, i32* %21, align 4

  %174 = zext i32 %173 to i64

  %175 = add i64 %172, 15

  %176 = load i64, i64* %26, align 8, !tbaa !1240

  %177 = add i64 %176, -8

  %178 = inttoptr i64 %177 to i64*

  store i64 %175, i64* %178

  %179 = load i64, i64* %133, align 8, !alias.scope !1278, !noalias !1281

  %180 = load i64, i64* %132, align 8, !alias.scope !1278, !noalias !1281

  %181 = load i64, i64* %135, align 8, !alias.scope !1278, !noalias !1281

  %182 = load i64, i64* %136, align 8, !alias.scope !1278, !noalias !1281

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

  store i64 %213, i64* %3, align 8, !alias.scope !1278, !noalias !1281

  store i64 %176, i64* %26, align 8, !alias.scope !1278, !noalias !1281

  %214 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 31), i64 4294967295), i64 %174, i64 %179, i64 %180, i64 %181, i64 %182, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199, i64 %202, i64 %205, i64 %208, i64 %211), !noalias !1278

  %215 = load i32, i32* %13, align 4

  %216 = load i64, i64* %3, align 8

  %217 = icmp eq i32 %215, 0

  %218 = select i1 %217, i64 25, i64 4

  %219 = add i64 %216, %218

  br i1 %217, label %block_40083a, label %block_400825



block_4008dc:                                     ; preds = %block_4008c9, %block_4008d0, %block_4008d7

  %220 = phi i64 [ and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 848), i64 4294967295), %block_4008c9 ], [ and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 896), i64 4294967295), %block_4008d0 ], [ and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 512), i64 4294967295), %block_4008d7 ]

  %221 = phi i64 [ %916, %block_4008c9 ], [ %660, %block_4008d0 ], [ %919, %block_4008d7 ]

  %222 = add i64 %221, 5

  %223 = add i64 %856, -8

  %224 = inttoptr i64 %223 to i64*

  store i64 %222, i64* %224

  %225 = inttoptr i64 %223 to i64*

  %226 = load i64, i64* %225

  store i64 %226, i64* %3, align 8, !alias.scope !1283, !noalias !1286

  store i64 %856, i64* %26, align 8, !alias.scope !1283, !noalias !1286

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

  %236 = load i64, i64* %133, align 8, !alias.scope !1288, !noalias !1291

  %237 = load i64, i64* %132, align 8, !alias.scope !1288, !noalias !1291

  %238 = load i64, i64* %135, align 8, !alias.scope !1288, !noalias !1291

  %239 = load i64, i64* %136, align 8, !alias.scope !1288, !noalias !1291

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

  store i64 %270, i64* %3, align 8, !alias.scope !1288, !noalias !1291

  store i64 %228, i64* %26, align 8, !alias.scope !1288, !noalias !1291

  %271 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 299), i64 4294967295), i64 %232, i64 %236, i64 %237, i64 %238, i64 %239, i64 %241, i64 %244, i64 %247, i64 %250, i64 %253, i64 %256, i64 %259, i64 %262, i64 %265, i64 %268)

  %272 = load i64, i64* %3, align 8

  %273 = load i64, i64* %22, align 8

  %274 = add i64 %272, 15

  %275 = load i64, i64* %26, align 8, !tbaa !1240

  %276 = add i64 %275, -8

  %277 = inttoptr i64 %276 to i64*

  store i64 %274, i64* %277

  %278 = load i64, i64* %133, align 8, !alias.scope !1293, !noalias !1296

  %279 = load i64, i64* %132, align 8, !alias.scope !1293, !noalias !1296

  %280 = load i64, i64* %135, align 8, !alias.scope !1293, !noalias !1296

  %281 = load i64, i64* %136, align 8, !alias.scope !1293, !noalias !1296

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

  store i64 %312, i64* %3, align 8, !alias.scope !1293, !noalias !1296

  store i64 %275, i64* %26, align 8, !alias.scope !1293, !noalias !1296

  %313 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 336), i64 4294967295), i64 %273, i64 %278, i64 %279, i64 %280, i64 %281, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304, i64 %307, i64 %310), !noalias !1293

  %314 = load i64, i64* %3, align 8

  %315 = add i64 %314, 10

  %316 = load i64, i64* %26, align 8, !tbaa !1240

  %317 = add i64 %316, -8

  %318 = inttoptr i64 %317 to i64*

  store i64 %315, i64* %318

  %319 = inttoptr i64 %317 to i64*

  %320 = load i64, i64* %319

  store i64 %320, i64* %3, align 8, !alias.scope !1298, !noalias !1301

  store i64 %316, i64* %26, align 8, !alias.scope !1298, !noalias !1301

  %321 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 560), i64 4294967295))

  %322 = load i64, i64* %3, align 8

  %323 = load i64, i64* %27, align 8

  %324 = add i64 %322, 15

  %325 = load i64, i64* %26, align 8, !tbaa !1240

  %326 = add i64 %325, -8

  %327 = inttoptr i64 %326 to i64*

  store i64 %324, i64* %327

  %328 = load i64, i64* %133, align 8, !alias.scope !1303, !noalias !1306

  %329 = load i64, i64* %132, align 8, !alias.scope !1303, !noalias !1306

  %330 = load i64, i64* %135, align 8, !alias.scope !1303, !noalias !1306

  %331 = load i64, i64* %136, align 8, !alias.scope !1303, !noalias !1306

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

  store i64 %362, i64* %3, align 8, !alias.scope !1303, !noalias !1306

  store i64 %325, i64* %26, align 8, !alias.scope !1303, !noalias !1306

  %363 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 373), i64 4294967295), i64 %323, i64 %328, i64 %329, i64 %330, i64 %331, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357, i64 %360)

  %364 = load i64, i64* %3, align 8

  %365 = load i64, i64* %30, align 8

  %366 = add i64 %364, 15

  %367 = load i64, i64* %26, align 8, !tbaa !1240

  %368 = add i64 %367, -8

  %369 = inttoptr i64 %368 to i64*

  store i64 %366, i64* %369

  %370 = load i64, i64* %133, align 8, !alias.scope !1308, !noalias !1311

  %371 = load i64, i64* %132, align 8, !alias.scope !1308, !noalias !1311

  %372 = load i64, i64* %135, align 8, !alias.scope !1308, !noalias !1311

  %373 = load i64, i64* %136, align 8, !alias.scope !1308, !noalias !1311

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

  store i64 %404, i64* %3, align 8, !alias.scope !1308, !noalias !1311

  store i64 %367, i64* %26, align 8, !alias.scope !1308, !noalias !1311

  %405 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 396), i64 4294967295), i64 %365, i64 %370, i64 %371, i64 %372, i64 %373, i64 %375, i64 %378, i64 %381, i64 %384, i64 %387, i64 %390, i64 %393, i64 %396, i64 %399, i64 %402)

  %406 = load i64, i64* %3, align 8

  %407 = load i64, i64* %31, align 8

  %408 = add i64 %406, 15

  %409 = load i64, i64* %26, align 8, !tbaa !1240

  %410 = add i64 %409, -8

  %411 = inttoptr i64 %410 to i64*

  store i64 %408, i64* %411

  %412 = load i64, i64* %133, align 8, !alias.scope !1313, !noalias !1316

  %413 = load i64, i64* %132, align 8, !alias.scope !1313, !noalias !1316

  %414 = load i64, i64* %135, align 8, !alias.scope !1313, !noalias !1316

  %415 = load i64, i64* %136, align 8, !alias.scope !1313, !noalias !1316

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

  store i64 %446, i64* %3, align 8, !alias.scope !1313, !noalias !1316

  store i64 %409, i64* %26, align 8, !alias.scope !1313, !noalias !1316

  %447 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 419), i64 4294967295), i64 %407, i64 %412, i64 %413, i64 %414, i64 %415, i64 %417, i64 %420, i64 %423, i64 %426, i64 %429, i64 %432, i64 %435, i64 %438, i64 %441, i64 %444)

  %448 = load i64, i64* %3, align 8

  %449 = load i64, i64* %26, align 8

  %450 = add i64 %449, 80

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %448, 17

  %454 = add i64 %449, -8

  %455 = inttoptr i64 %454 to i64*

  store i64 %453, i64* %455

  %456 = load i64, i64* %133, align 8, !alias.scope !1318, !noalias !1321

  %457 = load i64, i64* %132, align 8, !alias.scope !1318, !noalias !1321

  %458 = load i64, i64* %135, align 8, !alias.scope !1318, !noalias !1321

  %459 = load i64, i64* %136, align 8, !alias.scope !1318, !noalias !1321

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

  store i64 %490, i64* %3, align 8, !alias.scope !1318, !noalias !1321

  store i64 %449, i64* %26, align 8, !alias.scope !1318, !noalias !1321

  %491 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 442), i64 4294967295), i64 %452, i64 %456, i64 %457, i64 %458, i64 %459, i64 %461, i64 %464, i64 %467, i64 %470, i64 %473, i64 %476, i64 %479, i64 %482, i64 %485, i64 %488)

  %492 = load i64, i64* %3, align 8

  %493 = load i64, i64* %29, align 8

  %494 = add i64 %492, 15

  %495 = load i64, i64* %26, align 8, !tbaa !1240

  %496 = add i64 %495, -8

  %497 = inttoptr i64 %496 to i64*

  store i64 %494, i64* %497

  %498 = load i64, i64* %133, align 8, !alias.scope !1323, !noalias !1326

  %499 = load i64, i64* %132, align 8, !alias.scope !1323, !noalias !1326

  %500 = load i64, i64* %135, align 8, !alias.scope !1323, !noalias !1326

  %501 = load i64, i64* %136, align 8, !alias.scope !1323, !noalias !1326

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

  store i64 %532, i64* %3, align 8, !alias.scope !1323, !noalias !1326

  store i64 %495, i64* %26, align 8, !alias.scope !1323, !noalias !1326

  %533 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 465), i64 4294967295), i64 %493, i64 %498, i64 %499, i64 %500, i64 %501, i64 %503, i64 %506, i64 %509, i64 %512, i64 %515, i64 %518, i64 %521, i64 %524, i64 %527, i64 %530)

  %534 = load i64, i64* %3, align 8

  %535 = load i64, i64* %28, align 8

  store i64 %535, i64* %24, align 8, !tbaa !1240

  %536 = add i64 %534, 15

  %537 = load i64, i64* %26, align 8, !tbaa !1240

  %538 = add i64 %537, -8

  %539 = inttoptr i64 %538 to i64*

  store i64 %536, i64* %539

  %540 = load i64, i64* %133, align 8, !alias.scope !1328, !noalias !1331

  %541 = load i64, i64* %132, align 8, !alias.scope !1328, !noalias !1331

  %542 = load i64, i64* %135, align 8, !alias.scope !1328, !noalias !1331

  %543 = load i64, i64* %136, align 8, !alias.scope !1328, !noalias !1331

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

  store i64 %574, i64* %3, align 8, !alias.scope !1328, !noalias !1331

  store i64 %537, i64* %26, align 8, !alias.scope !1328, !noalias !1331

  %575 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 488), i64 4294967295), i64 %535, i64 %540, i64 %541, i64 %542, i64 %543, i64 %545, i64 %548, i64 %551, i64 %554, i64 %557, i64 %560, i64 %563, i64 %566, i64 %569, i64 %572), !noalias !1328

  %576 = load i64, i64* %3, align 8

  %577 = add i64 %576, 10

  %578 = load i64, i64* %26, align 8, !tbaa !1240

  %579 = add i64 %578, -8

  %580 = inttoptr i64 %579 to i64*

  store i64 %577, i64* %580

  %581 = inttoptr i64 %579 to i64*

  %582 = load i64, i64* %581

  store i64 %582, i64* %3, align 8, !alias.scope !1333, !noalias !1336

  store i64 %578, i64* %26, align 8, !alias.scope !1333, !noalias !1336

  %583 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 592), i64 4294967295)), !noalias !1333

  %584 = load i64, i64* %3, align 8

  %585 = add i64 %584, 10

  %586 = load i64, i64* %26, align 8, !tbaa !1240

  %587 = add i64 %586, -8

  %588 = inttoptr i64 %587 to i64*

  store i64 %585, i64* %588

  %589 = inttoptr i64 %587 to i64*

  %590 = load i64, i64* %589

  store i64 %590, i64* %3, align 8, !alias.scope !1338, !noalias !1341

  store i64 %586, i64* %26, align 8, !alias.scope !1338, !noalias !1341

  %591 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 640), i64 4294967295)), !noalias !1338

  %592 = load i64, i64* %3, align 8

  %593 = add i64 %592, 10

  %594 = load i64, i64* %26, align 8, !tbaa !1240

  %595 = add i64 %594, -8

  %596 = inttoptr i64 %595 to i64*

  store i64 %593, i64* %596

  %597 = inttoptr i64 %595 to i64*

  %598 = load i64, i64* %597

  store i64 %598, i64* %3, align 8, !alias.scope !1343, !noalias !1346

  store i64 %594, i64* %26, align 8, !alias.scope !1343, !noalias !1346

  %599 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 688), i64 4294967295)), !noalias !1343

  %600 = load i64, i64* %3, align 8

  %601 = add i64 %600, 10

  %602 = load i64, i64* %26, align 8, !tbaa !1240

  %603 = add i64 %602, -8

  %604 = inttoptr i64 %603 to i64*

  store i64 %601, i64* %604

  %605 = inttoptr i64 %603 to i64*

  %606 = load i64, i64* %605

  store i64 %606, i64* %3, align 8, !alias.scope !1348, !noalias !1351

  store i64 %602, i64* %26, align 8, !alias.scope !1348, !noalias !1351

  %607 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 736), i64 4294967295)), !noalias !1348

  %608 = load i64, i64* %3, align 8

  %609 = add i64 %608, 10

  %610 = load i64, i64* %26, align 8, !tbaa !1240

  %611 = add i64 %610, -8

  %612 = inttoptr i64 %611 to i64*

  store i64 %609, i64* %612

  store i64 %610, i64* %26, align 8, !alias.scope !1353, !noalias !1356

  %613 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 768), i64 4294967295)), !noalias !1353

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 800), i64 4294967295), i64* %25, align 8, !tbaa !1240

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

  store i64 %657, i64* %3, align 8, !alias.scope !1358, !noalias !1361

  %658 = add i64 %614, 144

  store i64 %658, i64* %26, align 8, !alias.scope !1358, !noalias !1361

  %659 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 800), i64 4294967295)), !noalias !1358

  store i64 %659, i64* %131, align 8, !alias.scope !1358, !noalias !1361

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

  %685 = load i64, i64* %133, align 8, !alias.scope !1363, !noalias !1366

  %686 = load i64, i64* %135, align 8, !alias.scope !1363, !noalias !1366

  %687 = load i64, i64* %136, align 8, !alias.scope !1363, !noalias !1366

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

  store i64 %718, i64* %3, align 8, !alias.scope !1363, !noalias !1366

  store i64 %663, i64* %26, align 8, !alias.scope !1363, !noalias !1366

  %719 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 159), i64 4294967295), i64 %681, i64 %685, i64 %669, i64 %686, i64 %687, i64 %689, i64 %692, i64 %695, i64 %698, i64 %701, i64 %704, i64 %707, i64 %710, i64 %713, i64 %716), !noalias !1363

  %720 = load i64, i64* %3, align 8

  %721 = load i64, i64* %26, align 8

  %722 = add i64 %721, 64

  %723 = inttoptr i64 %722 to double*

  %724 = load double, double* %723

  store double %724, double* %65, align 1, !tbaa !1271

  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %726 = bitcast i64* %725 to double*

  store double 0.000000e+00, double* %726, align 1, !tbaa !1271

  %727 = add i64 %720, 18

  %728 = add i64 %721, -8

  %729 = inttoptr i64 %728 to i64*

  store i64 %727, i64* %729

  %730 = load i64, i64* %134, align 8, !alias.scope !1368, !noalias !1371

  %731 = load i64, i64* %133, align 8, !alias.scope !1368, !noalias !1371

  %732 = load i64, i64* %132, align 8, !alias.scope !1368, !noalias !1371

  %733 = load i64, i64* %135, align 8, !alias.scope !1368, !noalias !1371

  %734 = load i64, i64* %136, align 8, !alias.scope !1368, !noalias !1371

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

  store i64 %765, i64* %3, align 8, !alias.scope !1368, !noalias !1371

  store i64 %721, i64* %26, align 8, !alias.scope !1368, !noalias !1371

  %766 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 196), i64 4294967295), i64 %730, i64 %731, i64 %732, i64 %733, i64 %734, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757, i64 %760, i64 %763), !noalias !1368

  %767 = load i64, i64* %3, align 8

  %768 = load i64, i64* %26, align 8

  %769 = add i64 %768, 72

  %770 = inttoptr i64 %769 to double*

  %771 = load double, double* %770

  store double %771, double* %65, align 1, !tbaa !1271

  store double 0.000000e+00, double* %726, align 1, !tbaa !1271

  %772 = add i64 %767, 18

  %773 = add i64 %768, -8

  %774 = inttoptr i64 %773 to i64*

  store i64 %772, i64* %774

  %775 = load i64, i64* %134, align 8, !alias.scope !1373, !noalias !1376

  %776 = load i64, i64* %133, align 8, !alias.scope !1373, !noalias !1376

  %777 = load i64, i64* %132, align 8, !alias.scope !1373, !noalias !1376

  %778 = load i64, i64* %135, align 8, !alias.scope !1373, !noalias !1376

  %779 = load i64, i64* %136, align 8, !alias.scope !1373, !noalias !1376

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

  store i64 %810, i64* %3, align 8, !alias.scope !1373, !noalias !1376

  store i64 %768, i64* %26, align 8, !alias.scope !1373, !noalias !1376

  %811 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 235), i64 4294967295), i64 %775, i64 %776, i64 %777, i64 %778, i64 %779, i64 %781, i64 %784, i64 %787, i64 %790, i64 %793, i64 %796, i64 %799, i64 %802, i64 %805, i64 %808)

  %812 = load i64, i64* %3, align 8

  %813 = load i64, i64* %26, align 8

  %814 = add i64 %813, 56

  %815 = inttoptr i64 %814 to i64*

  %816 = load i64, i64* %815

  %817 = add i64 %812, 17

  %818 = add i64 %813, -8

  %819 = inttoptr i64 %818 to i64*

  store i64 %817, i64* %819

  %820 = load i64, i64* %133, align 8, !alias.scope !1378, !noalias !1381

  %821 = load i64, i64* %132, align 8, !alias.scope !1378, !noalias !1381

  %822 = load i64, i64* %135, align 8, !alias.scope !1378, !noalias !1381

  %823 = load i64, i64* %136, align 8, !alias.scope !1378, !noalias !1381

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

  store i64 %854, i64* %3, align 8, !alias.scope !1378, !noalias !1381

  store i64 %813, i64* %26, align 8, !alias.scope !1378, !noalias !1381

  %855 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 274), i64 4294967295), i64 %816, i64 %820, i64 %821, i64 %822, i64 %823, i64 %825, i64 %828, i64 %831, i64 %834, i64 %837, i64 %840, i64 %843, i64 %846, i64 %849, i64 %852), !noalias !1378

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

  %880 = load i64, i64* %133, align 8, !alias.scope !1383, !noalias !1386

  %881 = load i64, i64* %135, align 8, !alias.scope !1383, !noalias !1386

  %882 = load i64, i64* %136, align 8, !alias.scope !1383, !noalias !1386

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

  store i64 %913, i64* %3, align 8, !alias.scope !1383, !noalias !1386

  store i64 %877, i64* %26, align 8, !alias.scope !1383, !noalias !1386

  %914 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 77), i64 4294967295), i64 %875, i64 %880, i64 %873, i64 %881, i64 %882, i64 %884, i64 %887, i64 %890, i64 %893, i64 %896, i64 %899, i64 %902, i64 %905, i64 %908, i64 %911), !noalias !1383

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

  %930 = load i64, i64* %135, align 8, !alias.scope !1388, !noalias !1391

  %931 = load i64, i64* %136, align 8, !alias.scope !1388, !noalias !1391

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

  store i64 %962, i64* %3, align 8, !alias.scope !1388, !noalias !1391

  store i64 %927, i64* %26, align 8, !alias.scope !1388, !noalias !1391

  %963 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 115), i64 4294967295), i64 %922, i64 %924, i64 %925, i64 %930, i64 %931, i64 %933, i64 %936, i64 %939, i64 %942, i64 %945, i64 %948, i64 %951, i64 %954, i64 %957, i64 %960), !noalias !1388

  %964 = load i64, i64* %3, align 8

  %965 = add i64 %964, 35

  br label %block_40085b

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

  %16 = tail call i64 @malloc(i64 262144), !noalias !1393

  store i64 %16, i64* bitcast (%key_array_type* @key_array to i64*)

  %17 = add i64 %15, 17

  %18 = add i64 %8, -16

  %19 = inttoptr i64 %18 to i64*

  store i64 %17, i64* %19

  %20 = inttoptr i64 %18 to i64*

  %21 = load i64, i64* %20

  %22 = tail call i64 @malloc(i64 8192), !noalias !1396

  store i64 %22, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %23 = add i64 %21, 17

  %24 = add i64 %8, -16

  %25 = inttoptr i64 %24 to i64*

  store i64 %23, i64* %25

  %26 = inttoptr i64 %24 to i64*

  %27 = load i64, i64* %26

  %28 = tail call i64 @malloc(i64 262144), !noalias !1399

  store i64 %28, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 20, i64* %5, align 8, !tbaa !1240

  %29 = add i64 %27, 17

  %30 = add i64 %8, -16

  %31 = inttoptr i64 %30 to i64*

  store i64 %29, i64* %31

  %32 = tail call i64 @malloc(i64 20), !noalias !1402

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

  %29 = add i64 %26, 262144

  %30 = add i64 %27, -4

  %31 = add i64 %26, 262148

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

  store i32 %77, i32* %78, align 1, !tbaa !1405

  %79 = getelementptr inbounds i8, i8* %75, i64 4

  %80 = bitcast i8* %79 to i32*

  store i32 0, i32* %80, align 1, !tbaa !1405

  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %82 = bitcast i64* %81 to i32*

  store i32 0, i32* %82, align 1, !tbaa !1405

  %83 = getelementptr inbounds i8, i8* %75, i64 12

  %84 = bitcast i8* %83 to i32*

  store i32 0, i32* %84, align 1, !tbaa !1405

  %85 = bitcast %union.VectorReg* %70 to i8*

  %86 = bitcast [32 x %union.VectorReg]* %69 to i128*

  %87 = load i128, i128* %86, align 1

  %88 = trunc i128 %87 to i32

  %89 = lshr i128 %87, 32

  %90 = trunc i128 %89 to i32

  %91 = lshr i128 %87, 64

  %92 = trunc i128 %91 to i32

  %93 = bitcast %union.VectorReg* %70 to i32*

  store i32 %88, i32* %93, align 1, !tbaa !1405

  %94 = getelementptr inbounds i8, i8* %85, i64 4

  %95 = bitcast i8* %94 to i32*

  store i32 %90, i32* %95, align 1, !tbaa !1405

  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %97 = bitcast i64* %96 to i32*

  store i32 %92, i32* %97, align 1, !tbaa !1405

  %98 = getelementptr inbounds i8, i8* %85, i64 12

  %99 = bitcast i8* %98 to i32*

  store i32 %88, i32* %99, align 1, !tbaa !1405

  %100 = bitcast [32 x %union.VectorReg]* %69 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %100, align 1, !tbaa !1240

  store i64 -65520, i64* %18, align 8, !tbaa !1240

  %101 = bitcast %union.VectorReg* %24 to i8*

  %102 = bitcast %union.VectorReg* %24 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %102, align 1, !tbaa !1240

  %103 = add i64 %1, 182

  %104 = bitcast %union.VectorReg* %71 to i8*

  %105 = add i64 %27, 262084

  %106 = bitcast %union.VectorReg* %71 to float*

  %107 = getelementptr inbounds i8, i8* %104, i64 4

  %108 = bitcast i8* %107 to float*

  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %110 = bitcast i64* %109 to float*

  %111 = getelementptr inbounds i8, i8* %104, i64 12

  %112 = bitcast i8* %111 to float*

  %113 = bitcast %union.VectorReg* %25 to i8*

  %114 = add i64 %27, 262100

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

  %157 = add i64 %156, 262116

  %158 = add i64 %156, 262132

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

  store float %189, float* %106, align 1, !tbaa !1406

  store float %192, float* %108, align 1, !tbaa !1406

  store float %195, float* %110, align 1, !tbaa !1406

  store float %198, float* %112, align 1, !tbaa !1406

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

  store float %201, float* %159, align 1, !tbaa !1406

  store float %204, float* %160, align 1, !tbaa !1406

  store float %207, float* %161, align 1, !tbaa !1406

  store float %210, float* %162, align 1, !tbaa !1406

  %211 = load i64, i64* %133, align 1

  %212 = load i64, i64* %118, align 1

  %213 = load i64, i64* %123, align 1

  %214 = lshr i64 %212, 32

  %215 = trunc i64 %214 to i32

  %216 = trunc i64 %211 to i32

  %217 = trunc i64 %213 to i32

  store i32 %215, i32* %163, align 1, !tbaa !1405

  store i32 %216, i32* %164, align 1, !tbaa !1405

  store i32 %217, i32* %165, align 1, !tbaa !1405

  store i32 %217, i32* %166, align 1, !tbaa !1405

  %218 = load i64, i64* %133, align 1

  %219 = load i64, i64* %118, align 1

  %220 = load i64, i64* %109, align 1

  %221 = trunc i64 %218 to i32

  %222 = trunc i64 %219 to i32

  %223 = lshr i64 %213, 32

  %224 = trunc i64 %223 to i32

  %225 = trunc i64 %220 to i32

  store i32 %221, i32* %163, align 1, !tbaa !1405

  store i32 %222, i32* %164, align 1, !tbaa !1405

  store i32 %224, i32* %165, align 1, !tbaa !1405

  store i32 %225, i32* %166, align 1, !tbaa !1405

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

  store i32 %249, i32* %163, align 1, !tbaa !1405

  store i32 %250, i32* %164, align 1, !tbaa !1405

  %251 = trunc i64 %247 to i32

  store i32 %251, i32* %165, align 1, !tbaa !1405

  %252 = lshr i64 %247, 32

  %253 = trunc i64 %252 to i32

  store i32 %253, i32* %166, align 1, !tbaa !1405

  %254 = load i64, i64* %122, align 1

  %255 = trunc i64 %254 to i32

  store i32 %244, i32* %134, align 1, !tbaa !1405

  store i32 %217, i32* %135, align 1, !tbaa !1405

  store i32 %255, i32* %136, align 1, !tbaa !1405

  store i32 %255, i32* %137, align 1, !tbaa !1405

  %256 = load i64, i64* %123, align 1

  %257 = load i64, i64* %109, align 1

  %258 = load i64, i64* %96, align 1

  %259 = trunc i64 %256 to i32

  %260 = trunc i64 %257 to i32

  %261 = lshr i64 %254, 32

  %262 = trunc i64 %261 to i32

  %263 = trunc i64 %258 to i32

  store i32 %259, i32* %134, align 1, !tbaa !1405

  store i32 %260, i32* %135, align 1, !tbaa !1405

  store i32 %262, i32* %136, align 1, !tbaa !1405

  store i32 %263, i32* %137, align 1, !tbaa !1405

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

  store i32 %287, i32* %134, align 1, !tbaa !1405

  store i32 %288, i32* %135, align 1, !tbaa !1405

  %289 = trunc i64 %285 to i32

  store i32 %289, i32* %136, align 1, !tbaa !1405

  %290 = lshr i64 %285, 32

  %291 = trunc i64 %290 to i32

  store i32 %291, i32* %137, align 1, !tbaa !1405

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

  store i32 %304, i32* %78, align 1, !tbaa !1405

  store i32 %305, i32* %80, align 1, !tbaa !1405

  %306 = trunc i64 %300 to i32

  store i32 %306, i32* %82, align 1, !tbaa !1405

  %307 = trunc i64 %303 to i32

  store i32 %307, i32* %84, align 1, !tbaa !1405

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

  store i32 %320, i32* %150, align 1, !tbaa !1405

  store i32 %321, i32* %152, align 1, !tbaa !1405

  %322 = trunc i64 %316 to i32

  store i32 %322, i32* %153, align 1, !tbaa !1405

  %323 = trunc i64 %319 to i32

  store i32 %323, i32* %155, align 1, !tbaa !1405

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

  store i32 %339, i32* %150, align 1, !tbaa !1405

  store i32 %340, i32* %152, align 1, !tbaa !1405

  %341 = trunc i64 %335 to i32

  store i32 %341, i32* %153, align 1, !tbaa !1405

  %342 = trunc i64 %338 to i32

  store i32 %342, i32* %155, align 1, !tbaa !1405

  %343 = bitcast %union.VectorReg* %24 to i128*

  %344 = load i128, i128* %343, align 1

  %345 = lshr i128 %344, 64

  %346 = trunc i128 %345 to i32

  %347 = lshr i128 %344, 96

  %348 = trunc i128 %347 to i32

  %349 = trunc i128 %344 to i32

  %350 = lshr i128 %344, 32

  %351 = trunc i128 %350 to i32

  store i32 %346, i32* %78, align 1, !tbaa !1405

  store i32 %348, i32* %80, align 1, !tbaa !1405

  store i32 %349, i32* %82, align 1, !tbaa !1405

  store i32 %351, i32* %84, align 1, !tbaa !1405

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

  store i32 %364, i32* %78, align 1, !tbaa !1405

  store i32 %365, i32* %80, align 1, !tbaa !1405

  %366 = trunc i64 %360 to i32

  store i32 %366, i32* %82, align 1, !tbaa !1405

  %367 = trunc i64 %363 to i32

  store i32 %367, i32* %84, align 1, !tbaa !1405

  %368 = bitcast %union.VectorReg* %25 to i128*

  %369 = load i128, i128* %368, align 1

  %370 = lshr i128 %369, 96

  %371 = trunc i128 %370 to i32

  %372 = lshr i128 %369, 32

  %373 = trunc i128 %372 to i32

  store i32 %371, i32* %150, align 1, !tbaa !1405

  store i32 %373, i32* %152, align 1, !tbaa !1405

  %374 = load i64, i64* %148, align 1

  %375 = trunc i64 %374 to i32

  %376 = load i128, i128* %86, align 1

  %377 = lshr i128 %376, 32

  %378 = trunc i128 %377 to i32

  %379 = lshr i128 %376, 64

  %380 = trunc i128 %379 to i32

  %381 = lshr i128 %376, 96

  %382 = trunc i128 %381 to i32

  store i32 %378, i32* %150, align 1, !tbaa !1405

  store i32 %378, i32* %152, align 1, !tbaa !1405

  store i32 %380, i32* %153, align 1, !tbaa !1405

  store i32 %382, i32* %155, align 1, !tbaa !1405

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

  store i32 %395, i32* %150, align 1, !tbaa !1405

  store i32 %396, i32* %152, align 1, !tbaa !1405

  %397 = trunc i64 %391 to i32

  store i32 %397, i32* %153, align 1, !tbaa !1405

  %398 = trunc i64 %394 to i32

  store i32 %398, i32* %155, align 1, !tbaa !1405

  %399 = load i64, i64* %148, align 1

  %400 = load i64, i64* %22, align 8

  %401 = add i64 %400, 262116

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = zext i32 %403 to i64

  store i64 %404, i64* %19, align 8, !tbaa !1240

  %405 = add i64 %400, 262120

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

  store i8 %422, i8* %67, align 1, !tbaa !1408

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

  store i8 %441, i8* %63, align 1, !tbaa !1408

  %442 = load i64, i64* %17, align 8

  %443 = load i32, i32* %16, align 4

  %444 = trunc i64 %442 to i32

  %445 = add i32 %443, %444

  %446 = zext i32 %445 to i64

  store i64 %446, i64* %17, align 8, !tbaa !1240

  %447 = load i64, i64* %22, align 8

  %448 = add i64 %447, 262124

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

  store i8 %466, i8* %65, align 1, !tbaa !1408

  %467 = load i64, i64* %19, align 8

  %468 = load i32, i32* %13, align 4

  %469 = trunc i64 %467 to i32

  %470 = add i32 %468, %469

  %471 = zext i32 %470 to i64

  store i64 %471, i64* %19, align 8, !tbaa !1240

  %472 = load i64, i64* %22, align 8

  %473 = add i64 %472, 262128

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

  store i8 %491, i8* %66, align 1, !tbaa !1408

  %492 = load i64, i64* %20, align 8

  %493 = load i32, i32* %15, align 4

  %494 = trunc i64 %492 to i32

  %495 = add i32 %493, %494

  %496 = zext i32 %495 to i64

  store i64 %496, i64* %20, align 8, !tbaa !1240

  %497 = load i64, i64* %22, align 8

  %498 = add i64 %497, 262132

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

  store i8 %516, i8* %65, align 1, !tbaa !1408

  %517 = load i64, i64* %19, align 8

  %518 = load i32, i32* %68, align 4

  %519 = trunc i64 %517 to i32

  %520 = add i32 %518, %519

  %521 = zext i32 %520 to i64

  store i64 %521, i64* %19, align 8, !tbaa !1240

  %522 = load i64, i64* %22, align 8

  %523 = add i64 %522, 262136

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

  store i8 %541, i8* %66, align 1, !tbaa !1408

  %542 = load i64, i64* %20, align 8

  %543 = load i32, i32* %15, align 4

  %544 = trunc i64 %542 to i32

  %545 = add i32 %543, %544

  %546 = zext i32 %545 to i64

  store i64 %546, i64* %20, align 8, !tbaa !1240

  store i64 0, i64* %18, align 8, !tbaa !1240

  %547 = load i32, i32* %13, align 4

  %548 = load i64, i64* %22, align 8

  %549 = add i64 %548, 262140

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

  store i8 %565, i8* %64, align 1, !tbaa !1408

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

  %575 = phi i64 [ %326, %block_4011e0 ], [ -65520, %block_4011b6 ]

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

  store float %580, float* %106, align 1, !tbaa !1406

  store float %583, float* %108, align 1, !tbaa !1406

  store float %586, float* %110, align 1, !tbaa !1406

  store float %589, float* %112, align 1, !tbaa !1406

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

  store float %592, float* %115, align 1, !tbaa !1406

  store float %595, float* %117, align 1, !tbaa !1406

  store float %598, float* %119, align 1, !tbaa !1406

  store float %601, float* %121, align 1, !tbaa !1406

  %602 = load i64, i64* %122, align 1

  %603 = load i64, i64* %123, align 1

  %604 = lshr i64 %574, 32

  %605 = trunc i64 %604 to i32

  %606 = trunc i64 %602 to i32

  %607 = trunc i64 %603 to i32

  store i32 %605, i32* %93, align 1, !tbaa !1405

  store i32 %606, i32* %95, align 1, !tbaa !1405

  store i32 %607, i32* %97, align 1, !tbaa !1405

  store i32 %607, i32* %99, align 1, !tbaa !1405

  %608 = load i64, i64* %122, align 1

  %609 = load i64, i64* %96, align 1

  %610 = load i64, i64* %109, align 1

  %611 = trunc i64 %608 to i32

  %612 = trunc i64 %609 to i32

  %613 = lshr i64 %603, 32

  %614 = trunc i64 %613 to i32

  %615 = trunc i64 %610 to i32

  store i32 %611, i32* %93, align 1, !tbaa !1405

  store i32 %612, i32* %95, align 1, !tbaa !1405

  store i32 %614, i32* %97, align 1, !tbaa !1405

  store i32 %615, i32* %99, align 1, !tbaa !1405

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

  store i32 %639, i32* %93, align 1, !tbaa !1405

  store i32 %640, i32* %95, align 1, !tbaa !1405

  %641 = trunc i64 %637 to i32

  store i32 %641, i32* %97, align 1, !tbaa !1405

  %642 = lshr i64 %637, 32

  %643 = trunc i64 %642 to i32

  store i32 %643, i32* %99, align 1, !tbaa !1405

  %644 = load i64, i64* %133, align 1

  %645 = trunc i64 %644 to i32

  store i32 %634, i32* %134, align 1, !tbaa !1405

  store i32 %607, i32* %135, align 1, !tbaa !1405

  store i32 %645, i32* %136, align 1, !tbaa !1405

  store i32 %645, i32* %137, align 1, !tbaa !1405

  %646 = load i64, i64* %123, align 1

  %647 = load i64, i64* %109, align 1

  %648 = load i64, i64* %118, align 1

  %649 = trunc i64 %646 to i32

  %650 = trunc i64 %647 to i32

  %651 = lshr i64 %644, 32

  %652 = trunc i64 %651 to i32

  %653 = trunc i64 %648 to i32

  store i32 %649, i32* %134, align 1, !tbaa !1405

  store i32 %650, i32* %135, align 1, !tbaa !1405

  store i32 %652, i32* %136, align 1, !tbaa !1405

  store i32 %653, i32* %137, align 1, !tbaa !1405

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

  store i32 %666, i32* %78, align 1, !tbaa !1405

  store i32 %667, i32* %80, align 1, !tbaa !1405

  %668 = trunc i64 %662 to i32

  store i32 %668, i32* %82, align 1, !tbaa !1405

  %669 = trunc i64 %665 to i32

  store i32 %669, i32* %84, align 1, !tbaa !1405

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

  store i32 %693, i32* %134, align 1, !tbaa !1405

  store i32 %694, i32* %135, align 1, !tbaa !1405

  %695 = trunc i64 %691 to i32

  store i32 %695, i32* %136, align 1, !tbaa !1405

  %696 = lshr i64 %691, 32

  %697 = trunc i64 %696 to i32

  store i32 %697, i32* %137, align 1, !tbaa !1405

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

  store i32 %710, i32* %150, align 1, !tbaa !1405

  store i32 %711, i32* %152, align 1, !tbaa !1405

  %712 = trunc i64 %706 to i32

  store i32 %712, i32* %153, align 1, !tbaa !1405

  %713 = trunc i64 %709 to i32

  store i32 %713, i32* %155, align 1, !tbaa !1405

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

  %728 = load i64, i64* %727, align 8, !alias.scope !1409, !noalias !1412

  %729 = load i64, i64* %23, align 8, !alias.scope !1409, !noalias !1412

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

  store i64 %721, i64* %719, align 8, !alias.scope !1409, !noalias !1412

  %758 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1032), i64 4294967295), i64 %570, i64 %728, i64 %570, i64 %548, i64 %729, i64 %731, i64 %733, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757), !noalias !1409

  %759 = load i64, i64* @stdout

  store i64 %759, i64* %21, align 8, !tbaa !1240

  %760 = load i64, i64* %719, align 8, !tbaa !1240

  %761 = add i64 %760, 8

  %762 = inttoptr i64 %761 to i64*

  %763 = load i64, i64* %762

  store i64 %763, i64* %7, align 8, !alias.scope !1414, !noalias !1417

  %764 = add i64 %760, 16

  store i64 %764, i64* %719, align 8, !alias.scope !1414, !noalias !1417

  %765 = tail call i64 @fflush(i64 %759), !noalias !1414

  store i64 %765, i64* %726, align 8, !alias.scope !1414, !noalias !1417

  ret %struct.Memory* %767



block_401180:                                     ; preds = %block_401180, %block_401160

  %766 = phi i64 [ -65536, %block_401160 ], [ %798, %block_401180 ]

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

  store i32 0, i32* %332, align 1, !tbaa !1405

  store i32 0, i32* %334, align 1, !tbaa !1405

  store double %511, double* %335, align 1

  store double %431, double* %350, align 1

  store i64 %374, i64* %351, align 1, !tbaa !1271

  store double %541, double* %49, align 1, !tbaa !1271

  store i64 %374, i64* %51, align 1, !tbaa !1271

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

  store double %60, double* %61, align 1, !tbaa !1271

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

  store i32 0, i32* %82, align 1, !tbaa !1405

  %83 = getelementptr inbounds i8, i8* %70, i64 12

  %84 = bitcast i8* %83 to i32*

  store i32 0, i32* %84, align 1, !tbaa !1405

  %85 = sitofp i32 %81 to double

  %86 = select i1 %80, double 0xC1E0000000000000, double %85

  %87 = bitcast %union.VectorReg* %14 to double*

  %88 = bitcast <2 x i64> %69 to <2 x double>

  %89 = extractelement <2 x double> %88, i32 0

  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1

  %91 = extractelement <2 x i64> %69, i32 1

  %92 = fsub double %89, %67

  store double %92, double* %87, align 1, !tbaa !1271

  store i64 %91, i64* %90, align 1, !tbaa !1271

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

  store double %137, double* %73, align 1, !tbaa !1271

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

  store double %149, double* %147, align 1, !tbaa !1271

  store i64 %127, i64* %148, align 1, !tbaa !1271

  %150 = bitcast i64* %51 to i32*

  store i32 0, i32* %150, align 1, !tbaa !1405

  %151 = getelementptr inbounds i8, i8* %45, i64 12

  %152 = bitcast i8* %151 to i32*

  store i32 0, i32* %152, align 1, !tbaa !1405

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

  store double %195, double* %49, align 1, !tbaa !1271

  %196 = bitcast %union.VectorReg* %11 to <2 x double>*

  %197 = load <2 x double>, <2 x double>* %196, align 1

  %198 = extractelement <2 x double> %197, i32 0

  %199 = load double, double* %41, align 1

  %200 = fmul double %198, %199

  %201 = tail call double @llvm.trunc.f64(double %200) #10

  %202 = tail call double @llvm.fabs.f64(double %201) #10

  %203 = fcmp ogt double %202, 0x41DFFFFFFFC00000

  %204 = fptosi double %201 to i32

  store i32 0, i32* %112, align 1, !tbaa !1405

  store i32 0, i32* %114, align 1, !tbaa !1405

  %205 = sitofp i32 %204 to double

  %206 = select i1 %203, double 0xC1E0000000000000, double %205

  %207 = fmul double %185, %198

  store double %207, double* %73, align 1, !tbaa !1271

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

  store double %255, double* %75, align 1, !tbaa !1271

  %256 = fmul double %241, %255

  %257 = fadd double %256, %250

  store double %257, double* %49, align 1, !tbaa !1271

  store i64 %242, i64* %51, align 1, !tbaa !1271

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

  store i32 0, i32* %82, align 1, !tbaa !1405

  store i32 0, i32* %84, align 1, !tbaa !1405

  %288 = sitofp i32 %287 to double

  %289 = select i1 %286, double 0xC1E0000000000000, double %288

  %290 = fmul double %289, %274

  store double %290, double* %73, align 1, !tbaa !1271

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

  store i32 0, i32* %267, align 1, !tbaa !1405

  store i32 0, i32* %269, align 1, !tbaa !1405

  %303 = sitofp i32 %302 to double

  %304 = select i1 %301, double 0xC1E0000000000000, double %303

  %305 = load double, double* %42, align 1

  %306 = fmul double %304, %305

  store double %306, double* %211, align 1, !tbaa !1271

  %307 = fsub double %294, %306

  store double %307, double* %75, align 1, !tbaa !1271

  %308 = fmul double %297, %307

  %309 = load double, double* %49, align 1

  %310 = fadd double %308, %309

  %311 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 976) to double*)

  %312 = fmul double %310, %311

  store double %312, double* %40, align 1, !tbaa !1271

  %313 = tail call double @llvm.trunc.f64(double %312) #10

  %314 = tail call double @llvm.fabs.f64(double %313) #10

  %315 = fcmp ogt double %314, 0x41DFFFFFFFC00000

  %316 = fptosi double %313 to i32

  %317 = load i64, i64* %5, align 8

  %318 = select i1 %315, i32 -2147483648, i32 %316

  %319 = inttoptr i64 %317 to i32*

  store i32 %318, i32* %319

  %320 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to double*)

  store double %320, double* %41, align 1, !tbaa !1271

  store double 0.000000e+00, double* %38, align 1, !tbaa !1271

  %321 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to double*)

  store double %321, double* %87, align 1, !tbaa !1271

  %322 = bitcast i64* %90 to double*

  store double 0.000000e+00, double* %322, align 1, !tbaa !1271

  %323 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to double*)

  store double %323, double* %61, align 1, !tbaa !1271

  %324 = bitcast i64* %278 to double*

  store double 0.000000e+00, double* %324, align 1, !tbaa !1271

  %325 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to double*)

  store double %325, double* %147, align 1, !tbaa !1271

  %326 = bitcast i64* %148 to double*

  store double 0.000000e+00, double* %326, align 1, !tbaa !1271

  %327 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 976) to double*)

  store double %327, double* %42, align 1, !tbaa !1271

  store double 0.000000e+00, double* %37, align 1, !tbaa !1271

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

  %358 = add i64 %317, 262144

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

  %381 = phi i64 [ -65535, %block_400cb2 ], [ %552, %block_400f10 ]

  %382 = phi %struct.Memory* [ %44, %block_400cb2 ], [ %382, %block_400f10 ]

  %383 = load <2 x double>, <2 x double>* %375, align 1

  %384 = extractelement <2 x double> %383, i32 0

  %385 = fmul double %384, %340

  %386 = tail call double @llvm.trunc.f64(double %385) #10

  %387 = tail call double @llvm.fabs.f64(double %386) #10

  %388 = fcmp ogt double %387, 0x41DFFFFFFFC00000

  %389 = fptosi double %386 to i32

  store double %371, double* %73, align 1, !tbaa !1271

  store i64 %370, i64* %74, align 1, !tbaa !1271

  store i32 0, i32* %267, align 1, !tbaa !1405

  store i32 0, i32* %269, align 1, !tbaa !1405

  %390 = sitofp i32 %389 to double

  %391 = select i1 %388, double 0xC1E0000000000000, double %390

  %392 = fmul double %341, %391

  %393 = fsub double %384, %392

  %394 = load <2 x i64>, <2 x i64>* %71, align 1

  store <2 x i64> %394, <2 x i64>* %123, align 1, !tbaa !1271

  %395 = bitcast <2 x i64> %394 to <2 x double>

  %396 = extractelement <2 x double> %395, i32 0

  %397 = extractelement <2 x i64> %394, i32 1

  %398 = fmul double %396, %393

  store i64 %397, i64* %39, align 1, !tbaa !1271

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

  store double %421, double* %211, align 1, !tbaa !1271

  %422 = load <2 x double>, <2 x double>* %376, align 1

  %423 = extractelement <2 x double> %422, i32 0

  %424 = fmul double %423, %340

  %425 = tail call double @llvm.trunc.f64(double %424) #10

  %426 = tail call double @llvm.fabs.f64(double %425) #10

  %427 = fcmp ogt double %426, 0x41DFFFFFFFC00000

  %428 = fptosi double %425 to i32

  store i32 0, i32* %344, align 1, !tbaa !1405

  store i32 0, i32* %346, align 1, !tbaa !1405

  store i32 0, i32* %347, align 1, !tbaa !1405

  store i32 0, i32* %349, align 1, !tbaa !1405

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

  store double %459, double* %40, align 1, !tbaa !1271

  %460 = load <2 x double>, <2 x double>* %378, align 1

  %461 = extractelement <2 x double> %460, i32 0

  %462 = fmul double %461, %340

  %463 = tail call double @llvm.trunc.f64(double %462) #10

  %464 = tail call double @llvm.fabs.f64(double %463) #10

  %465 = fcmp ogt double %464, 0x41DFFFFFFFC00000

  %466 = fptosi double %463 to i32

  %467 = fmul double %373, %461

  store i32 0, i32* %112, align 1, !tbaa !1405

  store i32 0, i32* %114, align 1, !tbaa !1405

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

  store double %483, double* %211, align 1, !tbaa !1271

  store i64 %374, i64* %213, align 1, !tbaa !1271

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

  store double %498, double* %75, align 1, !tbaa !1271

  store <2 x i64> %343, <2 x i64>* %123, align 1, !tbaa !1271

  %499 = fmul double %373, %498

  store double %499, double* %40, align 1, !tbaa !1271

  store i64 %374, i64* %39, align 1, !tbaa !1271

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

  store <2 x i64> %328, <2 x i64>* %63, align 1, !tbaa !1271

  %515 = fmul double %340, %514

  store i64 %359, i64* %36, align 1, !tbaa !1271

  %516 = tail call double @llvm.trunc.f64(double %515) #10

  %517 = tail call double @llvm.fabs.f64(double %516) #10

  %518 = fcmp ogt double %517, 0x41DFFFFFFFC00000

  %519 = fptosi double %516 to i32

  store i32 0, i32* %352, align 1, !tbaa !1405

  store i32 0, i32* %354, align 1, !tbaa !1405

  store i32 0, i32* %355, align 1, !tbaa !1405

  store i32 0, i32* %357, align 1, !tbaa !1405

  %520 = sitofp i32 %519 to double

  %521 = select i1 %518, double 0xC1E0000000000000, double %520

  %522 = fmul double %521, %341

  store double %522, double* %43, align 1, !tbaa !1271

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

  store double %536, double* %40, align 1, !tbaa !1271

  %537 = fmul double %533, %325

  %538 = fsub double %526, %537

  store double %538, double* %75, align 1, !tbaa !1271

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

  %554 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 944) to double*)

  %555 = bitcast %union.VectorReg* %19 to double*

  store double %554, double* %555, align 1, !tbaa !1271

  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 11, i32 0, i32 0, i32 0, i64 1

  %557 = bitcast i64* %556 to double*

  store double 0.000000e+00, double* %557, align 1, !tbaa !1271

  %558 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 952) to double*)

  %559 = bitcast %union.VectorReg* %13 to double*

  store double %558, double* %559, align 1, !tbaa !1271

  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %561 = bitcast i64* %560 to double*

  store double 0.000000e+00, double* %561, align 1, !tbaa !1271

  %562 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 960) to double*)

  %563 = bitcast %union.VectorReg* %10 to double*

  store double %562, double* %563, align 1, !tbaa !1271

  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %565 = bitcast i64* %564 to double*

  store double 0.000000e+00, double* %565, align 1, !tbaa !1271

  %566 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 968) to double*)

  %567 = bitcast %union.VectorReg* %16 to double*

  store double %566, double* %567, align 1, !tbaa !1271

  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %569 = bitcast i64* %568 to double*

  store double 0.000000e+00, double* %569, align 1, !tbaa !1271

  br label %block_400cb2



block_400c21:                                     ; preds = %block_400c10

  %570 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to double*)

  %571 = bitcast %union.VectorReg* %19 to double*

  store double %570, double* %571, align 1, !tbaa !1271

  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 11, i32 0, i32 0, i32 0, i64 1

  %573 = bitcast i64* %572 to double*

  store double 0.000000e+00, double* %573, align 1, !tbaa !1271

  %574 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to double*)

  %575 = bitcast %union.VectorReg* %13 to double*

  store double %574, double* %575, align 1, !tbaa !1271

  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %577 = bitcast i64* %576 to double*

  store double 0.000000e+00, double* %577, align 1, !tbaa !1271

  %578 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to double*)

  %579 = bitcast %union.VectorReg* %10 to double*

  store double %578, double* %579, align 1, !tbaa !1271

  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %581 = bitcast i64* %580 to double*

  store double 0.000000e+00, double* %581, align 1, !tbaa !1271

  %582 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to double*)

  %583 = bitcast %union.VectorReg* %16 to double*

  store double %582, double* %583, align 1, !tbaa !1271

  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %585 = bitcast i64* %584 to double*

  store double 0.000000e+00, double* %585, align 1, !tbaa !1271

  br label %block_400cb2

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

define %struct.Memory* @sub_401ea0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401ea0:

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

  %47 = add i64 %1, -6376

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

  br i1 %54, label %block_401ef6, label %block_401ed6



block_401ef6.loopexit:                            ; preds = %block_401ee0

  br label %block_401ef6



block_401ef6:                                     ; preds = %block_401ef6.loopexit, %block_401ea0

  %57 = phi %struct.Memory* [ %51, %block_401ea0 ], [ %119, %block_401ef6.loopexit ]

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



block_401ed6:                                     ; preds = %block_401ea0

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1259

  store i8 0, i8* %45, align 1, !tbaa !1260

  store i8 0, i8* %46, align 1, !tbaa !1261

  store i8 0, i8* %43, align 1, !tbaa !1262

  %102 = add i64 %56, 10

  br label %block_401ee0



block_401ee0:                                     ; preds = %block_401ee0, %block_401ed6

  %103 = phi i64 [ 0, %block_401ed6 ], [ %122, %block_401ee0 ]

  %104 = phi i64 [ %102, %block_401ed6 ], [ %150, %block_401ee0 ]

  %105 = phi %struct.Memory* [ %51, %block_401ed6 ], [ %119, %block_401ee0 ]

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

  br i1 %139, label %block_401ef6.loopexit, label %block_401ee0

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

  store double %71, double* %50, align 1, !tbaa !1271

  store i64 0, i64* %51, align 1, !tbaa !1271

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

  store i32 0, i32* %83, align 1, !tbaa !1405

  %84 = getelementptr inbounds i8, i8* %75, i64 12

  %85 = bitcast i8* %84 to i32*

  store i32 0, i32* %85, align 1, !tbaa !1405

  %86 = sitofp i32 %82 to double

  %87 = select i1 %81, double 0xC1E0000000000000, double %86

  %88 = bitcast %union.VectorReg* %10 to i8*

  %89 = bitcast %union.VectorReg* %10 to double*

  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %91 = fmul double %69, %87

  %92 = fsub double %74, %91

  %93 = fmul double %63, %92

  store double %93, double* %64, align 1, !tbaa !1271

  %94 = fmul double %87, %71

  %95 = fadd double %94, %93

  %96 = load double, double* %45, align 1

  %97 = fmul double %96, %95

  store double %97, double* %45, align 1, !tbaa !1271

  %98 = tail call double @llvm.trunc.f64(double %97) #10

  %99 = tail call double @llvm.fabs.f64(double %98) #10

  %100 = fcmp ogt double %99, 0x41DFFFFFFFC00000

  %101 = fptosi double %98 to i32

  %102 = bitcast i64* %90 to i32*

  store i32 0, i32* %102, align 1, !tbaa !1405

  %103 = getelementptr inbounds i8, i8* %88, i64 12

  %104 = bitcast i8* %103 to i32*

  store i32 0, i32* %104, align 1, !tbaa !1405

  %105 = sitofp i32 %101 to double

  %106 = select i1 %100, double 0xC1E0000000000000, double %105

  %107 = load double, double* %44, align 1

  %108 = fmul double %106, %107

  store double %108, double* %89, align 1, !tbaa !1271

  %109 = fsub double %95, %108

  %110 = fmul double %109, %107

  store double %110, double* %76, align 1, !tbaa !1271

  %111 = load double, double* %50, align 1

  %112 = fmul double %92, %111

  %113 = fadd double %112, %110

  %114 = bitcast %union.VectorReg* %8 to <2 x i64>*

  %115 = load <2 x i64>, <2 x i64>* %114, align 1

  store <2 x i64> %115, <2 x i64>* %66, align 1, !tbaa !1271

  %116 = bitcast <2 x i64> %115 to <2 x double>

  %117 = extractelement <2 x double> %116, i32 0

  %118 = extractelement <2 x i64> %115, i32 1

  %119 = fmul double %117, %113

  store i64 %118, i64* %43, align 1, !tbaa !1271

  %120 = tail call double @llvm.trunc.f64(double %119) #10

  %121 = tail call double @llvm.fabs.f64(double %120) #10

  %122 = fcmp ogt double %121, 0x41DFFFFFFFC00000

  %123 = fptosi double %120 to i32

  %124 = zext i32 %123 to i64

  %125 = select i1 %122, i64 2147483648, i64 %124

  store i64 %125, i64* %4, align 8, !tbaa !1240

  %126 = bitcast %union.VectorReg* %9 to i32*

  store i32 0, i32* %126, align 1, !tbaa !1405

  %127 = getelementptr inbounds i8, i8* %65, i64 4

  %128 = bitcast i8* %127 to i32*

  store i32 0, i32* %128, align 1, !tbaa !1405

  %129 = bitcast i64* %43 to i32*

  store i32 0, i32* %129, align 1, !tbaa !1405

  %130 = getelementptr inbounds i8, i8* %65, i64 12

  %131 = bitcast i8* %130 to i32*

  store i32 0, i32* %131, align 1, !tbaa !1405

  %132 = trunc i64 %125 to i32

  %133 = sitofp i32 %132 to double

  %134 = load double, double* %42, align 1

  %135 = fmul double %133, %134

  store double %135, double* %44, align 1, !tbaa !1271

  %136 = fsub double %113, %135

  %137 = load i64, i64* %6, align 8

  %138 = inttoptr i64 %137 to double*

  store double %136, double* %138

  %139 = fmul double %136, %117

  store double %139, double* %54, align 1, !tbaa !1271

  store i64 0, i64* %56, align 1, !tbaa !1271

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

  %145 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 944) to double*)

  %146 = bitcast %union.VectorReg* %11 to double*

  store double %145, double* %146, align 1, !tbaa !1271

  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %148 = bitcast i64* %147 to double*

  store double 0.000000e+00, double* %148, align 1, !tbaa !1271

  %149 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 952) to double*)

  %150 = bitcast %union.VectorReg* %9 to double*

  store double %149, double* %150, align 1, !tbaa !1271

  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %152 = bitcast i64* %151 to double*

  store double 0.000000e+00, double* %152, align 1, !tbaa !1271

  %153 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 960) to double*)

  %154 = bitcast %union.VectorReg* %8 to double*

  store double %153, double* %154, align 1, !tbaa !1271

  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %156 = bitcast i64* %155 to double*

  store double 0.000000e+00, double* %156, align 1, !tbaa !1271

  %157 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 968) to double*)

  %158 = bitcast %union.VectorReg* %15 to double*

  store double %157, double* %158, align 1, !tbaa !1271

  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %160 = bitcast i64* %159 to double*

  store double 0.000000e+00, double* %160, align 1, !tbaa !1271

  br label %block_400b78



block_400ae9:                                     ; preds = %block_400ae0

  %161 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1048) to double*)

  %162 = bitcast %union.VectorReg* %11 to double*

  store double %161, double* %162, align 1, !tbaa !1271

  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %164 = bitcast i64* %163 to double*

  store double 0.000000e+00, double* %164, align 1, !tbaa !1271

  %165 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1064) to double*)

  %166 = bitcast %union.VectorReg* %9 to double*

  store double %165, double* %166, align 1, !tbaa !1271

  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %168 = bitcast i64* %167 to double*

  store double 0.000000e+00, double* %168, align 1, !tbaa !1271

  %169 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1056) to double*)

  %170 = bitcast %union.VectorReg* %8 to double*

  store double %169, double* %170, align 1, !tbaa !1271

  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %172 = bitcast i64* %171 to double*

  store double 0.000000e+00, double* %172, align 1, !tbaa !1271

  %173 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_603200__bss_type* @seg_603200__bss to i64), i64 1072) to double*)

  %174 = bitcast %union.VectorReg* %15 to double*

  store double %173, double* %174, align 1, !tbaa !1271

  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1

  %176 = bitcast i64* %175 to double*

  store double 0.000000e+00, double* %176, align 1, !tbaa !1271

  br label %block_400b78

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

define %struct.Memory* @sub_4005d0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  br i1 %10, label %block_4005dc, label %12



block_4005dc:                                     ; preds = %block_4005d0

  store i64 4195808, i64* %3, align 8

  %11 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 4195808, %struct.Memory* %2)

  ret %struct.Memory* %11



; <label>:12:                                     ; preds = %block_4005d0

  %13 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %13

}



; Function Attrs: noinline

define %struct.Memory* @sub_401750_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401750:

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

  store i64 %65, i64* %11, align 8, !alias.scope !1419, !noalias !1422

  store i64 %53, i64* %35, align 8, !alias.scope !1419, !noalias !1422

  %66 = tail call i64 @malloc(i64 262144)

  %67 = load i64, i64* %11, align 8

  store i64 %66, i64* bitcast (%key_array_type* @key_array to i64*)

  %68 = add i64 %67, 17

  %69 = load i64, i64* %35, align 8, !tbaa !1240

  %70 = add i64 %69, -8

  %71 = inttoptr i64 %70 to i64*

  store i64 %68, i64* %71

  %72 = inttoptr i64 %70 to i64*

  %73 = load i64, i64* %72

  store i64 %73, i64* %11, align 8, !alias.scope !1424, !noalias !1427

  store i64 %69, i64* %35, align 8, !alias.scope !1424, !noalias !1427

  %74 = tail call i64 @malloc(i64 8192)

  %75 = load i64, i64* %11, align 8

  store i64 %74, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %76 = add i64 %75, 17

  %77 = load i64, i64* %35, align 8, !tbaa !1240

  %78 = add i64 %77, -8

  %79 = inttoptr i64 %78 to i64*

  store i64 %76, i64* %79

  %80 = inttoptr i64 %78 to i64*

  %81 = load i64, i64* %80

  store i64 %81, i64* %11, align 8, !alias.scope !1429, !noalias !1432

  store i64 %77, i64* %35, align 8, !alias.scope !1429, !noalias !1432

  %82 = tail call i64 @malloc(i64 262144)

  %83 = load i64, i64* %11, align 8

  store i64 %82, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %84 = add i64 %83, 17

  %85 = load i64, i64* %35, align 8, !tbaa !1240

  %86 = add i64 %85, -8

  %87 = inttoptr i64 %86 to i64*

  store i64 %84, i64* %87

  %88 = inttoptr i64 %86 to i64*

  %89 = load i64, i64* %88

  store i64 %89, i64* %11, align 8, !alias.scope !1434, !noalias !1437

  store i64 %85, i64* %35, align 8, !alias.scope !1434, !noalias !1437

  %90 = tail call i64 @malloc(i64 20)

  %91 = load i64, i64* %11, align 8

  store i64 %90, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1145), i64 4294967295), i64* %33, align 8, !tbaa !1240

  %92 = add i64 %91, 22

  %93 = load i64, i64* %35, align 8, !tbaa !1240

  %94 = add i64 %93, -8

  %95 = inttoptr i64 %94 to i64*

  store i64 %92, i64* %95

  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %97 = inttoptr i64 %94 to i64*

  %98 = load i64, i64* %97

  store i64 %98, i64* %11, align 8, !alias.scope !1439, !noalias !1442

  store i64 %93, i64* %35, align 8, !alias.scope !1439, !noalias !1442

  %99 = tail call i64 @fopen(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1134), i64 4294967295), i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1145), i64 4294967295))

  %100 = load i64, i64* %11, align 8

  %101 = icmp eq i64 %99, 0

  %102 = select i1 %101, i64 65, i64 5

  %103 = add i64 %100, %102

  br i1 %101, label %block_4017ec, label %block_4017b0



block_401c7b:                                     ; preds = %block_401a29

  %104 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %105 = add i32 %104, 1

  store i32 %105, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  store i64 2, i64* %34, align 8, !tbaa !1240

  %106 = add i64 %1598, -4731

  %107 = add i64 %1598, 17

  %108 = load i64, i64* %35, align 8, !tbaa !1240

  %109 = add i64 %108, -8

  %110 = inttoptr i64 %109 to i64*

  store i64 %107, i64* %110

  store i64 %109, i64* %35, align 8, !tbaa !1240

  %111 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %106, %struct.Memory* %1600)

  %112 = load i8, i8* %22, align 1

  %113 = load i64, i64* %11, align 8

  %114 = icmp eq i8 %112, 0

  %115 = select i1 %114, i64 5, i64 19

  %116 = add i64 %113, %115

  br i1 %114, label %block_401c91, label %block_401c9f



block_4017f6:                                     ; preds = %block_4017b0, %block_4017ec

  %117 = phi i64 [ %325, %block_4017ec ], [ %1102, %block_4017b0 ]

  %118 = phi %struct.Memory* [ %324, %block_4017ec ], [ %1100, %block_4017b0 ]

  %119 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%S_test_index_array_type* @S_test_index_array to i64), i64 16) to i32*)

  store i32 %119, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 16) to i32*)

  %120 = bitcast [32 x %union.VectorReg]* %38 to i8*

  %121 = load float, float* bitcast (%S_test_index_array_type* @S_test_index_array to float*)

  %122 = load float, float* inttoptr (i64 add (i64 ptrtoint (%S_test_index_array_type* @S_test_index_array to i64), i64 4) to float*)

  %123 = load float, float* inttoptr (i64 add (i64 ptrtoint (%S_test_index_array_type* @S_test_index_array to i64), i64 8) to float*)

  %124 = load float, float* inttoptr (i64 add (i64 ptrtoint (%S_test_index_array_type* @S_test_index_array to i64), i64 12) to float*)

  %125 = bitcast [32 x %union.VectorReg]* %38 to float*

  store float %121, float* %125, align 1, !tbaa !1406

  %126 = getelementptr inbounds i8, i8* %120, i64 4

  %127 = bitcast i8* %126 to float*

  store float %122, float* %127, align 1, !tbaa !1406

  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %129 = bitcast i64* %128 to float*

  store float %123, float* %129, align 1, !tbaa !1406

  %130 = getelementptr inbounds i8, i8* %120, i64 12

  %131 = bitcast i8* %130 to float*

  store float %124, float* %131, align 1, !tbaa !1406

  %132 = bitcast [32 x %union.VectorReg]* %38 to <2 x float>*

  %133 = load <2 x float>, <2 x float>* %132, align 1

  %134 = bitcast i64* %128 to <2 x float>*

  %135 = load <2 x float>, <2 x float>* %134, align 1

  %136 = extractelement <2 x float> %133, i32 0

  store float %136, float* bitcast (%test_index_array_type* @test_index_array to float*)

  %137 = extractelement <2 x float> %133, i32 1

  store float %137, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 4) to float*)

  %138 = extractelement <2 x float> %135, i32 0

  store float %138, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 8) to float*)

  %139 = extractelement <2 x float> %135, i32 1

  store float %139, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 12) to float*)

  %140 = load float, float* bitcast (%S_test_rank_array_type* @S_test_rank_array to float*)

  %141 = load float, float* inttoptr (i64 add (i64 ptrtoint (%S_test_rank_array_type* @S_test_rank_array to i64), i64 4) to float*)

  %142 = load float, float* inttoptr (i64 add (i64 ptrtoint (%S_test_rank_array_type* @S_test_rank_array to i64), i64 8) to float*)

  %143 = load float, float* inttoptr (i64 add (i64 ptrtoint (%S_test_rank_array_type* @S_test_rank_array to i64), i64 12) to float*)

  store float %140, float* %125, align 1, !tbaa !1406

  store float %141, float* %127, align 1, !tbaa !1406

  store float %142, float* %129, align 1, !tbaa !1406

  store float %143, float* %131, align 1, !tbaa !1406

  %144 = load <2 x float>, <2 x float>* %132, align 1

  %145 = load <2 x float>, <2 x float>* %134, align 1

  %146 = extractelement <2 x float> %144, i32 0

  store float %146, float* bitcast (%test_rank_array_type* @test_rank_array to float*)

  %147 = extractelement <2 x float> %144, i32 1

  store float %147, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4) to float*)

  %148 = extractelement <2 x float> %145, i32 0

  store float %148, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8) to float*)

  %149 = extractelement <2 x float> %145, i32 1

  store float %149, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 12) to float*)

  %150 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%S_test_rank_array_type* @S_test_rank_array to i64), i64 16) to i32*)

  store i32 %150, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 16) to i32*)

  %151 = add i64 %117, 62

  %152 = load i64, i64* %35, align 8, !tbaa !1240

  %153 = add i64 %152, -8

  %154 = inttoptr i64 %153 to i64*

  store i64 %151, i64* %154

  %155 = inttoptr i64 %153 to i64*

  %156 = load i64, i64* %155

  store i64 %156, i64* %11, align 8, !alias.scope !1444, !noalias !1447

  store i64 %152, i64* %35, align 8, !alias.scope !1444, !noalias !1447

  %157 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1440), i64 4294967295))

  %158 = load i64, i64* %11, align 8

  store i64 83, i64* %32, align 8, !tbaa !1240

  %159 = add i64 %158, 22

  %160 = load i64, i64* %35, align 8, !tbaa !1240

  %161 = add i64 %160, -8

  %162 = inttoptr i64 %161 to i64*

  store i64 %159, i64* %162

  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %167 = load i64, i64* %163, align 8, !alias.scope !1449, !noalias !1452

  %168 = load i64, i64* %165, align 8, !alias.scope !1449, !noalias !1452

  %169 = load i64, i64* %166, align 8, !alias.scope !1449, !noalias !1452

  %170 = inttoptr i64 %160 to i64*

  %171 = load i64, i64* %170

  %172 = add i64 %160, 8

  %173 = inttoptr i64 %172 to i64*

  %174 = load i64, i64* %173

  %175 = add i64 %160, 16

  %176 = inttoptr i64 %175 to i64*

  %177 = load i64, i64* %176

  %178 = add i64 %160, 24

  %179 = inttoptr i64 %178 to i64*

  %180 = load i64, i64* %179

  %181 = add i64 %160, 32

  %182 = inttoptr i64 %181 to i64*

  %183 = load i64, i64* %182

  %184 = add i64 %160, 40

  %185 = inttoptr i64 %184 to i64*

  %186 = load i64, i64* %185

  %187 = add i64 %160, 48

  %188 = inttoptr i64 %187 to i64*

  %189 = load i64, i64* %188

  %190 = add i64 %160, 56

  %191 = inttoptr i64 %190 to i64*

  %192 = load i64, i64* %191

  %193 = add i64 %160, 64

  %194 = inttoptr i64 %193 to i64*

  %195 = load i64, i64* %194

  %196 = add i64 %160, 72

  %197 = inttoptr i64 %196 to i64*

  %198 = load i64, i64* %197

  %199 = inttoptr i64 %161 to i64*

  %200 = load i64, i64* %199

  store i64 %200, i64* %11, align 8, !alias.scope !1449, !noalias !1452

  store i64 %160, i64* %35, align 8, !alias.scope !1449, !noalias !1452

  %201 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1147), i64 4294967295), i64 65536, i64 83, i64 %167, i64 %168, i64 %169, i64 %171, i64 %174, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198)

  %202 = load i64, i64* %11, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1172), i64 4294967295), i64* %34, align 8, !tbaa !1240

  store i64 10, i64* %33, align 8, !tbaa !1240

  %203 = add i64 %202, 17

  %204 = load i64, i64* %35, align 8, !tbaa !1240

  %205 = add i64 %204, -8

  %206 = inttoptr i64 %205 to i64*

  store i64 %203, i64* %206

  %207 = load i64, i64* %164, align 8, !alias.scope !1454, !noalias !1457

  %208 = load i64, i64* %163, align 8, !alias.scope !1454, !noalias !1457

  %209 = load i64, i64* %165, align 8, !alias.scope !1454, !noalias !1457

  %210 = load i64, i64* %166, align 8, !alias.scope !1454, !noalias !1457

  %211 = inttoptr i64 %204 to i64*

  %212 = load i64, i64* %211

  %213 = add i64 %204, 8

  %214 = inttoptr i64 %213 to i64*

  %215 = load i64, i64* %214

  %216 = add i64 %204, 16

  %217 = inttoptr i64 %216 to i64*

  %218 = load i64, i64* %217

  %219 = add i64 %204, 24

  %220 = inttoptr i64 %219 to i64*

  %221 = load i64, i64* %220

  %222 = add i64 %204, 32

  %223 = inttoptr i64 %222 to i64*

  %224 = load i64, i64* %223

  %225 = add i64 %204, 40

  %226 = inttoptr i64 %225 to i64*

  %227 = load i64, i64* %226

  %228 = add i64 %204, 48

  %229 = inttoptr i64 %228 to i64*

  %230 = load i64, i64* %229

  %231 = add i64 %204, 56

  %232 = inttoptr i64 %231 to i64*

  %233 = load i64, i64* %232

  %234 = add i64 %204, 64

  %235 = inttoptr i64 %234 to i64*

  %236 = load i64, i64* %235

  %237 = add i64 %204, 72

  %238 = inttoptr i64 %237 to i64*

  %239 = load i64, i64* %238

  %240 = inttoptr i64 %205 to i64*

  %241 = load i64, i64* %240

  store i64 %241, i64* %11, align 8, !alias.scope !1454, !noalias !1457

  store i64 %204, i64* %35, align 8, !alias.scope !1454, !noalias !1457

  %242 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1172), i64 4294967295), i64 10, i64 %207, i64 %208, i64 %209, i64 %210, i64 %212, i64 %215, i64 %218, i64 %221, i64 %224, i64 %227, i64 %230, i64 %233, i64 %236, i64 %239), !noalias !1454

  %243 = load i8, i8* %22, align 1

  %244 = load i64, i64* %11, align 8

  %245 = icmp eq i8 %243, 0

  %246 = select i1 %245, i64 48, i64 5

  %247 = add i64 %244, %246

  br i1 %245, label %block_40188b, label %block_401860



block_401e14:                                     ; preds = %block_401d4e, %block_401cd5

  %248 = phi i64 [ %366, %block_401cd5 ], [ %707, %block_401d4e ]

  %249 = phi i64 [ %377, %block_401cd5 ], [ %706, %block_401d4e ]

  %250 = phi %struct.Memory* [ %363, %block_401cd5 ], [ %654, %block_401d4e ]

  %251 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %252 = add i64 %249, 12

  %253 = add i64 %248, -8

  %254 = inttoptr i64 %253 to i64*

  store i64 %252, i64* %254

  %255 = inttoptr i64 %253 to i64*

  %256 = load i64, i64* %255

  store i64 %256, i64* %11, align 8, !alias.scope !1459, !noalias !1462

  store i64 %248, i64* %35, align 8, !alias.scope !1459, !noalias !1462

  %257 = tail call i64 @free(i64 %251), !noalias !1459

  %258 = load i64, i64* %11, align 8

  %259 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %260 = add i64 %258, 12

  %261 = load i64, i64* %35, align 8, !tbaa !1240

  %262 = add i64 %261, -8

  %263 = inttoptr i64 %262 to i64*

  store i64 %260, i64* %263

  %264 = inttoptr i64 %262 to i64*

  %265 = load i64, i64* %264

  store i64 %265, i64* %11, align 8, !alias.scope !1464, !noalias !1467

  store i64 %261, i64* %35, align 8, !alias.scope !1464, !noalias !1467

  %266 = tail call i64 @free(i64 %259), !noalias !1464

  %267 = load i64, i64* %11, align 8

  %268 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %269 = add i64 %267, 12

  %270 = load i64, i64* %35, align 8, !tbaa !1240

  %271 = add i64 %270, -8

  %272 = inttoptr i64 %271 to i64*

  store i64 %269, i64* %272

  %273 = inttoptr i64 %271 to i64*

  %274 = load i64, i64* %273

  store i64 %274, i64* %11, align 8, !alias.scope !1469, !noalias !1472

  store i64 %270, i64* %35, align 8, !alias.scope !1469, !noalias !1472

  %275 = tail call i64 @free(i64 %268), !noalias !1469

  %276 = load i64, i64* %11, align 8

  %277 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %277, i64* %34, align 8, !tbaa !1240

  %278 = add i64 %276, 12

  %279 = load i64, i64* %35, align 8, !tbaa !1240

  %280 = add i64 %279, -8

  %281 = inttoptr i64 %280 to i64*

  store i64 %278, i64* %281

  store i64 %279, i64* %35, align 8, !alias.scope !1474, !noalias !1477

  %282 = tail call i64 @free(i64 %277)

  store i64 0, i64* %29, align 8, !tbaa !1240

  %283 = load i64, i64* %35, align 8

  %284 = add i64 %283, 16

  %285 = icmp ugt i64 %283, -17

  %286 = zext i1 %285 to i8

  store i8 %286, i8* %54, align 1, !tbaa !1244

  %287 = trunc i64 %284 to i32

  %288 = and i32 %287, 255

  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #10

  %290 = trunc i32 %289 to i8

  %291 = and i8 %290, 1

  %292 = xor i8 %291, 1

  store i8 %292, i8* %55, align 1, !tbaa !1258

  %293 = xor i64 %283, 16

  %294 = xor i64 %293, %284

  %295 = lshr i64 %294, 4

  %296 = trunc i64 %295 to i8

  %297 = and i8 %296, 1

  store i8 %297, i8* %56, align 1, !tbaa !1262

  %298 = icmp eq i64 %284, 0

  %299 = zext i1 %298 to i8

  store i8 %299, i8* %57, align 1, !tbaa !1259

  %300 = lshr i64 %284, 63

  %301 = trunc i64 %300 to i8

  store i8 %301, i8* %58, align 1, !tbaa !1260

  %302 = lshr i64 %283, 63

  %303 = xor i64 %300, %302

  %304 = add nuw nsw i64 %303, %300

  %305 = icmp eq i64 %304, 2

  %306 = zext i1 %305 to i8

  store i8 %306, i8* %59, align 1, !tbaa !1261

  %307 = add i64 %283, 24

  %308 = inttoptr i64 %284 to i64*

  %309 = load i64, i64* %308

  store i64 %309, i64* %30, align 8, !tbaa !1240

  %310 = add i64 %283, 32

  %311 = inttoptr i64 %307 to i64*

  %312 = load i64, i64* %311

  store i64 %312, i64* %37, align 8, !tbaa !1240

  %313 = add i64 %283, 40

  %314 = inttoptr i64 %310 to i64*

  %315 = load i64, i64* %314

  store i64 %315, i64* %36, align 8, !tbaa !1240

  %316 = inttoptr i64 %313 to i64*

  %317 = load i64, i64* %316

  store i64 %317, i64* %11, align 8, !tbaa !1240

  %318 = add i64 %283, 48

  store i64 %318, i64* %35, align 8, !tbaa !1240

  ret %struct.Memory* %250



block_4017ec:                                     ; preds = %block_401750

  store i64 0, i64* %37, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %319 = add i64 %103, -3628

  %320 = add i64 %103, 10

  %321 = load i64, i64* %35, align 8, !tbaa !1240

  %322 = add i64 %321, -8

  %323 = inttoptr i64 %322 to i64*

  store i64 %320, i64* %323

  store i64 %322, i64* %35, align 8, !tbaa !1240

  %324 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %319, %struct.Memory* %2)

  %325 = load i64, i64* %11, align 8

  br label %block_4017f6



block_401cd5:                                     ; preds = %block_401cc9, %block_401ca9

  %326 = phi i64 [ 51, %block_401ca9 ], [ 0, %block_401cc9 ]

  %327 = phi i64 [ %427, %block_401ca9 ], [ %1058, %block_401cc9 ]

  %328 = phi %struct.Memory* [ %379, %block_401ca9 ], [ %379, %block_401cc9 ]

  %329 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1000) to double*)

  %330 = bitcast %union.VectorReg* %39 to double*

  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %332 = load i64, i64* %35, align 8

  %333 = inttoptr i64 %332 to double*

  %334 = load double, double* %333

  store double %334, double* %1639, align 1, !tbaa !1271

  %335 = bitcast i64* %128 to double*

  store double 0.000000e+00, double* %335, align 1, !tbaa !1271

  %336 = fdiv double %329, %334

  %337 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1008) to double*)

  %338 = fdiv double %336, %337

  store double %338, double* %330, align 1, !tbaa !1271

  store i64 0, i64* %331, align 1, !tbaa !1271

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1216), i64 4294967295), i64* %34, align 8, !tbaa !1240

  store i64 83, i64* %33, align 8, !tbaa !1240

  store i64 1024, i64* %32, align 8, !tbaa !1240

  store i64 64, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %165, align 8, !tbaa !1240

  store i64 10, i64* %166, align 8, !tbaa !1240

  %339 = add i64 %332, -8

  %340 = inttoptr i64 %339 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1284), i64* %340

  %341 = add i64 %332, -16

  %342 = inttoptr i64 %341 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1275), i64* %342

  %343 = add i64 %332, -24

  %344 = inttoptr i64 %343 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1263), i64* %344

  %345 = add i64 %332, -32

  %346 = inttoptr i64 %345 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1259), i64* %346

  %347 = add i64 %332, -40

  %348 = inttoptr i64 %347 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1253), i64* %348

  %349 = add i64 %332, -48

  %350 = inttoptr i64 %349 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1249), i64* %350

  %351 = add i64 %332, -56

  %352 = inttoptr i64 %351 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1237), i64* %352

  %353 = add i64 %332, -64

  %354 = inttoptr i64 %353 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1231), i64* %354

  %355 = add i64 %332, -72

  %356 = inttoptr i64 %355 to i64*

  store i64 %326, i64* %356

  %357 = add i64 %332, -80

  %358 = inttoptr i64 %357 to i64*

  store i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1219), i64* %358

  %359 = add i64 %327, -5493

  %360 = add i64 %327, 108

  %361 = add i64 %332, -88

  %362 = inttoptr i64 %361 to i64*

  store i64 %360, i64* %362

  store i64 %361, i64* %35, align 8, !tbaa !1240

  %363 = tail call %struct.Memory* @sub_400760_c_print_results(%struct.State* nonnull %0, i64 %359, %struct.Memory* %328)

  %364 = load i64, i64* %35, align 8

  %365 = load i64, i64* %11, align 8

  %366 = add i64 %364, 80

  %367 = load i8, i8* %22, align 1

  store i8 0, i8* %54, align 1, !tbaa !1244

  %368 = zext i8 %367 to i32

  %369 = tail call i32 @llvm.ctpop.i32(i32 %368) #10

  %370 = trunc i32 %369 to i8

  %371 = and i8 %370, 1

  %372 = xor i8 %371, 1

  store i8 %372, i8* %55, align 1, !tbaa !1258

  %373 = icmp eq i8 %367, 0

  %374 = zext i1 %373 to i8

  store i8 %374, i8* %57, align 1, !tbaa !1259

  %375 = lshr i8 %367, 7

  store i8 %375, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %376 = select i1 %373, i64 211, i64 13

  %377 = add i64 %365, %376

  br i1 %373, label %block_401e14, label %block_401d4e



block_401ca9:                                     ; preds = %block_401aeb, %block_401c91, %block_401c93, %block_401c9f, %block_401c79

  %378 = phi i64 [ %1821, %block_401c93 ], [ %1815, %block_401c9f ], [ %1351, %block_401c79 ], [ %1957, %block_401c91 ], [ %1958, %block_401aeb ]

  %379 = phi %struct.Memory* [ %2207, %block_401c93 ], [ %1814, %block_401c9f ], [ %2207, %block_401c79 ], [ %111, %block_401c91 ], [ %1801, %block_401aeb ]

  %380 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %381 = zext i32 %380 to i64

  %382 = add i64 %378, 18

  %383 = load i64, i64* %35, align 8, !tbaa !1240

  %384 = add i64 %383, -8

  %385 = inttoptr i64 %384 to i64*

  store i64 %382, i64* %385

  %386 = load i64, i64* %164, align 8, !alias.scope !1479, !noalias !1482

  %387 = load i64, i64* %163, align 8, !alias.scope !1479, !noalias !1482

  %388 = load i64, i64* %165, align 8, !alias.scope !1479, !noalias !1482

  %389 = load i64, i64* %166, align 8, !alias.scope !1479, !noalias !1482

  %390 = inttoptr i64 %383 to i64*

  %391 = load i64, i64* %390

  %392 = add i64 %383, 8

  %393 = inttoptr i64 %392 to i64*

  %394 = load i64, i64* %393

  %395 = add i64 %383, 16

  %396 = inttoptr i64 %395 to i64*

  %397 = load i64, i64* %396

  %398 = add i64 %383, 24

  %399 = inttoptr i64 %398 to i64*

  %400 = load i64, i64* %399

  %401 = add i64 %383, 32

  %402 = inttoptr i64 %401 to i64*

  %403 = load i64, i64* %402

  %404 = add i64 %383, 40

  %405 = inttoptr i64 %404 to i64*

  %406 = load i64, i64* %405

  %407 = add i64 %383, 48

  %408 = inttoptr i64 %407 to i64*

  %409 = load i64, i64* %408

  %410 = add i64 %383, 56

  %411 = inttoptr i64 %410 to i64*

  %412 = load i64, i64* %411

  %413 = add i64 %383, 64

  %414 = inttoptr i64 %413 to i64*

  %415 = load i64, i64* %414

  %416 = add i64 %383, 72

  %417 = inttoptr i64 %416 to i64*

  %418 = load i64, i64* %417

  %419 = inttoptr i64 %384 to i64*

  %420 = load i64, i64* %419

  store i64 %420, i64* %11, align 8, !alias.scope !1479, !noalias !1482

  store i64 %383, i64* %35, align 8, !alias.scope !1479, !noalias !1482

  %421 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1191), i64 4294967295), i64 %381, i64 %386, i64 %387, i64 %388, i64 %389, i64 %391, i64 %394, i64 %397, i64 %400, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418), !noalias !1479

  %422 = load i64, i64* %11, align 8

  %423 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %424 = add i32 %423, -51

  %425 = icmp eq i32 %424, 0

  %426 = select i1 %425, i64 26, i64 14

  %427 = add i64 %422, %426

  br i1 %425, label %block_401cd5, label %block_401cc9



block_401d4e:                                     ; preds = %block_401cd5

  %428 = bitcast i64* %331 to double*

  store i64 3, i64* %34, align 8, !tbaa !1240

  %429 = add i64 %377, -4878

  %430 = add i64 %377, 10

  %431 = add i64 %364, 72

  %432 = inttoptr i64 %431 to i64*

  store i64 %430, i64* %432

  store i64 %431, i64* %35, align 8, !tbaa !1240

  %433 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %429, %struct.Memory* %363)

  %434 = load i64, i64* %35, align 8

  %435 = load i64, i64* %11, align 8

  %436 = load double, double* %1639, align 1

  %437 = load double, double* %335, align 1

  %438 = inttoptr i64 %434 to double*

  store double %436, double* %438

  %439 = add i64 %434, 8

  %440 = inttoptr i64 %439 to double*

  store double %437, double* %440

  %441 = add i64 %435, 15

  %442 = add i64 %434, -8

  %443 = inttoptr i64 %442 to i64*

  store i64 %441, i64* %443

  %444 = inttoptr i64 %442 to i64*

  %445 = load i64, i64* %444

  store i64 %445, i64* %11, align 8, !alias.scope !1484, !noalias !1487

  store i64 %434, i64* %35, align 8, !alias.scope !1484, !noalias !1487

  %446 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1504), i64 4294967295)), !noalias !1484

  %447 = load i64, i64* %11, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1304), i64 4294967295), i64* %34, align 8, !tbaa !1240

  %448 = load i64, i64* %35, align 8

  %449 = inttoptr i64 %448 to float*

  %450 = load float, float* %449

  %451 = add i64 %448, 4

  %452 = inttoptr i64 %451 to float*

  %453 = load float, float* %452

  %454 = add i64 %448, 8

  %455 = inttoptr i64 %454 to float*

  %456 = load float, float* %455

  %457 = add i64 %448, 12

  %458 = inttoptr i64 %457 to float*

  %459 = load float, float* %458

  store float %450, float* %125, align 1, !tbaa !1406

  store float %453, float* %127, align 1, !tbaa !1406

  store float %456, float* %129, align 1, !tbaa !1406

  store float %459, float* %131, align 1, !tbaa !1406

  %460 = add i64 %447, 16

  %461 = add i64 %448, -8

  %462 = inttoptr i64 %461 to i64*

  store i64 %460, i64* %462

  %463 = load i64, i64* %96, align 8, !alias.scope !1489, !noalias !1492

  %464 = load i64, i64* %164, align 8, !alias.scope !1489, !noalias !1492

  %465 = load i64, i64* %163, align 8, !alias.scope !1489, !noalias !1492

  %466 = load i64, i64* %165, align 8, !alias.scope !1489, !noalias !1492

  %467 = load i64, i64* %166, align 8, !alias.scope !1489, !noalias !1492

  %468 = inttoptr i64 %448 to i64*

  %469 = load i64, i64* %468

  %470 = add i64 %448, 8

  %471 = inttoptr i64 %470 to i64*

  %472 = load i64, i64* %471

  %473 = add i64 %448, 16

  %474 = inttoptr i64 %473 to i64*

  %475 = load i64, i64* %474

  %476 = add i64 %448, 24

  %477 = inttoptr i64 %476 to i64*

  %478 = load i64, i64* %477

  %479 = add i64 %448, 32

  %480 = inttoptr i64 %479 to i64*

  %481 = load i64, i64* %480

  %482 = add i64 %448, 40

  %483 = inttoptr i64 %482 to i64*

  %484 = load i64, i64* %483

  %485 = add i64 %448, 48

  %486 = inttoptr i64 %485 to i64*

  %487 = load i64, i64* %486

  %488 = add i64 %448, 56

  %489 = inttoptr i64 %488 to i64*

  %490 = load i64, i64* %489

  %491 = add i64 %448, 64

  %492 = inttoptr i64 %491 to i64*

  %493 = load i64, i64* %492

  %494 = add i64 %448, 72

  %495 = inttoptr i64 %494 to i64*

  %496 = load i64, i64* %495

  %497 = inttoptr i64 %461 to i64*

  %498 = load i64, i64* %497

  store i64 %498, i64* %11, align 8, !alias.scope !1489, !noalias !1492

  store i64 %448, i64* %35, align 8, !alias.scope !1489, !noalias !1492

  %499 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1304), i64 4294967295), i64 %463, i64 %464, i64 %465, i64 %466, i64 %467, i64 %469, i64 %472, i64 %475, i64 %478, i64 %481, i64 %484, i64 %487, i64 %490, i64 %493, i64 %496), !noalias !1489

  store i64 %499, i64* %63, align 8, !alias.scope !1489, !noalias !1492

  %500 = load i64, i64* %11, align 8

  %501 = add i64 %500, 4

  store i64 %501, i64* %11, align 8

  %502 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %433, i32 257) #14

  %503 = load i64, i64* %35, align 8

  %504 = load i64, i64* %11, align 8

  %505 = inttoptr i64 %503 to double*

  %506 = load double, double* %505

  %507 = add i64 %503, 8

  %508 = inttoptr i64 %507 to double*

  %509 = load double, double* %508

  %510 = bitcast %union.VectorReg* %40 to double*

  store double %506, double* %510, align 1, !tbaa !1271

  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %512 = bitcast i64* %511 to double*

  store double %509, double* %512, align 1, !tbaa !1271

  %513 = load double, double* %330, align 1

  %514 = fcmp oeq double %513, %506

  %515 = sext i1 %514 to i64

  %516 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %515, i64* %516, align 1, !tbaa !1240

  store i64 0, i64* %331, align 1, !tbaa !1240

  %517 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1016) to double*)

  store double %517, double* %1639, align 1, !tbaa !1271

  store double 0.000000e+00, double* %335, align 1, !tbaa !1271

  %518 = add i64 %504, 22

  store i64 %518, i64* %11, align 8

  %519 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %502, i32 257) #14

  %520 = load i64, i64* %11, align 8

  %521 = add i64 %520, 4

  store i64 %521, i64* %11, align 8

  %522 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %519, i32 257) #14

  %523 = load i64, i64* %11, align 8

  %524 = add i64 %523, 4

  store i64 %524, i64* %11, align 8

  %525 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %522, i32 257) #14

  %526 = load i64, i64* %35, align 8

  %527 = load i64, i64* %11, align 8

  %528 = load double, double* %330, align 1

  %529 = load double, double* %428, align 1

  %530 = inttoptr i64 %526 to double*

  store double %528, double* %530

  %531 = add i64 %526, 8

  %532 = inttoptr i64 %531 to double*

  store double %529, double* %532

  store i64 1, i64* %34, align 8, !tbaa !1240

  %533 = add i64 %527, -4953

  %534 = add i64 %527, 15

  %535 = add i64 %526, -8

  %536 = inttoptr i64 %535 to i64*

  store i64 %534, i64* %536

  store i64 %535, i64* %35, align 8, !tbaa !1240

  %537 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %533, %struct.Memory* %525)

  %538 = load i64, i64* %11, align 8

  %539 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  %540 = load <2 x i64>, <2 x i64>* %539, align 1

  %541 = load i64, i64* %35, align 8

  %542 = bitcast <2 x i64> %540 to <2 x double>

  %543 = extractelement <2 x double> %542, i32 0

  %544 = extractelement <2 x i64> %540, i32 1

  %545 = inttoptr i64 %541 to double*

  %546 = load double, double* %545

  %547 = fdiv double %543, %546

  %548 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1024) to double*)

  %549 = fmul double %547, %548

  store double %549, double* %330, align 1, !tbaa !1271

  store i64 %544, i64* %331, align 1, !tbaa !1271

  %550 = add i64 %538, 29

  %551 = add i64 %541, -8

  %552 = inttoptr i64 %551 to i64*

  store i64 %550, i64* %552

  %553 = load i64, i64* %96, align 8, !alias.scope !1494, !noalias !1497

  %554 = load i64, i64* %164, align 8, !alias.scope !1494, !noalias !1497

  %555 = load i64, i64* %163, align 8, !alias.scope !1494, !noalias !1497

  %556 = load i64, i64* %165, align 8, !alias.scope !1494, !noalias !1497

  %557 = load i64, i64* %166, align 8, !alias.scope !1494, !noalias !1497

  %558 = inttoptr i64 %541 to i64*

  %559 = load i64, i64* %558

  %560 = add i64 %541, 8

  %561 = inttoptr i64 %560 to i64*

  %562 = load i64, i64* %561

  %563 = add i64 %541, 16

  %564 = inttoptr i64 %563 to i64*

  %565 = load i64, i64* %564

  %566 = add i64 %541, 24

  %567 = inttoptr i64 %566 to i64*

  %568 = load i64, i64* %567

  %569 = add i64 %541, 32

  %570 = inttoptr i64 %569 to i64*

  %571 = load i64, i64* %570

  %572 = add i64 %541, 40

  %573 = inttoptr i64 %572 to i64*

  %574 = load i64, i64* %573

  %575 = add i64 %541, 48

  %576 = inttoptr i64 %575 to i64*

  %577 = load i64, i64* %576

  %578 = add i64 %541, 56

  %579 = inttoptr i64 %578 to i64*

  %580 = load i64, i64* %579

  %581 = add i64 %541, 64

  %582 = inttoptr i64 %581 to i64*

  %583 = load i64, i64* %582

  %584 = add i64 %541, 72

  %585 = inttoptr i64 %584 to i64*

  %586 = load i64, i64* %585

  %587 = inttoptr i64 %551 to i64*

  %588 = load i64, i64* %587

  store i64 %588, i64* %11, align 8, !alias.scope !1494, !noalias !1497

  store i64 %541, i64* %35, align 8, !alias.scope !1494, !noalias !1497

  %589 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1329), i64 4294967295), i64 %553, i64 %554, i64 %555, i64 %556, i64 %557, i64 %559, i64 %562, i64 %565, i64 %568, i64 %571, i64 %574, i64 %577, i64 %580, i64 %583, i64 %586), !noalias !1494

  %590 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %591 = add i64 %590, -4997

  %592 = add i64 %590, 7

  %593 = load i64, i64* %35, align 8, !tbaa !1240

  %594 = add i64 %593, -8

  %595 = inttoptr i64 %594 to i64*

  store i64 %592, i64* %595

  store i64 %594, i64* %35, align 8, !tbaa !1240

  %596 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %591, %struct.Memory* %537)

  %597 = load i64, i64* %11, align 8

  %598 = load <2 x i64>, <2 x i64>* %539, align 1

  %599 = load i64, i64* %35, align 8

  %600 = bitcast <2 x i64> %598 to <2 x double>

  %601 = extractelement <2 x double> %600, i32 0

  %602 = extractelement <2 x i64> %598, i32 1

  %603 = inttoptr i64 %599 to double*

  %604 = load double, double* %603

  %605 = fdiv double %601, %604

  %606 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1024) to double*)

  %607 = fmul double %605, %606

  store double %607, double* %330, align 1, !tbaa !1271

  store i64 %602, i64* %331, align 1, !tbaa !1271

  %608 = add i64 %597, 29

  %609 = add i64 %599, -8

  %610 = inttoptr i64 %609 to i64*

  store i64 %608, i64* %610

  %611 = load i64, i64* %96, align 8, !alias.scope !1499, !noalias !1502

  %612 = load i64, i64* %164, align 8, !alias.scope !1499, !noalias !1502

  %613 = load i64, i64* %163, align 8, !alias.scope !1499, !noalias !1502

  %614 = load i64, i64* %165, align 8, !alias.scope !1499, !noalias !1502

  %615 = load i64, i64* %166, align 8, !alias.scope !1499, !noalias !1502

  %616 = inttoptr i64 %599 to i64*

  %617 = load i64, i64* %616

  %618 = add i64 %599, 8

  %619 = inttoptr i64 %618 to i64*

  %620 = load i64, i64* %619

  %621 = add i64 %599, 16

  %622 = inttoptr i64 %621 to i64*

  %623 = load i64, i64* %622

  %624 = add i64 %599, 24

  %625 = inttoptr i64 %624 to i64*

  %626 = load i64, i64* %625

  %627 = add i64 %599, 32

  %628 = inttoptr i64 %627 to i64*

  %629 = load i64, i64* %628

  %630 = add i64 %599, 40

  %631 = inttoptr i64 %630 to i64*

  %632 = load i64, i64* %631

  %633 = add i64 %599, 48

  %634 = inttoptr i64 %633 to i64*

  %635 = load i64, i64* %634

  %636 = add i64 %599, 56

  %637 = inttoptr i64 %636 to i64*

  %638 = load i64, i64* %637

  %639 = add i64 %599, 64

  %640 = inttoptr i64 %639 to i64*

  %641 = load i64, i64* %640

  %642 = add i64 %599, 72

  %643 = inttoptr i64 %642 to i64*

  %644 = load i64, i64* %643

  %645 = inttoptr i64 %609 to i64*

  %646 = load i64, i64* %645

  store i64 %646, i64* %11, align 8, !alias.scope !1499, !noalias !1502

  store i64 %599, i64* %35, align 8, !alias.scope !1499, !noalias !1502

  %647 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1364), i64 4294967295), i64 %611, i64 %612, i64 %613, i64 %614, i64 %615, i64 %617, i64 %620, i64 %623, i64 %626, i64 %629, i64 %632, i64 %635, i64 %638, i64 %641, i64 %644), !noalias !1499

  %648 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %649 = add i64 %648, -5033

  %650 = add i64 %648, 10

  %651 = load i64, i64* %35, align 8, !tbaa !1240

  %652 = add i64 %651, -8

  %653 = inttoptr i64 %652 to i64*

  store i64 %650, i64* %653

  store i64 %652, i64* %35, align 8, !tbaa !1240

  %654 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %649, %struct.Memory* %596)

  %655 = load i64, i64* %11, align 8

  %656 = load <2 x i64>, <2 x i64>* %539, align 1

  %657 = load i64, i64* %35, align 8

  %658 = bitcast <2 x i64> %656 to <2 x double>

  %659 = extractelement <2 x double> %658, i32 0

  %660 = extractelement <2 x i64> %656, i32 1

  %661 = inttoptr i64 %657 to double*

  %662 = load double, double* %661

  %663 = fdiv double %659, %662

  store double %663, double* %510, align 1, !tbaa !1271

  store i64 %660, i64* %511, align 1, !tbaa !1271

  %664 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1024) to double*)

  %665 = fmul double %664, %663

  store double %665, double* %330, align 1, !tbaa !1271

  store i64 0, i64* %331, align 1, !tbaa !1271

  %666 = add i64 %655, 33

  %667 = add i64 %657, -8

  %668 = inttoptr i64 %667 to i64*

  store i64 %666, i64* %668

  %669 = load i64, i64* %96, align 8, !alias.scope !1504, !noalias !1507

  %670 = load i64, i64* %164, align 8, !alias.scope !1504, !noalias !1507

  %671 = load i64, i64* %163, align 8, !alias.scope !1504, !noalias !1507

  %672 = load i64, i64* %165, align 8, !alias.scope !1504, !noalias !1507

  %673 = load i64, i64* %166, align 8, !alias.scope !1504, !noalias !1507

  %674 = inttoptr i64 %657 to i64*

  %675 = load i64, i64* %674

  %676 = add i64 %657, 8

  %677 = inttoptr i64 %676 to i64*

  %678 = load i64, i64* %677

  %679 = add i64 %657, 16

  %680 = inttoptr i64 %679 to i64*

  %681 = load i64, i64* %680

  %682 = add i64 %657, 24

  %683 = inttoptr i64 %682 to i64*

  %684 = load i64, i64* %683

  %685 = add i64 %657, 32

  %686 = inttoptr i64 %685 to i64*

  %687 = load i64, i64* %686

  %688 = add i64 %657, 40

  %689 = inttoptr i64 %688 to i64*

  %690 = load i64, i64* %689

  %691 = add i64 %657, 48

  %692 = inttoptr i64 %691 to i64*

  %693 = load i64, i64* %692

  %694 = add i64 %657, 56

  %695 = inttoptr i64 %694 to i64*

  %696 = load i64, i64* %695

  %697 = add i64 %657, 64

  %698 = inttoptr i64 %697 to i64*

  %699 = load i64, i64* %698

  %700 = add i64 %657, 72

  %701 = inttoptr i64 %700 to i64*

  %702 = load i64, i64* %701

  %703 = inttoptr i64 %667 to i64*

  %704 = load i64, i64* %703

  store i64 %704, i64* %11, align 8, !alias.scope !1504, !noalias !1507

  store i64 %657, i64* %35, align 8, !alias.scope !1504, !noalias !1507

  %705 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1399), i64 4294967295), i64 %669, i64 %670, i64 %671, i64 %672, i64 %673, i64 %675, i64 %678, i64 %681, i64 %684, i64 %687, i64 %690, i64 %693, i64 %696, i64 %699, i64 %702), !noalias !1504

  %706 = load i64, i64* %11, align 8

  %707 = load i64, i64* %35, align 8, !tbaa !1240

  br label %block_401e14



block_4019f4:                                     ; preds = %block_4019a4, %block_4019c0

  %708 = phi i64 [ %1350, %block_4019a4 ], [ %989, %block_4019c0 ]

  %709 = phi i64 [ -65520, %block_4019a4 ], [ %1057, %block_4019c0 ]

  %710 = phi i64 [ %1268, %block_4019a4 ], [ %1056, %block_4019c0 ]

  %711 = shl i64 %709, 2

  %712 = add i64 %1270, %711

  %713 = inttoptr i64 %712 to float*

  %714 = load float, float* %713

  %715 = add i64 %712, 4

  %716 = inttoptr i64 %715 to float*

  %717 = load float, float* %716

  %718 = add i64 %712, 8

  %719 = inttoptr i64 %718 to float*

  %720 = load float, float* %719

  %721 = add i64 %712, 12

  %722 = inttoptr i64 %721 to float*

  %723 = load float, float* %722

  store float %714, float* %1271, align 1, !tbaa !1406

  store float %717, float* %1273, align 1, !tbaa !1406

  store float %720, float* %1275, align 1, !tbaa !1406

  store float %723, float* %1277, align 1, !tbaa !1406

  %724 = add i64 %1279, %711

  %725 = inttoptr i64 %724 to float*

  %726 = load float, float* %725

  %727 = add i64 %724, 4

  %728 = inttoptr i64 %727 to float*

  %729 = load float, float* %728

  %730 = add i64 %724, 8

  %731 = inttoptr i64 %730 to float*

  %732 = load float, float* %731

  %733 = add i64 %724, 12

  %734 = inttoptr i64 %733 to float*

  %735 = load float, float* %734

  store float %726, float* %1280, align 1, !tbaa !1406

  store float %729, float* %1282, align 1, !tbaa !1406

  store float %732, float* %1284, align 1, !tbaa !1406

  store float %735, float* %1286, align 1, !tbaa !1406

  %736 = load i64, i64* %1287, align 1

  %737 = load i64, i64* %1288, align 1

  %738 = lshr i64 %708, 32

  %739 = trunc i64 %738 to i32

  %740 = trunc i64 %736 to i32

  %741 = trunc i64 %737 to i32

  store i32 %739, i32* %1258, align 1, !tbaa !1405

  store i32 %740, i32* %1260, align 1, !tbaa !1405

  store i32 %741, i32* %1262, align 1, !tbaa !1405

  store i32 %741, i32* %1264, align 1, !tbaa !1405

  %742 = load i64, i64* %1287, align 1

  %743 = load i64, i64* %1261, align 1

  %744 = load i64, i64* %1274, align 1

  %745 = trunc i64 %742 to i32

  %746 = trunc i64 %743 to i32

  %747 = lshr i64 %737, 32

  %748 = trunc i64 %747 to i32

  %749 = trunc i64 %744 to i32

  store i32 %745, i32* %1258, align 1, !tbaa !1405

  store i32 %746, i32* %1260, align 1, !tbaa !1405

  store i32 %748, i32* %1262, align 1, !tbaa !1405

  store i32 %749, i32* %1264, align 1, !tbaa !1405

  %750 = load i64, i64* %1287, align 1

  %751 = load i64, i64* %1261, align 1

  %752 = trunc i64 %750 to i32

  %753 = icmp sgt i32 %752, %741

  %754 = sext i1 %753 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1289)

  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 16

  store i32 %754, i32* %1290, align 16

  %755 = load i64, i64* %1291, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1289)

  %756 = lshr i64 %750, 32

  %757 = trunc i64 %756 to i32

  %758 = icmp sgt i32 %757, %748

  %759 = sext i1 %758 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1289)

  store i64 %755, i64* %1291, align 16

  store i64 0, i64* %1292, align 8

  store i32 %759, i32* %1294, align 4

  %760 = load i64, i64* %1291, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1289)

  %761 = trunc i64 %751 to i32

  %762 = icmp sgt i32 %761, %749

  %763 = sext i1 %762 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1289)

  store i64 %760, i64* %1291, align 16

  store i64 0, i64* %1292, align 8

  store i32 %763, i32* %1295, align 8

  %764 = load i64, i64* %1292, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1289)

  %765 = lshr i64 %751, 32

  %766 = trunc i64 %765 to i32

  %767 = lshr i64 %744, 32

  %768 = trunc i64 %767 to i32

  %769 = icmp sgt i32 %766, %768

  %770 = sext i1 %769 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1289)

  store i64 %760, i64* %1291, align 16

  store i64 %764, i64* %1292, align 8

  store i32 %770, i32* %1297, align 4

  %771 = load i64, i64* %1292, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1289)

  %772 = lshr i64 %760, 32

  %773 = trunc i64 %760 to i32

  %774 = trunc i64 %772 to i32

  store i32 %773, i32* %1258, align 1, !tbaa !1405

  store i32 %774, i32* %1260, align 1, !tbaa !1405

  %775 = trunc i64 %771 to i32

  store i32 %775, i32* %1262, align 1, !tbaa !1405

  %776 = lshr i64 %771, 32

  %777 = trunc i64 %776 to i32

  store i32 %777, i32* %1264, align 1, !tbaa !1405

  %778 = load i64, i64* %1298, align 1

  %779 = trunc i64 %778 to i32

  store i32 %768, i32* %1299, align 1, !tbaa !1405

  store i32 %741, i32* %1300, align 1, !tbaa !1405

  store i32 %779, i32* %1301, align 1, !tbaa !1405

  store i32 %779, i32* %1302, align 1, !tbaa !1405

  %780 = load i64, i64* %1288, align 1

  %781 = load i64, i64* %1274, align 1

  %782 = load i64, i64* %1283, align 1

  %783 = trunc i64 %780 to i32

  %784 = trunc i64 %781 to i32

  %785 = lshr i64 %778, 32

  %786 = trunc i64 %785 to i32

  %787 = trunc i64 %782 to i32

  store i32 %783, i32* %1299, align 1, !tbaa !1405

  store i32 %784, i32* %1300, align 1, !tbaa !1405

  store i32 %786, i32* %1301, align 1, !tbaa !1405

  store i32 %787, i32* %1302, align 1, !tbaa !1405

  %788 = load i64, i64* %1303, align 1

  %789 = load i64, i64* %128, align 1

  %790 = lshr i64 %788, 32

  %791 = load i64, i64* %1287, align 1

  %792 = load i64, i64* %1261, align 1

  %793 = lshr i64 %791, 32

  %794 = sub i64 %788, %791

  %795 = sub nsw i64 %790, %793

  %796 = sub i64 %789, %792

  %797 = lshr i64 %789, 32

  %798 = lshr i64 %792, 32

  %799 = sub nsw i64 %797, %798

  %800 = trunc i64 %794 to i32

  %801 = trunc i64 %795 to i32

  store i32 %800, i32* %1246, align 1, !tbaa !1405

  store i32 %801, i32* %1247, align 1, !tbaa !1405

  %802 = trunc i64 %796 to i32

  store i32 %802, i32* %1248, align 1, !tbaa !1405

  %803 = trunc i64 %799 to i32

  store i32 %803, i32* %1249, align 1, !tbaa !1405

  %804 = load i64, i64* %1288, align 1

  %805 = load i64, i64* %1274, align 1

  %806 = trunc i64 %804 to i32

  %807 = icmp sgt i32 %806, %779

  %808 = sext i1 %807 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1304)

  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 16

  store i32 %808, i32* %1305, align 16

  %809 = load i64, i64* %1306, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1304)

  %810 = lshr i64 %804, 32

  %811 = trunc i64 %810 to i32

  %812 = icmp sgt i32 %811, %786

  %813 = sext i1 %812 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1304)

  store i64 %809, i64* %1306, align 16

  store i64 0, i64* %1307, align 8

  store i32 %813, i32* %1309, align 4

  %814 = load i64, i64* %1306, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1304)

  %815 = trunc i64 %805 to i32

  %816 = icmp sgt i32 %815, %787

  %817 = sext i1 %816 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1304)

  store i64 %814, i64* %1306, align 16

  store i64 0, i64* %1307, align 8

  store i32 %817, i32* %1310, align 8

  %818 = load i64, i64* %1307, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1304)

  %819 = lshr i64 %805, 32

  %820 = trunc i64 %819 to i32

  %821 = lshr i64 %782, 32

  %822 = trunc i64 %821 to i32

  %823 = icmp sgt i32 %820, %822

  %824 = sext i1 %823 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1304)

  store i64 %814, i64* %1306, align 16

  store i64 %818, i64* %1307, align 8

  store i32 %824, i32* %1312, align 4

  %825 = load i64, i64* %1307, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1304)

  %826 = lshr i64 %814, 32

  %827 = trunc i64 %814 to i32

  %828 = trunc i64 %826 to i32

  store i32 %827, i32* %1299, align 1, !tbaa !1405

  store i32 %828, i32* %1300, align 1, !tbaa !1405

  %829 = trunc i64 %825 to i32

  store i32 %829, i32* %1301, align 1, !tbaa !1405

  %830 = lshr i64 %825, 32

  %831 = trunc i64 %830 to i32

  store i32 %831, i32* %1302, align 1, !tbaa !1405

  %832 = load i64, i64* %1313, align 1

  %833 = load i64, i64* %1314, align 1

  %834 = lshr i64 %832, 32

  %835 = load i64, i64* %1288, align 1

  %836 = load i64, i64* %1274, align 1

  %837 = lshr i64 %835, 32

  %838 = sub i64 %832, %835

  %839 = sub nsw i64 %834, %837

  %840 = sub i64 %833, %836

  %841 = lshr i64 %833, 32

  %842 = lshr i64 %836, 32

  %843 = sub nsw i64 %841, %842

  %844 = trunc i64 %838 to i32

  %845 = trunc i64 %839 to i32

  store i32 %844, i32* %1315, align 1, !tbaa !1405

  store i32 %845, i32* %1317, align 1, !tbaa !1405

  %846 = trunc i64 %840 to i32

  store i32 %846, i32* %1318, align 1, !tbaa !1405

  %847 = trunc i64 %843 to i32

  store i32 %847, i32* %1320, align 1, !tbaa !1405

  %848 = load i64, i64* %31, align 8

  %849 = icmp eq i64 %848, 0

  %850 = select i1 %849, i64 53, i64 -52

  %851 = add i64 %710, %850

  br i1 %849, label %block_401a29, label %block_4019c0



block_40193b:                                     ; preds = %block_4018a0

  store i64 2, i64* %34, align 8, !tbaa !1240

  %852 = add i64 %1746, -3947

  %853 = add i64 %1746, 10

  %854 = add i64 %1739, -8

  %855 = inttoptr i64 %854 to i64*

  store i64 %853, i64* %855

  store i64 %854, i64* %35, align 8, !tbaa !1240

  %856 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %852, %struct.Memory* %1738)

  %857 = load i64, i64* %11, align 8

  %858 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %859 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %859, i64* %29, align 8, !tbaa !1240

  %860 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %861 = add i64 %858, 262144

  %862 = add i64 %859, -4

  %863 = add i64 %858, 262148

  br label %block_401970



block_401c5a:                                     ; preds = %block_401bc9

  %864 = add i64 %2205, 14

  %865 = load i64, i64* %35, align 8, !tbaa !1240

  %866 = add i64 %865, -8

  %867 = inttoptr i64 %866 to i64*

  store i64 %864, i64* %867

  %868 = load i64, i64* %164, align 8, !alias.scope !1509, !noalias !1512

  %869 = load i64, i64* %165, align 8, !alias.scope !1509, !noalias !1512

  %870 = load i64, i64* %166, align 8, !alias.scope !1509, !noalias !1512

  %871 = inttoptr i64 %865 to i64*

  %872 = load i64, i64* %871

  %873 = add i64 %865, 8

  %874 = inttoptr i64 %873 to i64*

  %875 = load i64, i64* %874

  %876 = add i64 %865, 16

  %877 = inttoptr i64 %876 to i64*

  %878 = load i64, i64* %877

  %879 = add i64 %865, 24

  %880 = inttoptr i64 %879 to i64*

  %881 = load i64, i64* %880

  %882 = add i64 %865, 32

  %883 = inttoptr i64 %882 to i64*

  %884 = load i64, i64* %883

  %885 = add i64 %865, 40

  %886 = inttoptr i64 %885 to i64*

  %887 = load i64, i64* %886

  %888 = add i64 %865, 48

  %889 = inttoptr i64 %888 to i64*

  %890 = load i64, i64* %889

  %891 = add i64 %865, 56

  %892 = inttoptr i64 %891 to i64*

  %893 = load i64, i64* %892

  %894 = add i64 %865, 64

  %895 = inttoptr i64 %894 to i64*

  %896 = load i64, i64* %895

  %897 = add i64 %865, 72

  %898 = inttoptr i64 %897 to i64*

  %899 = load i64, i64* %898

  %900 = inttoptr i64 %866 to i64*

  %901 = load i64, i64* %900

  store i64 %901, i64* %11, align 8, !alias.scope !1509, !noalias !1512

  store i64 %865, i64* %35, align 8, !alias.scope !1509, !noalias !1512

  %902 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1032), i64 4294967295), i64 %2202, i64 %868, i64 %2202, i64 %869, i64 %870, i64 %872, i64 %875, i64 %878, i64 %881, i64 %884, i64 %887, i64 %890, i64 %893, i64 %896, i64 %899), !noalias !1509

  %903 = load i64, i64* %11, align 8

  %904 = load i64, i64* @stdout

  %905 = add i64 %903, 12

  %906 = load i64, i64* %35, align 8, !tbaa !1240

  %907 = add i64 %906, -8

  %908 = inttoptr i64 %907 to i64*

  store i64 %905, i64* %908

  %909 = inttoptr i64 %907 to i64*

  %910 = load i64, i64* %909

  store i64 %910, i64* %11, align 8, !alias.scope !1514, !noalias !1517

  store i64 %906, i64* %35, align 8, !alias.scope !1514, !noalias !1517

  %911 = tail call i64 @fflush(i64 %904), !noalias !1514

  %912 = load i8, i8* %22, align 1

  %913 = load i64, i64* %11, align 8

  %914 = icmp eq i8 %912, 0

  %915 = select i1 %914, i64 5, i64 43

  %916 = add i64 %913, %915

  br i1 %914, label %block_401c79, label %block_401c9f



block_4019c0:                                     ; preds = %block_4019f4

  %917 = shl i64 %848, 2

  %918 = add i64 %1322, %917

  %919 = inttoptr i64 %918 to float*

  %920 = load float, float* %919

  %921 = add i64 %918, 4

  %922 = inttoptr i64 %921 to float*

  %923 = load float, float* %922

  %924 = add i64 %918, 8

  %925 = inttoptr i64 %924 to float*

  %926 = load float, float* %925

  %927 = add i64 %918, 12

  %928 = inttoptr i64 %927 to float*

  %929 = load float, float* %928

  store float %920, float* %1271, align 1, !tbaa !1406

  store float %923, float* %1273, align 1, !tbaa !1406

  store float %926, float* %1275, align 1, !tbaa !1406

  store float %929, float* %1277, align 1, !tbaa !1406

  %930 = add i64 %1323, %917

  %931 = inttoptr i64 %930 to float*

  %932 = load float, float* %931

  %933 = add i64 %930, 4

  %934 = inttoptr i64 %933 to float*

  %935 = load float, float* %934

  %936 = add i64 %930, 8

  %937 = inttoptr i64 %936 to float*

  %938 = load float, float* %937

  %939 = add i64 %930, 12

  %940 = inttoptr i64 %939 to float*

  %941 = load float, float* %940

  store float %932, float* %1324, align 1, !tbaa !1406

  store float %935, float* %1325, align 1, !tbaa !1406

  store float %938, float* %1326, align 1, !tbaa !1406

  store float %941, float* %1327, align 1, !tbaa !1406

  %942 = load i64, i64* %1298, align 1

  %943 = load i64, i64* %1283, align 1

  %944 = load i64, i64* %1288, align 1

  %945 = lshr i64 %943, 32

  %946 = trunc i64 %945 to i32

  %947 = trunc i64 %942 to i32

  %948 = trunc i64 %944 to i32

  store i32 %946, i32* %1328, align 1, !tbaa !1405

  store i32 %947, i32* %1329, align 1, !tbaa !1405

  store i32 %948, i32* %1330, align 1, !tbaa !1405

  store i32 %948, i32* %1331, align 1, !tbaa !1405

  %949 = load i64, i64* %1298, align 1

  %950 = load i64, i64* %1283, align 1

  %951 = load i64, i64* %1274, align 1

  %952 = trunc i64 %949 to i32

  %953 = trunc i64 %950 to i32

  %954 = lshr i64 %944, 32

  %955 = trunc i64 %954 to i32

  %956 = trunc i64 %951 to i32

  store i32 %952, i32* %1328, align 1, !tbaa !1405

  store i32 %953, i32* %1329, align 1, !tbaa !1405

  store i32 %955, i32* %1330, align 1, !tbaa !1405

  store i32 %956, i32* %1331, align 1, !tbaa !1405

  %957 = load i64, i64* %1298, align 1

  %958 = load i64, i64* %1283, align 1

  %959 = trunc i64 %957 to i32

  %960 = icmp sgt i32 %959, %948

  %961 = sext i1 %960 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1332)

  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16

  store i32 %961, i32* %1333, align 16

  %962 = load i64, i64* %1334, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1332)

  %963 = lshr i64 %957, 32

  %964 = trunc i64 %963 to i32

  %965 = icmp sgt i32 %964, %955

  %966 = sext i1 %965 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1332)

  store i64 %962, i64* %1334, align 16

  store i64 0, i64* %1335, align 8

  store i32 %966, i32* %1337, align 4

  %967 = load i64, i64* %1334, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1332)

  %968 = trunc i64 %958 to i32

  %969 = icmp sgt i32 %968, %956

  %970 = sext i1 %969 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1332)

  store i64 %967, i64* %1334, align 16

  store i64 0, i64* %1335, align 8

  store i32 %970, i32* %1338, align 8

  %971 = load i64, i64* %1335, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1332)

  %972 = lshr i64 %958, 32

  %973 = trunc i64 %972 to i32

  %974 = lshr i64 %951, 32

  %975 = trunc i64 %974 to i32

  %976 = icmp sgt i32 %973, %975

  %977 = sext i1 %976 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1332)

  store i64 %967, i64* %1334, align 16

  store i64 %971, i64* %1335, align 8

  store i32 %977, i32* %1340, align 4

  %978 = load i64, i64* %1335, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1332)

  %979 = lshr i64 %967, 32

  %980 = trunc i64 %967 to i32

  %981 = trunc i64 %979 to i32

  store i32 %980, i32* %1328, align 1, !tbaa !1405

  store i32 %981, i32* %1329, align 1, !tbaa !1405

  %982 = trunc i64 %978 to i32

  store i32 %982, i32* %1330, align 1, !tbaa !1405

  %983 = lshr i64 %978, 32

  %984 = trunc i64 %983 to i32

  store i32 %984, i32* %1331, align 1, !tbaa !1405

  %985 = load i64, i64* %1287, align 1

  %986 = trunc i64 %985 to i32

  store i32 %975, i32* %1299, align 1, !tbaa !1405

  store i32 %948, i32* %1300, align 1, !tbaa !1405

  store i32 %986, i32* %1301, align 1, !tbaa !1405

  store i32 %986, i32* %1302, align 1, !tbaa !1405

  %987 = load i64, i64* %1288, align 1

  %988 = load i64, i64* %1274, align 1

  %989 = load i64, i64* %1261, align 1

  %990 = trunc i64 %987 to i32

  %991 = trunc i64 %988 to i32

  %992 = lshr i64 %985, 32

  %993 = trunc i64 %992 to i32

  %994 = trunc i64 %989 to i32

  store i32 %990, i32* %1299, align 1, !tbaa !1405

  store i32 %991, i32* %1300, align 1, !tbaa !1405

  store i32 %993, i32* %1301, align 1, !tbaa !1405

  store i32 %994, i32* %1302, align 1, !tbaa !1405

  %995 = load i64, i64* %1288, align 1

  %996 = load i64, i64* %1274, align 1

  %997 = trunc i64 %995 to i32

  %998 = icmp sgt i32 %997, %986

  %999 = sext i1 %998 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1341)

  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16

  store i32 %999, i32* %1342, align 16

  %1000 = load i64, i64* %1343, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1341)

  %1001 = lshr i64 %995, 32

  %1002 = trunc i64 %1001 to i32

  %1003 = icmp sgt i32 %1002, %993

  %1004 = sext i1 %1003 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1341)

  store i64 %1000, i64* %1343, align 16

  store i64 0, i64* %1344, align 8

  store i32 %1004, i32* %1346, align 4

  %1005 = load i64, i64* %1343, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1341)

  %1006 = trunc i64 %996 to i32

  %1007 = icmp sgt i32 %1006, %994

  %1008 = sext i1 %1007 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1341)

  store i64 %1005, i64* %1343, align 16

  store i64 0, i64* %1344, align 8

  store i32 %1008, i32* %1347, align 8

  %1009 = load i64, i64* %1344, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1341)

  %1010 = lshr i64 %996, 32

  %1011 = trunc i64 %1010 to i32

  %1012 = lshr i64 %989, 32

  %1013 = trunc i64 %1012 to i32

  %1014 = icmp sgt i32 %1011, %1013

  %1015 = sext i1 %1014 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1341)

  store i64 %1005, i64* %1343, align 16

  store i64 %1009, i64* %1344, align 8

  store i32 %1015, i32* %1349, align 4

  %1016 = load i64, i64* %1344, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1341)

  %1017 = lshr i64 %1005, 32

  %1018 = trunc i64 %1005 to i32

  %1019 = trunc i64 %1017 to i32

  store i32 %1018, i32* %1299, align 1, !tbaa !1405

  store i32 %1019, i32* %1300, align 1, !tbaa !1405

  %1020 = trunc i64 %1016 to i32

  store i32 %1020, i32* %1301, align 1, !tbaa !1405

  %1021 = lshr i64 %1016, 32

  %1022 = trunc i64 %1021 to i32

  store i32 %1022, i32* %1302, align 1, !tbaa !1405

  %1023 = load i64, i64* %1303, align 1

  %1024 = load i64, i64* %128, align 1

  %1025 = lshr i64 %1023, 32

  %1026 = load i64, i64* %1298, align 1

  %1027 = load i64, i64* %1283, align 1

  %1028 = lshr i64 %1026, 32

  %1029 = sub i64 %1023, %1026

  %1030 = sub nsw i64 %1025, %1028

  %1031 = sub i64 %1024, %1027

  %1032 = lshr i64 %1024, 32

  %1033 = lshr i64 %1027, 32

  %1034 = sub nsw i64 %1032, %1033

  %1035 = trunc i64 %1029 to i32

  %1036 = trunc i64 %1030 to i32

  store i32 %1035, i32* %1246, align 1, !tbaa !1405

  store i32 %1036, i32* %1247, align 1, !tbaa !1405

  %1037 = trunc i64 %1031 to i32

  store i32 %1037, i32* %1248, align 1, !tbaa !1405

  %1038 = trunc i64 %1034 to i32

  store i32 %1038, i32* %1249, align 1, !tbaa !1405

  %1039 = load i64, i64* %1313, align 1

  %1040 = load i64, i64* %1314, align 1

  %1041 = lshr i64 %1039, 32

  %1042 = load i64, i64* %1288, align 1

  %1043 = load i64, i64* %1274, align 1

  %1044 = lshr i64 %1042, 32

  %1045 = sub i64 %1039, %1042

  %1046 = sub nsw i64 %1041, %1044

  %1047 = sub i64 %1040, %1043

  %1048 = lshr i64 %1040, 32

  %1049 = lshr i64 %1043, 32

  %1050 = sub nsw i64 %1048, %1049

  %1051 = trunc i64 %1045 to i32

  %1052 = trunc i64 %1046 to i32

  store i32 %1051, i32* %1315, align 1, !tbaa !1405

  store i32 %1052, i32* %1317, align 1, !tbaa !1405

  %1053 = trunc i64 %1047 to i32

  store i32 %1053, i32* %1318, align 1, !tbaa !1405

  %1054 = trunc i64 %1050 to i32

  store i32 %1054, i32* %1320, align 1, !tbaa !1405

  %1055 = load i64, i64* %31, align 8

  %1056 = add i64 %851, 52

  %1057 = add i64 %1055, 16

  store i64 %1057, i64* %31, align 8, !tbaa !1240

  br label %block_4019f4



block_401cc9:                                     ; preds = %block_401ca9

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1058 = add i64 %427, 12

  br label %block_401cd5



block_4017b0:                                     ; preds = %block_401750

  %1059 = add i64 %103, 8

  %1060 = load i64, i64* %35, align 8, !tbaa !1240

  %1061 = add i64 %1060, -8

  %1062 = inttoptr i64 %1061 to i64*

  store i64 %1059, i64* %1062

  %1063 = inttoptr i64 %1061 to i64*

  %1064 = load i64, i64* %1063

  store i64 %1064, i64* %11, align 8, !alias.scope !1519, !noalias !1522

  store i64 %1060, i64* %35, align 8, !alias.scope !1519, !noalias !1522

  %1065 = tail call i64 @fclose(i64 %99), !noalias !1519

  %1066 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %1067 = add i64 %1066, -3576

  %1068 = add i64 %1066, 7

  %1069 = load i64, i64* %35, align 8, !tbaa !1240

  %1070 = add i64 %1069, -8

  %1071 = inttoptr i64 %1070 to i64*

  store i64 %1068, i64* %1071

  store i64 %1070, i64* %35, align 8, !tbaa !1240

  %1072 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1067, %struct.Memory* %2)

  %1073 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1074 = add i64 %1073, -3583

  %1075 = add i64 %1073, 10

  %1076 = load i64, i64* %35, align 8, !tbaa !1240

  %1077 = add i64 %1076, -8

  %1078 = inttoptr i64 %1077 to i64*

  store i64 %1075, i64* %1078

  store i64 %1077, i64* %35, align 8, !tbaa !1240

  %1079 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1074, %struct.Memory* %1072)

  %1080 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1081 = add i64 %1080, -3593

  %1082 = add i64 %1080, 10

  %1083 = load i64, i64* %35, align 8, !tbaa !1240

  %1084 = add i64 %1083, -8

  %1085 = inttoptr i64 %1084 to i64*

  store i64 %1082, i64* %1085

  store i64 %1084, i64* %35, align 8, !tbaa !1240

  %1086 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1081, %struct.Memory* %1079)

  %1087 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1088 = add i64 %1087, -3603

  %1089 = add i64 %1087, 10

  %1090 = load i64, i64* %35, align 8, !tbaa !1240

  %1091 = add i64 %1090, -8

  %1092 = inttoptr i64 %1091 to i64*

  store i64 %1089, i64* %1092

  store i64 %1091, i64* %35, align 8, !tbaa !1240

  %1093 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1088, %struct.Memory* %1086)

  %1094 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1095 = add i64 %1094, -3597

  %1096 = add i64 %1094, 10

  %1097 = load i64, i64* %35, align 8, !tbaa !1240

  %1098 = add i64 %1097, -8

  %1099 = inttoptr i64 %1098 to i64*

  store i64 %1096, i64* %1099

  store i64 %1098, i64* %35, align 8, !tbaa !1240

  %1100 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %1095, %struct.Memory* %1093)

  %1101 = load i64, i64* %11, align 8

  store i8 1, i8* %22, align 1, !tbaa !1408

  %1102 = add i64 %1101, 15

  br label %block_4017f6



block_401b60:                                     ; preds = %block_401b94

  %1103 = shl i64 %2380, 2

  %1104 = add i64 %1900, %1103

  %1105 = inttoptr i64 %1104 to float*

  %1106 = load float, float* %1105

  %1107 = add i64 %1104, 4

  %1108 = inttoptr i64 %1107 to float*

  %1109 = load float, float* %1108

  %1110 = add i64 %1104, 8

  %1111 = inttoptr i64 %1110 to float*

  %1112 = load float, float* %1111

  %1113 = add i64 %1104, 12

  %1114 = inttoptr i64 %1113 to float*

  %1115 = load float, float* %1114

  store float %1106, float* %1849, align 1, !tbaa !1406

  store float %1109, float* %1851, align 1, !tbaa !1406

  store float %1112, float* %1853, align 1, !tbaa !1406

  store float %1115, float* %1855, align 1, !tbaa !1406

  %1116 = add i64 %1901, %1103

  %1117 = inttoptr i64 %1116 to float*

  %1118 = load float, float* %1117

  %1119 = add i64 %1116, 4

  %1120 = inttoptr i64 %1119 to float*

  %1121 = load float, float* %1120

  %1122 = add i64 %1116, 8

  %1123 = inttoptr i64 %1122 to float*

  %1124 = load float, float* %1123

  %1125 = add i64 %1116, 12

  %1126 = inttoptr i64 %1125 to float*

  %1127 = load float, float* %1126

  store float %1118, float* %1902, align 1, !tbaa !1406

  store float %1121, float* %1903, align 1, !tbaa !1406

  store float %1124, float* %1904, align 1, !tbaa !1406

  store float %1127, float* %1905, align 1, !tbaa !1406

  %1128 = load i64, i64* %1876, align 1

  %1129 = load i64, i64* %1861, align 1

  %1130 = load i64, i64* %1866, align 1

  %1131 = lshr i64 %1129, 32

  %1132 = trunc i64 %1131 to i32

  %1133 = trunc i64 %1128 to i32

  %1134 = trunc i64 %1130 to i32

  store i32 %1132, i32* %1906, align 1, !tbaa !1405

  store i32 %1133, i32* %1907, align 1, !tbaa !1405

  store i32 %1134, i32* %1908, align 1, !tbaa !1405

  store i32 %1134, i32* %1909, align 1, !tbaa !1405

  %1135 = load i64, i64* %1876, align 1

  %1136 = load i64, i64* %1861, align 1

  %1137 = load i64, i64* %1852, align 1

  %1138 = trunc i64 %1135 to i32

  %1139 = trunc i64 %1136 to i32

  %1140 = lshr i64 %1130, 32

  %1141 = trunc i64 %1140 to i32

  %1142 = trunc i64 %1137 to i32

  store i32 %1138, i32* %1906, align 1, !tbaa !1405

  store i32 %1139, i32* %1907, align 1, !tbaa !1405

  store i32 %1141, i32* %1908, align 1, !tbaa !1405

  store i32 %1142, i32* %1909, align 1, !tbaa !1405

  %1143 = load i64, i64* %1876, align 1

  %1144 = load i64, i64* %1861, align 1

  %1145 = trunc i64 %1143 to i32

  %1146 = icmp sgt i32 %1145, %1134

  %1147 = sext i1 %1146 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1910)

  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 16

  store i32 %1147, i32* %1911, align 16

  %1148 = load i64, i64* %1912, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1910)

  %1149 = lshr i64 %1143, 32

  %1150 = trunc i64 %1149 to i32

  %1151 = icmp sgt i32 %1150, %1141

  %1152 = sext i1 %1151 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1910)

  store i64 %1148, i64* %1912, align 16

  store i64 0, i64* %1913, align 8

  store i32 %1152, i32* %1915, align 4

  %1153 = load i64, i64* %1912, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1910)

  %1154 = trunc i64 %1144 to i32

  %1155 = icmp sgt i32 %1154, %1142

  %1156 = sext i1 %1155 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1910)

  store i64 %1153, i64* %1912, align 16

  store i64 0, i64* %1913, align 8

  store i32 %1156, i32* %1916, align 8

  %1157 = load i64, i64* %1913, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1910)

  %1158 = lshr i64 %1144, 32

  %1159 = trunc i64 %1158 to i32

  %1160 = lshr i64 %1137, 32

  %1161 = trunc i64 %1160 to i32

  %1162 = icmp sgt i32 %1159, %1161

  %1163 = sext i1 %1162 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1910)

  store i64 %1153, i64* %1912, align 16

  store i64 %1157, i64* %1913, align 8

  store i32 %1163, i32* %1918, align 4

  %1164 = load i64, i64* %1913, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1910)

  %1165 = lshr i64 %1153, 32

  %1166 = trunc i64 %1153 to i32

  %1167 = trunc i64 %1165 to i32

  store i32 %1166, i32* %1906, align 1, !tbaa !1405

  store i32 %1167, i32* %1907, align 1, !tbaa !1405

  %1168 = trunc i64 %1164 to i32

  store i32 %1168, i32* %1908, align 1, !tbaa !1405

  %1169 = lshr i64 %1164, 32

  %1170 = trunc i64 %1169 to i32

  store i32 %1170, i32* %1909, align 1, !tbaa !1405

  %1171 = load i64, i64* %1865, align 1

  %1172 = trunc i64 %1171 to i32

  store i32 %1161, i32* %1877, align 1, !tbaa !1405

  store i32 %1134, i32* %1878, align 1, !tbaa !1405

  store i32 %1172, i32* %1879, align 1, !tbaa !1405

  store i32 %1172, i32* %1880, align 1, !tbaa !1405

  %1173 = load i64, i64* %1866, align 1

  %1174 = load i64, i64* %1852, align 1

  %1175 = load i64, i64* %1839, align 1

  %1176 = trunc i64 %1173 to i32

  %1177 = trunc i64 %1174 to i32

  %1178 = lshr i64 %1171, 32

  %1179 = trunc i64 %1178 to i32

  %1180 = trunc i64 %1175 to i32

  store i32 %1176, i32* %1877, align 1, !tbaa !1405

  store i32 %1177, i32* %1878, align 1, !tbaa !1405

  store i32 %1179, i32* %1879, align 1, !tbaa !1405

  store i32 %1180, i32* %1880, align 1, !tbaa !1405

  %1181 = load i64, i64* %1866, align 1

  %1182 = load i64, i64* %1852, align 1

  %1183 = trunc i64 %1181 to i32

  %1184 = icmp sgt i32 %1183, %1172

  %1185 = sext i1 %1184 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1919)

  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16

  store i32 %1185, i32* %1920, align 16

  %1186 = load i64, i64* %1921, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1919)

  %1187 = lshr i64 %1181, 32

  %1188 = trunc i64 %1187 to i32

  %1189 = icmp sgt i32 %1188, %1179

  %1190 = sext i1 %1189 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1919)

  store i64 %1186, i64* %1921, align 16

  store i64 0, i64* %1922, align 8

  store i32 %1190, i32* %1924, align 4

  %1191 = load i64, i64* %1921, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1919)

  %1192 = trunc i64 %1182 to i32

  %1193 = icmp sgt i32 %1192, %1180

  %1194 = sext i1 %1193 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1919)

  store i64 %1191, i64* %1921, align 16

  store i64 0, i64* %1922, align 8

  store i32 %1194, i32* %1925, align 8

  %1195 = load i64, i64* %1922, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1919)

  %1196 = lshr i64 %1182, 32

  %1197 = trunc i64 %1196 to i32

  %1198 = lshr i64 %1175, 32

  %1199 = trunc i64 %1198 to i32

  %1200 = icmp sgt i32 %1197, %1199

  %1201 = sext i1 %1200 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1919)

  store i64 %1191, i64* %1921, align 16

  store i64 %1195, i64* %1922, align 8

  store i32 %1201, i32* %1927, align 4

  %1202 = load i64, i64* %1922, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1919)

  %1203 = lshr i64 %1191, 32

  %1204 = trunc i64 %1191 to i32

  %1205 = trunc i64 %1203 to i32

  store i32 %1204, i32* %1877, align 1, !tbaa !1405

  store i32 %1205, i32* %1878, align 1, !tbaa !1405

  %1206 = trunc i64 %1202 to i32

  store i32 %1206, i32* %1879, align 1, !tbaa !1405

  %1207 = lshr i64 %1202, 32

  %1208 = trunc i64 %1207 to i32

  store i32 %1208, i32* %1880, align 1, !tbaa !1405

  %1209 = load i64, i64* %1881, align 1

  %1210 = load i64, i64* %128, align 1

  %1211 = lshr i64 %1209, 32

  %1212 = load i64, i64* %1876, align 1

  %1213 = load i64, i64* %1861, align 1

  %1214 = lshr i64 %1212, 32

  %1215 = sub i64 %1209, %1212

  %1216 = sub nsw i64 %1211, %1214

  %1217 = sub i64 %1210, %1213

  %1218 = lshr i64 %1210, 32

  %1219 = lshr i64 %1213, 32

  %1220 = sub nsw i64 %1218, %1219

  %1221 = trunc i64 %1215 to i32

  %1222 = trunc i64 %1216 to i32

  store i32 %1221, i32* %1824, align 1, !tbaa !1405

  store i32 %1222, i32* %1825, align 1, !tbaa !1405

  %1223 = trunc i64 %1217 to i32

  store i32 %1223, i32* %1826, align 1, !tbaa !1405

  %1224 = trunc i64 %1220 to i32

  store i32 %1224, i32* %1827, align 1, !tbaa !1405

  %1225 = load i64, i64* %1891, align 1

  %1226 = load i64, i64* %1892, align 1

  %1227 = lshr i64 %1225, 32

  %1228 = load i64, i64* %1866, align 1

  %1229 = load i64, i64* %1852, align 1

  %1230 = lshr i64 %1228, 32

  %1231 = sub i64 %1225, %1228

  %1232 = sub nsw i64 %1227, %1230

  %1233 = sub i64 %1226, %1229

  %1234 = lshr i64 %1226, 32

  %1235 = lshr i64 %1229, 32

  %1236 = sub nsw i64 %1234, %1235

  %1237 = trunc i64 %1231 to i32

  %1238 = trunc i64 %1232 to i32

  store i32 %1237, i32* %1893, align 1, !tbaa !1405

  store i32 %1238, i32* %1895, align 1, !tbaa !1405

  %1239 = trunc i64 %1233 to i32

  store i32 %1239, i32* %1896, align 1, !tbaa !1405

  %1240 = trunc i64 %1236 to i32

  store i32 %1240, i32* %1898, align 1, !tbaa !1405

  %1241 = load i64, i64* %31, align 8

  %1242 = add i64 %2383, 52

  %1243 = add i64 %1241, 16

  store i64 %1243, i64* %31, align 8, !tbaa !1240

  br label %block_401b94



block_4019a4:                                     ; preds = %block_401970

  store i64 %1625, i64* %30, align 8, !tbaa !1240

  %1244 = inttoptr i64 %859 to i32*

  %1245 = load i32, i32* %1244

  %1246 = bitcast [32 x %union.VectorReg]* %38 to i32*

  store i32 %1245, i32* %1246, align 1, !tbaa !1405

  %1247 = bitcast i8* %126 to i32*

  store i32 0, i32* %1247, align 1, !tbaa !1405

  %1248 = bitcast i64* %128 to i32*

  store i32 0, i32* %1248, align 1, !tbaa !1405

  %1249 = bitcast i8* %130 to i32*

  store i32 0, i32* %1249, align 1, !tbaa !1405

  %1250 = bitcast %union.VectorReg* %40 to i8*

  %1251 = bitcast [32 x %union.VectorReg]* %38 to i128*

  %1252 = load i128, i128* %1251, align 1

  %1253 = trunc i128 %1252 to i32

  %1254 = lshr i128 %1252, 32

  %1255 = trunc i128 %1254 to i32

  %1256 = lshr i128 %1252, 64

  %1257 = trunc i128 %1256 to i32

  %1258 = bitcast %union.VectorReg* %40 to i32*

  store i32 %1253, i32* %1258, align 1, !tbaa !1405

  %1259 = getelementptr inbounds i8, i8* %1250, i64 4

  %1260 = bitcast i8* %1259 to i32*

  store i32 %1255, i32* %1260, align 1, !tbaa !1405

  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %1262 = bitcast i64* %1261 to i32*

  store i32 %1257, i32* %1262, align 1, !tbaa !1405

  %1263 = getelementptr inbounds i8, i8* %1250, i64 12

  %1264 = bitcast i8* %1263 to i32*

  store i32 %1253, i32* %1264, align 1, !tbaa !1405

  %1265 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %1265, align 1, !tbaa !1240

  store i64 -65520, i64* %31, align 8, !tbaa !1240

  %1266 = bitcast %union.VectorReg* %39 to i8*

  %1267 = bitcast %union.VectorReg* %39 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %1267, align 1, !tbaa !1240

  %1268 = add i64 %857, 175

  %1269 = bitcast %union.VectorReg* %42 to i8*

  %1270 = add i64 %859, 262084

  %1271 = bitcast %union.VectorReg* %42 to float*

  %1272 = getelementptr inbounds i8, i8* %1269, i64 4

  %1273 = bitcast i8* %1272 to float*

  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %1275 = bitcast i64* %1274 to float*

  %1276 = getelementptr inbounds i8, i8* %1269, i64 12

  %1277 = bitcast i8* %1276 to float*

  %1278 = bitcast %union.VectorReg* %41 to i8*

  %1279 = add i64 %859, 262100

  %1280 = bitcast %union.VectorReg* %41 to float*

  %1281 = getelementptr inbounds i8, i8* %1278, i64 4

  %1282 = bitcast i8* %1281 to float*

  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %1284 = bitcast i64* %1283 to float*

  %1285 = getelementptr inbounds i8, i8* %1278, i64 12

  %1286 = bitcast i8* %1285 to float*

  %1287 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0

  %1288 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %42, i64 0, i32 0, i32 0, i32 0, i64 0

  %1289 = bitcast <2 x i64>* %8 to i8*

  %1290 = bitcast <2 x i64>* %8 to i32*

  %1291 = getelementptr inbounds <2 x i64>, <2 x i64>* %8, i64 0, i64 0

  %1292 = getelementptr inbounds <2 x i64>, <2 x i64>* %8, i64 0, i64 1

  %1293 = getelementptr inbounds i8, i8* %1289, i64 4

  %1294 = bitcast i8* %1293 to i32*

  %1295 = bitcast i64* %1292 to i32*

  %1296 = getelementptr inbounds i8, i8* %1289, i64 12

  %1297 = bitcast i8* %1296 to i32*

  %1298 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0

  %1299 = bitcast %union.VectorReg* %42 to i32*

  %1300 = bitcast i8* %1272 to i32*

  %1301 = bitcast i64* %1274 to i32*

  %1302 = bitcast i8* %1276 to i32*

  %1303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %1304 = bitcast <2 x i64>* %7 to i8*

  %1305 = bitcast <2 x i64>* %7 to i32*

  %1306 = getelementptr inbounds <2 x i64>, <2 x i64>* %7, i64 0, i64 0

  %1307 = getelementptr inbounds <2 x i64>, <2 x i64>* %7, i64 0, i64 1

  %1308 = getelementptr inbounds i8, i8* %1304, i64 4

  %1309 = bitcast i8* %1308 to i32*

  %1310 = bitcast i64* %1307 to i32*

  %1311 = getelementptr inbounds i8, i8* %1304, i64 12

  %1312 = bitcast i8* %1311 to i32*

  %1313 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %1315 = bitcast %union.VectorReg* %39 to i32*

  %1316 = getelementptr inbounds i8, i8* %1266, i64 4

  %1317 = bitcast i8* %1316 to i32*

  %1318 = bitcast i64* %1314 to i32*

  %1319 = getelementptr inbounds i8, i8* %1266, i64 12

  %1320 = bitcast i8* %1319 to i32*

  %1321 = load i64, i64* %29, align 8

  %1322 = add i64 %1321, 262116

  %1323 = add i64 %1321, 262132

  %1324 = bitcast %union.VectorReg* %40 to float*

  %1325 = bitcast i8* %1259 to float*

  %1326 = bitcast i64* %1261 to float*

  %1327 = bitcast i8* %1263 to float*

  %1328 = bitcast %union.VectorReg* %41 to i32*

  %1329 = bitcast i8* %1281 to i32*

  %1330 = bitcast i64* %1283 to i32*

  %1331 = bitcast i8* %1285 to i32*

  %1332 = bitcast <2 x i64>* %6 to i8*

  %1333 = bitcast <2 x i64>* %6 to i32*

  %1334 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0

  %1335 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 1

  %1336 = getelementptr inbounds i8, i8* %1332, i64 4

  %1337 = bitcast i8* %1336 to i32*

  %1338 = bitcast i64* %1335 to i32*

  %1339 = getelementptr inbounds i8, i8* %1332, i64 12

  %1340 = bitcast i8* %1339 to i32*

  %1341 = bitcast <2 x i64>* %5 to i8*

  %1342 = bitcast <2 x i64>* %5 to i32*

  %1343 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 0

  %1344 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 1

  %1345 = getelementptr inbounds i8, i8* %1341, i64 4

  %1346 = bitcast i8* %1345 to i32*

  %1347 = bitcast i64* %1344 to i32*

  %1348 = getelementptr inbounds i8, i8* %1341, i64 12

  %1349 = bitcast i8* %1348 to i32*

  %1350 = load i64, i64* %1261, align 1

  br label %block_4019f4



block_401c79:                                     ; preds = %block_401c5a

  %1351 = add i64 %916, 48

  br label %block_401ca9



block_401a29:                                     ; preds = %block_4019f4

  %1352 = load i64, i64* %1313, align 1

  %1353 = load i64, i64* %1314, align 1

  %1354 = lshr i64 %1352, 32

  %1355 = load i64, i64* %1303, align 1

  %1356 = load i64, i64* %128, align 1

  %1357 = lshr i64 %1355, 32

  %1358 = add i64 %1355, %1352

  %1359 = add nuw nsw i64 %1357, %1354

  %1360 = add i64 %1356, %1353

  %1361 = lshr i64 %1353, 32

  %1362 = lshr i64 %1356, 32

  %1363 = add nuw nsw i64 %1362, %1361

  %1364 = trunc i64 %1358 to i32

  %1365 = trunc i64 %1359 to i32

  store i32 %1364, i32* %1315, align 1, !tbaa !1405

  store i32 %1365, i32* %1317, align 1, !tbaa !1405

  %1366 = trunc i64 %1360 to i32

  store i32 %1366, i32* %1318, align 1, !tbaa !1405

  %1367 = trunc i64 %1363 to i32

  store i32 %1367, i32* %1320, align 1, !tbaa !1405

  %1368 = bitcast %union.VectorReg* %39 to i128*

  %1369 = load i128, i128* %1368, align 1

  %1370 = lshr i128 %1369, 64

  %1371 = trunc i128 %1370 to i32

  %1372 = lshr i128 %1369, 96

  %1373 = trunc i128 %1372 to i32

  %1374 = trunc i128 %1369 to i32

  %1375 = lshr i128 %1369, 32

  %1376 = trunc i128 %1375 to i32

  store i32 %1371, i32* %1246, align 1, !tbaa !1405

  store i32 %1373, i32* %1247, align 1, !tbaa !1405

  store i32 %1374, i32* %1248, align 1, !tbaa !1405

  store i32 %1376, i32* %1249, align 1, !tbaa !1405

  %1377 = load i64, i64* %1303, align 1

  %1378 = load i64, i64* %128, align 1

  %1379 = lshr i64 %1377, 32

  %1380 = trunc i128 %1369 to i64

  %1381 = load i64, i64* %1314, align 1

  %1382 = lshr i64 %1380, 32

  %1383 = add i64 %1380, %1377

  %1384 = add nuw nsw i64 %1382, %1379

  %1385 = add i64 %1381, %1378

  %1386 = lshr i64 %1378, 32

  %1387 = lshr i64 %1381, 32

  %1388 = add nuw nsw i64 %1387, %1386

  %1389 = trunc i64 %1383 to i32

  %1390 = trunc i64 %1384 to i32

  store i32 %1389, i32* %1246, align 1, !tbaa !1405

  store i32 %1390, i32* %1247, align 1, !tbaa !1405

  %1391 = trunc i64 %1385 to i32

  store i32 %1391, i32* %1248, align 1, !tbaa !1405

  %1392 = trunc i64 %1388 to i32

  store i32 %1392, i32* %1249, align 1, !tbaa !1405

  %1393 = bitcast %union.VectorReg* %41 to i128*

  %1394 = load i128, i128* %1393, align 1

  %1395 = lshr i128 %1394, 96

  %1396 = trunc i128 %1395 to i32

  %1397 = lshr i128 %1394, 32

  %1398 = trunc i128 %1397 to i32

  store i32 %1396, i32* %1315, align 1, !tbaa !1405

  store i32 %1398, i32* %1317, align 1, !tbaa !1405

  %1399 = load i64, i64* %1313, align 1

  %1400 = trunc i64 %1399 to i32

  %1401 = load i128, i128* %1251, align 1

  %1402 = lshr i128 %1401, 32

  %1403 = trunc i128 %1402 to i32

  %1404 = lshr i128 %1401, 64

  %1405 = trunc i128 %1404 to i32

  %1406 = lshr i128 %1401, 96

  %1407 = trunc i128 %1406 to i32

  store i32 %1403, i32* %1315, align 1, !tbaa !1405

  store i32 %1403, i32* %1317, align 1, !tbaa !1405

  store i32 %1405, i32* %1318, align 1, !tbaa !1405

  store i32 %1407, i32* %1320, align 1, !tbaa !1405

  %1408 = load i64, i64* %1313, align 1

  %1409 = load i64, i64* %1314, align 1

  %1410 = lshr i64 %1408, 32

  %1411 = trunc i128 %1401 to i64

  %1412 = load i64, i64* %128, align 1

  %1413 = lshr i64 %1411, 32

  %1414 = add i64 %1411, %1408

  %1415 = add nuw nsw i64 %1413, %1410

  %1416 = add i64 %1412, %1409

  %1417 = lshr i64 %1409, 32

  %1418 = lshr i64 %1412, 32

  %1419 = add nuw nsw i64 %1418, %1417

  %1420 = trunc i64 %1414 to i32

  %1421 = trunc i64 %1415 to i32

  store i32 %1420, i32* %1315, align 1, !tbaa !1405

  store i32 %1421, i32* %1317, align 1, !tbaa !1405

  %1422 = trunc i64 %1416 to i32

  store i32 %1422, i32* %1318, align 1, !tbaa !1405

  %1423 = trunc i64 %1419 to i32

  store i32 %1423, i32* %1320, align 1, !tbaa !1405

  %1424 = load i64, i64* %1313, align 1

  %1425 = load i64, i64* %29, align 8

  %1426 = add i64 %1425, 262116

  %1427 = inttoptr i64 %1426 to i32*

  %1428 = load i32, i32* %1427

  %1429 = zext i32 %1428 to i64

  store i64 %1429, i64* %33, align 8, !tbaa !1240

  %1430 = add i64 %1425, 262120

  %1431 = inttoptr i64 %1430 to i32*

  %1432 = load i32, i32* %1431

  %1433 = zext i32 %1432 to i64

  store i64 %1433, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %1434 = sub i32 %1400, %1428

  %1435 = icmp eq i32 %1434, 0

  %1436 = lshr i32 %1434, 31

  %1437 = lshr i32 %1400, 31

  %1438 = lshr i32 %1428, 31

  %1439 = xor i32 %1438, %1437

  %1440 = xor i32 %1436, %1437

  %1441 = add nuw nsw i32 %1440, %1439

  %1442 = icmp eq i32 %1441, 2

  %1443 = icmp ne i32 %1436, 0

  %1444 = xor i1 %1442, %1443

  %1445 = or i1 %1435, %1444

  %1446 = xor i1 %1445, true

  %1447 = zext i1 %1446 to i8

  store i8 %1447, i8* %20, align 1, !tbaa !1408

  %1448 = load i64, i64* %36, align 8

  %1449 = add i64 %1424, %1448

  %1450 = and i64 %1449, 4294967295

  store i64 %1450, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %1451 = load i32, i32* %26, align 4

  %1452 = load i32, i32* %27, align 4

  %1453 = sub i32 %1451, %1452

  %1454 = icmp eq i32 %1453, 0

  %1455 = lshr i32 %1453, 31

  %1456 = lshr i32 %1451, 31

  %1457 = lshr i32 %1452, 31

  %1458 = xor i32 %1457, %1456

  %1459 = xor i32 %1455, %1456

  %1460 = add nuw nsw i32 %1459, %1458

  %1461 = icmp eq i32 %1460, 2

  %1462 = icmp ne i32 %1455, 0

  %1463 = xor i1 %1461, %1462

  %1464 = or i1 %1454, %1463

  %1465 = xor i1 %1464, true

  %1466 = zext i1 %1465 to i8

  store i8 %1466, i8* %14, align 1, !tbaa !1408

  %1467 = load i64, i64* %31, align 8

  %1468 = load i32, i32* %28, align 4

  %1469 = trunc i64 %1467 to i32

  %1470 = add i32 %1468, %1469

  %1471 = zext i32 %1470 to i64

  store i64 %1471, i64* %31, align 8, !tbaa !1240

  %1472 = load i64, i64* %29, align 8

  %1473 = add i64 %1472, 262124

  %1474 = inttoptr i64 %1473 to i32*

  %1475 = load i32, i32* %1474

  %1476 = zext i32 %1475 to i64

  store i64 %1476, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %1477 = load i32, i32* %27, align 4

  %1478 = sub i32 %1477, %1475

  %1479 = icmp eq i32 %1478, 0

  %1480 = lshr i32 %1478, 31

  %1481 = lshr i32 %1477, 31

  %1482 = lshr i32 %1475, 31

  %1483 = xor i32 %1482, %1481

  %1484 = xor i32 %1480, %1481

  %1485 = add nuw nsw i32 %1484, %1483

  %1486 = icmp eq i32 %1485, 2

  %1487 = icmp ne i32 %1480, 0

  %1488 = xor i1 %1486, %1487

  %1489 = or i1 %1479, %1488

  %1490 = xor i1 %1489, true

  %1491 = zext i1 %1490 to i8

  store i8 %1491, i8* %16, align 1, !tbaa !1408

  %1492 = load i64, i64* %33, align 8

  %1493 = load i32, i32* %23, align 4

  %1494 = trunc i64 %1492 to i32

  %1495 = add i32 %1493, %1494

  %1496 = zext i32 %1495 to i64

  store i64 %1496, i64* %33, align 8, !tbaa !1240

  %1497 = load i64, i64* %29, align 8

  %1498 = add i64 %1497, 262128

  %1499 = inttoptr i64 %1498 to i32*

  %1500 = load i32, i32* %1499

  %1501 = zext i32 %1500 to i64

  store i64 %1501, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1502 = load i32, i32* %25, align 4

  %1503 = sub i32 %1502, %1500

  %1504 = icmp eq i32 %1503, 0

  %1505 = lshr i32 %1503, 31

  %1506 = lshr i32 %1502, 31

  %1507 = lshr i32 %1500, 31

  %1508 = xor i32 %1507, %1506

  %1509 = xor i32 %1505, %1506

  %1510 = add nuw nsw i32 %1509, %1508

  %1511 = icmp eq i32 %1510, 2

  %1512 = icmp ne i32 %1505, 0

  %1513 = xor i1 %1511, %1512

  %1514 = or i1 %1504, %1513

  %1515 = xor i1 %1514, true

  %1516 = zext i1 %1515 to i8

  store i8 %1516, i8* %18, align 1, !tbaa !1408

  %1517 = load i64, i64* %34, align 8

  %1518 = load i32, i32* %26, align 4

  %1519 = trunc i64 %1517 to i32

  %1520 = add i32 %1518, %1519

  %1521 = zext i32 %1520 to i64

  store i64 %1521, i64* %34, align 8, !tbaa !1240

  %1522 = load i64, i64* %29, align 8

  %1523 = add i64 %1522, 262132

  %1524 = inttoptr i64 %1523 to i32*

  %1525 = load i32, i32* %1524

  %1526 = zext i32 %1525 to i64

  store i64 %1526, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %1527 = load i32, i32* %23, align 4

  %1528 = sub i32 %1527, %1525

  %1529 = icmp eq i32 %1528, 0

  %1530 = lshr i32 %1528, 31

  %1531 = lshr i32 %1527, 31

  %1532 = lshr i32 %1525, 31

  %1533 = xor i32 %1532, %1531

  %1534 = xor i32 %1530, %1531

  %1535 = add nuw nsw i32 %1534, %1533

  %1536 = icmp eq i32 %1535, 2

  %1537 = icmp ne i32 %1530, 0

  %1538 = xor i1 %1536, %1537

  %1539 = or i1 %1529, %1538

  %1540 = xor i1 %1539, true

  %1541 = zext i1 %1540 to i8

  store i8 %1541, i8* %16, align 1, !tbaa !1408

  %1542 = load i64, i64* %33, align 8

  %1543 = load i32, i32* %27, align 4

  %1544 = trunc i64 %1542 to i32

  %1545 = add i32 %1543, %1544

  %1546 = zext i32 %1545 to i64

  store i64 %1546, i64* %33, align 8, !tbaa !1240

  %1547 = load i64, i64* %29, align 8

  %1548 = add i64 %1547, 262136

  %1549 = inttoptr i64 %1548 to i32*

  %1550 = load i32, i32* %1549

  %1551 = zext i32 %1550 to i64

  store i64 %1551, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %1552 = load i32, i32* %25, align 4

  %1553 = sub i32 %1552, %1550

  %1554 = icmp eq i32 %1553, 0

  %1555 = lshr i32 %1553, 31

  %1556 = lshr i32 %1552, 31

  %1557 = lshr i32 %1550, 31

  %1558 = xor i32 %1557, %1556

  %1559 = xor i32 %1555, %1556

  %1560 = add nuw nsw i32 %1559, %1558

  %1561 = icmp eq i32 %1560, 2

  %1562 = icmp ne i32 %1555, 0

  %1563 = xor i1 %1561, %1562

  %1564 = or i1 %1554, %1563

  %1565 = xor i1 %1564, true

  %1566 = zext i1 %1565 to i8

  store i8 %1566, i8* %20, align 1, !tbaa !1408

  %1567 = load i64, i64* %36, align 8

  %1568 = load i32, i32* %26, align 4

  %1569 = trunc i64 %1567 to i32

  %1570 = add i32 %1568, %1569

  %1571 = zext i32 %1570 to i64

  store i64 %1571, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %1572 = load i32, i32* %27, align 4

  %1573 = load i64, i64* %29, align 8

  %1574 = add i64 %1573, 262140

  %1575 = inttoptr i64 %1574 to i32*

  %1576 = load i32, i32* %1575

  %1577 = sub i32 %1572, %1576

  %1578 = icmp eq i32 %1577, 0

  %1579 = lshr i32 %1577, 31

  %1580 = lshr i32 %1572, 31

  %1581 = lshr i32 %1576, 31

  %1582 = xor i32 %1581, %1580

  %1583 = xor i32 %1579, %1580

  %1584 = add nuw nsw i32 %1583, %1582

  %1585 = icmp eq i32 %1584, 2

  %1586 = icmp ne i32 %1579, 0

  %1587 = xor i1 %1585, %1586

  %1588 = or i1 %1578, %1587

  %1589 = xor i1 %1588, true

  %1590 = zext i1 %1589 to i8

  store i8 %1590, i8* %14, align 1, !tbaa !1408

  %1591 = load i64, i64* %31, align 8

  %1592 = load i32, i32* %28, align 4

  %1593 = trunc i64 %1591 to i32

  %1594 = add i32 %1592, %1593

  %1595 = zext i32 %1594 to i64

  %1596 = icmp eq i32 %1594, 0

  %1597 = select i1 %1596, i64 594, i64 149

  %1598 = add i64 %851, %1597

  br i1 %1596, label %block_401c7b, label %block_401abe



block_401970:                                     ; preds = %block_401970, %block_40193b

  %1599 = phi i64 [ -65536, %block_40193b ], [ %1631, %block_401970 ]

  %1600 = phi %struct.Memory* [ %856, %block_40193b ], [ %1600, %block_401970 ]

  %1601 = shl i64 %1599, 2

  %1602 = add i64 %861, %1601

  %1603 = inttoptr i64 %1602 to i32*

  %1604 = load i32, i32* %1603

  %1605 = sext i32 %1604 to i64

  %1606 = shl nsw i64 %1605, 2

  %1607 = add i64 %1606, %860

  %1608 = inttoptr i64 %1607 to i32*

  %1609 = load i32, i32* %1608

  %1610 = sext i32 %1609 to i64

  %1611 = add i32 %1609, -1

  %1612 = inttoptr i64 %1607 to i32*

  store i32 %1611, i32* %1612

  %1613 = shl nsw i64 %1610, 2

  %1614 = add i64 %862, %1613

  %1615 = inttoptr i64 %1614 to i32*

  store i32 %1604, i32* %1615

  %1616 = add i64 %863, %1601

  %1617 = inttoptr i64 %1616 to i32*

  %1618 = load i32, i32* %1617

  %1619 = sext i32 %1618 to i64

  %1620 = shl nsw i64 %1619, 2

  %1621 = add i64 %1620, %860

  %1622 = inttoptr i64 %1621 to i32*

  %1623 = load i32, i32* %1622

  %1624 = sext i32 %1623 to i64

  %1625 = add nsw i64 %1624, -1

  %1626 = trunc i64 %1625 to i32

  %1627 = inttoptr i64 %1621 to i32*

  store i32 %1626, i32* %1627

  %1628 = shl nsw i64 %1624, 2

  %1629 = add i64 %862, %1628

  %1630 = inttoptr i64 %1629 to i32*

  store i32 %1618, i32* %1630

  %1631 = add i64 %1599, 2

  %1632 = icmp eq i64 %1631, 0

  br i1 %1632, label %block_4019a4, label %block_401970



block_401af0:                                     ; preds = %block_4018a0

  %1633 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %1634 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %1634, i64* %29, align 8, !tbaa !1240

  %1635 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %1636 = add i64 %1633, 262144

  %1637 = add i64 %1634, -4

  %1638 = add i64 %1633, 262148

  br label %block_401b10



block_4018a0:                                     ; preds = %block_40188b, %block_401860

  %1639 = phi double* [ %2385, %block_40188b ], [ %1937, %block_401860 ]

  %1640 = phi i64 [ %2396, %block_40188b ], [ %1956, %block_401860 ]

  %1641 = phi %struct.Memory* [ %2395, %block_40188b ], [ %1954, %block_401860 ]

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1642 = add i64 %1640, -1424

  %1643 = add i64 %1640, 10

  %1644 = load i64, i64* %35, align 8, !tbaa !1240

  %1645 = add i64 %1644, -8

  %1646 = inttoptr i64 %1645 to i64*

  store i64 %1643, i64* %1646

  store i64 %1645, i64* %35, align 8, !tbaa !1240

  %1647 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1642, %struct.Memory* %1641)

  %1648 = load i64, i64* %11, align 8

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1649 = add i64 %1648, -3802

  %1650 = add i64 %1648, 17

  %1651 = load i64, i64* %35, align 8, !tbaa !1240

  %1652 = add i64 %1651, -8

  %1653 = inttoptr i64 %1652 to i64*

  store i64 %1650, i64* %1653

  store i64 %1652, i64* %35, align 8, !tbaa !1240

  %1654 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %1649, %struct.Memory* %1647)

  %1655 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1656 = add i64 %1655, -1451

  %1657 = add i64 %1655, 10

  %1658 = load i64, i64* %35, align 8, !tbaa !1240

  %1659 = add i64 %1658, -8

  %1660 = inttoptr i64 %1659 to i64*

  store i64 %1657, i64* %1660

  store i64 %1659, i64* %35, align 8, !tbaa !1240

  %1661 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1656, %struct.Memory* %1654)

  %1662 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1663 = add i64 %1662, -1461

  %1664 = add i64 %1662, 10

  %1665 = load i64, i64* %35, align 8, !tbaa !1240

  %1666 = add i64 %1665, -8

  %1667 = inttoptr i64 %1666 to i64*

  store i64 %1664, i64* %1667

  store i64 %1666, i64* %35, align 8, !tbaa !1240

  %1668 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1663, %struct.Memory* %1661)

  %1669 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1670 = add i64 %1669, -1471

  %1671 = add i64 %1669, 10

  %1672 = load i64, i64* %35, align 8, !tbaa !1240

  %1673 = add i64 %1672, -8

  %1674 = inttoptr i64 %1673 to i64*

  store i64 %1671, i64* %1674

  store i64 %1673, i64* %35, align 8, !tbaa !1240

  %1675 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1670, %struct.Memory* %1668)

  %1676 = load i64, i64* %11, align 8

  store i64 4, i64* %34, align 8, !tbaa !1240

  %1677 = add i64 %1676, -1481

  %1678 = add i64 %1676, 10

  %1679 = load i64, i64* %35, align 8, !tbaa !1240

  %1680 = add i64 %1679, -8

  %1681 = inttoptr i64 %1680 to i64*

  store i64 %1678, i64* %1681

  store i64 %1680, i64* %35, align 8, !tbaa !1240

  %1682 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1677, %struct.Memory* %1675)

  %1683 = load i64, i64* %11, align 8

  store i64 5, i64* %34, align 8, !tbaa !1240

  %1684 = add i64 %1683, -1491

  %1685 = add i64 %1683, 10

  %1686 = load i64, i64* %35, align 8, !tbaa !1240

  %1687 = add i64 %1686, -8

  %1688 = inttoptr i64 %1687 to i64*

  store i64 %1685, i64* %1688

  store i64 %1687, i64* %35, align 8, !tbaa !1240

  %1689 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1684, %struct.Memory* %1682)

  %1690 = load i64, i64* %11, align 8

  store i64 6, i64* %34, align 8, !tbaa !1240

  %1691 = add i64 %1690, -1501

  %1692 = add i64 %1690, 10

  %1693 = load i64, i64* %35, align 8, !tbaa !1240

  %1694 = add i64 %1693, -8

  %1695 = inttoptr i64 %1694 to i64*

  store i64 %1692, i64* %1695

  store i64 %1694, i64* %35, align 8, !tbaa !1240

  %1696 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1691, %struct.Memory* %1689)

  %1697 = load i64, i64* %11, align 8

  store i64 7, i64* %34, align 8, !tbaa !1240

  %1698 = add i64 %1697, -1511

  %1699 = add i64 %1697, 10

  %1700 = load i64, i64* %35, align 8, !tbaa !1240

  %1701 = add i64 %1700, -8

  %1702 = inttoptr i64 %1701 to i64*

  store i64 %1699, i64* %1702

  store i64 %1701, i64* %35, align 8, !tbaa !1240

  %1703 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1698, %struct.Memory* %1696)

  %1704 = load i64, i64* %11, align 8

  store i64 8, i64* %34, align 8, !tbaa !1240

  %1705 = add i64 %1704, -1521

  %1706 = add i64 %1704, 10

  %1707 = load i64, i64* %35, align 8, !tbaa !1240

  %1708 = add i64 %1707, -8

  %1709 = inttoptr i64 %1708 to i64*

  store i64 %1706, i64* %1709

  store i64 %1708, i64* %35, align 8, !tbaa !1240

  %1710 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1705, %struct.Memory* %1703)

  %1711 = load i64, i64* %11, align 8

  store i64 9, i64* %34, align 8, !tbaa !1240

  %1712 = add i64 %1711, -1531

  %1713 = add i64 %1711, 10

  %1714 = load i64, i64* %35, align 8, !tbaa !1240

  %1715 = add i64 %1714, -8

  %1716 = inttoptr i64 %1715 to i64*

  store i64 %1713, i64* %1716

  store i64 %1715, i64* %35, align 8, !tbaa !1240

  %1717 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1712, %struct.Memory* %1710)

  %1718 = load i64, i64* %11, align 8

  store i64 10, i64* %34, align 8, !tbaa !1240

  %1719 = add i64 %1718, -1541

  %1720 = add i64 %1718, 10

  %1721 = load i64, i64* %35, align 8, !tbaa !1240

  %1722 = add i64 %1721, -8

  %1723 = inttoptr i64 %1722 to i64*

  store i64 %1720, i64* %1723

  store i64 %1722, i64* %35, align 8, !tbaa !1240

  %1724 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1719, %struct.Memory* %1717)

  %1725 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1726 = add i64 %1725, -3871

  %1727 = add i64 %1725, 7

  %1728 = load i64, i64* %35, align 8, !tbaa !1240

  %1729 = add i64 %1728, -8

  %1730 = inttoptr i64 %1729 to i64*

  store i64 %1727, i64* %1730

  store i64 %1729, i64* %35, align 8, !tbaa !1240

  %1731 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1726, %struct.Memory* %1724)

  %1732 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1259

  store i8 0, i8* %58, align 1, !tbaa !1260

  store i8 0, i8* %59, align 1, !tbaa !1261

  store i8 0, i8* %56, align 1, !tbaa !1262

  %1733 = add i64 %1732, -3814

  %1734 = add i64 %1732, 7

  %1735 = load i64, i64* %35, align 8, !tbaa !1240

  %1736 = add i64 %1735, -8

  %1737 = inttoptr i64 %1736 to i64*

  store i64 %1734, i64* %1737

  store i64 %1736, i64* %35, align 8, !tbaa !1240

  %1738 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %1733, %struct.Memory* %1731)

  %1739 = load i64, i64* %35, align 8

  %1740 = load i64, i64* %11, align 8

  %1741 = load double, double* %1639, align 1

  %1742 = inttoptr i64 %1739 to double*

  store double %1741, double* %1742

  %1743 = load i8, i8* %22, align 1

  %1744 = icmp eq i8 %1743, 0

  %1745 = select i1 %1744, i64 451, i64 14

  %1746 = add i64 %1740, %1745

  br i1 %1744, label %block_401af0, label %block_40193b



block_401abe:                                     ; preds = %block_401a29

  %1747 = add i64 %1598, 14

  %1748 = load i64, i64* %35, align 8, !tbaa !1240

  %1749 = add i64 %1748, -8

  %1750 = inttoptr i64 %1749 to i64*

  store i64 %1747, i64* %1750

  %1751 = load i64, i64* %164, align 8, !alias.scope !1524, !noalias !1527

  %1752 = load i64, i64* %165, align 8, !alias.scope !1524, !noalias !1527

  %1753 = load i64, i64* %166, align 8, !alias.scope !1524, !noalias !1527

  %1754 = inttoptr i64 %1748 to i64*

  %1755 = load i64, i64* %1754

  %1756 = add i64 %1748, 8

  %1757 = inttoptr i64 %1756 to i64*

  %1758 = load i64, i64* %1757

  %1759 = add i64 %1748, 16

  %1760 = inttoptr i64 %1759 to i64*

  %1761 = load i64, i64* %1760

  %1762 = add i64 %1748, 24

  %1763 = inttoptr i64 %1762 to i64*

  %1764 = load i64, i64* %1763

  %1765 = add i64 %1748, 32

  %1766 = inttoptr i64 %1765 to i64*

  %1767 = load i64, i64* %1766

  %1768 = add i64 %1748, 40

  %1769 = inttoptr i64 %1768 to i64*

  %1770 = load i64, i64* %1769

  %1771 = add i64 %1748, 48

  %1772 = inttoptr i64 %1771 to i64*

  %1773 = load i64, i64* %1772

  %1774 = add i64 %1748, 56

  %1775 = inttoptr i64 %1774 to i64*

  %1776 = load i64, i64* %1775

  %1777 = add i64 %1748, 64

  %1778 = inttoptr i64 %1777 to i64*

  %1779 = load i64, i64* %1778

  %1780 = add i64 %1748, 72

  %1781 = inttoptr i64 %1780 to i64*

  %1782 = load i64, i64* %1781

  %1783 = inttoptr i64 %1749 to i64*

  %1784 = load i64, i64* %1783

  store i64 %1784, i64* %11, align 8, !alias.scope !1524, !noalias !1527

  store i64 %1748, i64* %35, align 8, !alias.scope !1524, !noalias !1527

  %1785 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1032), i64 4294967295), i64 %1595, i64 %1751, i64 %1595, i64 %1752, i64 %1753, i64 %1755, i64 %1758, i64 %1761, i64 %1764, i64 %1767, i64 %1770, i64 %1773, i64 %1776, i64 %1779, i64 %1782), !noalias !1524

  %1786 = load i64, i64* %11, align 8

  %1787 = load i64, i64* @stdout

  %1788 = add i64 %1786, 12

  %1789 = load i64, i64* %35, align 8, !tbaa !1240

  %1790 = add i64 %1789, -8

  %1791 = inttoptr i64 %1790 to i64*

  store i64 %1788, i64* %1791

  %1792 = inttoptr i64 %1790 to i64*

  %1793 = load i64, i64* %1792

  store i64 %1793, i64* %11, align 8, !alias.scope !1529, !noalias !1532

  store i64 %1789, i64* %35, align 8, !alias.scope !1529, !noalias !1532

  %1794 = tail call i64 @fflush(i64 %1787), !noalias !1529

  %1795 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1796 = add i64 %1795, -4312

  %1797 = add i64 %1795, 10

  %1798 = load i64, i64* %35, align 8, !tbaa !1240

  %1799 = add i64 %1798, -8

  %1800 = inttoptr i64 %1799 to i64*

  store i64 %1797, i64* %1800

  store i64 %1799, i64* %35, align 8, !tbaa !1240

  %1801 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1796, %struct.Memory* %1600)

  %1802 = load i8, i8* %22, align 1

  %1803 = load i64, i64* %11, align 8

  %1804 = icmp eq i8 %1802, 0

  %1805 = select i1 %1804, i64 9, i64 445

  %1806 = add i64 %1803, %1805

  br i1 %1804, label %block_401aeb, label %block_401c9f



block_401c9f:                                     ; preds = %block_401c93, %block_401abe, %block_401c5a, %block_401c7b

  %1807 = phi i64 [ %1821, %block_401c93 ], [ %916, %block_401c5a ], [ %116, %block_401c7b ], [ %1806, %block_401abe ]

  %1808 = phi %struct.Memory* [ %2207, %block_401c93 ], [ %2207, %block_401c5a ], [ %111, %block_401c7b ], [ %1801, %block_401abe ]

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1809 = add i64 %1807, -4767

  %1810 = add i64 %1807, 10

  %1811 = load i64, i64* %35, align 8, !tbaa !1240

  %1812 = add i64 %1811, -8

  %1813 = inttoptr i64 %1812 to i64*

  store i64 %1810, i64* %1813

  store i64 %1812, i64* %35, align 8, !tbaa !1240

  %1814 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1809, %struct.Memory* %1808)

  %1815 = load i64, i64* %11, align 8

  br label %block_401ca9



block_401c93:                                     ; preds = %block_401bc9

  %1816 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1817 = add i32 %1816, 1

  store i32 %1817, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %1818 = load i8, i8* %22, align 1

  %1819 = icmp eq i8 %1818, 0

  %1820 = select i1 %1819, i64 22, i64 12

  %1821 = add i64 %2205, %1820

  br i1 %1819, label %block_401ca9, label %block_401c9f



block_401b44:                                     ; preds = %block_401b10

  store i64 %2232, i64* %30, align 8, !tbaa !1240

  %1822 = inttoptr i64 %1634 to i32*

  %1823 = load i32, i32* %1822

  %1824 = bitcast [32 x %union.VectorReg]* %38 to i32*

  store i32 %1823, i32* %1824, align 1, !tbaa !1405

  %1825 = bitcast i8* %126 to i32*

  store i32 0, i32* %1825, align 1, !tbaa !1405

  %1826 = bitcast i64* %128 to i32*

  store i32 0, i32* %1826, align 1, !tbaa !1405

  %1827 = bitcast i8* %130 to i32*

  store i32 0, i32* %1827, align 1, !tbaa !1405

  %1828 = bitcast %union.VectorReg* %40 to i8*

  %1829 = bitcast [32 x %union.VectorReg]* %38 to i128*

  %1830 = load i128, i128* %1829, align 1

  %1831 = trunc i128 %1830 to i32

  %1832 = lshr i128 %1830, 32

  %1833 = trunc i128 %1832 to i32

  %1834 = lshr i128 %1830, 64

  %1835 = trunc i128 %1834 to i32

  %1836 = bitcast %union.VectorReg* %40 to i32*

  store i32 %1831, i32* %1836, align 1, !tbaa !1405

  %1837 = getelementptr inbounds i8, i8* %1828, i64 4

  %1838 = bitcast i8* %1837 to i32*

  store i32 %1833, i32* %1838, align 1, !tbaa !1405

  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %1840 = bitcast i64* %1839 to i32*

  store i32 %1835, i32* %1840, align 1, !tbaa !1405

  %1841 = getelementptr inbounds i8, i8* %1828, i64 12

  %1842 = bitcast i8* %1841 to i32*

  store i32 %1831, i32* %1842, align 1, !tbaa !1405

  %1843 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %1843, align 1, !tbaa !1240

  store i64 -65520, i64* %31, align 8, !tbaa !1240

  %1844 = bitcast %union.VectorReg* %39 to i8*

  %1845 = bitcast %union.VectorReg* %39 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %1845, align 1, !tbaa !1240

  %1846 = add i64 %1746, 164

  %1847 = bitcast %union.VectorReg* %42 to i8*

  %1848 = add i64 %1634, 262084

  %1849 = bitcast %union.VectorReg* %42 to float*

  %1850 = getelementptr inbounds i8, i8* %1847, i64 4

  %1851 = bitcast i8* %1850 to float*

  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %1853 = bitcast i64* %1852 to float*

  %1854 = getelementptr inbounds i8, i8* %1847, i64 12

  %1855 = bitcast i8* %1854 to float*

  %1856 = bitcast %union.VectorReg* %41 to i8*

  %1857 = add i64 %1634, 262100

  %1858 = bitcast %union.VectorReg* %41 to float*

  %1859 = getelementptr inbounds i8, i8* %1856, i64 4

  %1860 = bitcast i8* %1859 to float*

  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %1862 = bitcast i64* %1861 to float*

  %1863 = getelementptr inbounds i8, i8* %1856, i64 12

  %1864 = bitcast i8* %1863 to float*

  %1865 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0

  %1866 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %42, i64 0, i32 0, i32 0, i32 0, i64 0

  %1867 = bitcast <2 x i64>* %9 to i8*

  %1868 = bitcast <2 x i64>* %9 to i32*

  %1869 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 0

  %1870 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 1

  %1871 = getelementptr inbounds i8, i8* %1867, i64 4

  %1872 = bitcast i8* %1871 to i32*

  %1873 = bitcast i64* %1870 to i32*

  %1874 = getelementptr inbounds i8, i8* %1867, i64 12

  %1875 = bitcast i8* %1874 to i32*

  %1876 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0

  %1877 = bitcast %union.VectorReg* %42 to i32*

  %1878 = bitcast i8* %1850 to i32*

  %1879 = bitcast i64* %1852 to i32*

  %1880 = bitcast i8* %1854 to i32*

  %1881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %1882 = bitcast <2 x i64>* %10 to i8*

  %1883 = bitcast <2 x i64>* %10 to i32*

  %1884 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 0

  %1885 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 1

  %1886 = getelementptr inbounds i8, i8* %1882, i64 4

  %1887 = bitcast i8* %1886 to i32*

  %1888 = bitcast i64* %1885 to i32*

  %1889 = getelementptr inbounds i8, i8* %1882, i64 12

  %1890 = bitcast i8* %1889 to i32*

  %1891 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %1893 = bitcast %union.VectorReg* %39 to i32*

  %1894 = getelementptr inbounds i8, i8* %1844, i64 4

  %1895 = bitcast i8* %1894 to i32*

  %1896 = bitcast i64* %1892 to i32*

  %1897 = getelementptr inbounds i8, i8* %1844, i64 12

  %1898 = bitcast i8* %1897 to i32*

  %1899 = load i64, i64* %29, align 8

  %1900 = add i64 %1899, 262116

  %1901 = add i64 %1899, 262132

  %1902 = bitcast %union.VectorReg* %40 to float*

  %1903 = bitcast i8* %1837 to float*

  %1904 = bitcast i64* %1839 to float*

  %1905 = bitcast i8* %1841 to float*

  %1906 = bitcast %union.VectorReg* %41 to i32*

  %1907 = bitcast i8* %1859 to i32*

  %1908 = bitcast i64* %1861 to i32*

  %1909 = bitcast i8* %1863 to i32*

  %1910 = bitcast <2 x i64>* %4 to i8*

  %1911 = bitcast <2 x i64>* %4 to i32*

  %1912 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 0

  %1913 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 1

  %1914 = getelementptr inbounds i8, i8* %1910, i64 4

  %1915 = bitcast i8* %1914 to i32*

  %1916 = bitcast i64* %1913 to i32*

  %1917 = getelementptr inbounds i8, i8* %1910, i64 12

  %1918 = bitcast i8* %1917 to i32*

  %1919 = bitcast <2 x i64>* %3 to i8*

  %1920 = bitcast <2 x i64>* %3 to i32*

  %1921 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 0

  %1922 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 1

  %1923 = getelementptr inbounds i8, i8* %1919, i64 4

  %1924 = bitcast i8* %1923 to i32*

  %1925 = bitcast i64* %1922 to i32*

  %1926 = getelementptr inbounds i8, i8* %1919, i64 12

  %1927 = bitcast i8* %1926 to i32*

  %1928 = load i64, i64* %1839, align 1

  br label %block_401b94



block_401860:                                     ; preds = %block_4017f6

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1929 = add i64 %247, -3728

  %1930 = add i64 %247, 10

  %1931 = load i64, i64* %35, align 8, !tbaa !1240

  %1932 = add i64 %1931, -8

  %1933 = inttoptr i64 %1932 to i64*

  store i64 %1930, i64* %1933

  store i64 %1932, i64* %35, align 8, !tbaa !1240

  %1934 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %1929, %struct.Memory* %118)

  %1935 = load i64, i64* %11, align 8

  %1936 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 984) to double*)

  %1937 = bitcast [32 x %union.VectorReg]* %38 to double*

  store double %1936, double* %1937, align 1, !tbaa !1271

  %1938 = bitcast i64* %128 to double*

  store double 0.000000e+00, double* %1938, align 1, !tbaa !1271

  %1939 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 992) to i64*)

  %1940 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %1939, i64* %1940, align 1, !tbaa !1240

  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  store i64 0, i64* %1941, align 1, !tbaa !1240

  %1942 = add i64 %1935, -3162

  %1943 = add i64 %1935, 21

  %1944 = load i64, i64* %35, align 8, !tbaa !1240

  %1945 = add i64 %1944, -8

  %1946 = inttoptr i64 %1945 to i64*

  store i64 %1943, i64* %1946

  store i64 %1945, i64* %35, align 8, !tbaa !1240

  %1947 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull %0, i64 %1942, %struct.Memory* %1934)

  %1948 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1949 = add i64 %1948, -3711

  %1950 = add i64 %1948, 10

  %1951 = load i64, i64* %35, align 8, !tbaa !1240

  %1952 = add i64 %1951, -8

  %1953 = inttoptr i64 %1952 to i64*

  store i64 %1950, i64* %1953

  store i64 %1952, i64* %35, align 8, !tbaa !1240

  %1954 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1949, %struct.Memory* %1947)

  %1955 = load i64, i64* %11, align 8

  %1956 = add i64 %1955, 23

  br label %block_4018a0



block_401c91:                                     ; preds = %block_401c7b

  %1957 = add i64 %116, 24

  br label %block_401ca9



block_401aeb:                                     ; preds = %block_401abe

  %1958 = add i64 %1806, 446

  br label %block_401ca9



block_401bc9:                                     ; preds = %block_401b94

  %1959 = load i64, i64* %1891, align 1

  %1960 = load i64, i64* %1892, align 1

  %1961 = lshr i64 %1959, 32

  %1962 = load i64, i64* %1881, align 1

  %1963 = load i64, i64* %128, align 1

  %1964 = lshr i64 %1962, 32

  %1965 = add i64 %1962, %1959

  %1966 = add nuw nsw i64 %1964, %1961

  %1967 = add i64 %1963, %1960

  %1968 = lshr i64 %1960, 32

  %1969 = lshr i64 %1963, 32

  %1970 = add nuw nsw i64 %1969, %1968

  %1971 = trunc i64 %1965 to i32

  %1972 = trunc i64 %1966 to i32

  store i32 %1971, i32* %1893, align 1, !tbaa !1405

  store i32 %1972, i32* %1895, align 1, !tbaa !1405

  %1973 = trunc i64 %1967 to i32

  store i32 %1973, i32* %1896, align 1, !tbaa !1405

  %1974 = trunc i64 %1970 to i32

  store i32 %1974, i32* %1898, align 1, !tbaa !1405

  %1975 = bitcast %union.VectorReg* %39 to i128*

  %1976 = load i128, i128* %1975, align 1

  %1977 = lshr i128 %1976, 64

  %1978 = trunc i128 %1977 to i32

  %1979 = lshr i128 %1976, 96

  %1980 = trunc i128 %1979 to i32

  %1981 = trunc i128 %1976 to i32

  %1982 = lshr i128 %1976, 32

  %1983 = trunc i128 %1982 to i32

  store i32 %1978, i32* %1824, align 1, !tbaa !1405

  store i32 %1980, i32* %1825, align 1, !tbaa !1405

  store i32 %1981, i32* %1826, align 1, !tbaa !1405

  store i32 %1983, i32* %1827, align 1, !tbaa !1405

  %1984 = load i64, i64* %1881, align 1

  %1985 = load i64, i64* %128, align 1

  %1986 = lshr i64 %1984, 32

  %1987 = trunc i128 %1976 to i64

  %1988 = load i64, i64* %1892, align 1

  %1989 = lshr i64 %1987, 32

  %1990 = add i64 %1987, %1984

  %1991 = add nuw nsw i64 %1989, %1986

  %1992 = add i64 %1988, %1985

  %1993 = lshr i64 %1985, 32

  %1994 = lshr i64 %1988, 32

  %1995 = add nuw nsw i64 %1994, %1993

  %1996 = trunc i64 %1990 to i32

  %1997 = trunc i64 %1991 to i32

  store i32 %1996, i32* %1824, align 1, !tbaa !1405

  store i32 %1997, i32* %1825, align 1, !tbaa !1405

  %1998 = trunc i64 %1992 to i32

  store i32 %1998, i32* %1826, align 1, !tbaa !1405

  %1999 = trunc i64 %1995 to i32

  store i32 %1999, i32* %1827, align 1, !tbaa !1405

  %2000 = bitcast %union.VectorReg* %41 to i128*

  %2001 = load i128, i128* %2000, align 1

  %2002 = lshr i128 %2001, 96

  %2003 = trunc i128 %2002 to i32

  %2004 = lshr i128 %2001, 32

  %2005 = trunc i128 %2004 to i32

  store i32 %2003, i32* %1893, align 1, !tbaa !1405

  store i32 %2005, i32* %1895, align 1, !tbaa !1405

  %2006 = load i64, i64* %1891, align 1

  %2007 = trunc i64 %2006 to i32

  %2008 = load i128, i128* %1829, align 1

  %2009 = lshr i128 %2008, 32

  %2010 = trunc i128 %2009 to i32

  %2011 = lshr i128 %2008, 64

  %2012 = trunc i128 %2011 to i32

  %2013 = lshr i128 %2008, 96

  %2014 = trunc i128 %2013 to i32

  store i32 %2010, i32* %1893, align 1, !tbaa !1405

  store i32 %2010, i32* %1895, align 1, !tbaa !1405

  store i32 %2012, i32* %1896, align 1, !tbaa !1405

  store i32 %2014, i32* %1898, align 1, !tbaa !1405

  %2015 = load i64, i64* %1891, align 1

  %2016 = load i64, i64* %1892, align 1

  %2017 = lshr i64 %2015, 32

  %2018 = trunc i128 %2008 to i64

  %2019 = load i64, i64* %128, align 1

  %2020 = lshr i64 %2018, 32

  %2021 = add i64 %2018, %2015

  %2022 = add nuw nsw i64 %2020, %2017

  %2023 = add i64 %2019, %2016

  %2024 = lshr i64 %2016, 32

  %2025 = lshr i64 %2019, 32

  %2026 = add nuw nsw i64 %2025, %2024

  %2027 = trunc i64 %2021 to i32

  %2028 = trunc i64 %2022 to i32

  store i32 %2027, i32* %1893, align 1, !tbaa !1405

  store i32 %2028, i32* %1895, align 1, !tbaa !1405

  %2029 = trunc i64 %2023 to i32

  store i32 %2029, i32* %1896, align 1, !tbaa !1405

  %2030 = trunc i64 %2026 to i32

  store i32 %2030, i32* %1898, align 1, !tbaa !1405

  %2031 = load i64, i64* %1891, align 1

  %2032 = load i64, i64* %29, align 8

  %2033 = add i64 %2032, 262116

  %2034 = inttoptr i64 %2033 to i32*

  %2035 = load i32, i32* %2034

  %2036 = zext i32 %2035 to i64

  store i64 %2036, i64* %33, align 8, !tbaa !1240

  %2037 = add i64 %2032, 262120

  %2038 = inttoptr i64 %2037 to i32*

  %2039 = load i32, i32* %2038

  %2040 = zext i32 %2039 to i64

  store i64 %2040, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2041 = sub i32 %2007, %2035

  %2042 = icmp eq i32 %2041, 0

  %2043 = lshr i32 %2041, 31

  %2044 = lshr i32 %2007, 31

  %2045 = lshr i32 %2035, 31

  %2046 = xor i32 %2045, %2044

  %2047 = xor i32 %2043, %2044

  %2048 = add nuw nsw i32 %2047, %2046

  %2049 = icmp eq i32 %2048, 2

  %2050 = icmp ne i32 %2043, 0

  %2051 = xor i1 %2049, %2050

  %2052 = or i1 %2042, %2051

  %2053 = xor i1 %2052, true

  %2054 = zext i1 %2053 to i8

  store i8 %2054, i8* %20, align 1, !tbaa !1408

  %2055 = load i64, i64* %36, align 8

  %2056 = add i64 %2031, %2055

  %2057 = and i64 %2056, 4294967295

  store i64 %2057, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2058 = load i32, i32* %26, align 4

  %2059 = load i32, i32* %27, align 4

  %2060 = sub i32 %2058, %2059

  %2061 = icmp eq i32 %2060, 0

  %2062 = lshr i32 %2060, 31

  %2063 = lshr i32 %2058, 31

  %2064 = lshr i32 %2059, 31

  %2065 = xor i32 %2064, %2063

  %2066 = xor i32 %2062, %2063

  %2067 = add nuw nsw i32 %2066, %2065

  %2068 = icmp eq i32 %2067, 2

  %2069 = icmp ne i32 %2062, 0

  %2070 = xor i1 %2068, %2069

  %2071 = or i1 %2061, %2070

  %2072 = xor i1 %2071, true

  %2073 = zext i1 %2072 to i8

  store i8 %2073, i8* %14, align 1, !tbaa !1408

  %2074 = load i64, i64* %31, align 8

  %2075 = load i32, i32* %28, align 4

  %2076 = trunc i64 %2074 to i32

  %2077 = add i32 %2075, %2076

  %2078 = zext i32 %2077 to i64

  store i64 %2078, i64* %31, align 8, !tbaa !1240

  %2079 = load i64, i64* %29, align 8

  %2080 = add i64 %2079, 262124

  %2081 = inttoptr i64 %2080 to i32*

  %2082 = load i32, i32* %2081

  %2083 = zext i32 %2082 to i64

  store i64 %2083, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2084 = load i32, i32* %27, align 4

  %2085 = sub i32 %2084, %2082

  %2086 = icmp eq i32 %2085, 0

  %2087 = lshr i32 %2085, 31

  %2088 = lshr i32 %2084, 31

  %2089 = lshr i32 %2082, 31

  %2090 = xor i32 %2089, %2088

  %2091 = xor i32 %2087, %2088

  %2092 = add nuw nsw i32 %2091, %2090

  %2093 = icmp eq i32 %2092, 2

  %2094 = icmp ne i32 %2087, 0

  %2095 = xor i1 %2093, %2094

  %2096 = or i1 %2086, %2095

  %2097 = xor i1 %2096, true

  %2098 = zext i1 %2097 to i8

  store i8 %2098, i8* %16, align 1, !tbaa !1408

  %2099 = load i64, i64* %33, align 8

  %2100 = load i32, i32* %23, align 4

  %2101 = trunc i64 %2099 to i32

  %2102 = add i32 %2100, %2101

  %2103 = zext i32 %2102 to i64

  store i64 %2103, i64* %33, align 8, !tbaa !1240

  %2104 = load i64, i64* %29, align 8

  %2105 = add i64 %2104, 262128

  %2106 = inttoptr i64 %2105 to i32*

  %2107 = load i32, i32* %2106

  %2108 = zext i32 %2107 to i64

  store i64 %2108, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  %2109 = load i32, i32* %25, align 4

  %2110 = sub i32 %2109, %2107

  %2111 = icmp eq i32 %2110, 0

  %2112 = lshr i32 %2110, 31

  %2113 = lshr i32 %2109, 31

  %2114 = lshr i32 %2107, 31

  %2115 = xor i32 %2114, %2113

  %2116 = xor i32 %2112, %2113

  %2117 = add nuw nsw i32 %2116, %2115

  %2118 = icmp eq i32 %2117, 2

  %2119 = icmp ne i32 %2112, 0

  %2120 = xor i1 %2118, %2119

  %2121 = or i1 %2111, %2120

  %2122 = xor i1 %2121, true

  %2123 = zext i1 %2122 to i8

  store i8 %2123, i8* %18, align 1, !tbaa !1408

  %2124 = load i64, i64* %34, align 8

  %2125 = load i32, i32* %26, align 4

  %2126 = trunc i64 %2124 to i32

  %2127 = add i32 %2125, %2126

  %2128 = zext i32 %2127 to i64

  store i64 %2128, i64* %34, align 8, !tbaa !1240

  %2129 = load i64, i64* %29, align 8

  %2130 = add i64 %2129, 262132

  %2131 = inttoptr i64 %2130 to i32*

  %2132 = load i32, i32* %2131

  %2133 = zext i32 %2132 to i64

  store i64 %2133, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2134 = load i32, i32* %23, align 4

  %2135 = sub i32 %2134, %2132

  %2136 = icmp eq i32 %2135, 0

  %2137 = lshr i32 %2135, 31

  %2138 = lshr i32 %2134, 31

  %2139 = lshr i32 %2132, 31

  %2140 = xor i32 %2139, %2138

  %2141 = xor i32 %2137, %2138

  %2142 = add nuw nsw i32 %2141, %2140

  %2143 = icmp eq i32 %2142, 2

  %2144 = icmp ne i32 %2137, 0

  %2145 = xor i1 %2143, %2144

  %2146 = or i1 %2136, %2145

  %2147 = xor i1 %2146, true

  %2148 = zext i1 %2147 to i8

  store i8 %2148, i8* %16, align 1, !tbaa !1408

  %2149 = load i64, i64* %33, align 8

  %2150 = load i32, i32* %27, align 4

  %2151 = trunc i64 %2149 to i32

  %2152 = add i32 %2150, %2151

  %2153 = zext i32 %2152 to i64

  store i64 %2153, i64* %33, align 8, !tbaa !1240

  %2154 = load i64, i64* %29, align 8

  %2155 = add i64 %2154, 262136

  %2156 = inttoptr i64 %2155 to i32*

  %2157 = load i32, i32* %2156

  %2158 = zext i32 %2157 to i64

  store i64 %2158, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2159 = load i32, i32* %25, align 4

  %2160 = sub i32 %2159, %2157

  %2161 = icmp eq i32 %2160, 0

  %2162 = lshr i32 %2160, 31

  %2163 = lshr i32 %2159, 31

  %2164 = lshr i32 %2157, 31

  %2165 = xor i32 %2164, %2163

  %2166 = xor i32 %2162, %2163

  %2167 = add nuw nsw i32 %2166, %2165

  %2168 = icmp eq i32 %2167, 2

  %2169 = icmp ne i32 %2162, 0

  %2170 = xor i1 %2168, %2169

  %2171 = or i1 %2161, %2170

  %2172 = xor i1 %2171, true

  %2173 = zext i1 %2172 to i8

  store i8 %2173, i8* %20, align 1, !tbaa !1408

  %2174 = load i64, i64* %36, align 8

  %2175 = load i32, i32* %26, align 4

  %2176 = trunc i64 %2174 to i32

  %2177 = add i32 %2175, %2176

  %2178 = zext i32 %2177 to i64

  store i64 %2178, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2179 = load i32, i32* %27, align 4

  %2180 = load i64, i64* %29, align 8

  %2181 = add i64 %2180, 262140

  %2182 = inttoptr i64 %2181 to i32*

  %2183 = load i32, i32* %2182

  %2184 = sub i32 %2179, %2183

  %2185 = icmp eq i32 %2184, 0

  %2186 = lshr i32 %2184, 31

  %2187 = lshr i32 %2179, 31

  %2188 = lshr i32 %2183, 31

  %2189 = xor i32 %2188, %2187

  %2190 = xor i32 %2186, %2187

  %2191 = add nuw nsw i32 %2190, %2189

  %2192 = icmp eq i32 %2191, 2

  %2193 = icmp ne i32 %2186, 0

  %2194 = xor i1 %2192, %2193

  %2195 = or i1 %2185, %2194

  %2196 = xor i1 %2195, true

  %2197 = zext i1 %2196 to i8

  store i8 %2197, i8* %14, align 1, !tbaa !1408

  %2198 = load i64, i64* %31, align 8

  %2199 = load i32, i32* %28, align 4

  %2200 = trunc i64 %2198 to i32

  %2201 = add i32 %2199, %2200

  %2202 = zext i32 %2201 to i64

  store i64 %2202, i64* %31, align 8, !tbaa !1240

  %2203 = icmp eq i32 %2201, 0

  %2204 = select i1 %2203, i64 202, i64 145

  %2205 = add i64 %2383, %2204

  br i1 %2203, label %block_401c93, label %block_401c5a



block_401b10:                                     ; preds = %block_401b10, %block_401af0

  %2206 = phi i64 [ -65536, %block_401af0 ], [ %2238, %block_401b10 ]

  %2207 = phi %struct.Memory* [ %1738, %block_401af0 ], [ %2207, %block_401b10 ]

  %2208 = shl i64 %2206, 2

  %2209 = add i64 %1636, %2208

  %2210 = inttoptr i64 %2209 to i32*

  %2211 = load i32, i32* %2210

  %2212 = sext i32 %2211 to i64

  %2213 = shl nsw i64 %2212, 2

  %2214 = add i64 %2213, %1635

  %2215 = inttoptr i64 %2214 to i32*

  %2216 = load i32, i32* %2215

  %2217 = sext i32 %2216 to i64

  %2218 = add i32 %2216, -1

  %2219 = inttoptr i64 %2214 to i32*

  store i32 %2218, i32* %2219

  %2220 = shl nsw i64 %2217, 2

  %2221 = add i64 %1637, %2220

  %2222 = inttoptr i64 %2221 to i32*

  store i32 %2211, i32* %2222

  %2223 = add i64 %1638, %2208

  %2224 = inttoptr i64 %2223 to i32*

  %2225 = load i32, i32* %2224

  %2226 = sext i32 %2225 to i64

  %2227 = shl nsw i64 %2226, 2

  %2228 = add i64 %2227, %1635

  %2229 = inttoptr i64 %2228 to i32*

  %2230 = load i32, i32* %2229

  %2231 = sext i32 %2230 to i64

  %2232 = add nsw i64 %2231, -1

  %2233 = trunc i64 %2232 to i32

  %2234 = inttoptr i64 %2228 to i32*

  store i32 %2233, i32* %2234

  %2235 = shl nsw i64 %2231, 2

  %2236 = add i64 %1637, %2235

  %2237 = inttoptr i64 %2236 to i32*

  store i32 %2225, i32* %2237

  %2238 = add i64 %2206, 2

  %2239 = icmp eq i64 %2238, 0

  br i1 %2239, label %block_401b44, label %block_401b10



block_401b94:                                     ; preds = %block_401b44, %block_401b60

  %2240 = phi i64 [ %1928, %block_401b44 ], [ %1175, %block_401b60 ]

  %2241 = phi i64 [ -65520, %block_401b44 ], [ %1243, %block_401b60 ]

  %2242 = phi i64 [ %1846, %block_401b44 ], [ %1242, %block_401b60 ]

  %2243 = shl i64 %2241, 2

  %2244 = add i64 %1848, %2243

  %2245 = inttoptr i64 %2244 to float*

  %2246 = load float, float* %2245

  %2247 = add i64 %2244, 4

  %2248 = inttoptr i64 %2247 to float*

  %2249 = load float, float* %2248

  %2250 = add i64 %2244, 8

  %2251 = inttoptr i64 %2250 to float*

  %2252 = load float, float* %2251

  %2253 = add i64 %2244, 12

  %2254 = inttoptr i64 %2253 to float*

  %2255 = load float, float* %2254

  store float %2246, float* %1849, align 1, !tbaa !1406

  store float %2249, float* %1851, align 1, !tbaa !1406

  store float %2252, float* %1853, align 1, !tbaa !1406

  store float %2255, float* %1855, align 1, !tbaa !1406

  %2256 = add i64 %1857, %2243

  %2257 = inttoptr i64 %2256 to float*

  %2258 = load float, float* %2257

  %2259 = add i64 %2256, 4

  %2260 = inttoptr i64 %2259 to float*

  %2261 = load float, float* %2260

  %2262 = add i64 %2256, 8

  %2263 = inttoptr i64 %2262 to float*

  %2264 = load float, float* %2263

  %2265 = add i64 %2256, 12

  %2266 = inttoptr i64 %2265 to float*

  %2267 = load float, float* %2266

  store float %2258, float* %1858, align 1, !tbaa !1406

  store float %2261, float* %1860, align 1, !tbaa !1406

  store float %2264, float* %1862, align 1, !tbaa !1406

  store float %2267, float* %1864, align 1, !tbaa !1406

  %2268 = load i64, i64* %1865, align 1

  %2269 = load i64, i64* %1866, align 1

  %2270 = lshr i64 %2240, 32

  %2271 = trunc i64 %2270 to i32

  %2272 = trunc i64 %2268 to i32

  %2273 = trunc i64 %2269 to i32

  store i32 %2271, i32* %1836, align 1, !tbaa !1405

  store i32 %2272, i32* %1838, align 1, !tbaa !1405

  store i32 %2273, i32* %1840, align 1, !tbaa !1405

  store i32 %2273, i32* %1842, align 1, !tbaa !1405

  %2274 = load i64, i64* %1865, align 1

  %2275 = load i64, i64* %1839, align 1

  %2276 = load i64, i64* %1852, align 1

  %2277 = trunc i64 %2274 to i32

  %2278 = trunc i64 %2275 to i32

  %2279 = lshr i64 %2269, 32

  %2280 = trunc i64 %2279 to i32

  %2281 = trunc i64 %2276 to i32

  store i32 %2277, i32* %1836, align 1, !tbaa !1405

  store i32 %2278, i32* %1838, align 1, !tbaa !1405

  store i32 %2280, i32* %1840, align 1, !tbaa !1405

  store i32 %2281, i32* %1842, align 1, !tbaa !1405

  %2282 = load i64, i64* %1865, align 1

  %2283 = load i64, i64* %1839, align 1

  %2284 = trunc i64 %2282 to i32

  %2285 = icmp sgt i32 %2284, %2273

  %2286 = sext i1 %2285 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1867)

  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 16

  store i32 %2286, i32* %1868, align 16

  %2287 = load i64, i64* %1869, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1867)

  %2288 = lshr i64 %2282, 32

  %2289 = trunc i64 %2288 to i32

  %2290 = icmp sgt i32 %2289, %2280

  %2291 = sext i1 %2290 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1867)

  store i64 %2287, i64* %1869, align 16

  store i64 0, i64* %1870, align 8

  store i32 %2291, i32* %1872, align 4

  %2292 = load i64, i64* %1869, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1867)

  %2293 = trunc i64 %2283 to i32

  %2294 = icmp sgt i32 %2293, %2281

  %2295 = sext i1 %2294 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1867)

  store i64 %2292, i64* %1869, align 16

  store i64 0, i64* %1870, align 8

  store i32 %2295, i32* %1873, align 8

  %2296 = load i64, i64* %1870, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1867)

  %2297 = lshr i64 %2283, 32

  %2298 = trunc i64 %2297 to i32

  %2299 = lshr i64 %2276, 32

  %2300 = trunc i64 %2299 to i32

  %2301 = icmp sgt i32 %2298, %2300

  %2302 = sext i1 %2301 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1867)

  store i64 %2292, i64* %1869, align 16

  store i64 %2296, i64* %1870, align 8

  store i32 %2302, i32* %1875, align 4

  %2303 = load i64, i64* %1870, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1867)

  %2304 = lshr i64 %2292, 32

  %2305 = trunc i64 %2292 to i32

  %2306 = trunc i64 %2304 to i32

  store i32 %2305, i32* %1836, align 1, !tbaa !1405

  store i32 %2306, i32* %1838, align 1, !tbaa !1405

  %2307 = trunc i64 %2303 to i32

  store i32 %2307, i32* %1840, align 1, !tbaa !1405

  %2308 = lshr i64 %2303, 32

  %2309 = trunc i64 %2308 to i32

  store i32 %2309, i32* %1842, align 1, !tbaa !1405

  %2310 = load i64, i64* %1876, align 1

  %2311 = trunc i64 %2310 to i32

  store i32 %2300, i32* %1877, align 1, !tbaa !1405

  store i32 %2273, i32* %1878, align 1, !tbaa !1405

  store i32 %2311, i32* %1879, align 1, !tbaa !1405

  store i32 %2311, i32* %1880, align 1, !tbaa !1405

  %2312 = load i64, i64* %1866, align 1

  %2313 = load i64, i64* %1852, align 1

  %2314 = load i64, i64* %1861, align 1

  %2315 = trunc i64 %2312 to i32

  %2316 = trunc i64 %2313 to i32

  %2317 = lshr i64 %2310, 32

  %2318 = trunc i64 %2317 to i32

  %2319 = trunc i64 %2314 to i32

  store i32 %2315, i32* %1877, align 1, !tbaa !1405

  store i32 %2316, i32* %1878, align 1, !tbaa !1405

  store i32 %2318, i32* %1879, align 1, !tbaa !1405

  store i32 %2319, i32* %1880, align 1, !tbaa !1405

  %2320 = load i64, i64* %1881, align 1

  %2321 = load i64, i64* %128, align 1

  %2322 = lshr i64 %2320, 32

  %2323 = load i64, i64* %1865, align 1

  %2324 = load i64, i64* %1839, align 1

  %2325 = lshr i64 %2323, 32

  %2326 = sub i64 %2320, %2323

  %2327 = sub nsw i64 %2322, %2325

  %2328 = sub i64 %2321, %2324

  %2329 = lshr i64 %2321, 32

  %2330 = lshr i64 %2324, 32

  %2331 = sub nsw i64 %2329, %2330

  %2332 = trunc i64 %2326 to i32

  %2333 = trunc i64 %2327 to i32

  store i32 %2332, i32* %1824, align 1, !tbaa !1405

  store i32 %2333, i32* %1825, align 1, !tbaa !1405

  %2334 = trunc i64 %2328 to i32

  store i32 %2334, i32* %1826, align 1, !tbaa !1405

  %2335 = trunc i64 %2331 to i32

  store i32 %2335, i32* %1827, align 1, !tbaa !1405

  %2336 = load i64, i64* %1866, align 1

  %2337 = load i64, i64* %1852, align 1

  %2338 = trunc i64 %2336 to i32

  %2339 = icmp sgt i32 %2338, %2311

  %2340 = sext i1 %2339 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1882)

  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16

  store i32 %2340, i32* %1883, align 16

  %2341 = load i64, i64* %1884, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1882)

  %2342 = lshr i64 %2336, 32

  %2343 = trunc i64 %2342 to i32

  %2344 = icmp sgt i32 %2343, %2318

  %2345 = sext i1 %2344 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1882)

  store i64 %2341, i64* %1884, align 16

  store i64 0, i64* %1885, align 8

  store i32 %2345, i32* %1887, align 4

  %2346 = load i64, i64* %1884, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1882)

  %2347 = trunc i64 %2337 to i32

  %2348 = icmp sgt i32 %2347, %2319

  %2349 = sext i1 %2348 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1882)

  store i64 %2346, i64* %1884, align 16

  store i64 0, i64* %1885, align 8

  store i32 %2349, i32* %1888, align 8

  %2350 = load i64, i64* %1885, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1882)

  %2351 = lshr i64 %2337, 32

  %2352 = trunc i64 %2351 to i32

  %2353 = lshr i64 %2314, 32

  %2354 = trunc i64 %2353 to i32

  %2355 = icmp sgt i32 %2352, %2354

  %2356 = sext i1 %2355 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1882)

  store i64 %2346, i64* %1884, align 16

  store i64 %2350, i64* %1885, align 8

  store i32 %2356, i32* %1890, align 4

  %2357 = load i64, i64* %1885, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1882)

  %2358 = lshr i64 %2346, 32

  %2359 = trunc i64 %2346 to i32

  %2360 = trunc i64 %2358 to i32

  store i32 %2359, i32* %1877, align 1, !tbaa !1405

  store i32 %2360, i32* %1878, align 1, !tbaa !1405

  %2361 = trunc i64 %2357 to i32

  store i32 %2361, i32* %1879, align 1, !tbaa !1405

  %2362 = lshr i64 %2357, 32

  %2363 = trunc i64 %2362 to i32

  store i32 %2363, i32* %1880, align 1, !tbaa !1405

  %2364 = load i64, i64* %1891, align 1

  %2365 = load i64, i64* %1892, align 1

  %2366 = lshr i64 %2364, 32

  %2367 = load i64, i64* %1866, align 1

  %2368 = load i64, i64* %1852, align 1

  %2369 = lshr i64 %2367, 32

  %2370 = sub i64 %2364, %2367

  %2371 = sub nsw i64 %2366, %2369

  %2372 = sub i64 %2365, %2368

  %2373 = lshr i64 %2365, 32

  %2374 = lshr i64 %2368, 32

  %2375 = sub nsw i64 %2373, %2374

  %2376 = trunc i64 %2370 to i32

  %2377 = trunc i64 %2371 to i32

  store i32 %2376, i32* %1893, align 1, !tbaa !1405

  store i32 %2377, i32* %1895, align 1, !tbaa !1405

  %2378 = trunc i64 %2372 to i32

  store i32 %2378, i32* %1896, align 1, !tbaa !1405

  %2379 = trunc i64 %2375 to i32

  store i32 %2379, i32* %1898, align 1, !tbaa !1405

  %2380 = load i64, i64* %31, align 8

  %2381 = icmp eq i64 %2380, 0

  %2382 = select i1 %2381, i64 53, i64 -52

  %2383 = add i64 %2242, %2382

  br i1 %2381, label %block_401bc9, label %block_401b60



block_40188b:                                     ; preds = %block_4017f6

  %2384 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 984) to double*)

  %2385 = bitcast [32 x %union.VectorReg]* %38 to double*

  store double %2384, double* %2385, align 1, !tbaa !1271

  %2386 = bitcast i64* %128 to double*

  store double 0.000000e+00, double* %2386, align 1, !tbaa !1271

  %2387 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 992) to i64*)

  %2388 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %2387, i64* %2388, align 1, !tbaa !1240

  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  store i64 0, i64* %2389, align 1, !tbaa !1240

  %2390 = add i64 %247, -3195

  %2391 = add i64 %247, 21

  %2392 = load i64, i64* %35, align 8, !tbaa !1240

  %2393 = add i64 %2392, -8

  %2394 = inttoptr i64 %2393 to i64*

  store i64 %2391, i64* %2394

  store i64 %2393, i64* %35, align 8, !tbaa !1240

  %2395 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull %0, i64 %2390, %struct.Memory* %118)

  %2396 = load i64, i64* %11, align 8

  br label %block_4018a0

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

  %17 = tail call i64 @free(i64 %11), !noalias !1534

  %18 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %19 = add i64 %16, 12

  %20 = add i64 %8, -16

  %21 = inttoptr i64 %20 to i64*

  store i64 %19, i64* %21

  %22 = inttoptr i64 %20 to i64*

  %23 = load i64, i64* %22

  %24 = tail call i64 @free(i64 %18), !noalias !1537

  %25 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %26 = add i64 %23, 12

  %27 = add i64 %8, -16

  %28 = inttoptr i64 %27 to i64*

  store i64 %26, i64* %28

  %29 = tail call i64 @free(i64 %25), !noalias !1540

  %30 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %30, i64* %5, align 8, !tbaa !1240

  %31 = inttoptr i64 %8 to i64*

  %32 = load i64, i64* %31

  store i64 %32, i64* %3, align 8, !alias.scope !1543, !noalias !1546

  %33 = add i64 %8, 8

  store i64 %33, i64* %7, align 8, !alias.scope !1543, !noalias !1546

  %34 = tail call i64 @free(i64 %30), !noalias !1543

  store i64 %34, i64* %4, align 8, !alias.scope !1543, !noalias !1546

  ret %struct.Memory* %2

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

  store double %13, double* %14, align 1, !tbaa !1271

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %16 = bitcast i64* %15 to double*

  store double 0.000000e+00, double* %16, align 1, !tbaa !1271

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

  %34 = sub i32 2048, %27

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

  store i64 %91, i64* %3, align 8, !alias.scope !1548, !noalias !1551

  store i64 %86, i64* %17, align 8, !alias.scope !1548, !noalias !1551

  %92 = tail call i64 @memset(i64 and (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 4294967295), i64 0, i64 2048), !noalias !1548

  %93 = load i64, i64* %3, align 8

  %94 = load i64, i64* %9, align 8

  %95 = add i64 %94, 262144

  %96 = add i64 %94, 262148

  br label %block_401390



block_4015fe:                                     ; preds = %block_4015ed

  %97 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %98 = add i32 %97, 1

  store i32 %98, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %99 = load i64, i64* %8, align 8

  %100 = add i64 %99, 8

  %101 = inttoptr i64 %100 to i32*

  %102 = load i32, i32* %101

  %103 = add i32 %102, -1

  %104 = add i32 %102, -65535

  %105 = icmp ult i32 %103, 65534

  %106 = icmp eq i32 %104, 0

  %107 = or i1 %106, %105

  %108 = select i1 %107, i64 25, i64 -149

  %109 = add i64 %799, %108

  br i1 %107, label %block_401617, label %block_401569



block_40157b:                                     ; preds = %block_401657.block_40157b_crit_edge, %block_401672, %block_401569

  %110 = phi i64 [ %310, %block_401672 ], [ %588, %block_401657.block_40157b_crit_edge ], [ %243, %block_401569 ]

  %111 = phi i64 [ %299, %block_401672 ], [ %589, %block_401657.block_40157b_crit_edge ], [ %231, %block_401569 ]

  %112 = phi %struct.Memory* [ %606, %block_401672 ], [ %606, %block_401657.block_40157b_crit_edge ], [ %232, %block_401569 ]

  %113 = add i64 %111, 16

  %114 = inttoptr i64 %113 to i32*

  %115 = load i32, i32* %114

  %116 = add i32 %115, -1

  %117 = zext i32 %116 to i64

  store i64 %117, i64* %8, align 8, !tbaa !1240

  %118 = add i32 %115, -65535

  %119 = icmp ult i32 %116, 65534

  %120 = icmp eq i32 %118, 0

  %121 = or i1 %120, %119

  %122 = select i1 %121, i64 379, i64 17

  %123 = add i64 %110, %122

  br i1 %121, label %block_4016f6, label %block_40158c



block_4016f6:                                     ; preds = %block_4016c8, %block_4016ca, %block_40157b

  %124 = phi i32 [ %116, %block_40157b ], [ %365, %block_4016ca ], [ %628, %block_4016c8 ]

  %125 = phi i64 [ %123, %block_40157b ], [ %372, %block_4016ca ], [ %373, %block_4016c8 ]

  %126 = phi %struct.Memory* [ %112, %block_40157b ], [ %561, %block_4016ca ], [ %561, %block_4016c8 ]

  %127 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 16) to i32*)

  %128 = sext i32 %124 to i64

  store i64 %128, i64* %8, align 8, !tbaa !1240

  %129 = load i32, i32* %7, align 4

  %130 = sub i32 %127, %129

  %131 = zext i32 %130 to i64

  store i64 %131, i64* %10, align 8, !tbaa !1240

  %132 = lshr i32 %129, 31

  %133 = load i64, i64* %9, align 8

  %134 = shl nsw i64 %128, 2

  %135 = add i64 %134, %133

  %136 = inttoptr i64 %135 to i32*

  %137 = load i32, i32* %136

  %138 = sub i32 %137, %130

  %139 = icmp eq i32 %138, 0

  %140 = select i1 %139, i64 16, i64 35

  %141 = add i64 %125, %140

  br i1 %139, label %block_401706, label %block_401719



block_4013f0:                                     ; preds = %block_4013c0, %block_4013e0

  %142 = phi i64 [ -2032, %block_4013c0 ], [ %318, %block_4013e0 ]

  %143 = phi i32 [ 0, %block_4013c0 ], [ %314, %block_4013e0 ]

  %144 = phi i64 [ %636, %block_4013c0 ], [ %317, %block_4013e0 ]

  %145 = phi %struct.Memory* [ %653, %block_4013c0 ], [ %145, %block_4013e0 ]

  %146 = add i64 %142, add (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 2032)

  %147 = inttoptr i64 %146 to i32*

  %148 = load i32, i32* %147

  %149 = add i32 %148, %143

  %150 = add i64 %142, add (i64 ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64), i64 2036)

  %151 = inttoptr i64 %150 to i32*

  store i32 %149, i32* %151

  %152 = add i64 %142, add (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 2036)

  %153 = inttoptr i64 %152 to i32*

  %154 = load i32, i32* %153

  %155 = add i32 %154, %149

  %156 = add i64 %142, add (i64 ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64), i64 2040)

  %157 = inttoptr i64 %156 to i32*

  store i32 %155, i32* %157

  %158 = add i64 %142, add (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 2040)

  %159 = inttoptr i64 %158 to i32*

  %160 = load i32, i32* %159

  %161 = add i32 %160, %155

  %162 = add i64 %142, add (i64 ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64), i64 2044)

  %163 = inttoptr i64 %162 to i32*

  store i32 %161, i32* %163

  %164 = icmp eq i64 %142, 0

  %165 = select i1 %164, i64 41, i64 -16

  %166 = add i64 %144, %165

  br i1 %164, label %block_401419, label %block_4013e0



block_401719:                                     ; preds = %block_4016f6

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 4, i64* %11, align 8, !tbaa !1240

  %167 = zext i32 %129 to i64

  store i64 %167, i64* %12, align 8, !tbaa !1240

  %168 = add i64 %141, 20

  %169 = load i64, i64* %17, align 8, !tbaa !1240

  %170 = add i64 %169, -8

  %171 = inttoptr i64 %170 to i64*

  store i64 %168, i64* %171

  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %174 = load i64, i64* %172, align 8, !alias.scope !1553, !noalias !1556

  %175 = load i64, i64* %173, align 8, !alias.scope !1553, !noalias !1556

  %176 = inttoptr i64 %169 to i64*

  %177 = load i64, i64* %176

  %178 = add i64 %169, 8

  %179 = inttoptr i64 %178 to i64*

  %180 = load i64, i64* %179

  %181 = add i64 %169, 16

  %182 = inttoptr i64 %181 to i64*

  %183 = load i64, i64* %182

  %184 = add i64 %169, 24

  %185 = inttoptr i64 %184 to i64*

  %186 = load i64, i64* %185

  %187 = add i64 %169, 32

  %188 = inttoptr i64 %187 to i64*

  %189 = load i64, i64* %188

  %190 = add i64 %169, 40

  %191 = inttoptr i64 %190 to i64*

  %192 = load i64, i64* %191

  %193 = add i64 %169, 48

  %194 = inttoptr i64 %193 to i64*

  %195 = load i64, i64* %194

  %196 = add i64 %169, 56

  %197 = inttoptr i64 %196 to i64*

  %198 = load i64, i64* %197

  %199 = add i64 %169, 64

  %200 = inttoptr i64 %199 to i64*

  %201 = load i64, i64* %200

  %202 = add i64 %169, 72

  %203 = inttoptr i64 %202 to i64*

  %204 = load i64, i64* %203

  %205 = inttoptr i64 %170 to i64*

  %206 = load i64, i64* %205

  store i64 %206, i64* %3, align 8, !alias.scope !1553, !noalias !1556

  store i64 %169, i64* %17, align 8, !alias.scope !1553, !noalias !1556

  %207 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64 %167, i64 4, i64 %131, i64 %174, i64 %175, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198, i64 %201, i64 %204), !noalias !1553

  store i64 %207, i64* %89, align 8, !alias.scope !1553, !noalias !1556

  %208 = load i32, i32* %7, align 4

  %209 = add i32 %208, -10

  %210 = icmp ult i32 %208, 10

  %211 = zext i1 %210 to i8

  store i8 %211, i8* %35, align 1, !tbaa !1244

  %212 = and i32 %209, 255

  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #10

  %214 = trunc i32 %213 to i8

  %215 = and i8 %214, 1

  %216 = xor i8 %215, 1

  store i8 %216, i8* %36, align 1, !tbaa !1258

  %217 = xor i32 %209, %208

  %218 = lshr i32 %217, 4

  %219 = trunc i32 %218 to i8

  %220 = and i8 %219, 1

  store i8 %220, i8* %37, align 1, !tbaa !1262

  %221 = icmp eq i32 %209, 0

  %222 = zext i1 %221 to i8

  store i8 %222, i8* %38, align 1, !tbaa !1259

  %223 = lshr i32 %209, 31

  %224 = trunc i32 %223 to i8

  store i8 %224, i8* %39, align 1, !tbaa !1260

  %225 = lshr i32 %208, 31

  %226 = xor i32 %223, %225

  %227 = add nuw nsw i32 %226, %225

  %228 = icmp eq i32 %227, 2

  %229 = zext i1 %228 to i8

  store i8 %229, i8* %40, align 1, !tbaa !1261

  br i1 %221, label %block_401737, label %block_401596



block_401569:                                     ; preds = %block_401619, %block_401557, %block_4015fe

  %230 = phi i64 [ %256, %block_401557 ], [ %737, %block_401619 ], [ %109, %block_4015fe ]

  %231 = phi i64 [ %244, %block_401557 ], [ %727, %block_401619 ], [ %99, %block_4015fe ]

  %232 = phi %struct.Memory* [ %246, %block_401557 ], [ %785, %block_401619 ], [ %785, %block_4015fe ]

  %233 = add i64 %231, 12

  %234 = inttoptr i64 %233 to i32*

  %235 = load i32, i32* %234

  %236 = add i32 %235, -1

  %237 = zext i32 %236 to i64

  store i64 %237, i64* %10, align 8, !tbaa !1240

  %238 = add i32 %235, -65535

  %239 = icmp ult i32 %236, 65534

  %240 = icmp eq i32 %238, 0

  %241 = or i1 %240, %239

  %242 = select i1 %241, i64 310, i64 18

  %243 = add i64 %230, %242

  br i1 %241, label %block_40169f, label %block_40157b



block_401557:                                     ; preds = %block_4015ac.block_401557_crit_edge, %block_4015c3, %block_401545

  %244 = phi i64 [ %423, %block_4015c3 ], [ %512, %block_4015ac.block_401557_crit_edge ], [ %800, %block_401545 ]

  %245 = phi i64 [ %430, %block_4015c3 ], [ %511, %block_4015ac.block_401557_crit_edge ], [ %380, %block_401545 ]

  %246 = phi %struct.Memory* [ %813, %block_4015c3 ], [ %813, %block_4015ac.block_401557_crit_edge ], [ %813, %block_401545 ]

  %247 = add i64 %244, 8

  %248 = inttoptr i64 %247 to i32*

  %249 = load i32, i32* %248

  %250 = add i32 %249, -1

  %251 = add i32 %249, -65535

  %252 = icmp ult i32 %250, 65534

  %253 = icmp eq i32 %251, 0

  %254 = or i1 %253, %252

  %255 = select i1 %254, i64 239, i64 18

  %256 = add i64 %245, %255

  br i1 %254, label %block_401646, label %block_401569



block_401672:                                     ; preds = %block_401646

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 2, i64* %11, align 8, !tbaa !1240

  %257 = zext i32 %609 to i64

  store i64 %257, i64* %12, align 8, !tbaa !1240

  %258 = add i64 %620, 20

  %259 = load i64, i64* %17, align 8, !tbaa !1240

  %260 = add i64 %259, -8

  %261 = inttoptr i64 %260 to i64*

  store i64 %258, i64* %261

  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %264 = load i64, i64* %262, align 8, !alias.scope !1558, !noalias !1561

  %265 = load i64, i64* %263, align 8, !alias.scope !1558, !noalias !1561

  %266 = inttoptr i64 %259 to i64*

  %267 = load i64, i64* %266

  %268 = add i64 %259, 8

  %269 = inttoptr i64 %268 to i64*

  %270 = load i64, i64* %269

  %271 = add i64 %259, 16

  %272 = inttoptr i64 %271 to i64*

  %273 = load i64, i64* %272

  %274 = add i64 %259, 24

  %275 = inttoptr i64 %274 to i64*

  %276 = load i64, i64* %275

  %277 = add i64 %259, 32

  %278 = inttoptr i64 %277 to i64*

  %279 = load i64, i64* %278

  %280 = add i64 %259, 40

  %281 = inttoptr i64 %280 to i64*

  %282 = load i64, i64* %281

  %283 = add i64 %259, 48

  %284 = inttoptr i64 %283 to i64*

  %285 = load i64, i64* %284

  %286 = add i64 %259, 56

  %287 = inttoptr i64 %286 to i64*

  %288 = load i64, i64* %287

  %289 = add i64 %259, 64

  %290 = inttoptr i64 %289 to i64*

  %291 = load i64, i64* %290

  %292 = add i64 %259, 72

  %293 = inttoptr i64 %292 to i64*

  %294 = load i64, i64* %293

  %295 = inttoptr i64 %260 to i64*

  %296 = load i64, i64* %295

  store i64 %296, i64* %3, align 8, !alias.scope !1558, !noalias !1561

  store i64 %259, i64* %17, align 8, !alias.scope !1558, !noalias !1561

  %297 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64 %257, i64 2, i64 %607, i64 %264, i64 %265, i64 %267, i64 %270, i64 %273, i64 %276, i64 %279, i64 %282, i64 %285, i64 %288, i64 %291, i64 %294), !noalias !1558

  %298 = load i64, i64* %3, align 8

  %299 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %299, i64* %8, align 8, !tbaa !1240

  %300 = add i64 %299, 12

  %301 = inttoptr i64 %300 to i32*

  %302 = load i32, i32* %301

  %303 = add i32 %302, -1

  %304 = zext i32 %303 to i64

  store i64 %304, i64* %10, align 8, !tbaa !1240

  %305 = add i32 %302, -65535

  %306 = icmp ult i32 %303, 65534

  %307 = icmp eq i32 %305, 0

  %308 = or i1 %307, %306

  %309 = select i1 %308, i64 25, i64 -267

  %310 = add i64 %298, %309

  br i1 %308, label %block_40169f, label %block_40157b



block_4013e0:                                     ; preds = %block_4013f0

  %311 = add i64 %142, add (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 2044)

  %312 = inttoptr i64 %311 to i32*

  %313 = load i32, i32* %312

  %314 = add i32 %313, %161

  %315 = add i64 %142, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %316 = inttoptr i64 %315 to i32*

  store i32 %314, i32* %316

  %317 = add i64 %166, 16

  %318 = add i64 %142, 16

  br label %block_4013f0



block_4016ca:                                     ; preds = %block_40169f

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 3, i64* %11, align 8, !tbaa !1240

  %319 = zext i32 %564 to i64

  store i64 %319, i64* %12, align 8, !tbaa !1240

  %320 = add i64 %575, 20

  %321 = load i64, i64* %17, align 8, !tbaa !1240

  %322 = add i64 %321, -8

  %323 = inttoptr i64 %322 to i64*

  store i64 %320, i64* %323

  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %326 = load i64, i64* %324, align 8, !alias.scope !1563, !noalias !1566

  %327 = load i64, i64* %325, align 8, !alias.scope !1563, !noalias !1566

  %328 = inttoptr i64 %321 to i64*

  %329 = load i64, i64* %328

  %330 = add i64 %321, 8

  %331 = inttoptr i64 %330 to i64*

  %332 = load i64, i64* %331

  %333 = add i64 %321, 16

  %334 = inttoptr i64 %333 to i64*

  %335 = load i64, i64* %334

  %336 = add i64 %321, 24

  %337 = inttoptr i64 %336 to i64*

  %338 = load i64, i64* %337

  %339 = add i64 %321, 32

  %340 = inttoptr i64 %339 to i64*

  %341 = load i64, i64* %340

  %342 = add i64 %321, 40

  %343 = inttoptr i64 %342 to i64*

  %344 = load i64, i64* %343

  %345 = add i64 %321, 48

  %346 = inttoptr i64 %345 to i64*

  %347 = load i64, i64* %346

  %348 = add i64 %321, 56

  %349 = inttoptr i64 %348 to i64*

  %350 = load i64, i64* %349

  %351 = add i64 %321, 64

  %352 = inttoptr i64 %351 to i64*

  %353 = load i64, i64* %352

  %354 = add i64 %321, 72

  %355 = inttoptr i64 %354 to i64*

  %356 = load i64, i64* %355

  %357 = inttoptr i64 %322 to i64*

  %358 = load i64, i64* %357

  store i64 %358, i64* %3, align 8, !alias.scope !1563, !noalias !1566

  store i64 %321, i64* %17, align 8, !alias.scope !1563, !noalias !1566

  %359 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64 %319, i64 3, i64 %563, i64 %326, i64 %327, i64 %329, i64 %332, i64 %335, i64 %338, i64 %341, i64 %344, i64 %347, i64 %350, i64 %353, i64 %356), !noalias !1563

  %360 = load i64, i64* %3, align 8

  %361 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %362 = add i64 %361, 16

  %363 = inttoptr i64 %362 to i32*

  %364 = load i32, i32* %363

  %365 = add i32 %364, -1

  %366 = zext i32 %365 to i64

  store i64 %366, i64* %8, align 8, !tbaa !1240

  %367 = add i32 %364, -65535

  %368 = icmp ult i32 %365, 65534

  %369 = icmp eq i32 %367, 0

  %370 = or i1 %369, %368

  %371 = select i1 %370, i64 24, i64 -338

  %372 = add i64 %360, %371

  br i1 %370, label %block_4016f6, label %block_40158c



block_4016c8:                                     ; preds = %block_4016b0

  %373 = add i64 %635, 46

  br label %block_4016f6



block_401545:                                     ; preds = %block_401531

  %374 = add i64 %800, 4

  %375 = inttoptr i64 %374 to i32*

  %376 = load i32, i32* %375

  %377 = add i32 %376, -1

  %378 = icmp ult i32 %377, 65535

  %379 = select i1 %378, i64 168, i64 18

  %380 = add i64 %809, %379

  br i1 %378, label %block_4015ed, label %block_401557



block_4015c3:                                     ; preds = %block_40159b

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 0, i64* %11, align 8, !tbaa !1240

  %381 = zext i32 %592 to i64

  store i64 %381, i64* %12, align 8, !tbaa !1240

  %382 = add i64 %602, 17

  %383 = load i64, i64* %17, align 8, !tbaa !1240

  %384 = add i64 %383, -8

  %385 = inttoptr i64 %384 to i64*

  store i64 %382, i64* %385

  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %388 = load i64, i64* %386, align 8, !alias.scope !1568, !noalias !1571

  %389 = load i64, i64* %387, align 8, !alias.scope !1568, !noalias !1571

  %390 = inttoptr i64 %383 to i64*

  %391 = load i64, i64* %390

  %392 = add i64 %383, 8

  %393 = inttoptr i64 %392 to i64*

  %394 = load i64, i64* %393

  %395 = add i64 %383, 16

  %396 = inttoptr i64 %395 to i64*

  %397 = load i64, i64* %396

  %398 = add i64 %383, 24

  %399 = inttoptr i64 %398 to i64*

  %400 = load i64, i64* %399

  %401 = add i64 %383, 32

  %402 = inttoptr i64 %401 to i64*

  %403 = load i64, i64* %402

  %404 = add i64 %383, 40

  %405 = inttoptr i64 %404 to i64*

  %406 = load i64, i64* %405

  %407 = add i64 %383, 48

  %408 = inttoptr i64 %407 to i64*

  %409 = load i64, i64* %408

  %410 = add i64 %383, 56

  %411 = inttoptr i64 %410 to i64*

  %412 = load i64, i64* %411

  %413 = add i64 %383, 64

  %414 = inttoptr i64 %413 to i64*

  %415 = load i64, i64* %414

  %416 = add i64 %383, 72

  %417 = inttoptr i64 %416 to i64*

  %418 = load i64, i64* %417

  %419 = inttoptr i64 %384 to i64*

  %420 = load i64, i64* %419

  store i64 %420, i64* %3, align 8, !alias.scope !1568, !noalias !1571

  store i64 %383, i64* %17, align 8, !alias.scope !1568, !noalias !1571

  %421 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64 %381, i64 0, i64 %590, i64 %388, i64 %389, i64 %391, i64 %394, i64 %397, i64 %400, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418), !noalias !1568

  %422 = load i64, i64* %3, align 8

  %423 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %423, i64* %8, align 8, !tbaa !1240

  %424 = add i64 %423, 4

  %425 = inttoptr i64 %424 to i32*

  %426 = load i32, i32* %425

  %427 = add i32 %426, -1

  %428 = icmp ult i32 %427, 65535

  %429 = select i1 %428, i64 25, i64 -125

  %430 = add i64 %422, %429

  br i1 %428, label %block_4015ed, label %block_401557



block_4014d6:                                     ; preds = %block_4014a0

  %431 = inttoptr i64 %847 to i32*

  %432 = load i32, i32* %431

  %433 = add i64 %844, 108

  %434 = add i64 %847, 8180

  %435 = add i64 %847, 8184

  %436 = add i64 %847, 8188

  %437 = add i64 %847, 8192

  br label %block_401502



block_4015c1:                                     ; preds = %block_4015ac

  %438 = add i64 %511, 44

  br label %block_4015ed



block_401737:                                     ; preds = %block_401717, %block_40158c, %block_401719

  %439 = phi %struct.Memory* [ %126, %block_401719 ], [ %126, %block_401717 ], [ %738, %block_40158c ]

  %440 = load i64, i64* %9, align 8

  store i64 %440, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %441 = load i64, i64* %17, align 8, !tbaa !1240

  %442 = add i64 %441, 8

  %443 = inttoptr i64 %441 to i64*

  %444 = load i64, i64* %443

  store i64 %444, i64* %9, align 8, !tbaa !1240

  %445 = add i64 %441, 16

  %446 = inttoptr i64 %442 to i64*

  %447 = load i64, i64* %446

  store i64 %447, i64* %15, align 8, !tbaa !1240

  %448 = add i64 %441, 24

  %449 = inttoptr i64 %445 to i64*

  %450 = load i64, i64* %449

  store i64 %450, i64* %14, align 8, !tbaa !1240

  %451 = inttoptr i64 %448 to i64*

  %452 = load i64, i64* %451

  store i64 %452, i64* %3, align 8, !tbaa !1240

  %453 = add i64 %441, 32

  store i64 %453, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %439



block_401430:                                     ; preds = %block_401419, %block_401430

  %454 = phi i64 [ -65536, %block_401419 ], [ %494, %block_401430 ]

  %455 = phi %struct.Memory* [ %145, %block_401419 ], [ %455, %block_401430 ]

  %456 = shl i64 %454, 2

  %457 = add i64 %95, %456

  %458 = inttoptr i64 %457 to i32*

  %459 = load i32, i32* %458

  %460 = zext i32 %459 to i64

  %461 = shl nuw i64 %460, 32

  %462 = ashr i64 %461, 33

  %463 = lshr i64 %462, 1

  %464 = shl i64 %463, 32

  %465 = ashr exact i64 %464, 30

  %466 = add i64 %465, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %467 = inttoptr i64 %466 to i32*

  %468 = load i32, i32* %467

  %469 = sext i32 %468 to i64

  %470 = add i32 %468, 1

  %471 = inttoptr i64 %466 to i32*

  store i32 %470, i32* %471

  %472 = shl nsw i64 %469, 2

  %473 = add i64 %472, %651

  %474 = inttoptr i64 %473 to i32*

  store i32 %459, i32* %474

  %475 = add i64 %96, %456

  %476 = inttoptr i64 %475 to i32*

  %477 = load i32, i32* %476

  %478 = zext i32 %477 to i64

  %479 = shl nuw i64 %478, 32

  %480 = ashr i64 %479, 33

  %481 = lshr i64 %480, 1

  %482 = shl i64 %481, 32

  %483 = ashr exact i64 %482, 30

  %484 = add i64 %483, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %485 = inttoptr i64 %484 to i32*

  %486 = load i32, i32* %485

  %487 = sext i32 %486 to i64

  %488 = add nsw i64 %487, 1

  %489 = trunc i64 %488 to i32

  %490 = inttoptr i64 %484 to i32*

  store i32 %489, i32* %490

  %491 = shl nsw i64 %487, 2

  %492 = add i64 %491, %651

  %493 = inttoptr i64 %492 to i32*

  store i32 %477, i32* %493

  %494 = add i64 %454, 2

  %495 = icmp eq i64 %494, 0

  br i1 %495, label %block_401480, label %block_401430



block_4014f0:                                     ; preds = %block_401502

  %496 = add i64 %437, %814

  %497 = inttoptr i64 %496 to i32*

  %498 = load i32, i32* %497

  %499 = add i32 %498, %828

  %500 = inttoptr i64 %496 to i32*

  store i32 %499, i32* %500

  %501 = add i64 %832, 18

  %502 = add i64 %810, 4

  br label %block_401502



block_4015ac:                                     ; preds = %block_40159b

  %503 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %504 = add i32 %503, 1

  store i32 %504, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %505 = add i64 %800, 4

  %506 = inttoptr i64 %505 to i32*

  %507 = load i32, i32* %506

  %508 = add i32 %507, -1

  %509 = icmp ult i32 %508, 65535

  %510 = select i1 %509, i64 21, i64 -85

  %511 = add i64 %602, %510

  br i1 %509, label %block_4015c1, label %block_4015ac.block_401557_crit_edge



block_4015ac.block_401557_crit_edge:              ; preds = %block_4015ac

  %512 = load i64, i64* %8, align 8

  br label %block_401557



block_4014a0:                                     ; preds = %block_401480, %block_4014a0

  %513 = phi i64 [ -65536, %block_401480 ], [ %556, %block_4014a0 ]

  %514 = phi %struct.Memory* [ %455, %block_401480 ], [ %514, %block_4014a0 ]

  %515 = shl i64 %513, 2

  %516 = add i64 %846, %515

  %517 = inttoptr i64 %516 to i32*

  %518 = load i32, i32* %517

  %519 = sext i32 %518 to i64

  %520 = shl nsw i64 %519, 2

  %521 = add i64 %520, %847

  %522 = inttoptr i64 %521 to i32*

  %523 = load i32, i32* %522

  %524 = add i32 %523, 1

  %525 = inttoptr i64 %521 to i32*

  store i32 %524, i32* %525

  %526 = add i64 %848, %515

  %527 = inttoptr i64 %526 to i32*

  %528 = load i32, i32* %527

  %529 = sext i32 %528 to i64

  %530 = shl nsw i64 %529, 2

  %531 = add i64 %530, %847

  %532 = inttoptr i64 %531 to i32*

  %533 = load i32, i32* %532

  %534 = add i32 %533, 1

  %535 = inttoptr i64 %531 to i32*

  store i32 %534, i32* %535

  %536 = add i64 %849, %515

  %537 = inttoptr i64 %536 to i32*

  %538 = load i32, i32* %537

  %539 = sext i32 %538 to i64

  %540 = shl nsw i64 %539, 2

  %541 = add i64 %540, %847

  %542 = inttoptr i64 %541 to i32*

  %543 = load i32, i32* %542

  %544 = add i32 %543, 1

  %545 = inttoptr i64 %541 to i32*

  store i32 %544, i32* %545

  %546 = add i64 %850, %515

  %547 = inttoptr i64 %546 to i32*

  %548 = load i32, i32* %547

  %549 = sext i32 %548 to i64

  %550 = shl nsw i64 %549, 2

  %551 = add i64 %550, %847

  %552 = inttoptr i64 %551 to i32*

  %553 = load i32, i32* %552

  %554 = add i32 %553, 1

  %555 = inttoptr i64 %551 to i32*

  store i32 %554, i32* %555

  %556 = add i64 %513, 4

  %557 = icmp eq i64 %556, 0

  br i1 %557, label %block_4014d6, label %block_4014a0



block_401670:                                     ; preds = %block_401657

  %558 = add i64 %588, 47

  br label %block_40169f



block_40169f:                                     ; preds = %block_401670, %block_401672, %block_401569

  %559 = phi i32 [ %303, %block_401672 ], [ %581, %block_401670 ], [ %236, %block_401569 ]

  %560 = phi i64 [ %310, %block_401672 ], [ %558, %block_401670 ], [ %243, %block_401569 ]

  %561 = phi %struct.Memory* [ %606, %block_401672 ], [ %606, %block_401670 ], [ %232, %block_401569 ]

  %562 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 12) to i32*)

  %563 = sext i32 %559 to i64

  store i64 %563, i64* %10, align 8, !tbaa !1240

  %564 = load i32, i32* %7, align 4

  %565 = sub i32 %562, %564

  %566 = zext i32 %565 to i64

  store i64 %566, i64* %11, align 8, !tbaa !1240

  %567 = load i64, i64* %9, align 8

  %568 = shl nsw i64 %563, 2

  %569 = add i64 %568, %567

  %570 = inttoptr i64 %569 to i32*

  %571 = load i32, i32* %570

  %572 = sub i32 %571, %565

  %573 = icmp eq i32 %572, 0

  %574 = select i1 %573, i64 17, i64 43

  %575 = add i64 %560, %574

  br i1 %573, label %block_4016b0, label %block_4016ca



block_401657:                                     ; preds = %block_401646

  %576 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %577 = add i32 %576, 1

  store i32 %577, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %578 = add i64 %603, 12

  %579 = inttoptr i64 %578 to i32*

  %580 = load i32, i32* %579

  %581 = add i32 %580, -1

  %582 = zext i32 %581 to i64

  store i64 %582, i64* %10, align 8, !tbaa !1240

  %583 = add i32 %580, -65535

  %584 = icmp ult i32 %581, 65534

  %585 = icmp eq i32 %583, 0

  %586 = or i1 %585, %584

  %587 = select i1 %586, i64 25, i64 -220

  %588 = add i64 %620, %587

  br i1 %586, label %block_401670, label %block_401657.block_40157b_crit_edge



block_401657.block_40157b_crit_edge:              ; preds = %block_401657

  %589 = load i64, i64* %8, align 8

  br label %block_40157b



block_40159b:                                     ; preds = %block_401531

  %590 = sext i32 %803 to i64

  %591 = load i32, i32* bitcast (%test_rank_array_type* @test_rank_array to i32*)

  %592 = load i32, i32* %7, align 4

  %593 = add i32 %592, %591

  %594 = zext i32 %593 to i64

  store i64 %594, i64* %11, align 8, !tbaa !1240

  %595 = shl nsw i64 %590, 2

  %596 = add i64 %595, %847

  %597 = inttoptr i64 %596 to i32*

  %598 = load i32, i32* %597

  %599 = sub i32 %598, %593

  %600 = icmp eq i32 %599, 0

  %601 = select i1 %600, i64 17, i64 40

  %602 = add i64 %809, %601

  br i1 %600, label %block_4015ac, label %block_4015c3



block_401646:                                     ; preds = %block_401619, %block_401617, %block_401557

  %603 = phi i64 [ %244, %block_401557 ], [ %727, %block_401619 ], [ %99, %block_401617 ]

  %604 = phi i64 [ %256, %block_401557 ], [ %737, %block_401619 ], [ %621, %block_401617 ]

  %605 = phi i32 [ %250, %block_401557 ], [ %731, %block_401619 ], [ %103, %block_401617 ]

  %606 = phi %struct.Memory* [ %246, %block_401557 ], [ %785, %block_401619 ], [ %785, %block_401617 ]

  %607 = sext i32 %605 to i64

  %608 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8) to i32*)

  %609 = load i32, i32* %7, align 4

  %610 = add i32 %609, %608

  %611 = zext i32 %610 to i64

  store i64 %611, i64* %11, align 8, !tbaa !1240

  %612 = load i64, i64* %9, align 8

  %613 = shl nsw i64 %607, 2

  %614 = add i64 %613, %612

  %615 = inttoptr i64 %614 to i32*

  %616 = load i32, i32* %615

  %617 = sub i32 %616, %610

  %618 = icmp eq i32 %617, 0

  %619 = select i1 %618, i64 17, i64 44

  %620 = add i64 %604, %619

  br i1 %618, label %block_401657, label %block_401672



block_401617:                                     ; preds = %block_4015fe

  %621 = add i64 %109, 47

  br label %block_401646



block_4016b0:                                     ; preds = %block_40169f

  %622 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %623 = add i32 %622, 1

  store i32 %623, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %624 = load i64, i64* %8, align 8

  %625 = add i64 %624, 16

  %626 = inttoptr i64 %625 to i32*

  %627 = load i32, i32* %626

  %628 = add i32 %627, -1

  %629 = zext i32 %628 to i64

  store i64 %629, i64* %8, align 8, !tbaa !1240

  %630 = add i32 %627, -65535

  %631 = icmp ult i32 %628, 65534

  %632 = icmp eq i32 %630, 0

  %633 = or i1 %632, %631

  %634 = select i1 %633, i64 24, i64 -292

  %635 = add i64 %575, %634

  br i1 %633, label %block_4016c8, label %block_40158c



block_4013c0:                                     ; preds = %block_401390

  store i32 0, i32* bitcast (%bucket_ptrs_type* @bucket_ptrs to i32*)

  %636 = add i64 %93, 105

  br label %block_4013f0



block_401596:                                     ; preds = %block_401706, %block_40158c, %block_401719

  %637 = phi %struct.Memory* [ %126, %block_401719 ], [ %126, %block_401706 ], [ %738, %block_40158c ]

  %638 = load i64, i64* %17, align 8, !tbaa !1240

  %639 = add i64 %638, 8

  %640 = inttoptr i64 %638 to i64*

  %641 = load i64, i64* %640

  store i64 %641, i64* %9, align 8, !tbaa !1240

  %642 = add i64 %638, 16

  %643 = inttoptr i64 %639 to i64*

  %644 = load i64, i64* %643

  store i64 %644, i64* %15, align 8, !tbaa !1240

  %645 = add i64 %638, 24

  %646 = inttoptr i64 %642 to i64*

  %647 = load i64, i64* %646

  store i64 %647, i64* %14, align 8, !tbaa !1240

  %648 = inttoptr i64 %645 to i64*

  %649 = load i64, i64* %648

  store i64 %649, i64* %3, align 8, !tbaa !1240

  %650 = add i64 %638, 32

  store i64 %650, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %637



block_401419:                                     ; preds = %block_4013f0

  %651 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 %651, i64* %14, align 8, !tbaa !1240

  br label %block_401430



block_401390:                                     ; preds = %block_401390, %block_401310

  %652 = phi i64 [ -65536, %block_401310 ], [ %683, %block_401390 ]

  %653 = phi %struct.Memory* [ %2, %block_401310 ], [ %653, %block_401390 ]

  %654 = shl i64 %652, 2

  %655 = add i64 %95, %654

  %656 = inttoptr i64 %655 to i32*

  %657 = load i32, i32* %656

  %658 = zext i32 %657 to i64

  %659 = shl nuw i64 %658, 32

  %660 = ashr i64 %659, 33

  %661 = lshr i64 %660, 1

  %662 = shl i64 %661, 32

  %663 = ashr exact i64 %662, 30

  %664 = add i64 %663, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %665 = inttoptr i64 %664 to i32*

  %666 = load i32, i32* %665

  %667 = add i32 %666, 1

  %668 = inttoptr i64 %664 to i32*

  store i32 %667, i32* %668

  %669 = add i64 %96, %654

  %670 = inttoptr i64 %669 to i32*

  %671 = load i32, i32* %670

  %672 = zext i32 %671 to i64

  %673 = shl nuw i64 %672, 32

  %674 = ashr i64 %673, 33

  %675 = lshr i64 %674, 1

  %676 = shl i64 %675, 32

  %677 = ashr exact i64 %676, 30

  %678 = add i64 %677, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %679 = inttoptr i64 %678 to i32*

  %680 = load i32, i32* %679

  %681 = add i32 %680, 1

  %682 = inttoptr i64 %678 to i32*

  store i32 %681, i32* %682

  %683 = add nsw i64 %652, 2

  %684 = icmp eq i64 %683, 0

  br i1 %684, label %block_4013c0, label %block_401390



block_401619:                                     ; preds = %block_4015ed

  store i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64* %13, align 8, !tbaa !1240

  store i64 1, i64* %11, align 8, !tbaa !1240

  %685 = zext i32 %788 to i64

  store i64 %685, i64* %12, align 8, !tbaa !1240

  %686 = add i64 %799, 20

  %687 = load i64, i64* %17, align 8, !tbaa !1240

  %688 = add i64 %687, -8

  %689 = inttoptr i64 %688 to i64*

  store i64 %686, i64* %689

  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %692 = load i64, i64* %690, align 8, !alias.scope !1573, !noalias !1576

  %693 = load i64, i64* %691, align 8, !alias.scope !1573, !noalias !1576

  %694 = inttoptr i64 %687 to i64*

  %695 = load i64, i64* %694

  %696 = add i64 %687, 8

  %697 = inttoptr i64 %696 to i64*

  %698 = load i64, i64* %697

  %699 = add i64 %687, 16

  %700 = inttoptr i64 %699 to i64*

  %701 = load i64, i64* %700

  %702 = add i64 %687, 24

  %703 = inttoptr i64 %702 to i64*

  %704 = load i64, i64* %703

  %705 = add i64 %687, 32

  %706 = inttoptr i64 %705 to i64*

  %707 = load i64, i64* %706

  %708 = add i64 %687, 40

  %709 = inttoptr i64 %708 to i64*

  %710 = load i64, i64* %709

  %711 = add i64 %687, 48

  %712 = inttoptr i64 %711 to i64*

  %713 = load i64, i64* %712

  %714 = add i64 %687, 56

  %715 = inttoptr i64 %714 to i64*

  %716 = load i64, i64* %715

  %717 = add i64 %687, 64

  %718 = inttoptr i64 %717 to i64*

  %719 = load i64, i64* %718

  %720 = add i64 %687, 72

  %721 = inttoptr i64 %720 to i64*

  %722 = load i64, i64* %721

  %723 = inttoptr i64 %688 to i64*

  %724 = load i64, i64* %723

  store i64 %724, i64* %3, align 8, !alias.scope !1573, !noalias !1576

  store i64 %687, i64* %17, align 8, !alias.scope !1573, !noalias !1576

  %725 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401f20__rodata_type* @seg_401f20__rodata to i64), i64 1078), i64 4294967295), i64 %685, i64 1, i64 %786, i64 %692, i64 %693, i64 %695, i64 %698, i64 %701, i64 %704, i64 %707, i64 %710, i64 %713, i64 %716, i64 %719, i64 %722), !noalias !1573

  %726 = load i64, i64* %3, align 8

  %727 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %727, i64* %8, align 8, !tbaa !1240

  %728 = add i64 %727, 8

  %729 = inttoptr i64 %728 to i32*

  %730 = load i32, i32* %729

  %731 = add i32 %730, -1

  %732 = add i32 %730, -65535

  %733 = icmp ult i32 %731, 65534

  %734 = icmp eq i32 %732, 0

  %735 = or i1 %734, %733

  %736 = select i1 %735, i64 25, i64 -196

  %737 = add i64 %726, %736

  br i1 %735, label %block_401646, label %block_401569



block_40158c:                                     ; preds = %block_4016b0, %block_4016ca, %block_40157b

  %738 = phi %struct.Memory* [ %112, %block_40157b ], [ %561, %block_4016ca ], [ %561, %block_4016b0 ]

  %739 = load i32, i32* %7, align 4

  %740 = add i32 %739, -10

  %741 = icmp ult i32 %739, 10

  %742 = zext i1 %741 to i8

  store i8 %742, i8* %35, align 1, !tbaa !1244

  %743 = and i32 %740, 255

  %744 = tail call i32 @llvm.ctpop.i32(i32 %743) #10

  %745 = trunc i32 %744 to i8

  %746 = and i8 %745, 1

  %747 = xor i8 %746, 1

  store i8 %747, i8* %36, align 1, !tbaa !1258

  %748 = xor i32 %740, %739

  %749 = lshr i32 %748, 4

  %750 = trunc i32 %749 to i8

  %751 = and i8 %750, 1

  store i8 %751, i8* %37, align 1, !tbaa !1262

  %752 = icmp eq i32 %740, 0

  %753 = zext i1 %752 to i8

  store i8 %753, i8* %38, align 1, !tbaa !1259

  %754 = lshr i32 %740, 31

  %755 = trunc i32 %754 to i8

  store i8 %755, i8* %39, align 1, !tbaa !1260

  %756 = lshr i32 %739, 31

  %757 = xor i32 %754, %756

  %758 = add nuw nsw i32 %757, %756

  %759 = icmp eq i32 %758, 2

  %760 = zext i1 %759 to i8

  store i8 %760, i8* %40, align 1, !tbaa !1261

  br i1 %752, label %block_401737, label %block_401596



block_401717:                                     ; preds = %block_401706

  br label %block_401737



block_401706:                                     ; preds = %block_4016f6

  %761 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %762 = add i32 %761, 1

  store i32 %762, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %763 = add i32 %129, -10

  %764 = icmp ult i32 %129, 10

  %765 = zext i1 %764 to i8

  store i8 %765, i8* %35, align 1, !tbaa !1244

  %766 = and i32 %763, 255

  %767 = tail call i32 @llvm.ctpop.i32(i32 %766) #10

  %768 = trunc i32 %767 to i8

  %769 = and i8 %768, 1

  %770 = xor i8 %769, 1

  store i8 %770, i8* %36, align 1, !tbaa !1258

  %771 = xor i32 %763, %129

  %772 = lshr i32 %771, 4

  %773 = trunc i32 %772 to i8

  %774 = and i8 %773, 1

  store i8 %774, i8* %37, align 1, !tbaa !1262

  %775 = icmp eq i32 %763, 0

  %776 = zext i1 %775 to i8

  store i8 %776, i8* %38, align 1, !tbaa !1259

  %777 = lshr i32 %763, 31

  %778 = trunc i32 %777 to i8

  store i8 %778, i8* %39, align 1, !tbaa !1260

  %779 = xor i32 %777, %132

  %780 = add nuw nsw i32 %779, %132

  %781 = icmp eq i32 %780, 2

  %782 = zext i1 %781 to i8

  store i8 %782, i8* %40, align 1, !tbaa !1261

  br i1 %775, label %block_401717, label %block_401596



block_4015ed:                                     ; preds = %block_4015c1, %block_4015c3, %block_401545

  %783 = phi i64 [ %430, %block_4015c3 ], [ %438, %block_4015c1 ], [ %380, %block_401545 ]

  %784 = phi i32 [ %427, %block_4015c3 ], [ %508, %block_4015c1 ], [ %377, %block_401545 ]

  %785 = phi %struct.Memory* [ %813, %block_4015c3 ], [ %813, %block_4015c1 ], [ %813, %block_401545 ]

  %786 = sext i32 %784 to i64

  %787 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4) to i32*)

  %788 = load i32, i32* %7, align 4

  %789 = add i32 %788, %787

  %790 = zext i32 %789 to i64

  store i64 %790, i64* %11, align 8, !tbaa !1240

  %791 = load i64, i64* %9, align 8

  %792 = shl nsw i64 %786, 2

  %793 = add i64 %792, %791

  %794 = inttoptr i64 %793 to i32*

  %795 = load i32, i32* %794

  %796 = sub i32 %795, %789

  %797 = icmp eq i32 %796, 0

  %798 = select i1 %797, i64 17, i64 44

  %799 = add i64 %783, %798

  br i1 %797, label %block_4015fe, label %block_401619



block_401531:                                     ; preds = %block_401502

  %800 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %800, i64* %8, align 8, !tbaa !1240

  %801 = inttoptr i64 %800 to i32*

  %802 = load i32, i32* %801

  %803 = add i32 %802, -1

  %804 = add i32 %802, -65535

  %805 = icmp ult i32 %803, 65534

  %806 = icmp eq i32 %804, 0

  %807 = or i1 %806, %805

  %808 = select i1 %807, i64 106, i64 20

  %809 = add i64 %832, %808

  br i1 %807, label %block_40159b, label %block_401545



block_401502:                                     ; preds = %block_4014f0, %block_4014d6

  %810 = phi i64 [ -2044, %block_4014d6 ], [ %502, %block_4014f0 ]

  %811 = phi i32 [ %432, %block_4014d6 ], [ %499, %block_4014f0 ]

  %812 = phi i64 [ %433, %block_4014d6 ], [ %501, %block_4014f0 ]

  %813 = phi %struct.Memory* [ %514, %block_4014d6 ], [ %813, %block_4014f0 ]

  %814 = shl i64 %810, 2

  %815 = add i64 %434, %814

  %816 = inttoptr i64 %815 to i32*

  %817 = load i32, i32* %816

  %818 = add i32 %817, %811

  %819 = inttoptr i64 %815 to i32*

  store i32 %818, i32* %819

  %820 = add i64 %435, %814

  %821 = inttoptr i64 %820 to i32*

  %822 = load i32, i32* %821

  %823 = add i32 %822, %818

  %824 = inttoptr i64 %820 to i32*

  store i32 %823, i32* %824

  %825 = add i64 %436, %814

  %826 = inttoptr i64 %825 to i32*

  %827 = load i32, i32* %826

  %828 = add i32 %827, %823

  %829 = inttoptr i64 %825 to i32*

  store i32 %828, i32* %829

  %830 = icmp eq i64 %810, 0

  %831 = select i1 %830, i64 47, i64 -18

  %832 = add i64 %812, %831

  br i1 %830, label %block_401531, label %block_4014f0



block_401480:                                     ; preds = %block_401430

  %833 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  store i64 %833, i64* %9, align 8, !tbaa !1240

  %834 = zext i32 %486 to i64

  %835 = xor i64 %834, %487

  %836 = and i64 %835, 4294967295

  store i64 %836, i64* %12, align 8, !tbaa !1240

  store i64 8192, i64* %11, align 8, !tbaa !1240

  store i64 %833, i64* %13, align 8, !tbaa !1240

  %837 = add i64 %166, 125

  %838 = load i64, i64* %17, align 8, !tbaa !1240

  %839 = add i64 %838, -8

  %840 = inttoptr i64 %839 to i64*

  store i64 %837, i64* %840

  %841 = inttoptr i64 %839 to i64*

  %842 = load i64, i64* %841

  store i64 %842, i64* %3, align 8, !alias.scope !1578, !noalias !1581

  store i64 %838, i64* %17, align 8, !alias.scope !1578, !noalias !1581

  %843 = tail call i64 @memset(i64 %833, i64 %836, i64 8192), !noalias !1578

  %844 = load i64, i64* %3, align 8

  %845 = load i64, i64* %14, align 8

  %846 = add i64 %845, 262144

  %847 = load i64, i64* %9, align 8

  %848 = add i64 %845, 262148

  %849 = add i64 %845, 262152

  %850 = add i64 %845, 262156

  br label %block_4014a0

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

  %26 = add i64 %1, 5200

  %27 = add i64 %1, 17

  %28 = add i64 %14, -32

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  store i64 %28, i64* %11, align 8, !tbaa !1240

  %30 = tail call %struct.Memory* @sub_401e50_wtime_(%struct.State* nonnull %0, i64 %26, %struct.Memory* %2)

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

  store double %47, double* %35, align 1, !tbaa !1271

  store i64 0, i64* %36, align 1, !tbaa !1271

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

  store i8 0, i8* %12, align 1, !tbaa !1408

  store i8 1, i8* %13, align 1, !tbaa !1408

  store i8 0, i8* %14, align 1, !tbaa !1408

  store i8 1, i8* %15, align 1, !tbaa !1408

  store i8 0, i8* %16, align 1, !tbaa !1408

  store i8 0, i8* %17, align 1, !tbaa !1408

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

  %26 = add i64 %1, 5248

  %27 = add i64 %1, 17

  %28 = add i64 %14, -32

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  store i64 %28, i64* %12, align 8, !tbaa !1240

  %30 = tail call %struct.Memory* @sub_401e50_wtime_(%struct.State* nonnull %0, i64 %26, %struct.Memory* %2)

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401f14__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401f14:

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

define i64 @callback_sub_401f10___libc_csu_fini() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202256, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401f10___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4202256, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401ea0___libc_csu_init() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202144, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401ea0___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4202144, %struct.Memory* null)

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

  store i64 4200272, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_401750_main(%struct.State* nonnull @__mcsema_reg_state, i64 4200272, %struct.Memory* null)

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

define %struct.Memory* @ext_6046e0___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6046d0_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6046b8_puts(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6046c8_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6046b0_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_6046c0_fclose(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define i64 @wtime_(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202064, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401e50_wtime_(%struct.State* nonnull @__mcsema_reg_state, i64 4202064, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

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

  store i64 4202260, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401f14__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4202260, %struct.Memory* null)

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

  %1 = tail call i64 @callback_sub_401f10___libc_csu_fini()

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

  %3 = tail call i64 @callback_sub_401ea0___libc_csu_init()

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

!1264 = distinct !{!1264, !1265, !"ext_6046e0___libc_start_main: argument 0"}

!1265 = distinct !{!1265, !"ext_6046e0___libc_start_main"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_6046e0___libc_start_main: argument 1"}

!1268 = !{!1269}

!1269 = distinct !{!1269, !1270, !"ext_6046d0_gettimeofday: argument 0"}

!1270 = distinct !{!1270, !"ext_6046d0_gettimeofday"}

!1271 = !{!1272, !1272, i64 0}

!1272 = !{!"double", !1242, i64 0}

!1273 = !{!1274}

!1274 = distinct !{!1274, !1275, !"ext_6046c8_printf: argument 0"}

!1275 = distinct !{!1275, !"ext_6046c8_printf"}

!1276 = !{!1277}

!1277 = distinct !{!1277, !1275, !"ext_6046c8_printf: argument 1"}

!1278 = !{!1279}

!1279 = distinct !{!1279, !1280, !"ext_6046c8_printf: argument 0"}

!1280 = distinct !{!1280, !"ext_6046c8_printf"}

!1281 = !{!1282}

!1282 = distinct !{!1282, !1280, !"ext_6046c8_printf: argument 1"}

!1283 = !{!1284}

!1284 = distinct !{!1284, !1285, !"ext_6046b8_puts: argument 0"}

!1285 = distinct !{!1285, !"ext_6046b8_puts"}

!1286 = !{!1287}

!1287 = distinct !{!1287, !1285, !"ext_6046b8_puts: argument 1"}

!1288 = !{!1289}

!1289 = distinct !{!1289, !1290, !"ext_6046c8_printf: argument 0"}

!1290 = distinct !{!1290, !"ext_6046c8_printf"}

!1291 = !{!1292}

!1292 = distinct !{!1292, !1290, !"ext_6046c8_printf: argument 1"}

!1293 = !{!1294}

!1294 = distinct !{!1294, !1295, !"ext_6046c8_printf: argument 0"}

!1295 = distinct !{!1295, !"ext_6046c8_printf"}

!1296 = !{!1297}

!1297 = distinct !{!1297, !1295, !"ext_6046c8_printf: argument 1"}

!1298 = !{!1299}

!1299 = distinct !{!1299, !1300, !"ext_6046b8_puts: argument 0"}

!1300 = distinct !{!1300, !"ext_6046b8_puts"}

!1301 = !{!1302}

!1302 = distinct !{!1302, !1300, !"ext_6046b8_puts: argument 1"}

!1303 = !{!1304}

!1304 = distinct !{!1304, !1305, !"ext_6046c8_printf: argument 0"}

!1305 = distinct !{!1305, !"ext_6046c8_printf"}

!1306 = !{!1307}

!1307 = distinct !{!1307, !1305, !"ext_6046c8_printf: argument 1"}

!1308 = !{!1309}

!1309 = distinct !{!1309, !1310, !"ext_6046c8_printf: argument 0"}

!1310 = distinct !{!1310, !"ext_6046c8_printf"}

!1311 = !{!1312}

!1312 = distinct !{!1312, !1310, !"ext_6046c8_printf: argument 1"}

!1313 = !{!1314}

!1314 = distinct !{!1314, !1315, !"ext_6046c8_printf: argument 0"}

!1315 = distinct !{!1315, !"ext_6046c8_printf"}

!1316 = !{!1317}

!1317 = distinct !{!1317, !1315, !"ext_6046c8_printf: argument 1"}

!1318 = !{!1319}

!1319 = distinct !{!1319, !1320, !"ext_6046c8_printf: argument 0"}

!1320 = distinct !{!1320, !"ext_6046c8_printf"}

!1321 = !{!1322}

!1322 = distinct !{!1322, !1320, !"ext_6046c8_printf: argument 1"}

!1323 = !{!1324}

!1324 = distinct !{!1324, !1325, !"ext_6046c8_printf: argument 0"}

!1325 = distinct !{!1325, !"ext_6046c8_printf"}

!1326 = !{!1327}

!1327 = distinct !{!1327, !1325, !"ext_6046c8_printf: argument 1"}

!1328 = !{!1329}

!1329 = distinct !{!1329, !1330, !"ext_6046c8_printf: argument 0"}

!1330 = distinct !{!1330, !"ext_6046c8_printf"}

!1331 = !{!1332}

!1332 = distinct !{!1332, !1330, !"ext_6046c8_printf: argument 1"}

!1333 = !{!1334}

!1334 = distinct !{!1334, !1335, !"ext_6046b8_puts: argument 0"}

!1335 = distinct !{!1335, !"ext_6046b8_puts"}

!1336 = !{!1337}

!1337 = distinct !{!1337, !1335, !"ext_6046b8_puts: argument 1"}

!1338 = !{!1339}

!1339 = distinct !{!1339, !1340, !"ext_6046b8_puts: argument 0"}

!1340 = distinct !{!1340, !"ext_6046b8_puts"}

!1341 = !{!1342}

!1342 = distinct !{!1342, !1340, !"ext_6046b8_puts: argument 1"}

!1343 = !{!1344}

!1344 = distinct !{!1344, !1345, !"ext_6046b8_puts: argument 0"}

!1345 = distinct !{!1345, !"ext_6046b8_puts"}

!1346 = !{!1347}

!1347 = distinct !{!1347, !1345, !"ext_6046b8_puts: argument 1"}

!1348 = !{!1349}

!1349 = distinct !{!1349, !1350, !"ext_6046b8_puts: argument 0"}

!1350 = distinct !{!1350, !"ext_6046b8_puts"}

!1351 = !{!1352}

!1352 = distinct !{!1352, !1350, !"ext_6046b8_puts: argument 1"}

!1353 = !{!1354}

!1354 = distinct !{!1354, !1355, !"ext_6046b8_puts: argument 0"}

!1355 = distinct !{!1355, !"ext_6046b8_puts"}

!1356 = !{!1357}

!1357 = distinct !{!1357, !1355, !"ext_6046b8_puts: argument 1"}

!1358 = !{!1359}

!1359 = distinct !{!1359, !1360, !"ext_6046b8_puts: argument 0"}

!1360 = distinct !{!1360, !"ext_6046b8_puts"}

!1361 = !{!1362}

!1362 = distinct !{!1362, !1360, !"ext_6046b8_puts: argument 1"}

!1363 = !{!1364}

!1364 = distinct !{!1364, !1365, !"ext_6046c8_printf: argument 0"}

!1365 = distinct !{!1365, !"ext_6046c8_printf"}

!1366 = !{!1367}

!1367 = distinct !{!1367, !1365, !"ext_6046c8_printf: argument 1"}

!1368 = !{!1369}

!1369 = distinct !{!1369, !1370, !"ext_6046c8_printf: argument 0"}

!1370 = distinct !{!1370, !"ext_6046c8_printf"}

!1371 = !{!1372}

!1372 = distinct !{!1372, !1370, !"ext_6046c8_printf: argument 1"}

!1373 = !{!1374}

!1374 = distinct !{!1374, !1375, !"ext_6046c8_printf: argument 0"}

!1375 = distinct !{!1375, !"ext_6046c8_printf"}

!1376 = !{!1377}

!1377 = distinct !{!1377, !1375, !"ext_6046c8_printf: argument 1"}

!1378 = !{!1379}

!1379 = distinct !{!1379, !1380, !"ext_6046c8_printf: argument 0"}

!1380 = distinct !{!1380, !"ext_6046c8_printf"}

!1381 = !{!1382}

!1382 = distinct !{!1382, !1380, !"ext_6046c8_printf: argument 1"}

!1383 = !{!1384}

!1384 = distinct !{!1384, !1385, !"ext_6046c8_printf: argument 0"}

!1385 = distinct !{!1385, !"ext_6046c8_printf"}

!1386 = !{!1387}

!1387 = distinct !{!1387, !1385, !"ext_6046c8_printf: argument 1"}

!1388 = !{!1389}

!1389 = distinct !{!1389, !1390, !"ext_6046c8_printf: argument 0"}

!1390 = distinct !{!1390, !"ext_6046c8_printf"}

!1391 = !{!1392}

!1392 = distinct !{!1392, !1390, !"ext_6046c8_printf: argument 1"}

!1393 = !{!1394}

!1394 = distinct !{!1394, !1395, !"ext_400640_malloc: argument 0"}

!1395 = distinct !{!1395, !"ext_400640_malloc"}

!1396 = !{!1397}

!1397 = distinct !{!1397, !1398, !"ext_400640_malloc: argument 0"}

!1398 = distinct !{!1398, !"ext_400640_malloc"}

!1399 = !{!1400}

!1400 = distinct !{!1400, !1401, !"ext_400640_malloc: argument 0"}

!1401 = distinct !{!1401, !"ext_400640_malloc"}

!1402 = !{!1403}

!1403 = distinct !{!1403, !1404, !"ext_400640_malloc: argument 0"}

!1404 = distinct !{!1404, !"ext_400640_malloc"}

!1405 = !{!1257, !1257, i64 0}

!1406 = !{!1407, !1407, i64 0}

!1407 = !{!"float", !1242, i64 0}

!1408 = !{!1242, !1242, i64 0}

!1409 = !{!1410}

!1410 = distinct !{!1410, !1411, !"ext_6046c8_printf: argument 0"}

!1411 = distinct !{!1411, !"ext_6046c8_printf"}

!1412 = !{!1413}

!1413 = distinct !{!1413, !1411, !"ext_6046c8_printf: argument 1"}

!1414 = !{!1415}

!1415 = distinct !{!1415, !1416, !"ext_400650_fflush: argument 0"}

!1416 = distinct !{!1416, !"ext_400650_fflush"}

!1417 = !{!1418}

!1418 = distinct !{!1418, !1416, !"ext_400650_fflush: argument 1"}

!1419 = !{!1420}

!1420 = distinct !{!1420, !1421, !"ext_400640_malloc: argument 0"}

!1421 = distinct !{!1421, !"ext_400640_malloc"}

!1422 = !{!1423}

!1423 = distinct !{!1423, !1421, !"ext_400640_malloc: argument 1"}

!1424 = !{!1425}

!1425 = distinct !{!1425, !1426, !"ext_400640_malloc: argument 0"}

!1426 = distinct !{!1426, !"ext_400640_malloc"}

!1427 = !{!1428}

!1428 = distinct !{!1428, !1426, !"ext_400640_malloc: argument 1"}

!1429 = !{!1430}

!1430 = distinct !{!1430, !1431, !"ext_400640_malloc: argument 0"}

!1431 = distinct !{!1431, !"ext_400640_malloc"}

!1432 = !{!1433}

!1433 = distinct !{!1433, !1431, !"ext_400640_malloc: argument 1"}

!1434 = !{!1435}

!1435 = distinct !{!1435, !1436, !"ext_400640_malloc: argument 0"}

!1436 = distinct !{!1436, !"ext_400640_malloc"}

!1437 = !{!1438}

!1438 = distinct !{!1438, !1436, !"ext_400640_malloc: argument 1"}

!1439 = !{!1440}

!1440 = distinct !{!1440, !1441, !"ext_400660_fopen: argument 0"}

!1441 = distinct !{!1441, !"ext_400660_fopen"}

!1442 = !{!1443}

!1443 = distinct !{!1443, !1441, !"ext_400660_fopen: argument 1"}

!1444 = !{!1445}

!1445 = distinct !{!1445, !1446, !"ext_6046b8_puts: argument 0"}

!1446 = distinct !{!1446, !"ext_6046b8_puts"}

!1447 = !{!1448}

!1448 = distinct !{!1448, !1446, !"ext_6046b8_puts: argument 1"}

!1449 = !{!1450}

!1450 = distinct !{!1450, !1451, !"ext_6046c8_printf: argument 0"}

!1451 = distinct !{!1451, !"ext_6046c8_printf"}

!1452 = !{!1453}

!1453 = distinct !{!1453, !1451, !"ext_6046c8_printf: argument 1"}

!1454 = !{!1455}

!1455 = distinct !{!1455, !1456, !"ext_6046c8_printf: argument 0"}

!1456 = distinct !{!1456, !"ext_6046c8_printf"}

!1457 = !{!1458}

!1458 = distinct !{!1458, !1456, !"ext_6046c8_printf: argument 1"}

!1459 = !{!1460}

!1460 = distinct !{!1460, !1461, !"ext_6046b0_free: argument 0"}

!1461 = distinct !{!1461, !"ext_6046b0_free"}

!1462 = !{!1463}

!1463 = distinct !{!1463, !1461, !"ext_6046b0_free: argument 1"}

!1464 = !{!1465}

!1465 = distinct !{!1465, !1466, !"ext_6046b0_free: argument 0"}

!1466 = distinct !{!1466, !"ext_6046b0_free"}

!1467 = !{!1468}

!1468 = distinct !{!1468, !1466, !"ext_6046b0_free: argument 1"}

!1469 = !{!1470}

!1470 = distinct !{!1470, !1471, !"ext_6046b0_free: argument 0"}

!1471 = distinct !{!1471, !"ext_6046b0_free"}

!1472 = !{!1473}

!1473 = distinct !{!1473, !1471, !"ext_6046b0_free: argument 1"}

!1474 = !{!1475}

!1475 = distinct !{!1475, !1476, !"ext_6046b0_free: argument 0"}

!1476 = distinct !{!1476, !"ext_6046b0_free"}

!1477 = !{!1478}

!1478 = distinct !{!1478, !1476, !"ext_6046b0_free: argument 1"}

!1479 = !{!1480}

!1480 = distinct !{!1480, !1481, !"ext_6046c8_printf: argument 0"}

!1481 = distinct !{!1481, !"ext_6046c8_printf"}

!1482 = !{!1483}

!1483 = distinct !{!1483, !1481, !"ext_6046c8_printf: argument 1"}

!1484 = !{!1485}

!1485 = distinct !{!1485, !1486, !"ext_6046b8_puts: argument 0"}

!1486 = distinct !{!1486, !"ext_6046b8_puts"}

!1487 = !{!1488}

!1488 = distinct !{!1488, !1486, !"ext_6046b8_puts: argument 1"}

!1489 = !{!1490}

!1490 = distinct !{!1490, !1491, !"ext_6046c8_printf: argument 0"}

!1491 = distinct !{!1491, !"ext_6046c8_printf"}

!1492 = !{!1493}

!1493 = distinct !{!1493, !1491, !"ext_6046c8_printf: argument 1"}

!1494 = !{!1495}

!1495 = distinct !{!1495, !1496, !"ext_6046c8_printf: argument 0"}

!1496 = distinct !{!1496, !"ext_6046c8_printf"}

!1497 = !{!1498}

!1498 = distinct !{!1498, !1496, !"ext_6046c8_printf: argument 1"}

!1499 = !{!1500}

!1500 = distinct !{!1500, !1501, !"ext_6046c8_printf: argument 0"}

!1501 = distinct !{!1501, !"ext_6046c8_printf"}

!1502 = !{!1503}

!1503 = distinct !{!1503, !1501, !"ext_6046c8_printf: argument 1"}

!1504 = !{!1505}

!1505 = distinct !{!1505, !1506, !"ext_6046c8_printf: argument 0"}

!1506 = distinct !{!1506, !"ext_6046c8_printf"}

!1507 = !{!1508}

!1508 = distinct !{!1508, !1506, !"ext_6046c8_printf: argument 1"}

!1509 = !{!1510}

!1510 = distinct !{!1510, !1511, !"ext_6046c8_printf: argument 0"}

!1511 = distinct !{!1511, !"ext_6046c8_printf"}

!1512 = !{!1513}

!1513 = distinct !{!1513, !1511, !"ext_6046c8_printf: argument 1"}

!1514 = !{!1515}

!1515 = distinct !{!1515, !1516, !"ext_400650_fflush: argument 0"}

!1516 = distinct !{!1516, !"ext_400650_fflush"}

!1517 = !{!1518}

!1518 = distinct !{!1518, !1516, !"ext_400650_fflush: argument 1"}

!1519 = !{!1520}

!1520 = distinct !{!1520, !1521, !"ext_6046c0_fclose: argument 0"}

!1521 = distinct !{!1521, !"ext_6046c0_fclose"}

!1522 = !{!1523}

!1523 = distinct !{!1523, !1521, !"ext_6046c0_fclose: argument 1"}

!1524 = !{!1525}

!1525 = distinct !{!1525, !1526, !"ext_6046c8_printf: argument 0"}

!1526 = distinct !{!1526, !"ext_6046c8_printf"}

!1527 = !{!1528}

!1528 = distinct !{!1528, !1526, !"ext_6046c8_printf: argument 1"}

!1529 = !{!1530}

!1530 = distinct !{!1530, !1531, !"ext_400650_fflush: argument 0"}

!1531 = distinct !{!1531, !"ext_400650_fflush"}

!1532 = !{!1533}

!1533 = distinct !{!1533, !1531, !"ext_400650_fflush: argument 1"}

!1534 = !{!1535}

!1535 = distinct !{!1535, !1536, !"ext_6046b0_free: argument 0"}

!1536 = distinct !{!1536, !"ext_6046b0_free"}

!1537 = !{!1538}

!1538 = distinct !{!1538, !1539, !"ext_6046b0_free: argument 0"}

!1539 = distinct !{!1539, !"ext_6046b0_free"}

!1540 = !{!1541}

!1541 = distinct !{!1541, !1542, !"ext_6046b0_free: argument 0"}

!1542 = distinct !{!1542, !"ext_6046b0_free"}

!1543 = !{!1544}

!1544 = distinct !{!1544, !1545, !"ext_6046b0_free: argument 0"}

!1545 = distinct !{!1545, !"ext_6046b0_free"}

!1546 = !{!1547}

!1547 = distinct !{!1547, !1545, !"ext_6046b0_free: argument 1"}

!1548 = !{!1549}

!1549 = distinct !{!1549, !1550, !"ext_400630_memset: argument 0"}

!1550 = distinct !{!1550, !"ext_400630_memset"}

!1551 = !{!1552}

!1552 = distinct !{!1552, !1550, !"ext_400630_memset: argument 1"}

!1553 = !{!1554}

!1554 = distinct !{!1554, !1555, !"ext_6046c8_printf: argument 0"}

!1555 = distinct !{!1555, !"ext_6046c8_printf"}

!1556 = !{!1557}

!1557 = distinct !{!1557, !1555, !"ext_6046c8_printf: argument 1"}

!1558 = !{!1559}

!1559 = distinct !{!1559, !1560, !"ext_6046c8_printf: argument 0"}

!1560 = distinct !{!1560, !"ext_6046c8_printf"}

!1561 = !{!1562}

!1562 = distinct !{!1562, !1560, !"ext_6046c8_printf: argument 1"}

!1563 = !{!1564}

!1564 = distinct !{!1564, !1565, !"ext_6046c8_printf: argument 0"}

!1565 = distinct !{!1565, !"ext_6046c8_printf"}

!1566 = !{!1567}

!1567 = distinct !{!1567, !1565, !"ext_6046c8_printf: argument 1"}

!1568 = !{!1569}

!1569 = distinct !{!1569, !1570, !"ext_6046c8_printf: argument 0"}

!1570 = distinct !{!1570, !"ext_6046c8_printf"}

!1571 = !{!1572}

!1572 = distinct !{!1572, !1570, !"ext_6046c8_printf: argument 1"}

!1573 = !{!1574}

!1574 = distinct !{!1574, !1575, !"ext_6046c8_printf: argument 0"}

!1575 = distinct !{!1575, !"ext_6046c8_printf"}

!1576 = !{!1577}

!1577 = distinct !{!1577, !1575, !"ext_6046c8_printf: argument 1"}

!1578 = !{!1579}

!1579 = distinct !{!1579, !1580, !"ext_400630_memset: argument 0"}

!1580 = distinct !{!1580, !"ext_400630_memset"}

!1581 = !{!1582}

!1582 = distinct !{!1582, !1580, !"ext_400630_memset: argument 1"}
