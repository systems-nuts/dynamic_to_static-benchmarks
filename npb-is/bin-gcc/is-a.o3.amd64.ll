; ModuleID = 'is-a.o3.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_401fd0__rodata_type = type <{ [4 x i8], [27 x i8], [46 x i8], [38 x i8], [44 x i8], [37 x i8], [39 x i8], [39 x i8], [25 x i8], [37 x i8], [37 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [24 x i8], [48 x i8], [80 x i8], [48 x i8], [48 x i8], [32 x i8], [80 x i8], [48 x i8], [136 x i8], [46 x i8], [56 x i8], [11 x i8], [2 x i8], [25 x i8], [19 x i8], [12 x i8], [25 x i8], [3 x i8], [12 x i8], [6 x i8], [12 x i8], [4 x i8], [6 x i8], [4 x i8], [12 x i8], [29 x i8], [25 x i8], [35 x i8], [35 x i8], [35 x i8], [5 x i8], [21 x i8], [64 x i8], [40 x i8] }>

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

@seg_401fd0__rodata = internal constant %seg_401fd0__rodata_type <{ [4 x i8] c"\01\00\02\00", [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", [46 x i8] c" Class           =                        %c\0A\00", [38 x i8] c" Size            =             %12ld\0A\00", [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", [37 x i8] c" Iterations      =             %12d\0A\00", [39 x i8] c" Time in seconds =             %12.2f\0A\00", [39 x i8] c" Mop/s total     =             %12.2f\0A\00", [25 x i8] c" Operation type  = %24s\0A\00", [37 x i8] c" Version         =             %12s\0A\00", [37 x i8] c" Compile date    =             %12s\0A\00", [23 x i8] c"    CC           = %s\0A\00", [23 x i8] c"    CLINK        = %s\0A\00", [23 x i8] c"    C_LIB        = %s\0A\00", [23 x i8] c"    C_INC        = %s\0A\00", [23 x i8] c"    CFLAGS       = %s\0A\00", [24 x i8] c"    CLINKFLAGS   = %s\0A\00\00", [48 x i8] c" Verification    =             UNSUCCESSFUL\00\00\00\00\00", [80 x i8] c"\0A Compile options:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A--------------------------------------\00\00\00\00\00\00\00\00\00", [48 x i8] c" Please send all errors/feedbacks to:\00\00\00\00\00\00\00\00\00\00\00", [48 x i8] c" Center for Manycore Programming\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c" cmp@aces.snu.ac.kr\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c" http://aces.snu.ac.kr\00\00\00\00\00\00\00\00\00\00--------------------------------------\00\00\00\00\00\00\00\00\00\00", [48 x i8] c" Verification    =               SUCCESSFUL\00\00\00\00\00", [136 x i8] c" Verification    =            NOT PERFORMED\00\00\00\00\00\00\00\00\00\00\00\80>\00\00\00\00\00\00`A\00\00\00\00\00\00\10=\00\00\00\00\00\00\D0B\00\00\00\00\00\00\00A\00\00\00\A1\B0\B9\B2A\00\00@\E5\9C0\D2A\00\00\00\00\00\00\94A\00\00\00\00\80\84.A\00\00\00\00\00\00\F0?\00\00\00\00\00\00Y@", [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", [11 x i8] c"timer.flag\00", [2 x i8] c"r\00", [25 x i8] c" Size:  %ld  (class %c)\0A\00", [19 x i8] c" Iterations:   %d\0A\00", [12 x i8] c"        %d\0A\00", [25 x i8] c"passed verfications: %d\0A\00", [3 x i8] c"IS\00", [12 x i8] c"keys ranked\00", [6 x i8] c"3.3.1\00", [12 x i8] c"03 Nov 2017\00", [4 x i8] c"gcc\00", [6 x i8] c"$(CC)\00", [4 x i8] c"-lm\00", [12 x i8] c"-I../common\00", [29 x i8] c"-g -Wall -O3 -mcmodel=medium\00", [25 x i8] c" Total execution: %8.3f\0A\00", [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", [5 x i8] c"shit\00", [21 x i8] c"\0A   iteration\00\00\00\00\00\00\00\00", [64 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\00\00\00\00\00\00\00\00\00", [40 x i8] c"\0AAdditional timers -\00\00\00\00\00\00\00\00\00\00\00\00\8D\ED\B5\A0\F7\C6\B0>" }>

@seg_602e10__init_array = internal global %seg_602e10__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400720___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c" .`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64)* @SSSSSputs to i64), i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSmemset to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSfflush to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64) }>
@passed_verification = global %passed_verification_type <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_index_array = local_unnamed_addr global %S_test_index_array_type <{ [32 x i8] c"+\BD\00\00\FCB\00\00K\5C\00\00T\F4\00\00O\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_rank_array = local_unnamed_addr global %S_test_rank_array_type <{ [32 x i8] c"\00\00\00\00\12\00\00\00Z\01\00\00\95\FD\00\00\B7\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_index_array = local_unnamed_addr global %W_test_index_array_type <{ [32 x i8] c"\8Du\05\00oC\0E\00\CB\5C\0D\00\B7\B7\0D\00\19,\06\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_rank_array = local_unnamed_addr global %W_test_rank_array_type <{ [32 x i8] c"\E1\04\00\00\B2-\00\00s\DE\0F\00\B8\ED\0F\00\D2\FD\0F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_index_array = global %A_test_index_array_type <{ [32 x i8] c"y; \00\19\1A\0A\00klQ\00\D1\957\00\88\DC@\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_rank_array = global %A_test_rank_array_type <{ [32 x i8] c"h\00\00\00sD\00\00\18\E4\01\00\A4z~\00\A8\FE\7F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

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

@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]



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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401fc4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401fc4:

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

  store i64 ptrtoint (i64 ()* @callback_sub_401fc0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401f50___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401f50___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401fc0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1263

  store i64 %50, i64* %4, align 8, !alias.scope !1263, !noalias !1266

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline

define %struct.Memory* @sub_401f00_wtime_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_401f00:

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

  br i1 %33, label %block_401f28, label %block_401f20



block_401f20:                                     ; preds = %block_401f00

  store i32 %34, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  br label %block_401f28



block_401f28:                                     ; preds = %block_401f20, %block_401f00

  %35 = phi i32 [ %28, %block_401f00 ], [ %34, %block_401f20 ]

  %36 = phi %struct.Memory* [ %2, %block_401f00 ], [ %2, %block_401f20 ]

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

  %46 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1568) to double*)

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

  store i8 %64, i8* %19, align 1, !tbaa !1259

  %65 = icmp eq i64 %51, 0

  %66 = zext i1 %65 to i8

  store i8 %66, i8* %20, align 1, !tbaa !1260

  %67 = lshr i64 %51, 63

  %68 = trunc i64 %67 to i8

  store i8 %68, i8* %21, align 1, !tbaa !1261

  %69 = lshr i64 %16, 63

  %70 = xor i64 %67, %69

  %71 = add nuw nsw i64 %70, %67

  %72 = icmp eq i64 %71, 2

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %22, align 1, !tbaa !1262

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

  %29 = add i64 %26, 33554432

  %30 = add i64 %27, -4

  %31 = add i64 %26, 33554436

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

  store i8 %49, i8* %33, align 1, !tbaa !1259

  %50 = zext i1 %38 to i8

  store i8 %50, i8* %73, align 1, !tbaa !1260

  %51 = lshr i32 %36, 31

  %52 = trunc i32 %51 to i8

  store i8 %52, i8* %34, align 1, !tbaa !1261

  %53 = lshr i32 %35, 31

  %54 = xor i32 %51, %53

  %55 = add nuw nsw i32 %54, %51

  %56 = icmp eq i32 %55, 2

  %57 = zext i1 %56 to i8

  store i8 %57, i8* %74, align 1, !tbaa !1262

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

  store i32 %77, i32* %78, align 1, !tbaa !1273

  %79 = getelementptr inbounds i8, i8* %75, i64 4

  %80 = bitcast i8* %79 to i32*

  store i32 0, i32* %80, align 1, !tbaa !1273

  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %82 = bitcast i64* %81 to i32*

  store i32 0, i32* %82, align 1, !tbaa !1273

  %83 = getelementptr inbounds i8, i8* %75, i64 12

  %84 = bitcast i8* %83 to i32*

  store i32 0, i32* %84, align 1, !tbaa !1273

  %85 = bitcast %union.VectorReg* %70 to i8*

  %86 = bitcast [32 x %union.VectorReg]* %69 to i128*

  %87 = load i128, i128* %86, align 1

  %88 = trunc i128 %87 to i32

  %89 = lshr i128 %87, 32

  %90 = trunc i128 %89 to i32

  %91 = lshr i128 %87, 64

  %92 = trunc i128 %91 to i32

  %93 = bitcast %union.VectorReg* %70 to i32*

  store i32 %88, i32* %93, align 1, !tbaa !1273

  %94 = getelementptr inbounds i8, i8* %85, i64 4

  %95 = bitcast i8* %94 to i32*

  store i32 %90, i32* %95, align 1, !tbaa !1273

  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %97 = bitcast i64* %96 to i32*

  store i32 %92, i32* %97, align 1, !tbaa !1273

  %98 = getelementptr inbounds i8, i8* %85, i64 12

  %99 = bitcast i8* %98 to i32*

  store i32 %88, i32* %99, align 1, !tbaa !1273

  %100 = bitcast [32 x %union.VectorReg]* %69 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %100, align 1, !tbaa !1240

  store i64 -8388592, i64* %18, align 8, !tbaa !1240

  %101 = bitcast %union.VectorReg* %24 to i8*

  %102 = bitcast %union.VectorReg* %24 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %102, align 1, !tbaa !1240

  %103 = add i64 %1, 182

  %104 = bitcast %union.VectorReg* %71 to i8*

  %105 = add i64 %27, 33554372

  %106 = bitcast %union.VectorReg* %71 to float*

  %107 = getelementptr inbounds i8, i8* %104, i64 4

  %108 = bitcast i8* %107 to float*

  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %110 = bitcast i64* %109 to float*

  %111 = getelementptr inbounds i8, i8* %104, i64 12

  %112 = bitcast i8* %111 to float*

  %113 = bitcast %union.VectorReg* %25 to i8*

  %114 = add i64 %27, 33554388

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

  %157 = add i64 %156, 33554404

  %158 = add i64 %156, 33554420

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

  store float %189, float* %106, align 1, !tbaa !1274

  store float %192, float* %108, align 1, !tbaa !1274

  store float %195, float* %110, align 1, !tbaa !1274

  store float %198, float* %112, align 1, !tbaa !1274

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

  store float %201, float* %159, align 1, !tbaa !1274

  store float %204, float* %160, align 1, !tbaa !1274

  store float %207, float* %161, align 1, !tbaa !1274

  store float %210, float* %162, align 1, !tbaa !1274

  %211 = load i64, i64* %133, align 1

  %212 = load i64, i64* %118, align 1

  %213 = load i64, i64* %123, align 1

  %214 = lshr i64 %212, 32

  %215 = trunc i64 %214 to i32

  %216 = trunc i64 %211 to i32

  %217 = trunc i64 %213 to i32

  store i32 %215, i32* %163, align 1, !tbaa !1273

  store i32 %216, i32* %164, align 1, !tbaa !1273

  store i32 %217, i32* %165, align 1, !tbaa !1273

  store i32 %217, i32* %166, align 1, !tbaa !1273

  %218 = load i64, i64* %133, align 1

  %219 = load i64, i64* %118, align 1

  %220 = load i64, i64* %109, align 1

  %221 = trunc i64 %218 to i32

  %222 = trunc i64 %219 to i32

  %223 = lshr i64 %213, 32

  %224 = trunc i64 %223 to i32

  %225 = trunc i64 %220 to i32

  store i32 %221, i32* %163, align 1, !tbaa !1273

  store i32 %222, i32* %164, align 1, !tbaa !1273

  store i32 %224, i32* %165, align 1, !tbaa !1273

  store i32 %225, i32* %166, align 1, !tbaa !1273

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

  store i32 %249, i32* %163, align 1, !tbaa !1273

  store i32 %250, i32* %164, align 1, !tbaa !1273

  %251 = trunc i64 %247 to i32

  store i32 %251, i32* %165, align 1, !tbaa !1273

  %252 = lshr i64 %247, 32

  %253 = trunc i64 %252 to i32

  store i32 %253, i32* %166, align 1, !tbaa !1273

  %254 = load i64, i64* %122, align 1

  %255 = trunc i64 %254 to i32

  store i32 %244, i32* %134, align 1, !tbaa !1273

  store i32 %217, i32* %135, align 1, !tbaa !1273

  store i32 %255, i32* %136, align 1, !tbaa !1273

  store i32 %255, i32* %137, align 1, !tbaa !1273

  %256 = load i64, i64* %123, align 1

  %257 = load i64, i64* %109, align 1

  %258 = load i64, i64* %96, align 1

  %259 = trunc i64 %256 to i32

  %260 = trunc i64 %257 to i32

  %261 = lshr i64 %254, 32

  %262 = trunc i64 %261 to i32

  %263 = trunc i64 %258 to i32

  store i32 %259, i32* %134, align 1, !tbaa !1273

  store i32 %260, i32* %135, align 1, !tbaa !1273

  store i32 %262, i32* %136, align 1, !tbaa !1273

  store i32 %263, i32* %137, align 1, !tbaa !1273

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

  store i32 %287, i32* %134, align 1, !tbaa !1273

  store i32 %288, i32* %135, align 1, !tbaa !1273

  %289 = trunc i64 %285 to i32

  store i32 %289, i32* %136, align 1, !tbaa !1273

  %290 = lshr i64 %285, 32

  %291 = trunc i64 %290 to i32

  store i32 %291, i32* %137, align 1, !tbaa !1273

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

  store i32 %304, i32* %78, align 1, !tbaa !1273

  store i32 %305, i32* %80, align 1, !tbaa !1273

  %306 = trunc i64 %300 to i32

  store i32 %306, i32* %82, align 1, !tbaa !1273

  %307 = trunc i64 %303 to i32

  store i32 %307, i32* %84, align 1, !tbaa !1273

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

  store i32 %320, i32* %150, align 1, !tbaa !1273

  store i32 %321, i32* %152, align 1, !tbaa !1273

  %322 = trunc i64 %316 to i32

  store i32 %322, i32* %153, align 1, !tbaa !1273

  %323 = trunc i64 %319 to i32

  store i32 %323, i32* %155, align 1, !tbaa !1273

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

  store i32 %339, i32* %150, align 1, !tbaa !1273

  store i32 %340, i32* %152, align 1, !tbaa !1273

  %341 = trunc i64 %335 to i32

  store i32 %341, i32* %153, align 1, !tbaa !1273

  %342 = trunc i64 %338 to i32

  store i32 %342, i32* %155, align 1, !tbaa !1273

  %343 = bitcast %union.VectorReg* %24 to i128*

  %344 = load i128, i128* %343, align 1

  %345 = lshr i128 %344, 64

  %346 = trunc i128 %345 to i32

  %347 = lshr i128 %344, 96

  %348 = trunc i128 %347 to i32

  %349 = trunc i128 %344 to i32

  %350 = lshr i128 %344, 32

  %351 = trunc i128 %350 to i32

  store i32 %346, i32* %78, align 1, !tbaa !1273

  store i32 %348, i32* %80, align 1, !tbaa !1273

  store i32 %349, i32* %82, align 1, !tbaa !1273

  store i32 %351, i32* %84, align 1, !tbaa !1273

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

  store i32 %364, i32* %78, align 1, !tbaa !1273

  store i32 %365, i32* %80, align 1, !tbaa !1273

  %366 = trunc i64 %360 to i32

  store i32 %366, i32* %82, align 1, !tbaa !1273

  %367 = trunc i64 %363 to i32

  store i32 %367, i32* %84, align 1, !tbaa !1273

  %368 = bitcast %union.VectorReg* %25 to i128*

  %369 = load i128, i128* %368, align 1

  %370 = lshr i128 %369, 96

  %371 = trunc i128 %370 to i32

  %372 = lshr i128 %369, 32

  %373 = trunc i128 %372 to i32

  store i32 %371, i32* %150, align 1, !tbaa !1273

  store i32 %373, i32* %152, align 1, !tbaa !1273

  %374 = load i64, i64* %148, align 1

  %375 = trunc i64 %374 to i32

  %376 = load i128, i128* %86, align 1

  %377 = lshr i128 %376, 32

  %378 = trunc i128 %377 to i32

  %379 = lshr i128 %376, 64

  %380 = trunc i128 %379 to i32

  %381 = lshr i128 %376, 96

  %382 = trunc i128 %381 to i32

  store i32 %378, i32* %150, align 1, !tbaa !1273

  store i32 %378, i32* %152, align 1, !tbaa !1273

  store i32 %380, i32* %153, align 1, !tbaa !1273

  store i32 %382, i32* %155, align 1, !tbaa !1273

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

  store i32 %395, i32* %150, align 1, !tbaa !1273

  store i32 %396, i32* %152, align 1, !tbaa !1273

  %397 = trunc i64 %391 to i32

  store i32 %397, i32* %153, align 1, !tbaa !1273

  %398 = trunc i64 %394 to i32

  store i32 %398, i32* %155, align 1, !tbaa !1273

  %399 = load i64, i64* %148, align 1

  %400 = load i64, i64* %22, align 8

  %401 = add i64 %400, 33554404

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = zext i32 %403 to i64

  store i64 %404, i64* %19, align 8, !tbaa !1240

  %405 = add i64 %400, 33554408

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

  store i8 %422, i8* %67, align 1, !tbaa !1276

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

  store i8 %441, i8* %63, align 1, !tbaa !1276

  %442 = load i64, i64* %17, align 8

  %443 = load i32, i32* %16, align 4

  %444 = trunc i64 %442 to i32

  %445 = add i32 %443, %444

  %446 = zext i32 %445 to i64

  store i64 %446, i64* %17, align 8, !tbaa !1240

  %447 = load i64, i64* %22, align 8

  %448 = add i64 %447, 33554412

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

  store i8 %466, i8* %65, align 1, !tbaa !1276

  %467 = load i64, i64* %19, align 8

  %468 = load i32, i32* %13, align 4

  %469 = trunc i64 %467 to i32

  %470 = add i32 %468, %469

  %471 = zext i32 %470 to i64

  store i64 %471, i64* %19, align 8, !tbaa !1240

  %472 = load i64, i64* %22, align 8

  %473 = add i64 %472, 33554416

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

  store i8 %491, i8* %66, align 1, !tbaa !1276

  %492 = load i64, i64* %20, align 8

  %493 = load i32, i32* %15, align 4

  %494 = trunc i64 %492 to i32

  %495 = add i32 %493, %494

  %496 = zext i32 %495 to i64

  store i64 %496, i64* %20, align 8, !tbaa !1240

  %497 = load i64, i64* %22, align 8

  %498 = add i64 %497, 33554420

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

  store i8 %516, i8* %65, align 1, !tbaa !1276

  %517 = load i64, i64* %19, align 8

  %518 = load i32, i32* %68, align 4

  %519 = trunc i64 %517 to i32

  %520 = add i32 %518, %519

  %521 = zext i32 %520 to i64

  store i64 %521, i64* %19, align 8, !tbaa !1240

  %522 = load i64, i64* %22, align 8

  %523 = add i64 %522, 33554424

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

  store i8 %541, i8* %66, align 1, !tbaa !1276

  %542 = load i64, i64* %20, align 8

  %543 = load i32, i32* %15, align 4

  %544 = trunc i64 %542 to i32

  %545 = add i32 %543, %544

  %546 = zext i32 %545 to i64

  store i64 %546, i64* %20, align 8, !tbaa !1240

  store i64 0, i64* %18, align 8, !tbaa !1240

  %547 = load i32, i32* %13, align 4

  %548 = load i64, i64* %22, align 8

  %549 = add i64 %548, 33554428

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

  store i8 %565, i8* %64, align 1, !tbaa !1276

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

  %575 = phi i64 [ %326, %block_4011e0 ], [ -8388592, %block_4011b6 ]

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

  store float %580, float* %106, align 1, !tbaa !1274

  store float %583, float* %108, align 1, !tbaa !1274

  store float %586, float* %110, align 1, !tbaa !1274

  store float %589, float* %112, align 1, !tbaa !1274

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

  store float %592, float* %115, align 1, !tbaa !1274

  store float %595, float* %117, align 1, !tbaa !1274

  store float %598, float* %119, align 1, !tbaa !1274

  store float %601, float* %121, align 1, !tbaa !1274

  %602 = load i64, i64* %122, align 1

  %603 = load i64, i64* %123, align 1

  %604 = lshr i64 %574, 32

  %605 = trunc i64 %604 to i32

  %606 = trunc i64 %602 to i32

  %607 = trunc i64 %603 to i32

  store i32 %605, i32* %93, align 1, !tbaa !1273

  store i32 %606, i32* %95, align 1, !tbaa !1273

  store i32 %607, i32* %97, align 1, !tbaa !1273

  store i32 %607, i32* %99, align 1, !tbaa !1273

  %608 = load i64, i64* %122, align 1

  %609 = load i64, i64* %96, align 1

  %610 = load i64, i64* %109, align 1

  %611 = trunc i64 %608 to i32

  %612 = trunc i64 %609 to i32

  %613 = lshr i64 %603, 32

  %614 = trunc i64 %613 to i32

  %615 = trunc i64 %610 to i32

  store i32 %611, i32* %93, align 1, !tbaa !1273

  store i32 %612, i32* %95, align 1, !tbaa !1273

  store i32 %614, i32* %97, align 1, !tbaa !1273

  store i32 %615, i32* %99, align 1, !tbaa !1273

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

  store i32 %639, i32* %93, align 1, !tbaa !1273

  store i32 %640, i32* %95, align 1, !tbaa !1273

  %641 = trunc i64 %637 to i32

  store i32 %641, i32* %97, align 1, !tbaa !1273

  %642 = lshr i64 %637, 32

  %643 = trunc i64 %642 to i32

  store i32 %643, i32* %99, align 1, !tbaa !1273

  %644 = load i64, i64* %133, align 1

  %645 = trunc i64 %644 to i32

  store i32 %634, i32* %134, align 1, !tbaa !1273

  store i32 %607, i32* %135, align 1, !tbaa !1273

  store i32 %645, i32* %136, align 1, !tbaa !1273

  store i32 %645, i32* %137, align 1, !tbaa !1273

  %646 = load i64, i64* %123, align 1

  %647 = load i64, i64* %109, align 1

  %648 = load i64, i64* %118, align 1

  %649 = trunc i64 %646 to i32

  %650 = trunc i64 %647 to i32

  %651 = lshr i64 %644, 32

  %652 = trunc i64 %651 to i32

  %653 = trunc i64 %648 to i32

  store i32 %649, i32* %134, align 1, !tbaa !1273

  store i32 %650, i32* %135, align 1, !tbaa !1273

  store i32 %652, i32* %136, align 1, !tbaa !1273

  store i32 %653, i32* %137, align 1, !tbaa !1273

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

  store i32 %666, i32* %78, align 1, !tbaa !1273

  store i32 %667, i32* %80, align 1, !tbaa !1273

  %668 = trunc i64 %662 to i32

  store i32 %668, i32* %82, align 1, !tbaa !1273

  %669 = trunc i64 %665 to i32

  store i32 %669, i32* %84, align 1, !tbaa !1273

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

  store i32 %693, i32* %134, align 1, !tbaa !1273

  store i32 %694, i32* %135, align 1, !tbaa !1273

  %695 = trunc i64 %691 to i32

  store i32 %695, i32* %136, align 1, !tbaa !1273

  %696 = lshr i64 %691, 32

  %697 = trunc i64 %696 to i32

  store i32 %697, i32* %137, align 1, !tbaa !1273

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

  store i32 %710, i32* %150, align 1, !tbaa !1273

  store i32 %711, i32* %152, align 1, !tbaa !1273

  %712 = trunc i64 %706 to i32

  store i32 %712, i32* %153, align 1, !tbaa !1273

  %713 = trunc i64 %709 to i32

  store i32 %713, i32* %155, align 1, !tbaa !1273

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

  store i8 1, i8* %73, align 1, !tbaa !1260

  store i8 0, i8* %34, align 1, !tbaa !1261

  store i8 0, i8* %74, align 1, !tbaa !1262

  store i8 0, i8* %33, align 1, !tbaa !1259

  %723 = add i64 %573, 15

  %724 = add i64 %720, -16

  %725 = inttoptr i64 %724 to i64*

  store i64 %723, i64* %725

  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %728 = load i64, i64* %727, align 8, !alias.scope !1277, !noalias !1280

  %729 = load i64, i64* %23, align 8, !alias.scope !1277, !noalias !1280

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

  store i64 %721, i64* %719, align 8, !alias.scope !1277, !noalias !1280

  %758 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1032), i64 4294967295), i64 %570, i64 %728, i64 %570, i64 %548, i64 %729, i64 %731, i64 %733, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757), !noalias !1277

  %759 = load i64, i64* @stdout

  store i64 %759, i64* %21, align 8, !tbaa !1240

  %760 = load i64, i64* %719, align 8, !tbaa !1240

  %761 = add i64 %760, 8

  %762 = inttoptr i64 %761 to i64*

  %763 = load i64, i64* %762

  store i64 %763, i64* %7, align 8, !alias.scope !1282, !noalias !1285

  %764 = add i64 %760, 16

  store i64 %764, i64* %719, align 8, !alias.scope !1282, !noalias !1285

  %765 = tail call i64 @fflush(i64 %759), !noalias !1282

  store i64 %765, i64* %726, align 8, !alias.scope !1282, !noalias !1285

  ret %struct.Memory* %767



block_401180:                                     ; preds = %block_401180, %block_401160

  %766 = phi i64 [ -8388608, %block_401160 ], [ %798, %block_401180 ]

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

  %26 = add i64 %1, 5376

  %27 = add i64 %1, 17

  %28 = add i64 %14, -32

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  store i64 %28, i64* %11, align 8, !tbaa !1240

  %30 = tail call %struct.Memory* @sub_401f00_wtime_(%struct.State* nonnull %0, i64 %26, %struct.Memory* %2)

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

  store i8 %62, i8* %19, align 1, !tbaa !1259

  %63 = icmp eq i64 %49, 0

  %64 = zext i1 %63 to i8

  store i8 %64, i8* %20, align 1, !tbaa !1260

  %65 = lshr i64 %49, 63

  %66 = trunc i64 %65 to i8

  store i8 %66, i8* %21, align 1, !tbaa !1261

  %67 = lshr i64 %31, 63

  %68 = xor i64 %65, %67

  %69 = add nuw nsw i64 %68, %65

  %70 = icmp eq i64 %69, 2

  %71 = zext i1 %70 to i8

  store i8 %71, i8* %22, align 1, !tbaa !1262

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

define %struct.Memory* @sub_401f50___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401f50:

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

  %47 = add i64 %1, -6552

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

  br i1 %54, label %block_401fa6, label %block_401f86



block_401fa6.loopexit:                            ; preds = %block_401f90

  br label %block_401fa6



block_401fa6:                                     ; preds = %block_401fa6.loopexit, %block_401f50

  %57 = phi %struct.Memory* [ %51, %block_401f50 ], [ %119, %block_401fa6.loopexit ]

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



block_401f86:                                     ; preds = %block_401f50

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1260

  store i8 0, i8* %45, align 1, !tbaa !1261

  store i8 0, i8* %46, align 1, !tbaa !1262

  store i8 0, i8* %43, align 1, !tbaa !1259

  %102 = add i64 %56, 10

  br label %block_401f90



block_401f90:                                     ; preds = %block_401f90, %block_401f86

  %103 = phi i64 [ 0, %block_401f86 ], [ %122, %block_401f90 ]

  %104 = phi i64 [ %102, %block_401f86 ], [ %150, %block_401f90 ]

  %105 = phi %struct.Memory* [ %51, %block_401f86 ], [ %119, %block_401f90 ]

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

  br i1 %139, label %block_401fa6.loopexit, label %block_401f90

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

  %137 = load i64, i64* %133, align 8, !alias.scope !1287, !noalias !1290

  %138 = load i64, i64* %135, align 8, !alias.scope !1287, !noalias !1290

  %139 = load i64, i64* %136, align 8, !alias.scope !1287, !noalias !1290

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

  store i64 %170, i64* %3, align 8, !alias.scope !1287, !noalias !1290

  store i64 %95, i64* %26, align 8, !alias.scope !1287, !noalias !1290

  %171 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 4), i64 4294967295), i64 %127, i64 %137, i64 %127, i64 %138, i64 %139, i64 %141, i64 %144, i64 %147, i64 %150, i64 %153, i64 %156, i64 %159, i64 %162, i64 %165, i64 %168)

  %172 = load i64, i64* %3, align 8

  %173 = load i32, i32* %21, align 4

  %174 = zext i32 %173 to i64

  %175 = add i64 %172, 15

  %176 = load i64, i64* %26, align 8, !tbaa !1240

  %177 = add i64 %176, -8

  %178 = inttoptr i64 %177 to i64*

  store i64 %175, i64* %178

  %179 = load i64, i64* %133, align 8, !alias.scope !1292, !noalias !1295

  %180 = load i64, i64* %132, align 8, !alias.scope !1292, !noalias !1295

  %181 = load i64, i64* %135, align 8, !alias.scope !1292, !noalias !1295

  %182 = load i64, i64* %136, align 8, !alias.scope !1292, !noalias !1295

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

  store i64 %213, i64* %3, align 8, !alias.scope !1292, !noalias !1295

  store i64 %176, i64* %26, align 8, !alias.scope !1292, !noalias !1295

  %214 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 31), i64 4294967295), i64 %174, i64 %179, i64 %180, i64 %181, i64 %182, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199, i64 %202, i64 %205, i64 %208, i64 %211), !noalias !1292

  %215 = load i32, i32* %13, align 4

  %216 = load i64, i64* %3, align 8

  %217 = icmp eq i32 %215, 0

  %218 = select i1 %217, i64 25, i64 4

  %219 = add i64 %216, %218

  br i1 %217, label %block_40083a, label %block_400825



block_4008dc:                                     ; preds = %block_4008c9, %block_4008d0, %block_4008d7

  %220 = phi i64 [ and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 848), i64 4294967295), %block_4008c9 ], [ and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 896), i64 4294967295), %block_4008d0 ], [ and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 512), i64 4294967295), %block_4008d7 ]

  %221 = phi i64 [ %916, %block_4008c9 ], [ %660, %block_4008d0 ], [ %919, %block_4008d7 ]

  %222 = add i64 %221, 5

  %223 = add i64 %856, -8

  %224 = inttoptr i64 %223 to i64*

  store i64 %222, i64* %224

  %225 = inttoptr i64 %223 to i64*

  %226 = load i64, i64* %225

  store i64 %226, i64* %3, align 8, !alias.scope !1297, !noalias !1300

  store i64 %856, i64* %26, align 8, !alias.scope !1297, !noalias !1300

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

  %236 = load i64, i64* %133, align 8, !alias.scope !1302, !noalias !1305

  %237 = load i64, i64* %132, align 8, !alias.scope !1302, !noalias !1305

  %238 = load i64, i64* %135, align 8, !alias.scope !1302, !noalias !1305

  %239 = load i64, i64* %136, align 8, !alias.scope !1302, !noalias !1305

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

  store i64 %270, i64* %3, align 8, !alias.scope !1302, !noalias !1305

  store i64 %228, i64* %26, align 8, !alias.scope !1302, !noalias !1305

  %271 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 299), i64 4294967295), i64 %232, i64 %236, i64 %237, i64 %238, i64 %239, i64 %241, i64 %244, i64 %247, i64 %250, i64 %253, i64 %256, i64 %259, i64 %262, i64 %265, i64 %268)

  %272 = load i64, i64* %3, align 8

  %273 = load i64, i64* %22, align 8

  %274 = add i64 %272, 15

  %275 = load i64, i64* %26, align 8, !tbaa !1240

  %276 = add i64 %275, -8

  %277 = inttoptr i64 %276 to i64*

  store i64 %274, i64* %277

  %278 = load i64, i64* %133, align 8, !alias.scope !1307, !noalias !1310

  %279 = load i64, i64* %132, align 8, !alias.scope !1307, !noalias !1310

  %280 = load i64, i64* %135, align 8, !alias.scope !1307, !noalias !1310

  %281 = load i64, i64* %136, align 8, !alias.scope !1307, !noalias !1310

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

  store i64 %312, i64* %3, align 8, !alias.scope !1307, !noalias !1310

  store i64 %275, i64* %26, align 8, !alias.scope !1307, !noalias !1310

  %313 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 336), i64 4294967295), i64 %273, i64 %278, i64 %279, i64 %280, i64 %281, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304, i64 %307, i64 %310), !noalias !1307

  %314 = load i64, i64* %3, align 8

  %315 = add i64 %314, 10

  %316 = load i64, i64* %26, align 8, !tbaa !1240

  %317 = add i64 %316, -8

  %318 = inttoptr i64 %317 to i64*

  store i64 %315, i64* %318

  %319 = inttoptr i64 %317 to i64*

  %320 = load i64, i64* %319

  store i64 %320, i64* %3, align 8, !alias.scope !1312, !noalias !1315

  store i64 %316, i64* %26, align 8, !alias.scope !1312, !noalias !1315

  %321 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 560), i64 4294967295))

  %322 = load i64, i64* %3, align 8

  %323 = load i64, i64* %27, align 8

  %324 = add i64 %322, 15

  %325 = load i64, i64* %26, align 8, !tbaa !1240

  %326 = add i64 %325, -8

  %327 = inttoptr i64 %326 to i64*

  store i64 %324, i64* %327

  %328 = load i64, i64* %133, align 8, !alias.scope !1317, !noalias !1320

  %329 = load i64, i64* %132, align 8, !alias.scope !1317, !noalias !1320

  %330 = load i64, i64* %135, align 8, !alias.scope !1317, !noalias !1320

  %331 = load i64, i64* %136, align 8, !alias.scope !1317, !noalias !1320

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

  store i64 %362, i64* %3, align 8, !alias.scope !1317, !noalias !1320

  store i64 %325, i64* %26, align 8, !alias.scope !1317, !noalias !1320

  %363 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 373), i64 4294967295), i64 %323, i64 %328, i64 %329, i64 %330, i64 %331, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357, i64 %360)

  %364 = load i64, i64* %3, align 8

  %365 = load i64, i64* %30, align 8

  %366 = add i64 %364, 15

  %367 = load i64, i64* %26, align 8, !tbaa !1240

  %368 = add i64 %367, -8

  %369 = inttoptr i64 %368 to i64*

  store i64 %366, i64* %369

  %370 = load i64, i64* %133, align 8, !alias.scope !1322, !noalias !1325

  %371 = load i64, i64* %132, align 8, !alias.scope !1322, !noalias !1325

  %372 = load i64, i64* %135, align 8, !alias.scope !1322, !noalias !1325

  %373 = load i64, i64* %136, align 8, !alias.scope !1322, !noalias !1325

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

  store i64 %404, i64* %3, align 8, !alias.scope !1322, !noalias !1325

  store i64 %367, i64* %26, align 8, !alias.scope !1322, !noalias !1325

  %405 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 396), i64 4294967295), i64 %365, i64 %370, i64 %371, i64 %372, i64 %373, i64 %375, i64 %378, i64 %381, i64 %384, i64 %387, i64 %390, i64 %393, i64 %396, i64 %399, i64 %402)

  %406 = load i64, i64* %3, align 8

  %407 = load i64, i64* %31, align 8

  %408 = add i64 %406, 15

  %409 = load i64, i64* %26, align 8, !tbaa !1240

  %410 = add i64 %409, -8

  %411 = inttoptr i64 %410 to i64*

  store i64 %408, i64* %411

  %412 = load i64, i64* %133, align 8, !alias.scope !1327, !noalias !1330

  %413 = load i64, i64* %132, align 8, !alias.scope !1327, !noalias !1330

  %414 = load i64, i64* %135, align 8, !alias.scope !1327, !noalias !1330

  %415 = load i64, i64* %136, align 8, !alias.scope !1327, !noalias !1330

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

  store i64 %446, i64* %3, align 8, !alias.scope !1327, !noalias !1330

  store i64 %409, i64* %26, align 8, !alias.scope !1327, !noalias !1330

  %447 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 419), i64 4294967295), i64 %407, i64 %412, i64 %413, i64 %414, i64 %415, i64 %417, i64 %420, i64 %423, i64 %426, i64 %429, i64 %432, i64 %435, i64 %438, i64 %441, i64 %444)

  %448 = load i64, i64* %3, align 8

  %449 = load i64, i64* %26, align 8

  %450 = add i64 %449, 80

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %448, 17

  %454 = add i64 %449, -8

  %455 = inttoptr i64 %454 to i64*

  store i64 %453, i64* %455

  %456 = load i64, i64* %133, align 8, !alias.scope !1332, !noalias !1335

  %457 = load i64, i64* %132, align 8, !alias.scope !1332, !noalias !1335

  %458 = load i64, i64* %135, align 8, !alias.scope !1332, !noalias !1335

  %459 = load i64, i64* %136, align 8, !alias.scope !1332, !noalias !1335

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

  store i64 %490, i64* %3, align 8, !alias.scope !1332, !noalias !1335

  store i64 %449, i64* %26, align 8, !alias.scope !1332, !noalias !1335

  %491 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 442), i64 4294967295), i64 %452, i64 %456, i64 %457, i64 %458, i64 %459, i64 %461, i64 %464, i64 %467, i64 %470, i64 %473, i64 %476, i64 %479, i64 %482, i64 %485, i64 %488)

  %492 = load i64, i64* %3, align 8

  %493 = load i64, i64* %29, align 8

  %494 = add i64 %492, 15

  %495 = load i64, i64* %26, align 8, !tbaa !1240

  %496 = add i64 %495, -8

  %497 = inttoptr i64 %496 to i64*

  store i64 %494, i64* %497

  %498 = load i64, i64* %133, align 8, !alias.scope !1337, !noalias !1340

  %499 = load i64, i64* %132, align 8, !alias.scope !1337, !noalias !1340

  %500 = load i64, i64* %135, align 8, !alias.scope !1337, !noalias !1340

  %501 = load i64, i64* %136, align 8, !alias.scope !1337, !noalias !1340

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

  store i64 %532, i64* %3, align 8, !alias.scope !1337, !noalias !1340

  store i64 %495, i64* %26, align 8, !alias.scope !1337, !noalias !1340

  %533 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 465), i64 4294967295), i64 %493, i64 %498, i64 %499, i64 %500, i64 %501, i64 %503, i64 %506, i64 %509, i64 %512, i64 %515, i64 %518, i64 %521, i64 %524, i64 %527, i64 %530)

  %534 = load i64, i64* %3, align 8

  %535 = load i64, i64* %28, align 8

  store i64 %535, i64* %24, align 8, !tbaa !1240

  %536 = add i64 %534, 15

  %537 = load i64, i64* %26, align 8, !tbaa !1240

  %538 = add i64 %537, -8

  %539 = inttoptr i64 %538 to i64*

  store i64 %536, i64* %539

  %540 = load i64, i64* %133, align 8, !alias.scope !1342, !noalias !1345

  %541 = load i64, i64* %132, align 8, !alias.scope !1342, !noalias !1345

  %542 = load i64, i64* %135, align 8, !alias.scope !1342, !noalias !1345

  %543 = load i64, i64* %136, align 8, !alias.scope !1342, !noalias !1345

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

  store i64 %574, i64* %3, align 8, !alias.scope !1342, !noalias !1345

  store i64 %537, i64* %26, align 8, !alias.scope !1342, !noalias !1345

  %575 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 488), i64 4294967295), i64 %535, i64 %540, i64 %541, i64 %542, i64 %543, i64 %545, i64 %548, i64 %551, i64 %554, i64 %557, i64 %560, i64 %563, i64 %566, i64 %569, i64 %572), !noalias !1342

  %576 = load i64, i64* %3, align 8

  %577 = add i64 %576, 10

  %578 = load i64, i64* %26, align 8, !tbaa !1240

  %579 = add i64 %578, -8

  %580 = inttoptr i64 %579 to i64*

  store i64 %577, i64* %580

  %581 = inttoptr i64 %579 to i64*

  %582 = load i64, i64* %581

  store i64 %582, i64* %3, align 8, !alias.scope !1347, !noalias !1350

  store i64 %578, i64* %26, align 8, !alias.scope !1347, !noalias !1350

  %583 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 592), i64 4294967295)), !noalias !1347

  %584 = load i64, i64* %3, align 8

  %585 = add i64 %584, 10

  %586 = load i64, i64* %26, align 8, !tbaa !1240

  %587 = add i64 %586, -8

  %588 = inttoptr i64 %587 to i64*

  store i64 %585, i64* %588

  %589 = inttoptr i64 %587 to i64*

  %590 = load i64, i64* %589

  store i64 %590, i64* %3, align 8, !alias.scope !1352, !noalias !1355

  store i64 %586, i64* %26, align 8, !alias.scope !1352, !noalias !1355

  %591 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 640), i64 4294967295)), !noalias !1352

  %592 = load i64, i64* %3, align 8

  %593 = add i64 %592, 10

  %594 = load i64, i64* %26, align 8, !tbaa !1240

  %595 = add i64 %594, -8

  %596 = inttoptr i64 %595 to i64*

  store i64 %593, i64* %596

  %597 = inttoptr i64 %595 to i64*

  %598 = load i64, i64* %597

  store i64 %598, i64* %3, align 8, !alias.scope !1357, !noalias !1360

  store i64 %594, i64* %26, align 8, !alias.scope !1357, !noalias !1360

  %599 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 688), i64 4294967295)), !noalias !1357

  %600 = load i64, i64* %3, align 8

  %601 = add i64 %600, 10

  %602 = load i64, i64* %26, align 8, !tbaa !1240

  %603 = add i64 %602, -8

  %604 = inttoptr i64 %603 to i64*

  store i64 %601, i64* %604

  %605 = inttoptr i64 %603 to i64*

  %606 = load i64, i64* %605

  store i64 %606, i64* %3, align 8, !alias.scope !1362, !noalias !1365

  store i64 %602, i64* %26, align 8, !alias.scope !1362, !noalias !1365

  %607 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 736), i64 4294967295)), !noalias !1362

  %608 = load i64, i64* %3, align 8

  %609 = add i64 %608, 10

  %610 = load i64, i64* %26, align 8, !tbaa !1240

  %611 = add i64 %610, -8

  %612 = inttoptr i64 %611 to i64*

  store i64 %609, i64* %612

  store i64 %610, i64* %26, align 8, !alias.scope !1367, !noalias !1370

  %613 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 768), i64 4294967295)), !noalias !1367

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 800), i64 4294967295), i64* %25, align 8, !tbaa !1240

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

  store i8 %628, i8* %56, align 1, !tbaa !1259

  %629 = icmp eq i64 %615, 0

  %630 = zext i1 %629 to i8

  store i8 %630, i8* %57, align 1, !tbaa !1260

  %631 = lshr i64 %615, 63

  %632 = trunc i64 %631 to i8

  store i8 %632, i8* %58, align 1, !tbaa !1261

  %633 = lshr i64 %614, 63

  %634 = xor i64 %631, %633

  %635 = add nuw nsw i64 %634, %631

  %636 = icmp eq i64 %635, 2

  %637 = zext i1 %636 to i8

  store i8 %637, i8* %59, align 1, !tbaa !1262

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

  store i64 %657, i64* %3, align 8, !alias.scope !1372, !noalias !1375

  %658 = add i64 %614, 144

  store i64 %658, i64* %26, align 8, !alias.scope !1372, !noalias !1375

  %659 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 800), i64 4294967295)), !noalias !1372

  store i64 %659, i64* %131, align 8, !alias.scope !1372, !noalias !1375

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

  %685 = load i64, i64* %133, align 8, !alias.scope !1377, !noalias !1380

  %686 = load i64, i64* %135, align 8, !alias.scope !1377, !noalias !1380

  %687 = load i64, i64* %136, align 8, !alias.scope !1377, !noalias !1380

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

  store i64 %718, i64* %3, align 8, !alias.scope !1377, !noalias !1380

  store i64 %663, i64* %26, align 8, !alias.scope !1377, !noalias !1380

  %719 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 159), i64 4294967295), i64 %681, i64 %685, i64 %669, i64 %686, i64 %687, i64 %689, i64 %692, i64 %695, i64 %698, i64 %701, i64 %704, i64 %707, i64 %710, i64 %713, i64 %716), !noalias !1377

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

  %730 = load i64, i64* %134, align 8, !alias.scope !1382, !noalias !1385

  %731 = load i64, i64* %133, align 8, !alias.scope !1382, !noalias !1385

  %732 = load i64, i64* %132, align 8, !alias.scope !1382, !noalias !1385

  %733 = load i64, i64* %135, align 8, !alias.scope !1382, !noalias !1385

  %734 = load i64, i64* %136, align 8, !alias.scope !1382, !noalias !1385

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

  store i64 %765, i64* %3, align 8, !alias.scope !1382, !noalias !1385

  store i64 %721, i64* %26, align 8, !alias.scope !1382, !noalias !1385

  %766 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 196), i64 4294967295), i64 %730, i64 %731, i64 %732, i64 %733, i64 %734, i64 %736, i64 %739, i64 %742, i64 %745, i64 %748, i64 %751, i64 %754, i64 %757, i64 %760, i64 %763), !noalias !1382

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

  %775 = load i64, i64* %134, align 8, !alias.scope !1387, !noalias !1390

  %776 = load i64, i64* %133, align 8, !alias.scope !1387, !noalias !1390

  %777 = load i64, i64* %132, align 8, !alias.scope !1387, !noalias !1390

  %778 = load i64, i64* %135, align 8, !alias.scope !1387, !noalias !1390

  %779 = load i64, i64* %136, align 8, !alias.scope !1387, !noalias !1390

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

  store i64 %810, i64* %3, align 8, !alias.scope !1387, !noalias !1390

  store i64 %768, i64* %26, align 8, !alias.scope !1387, !noalias !1390

  %811 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 235), i64 4294967295), i64 %775, i64 %776, i64 %777, i64 %778, i64 %779, i64 %781, i64 %784, i64 %787, i64 %790, i64 %793, i64 %796, i64 %799, i64 %802, i64 %805, i64 %808)

  %812 = load i64, i64* %3, align 8

  %813 = load i64, i64* %26, align 8

  %814 = add i64 %813, 56

  %815 = inttoptr i64 %814 to i64*

  %816 = load i64, i64* %815

  %817 = add i64 %812, 17

  %818 = add i64 %813, -8

  %819 = inttoptr i64 %818 to i64*

  store i64 %817, i64* %819

  %820 = load i64, i64* %133, align 8, !alias.scope !1392, !noalias !1395

  %821 = load i64, i64* %132, align 8, !alias.scope !1392, !noalias !1395

  %822 = load i64, i64* %135, align 8, !alias.scope !1392, !noalias !1395

  %823 = load i64, i64* %136, align 8, !alias.scope !1392, !noalias !1395

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

  store i64 %854, i64* %3, align 8, !alias.scope !1392, !noalias !1395

  store i64 %813, i64* %26, align 8, !alias.scope !1392, !noalias !1395

  %855 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 274), i64 4294967295), i64 %816, i64 %820, i64 %821, i64 %822, i64 %823, i64 %825, i64 %828, i64 %831, i64 %834, i64 %837, i64 %840, i64 %843, i64 %846, i64 %849, i64 %852), !noalias !1392

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

  %880 = load i64, i64* %133, align 8, !alias.scope !1397, !noalias !1400

  %881 = load i64, i64* %135, align 8, !alias.scope !1397, !noalias !1400

  %882 = load i64, i64* %136, align 8, !alias.scope !1397, !noalias !1400

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

  store i64 %913, i64* %3, align 8, !alias.scope !1397, !noalias !1400

  store i64 %877, i64* %26, align 8, !alias.scope !1397, !noalias !1400

  %914 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 77), i64 4294967295), i64 %875, i64 %880, i64 %873, i64 %881, i64 %882, i64 %884, i64 %887, i64 %890, i64 %893, i64 %896, i64 %899, i64 %902, i64 %905, i64 %908, i64 %911), !noalias !1397

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

  %930 = load i64, i64* %135, align 8, !alias.scope !1402, !noalias !1405

  %931 = load i64, i64* %136, align 8, !alias.scope !1402, !noalias !1405

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

  store i64 %962, i64* %3, align 8, !alias.scope !1402, !noalias !1405

  store i64 %927, i64* %26, align 8, !alias.scope !1402, !noalias !1405

  %963 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 115), i64 4294967295), i64 %922, i64 %924, i64 %925, i64 %930, i64 %931, i64 %933, i64 %936, i64 %939, i64 %942, i64 %945, i64 %948, i64 %951, i64 %954, i64 %957, i64 %960), !noalias !1402

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

  %16 = tail call i64 @malloc(i64 33554432), !noalias !1407

  store i64 %16, i64* bitcast (%key_array_type* @key_array to i64*)

  %17 = add i64 %15, 17

  %18 = add i64 %8, -16

  %19 = inttoptr i64 %18 to i64*

  store i64 %17, i64* %19

  %20 = inttoptr i64 %18 to i64*

  %21 = load i64, i64* %20

  %22 = tail call i64 @malloc(i64 2097152), !noalias !1410

  store i64 %22, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %23 = add i64 %21, 17

  %24 = add i64 %8, -16

  %25 = inttoptr i64 %24 to i64*

  store i64 %23, i64* %25

  %26 = inttoptr i64 %24 to i64*

  %27 = load i64, i64* %26

  %28 = tail call i64 @malloc(i64 33554432), !noalias !1413

  store i64 %28, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 20, i64* %5, align 8, !tbaa !1240

  %29 = add i64 %27, 17

  %30 = add i64 %8, -16

  %31 = inttoptr i64 %30 to i64*

  store i64 %29, i64* %31

  %32 = tail call i64 @malloc(i64 20), !noalias !1416

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

  store i8 %22, i8* %11, align 1, !tbaa !1260

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1261

  store i8 0, i8* %13, align 1, !tbaa !1262

  store i8 0, i8* %10, align 1, !tbaa !1259

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

  store i8 %29, i8* %30, align 1, !tbaa !1259

  %31 = icmp eq i8 %17, 0

  %32 = zext i1 %31 to i8

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %32, i8* %33, align 1, !tbaa !1260

  %34 = lshr i8 %17, 7

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %34, i8* %35, align 1, !tbaa !1261

  %36 = lshr i8 %16, 7

  %37 = xor i8 %34, %36

  %38 = add nuw nsw i8 %37, %36

  %39 = icmp eq i8 %38, 2

  %40 = zext i1 %39 to i8

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %40, i8* %41, align 1, !tbaa !1262

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

  store i32 0, i32* %83, align 1, !tbaa !1273

  %84 = getelementptr inbounds i8, i8* %75, i64 12

  %85 = bitcast i8* %84 to i32*

  store i32 0, i32* %85, align 1, !tbaa !1273

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

  store i32 0, i32* %102, align 1, !tbaa !1273

  %103 = getelementptr inbounds i8, i8* %88, i64 12

  %104 = bitcast i8* %103 to i32*

  store i32 0, i32* %104, align 1, !tbaa !1273

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

  store i32 0, i32* %126, align 1, !tbaa !1273

  %127 = getelementptr inbounds i8, i8* %65, i64 4

  %128 = bitcast i8* %127 to i32*

  store i32 0, i32* %128, align 1, !tbaa !1273

  %129 = bitcast i64* %43 to i32*

  store i32 0, i32* %129, align 1, !tbaa !1273

  %130 = getelementptr inbounds i8, i8* %65, i64 12

  %131 = bitcast i8* %130 to i32*

  store i32 0, i32* %131, align 1, !tbaa !1273

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

  %145 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 944) to double*)

  %146 = bitcast %union.VectorReg* %11 to double*

  store double %145, double* %146, align 1, !tbaa !1271

  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %148 = bitcast i64* %147 to double*

  store double 0.000000e+00, double* %148, align 1, !tbaa !1271

  %149 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 952) to double*)

  %150 = bitcast %union.VectorReg* %9 to double*

  store double %149, double* %150, align 1, !tbaa !1271

  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %152 = bitcast i64* %151 to double*

  store double 0.000000e+00, double* %152, align 1, !tbaa !1271

  %153 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 960) to double*)

  %154 = bitcast %union.VectorReg* %8 to double*

  store double %153, double* %154, align 1, !tbaa !1271

  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %156 = bitcast i64* %155 to double*

  store double 0.000000e+00, double* %156, align 1, !tbaa !1271

  %157 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 968) to double*)

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

  %66 = tail call i64 @malloc(i64 33554432)

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

  %74 = tail call i64 @malloc(i64 2097152)

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

  %82 = tail call i64 @malloc(i64 33554432)

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

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1145), i64 4294967295), i64* %33, align 8, !tbaa !1240

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

  %99 = tail call i64 @fopen(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1134), i64 4294967295), i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1145), i64 4294967295))

  %100 = load i64, i64* %11, align 8

  %101 = icmp eq i64 %99, 0

  %102 = select i1 %101, i64 65, i64 5

  %103 = add i64 %100, %102

  br i1 %101, label %block_4017ec, label %block_4017b0



block_4019ef:                                     ; preds = %block_4018a0

  store i64 2, i64* %34, align 8, !tbaa !1240

  %104 = add i64 %1320, -4127

  %105 = add i64 %1320, 10

  %106 = add i64 %1313, -8

  %107 = inttoptr i64 %106 to i64*

  store i64 %105, i64* %107

  store i64 %106, i64* %35, align 8, !tbaa !1240

  %108 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %104, %struct.Memory* %1312)

  %109 = load i64, i64* %11, align 8

  %110 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %111 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %111, i64* %29, align 8, !tbaa !1240

  %112 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %113 = add i64 %110, 33554432

  %114 = add i64 %111, -4

  %115 = add i64 %110, 33554436

  br label %block_401a20



block_401dfe:                                     ; preds = %block_401d85

  %116 = bitcast i64* %2768 to double*

  store i64 3, i64* %34, align 8, !tbaa !1240

  %117 = add i64 %2814, -5054

  %118 = add i64 %2814, 10

  %119 = add i64 %2801, 72

  %120 = inttoptr i64 %119 to i64*

  store i64 %118, i64* %120

  store i64 %119, i64* %35, align 8, !tbaa !1240

  %121 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %117, %struct.Memory* %2800)

  %122 = load i64, i64* %35, align 8

  %123 = load i64, i64* %11, align 8

  %124 = load double, double* %795, align 1

  %125 = load double, double* %2772, align 1

  %126 = inttoptr i64 %122 to double*

  store double %124, double* %126

  %127 = add i64 %122, 8

  %128 = inttoptr i64 %127 to double*

  store double %125, double* %128

  %129 = add i64 %123, 15

  %130 = add i64 %122, -8

  %131 = inttoptr i64 %130 to i64*

  store i64 %129, i64* %131

  %132 = inttoptr i64 %130 to i64*

  %133 = load i64, i64* %132

  store i64 %133, i64* %11, align 8, !alias.scope !1444, !noalias !1447

  store i64 %122, i64* %35, align 8, !alias.scope !1444, !noalias !1447

  %134 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1536), i64 4294967295)), !noalias !1444

  %135 = load i64, i64* %11, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1316), i64 4294967295), i64* %34, align 8, !tbaa !1240

  %136 = load i64, i64* %35, align 8

  %137 = inttoptr i64 %136 to float*

  %138 = load float, float* %137

  %139 = add i64 %136, 4

  %140 = inttoptr i64 %139 to float*

  %141 = load float, float* %140

  %142 = add i64 %136, 8

  %143 = inttoptr i64 %142 to float*

  %144 = load float, float* %143

  %145 = add i64 %136, 12

  %146 = inttoptr i64 %145 to float*

  %147 = load float, float* %146

  store float %138, float* %489, align 1, !tbaa !1274

  store float %141, float* %491, align 1, !tbaa !1274

  store float %144, float* %493, align 1, !tbaa !1274

  store float %147, float* %495, align 1, !tbaa !1274

  %148 = add i64 %135, 16

  %149 = add i64 %136, -8

  %150 = inttoptr i64 %149 to i64*

  store i64 %148, i64* %150

  %151 = load i64, i64* %96, align 8, !alias.scope !1449, !noalias !1452

  %152 = load i64, i64* %528, align 8, !alias.scope !1449, !noalias !1452

  %153 = load i64, i64* %527, align 8, !alias.scope !1449, !noalias !1452

  %154 = load i64, i64* %529, align 8, !alias.scope !1449, !noalias !1452

  %155 = load i64, i64* %530, align 8, !alias.scope !1449, !noalias !1452

  %156 = inttoptr i64 %136 to i64*

  %157 = load i64, i64* %156

  %158 = add i64 %136, 8

  %159 = inttoptr i64 %158 to i64*

  %160 = load i64, i64* %159

  %161 = add i64 %136, 16

  %162 = inttoptr i64 %161 to i64*

  %163 = load i64, i64* %162

  %164 = add i64 %136, 24

  %165 = inttoptr i64 %164 to i64*

  %166 = load i64, i64* %165

  %167 = add i64 %136, 32

  %168 = inttoptr i64 %167 to i64*

  %169 = load i64, i64* %168

  %170 = add i64 %136, 40

  %171 = inttoptr i64 %170 to i64*

  %172 = load i64, i64* %171

  %173 = add i64 %136, 48

  %174 = inttoptr i64 %173 to i64*

  %175 = load i64, i64* %174

  %176 = add i64 %136, 56

  %177 = inttoptr i64 %176 to i64*

  %178 = load i64, i64* %177

  %179 = add i64 %136, 64

  %180 = inttoptr i64 %179 to i64*

  %181 = load i64, i64* %180

  %182 = add i64 %136, 72

  %183 = inttoptr i64 %182 to i64*

  %184 = load i64, i64* %183

  %185 = inttoptr i64 %149 to i64*

  %186 = load i64, i64* %185

  store i64 %186, i64* %11, align 8, !alias.scope !1449, !noalias !1452

  store i64 %136, i64* %35, align 8, !alias.scope !1449, !noalias !1452

  %187 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1316), i64 4294967295), i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %157, i64 %160, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175, i64 %178, i64 %181, i64 %184), !noalias !1449

  store i64 %187, i64* %63, align 8, !alias.scope !1449, !noalias !1452

  %188 = load i64, i64* %11, align 8

  %189 = add i64 %188, 4

  store i64 %189, i64* %11, align 8

  %190 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %121, i32 257) #14

  %191 = load i64, i64* %35, align 8

  %192 = load i64, i64* %11, align 8

  %193 = inttoptr i64 %191 to double*

  %194 = load double, double* %193

  %195 = add i64 %191, 8

  %196 = inttoptr i64 %195 to double*

  %197 = load double, double* %196

  %198 = bitcast %union.VectorReg* %40 to double*

  store double %194, double* %198, align 1, !tbaa !1271

  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %200 = bitcast i64* %199 to double*

  store double %197, double* %200, align 1, !tbaa !1271

  %201 = load double, double* %2767, align 1

  %202 = fcmp oeq double %201, %194

  %203 = sext i1 %202 to i64

  %204 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %203, i64* %204, align 1, !tbaa !1240

  store i64 0, i64* %2768, align 1, !tbaa !1240

  %205 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1016) to double*)

  store double %205, double* %795, align 1, !tbaa !1271

  store double 0.000000e+00, double* %2772, align 1, !tbaa !1271

  %206 = add i64 %192, 22

  store i64 %206, i64* %11, align 8

  %207 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %190, i32 257) #14

  %208 = load i64, i64* %11, align 8

  %209 = add i64 %208, 4

  store i64 %209, i64* %11, align 8

  %210 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %207, i32 257) #14

  %211 = load i64, i64* %11, align 8

  %212 = add i64 %211, 4

  store i64 %212, i64* %11, align 8

  %213 = tail call %struct.Memory* @__remill_sync_hyper_call(%struct.State* nonnull dereferenceable(3376) %0, %struct.Memory* %210, i32 257) #14

  %214 = load i64, i64* %35, align 8

  %215 = load i64, i64* %11, align 8

  %216 = load double, double* %2767, align 1

  %217 = load double, double* %116, align 1

  %218 = inttoptr i64 %214 to double*

  store double %216, double* %218

  %219 = add i64 %214, 8

  %220 = inttoptr i64 %219 to double*

  store double %217, double* %220

  store i64 1, i64* %34, align 8, !tbaa !1240

  %221 = add i64 %215, -5129

  %222 = add i64 %215, 15

  %223 = add i64 %214, -8

  %224 = inttoptr i64 %223 to i64*

  store i64 %222, i64* %224

  store i64 %223, i64* %35, align 8, !tbaa !1240

  %225 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %221, %struct.Memory* %213)

  %226 = load i64, i64* %11, align 8

  %227 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  %228 = load <2 x i64>, <2 x i64>* %227, align 1

  %229 = load i64, i64* %35, align 8

  %230 = bitcast <2 x i64> %228 to <2 x double>

  %231 = extractelement <2 x double> %230, i32 0

  %232 = extractelement <2 x i64> %228, i32 1

  %233 = inttoptr i64 %229 to double*

  %234 = load double, double* %233

  %235 = fdiv double %231, %234

  %236 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1024) to double*)

  %237 = fmul double %235, %236

  store double %237, double* %2767, align 1, !tbaa !1271

  store i64 %232, i64* %2768, align 1, !tbaa !1271

  %238 = add i64 %226, 29

  %239 = add i64 %229, -8

  %240 = inttoptr i64 %239 to i64*

  store i64 %238, i64* %240

  %241 = load i64, i64* %96, align 8, !alias.scope !1454, !noalias !1457

  %242 = load i64, i64* %528, align 8, !alias.scope !1454, !noalias !1457

  %243 = load i64, i64* %527, align 8, !alias.scope !1454, !noalias !1457

  %244 = load i64, i64* %529, align 8, !alias.scope !1454, !noalias !1457

  %245 = load i64, i64* %530, align 8, !alias.scope !1454, !noalias !1457

  %246 = inttoptr i64 %229 to i64*

  %247 = load i64, i64* %246

  %248 = add i64 %229, 8

  %249 = inttoptr i64 %248 to i64*

  %250 = load i64, i64* %249

  %251 = add i64 %229, 16

  %252 = inttoptr i64 %251 to i64*

  %253 = load i64, i64* %252

  %254 = add i64 %229, 24

  %255 = inttoptr i64 %254 to i64*

  %256 = load i64, i64* %255

  %257 = add i64 %229, 32

  %258 = inttoptr i64 %257 to i64*

  %259 = load i64, i64* %258

  %260 = add i64 %229, 40

  %261 = inttoptr i64 %260 to i64*

  %262 = load i64, i64* %261

  %263 = add i64 %229, 48

  %264 = inttoptr i64 %263 to i64*

  %265 = load i64, i64* %264

  %266 = add i64 %229, 56

  %267 = inttoptr i64 %266 to i64*

  %268 = load i64, i64* %267

  %269 = add i64 %229, 64

  %270 = inttoptr i64 %269 to i64*

  %271 = load i64, i64* %270

  %272 = add i64 %229, 72

  %273 = inttoptr i64 %272 to i64*

  %274 = load i64, i64* %273

  %275 = inttoptr i64 %239 to i64*

  %276 = load i64, i64* %275

  store i64 %276, i64* %11, align 8, !alias.scope !1454, !noalias !1457

  store i64 %229, i64* %35, align 8, !alias.scope !1454, !noalias !1457

  %277 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1341), i64 4294967295), i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %247, i64 %250, i64 %253, i64 %256, i64 %259, i64 %262, i64 %265, i64 %268, i64 %271, i64 %274), !noalias !1454

  %278 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1260

  store i8 0, i8* %58, align 1, !tbaa !1261

  store i8 0, i8* %59, align 1, !tbaa !1262

  store i8 0, i8* %56, align 1, !tbaa !1259

  %279 = add i64 %278, -5173

  %280 = add i64 %278, 7

  %281 = load i64, i64* %35, align 8, !tbaa !1240

  %282 = add i64 %281, -8

  %283 = inttoptr i64 %282 to i64*

  store i64 %280, i64* %283

  store i64 %282, i64* %35, align 8, !tbaa !1240

  %284 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %279, %struct.Memory* %225)

  %285 = load i64, i64* %11, align 8

  %286 = load <2 x i64>, <2 x i64>* %227, align 1

  %287 = load i64, i64* %35, align 8

  %288 = bitcast <2 x i64> %286 to <2 x double>

  %289 = extractelement <2 x double> %288, i32 0

  %290 = extractelement <2 x i64> %286, i32 1

  %291 = inttoptr i64 %287 to double*

  %292 = load double, double* %291

  %293 = fdiv double %289, %292

  %294 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1024) to double*)

  %295 = fmul double %293, %294

  store double %295, double* %2767, align 1, !tbaa !1271

  store i64 %290, i64* %2768, align 1, !tbaa !1271

  %296 = add i64 %285, 29

  %297 = add i64 %287, -8

  %298 = inttoptr i64 %297 to i64*

  store i64 %296, i64* %298

  %299 = load i64, i64* %96, align 8, !alias.scope !1459, !noalias !1462

  %300 = load i64, i64* %528, align 8, !alias.scope !1459, !noalias !1462

  %301 = load i64, i64* %527, align 8, !alias.scope !1459, !noalias !1462

  %302 = load i64, i64* %529, align 8, !alias.scope !1459, !noalias !1462

  %303 = load i64, i64* %530, align 8, !alias.scope !1459, !noalias !1462

  %304 = inttoptr i64 %287 to i64*

  %305 = load i64, i64* %304

  %306 = add i64 %287, 8

  %307 = inttoptr i64 %306 to i64*

  %308 = load i64, i64* %307

  %309 = add i64 %287, 16

  %310 = inttoptr i64 %309 to i64*

  %311 = load i64, i64* %310

  %312 = add i64 %287, 24

  %313 = inttoptr i64 %312 to i64*

  %314 = load i64, i64* %313

  %315 = add i64 %287, 32

  %316 = inttoptr i64 %315 to i64*

  %317 = load i64, i64* %316

  %318 = add i64 %287, 40

  %319 = inttoptr i64 %318 to i64*

  %320 = load i64, i64* %319

  %321 = add i64 %287, 48

  %322 = inttoptr i64 %321 to i64*

  %323 = load i64, i64* %322

  %324 = add i64 %287, 56

  %325 = inttoptr i64 %324 to i64*

  %326 = load i64, i64* %325

  %327 = add i64 %287, 64

  %328 = inttoptr i64 %327 to i64*

  %329 = load i64, i64* %328

  %330 = add i64 %287, 72

  %331 = inttoptr i64 %330 to i64*

  %332 = load i64, i64* %331

  %333 = inttoptr i64 %297 to i64*

  %334 = load i64, i64* %333

  store i64 %334, i64* %11, align 8, !alias.scope !1459, !noalias !1462

  store i64 %287, i64* %35, align 8, !alias.scope !1459, !noalias !1462

  %335 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1376), i64 4294967295), i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %305, i64 %308, i64 %311, i64 %314, i64 %317, i64 %320, i64 %323, i64 %326, i64 %329, i64 %332), !noalias !1459

  %336 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %337 = add i64 %336, -5209

  %338 = add i64 %336, 10

  %339 = load i64, i64* %35, align 8, !tbaa !1240

  %340 = add i64 %339, -8

  %341 = inttoptr i64 %340 to i64*

  store i64 %338, i64* %341

  store i64 %340, i64* %35, align 8, !tbaa !1240

  %342 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %337, %struct.Memory* %284)

  %343 = load i64, i64* %11, align 8

  %344 = load <2 x i64>, <2 x i64>* %227, align 1

  %345 = load i64, i64* %35, align 8

  %346 = bitcast <2 x i64> %344 to <2 x double>

  %347 = extractelement <2 x double> %346, i32 0

  %348 = extractelement <2 x i64> %344, i32 1

  %349 = inttoptr i64 %345 to double*

  %350 = load double, double* %349

  %351 = fdiv double %347, %350

  store double %351, double* %198, align 1, !tbaa !1271

  store i64 %348, i64* %199, align 1, !tbaa !1271

  %352 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1024) to double*)

  %353 = fmul double %352, %351

  store double %353, double* %2767, align 1, !tbaa !1271

  store i64 0, i64* %2768, align 1, !tbaa !1271

  %354 = add i64 %343, 33

  %355 = add i64 %345, -8

  %356 = inttoptr i64 %355 to i64*

  store i64 %354, i64* %356

  %357 = load i64, i64* %96, align 8, !alias.scope !1464, !noalias !1467

  %358 = load i64, i64* %528, align 8, !alias.scope !1464, !noalias !1467

  %359 = load i64, i64* %527, align 8, !alias.scope !1464, !noalias !1467

  %360 = load i64, i64* %529, align 8, !alias.scope !1464, !noalias !1467

  %361 = load i64, i64* %530, align 8, !alias.scope !1464, !noalias !1467

  %362 = inttoptr i64 %345 to i64*

  %363 = load i64, i64* %362

  %364 = add i64 %345, 8

  %365 = inttoptr i64 %364 to i64*

  %366 = load i64, i64* %365

  %367 = add i64 %345, 16

  %368 = inttoptr i64 %367 to i64*

  %369 = load i64, i64* %368

  %370 = add i64 %345, 24

  %371 = inttoptr i64 %370 to i64*

  %372 = load i64, i64* %371

  %373 = add i64 %345, 32

  %374 = inttoptr i64 %373 to i64*

  %375 = load i64, i64* %374

  %376 = add i64 %345, 40

  %377 = inttoptr i64 %376 to i64*

  %378 = load i64, i64* %377

  %379 = add i64 %345, 48

  %380 = inttoptr i64 %379 to i64*

  %381 = load i64, i64* %380

  %382 = add i64 %345, 56

  %383 = inttoptr i64 %382 to i64*

  %384 = load i64, i64* %383

  %385 = add i64 %345, 64

  %386 = inttoptr i64 %385 to i64*

  %387 = load i64, i64* %386

  %388 = add i64 %345, 72

  %389 = inttoptr i64 %388 to i64*

  %390 = load i64, i64* %389

  %391 = inttoptr i64 %355 to i64*

  %392 = load i64, i64* %391

  store i64 %392, i64* %11, align 8, !alias.scope !1464, !noalias !1467

  store i64 %345, i64* %35, align 8, !alias.scope !1464, !noalias !1467

  %393 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1411), i64 4294967295), i64 %357, i64 %358, i64 %359, i64 %360, i64 %361, i64 %363, i64 %366, i64 %369, i64 %372, i64 %375, i64 %378, i64 %381, i64 %384, i64 %387, i64 %390), !noalias !1464

  %394 = load i64, i64* %11, align 8

  %395 = load i64, i64* %35, align 8, !tbaa !1240

  br label %block_401ec4



block_4017ec:                                     ; preds = %block_401750

  store i64 0, i64* %37, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1260

  store i8 0, i8* %58, align 1, !tbaa !1261

  store i8 0, i8* %59, align 1, !tbaa !1262

  store i8 0, i8* %56, align 1, !tbaa !1259

  %396 = add i64 %103, -3628

  %397 = add i64 %103, 10

  %398 = load i64, i64* %35, align 8, !tbaa !1240

  %399 = add i64 %398, -8

  %400 = inttoptr i64 %399 to i64*

  store i64 %397, i64* %400

  store i64 %399, i64* %35, align 8, !tbaa !1240

  %401 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %396, %struct.Memory* %2)

  %402 = load i64, i64* %11, align 8

  br label %block_4017f6



block_401860:                                     ; preds = %block_4017f6

  store i64 1, i64* %34, align 8, !tbaa !1240

  %403 = add i64 %611, -3728

  %404 = add i64 %611, 10

  %405 = load i64, i64* %35, align 8, !tbaa !1240

  %406 = add i64 %405, -8

  %407 = inttoptr i64 %406 to i64*

  store i64 %404, i64* %407

  store i64 %406, i64* %35, align 8, !tbaa !1240

  %408 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %403, %struct.Memory* %482)

  %409 = load i64, i64* %11, align 8

  %410 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 984) to double*)

  %411 = bitcast [32 x %union.VectorReg]* %38 to double*

  store double %410, double* %411, align 1, !tbaa !1271

  %412 = bitcast i64* %492 to double*

  store double 0.000000e+00, double* %412, align 1, !tbaa !1271

  %413 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 992) to i64*)

  %414 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %413, i64* %414, align 1, !tbaa !1240

  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  store i64 0, i64* %415, align 1, !tbaa !1240

  %416 = add i64 %409, -3162

  %417 = add i64 %409, 21

  %418 = load i64, i64* %35, align 8, !tbaa !1240

  %419 = add i64 %418, -8

  %420 = inttoptr i64 %419 to i64*

  store i64 %417, i64* %420

  store i64 %419, i64* %35, align 8, !tbaa !1240

  %421 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull %0, i64 %416, %struct.Memory* %408)

  %422 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %423 = add i64 %422, -3711

  %424 = add i64 %422, 10

  %425 = load i64, i64* %35, align 8, !tbaa !1240

  %426 = add i64 %425, -8

  %427 = inttoptr i64 %426 to i64*

  store i64 %424, i64* %427

  store i64 %426, i64* %35, align 8, !tbaa !1240

  %428 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %423, %struct.Memory* %421)

  %429 = load i64, i64* %11, align 8

  %430 = add i64 %429, 23

  br label %block_4018a0



block_401d59:                                     ; preds = %block_401d29, %block_401b9b, %block_401d41, %block_401d43, %block_401d4f

  %431 = phi i64 [ %686, %block_401d43 ], [ %680, %block_401d4f ], [ %2188, %block_401d29 ], [ %794, %block_401d41 ], [ %1796, %block_401b9b ]

  %432 = phi %struct.Memory* [ %1763, %block_401d43 ], [ %679, %block_401d4f ], [ %1763, %block_401d29 ], [ %2549, %block_401d41 ], [ %666, %block_401b9b ]

  %433 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %434 = zext i32 %433 to i64

  %435 = add i64 %431, 18

  %436 = load i64, i64* %35, align 8, !tbaa !1240

  %437 = add i64 %436, -8

  %438 = inttoptr i64 %437 to i64*

  store i64 %435, i64* %438

  %439 = load i64, i64* %528, align 8, !alias.scope !1469, !noalias !1472

  %440 = load i64, i64* %527, align 8, !alias.scope !1469, !noalias !1472

  %441 = load i64, i64* %529, align 8, !alias.scope !1469, !noalias !1472

  %442 = load i64, i64* %530, align 8, !alias.scope !1469, !noalias !1472

  %443 = inttoptr i64 %436 to i64*

  %444 = load i64, i64* %443

  %445 = add i64 %436, 8

  %446 = inttoptr i64 %445 to i64*

  %447 = load i64, i64* %446

  %448 = add i64 %436, 16

  %449 = inttoptr i64 %448 to i64*

  %450 = load i64, i64* %449

  %451 = add i64 %436, 24

  %452 = inttoptr i64 %451 to i64*

  %453 = load i64, i64* %452

  %454 = add i64 %436, 32

  %455 = inttoptr i64 %454 to i64*

  %456 = load i64, i64* %455

  %457 = add i64 %436, 40

  %458 = inttoptr i64 %457 to i64*

  %459 = load i64, i64* %458

  %460 = add i64 %436, 48

  %461 = inttoptr i64 %460 to i64*

  %462 = load i64, i64* %461

  %463 = add i64 %436, 56

  %464 = inttoptr i64 %463 to i64*

  %465 = load i64, i64* %464

  %466 = add i64 %436, 64

  %467 = inttoptr i64 %466 to i64*

  %468 = load i64, i64* %467

  %469 = add i64 %436, 72

  %470 = inttoptr i64 %469 to i64*

  %471 = load i64, i64* %470

  %472 = inttoptr i64 %437 to i64*

  %473 = load i64, i64* %472

  store i64 %473, i64* %11, align 8, !alias.scope !1469, !noalias !1472

  store i64 %436, i64* %35, align 8, !alias.scope !1469, !noalias !1472

  %474 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1203), i64 4294967295), i64 %434, i64 %439, i64 %440, i64 %441, i64 %442, i64 %444, i64 %447, i64 %450, i64 %453, i64 %456, i64 %459, i64 %462, i64 %465, i64 %468, i64 %471), !noalias !1469

  %475 = load i64, i64* %11, align 8

  %476 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %477 = add i32 %476, -51

  %478 = icmp eq i32 %477, 0

  %479 = select i1 %478, i64 26, i64 14

  %480 = add i64 %475, %479

  br i1 %478, label %block_401d85, label %block_401d79



block_4017f6:                                     ; preds = %block_4017b0, %block_4017ec

  %481 = phi i64 [ %402, %block_4017ec ], [ %1364, %block_4017b0 ]

  %482 = phi %struct.Memory* [ %401, %block_4017ec ], [ %1362, %block_4017b0 ]

  %483 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%A_test_index_array_type* @A_test_index_array to i64), i64 16) to i32*)

  store i32 %483, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 16) to i32*)

  %484 = bitcast [32 x %union.VectorReg]* %38 to i8*

  %485 = load float, float* bitcast (%A_test_index_array_type* @A_test_index_array to float*)

  %486 = load float, float* inttoptr (i64 add (i64 ptrtoint (%A_test_index_array_type* @A_test_index_array to i64), i64 4) to float*)

  %487 = load float, float* inttoptr (i64 add (i64 ptrtoint (%A_test_index_array_type* @A_test_index_array to i64), i64 8) to float*)

  %488 = load float, float* inttoptr (i64 add (i64 ptrtoint (%A_test_index_array_type* @A_test_index_array to i64), i64 12) to float*)

  %489 = bitcast [32 x %union.VectorReg]* %38 to float*

  store float %485, float* %489, align 1, !tbaa !1274

  %490 = getelementptr inbounds i8, i8* %484, i64 4

  %491 = bitcast i8* %490 to float*

  store float %486, float* %491, align 1, !tbaa !1274

  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %493 = bitcast i64* %492 to float*

  store float %487, float* %493, align 1, !tbaa !1274

  %494 = getelementptr inbounds i8, i8* %484, i64 12

  %495 = bitcast i8* %494 to float*

  store float %488, float* %495, align 1, !tbaa !1274

  %496 = bitcast [32 x %union.VectorReg]* %38 to <2 x float>*

  %497 = load <2 x float>, <2 x float>* %496, align 1

  %498 = bitcast i64* %492 to <2 x float>*

  %499 = load <2 x float>, <2 x float>* %498, align 1

  %500 = extractelement <2 x float> %497, i32 0

  store float %500, float* bitcast (%test_index_array_type* @test_index_array to float*)

  %501 = extractelement <2 x float> %497, i32 1

  store float %501, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 4) to float*)

  %502 = extractelement <2 x float> %499, i32 0

  store float %502, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 8) to float*)

  %503 = extractelement <2 x float> %499, i32 1

  store float %503, float* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 12) to float*)

  %504 = load float, float* bitcast (%A_test_rank_array_type* @A_test_rank_array to float*)

  %505 = load float, float* inttoptr (i64 add (i64 ptrtoint (%A_test_rank_array_type* @A_test_rank_array to i64), i64 4) to float*)

  %506 = load float, float* inttoptr (i64 add (i64 ptrtoint (%A_test_rank_array_type* @A_test_rank_array to i64), i64 8) to float*)

  %507 = load float, float* inttoptr (i64 add (i64 ptrtoint (%A_test_rank_array_type* @A_test_rank_array to i64), i64 12) to float*)

  store float %504, float* %489, align 1, !tbaa !1274

  store float %505, float* %491, align 1, !tbaa !1274

  store float %506, float* %493, align 1, !tbaa !1274

  store float %507, float* %495, align 1, !tbaa !1274

  %508 = load <2 x float>, <2 x float>* %496, align 1

  %509 = load <2 x float>, <2 x float>* %498, align 1

  %510 = extractelement <2 x float> %508, i32 0

  store float %510, float* bitcast (%test_rank_array_type* @test_rank_array to float*)

  %511 = extractelement <2 x float> %508, i32 1

  store float %511, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4) to float*)

  %512 = extractelement <2 x float> %509, i32 0

  store float %512, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8) to float*)

  %513 = extractelement <2 x float> %509, i32 1

  store float %513, float* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 12) to float*)

  %514 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%A_test_rank_array_type* @A_test_rank_array to i64), i64 16) to i32*)

  store i32 %514, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 16) to i32*)

  %515 = add i64 %481, 62

  %516 = load i64, i64* %35, align 8, !tbaa !1240

  %517 = add i64 %516, -8

  %518 = inttoptr i64 %517 to i64*

  store i64 %515, i64* %518

  %519 = inttoptr i64 %517 to i64*

  %520 = load i64, i64* %519

  store i64 %520, i64* %11, align 8, !alias.scope !1474, !noalias !1477

  store i64 %516, i64* %35, align 8, !alias.scope !1474, !noalias !1477

  %521 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1472), i64 4294967295))

  %522 = load i64, i64* %11, align 8

  store i64 65, i64* %32, align 8, !tbaa !1240

  %523 = add i64 %522, 22

  %524 = load i64, i64* %35, align 8, !tbaa !1240

  %525 = add i64 %524, -8

  %526 = inttoptr i64 %525 to i64*

  store i64 %523, i64* %526

  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %531 = load i64, i64* %527, align 8, !alias.scope !1479, !noalias !1482

  %532 = load i64, i64* %529, align 8, !alias.scope !1479, !noalias !1482

  %533 = load i64, i64* %530, align 8, !alias.scope !1479, !noalias !1482

  %534 = inttoptr i64 %524 to i64*

  %535 = load i64, i64* %534

  %536 = add i64 %524, 8

  %537 = inttoptr i64 %536 to i64*

  %538 = load i64, i64* %537

  %539 = add i64 %524, 16

  %540 = inttoptr i64 %539 to i64*

  %541 = load i64, i64* %540

  %542 = add i64 %524, 24

  %543 = inttoptr i64 %542 to i64*

  %544 = load i64, i64* %543

  %545 = add i64 %524, 32

  %546 = inttoptr i64 %545 to i64*

  %547 = load i64, i64* %546

  %548 = add i64 %524, 40

  %549 = inttoptr i64 %548 to i64*

  %550 = load i64, i64* %549

  %551 = add i64 %524, 48

  %552 = inttoptr i64 %551 to i64*

  %553 = load i64, i64* %552

  %554 = add i64 %524, 56

  %555 = inttoptr i64 %554 to i64*

  %556 = load i64, i64* %555

  %557 = add i64 %524, 64

  %558 = inttoptr i64 %557 to i64*

  %559 = load i64, i64* %558

  %560 = add i64 %524, 72

  %561 = inttoptr i64 %560 to i64*

  %562 = load i64, i64* %561

  %563 = inttoptr i64 %525 to i64*

  %564 = load i64, i64* %563

  store i64 %564, i64* %11, align 8, !alias.scope !1479, !noalias !1482

  store i64 %524, i64* %35, align 8, !alias.scope !1479, !noalias !1482

  %565 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1147), i64 4294967295), i64 8388608, i64 65, i64 %531, i64 %532, i64 %533, i64 %535, i64 %538, i64 %541, i64 %544, i64 %547, i64 %550, i64 %553, i64 %556, i64 %559, i64 %562)

  %566 = load i64, i64* %11, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1172), i64 4294967295), i64* %34, align 8, !tbaa !1240

  store i64 10, i64* %33, align 8, !tbaa !1240

  %567 = add i64 %566, 17

  %568 = load i64, i64* %35, align 8, !tbaa !1240

  %569 = add i64 %568, -8

  %570 = inttoptr i64 %569 to i64*

  store i64 %567, i64* %570

  %571 = load i64, i64* %528, align 8, !alias.scope !1484, !noalias !1487

  %572 = load i64, i64* %527, align 8, !alias.scope !1484, !noalias !1487

  %573 = load i64, i64* %529, align 8, !alias.scope !1484, !noalias !1487

  %574 = load i64, i64* %530, align 8, !alias.scope !1484, !noalias !1487

  %575 = inttoptr i64 %568 to i64*

  %576 = load i64, i64* %575

  %577 = add i64 %568, 8

  %578 = inttoptr i64 %577 to i64*

  %579 = load i64, i64* %578

  %580 = add i64 %568, 16

  %581 = inttoptr i64 %580 to i64*

  %582 = load i64, i64* %581

  %583 = add i64 %568, 24

  %584 = inttoptr i64 %583 to i64*

  %585 = load i64, i64* %584

  %586 = add i64 %568, 32

  %587 = inttoptr i64 %586 to i64*

  %588 = load i64, i64* %587

  %589 = add i64 %568, 40

  %590 = inttoptr i64 %589 to i64*

  %591 = load i64, i64* %590

  %592 = add i64 %568, 48

  %593 = inttoptr i64 %592 to i64*

  %594 = load i64, i64* %593

  %595 = add i64 %568, 56

  %596 = inttoptr i64 %595 to i64*

  %597 = load i64, i64* %596

  %598 = add i64 %568, 64

  %599 = inttoptr i64 %598 to i64*

  %600 = load i64, i64* %599

  %601 = add i64 %568, 72

  %602 = inttoptr i64 %601 to i64*

  %603 = load i64, i64* %602

  %604 = inttoptr i64 %569 to i64*

  %605 = load i64, i64* %604

  store i64 %605, i64* %11, align 8, !alias.scope !1484, !noalias !1487

  store i64 %568, i64* %35, align 8, !alias.scope !1484, !noalias !1487

  %606 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1172), i64 4294967295), i64 10, i64 %571, i64 %572, i64 %573, i64 %574, i64 %576, i64 %579, i64 %582, i64 %585, i64 %588, i64 %591, i64 %594, i64 %597, i64 %600, i64 %603), !noalias !1484

  %607 = load i8, i8* %22, align 1

  %608 = load i64, i64* %11, align 8

  %609 = icmp eq i8 %607, 0

  %610 = select i1 %609, i64 48, i64 5

  %611 = add i64 %608, %610

  br i1 %609, label %block_40188b, label %block_401860



block_401b6e:                                     ; preds = %block_401ad9

  %612 = add i64 %2187, 14

  %613 = load i64, i64* %35, align 8, !tbaa !1240

  %614 = add i64 %613, -8

  %615 = inttoptr i64 %614 to i64*

  store i64 %612, i64* %615

  %616 = load i64, i64* %528, align 8, !alias.scope !1489, !noalias !1492

  %617 = load i64, i64* %529, align 8, !alias.scope !1489, !noalias !1492

  %618 = load i64, i64* %530, align 8, !alias.scope !1489, !noalias !1492

  %619 = inttoptr i64 %613 to i64*

  %620 = load i64, i64* %619

  %621 = add i64 %613, 8

  %622 = inttoptr i64 %621 to i64*

  %623 = load i64, i64* %622

  %624 = add i64 %613, 16

  %625 = inttoptr i64 %624 to i64*

  %626 = load i64, i64* %625

  %627 = add i64 %613, 24

  %628 = inttoptr i64 %627 to i64*

  %629 = load i64, i64* %628

  %630 = add i64 %613, 32

  %631 = inttoptr i64 %630 to i64*

  %632 = load i64, i64* %631

  %633 = add i64 %613, 40

  %634 = inttoptr i64 %633 to i64*

  %635 = load i64, i64* %634

  %636 = add i64 %613, 48

  %637 = inttoptr i64 %636 to i64*

  %638 = load i64, i64* %637

  %639 = add i64 %613, 56

  %640 = inttoptr i64 %639 to i64*

  %641 = load i64, i64* %640

  %642 = add i64 %613, 64

  %643 = inttoptr i64 %642 to i64*

  %644 = load i64, i64* %643

  %645 = add i64 %613, 72

  %646 = inttoptr i64 %645 to i64*

  %647 = load i64, i64* %646

  %648 = inttoptr i64 %614 to i64*

  %649 = load i64, i64* %648

  store i64 %649, i64* %11, align 8, !alias.scope !1489, !noalias !1492

  store i64 %613, i64* %35, align 8, !alias.scope !1489, !noalias !1492

  %650 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1032), i64 4294967295), i64 %2184, i64 %616, i64 %2184, i64 %617, i64 %618, i64 %620, i64 %623, i64 %626, i64 %629, i64 %632, i64 %635, i64 %638, i64 %641, i64 %644, i64 %647), !noalias !1489

  %651 = load i64, i64* %11, align 8

  %652 = load i64, i64* @stdout

  %653 = add i64 %651, 12

  %654 = load i64, i64* %35, align 8, !tbaa !1240

  %655 = add i64 %654, -8

  %656 = inttoptr i64 %655 to i64*

  store i64 %653, i64* %656

  %657 = inttoptr i64 %655 to i64*

  %658 = load i64, i64* %657

  store i64 %658, i64* %11, align 8, !alias.scope !1494, !noalias !1497

  store i64 %654, i64* %35, align 8, !alias.scope !1494, !noalias !1497

  %659 = tail call i64 @fflush(i64 %652), !noalias !1494

  %660 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %661 = add i64 %660, -4488

  %662 = add i64 %660, 10

  %663 = load i64, i64* %35, align 8, !tbaa !1240

  %664 = add i64 %663, -8

  %665 = inttoptr i64 %664 to i64*

  store i64 %662, i64* %665

  store i64 %664, i64* %35, align 8, !tbaa !1240

  %666 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %661, %struct.Memory* %2190)

  %667 = load i8, i8* %22, align 1

  %668 = load i64, i64* %11, align 8

  %669 = icmp eq i8 %667, 0

  %670 = select i1 %669, i64 9, i64 445

  %671 = add i64 %668, %670

  br i1 %669, label %block_401b9b, label %block_401d4f



block_401d4f:                                     ; preds = %block_401d0a, %block_401d2b, %block_401d43, %block_401b6e

  %672 = phi i64 [ %686, %block_401d43 ], [ %2762, %block_401d0a ], [ %2554, %block_401d2b ], [ %671, %block_401b6e ]

  %673 = phi %struct.Memory* [ %1763, %block_401d43 ], [ %1763, %block_401d0a ], [ %2549, %block_401d2b ], [ %666, %block_401b6e ]

  store i64 3, i64* %34, align 8, !tbaa !1240

  %674 = add i64 %672, -4943

  %675 = add i64 %672, 10

  %676 = load i64, i64* %35, align 8, !tbaa !1240

  %677 = add i64 %676, -8

  %678 = inttoptr i64 %677 to i64*

  store i64 %675, i64* %678

  store i64 %677, i64* %35, align 8, !tbaa !1240

  %679 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %674, %struct.Memory* %673)

  %680 = load i64, i64* %11, align 8

  br label %block_401d59



block_401d43:                                     ; preds = %block_401c79

  %681 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %682 = add i32 %681, 1

  store i32 %682, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %683 = load i8, i8* %22, align 1

  %684 = icmp eq i8 %683, 0

  %685 = select i1 %684, i64 22, i64 12

  %686 = add i64 %1761, %685

  br i1 %684, label %block_401d59, label %block_401d4f



block_401bf4:                                     ; preds = %block_401bc0

  store i64 %1788, i64* %30, align 8, !tbaa !1240

  %687 = inttoptr i64 %1510 to i32*

  %688 = load i32, i32* %687

  %689 = bitcast [32 x %union.VectorReg]* %38 to i32*

  store i32 %688, i32* %689, align 1, !tbaa !1273

  %690 = bitcast i8* %490 to i32*

  store i32 0, i32* %690, align 1, !tbaa !1273

  %691 = bitcast i64* %492 to i32*

  store i32 0, i32* %691, align 1, !tbaa !1273

  %692 = bitcast i8* %494 to i32*

  store i32 0, i32* %692, align 1, !tbaa !1273

  %693 = bitcast %union.VectorReg* %40 to i8*

  %694 = bitcast [32 x %union.VectorReg]* %38 to i128*

  %695 = load i128, i128* %694, align 1

  %696 = trunc i128 %695 to i32

  %697 = lshr i128 %695, 32

  %698 = trunc i128 %697 to i32

  %699 = lshr i128 %695, 64

  %700 = trunc i128 %699 to i32

  %701 = bitcast %union.VectorReg* %40 to i32*

  store i32 %696, i32* %701, align 1, !tbaa !1273

  %702 = getelementptr inbounds i8, i8* %693, i64 4

  %703 = bitcast i8* %702 to i32*

  store i32 %698, i32* %703, align 1, !tbaa !1273

  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %705 = bitcast i64* %704 to i32*

  store i32 %700, i32* %705, align 1, !tbaa !1273

  %706 = getelementptr inbounds i8, i8* %693, i64 12

  %707 = bitcast i8* %706 to i32*

  store i32 %696, i32* %707, align 1, !tbaa !1273

  %708 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %708, align 1, !tbaa !1240

  store i64 -8388592, i64* %31, align 8, !tbaa !1240

  %709 = bitcast %union.VectorReg* %39 to i8*

  %710 = bitcast %union.VectorReg* %39 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %710, align 1, !tbaa !1240

  %711 = add i64 %1320, 164

  %712 = bitcast %union.VectorReg* %42 to i8*

  %713 = add i64 %1510, 33554372

  %714 = bitcast %union.VectorReg* %42 to float*

  %715 = getelementptr inbounds i8, i8* %712, i64 4

  %716 = bitcast i8* %715 to float*

  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %718 = bitcast i64* %717 to float*

  %719 = getelementptr inbounds i8, i8* %712, i64 12

  %720 = bitcast i8* %719 to float*

  %721 = bitcast %union.VectorReg* %41 to i8*

  %722 = add i64 %1510, 33554388

  %723 = bitcast %union.VectorReg* %41 to float*

  %724 = getelementptr inbounds i8, i8* %721, i64 4

  %725 = bitcast i8* %724 to float*

  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %727 = bitcast i64* %726 to float*

  %728 = getelementptr inbounds i8, i8* %721, i64 12

  %729 = bitcast i8* %728 to float*

  %730 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0

  %731 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %42, i64 0, i32 0, i32 0, i32 0, i64 0

  %732 = bitcast <2 x i64>* %8 to i8*

  %733 = bitcast <2 x i64>* %8 to i32*

  %734 = getelementptr inbounds <2 x i64>, <2 x i64>* %8, i64 0, i64 0

  %735 = getelementptr inbounds <2 x i64>, <2 x i64>* %8, i64 0, i64 1

  %736 = getelementptr inbounds i8, i8* %732, i64 4

  %737 = bitcast i8* %736 to i32*

  %738 = bitcast i64* %735 to i32*

  %739 = getelementptr inbounds i8, i8* %732, i64 12

  %740 = bitcast i8* %739 to i32*

  %741 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0

  %742 = bitcast %union.VectorReg* %42 to i32*

  %743 = bitcast i8* %715 to i32*

  %744 = bitcast i64* %717 to i32*

  %745 = bitcast i8* %719 to i32*

  %746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %747 = bitcast <2 x i64>* %7 to i8*

  %748 = bitcast <2 x i64>* %7 to i32*

  %749 = getelementptr inbounds <2 x i64>, <2 x i64>* %7, i64 0, i64 0

  %750 = getelementptr inbounds <2 x i64>, <2 x i64>* %7, i64 0, i64 1

  %751 = getelementptr inbounds i8, i8* %747, i64 4

  %752 = bitcast i8* %751 to i32*

  %753 = bitcast i64* %750 to i32*

  %754 = getelementptr inbounds i8, i8* %747, i64 12

  %755 = bitcast i8* %754 to i32*

  %756 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %758 = bitcast %union.VectorReg* %39 to i32*

  %759 = getelementptr inbounds i8, i8* %709, i64 4

  %760 = bitcast i8* %759 to i32*

  %761 = bitcast i64* %757 to i32*

  %762 = getelementptr inbounds i8, i8* %709, i64 12

  %763 = bitcast i8* %762 to i32*

  %764 = load i64, i64* %29, align 8

  %765 = add i64 %764, 33554404

  %766 = add i64 %764, 33554420

  %767 = bitcast %union.VectorReg* %40 to float*

  %768 = bitcast i8* %702 to float*

  %769 = bitcast i64* %704 to float*

  %770 = bitcast i8* %706 to float*

  %771 = bitcast %union.VectorReg* %41 to i32*

  %772 = bitcast i8* %724 to i32*

  %773 = bitcast i64* %726 to i32*

  %774 = bitcast i8* %728 to i32*

  %775 = bitcast <2 x i64>* %6 to i8*

  %776 = bitcast <2 x i64>* %6 to i32*

  %777 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0

  %778 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 1

  %779 = getelementptr inbounds i8, i8* %775, i64 4

  %780 = bitcast i8* %779 to i32*

  %781 = bitcast i64* %778 to i32*

  %782 = getelementptr inbounds i8, i8* %775, i64 12

  %783 = bitcast i8* %782 to i32*

  %784 = bitcast <2 x i64>* %5 to i8*

  %785 = bitcast <2 x i64>* %5 to i32*

  %786 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 0

  %787 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 1

  %788 = getelementptr inbounds i8, i8* %784, i64 4

  %789 = bitcast i8* %788 to i32*

  %790 = bitcast i64* %787 to i32*

  %791 = getelementptr inbounds i8, i8* %784, i64 12

  %792 = bitcast i8* %791 to i32*

  %793 = load i64, i64* %704, align 1

  br label %block_401c44



block_401d41:                                     ; preds = %block_401d2b

  %794 = add i64 %2554, 24

  br label %block_401d59



block_4018a0:                                     ; preds = %block_40188b, %block_401860

  %795 = phi double* [ %2556, %block_40188b ], [ %411, %block_401860 ]

  %796 = phi i64 [ %2567, %block_40188b ], [ %430, %block_401860 ]

  %797 = phi %struct.Memory* [ %2566, %block_40188b ], [ %428, %block_401860 ]

  store i64 1, i64* %34, align 8, !tbaa !1240

  %798 = add i64 %796, -1424

  %799 = add i64 %796, 10

  %800 = load i64, i64* %35, align 8, !tbaa !1240

  %801 = add i64 %800, -8

  %802 = inttoptr i64 %801 to i64*

  store i64 %799, i64* %802

  store i64 %801, i64* %35, align 8, !tbaa !1240

  %803 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %798, %struct.Memory* %797)

  %804 = load i64, i64* %11, align 8

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %805 = add i64 %804, 20

  %806 = load i64, i64* %35, align 8, !tbaa !1240

  %807 = add i64 %806, -8

  %808 = inttoptr i64 %807 to i64*

  store i64 %805, i64* %808

  %809 = inttoptr i64 %807 to i64*

  %810 = load i64, i64* %809

  store i64 %810, i64* %11, align 8, !alias.scope !1499, !noalias !1502

  store i64 %806, i64* %35, align 8, !alias.scope !1499, !noalias !1502

  %811 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1451), i64 4294967295)), !noalias !1499

  %812 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  %813 = add i64 %812, -3822

  %814 = add i64 %812, 7

  %815 = load i64, i64* %35, align 8, !tbaa !1240

  %816 = add i64 %815, -8

  %817 = inttoptr i64 %816 to i64*

  store i64 %814, i64* %817

  store i64 %816, i64* %35, align 8, !tbaa !1240

  %818 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %813, %struct.Memory* %803)

  %819 = load i64, i64* %11, align 8

  %820 = add i64 %819, 17

  %821 = load i64, i64* %35, align 8, !tbaa !1240

  %822 = add i64 %821, -8

  %823 = inttoptr i64 %822 to i64*

  store i64 %820, i64* %823

  %824 = load i64, i64* %528, align 8, !alias.scope !1504, !noalias !1507

  %825 = load i64, i64* %527, align 8, !alias.scope !1504, !noalias !1507

  %826 = load i64, i64* %529, align 8, !alias.scope !1504, !noalias !1507

  %827 = load i64, i64* %530, align 8, !alias.scope !1504, !noalias !1507

  %828 = inttoptr i64 %821 to i64*

  %829 = load i64, i64* %828

  %830 = add i64 %821, 8

  %831 = inttoptr i64 %830 to i64*

  %832 = load i64, i64* %831

  %833 = add i64 %821, 16

  %834 = inttoptr i64 %833 to i64*

  %835 = load i64, i64* %834

  %836 = add i64 %821, 24

  %837 = inttoptr i64 %836 to i64*

  %838 = load i64, i64* %837

  %839 = add i64 %821, 32

  %840 = inttoptr i64 %839 to i64*

  %841 = load i64, i64* %840

  %842 = add i64 %821, 40

  %843 = inttoptr i64 %842 to i64*

  %844 = load i64, i64* %843

  %845 = add i64 %821, 48

  %846 = inttoptr i64 %845 to i64*

  %847 = load i64, i64* %846

  %848 = add i64 %821, 56

  %849 = inttoptr i64 %848 to i64*

  %850 = load i64, i64* %849

  %851 = add i64 %821, 64

  %852 = inttoptr i64 %851 to i64*

  %853 = load i64, i64* %852

  %854 = add i64 %821, 72

  %855 = inttoptr i64 %854 to i64*

  %856 = load i64, i64* %855

  %857 = inttoptr i64 %822 to i64*

  %858 = load i64, i64* %857

  store i64 %858, i64* %11, align 8, !alias.scope !1504, !noalias !1507

  store i64 %821, i64* %35, align 8, !alias.scope !1504, !noalias !1507

  %859 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 1, i64 %824, i64 %825, i64 %826, i64 %827, i64 %829, i64 %832, i64 %835, i64 %838, i64 %841, i64 %844, i64 %847, i64 %850, i64 %853, i64 %856), !noalias !1504

  %860 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %861 = add i64 %860, -1478

  %862 = add i64 %860, 10

  %863 = load i64, i64* %35, align 8, !tbaa !1240

  %864 = add i64 %863, -8

  %865 = inttoptr i64 %864 to i64*

  store i64 %862, i64* %865

  store i64 %864, i64* %35, align 8, !tbaa !1240

  %866 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %861, %struct.Memory* %818)

  %867 = load i64, i64* %11, align 8

  %868 = add i64 %867, 17

  %869 = load i64, i64* %35, align 8, !tbaa !1240

  %870 = add i64 %869, -8

  %871 = inttoptr i64 %870 to i64*

  store i64 %868, i64* %871

  %872 = load i64, i64* %528, align 8, !alias.scope !1509, !noalias !1512

  %873 = load i64, i64* %527, align 8, !alias.scope !1509, !noalias !1512

  %874 = load i64, i64* %529, align 8, !alias.scope !1509, !noalias !1512

  %875 = load i64, i64* %530, align 8, !alias.scope !1509, !noalias !1512

  %876 = inttoptr i64 %869 to i64*

  %877 = load i64, i64* %876

  %878 = add i64 %869, 8

  %879 = inttoptr i64 %878 to i64*

  %880 = load i64, i64* %879

  %881 = add i64 %869, 16

  %882 = inttoptr i64 %881 to i64*

  %883 = load i64, i64* %882

  %884 = add i64 %869, 24

  %885 = inttoptr i64 %884 to i64*

  %886 = load i64, i64* %885

  %887 = add i64 %869, 32

  %888 = inttoptr i64 %887 to i64*

  %889 = load i64, i64* %888

  %890 = add i64 %869, 40

  %891 = inttoptr i64 %890 to i64*

  %892 = load i64, i64* %891

  %893 = add i64 %869, 48

  %894 = inttoptr i64 %893 to i64*

  %895 = load i64, i64* %894

  %896 = add i64 %869, 56

  %897 = inttoptr i64 %896 to i64*

  %898 = load i64, i64* %897

  %899 = add i64 %869, 64

  %900 = inttoptr i64 %899 to i64*

  %901 = load i64, i64* %900

  %902 = add i64 %869, 72

  %903 = inttoptr i64 %902 to i64*

  %904 = load i64, i64* %903

  %905 = inttoptr i64 %870 to i64*

  %906 = load i64, i64* %905

  store i64 %906, i64* %11, align 8, !alias.scope !1509, !noalias !1512

  store i64 %869, i64* %35, align 8, !alias.scope !1509, !noalias !1512

  %907 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 2, i64 %872, i64 %873, i64 %874, i64 %875, i64 %877, i64 %880, i64 %883, i64 %886, i64 %889, i64 %892, i64 %895, i64 %898, i64 %901, i64 %904), !noalias !1509

  %908 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %909 = add i64 %908, -1505

  %910 = add i64 %908, 10

  %911 = load i64, i64* %35, align 8, !tbaa !1240

  %912 = add i64 %911, -8

  %913 = inttoptr i64 %912 to i64*

  store i64 %910, i64* %913

  store i64 %912, i64* %35, align 8, !tbaa !1240

  %914 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %909, %struct.Memory* %866)

  %915 = load i64, i64* %11, align 8

  %916 = add i64 %915, 17

  %917 = load i64, i64* %35, align 8, !tbaa !1240

  %918 = add i64 %917, -8

  %919 = inttoptr i64 %918 to i64*

  store i64 %916, i64* %919

  %920 = load i64, i64* %528, align 8, !alias.scope !1514, !noalias !1517

  %921 = load i64, i64* %527, align 8, !alias.scope !1514, !noalias !1517

  %922 = load i64, i64* %529, align 8, !alias.scope !1514, !noalias !1517

  %923 = load i64, i64* %530, align 8, !alias.scope !1514, !noalias !1517

  %924 = inttoptr i64 %917 to i64*

  %925 = load i64, i64* %924

  %926 = add i64 %917, 8

  %927 = inttoptr i64 %926 to i64*

  %928 = load i64, i64* %927

  %929 = add i64 %917, 16

  %930 = inttoptr i64 %929 to i64*

  %931 = load i64, i64* %930

  %932 = add i64 %917, 24

  %933 = inttoptr i64 %932 to i64*

  %934 = load i64, i64* %933

  %935 = add i64 %917, 32

  %936 = inttoptr i64 %935 to i64*

  %937 = load i64, i64* %936

  %938 = add i64 %917, 40

  %939 = inttoptr i64 %938 to i64*

  %940 = load i64, i64* %939

  %941 = add i64 %917, 48

  %942 = inttoptr i64 %941 to i64*

  %943 = load i64, i64* %942

  %944 = add i64 %917, 56

  %945 = inttoptr i64 %944 to i64*

  %946 = load i64, i64* %945

  %947 = add i64 %917, 64

  %948 = inttoptr i64 %947 to i64*

  %949 = load i64, i64* %948

  %950 = add i64 %917, 72

  %951 = inttoptr i64 %950 to i64*

  %952 = load i64, i64* %951

  %953 = inttoptr i64 %918 to i64*

  %954 = load i64, i64* %953

  store i64 %954, i64* %11, align 8, !alias.scope !1514, !noalias !1517

  store i64 %917, i64* %35, align 8, !alias.scope !1514, !noalias !1517

  %955 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 3, i64 %920, i64 %921, i64 %922, i64 %923, i64 %925, i64 %928, i64 %931, i64 %934, i64 %937, i64 %940, i64 %943, i64 %946, i64 %949, i64 %952), !noalias !1514

  %956 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %957 = add i64 %956, -1532

  %958 = add i64 %956, 10

  %959 = load i64, i64* %35, align 8, !tbaa !1240

  %960 = add i64 %959, -8

  %961 = inttoptr i64 %960 to i64*

  store i64 %958, i64* %961

  store i64 %960, i64* %35, align 8, !tbaa !1240

  %962 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %957, %struct.Memory* %914)

  %963 = load i64, i64* %11, align 8

  %964 = add i64 %963, 17

  %965 = load i64, i64* %35, align 8, !tbaa !1240

  %966 = add i64 %965, -8

  %967 = inttoptr i64 %966 to i64*

  store i64 %964, i64* %967

  %968 = load i64, i64* %528, align 8, !alias.scope !1519, !noalias !1522

  %969 = load i64, i64* %527, align 8, !alias.scope !1519, !noalias !1522

  %970 = load i64, i64* %529, align 8, !alias.scope !1519, !noalias !1522

  %971 = load i64, i64* %530, align 8, !alias.scope !1519, !noalias !1522

  %972 = inttoptr i64 %965 to i64*

  %973 = load i64, i64* %972

  %974 = add i64 %965, 8

  %975 = inttoptr i64 %974 to i64*

  %976 = load i64, i64* %975

  %977 = add i64 %965, 16

  %978 = inttoptr i64 %977 to i64*

  %979 = load i64, i64* %978

  %980 = add i64 %965, 24

  %981 = inttoptr i64 %980 to i64*

  %982 = load i64, i64* %981

  %983 = add i64 %965, 32

  %984 = inttoptr i64 %983 to i64*

  %985 = load i64, i64* %984

  %986 = add i64 %965, 40

  %987 = inttoptr i64 %986 to i64*

  %988 = load i64, i64* %987

  %989 = add i64 %965, 48

  %990 = inttoptr i64 %989 to i64*

  %991 = load i64, i64* %990

  %992 = add i64 %965, 56

  %993 = inttoptr i64 %992 to i64*

  %994 = load i64, i64* %993

  %995 = add i64 %965, 64

  %996 = inttoptr i64 %995 to i64*

  %997 = load i64, i64* %996

  %998 = add i64 %965, 72

  %999 = inttoptr i64 %998 to i64*

  %1000 = load i64, i64* %999

  %1001 = inttoptr i64 %966 to i64*

  %1002 = load i64, i64* %1001

  store i64 %1002, i64* %11, align 8, !alias.scope !1519, !noalias !1522

  store i64 %965, i64* %35, align 8, !alias.scope !1519, !noalias !1522

  %1003 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 4, i64 %968, i64 %969, i64 %970, i64 %971, i64 %973, i64 %976, i64 %979, i64 %982, i64 %985, i64 %988, i64 %991, i64 %994, i64 %997, i64 %1000), !noalias !1519

  %1004 = load i64, i64* %11, align 8

  store i64 4, i64* %34, align 8, !tbaa !1240

  %1005 = add i64 %1004, -1559

  %1006 = add i64 %1004, 10

  %1007 = load i64, i64* %35, align 8, !tbaa !1240

  %1008 = add i64 %1007, -8

  %1009 = inttoptr i64 %1008 to i64*

  store i64 %1006, i64* %1009

  store i64 %1008, i64* %35, align 8, !tbaa !1240

  %1010 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1005, %struct.Memory* %962)

  %1011 = load i64, i64* %11, align 8

  %1012 = add i64 %1011, 17

  %1013 = load i64, i64* %35, align 8, !tbaa !1240

  %1014 = add i64 %1013, -8

  %1015 = inttoptr i64 %1014 to i64*

  store i64 %1012, i64* %1015

  %1016 = load i64, i64* %528, align 8, !alias.scope !1524, !noalias !1527

  %1017 = load i64, i64* %527, align 8, !alias.scope !1524, !noalias !1527

  %1018 = load i64, i64* %529, align 8, !alias.scope !1524, !noalias !1527

  %1019 = load i64, i64* %530, align 8, !alias.scope !1524, !noalias !1527

  %1020 = inttoptr i64 %1013 to i64*

  %1021 = load i64, i64* %1020

  %1022 = add i64 %1013, 8

  %1023 = inttoptr i64 %1022 to i64*

  %1024 = load i64, i64* %1023

  %1025 = add i64 %1013, 16

  %1026 = inttoptr i64 %1025 to i64*

  %1027 = load i64, i64* %1026

  %1028 = add i64 %1013, 24

  %1029 = inttoptr i64 %1028 to i64*

  %1030 = load i64, i64* %1029

  %1031 = add i64 %1013, 32

  %1032 = inttoptr i64 %1031 to i64*

  %1033 = load i64, i64* %1032

  %1034 = add i64 %1013, 40

  %1035 = inttoptr i64 %1034 to i64*

  %1036 = load i64, i64* %1035

  %1037 = add i64 %1013, 48

  %1038 = inttoptr i64 %1037 to i64*

  %1039 = load i64, i64* %1038

  %1040 = add i64 %1013, 56

  %1041 = inttoptr i64 %1040 to i64*

  %1042 = load i64, i64* %1041

  %1043 = add i64 %1013, 64

  %1044 = inttoptr i64 %1043 to i64*

  %1045 = load i64, i64* %1044

  %1046 = add i64 %1013, 72

  %1047 = inttoptr i64 %1046 to i64*

  %1048 = load i64, i64* %1047

  %1049 = inttoptr i64 %1014 to i64*

  %1050 = load i64, i64* %1049

  store i64 %1050, i64* %11, align 8, !alias.scope !1524, !noalias !1527

  store i64 %1013, i64* %35, align 8, !alias.scope !1524, !noalias !1527

  %1051 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 5, i64 %1016, i64 %1017, i64 %1018, i64 %1019, i64 %1021, i64 %1024, i64 %1027, i64 %1030, i64 %1033, i64 %1036, i64 %1039, i64 %1042, i64 %1045, i64 %1048), !noalias !1524

  %1052 = load i64, i64* %11, align 8

  store i64 5, i64* %34, align 8, !tbaa !1240

  %1053 = add i64 %1052, -1586

  %1054 = add i64 %1052, 10

  %1055 = load i64, i64* %35, align 8, !tbaa !1240

  %1056 = add i64 %1055, -8

  %1057 = inttoptr i64 %1056 to i64*

  store i64 %1054, i64* %1057

  store i64 %1056, i64* %35, align 8, !tbaa !1240

  %1058 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1053, %struct.Memory* %1010)

  %1059 = load i64, i64* %11, align 8

  %1060 = add i64 %1059, 17

  %1061 = load i64, i64* %35, align 8, !tbaa !1240

  %1062 = add i64 %1061, -8

  %1063 = inttoptr i64 %1062 to i64*

  store i64 %1060, i64* %1063

  %1064 = load i64, i64* %528, align 8, !alias.scope !1529, !noalias !1532

  %1065 = load i64, i64* %527, align 8, !alias.scope !1529, !noalias !1532

  %1066 = load i64, i64* %529, align 8, !alias.scope !1529, !noalias !1532

  %1067 = load i64, i64* %530, align 8, !alias.scope !1529, !noalias !1532

  %1068 = inttoptr i64 %1061 to i64*

  %1069 = load i64, i64* %1068

  %1070 = add i64 %1061, 8

  %1071 = inttoptr i64 %1070 to i64*

  %1072 = load i64, i64* %1071

  %1073 = add i64 %1061, 16

  %1074 = inttoptr i64 %1073 to i64*

  %1075 = load i64, i64* %1074

  %1076 = add i64 %1061, 24

  %1077 = inttoptr i64 %1076 to i64*

  %1078 = load i64, i64* %1077

  %1079 = add i64 %1061, 32

  %1080 = inttoptr i64 %1079 to i64*

  %1081 = load i64, i64* %1080

  %1082 = add i64 %1061, 40

  %1083 = inttoptr i64 %1082 to i64*

  %1084 = load i64, i64* %1083

  %1085 = add i64 %1061, 48

  %1086 = inttoptr i64 %1085 to i64*

  %1087 = load i64, i64* %1086

  %1088 = add i64 %1061, 56

  %1089 = inttoptr i64 %1088 to i64*

  %1090 = load i64, i64* %1089

  %1091 = add i64 %1061, 64

  %1092 = inttoptr i64 %1091 to i64*

  %1093 = load i64, i64* %1092

  %1094 = add i64 %1061, 72

  %1095 = inttoptr i64 %1094 to i64*

  %1096 = load i64, i64* %1095

  %1097 = inttoptr i64 %1062 to i64*

  %1098 = load i64, i64* %1097

  store i64 %1098, i64* %11, align 8, !alias.scope !1529, !noalias !1532

  store i64 %1061, i64* %35, align 8, !alias.scope !1529, !noalias !1532

  %1099 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 6, i64 %1064, i64 %1065, i64 %1066, i64 %1067, i64 %1069, i64 %1072, i64 %1075, i64 %1078, i64 %1081, i64 %1084, i64 %1087, i64 %1090, i64 %1093, i64 %1096), !noalias !1529

  %1100 = load i64, i64* %11, align 8

  store i64 6, i64* %34, align 8, !tbaa !1240

  %1101 = add i64 %1100, -1613

  %1102 = add i64 %1100, 10

  %1103 = load i64, i64* %35, align 8, !tbaa !1240

  %1104 = add i64 %1103, -8

  %1105 = inttoptr i64 %1104 to i64*

  store i64 %1102, i64* %1105

  store i64 %1104, i64* %35, align 8, !tbaa !1240

  %1106 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1101, %struct.Memory* %1058)

  %1107 = load i64, i64* %11, align 8

  %1108 = add i64 %1107, 17

  %1109 = load i64, i64* %35, align 8, !tbaa !1240

  %1110 = add i64 %1109, -8

  %1111 = inttoptr i64 %1110 to i64*

  store i64 %1108, i64* %1111

  %1112 = load i64, i64* %528, align 8, !alias.scope !1534, !noalias !1537

  %1113 = load i64, i64* %527, align 8, !alias.scope !1534, !noalias !1537

  %1114 = load i64, i64* %529, align 8, !alias.scope !1534, !noalias !1537

  %1115 = load i64, i64* %530, align 8, !alias.scope !1534, !noalias !1537

  %1116 = inttoptr i64 %1109 to i64*

  %1117 = load i64, i64* %1116

  %1118 = add i64 %1109, 8

  %1119 = inttoptr i64 %1118 to i64*

  %1120 = load i64, i64* %1119

  %1121 = add i64 %1109, 16

  %1122 = inttoptr i64 %1121 to i64*

  %1123 = load i64, i64* %1122

  %1124 = add i64 %1109, 24

  %1125 = inttoptr i64 %1124 to i64*

  %1126 = load i64, i64* %1125

  %1127 = add i64 %1109, 32

  %1128 = inttoptr i64 %1127 to i64*

  %1129 = load i64, i64* %1128

  %1130 = add i64 %1109, 40

  %1131 = inttoptr i64 %1130 to i64*

  %1132 = load i64, i64* %1131

  %1133 = add i64 %1109, 48

  %1134 = inttoptr i64 %1133 to i64*

  %1135 = load i64, i64* %1134

  %1136 = add i64 %1109, 56

  %1137 = inttoptr i64 %1136 to i64*

  %1138 = load i64, i64* %1137

  %1139 = add i64 %1109, 64

  %1140 = inttoptr i64 %1139 to i64*

  %1141 = load i64, i64* %1140

  %1142 = add i64 %1109, 72

  %1143 = inttoptr i64 %1142 to i64*

  %1144 = load i64, i64* %1143

  %1145 = inttoptr i64 %1110 to i64*

  %1146 = load i64, i64* %1145

  store i64 %1146, i64* %11, align 8, !alias.scope !1534, !noalias !1537

  store i64 %1109, i64* %35, align 8, !alias.scope !1534, !noalias !1537

  %1147 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 7, i64 %1112, i64 %1113, i64 %1114, i64 %1115, i64 %1117, i64 %1120, i64 %1123, i64 %1126, i64 %1129, i64 %1132, i64 %1135, i64 %1138, i64 %1141, i64 %1144), !noalias !1534

  %1148 = load i64, i64* %11, align 8

  store i64 7, i64* %34, align 8, !tbaa !1240

  %1149 = add i64 %1148, -1640

  %1150 = add i64 %1148, 10

  %1151 = load i64, i64* %35, align 8, !tbaa !1240

  %1152 = add i64 %1151, -8

  %1153 = inttoptr i64 %1152 to i64*

  store i64 %1150, i64* %1153

  store i64 %1152, i64* %35, align 8, !tbaa !1240

  %1154 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1149, %struct.Memory* %1106)

  %1155 = load i64, i64* %11, align 8

  %1156 = add i64 %1155, 17

  %1157 = load i64, i64* %35, align 8, !tbaa !1240

  %1158 = add i64 %1157, -8

  %1159 = inttoptr i64 %1158 to i64*

  store i64 %1156, i64* %1159

  %1160 = load i64, i64* %528, align 8, !alias.scope !1539, !noalias !1542

  %1161 = load i64, i64* %527, align 8, !alias.scope !1539, !noalias !1542

  %1162 = load i64, i64* %529, align 8, !alias.scope !1539, !noalias !1542

  %1163 = load i64, i64* %530, align 8, !alias.scope !1539, !noalias !1542

  %1164 = inttoptr i64 %1157 to i64*

  %1165 = load i64, i64* %1164

  %1166 = add i64 %1157, 8

  %1167 = inttoptr i64 %1166 to i64*

  %1168 = load i64, i64* %1167

  %1169 = add i64 %1157, 16

  %1170 = inttoptr i64 %1169 to i64*

  %1171 = load i64, i64* %1170

  %1172 = add i64 %1157, 24

  %1173 = inttoptr i64 %1172 to i64*

  %1174 = load i64, i64* %1173

  %1175 = add i64 %1157, 32

  %1176 = inttoptr i64 %1175 to i64*

  %1177 = load i64, i64* %1176

  %1178 = add i64 %1157, 40

  %1179 = inttoptr i64 %1178 to i64*

  %1180 = load i64, i64* %1179

  %1181 = add i64 %1157, 48

  %1182 = inttoptr i64 %1181 to i64*

  %1183 = load i64, i64* %1182

  %1184 = add i64 %1157, 56

  %1185 = inttoptr i64 %1184 to i64*

  %1186 = load i64, i64* %1185

  %1187 = add i64 %1157, 64

  %1188 = inttoptr i64 %1187 to i64*

  %1189 = load i64, i64* %1188

  %1190 = add i64 %1157, 72

  %1191 = inttoptr i64 %1190 to i64*

  %1192 = load i64, i64* %1191

  %1193 = inttoptr i64 %1158 to i64*

  %1194 = load i64, i64* %1193

  store i64 %1194, i64* %11, align 8, !alias.scope !1539, !noalias !1542

  store i64 %1157, i64* %35, align 8, !alias.scope !1539, !noalias !1542

  %1195 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 8, i64 %1160, i64 %1161, i64 %1162, i64 %1163, i64 %1165, i64 %1168, i64 %1171, i64 %1174, i64 %1177, i64 %1180, i64 %1183, i64 %1186, i64 %1189, i64 %1192), !noalias !1539

  %1196 = load i64, i64* %11, align 8

  store i64 8, i64* %34, align 8, !tbaa !1240

  %1197 = add i64 %1196, -1667

  %1198 = add i64 %1196, 10

  %1199 = load i64, i64* %35, align 8, !tbaa !1240

  %1200 = add i64 %1199, -8

  %1201 = inttoptr i64 %1200 to i64*

  store i64 %1198, i64* %1201

  store i64 %1200, i64* %35, align 8, !tbaa !1240

  %1202 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1197, %struct.Memory* %1154)

  %1203 = load i64, i64* %11, align 8

  %1204 = add i64 %1203, 17

  %1205 = load i64, i64* %35, align 8, !tbaa !1240

  %1206 = add i64 %1205, -8

  %1207 = inttoptr i64 %1206 to i64*

  store i64 %1204, i64* %1207

  %1208 = load i64, i64* %528, align 8, !alias.scope !1544, !noalias !1547

  %1209 = load i64, i64* %527, align 8, !alias.scope !1544, !noalias !1547

  %1210 = load i64, i64* %529, align 8, !alias.scope !1544, !noalias !1547

  %1211 = load i64, i64* %530, align 8, !alias.scope !1544, !noalias !1547

  %1212 = inttoptr i64 %1205 to i64*

  %1213 = load i64, i64* %1212

  %1214 = add i64 %1205, 8

  %1215 = inttoptr i64 %1214 to i64*

  %1216 = load i64, i64* %1215

  %1217 = add i64 %1205, 16

  %1218 = inttoptr i64 %1217 to i64*

  %1219 = load i64, i64* %1218

  %1220 = add i64 %1205, 24

  %1221 = inttoptr i64 %1220 to i64*

  %1222 = load i64, i64* %1221

  %1223 = add i64 %1205, 32

  %1224 = inttoptr i64 %1223 to i64*

  %1225 = load i64, i64* %1224

  %1226 = add i64 %1205, 40

  %1227 = inttoptr i64 %1226 to i64*

  %1228 = load i64, i64* %1227

  %1229 = add i64 %1205, 48

  %1230 = inttoptr i64 %1229 to i64*

  %1231 = load i64, i64* %1230

  %1232 = add i64 %1205, 56

  %1233 = inttoptr i64 %1232 to i64*

  %1234 = load i64, i64* %1233

  %1235 = add i64 %1205, 64

  %1236 = inttoptr i64 %1235 to i64*

  %1237 = load i64, i64* %1236

  %1238 = add i64 %1205, 72

  %1239 = inttoptr i64 %1238 to i64*

  %1240 = load i64, i64* %1239

  %1241 = inttoptr i64 %1206 to i64*

  %1242 = load i64, i64* %1241

  store i64 %1242, i64* %11, align 8, !alias.scope !1544, !noalias !1547

  store i64 %1205, i64* %35, align 8, !alias.scope !1544, !noalias !1547

  %1243 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 9, i64 %1208, i64 %1209, i64 %1210, i64 %1211, i64 %1213, i64 %1216, i64 %1219, i64 %1222, i64 %1225, i64 %1228, i64 %1231, i64 %1234, i64 %1237, i64 %1240), !noalias !1544

  %1244 = load i64, i64* %11, align 8

  store i64 9, i64* %34, align 8, !tbaa !1240

  %1245 = add i64 %1244, -1694

  %1246 = add i64 %1244, 10

  %1247 = load i64, i64* %35, align 8, !tbaa !1240

  %1248 = add i64 %1247, -8

  %1249 = inttoptr i64 %1248 to i64*

  store i64 %1246, i64* %1249

  store i64 %1248, i64* %35, align 8, !tbaa !1240

  %1250 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1245, %struct.Memory* %1202)

  %1251 = load i64, i64* %11, align 8

  %1252 = add i64 %1251, 17

  %1253 = load i64, i64* %35, align 8, !tbaa !1240

  %1254 = add i64 %1253, -8

  %1255 = inttoptr i64 %1254 to i64*

  store i64 %1252, i64* %1255

  %1256 = load i64, i64* %528, align 8, !alias.scope !1549, !noalias !1552

  %1257 = load i64, i64* %527, align 8, !alias.scope !1549, !noalias !1552

  %1258 = load i64, i64* %529, align 8, !alias.scope !1549, !noalias !1552

  %1259 = load i64, i64* %530, align 8, !alias.scope !1549, !noalias !1552

  %1260 = inttoptr i64 %1253 to i64*

  %1261 = load i64, i64* %1260

  %1262 = add i64 %1253, 8

  %1263 = inttoptr i64 %1262 to i64*

  %1264 = load i64, i64* %1263

  %1265 = add i64 %1253, 16

  %1266 = inttoptr i64 %1265 to i64*

  %1267 = load i64, i64* %1266

  %1268 = add i64 %1253, 24

  %1269 = inttoptr i64 %1268 to i64*

  %1270 = load i64, i64* %1269

  %1271 = add i64 %1253, 32

  %1272 = inttoptr i64 %1271 to i64*

  %1273 = load i64, i64* %1272

  %1274 = add i64 %1253, 40

  %1275 = inttoptr i64 %1274 to i64*

  %1276 = load i64, i64* %1275

  %1277 = add i64 %1253, 48

  %1278 = inttoptr i64 %1277 to i64*

  %1279 = load i64, i64* %1278

  %1280 = add i64 %1253, 56

  %1281 = inttoptr i64 %1280 to i64*

  %1282 = load i64, i64* %1281

  %1283 = add i64 %1253, 64

  %1284 = inttoptr i64 %1283 to i64*

  %1285 = load i64, i64* %1284

  %1286 = add i64 %1253, 72

  %1287 = inttoptr i64 %1286 to i64*

  %1288 = load i64, i64* %1287

  %1289 = inttoptr i64 %1254 to i64*

  %1290 = load i64, i64* %1289

  store i64 %1290, i64* %11, align 8, !alias.scope !1549, !noalias !1552

  store i64 %1253, i64* %35, align 8, !alias.scope !1549, !noalias !1552

  %1291 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1191), i64 4294967295), i64 10, i64 %1256, i64 %1257, i64 %1258, i64 %1259, i64 %1261, i64 %1264, i64 %1267, i64 %1270, i64 %1273, i64 %1276, i64 %1279, i64 %1282, i64 %1285, i64 %1288), !noalias !1549

  %1292 = load i64, i64* %11, align 8

  store i64 10, i64* %34, align 8, !tbaa !1240

  %1293 = add i64 %1292, -1721

  %1294 = add i64 %1292, 10

  %1295 = load i64, i64* %35, align 8, !tbaa !1240

  %1296 = add i64 %1295, -8

  %1297 = inttoptr i64 %1296 to i64*

  store i64 %1294, i64* %1297

  store i64 %1296, i64* %35, align 8, !tbaa !1240

  %1298 = tail call %struct.Memory* @sub_401310_rank(%struct.State* nonnull %0, i64 %1293, %struct.Memory* %1250)

  %1299 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1300 = add i64 %1299, -4051

  %1301 = add i64 %1299, 7

  %1302 = load i64, i64* %35, align 8, !tbaa !1240

  %1303 = add i64 %1302, -8

  %1304 = inttoptr i64 %1303 to i64*

  store i64 %1301, i64* %1304

  store i64 %1303, i64* %35, align 8, !tbaa !1240

  %1305 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %1300, %struct.Memory* %1298)

  %1306 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1260

  store i8 0, i8* %58, align 1, !tbaa !1261

  store i8 0, i8* %59, align 1, !tbaa !1262

  store i8 0, i8* %56, align 1, !tbaa !1259

  %1307 = add i64 %1306, -3994

  %1308 = add i64 %1306, 7

  %1309 = load i64, i64* %35, align 8, !tbaa !1240

  %1310 = add i64 %1309, -8

  %1311 = inttoptr i64 %1310 to i64*

  store i64 %1308, i64* %1311

  store i64 %1310, i64* %35, align 8, !tbaa !1240

  %1312 = tail call %struct.Memory* @sub_400a40_timer_read(%struct.State* nonnull %0, i64 %1307, %struct.Memory* %1305)

  %1313 = load i64, i64* %35, align 8

  %1314 = load i64, i64* %11, align 8

  %1315 = load double, double* %795, align 1

  %1316 = inttoptr i64 %1313 to double*

  store double %1315, double* %1316

  %1317 = load i8, i8* %22, align 1

  %1318 = icmp eq i8 %1317, 0

  %1319 = select i1 %1318, i64 447, i64 14

  %1320 = add i64 %1314, %1319

  br i1 %1318, label %block_401ba0, label %block_4019ef



block_4017b0:                                     ; preds = %block_401750

  %1321 = add i64 %103, 8

  %1322 = load i64, i64* %35, align 8, !tbaa !1240

  %1323 = add i64 %1322, -8

  %1324 = inttoptr i64 %1323 to i64*

  store i64 %1321, i64* %1324

  %1325 = inttoptr i64 %1323 to i64*

  %1326 = load i64, i64* %1325

  store i64 %1326, i64* %11, align 8, !alias.scope !1554, !noalias !1557

  store i64 %1322, i64* %35, align 8, !alias.scope !1554, !noalias !1557

  %1327 = tail call i64 @fclose(i64 %99), !noalias !1554

  %1328 = load i64, i64* %11, align 8

  store i64 0, i64* %34, align 8, !tbaa !1240

  store i8 0, i8* %54, align 1, !tbaa !1244

  store i8 1, i8* %55, align 1, !tbaa !1258

  store i8 1, i8* %57, align 1, !tbaa !1260

  store i8 0, i8* %58, align 1, !tbaa !1261

  store i8 0, i8* %59, align 1, !tbaa !1262

  store i8 0, i8* %56, align 1, !tbaa !1259

  %1329 = add i64 %1328, -3576

  %1330 = add i64 %1328, 7

  %1331 = load i64, i64* %35, align 8, !tbaa !1240

  %1332 = add i64 %1331, -8

  %1333 = inttoptr i64 %1332 to i64*

  store i64 %1330, i64* %1333

  store i64 %1332, i64* %35, align 8, !tbaa !1240

  %1334 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1329, %struct.Memory* %2)

  %1335 = load i64, i64* %11, align 8

  store i64 1, i64* %34, align 8, !tbaa !1240

  %1336 = add i64 %1335, -3583

  %1337 = add i64 %1335, 10

  %1338 = load i64, i64* %35, align 8, !tbaa !1240

  %1339 = add i64 %1338, -8

  %1340 = inttoptr i64 %1339 to i64*

  store i64 %1337, i64* %1340

  store i64 %1339, i64* %35, align 8, !tbaa !1240

  %1341 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1336, %struct.Memory* %1334)

  %1342 = load i64, i64* %11, align 8

  store i64 2, i64* %34, align 8, !tbaa !1240

  %1343 = add i64 %1342, -3593

  %1344 = add i64 %1342, 10

  %1345 = load i64, i64* %35, align 8, !tbaa !1240

  %1346 = add i64 %1345, -8

  %1347 = inttoptr i64 %1346 to i64*

  store i64 %1344, i64* %1347

  store i64 %1346, i64* %35, align 8, !tbaa !1240

  %1348 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1343, %struct.Memory* %1341)

  %1349 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1350 = add i64 %1349, -3603

  %1351 = add i64 %1349, 10

  %1352 = load i64, i64* %35, align 8, !tbaa !1240

  %1353 = add i64 %1352, -8

  %1354 = inttoptr i64 %1353 to i64*

  store i64 %1351, i64* %1354

  store i64 %1353, i64* %35, align 8, !tbaa !1240

  %1355 = tail call %struct.Memory* @sub_4009c0_timer_clear(%struct.State* nonnull %0, i64 %1350, %struct.Memory* %1348)

  %1356 = load i64, i64* %11, align 8

  store i64 3, i64* %34, align 8, !tbaa !1240

  %1357 = add i64 %1356, -3597

  %1358 = add i64 %1356, 10

  %1359 = load i64, i64* %35, align 8, !tbaa !1240

  %1360 = add i64 %1359, -8

  %1361 = inttoptr i64 %1360 to i64*

  store i64 %1358, i64* %1361

  store i64 %1360, i64* %35, align 8, !tbaa !1240

  %1362 = tail call %struct.Memory* @sub_4009d0_timer_start(%struct.State* nonnull %0, i64 %1357, %struct.Memory* %1355)

  %1363 = load i64, i64* %11, align 8

  store i8 1, i8* %22, align 1, !tbaa !1276

  %1364 = add i64 %1363, 15

  br label %block_4017f6



block_401aa4:                                     ; preds = %block_401a70, %block_401a54

  %1365 = phi i64 [ %2641, %block_401a70 ], [ %2400, %block_401a54 ]

  %1366 = phi i64 [ %2709, %block_401a70 ], [ -8388592, %block_401a54 ]

  %1367 = phi i64 [ %2708, %block_401a70 ], [ %2318, %block_401a54 ]

  %1368 = shl i64 %1366, 2

  %1369 = add i64 %2320, %1368

  %1370 = inttoptr i64 %1369 to float*

  %1371 = load float, float* %1370

  %1372 = add i64 %1369, 4

  %1373 = inttoptr i64 %1372 to float*

  %1374 = load float, float* %1373

  %1375 = add i64 %1369, 8

  %1376 = inttoptr i64 %1375 to float*

  %1377 = load float, float* %1376

  %1378 = add i64 %1369, 12

  %1379 = inttoptr i64 %1378 to float*

  %1380 = load float, float* %1379

  store float %1371, float* %2321, align 1, !tbaa !1274

  store float %1374, float* %2323, align 1, !tbaa !1274

  store float %1377, float* %2325, align 1, !tbaa !1274

  store float %1380, float* %2327, align 1, !tbaa !1274

  %1381 = add i64 %2329, %1368

  %1382 = inttoptr i64 %1381 to float*

  %1383 = load float, float* %1382

  %1384 = add i64 %1381, 4

  %1385 = inttoptr i64 %1384 to float*

  %1386 = load float, float* %1385

  %1387 = add i64 %1381, 8

  %1388 = inttoptr i64 %1387 to float*

  %1389 = load float, float* %1388

  %1390 = add i64 %1381, 12

  %1391 = inttoptr i64 %1390 to float*

  %1392 = load float, float* %1391

  store float %1383, float* %2330, align 1, !tbaa !1274

  store float %1386, float* %2332, align 1, !tbaa !1274

  store float %1389, float* %2334, align 1, !tbaa !1274

  store float %1392, float* %2336, align 1, !tbaa !1274

  %1393 = load i64, i64* %2337, align 1

  %1394 = load i64, i64* %2338, align 1

  %1395 = lshr i64 %1365, 32

  %1396 = trunc i64 %1395 to i32

  %1397 = trunc i64 %1393 to i32

  %1398 = trunc i64 %1394 to i32

  store i32 %1396, i32* %2308, align 1, !tbaa !1273

  store i32 %1397, i32* %2310, align 1, !tbaa !1273

  store i32 %1398, i32* %2312, align 1, !tbaa !1273

  store i32 %1398, i32* %2314, align 1, !tbaa !1273

  %1399 = load i64, i64* %2337, align 1

  %1400 = load i64, i64* %2311, align 1

  %1401 = load i64, i64* %2324, align 1

  %1402 = trunc i64 %1399 to i32

  %1403 = trunc i64 %1400 to i32

  %1404 = lshr i64 %1394, 32

  %1405 = trunc i64 %1404 to i32

  %1406 = trunc i64 %1401 to i32

  store i32 %1402, i32* %2308, align 1, !tbaa !1273

  store i32 %1403, i32* %2310, align 1, !tbaa !1273

  store i32 %1405, i32* %2312, align 1, !tbaa !1273

  store i32 %1406, i32* %2314, align 1, !tbaa !1273

  %1407 = load i64, i64* %2337, align 1

  %1408 = load i64, i64* %2311, align 1

  %1409 = trunc i64 %1407 to i32

  %1410 = icmp sgt i32 %1409, %1398

  %1411 = sext i1 %1410 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2339)

  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16

  store i32 %1411, i32* %2340, align 16

  %1412 = load i64, i64* %2341, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2339)

  %1413 = lshr i64 %1407, 32

  %1414 = trunc i64 %1413 to i32

  %1415 = icmp sgt i32 %1414, %1405

  %1416 = sext i1 %1415 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2339)

  store i64 %1412, i64* %2341, align 16

  store i64 0, i64* %2342, align 8

  store i32 %1416, i32* %2344, align 4

  %1417 = load i64, i64* %2341, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2339)

  %1418 = trunc i64 %1408 to i32

  %1419 = icmp sgt i32 %1418, %1406

  %1420 = sext i1 %1419 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2339)

  store i64 %1417, i64* %2341, align 16

  store i64 0, i64* %2342, align 8

  store i32 %1420, i32* %2345, align 8

  %1421 = load i64, i64* %2342, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2339)

  %1422 = lshr i64 %1408, 32

  %1423 = trunc i64 %1422 to i32

  %1424 = lshr i64 %1401, 32

  %1425 = trunc i64 %1424 to i32

  %1426 = icmp sgt i32 %1423, %1425

  %1427 = sext i1 %1426 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2339)

  store i64 %1417, i64* %2341, align 16

  store i64 %1421, i64* %2342, align 8

  store i32 %1427, i32* %2347, align 4

  %1428 = load i64, i64* %2342, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2339)

  %1429 = lshr i64 %1417, 32

  %1430 = trunc i64 %1417 to i32

  %1431 = trunc i64 %1429 to i32

  store i32 %1430, i32* %2308, align 1, !tbaa !1273

  store i32 %1431, i32* %2310, align 1, !tbaa !1273

  %1432 = trunc i64 %1428 to i32

  store i32 %1432, i32* %2312, align 1, !tbaa !1273

  %1433 = lshr i64 %1428, 32

  %1434 = trunc i64 %1433 to i32

  store i32 %1434, i32* %2314, align 1, !tbaa !1273

  %1435 = load i64, i64* %2348, align 1

  %1436 = trunc i64 %1435 to i32

  store i32 %1425, i32* %2349, align 1, !tbaa !1273

  store i32 %1398, i32* %2350, align 1, !tbaa !1273

  store i32 %1436, i32* %2351, align 1, !tbaa !1273

  store i32 %1436, i32* %2352, align 1, !tbaa !1273

  %1437 = load i64, i64* %2338, align 1

  %1438 = load i64, i64* %2324, align 1

  %1439 = load i64, i64* %2333, align 1

  %1440 = trunc i64 %1437 to i32

  %1441 = trunc i64 %1438 to i32

  %1442 = lshr i64 %1435, 32

  %1443 = trunc i64 %1442 to i32

  %1444 = trunc i64 %1439 to i32

  store i32 %1440, i32* %2349, align 1, !tbaa !1273

  store i32 %1441, i32* %2350, align 1, !tbaa !1273

  store i32 %1443, i32* %2351, align 1, !tbaa !1273

  store i32 %1444, i32* %2352, align 1, !tbaa !1273

  %1445 = load i64, i64* %2353, align 1

  %1446 = load i64, i64* %492, align 1

  %1447 = lshr i64 %1445, 32

  %1448 = load i64, i64* %2337, align 1

  %1449 = load i64, i64* %2311, align 1

  %1450 = lshr i64 %1448, 32

  %1451 = sub i64 %1445, %1448

  %1452 = sub nsw i64 %1447, %1450

  %1453 = sub i64 %1446, %1449

  %1454 = lshr i64 %1446, 32

  %1455 = lshr i64 %1449, 32

  %1456 = sub nsw i64 %1454, %1455

  %1457 = trunc i64 %1451 to i32

  %1458 = trunc i64 %1452 to i32

  store i32 %1457, i32* %2296, align 1, !tbaa !1273

  store i32 %1458, i32* %2297, align 1, !tbaa !1273

  %1459 = trunc i64 %1453 to i32

  store i32 %1459, i32* %2298, align 1, !tbaa !1273

  %1460 = trunc i64 %1456 to i32

  store i32 %1460, i32* %2299, align 1, !tbaa !1273

  %1461 = load i64, i64* %2338, align 1

  %1462 = load i64, i64* %2324, align 1

  %1463 = trunc i64 %1461 to i32

  %1464 = icmp sgt i32 %1463, %1436

  %1465 = sext i1 %1464 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2354)

  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 16

  store i32 %1465, i32* %2355, align 16

  %1466 = load i64, i64* %2356, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2354)

  %1467 = lshr i64 %1461, 32

  %1468 = trunc i64 %1467 to i32

  %1469 = icmp sgt i32 %1468, %1443

  %1470 = sext i1 %1469 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2354)

  store i64 %1466, i64* %2356, align 16

  store i64 0, i64* %2357, align 8

  store i32 %1470, i32* %2359, align 4

  %1471 = load i64, i64* %2356, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2354)

  %1472 = trunc i64 %1462 to i32

  %1473 = icmp sgt i32 %1472, %1444

  %1474 = sext i1 %1473 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2354)

  store i64 %1471, i64* %2356, align 16

  store i64 0, i64* %2357, align 8

  store i32 %1474, i32* %2360, align 8

  %1475 = load i64, i64* %2357, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2354)

  %1476 = lshr i64 %1462, 32

  %1477 = trunc i64 %1476 to i32

  %1478 = lshr i64 %1439, 32

  %1479 = trunc i64 %1478 to i32

  %1480 = icmp sgt i32 %1477, %1479

  %1481 = sext i1 %1480 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2354)

  store i64 %1471, i64* %2356, align 16

  store i64 %1475, i64* %2357, align 8

  store i32 %1481, i32* %2362, align 4

  %1482 = load i64, i64* %2357, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2354)

  %1483 = lshr i64 %1471, 32

  %1484 = trunc i64 %1471 to i32

  %1485 = trunc i64 %1483 to i32

  store i32 %1484, i32* %2349, align 1, !tbaa !1273

  store i32 %1485, i32* %2350, align 1, !tbaa !1273

  %1486 = trunc i64 %1482 to i32

  store i32 %1486, i32* %2351, align 1, !tbaa !1273

  %1487 = lshr i64 %1482, 32

  %1488 = trunc i64 %1487 to i32

  store i32 %1488, i32* %2352, align 1, !tbaa !1273

  %1489 = load i64, i64* %2363, align 1

  %1490 = load i64, i64* %2364, align 1

  %1491 = lshr i64 %1489, 32

  %1492 = load i64, i64* %2338, align 1

  %1493 = load i64, i64* %2324, align 1

  %1494 = lshr i64 %1492, 32

  %1495 = sub i64 %1489, %1492

  %1496 = sub nsw i64 %1491, %1494

  %1497 = sub i64 %1490, %1493

  %1498 = lshr i64 %1490, 32

  %1499 = lshr i64 %1493, 32

  %1500 = sub nsw i64 %1498, %1499

  %1501 = trunc i64 %1495 to i32

  %1502 = trunc i64 %1496 to i32

  store i32 %1501, i32* %2365, align 1, !tbaa !1273

  store i32 %1502, i32* %2367, align 1, !tbaa !1273

  %1503 = trunc i64 %1497 to i32

  store i32 %1503, i32* %2368, align 1, !tbaa !1273

  %1504 = trunc i64 %1500 to i32

  store i32 %1504, i32* %2370, align 1, !tbaa !1273

  %1505 = load i64, i64* %31, align 8

  %1506 = icmp eq i64 %1505, 0

  %1507 = select i1 %1506, i64 53, i64 -52

  %1508 = add i64 %1367, %1507

  br i1 %1506, label %block_401ad9, label %block_401a70



block_401ba0:                                     ; preds = %block_4018a0

  %1509 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %1510 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %1510, i64* %29, align 8, !tbaa !1240

  %1511 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %1512 = add i64 %1509, 33554432

  %1513 = add i64 %1510, -4

  %1514 = add i64 %1509, 33554436

  br label %block_401bc0



block_401c79:                                     ; preds = %block_401c44

  %1515 = load i64, i64* %756, align 1

  %1516 = load i64, i64* %757, align 1

  %1517 = lshr i64 %1515, 32

  %1518 = load i64, i64* %746, align 1

  %1519 = load i64, i64* %492, align 1

  %1520 = lshr i64 %1518, 32

  %1521 = add i64 %1518, %1515

  %1522 = add nuw nsw i64 %1520, %1517

  %1523 = add i64 %1519, %1516

  %1524 = lshr i64 %1516, 32

  %1525 = lshr i64 %1519, 32

  %1526 = add nuw nsw i64 %1525, %1524

  %1527 = trunc i64 %1521 to i32

  %1528 = trunc i64 %1522 to i32

  store i32 %1527, i32* %758, align 1, !tbaa !1273

  store i32 %1528, i32* %760, align 1, !tbaa !1273

  %1529 = trunc i64 %1523 to i32

  store i32 %1529, i32* %761, align 1, !tbaa !1273

  %1530 = trunc i64 %1526 to i32

  store i32 %1530, i32* %763, align 1, !tbaa !1273

  %1531 = bitcast %union.VectorReg* %39 to i128*

  %1532 = load i128, i128* %1531, align 1

  %1533 = lshr i128 %1532, 64

  %1534 = trunc i128 %1533 to i32

  %1535 = lshr i128 %1532, 96

  %1536 = trunc i128 %1535 to i32

  %1537 = trunc i128 %1532 to i32

  %1538 = lshr i128 %1532, 32

  %1539 = trunc i128 %1538 to i32

  store i32 %1534, i32* %689, align 1, !tbaa !1273

  store i32 %1536, i32* %690, align 1, !tbaa !1273

  store i32 %1537, i32* %691, align 1, !tbaa !1273

  store i32 %1539, i32* %692, align 1, !tbaa !1273

  %1540 = load i64, i64* %746, align 1

  %1541 = load i64, i64* %492, align 1

  %1542 = lshr i64 %1540, 32

  %1543 = trunc i128 %1532 to i64

  %1544 = load i64, i64* %757, align 1

  %1545 = lshr i64 %1543, 32

  %1546 = add i64 %1543, %1540

  %1547 = add nuw nsw i64 %1545, %1542

  %1548 = add i64 %1544, %1541

  %1549 = lshr i64 %1541, 32

  %1550 = lshr i64 %1544, 32

  %1551 = add nuw nsw i64 %1550, %1549

  %1552 = trunc i64 %1546 to i32

  %1553 = trunc i64 %1547 to i32

  store i32 %1552, i32* %689, align 1, !tbaa !1273

  store i32 %1553, i32* %690, align 1, !tbaa !1273

  %1554 = trunc i64 %1548 to i32

  store i32 %1554, i32* %691, align 1, !tbaa !1273

  %1555 = trunc i64 %1551 to i32

  store i32 %1555, i32* %692, align 1, !tbaa !1273

  %1556 = bitcast %union.VectorReg* %41 to i128*

  %1557 = load i128, i128* %1556, align 1

  %1558 = lshr i128 %1557, 96

  %1559 = trunc i128 %1558 to i32

  %1560 = lshr i128 %1557, 32

  %1561 = trunc i128 %1560 to i32

  store i32 %1559, i32* %758, align 1, !tbaa !1273

  store i32 %1561, i32* %760, align 1, !tbaa !1273

  %1562 = load i64, i64* %756, align 1

  %1563 = trunc i64 %1562 to i32

  %1564 = load i128, i128* %694, align 1

  %1565 = lshr i128 %1564, 32

  %1566 = trunc i128 %1565 to i32

  %1567 = lshr i128 %1564, 64

  %1568 = trunc i128 %1567 to i32

  %1569 = lshr i128 %1564, 96

  %1570 = trunc i128 %1569 to i32

  store i32 %1566, i32* %758, align 1, !tbaa !1273

  store i32 %1566, i32* %760, align 1, !tbaa !1273

  store i32 %1568, i32* %761, align 1, !tbaa !1273

  store i32 %1570, i32* %763, align 1, !tbaa !1273

  %1571 = load i64, i64* %756, align 1

  %1572 = load i64, i64* %757, align 1

  %1573 = lshr i64 %1571, 32

  %1574 = trunc i128 %1564 to i64

  %1575 = load i64, i64* %492, align 1

  %1576 = lshr i64 %1574, 32

  %1577 = add i64 %1574, %1571

  %1578 = add nuw nsw i64 %1576, %1573

  %1579 = add i64 %1575, %1572

  %1580 = lshr i64 %1572, 32

  %1581 = lshr i64 %1575, 32

  %1582 = add nuw nsw i64 %1581, %1580

  %1583 = trunc i64 %1577 to i32

  %1584 = trunc i64 %1578 to i32

  store i32 %1583, i32* %758, align 1, !tbaa !1273

  store i32 %1584, i32* %760, align 1, !tbaa !1273

  %1585 = trunc i64 %1579 to i32

  store i32 %1585, i32* %761, align 1, !tbaa !1273

  %1586 = trunc i64 %1582 to i32

  store i32 %1586, i32* %763, align 1, !tbaa !1273

  %1587 = load i64, i64* %756, align 1

  %1588 = load i64, i64* %29, align 8

  %1589 = add i64 %1588, 33554404

  %1590 = inttoptr i64 %1589 to i32*

  %1591 = load i32, i32* %1590

  %1592 = zext i32 %1591 to i64

  store i64 %1592, i64* %33, align 8, !tbaa !1240

  %1593 = add i64 %1588, 33554408

  %1594 = inttoptr i64 %1593 to i32*

  %1595 = load i32, i32* %1594

  %1596 = zext i32 %1595 to i64

  store i64 %1596, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %1597 = sub i32 %1563, %1591

  %1598 = icmp eq i32 %1597, 0

  %1599 = lshr i32 %1597, 31

  %1600 = lshr i32 %1563, 31

  %1601 = lshr i32 %1591, 31

  %1602 = xor i32 %1601, %1600

  %1603 = xor i32 %1599, %1600

  %1604 = add nuw nsw i32 %1603, %1602

  %1605 = icmp eq i32 %1604, 2

  %1606 = icmp ne i32 %1599, 0

  %1607 = xor i1 %1605, %1606

  %1608 = or i1 %1598, %1607

  %1609 = xor i1 %1608, true

  %1610 = zext i1 %1609 to i8

  store i8 %1610, i8* %20, align 1, !tbaa !1276

  %1611 = load i64, i64* %36, align 8

  %1612 = add i64 %1587, %1611

  %1613 = and i64 %1612, 4294967295

  store i64 %1613, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %1614 = load i32, i32* %26, align 4

  %1615 = load i32, i32* %27, align 4

  %1616 = sub i32 %1614, %1615

  %1617 = icmp eq i32 %1616, 0

  %1618 = lshr i32 %1616, 31

  %1619 = lshr i32 %1614, 31

  %1620 = lshr i32 %1615, 31

  %1621 = xor i32 %1620, %1619

  %1622 = xor i32 %1618, %1619

  %1623 = add nuw nsw i32 %1622, %1621

  %1624 = icmp eq i32 %1623, 2

  %1625 = icmp ne i32 %1618, 0

  %1626 = xor i1 %1624, %1625

  %1627 = or i1 %1617, %1626

  %1628 = xor i1 %1627, true

  %1629 = zext i1 %1628 to i8

  store i8 %1629, i8* %14, align 1, !tbaa !1276

  %1630 = load i64, i64* %31, align 8

  %1631 = load i32, i32* %28, align 4

  %1632 = trunc i64 %1630 to i32

  %1633 = add i32 %1631, %1632

  %1634 = zext i32 %1633 to i64

  store i64 %1634, i64* %31, align 8, !tbaa !1240

  %1635 = load i64, i64* %29, align 8

  %1636 = add i64 %1635, 33554412

  %1637 = inttoptr i64 %1636 to i32*

  %1638 = load i32, i32* %1637

  %1639 = zext i32 %1638 to i64

  store i64 %1639, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %1640 = load i32, i32* %27, align 4

  %1641 = sub i32 %1640, %1638

  %1642 = icmp eq i32 %1641, 0

  %1643 = lshr i32 %1641, 31

  %1644 = lshr i32 %1640, 31

  %1645 = lshr i32 %1638, 31

  %1646 = xor i32 %1645, %1644

  %1647 = xor i32 %1643, %1644

  %1648 = add nuw nsw i32 %1647, %1646

  %1649 = icmp eq i32 %1648, 2

  %1650 = icmp ne i32 %1643, 0

  %1651 = xor i1 %1649, %1650

  %1652 = or i1 %1642, %1651

  %1653 = xor i1 %1652, true

  %1654 = zext i1 %1653 to i8

  store i8 %1654, i8* %16, align 1, !tbaa !1276

  %1655 = load i64, i64* %33, align 8

  %1656 = load i32, i32* %23, align 4

  %1657 = trunc i64 %1655 to i32

  %1658 = add i32 %1656, %1657

  %1659 = zext i32 %1658 to i64

  store i64 %1659, i64* %33, align 8, !tbaa !1240

  %1660 = load i64, i64* %29, align 8

  %1661 = add i64 %1660, 33554416

  %1662 = inttoptr i64 %1661 to i32*

  %1663 = load i32, i32* %1662

  %1664 = zext i32 %1663 to i64

  store i64 %1664, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  %1665 = load i32, i32* %25, align 4

  %1666 = sub i32 %1665, %1663

  %1667 = icmp eq i32 %1666, 0

  %1668 = lshr i32 %1666, 31

  %1669 = lshr i32 %1665, 31

  %1670 = lshr i32 %1663, 31

  %1671 = xor i32 %1670, %1669

  %1672 = xor i32 %1668, %1669

  %1673 = add nuw nsw i32 %1672, %1671

  %1674 = icmp eq i32 %1673, 2

  %1675 = icmp ne i32 %1668, 0

  %1676 = xor i1 %1674, %1675

  %1677 = or i1 %1667, %1676

  %1678 = xor i1 %1677, true

  %1679 = zext i1 %1678 to i8

  store i8 %1679, i8* %18, align 1, !tbaa !1276

  %1680 = load i64, i64* %34, align 8

  %1681 = load i32, i32* %26, align 4

  %1682 = trunc i64 %1680 to i32

  %1683 = add i32 %1681, %1682

  %1684 = zext i32 %1683 to i64

  store i64 %1684, i64* %34, align 8, !tbaa !1240

  %1685 = load i64, i64* %29, align 8

  %1686 = add i64 %1685, 33554420

  %1687 = inttoptr i64 %1686 to i32*

  %1688 = load i32, i32* %1687

  %1689 = zext i32 %1688 to i64

  store i64 %1689, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %1690 = load i32, i32* %23, align 4

  %1691 = sub i32 %1690, %1688

  %1692 = icmp eq i32 %1691, 0

  %1693 = lshr i32 %1691, 31

  %1694 = lshr i32 %1690, 31

  %1695 = lshr i32 %1688, 31

  %1696 = xor i32 %1695, %1694

  %1697 = xor i32 %1693, %1694

  %1698 = add nuw nsw i32 %1697, %1696

  %1699 = icmp eq i32 %1698, 2

  %1700 = icmp ne i32 %1693, 0

  %1701 = xor i1 %1699, %1700

  %1702 = or i1 %1692, %1701

  %1703 = xor i1 %1702, true

  %1704 = zext i1 %1703 to i8

  store i8 %1704, i8* %16, align 1, !tbaa !1276

  %1705 = load i64, i64* %33, align 8

  %1706 = load i32, i32* %27, align 4

  %1707 = trunc i64 %1705 to i32

  %1708 = add i32 %1706, %1707

  %1709 = zext i32 %1708 to i64

  store i64 %1709, i64* %33, align 8, !tbaa !1240

  %1710 = load i64, i64* %29, align 8

  %1711 = add i64 %1710, 33554424

  %1712 = inttoptr i64 %1711 to i32*

  %1713 = load i32, i32* %1712

  %1714 = zext i32 %1713 to i64

  store i64 %1714, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %1715 = load i32, i32* %25, align 4

  %1716 = sub i32 %1715, %1713

  %1717 = icmp eq i32 %1716, 0

  %1718 = lshr i32 %1716, 31

  %1719 = lshr i32 %1715, 31

  %1720 = lshr i32 %1713, 31

  %1721 = xor i32 %1720, %1719

  %1722 = xor i32 %1718, %1719

  %1723 = add nuw nsw i32 %1722, %1721

  %1724 = icmp eq i32 %1723, 2

  %1725 = icmp ne i32 %1718, 0

  %1726 = xor i1 %1724, %1725

  %1727 = or i1 %1717, %1726

  %1728 = xor i1 %1727, true

  %1729 = zext i1 %1728 to i8

  store i8 %1729, i8* %20, align 1, !tbaa !1276

  %1730 = load i64, i64* %36, align 8

  %1731 = load i32, i32* %26, align 4

  %1732 = trunc i64 %1730 to i32

  %1733 = add i32 %1731, %1732

  %1734 = zext i32 %1733 to i64

  store i64 %1734, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %1735 = load i32, i32* %27, align 4

  %1736 = load i64, i64* %29, align 8

  %1737 = add i64 %1736, 33554428

  %1738 = inttoptr i64 %1737 to i32*

  %1739 = load i32, i32* %1738

  %1740 = sub i32 %1735, %1739

  %1741 = icmp eq i32 %1740, 0

  %1742 = lshr i32 %1740, 31

  %1743 = lshr i32 %1735, 31

  %1744 = lshr i32 %1739, 31

  %1745 = xor i32 %1744, %1743

  %1746 = xor i32 %1742, %1743

  %1747 = add nuw nsw i32 %1746, %1745

  %1748 = icmp eq i32 %1747, 2

  %1749 = icmp ne i32 %1742, 0

  %1750 = xor i1 %1748, %1749

  %1751 = or i1 %1741, %1750

  %1752 = xor i1 %1751, true

  %1753 = zext i1 %1752 to i8

  store i8 %1753, i8* %14, align 1, !tbaa !1276

  %1754 = load i64, i64* %31, align 8

  %1755 = load i32, i32* %28, align 4

  %1756 = trunc i64 %1754 to i32

  %1757 = add i32 %1755, %1756

  %1758 = zext i32 %1757 to i64

  store i64 %1758, i64* %31, align 8, !tbaa !1240

  %1759 = icmp eq i32 %1757, 0

  %1760 = select i1 %1759, i64 202, i64 145

  %1761 = add i64 %1940, %1760

  br i1 %1759, label %block_401d43, label %block_401d0a



block_401bc0:                                     ; preds = %block_401bc0, %block_401ba0

  %1762 = phi i64 [ -8388608, %block_401ba0 ], [ %1794, %block_401bc0 ]

  %1763 = phi %struct.Memory* [ %1312, %block_401ba0 ], [ %1763, %block_401bc0 ]

  %1764 = shl i64 %1762, 2

  %1765 = add i64 %1512, %1764

  %1766 = inttoptr i64 %1765 to i32*

  %1767 = load i32, i32* %1766

  %1768 = sext i32 %1767 to i64

  %1769 = shl nsw i64 %1768, 2

  %1770 = add i64 %1769, %1511

  %1771 = inttoptr i64 %1770 to i32*

  %1772 = load i32, i32* %1771

  %1773 = sext i32 %1772 to i64

  %1774 = add i32 %1772, -1

  %1775 = inttoptr i64 %1770 to i32*

  store i32 %1774, i32* %1775

  %1776 = shl nsw i64 %1773, 2

  %1777 = add i64 %1513, %1776

  %1778 = inttoptr i64 %1777 to i32*

  store i32 %1767, i32* %1778

  %1779 = add i64 %1514, %1764

  %1780 = inttoptr i64 %1779 to i32*

  %1781 = load i32, i32* %1780

  %1782 = sext i32 %1781 to i64

  %1783 = shl nsw i64 %1782, 2

  %1784 = add i64 %1783, %1511

  %1785 = inttoptr i64 %1784 to i32*

  %1786 = load i32, i32* %1785

  %1787 = sext i32 %1786 to i64

  %1788 = add nsw i64 %1787, -1

  %1789 = trunc i64 %1788 to i32

  %1790 = inttoptr i64 %1784 to i32*

  store i32 %1789, i32* %1790

  %1791 = shl nsw i64 %1787, 2

  %1792 = add i64 %1513, %1791

  %1793 = inttoptr i64 %1792 to i32*

  store i32 %1781, i32* %1793

  %1794 = add i64 %1762, 2

  %1795 = icmp eq i64 %1794, 0

  br i1 %1795, label %block_401bf4, label %block_401bc0



block_401b9b:                                     ; preds = %block_401b6e

  %1796 = add i64 %671, 446

  br label %block_401d59



block_401c44:                                     ; preds = %block_401c10, %block_401bf4

  %1797 = phi i64 [ %2473, %block_401c10 ], [ %793, %block_401bf4 ]

  %1798 = phi i64 [ %2541, %block_401c10 ], [ -8388592, %block_401bf4 ]

  %1799 = phi i64 [ %2540, %block_401c10 ], [ %711, %block_401bf4 ]

  %1800 = shl i64 %1798, 2

  %1801 = add i64 %713, %1800

  %1802 = inttoptr i64 %1801 to float*

  %1803 = load float, float* %1802

  %1804 = add i64 %1801, 4

  %1805 = inttoptr i64 %1804 to float*

  %1806 = load float, float* %1805

  %1807 = add i64 %1801, 8

  %1808 = inttoptr i64 %1807 to float*

  %1809 = load float, float* %1808

  %1810 = add i64 %1801, 12

  %1811 = inttoptr i64 %1810 to float*

  %1812 = load float, float* %1811

  store float %1803, float* %714, align 1, !tbaa !1274

  store float %1806, float* %716, align 1, !tbaa !1274

  store float %1809, float* %718, align 1, !tbaa !1274

  store float %1812, float* %720, align 1, !tbaa !1274

  %1813 = add i64 %722, %1800

  %1814 = inttoptr i64 %1813 to float*

  %1815 = load float, float* %1814

  %1816 = add i64 %1813, 4

  %1817 = inttoptr i64 %1816 to float*

  %1818 = load float, float* %1817

  %1819 = add i64 %1813, 8

  %1820 = inttoptr i64 %1819 to float*

  %1821 = load float, float* %1820

  %1822 = add i64 %1813, 12

  %1823 = inttoptr i64 %1822 to float*

  %1824 = load float, float* %1823

  store float %1815, float* %723, align 1, !tbaa !1274

  store float %1818, float* %725, align 1, !tbaa !1274

  store float %1821, float* %727, align 1, !tbaa !1274

  store float %1824, float* %729, align 1, !tbaa !1274

  %1825 = load i64, i64* %730, align 1

  %1826 = load i64, i64* %731, align 1

  %1827 = lshr i64 %1797, 32

  %1828 = trunc i64 %1827 to i32

  %1829 = trunc i64 %1825 to i32

  %1830 = trunc i64 %1826 to i32

  store i32 %1828, i32* %701, align 1, !tbaa !1273

  store i32 %1829, i32* %703, align 1, !tbaa !1273

  store i32 %1830, i32* %705, align 1, !tbaa !1273

  store i32 %1830, i32* %707, align 1, !tbaa !1273

  %1831 = load i64, i64* %730, align 1

  %1832 = load i64, i64* %704, align 1

  %1833 = load i64, i64* %717, align 1

  %1834 = trunc i64 %1831 to i32

  %1835 = trunc i64 %1832 to i32

  %1836 = lshr i64 %1826, 32

  %1837 = trunc i64 %1836 to i32

  %1838 = trunc i64 %1833 to i32

  store i32 %1834, i32* %701, align 1, !tbaa !1273

  store i32 %1835, i32* %703, align 1, !tbaa !1273

  store i32 %1837, i32* %705, align 1, !tbaa !1273

  store i32 %1838, i32* %707, align 1, !tbaa !1273

  %1839 = load i64, i64* %730, align 1

  %1840 = load i64, i64* %704, align 1

  %1841 = trunc i64 %1839 to i32

  %1842 = icmp sgt i32 %1841, %1830

  %1843 = sext i1 %1842 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %732)

  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 16

  store i32 %1843, i32* %733, align 16

  %1844 = load i64, i64* %734, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %732)

  %1845 = lshr i64 %1839, 32

  %1846 = trunc i64 %1845 to i32

  %1847 = icmp sgt i32 %1846, %1837

  %1848 = sext i1 %1847 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %732)

  store i64 %1844, i64* %734, align 16

  store i64 0, i64* %735, align 8

  store i32 %1848, i32* %737, align 4

  %1849 = load i64, i64* %734, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %732)

  %1850 = trunc i64 %1840 to i32

  %1851 = icmp sgt i32 %1850, %1838

  %1852 = sext i1 %1851 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %732)

  store i64 %1849, i64* %734, align 16

  store i64 0, i64* %735, align 8

  store i32 %1852, i32* %738, align 8

  %1853 = load i64, i64* %735, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %732)

  %1854 = lshr i64 %1840, 32

  %1855 = trunc i64 %1854 to i32

  %1856 = lshr i64 %1833, 32

  %1857 = trunc i64 %1856 to i32

  %1858 = icmp sgt i32 %1855, %1857

  %1859 = sext i1 %1858 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %732)

  store i64 %1849, i64* %734, align 16

  store i64 %1853, i64* %735, align 8

  store i32 %1859, i32* %740, align 4

  %1860 = load i64, i64* %735, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %732)

  %1861 = lshr i64 %1849, 32

  %1862 = trunc i64 %1849 to i32

  %1863 = trunc i64 %1861 to i32

  store i32 %1862, i32* %701, align 1, !tbaa !1273

  store i32 %1863, i32* %703, align 1, !tbaa !1273

  %1864 = trunc i64 %1860 to i32

  store i32 %1864, i32* %705, align 1, !tbaa !1273

  %1865 = lshr i64 %1860, 32

  %1866 = trunc i64 %1865 to i32

  store i32 %1866, i32* %707, align 1, !tbaa !1273

  %1867 = load i64, i64* %741, align 1

  %1868 = trunc i64 %1867 to i32

  store i32 %1857, i32* %742, align 1, !tbaa !1273

  store i32 %1830, i32* %743, align 1, !tbaa !1273

  store i32 %1868, i32* %744, align 1, !tbaa !1273

  store i32 %1868, i32* %745, align 1, !tbaa !1273

  %1869 = load i64, i64* %731, align 1

  %1870 = load i64, i64* %717, align 1

  %1871 = load i64, i64* %726, align 1

  %1872 = trunc i64 %1869 to i32

  %1873 = trunc i64 %1870 to i32

  %1874 = lshr i64 %1867, 32

  %1875 = trunc i64 %1874 to i32

  %1876 = trunc i64 %1871 to i32

  store i32 %1872, i32* %742, align 1, !tbaa !1273

  store i32 %1873, i32* %743, align 1, !tbaa !1273

  store i32 %1875, i32* %744, align 1, !tbaa !1273

  store i32 %1876, i32* %745, align 1, !tbaa !1273

  %1877 = load i64, i64* %746, align 1

  %1878 = load i64, i64* %492, align 1

  %1879 = lshr i64 %1877, 32

  %1880 = load i64, i64* %730, align 1

  %1881 = load i64, i64* %704, align 1

  %1882 = lshr i64 %1880, 32

  %1883 = sub i64 %1877, %1880

  %1884 = sub nsw i64 %1879, %1882

  %1885 = sub i64 %1878, %1881

  %1886 = lshr i64 %1878, 32

  %1887 = lshr i64 %1881, 32

  %1888 = sub nsw i64 %1886, %1887

  %1889 = trunc i64 %1883 to i32

  %1890 = trunc i64 %1884 to i32

  store i32 %1889, i32* %689, align 1, !tbaa !1273

  store i32 %1890, i32* %690, align 1, !tbaa !1273

  %1891 = trunc i64 %1885 to i32

  store i32 %1891, i32* %691, align 1, !tbaa !1273

  %1892 = trunc i64 %1888 to i32

  store i32 %1892, i32* %692, align 1, !tbaa !1273

  %1893 = load i64, i64* %731, align 1

  %1894 = load i64, i64* %717, align 1

  %1895 = trunc i64 %1893 to i32

  %1896 = icmp sgt i32 %1895, %1868

  %1897 = sext i1 %1896 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %747)

  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 16

  store i32 %1897, i32* %748, align 16

  %1898 = load i64, i64* %749, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %747)

  %1899 = lshr i64 %1893, 32

  %1900 = trunc i64 %1899 to i32

  %1901 = icmp sgt i32 %1900, %1875

  %1902 = sext i1 %1901 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %747)

  store i64 %1898, i64* %749, align 16

  store i64 0, i64* %750, align 8

  store i32 %1902, i32* %752, align 4

  %1903 = load i64, i64* %749, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %747)

  %1904 = trunc i64 %1894 to i32

  %1905 = icmp sgt i32 %1904, %1876

  %1906 = sext i1 %1905 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %747)

  store i64 %1903, i64* %749, align 16

  store i64 0, i64* %750, align 8

  store i32 %1906, i32* %753, align 8

  %1907 = load i64, i64* %750, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %747)

  %1908 = lshr i64 %1894, 32

  %1909 = trunc i64 %1908 to i32

  %1910 = lshr i64 %1871, 32

  %1911 = trunc i64 %1910 to i32

  %1912 = icmp sgt i32 %1909, %1911

  %1913 = sext i1 %1912 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %747)

  store i64 %1903, i64* %749, align 16

  store i64 %1907, i64* %750, align 8

  store i32 %1913, i32* %755, align 4

  %1914 = load i64, i64* %750, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %747)

  %1915 = lshr i64 %1903, 32

  %1916 = trunc i64 %1903 to i32

  %1917 = trunc i64 %1915 to i32

  store i32 %1916, i32* %742, align 1, !tbaa !1273

  store i32 %1917, i32* %743, align 1, !tbaa !1273

  %1918 = trunc i64 %1914 to i32

  store i32 %1918, i32* %744, align 1, !tbaa !1273

  %1919 = lshr i64 %1914, 32

  %1920 = trunc i64 %1919 to i32

  store i32 %1920, i32* %745, align 1, !tbaa !1273

  %1921 = load i64, i64* %756, align 1

  %1922 = load i64, i64* %757, align 1

  %1923 = lshr i64 %1921, 32

  %1924 = load i64, i64* %731, align 1

  %1925 = load i64, i64* %717, align 1

  %1926 = lshr i64 %1924, 32

  %1927 = sub i64 %1921, %1924

  %1928 = sub nsw i64 %1923, %1926

  %1929 = sub i64 %1922, %1925

  %1930 = lshr i64 %1922, 32

  %1931 = lshr i64 %1925, 32

  %1932 = sub nsw i64 %1930, %1931

  %1933 = trunc i64 %1927 to i32

  %1934 = trunc i64 %1928 to i32

  store i32 %1933, i32* %758, align 1, !tbaa !1273

  store i32 %1934, i32* %760, align 1, !tbaa !1273

  %1935 = trunc i64 %1929 to i32

  store i32 %1935, i32* %761, align 1, !tbaa !1273

  %1936 = trunc i64 %1932 to i32

  store i32 %1936, i32* %763, align 1, !tbaa !1273

  %1937 = load i64, i64* %31, align 8

  %1938 = icmp eq i64 %1937, 0

  %1939 = select i1 %1938, i64 53, i64 -52

  %1940 = add i64 %1799, %1939

  br i1 %1938, label %block_401c79, label %block_401c10



block_401ad9:                                     ; preds = %block_401aa4

  %1941 = load i64, i64* %2363, align 1

  %1942 = load i64, i64* %2364, align 1

  %1943 = lshr i64 %1941, 32

  %1944 = load i64, i64* %2353, align 1

  %1945 = load i64, i64* %492, align 1

  %1946 = lshr i64 %1944, 32

  %1947 = add i64 %1944, %1941

  %1948 = add nuw nsw i64 %1946, %1943

  %1949 = add i64 %1945, %1942

  %1950 = lshr i64 %1942, 32

  %1951 = lshr i64 %1945, 32

  %1952 = add nuw nsw i64 %1951, %1950

  %1953 = trunc i64 %1947 to i32

  %1954 = trunc i64 %1948 to i32

  store i32 %1953, i32* %2365, align 1, !tbaa !1273

  store i32 %1954, i32* %2367, align 1, !tbaa !1273

  %1955 = trunc i64 %1949 to i32

  store i32 %1955, i32* %2368, align 1, !tbaa !1273

  %1956 = trunc i64 %1952 to i32

  store i32 %1956, i32* %2370, align 1, !tbaa !1273

  %1957 = bitcast %union.VectorReg* %39 to i128*

  %1958 = load i128, i128* %1957, align 1

  %1959 = lshr i128 %1958, 64

  %1960 = trunc i128 %1959 to i32

  %1961 = lshr i128 %1958, 96

  %1962 = trunc i128 %1961 to i32

  %1963 = trunc i128 %1958 to i32

  %1964 = lshr i128 %1958, 32

  %1965 = trunc i128 %1964 to i32

  store i32 %1960, i32* %2296, align 1, !tbaa !1273

  store i32 %1962, i32* %2297, align 1, !tbaa !1273

  store i32 %1963, i32* %2298, align 1, !tbaa !1273

  store i32 %1965, i32* %2299, align 1, !tbaa !1273

  %1966 = load i64, i64* %2353, align 1

  %1967 = load i64, i64* %492, align 1

  %1968 = lshr i64 %1966, 32

  %1969 = trunc i128 %1958 to i64

  %1970 = load i64, i64* %2364, align 1

  %1971 = lshr i64 %1969, 32

  %1972 = add i64 %1969, %1966

  %1973 = add nuw nsw i64 %1971, %1968

  %1974 = add i64 %1970, %1967

  %1975 = lshr i64 %1967, 32

  %1976 = lshr i64 %1970, 32

  %1977 = add nuw nsw i64 %1976, %1975

  %1978 = trunc i64 %1972 to i32

  %1979 = trunc i64 %1973 to i32

  store i32 %1978, i32* %2296, align 1, !tbaa !1273

  store i32 %1979, i32* %2297, align 1, !tbaa !1273

  %1980 = trunc i64 %1974 to i32

  store i32 %1980, i32* %2298, align 1, !tbaa !1273

  %1981 = trunc i64 %1977 to i32

  store i32 %1981, i32* %2299, align 1, !tbaa !1273

  %1982 = bitcast %union.VectorReg* %41 to i128*

  %1983 = load i128, i128* %1982, align 1

  %1984 = lshr i128 %1983, 96

  %1985 = trunc i128 %1984 to i32

  %1986 = lshr i128 %1983, 32

  %1987 = trunc i128 %1986 to i32

  store i32 %1985, i32* %2365, align 1, !tbaa !1273

  store i32 %1987, i32* %2367, align 1, !tbaa !1273

  %1988 = load i64, i64* %2363, align 1

  %1989 = trunc i64 %1988 to i32

  %1990 = load i128, i128* %2301, align 1

  %1991 = lshr i128 %1990, 32

  %1992 = trunc i128 %1991 to i32

  %1993 = lshr i128 %1990, 64

  %1994 = trunc i128 %1993 to i32

  %1995 = lshr i128 %1990, 96

  %1996 = trunc i128 %1995 to i32

  store i32 %1992, i32* %2365, align 1, !tbaa !1273

  store i32 %1992, i32* %2367, align 1, !tbaa !1273

  store i32 %1994, i32* %2368, align 1, !tbaa !1273

  store i32 %1996, i32* %2370, align 1, !tbaa !1273

  %1997 = load i64, i64* %2363, align 1

  %1998 = load i64, i64* %2364, align 1

  %1999 = lshr i64 %1997, 32

  %2000 = trunc i128 %1990 to i64

  %2001 = load i64, i64* %492, align 1

  %2002 = lshr i64 %2000, 32

  %2003 = add i64 %2000, %1997

  %2004 = add nuw nsw i64 %2002, %1999

  %2005 = add i64 %2001, %1998

  %2006 = lshr i64 %1998, 32

  %2007 = lshr i64 %2001, 32

  %2008 = add nuw nsw i64 %2007, %2006

  %2009 = trunc i64 %2003 to i32

  %2010 = trunc i64 %2004 to i32

  store i32 %2009, i32* %2365, align 1, !tbaa !1273

  store i32 %2010, i32* %2367, align 1, !tbaa !1273

  %2011 = trunc i64 %2005 to i32

  store i32 %2011, i32* %2368, align 1, !tbaa !1273

  %2012 = trunc i64 %2008 to i32

  store i32 %2012, i32* %2370, align 1, !tbaa !1273

  %2013 = load i64, i64* %2363, align 1

  %2014 = load i64, i64* %29, align 8

  %2015 = add i64 %2014, 33554404

  %2016 = inttoptr i64 %2015 to i32*

  %2017 = load i32, i32* %2016

  %2018 = zext i32 %2017 to i64

  store i64 %2018, i64* %33, align 8, !tbaa !1240

  %2019 = add i64 %2014, 33554408

  %2020 = inttoptr i64 %2019 to i32*

  %2021 = load i32, i32* %2020

  %2022 = zext i32 %2021 to i64

  store i64 %2022, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2023 = sub i32 %1989, %2017

  %2024 = icmp eq i32 %2023, 0

  %2025 = lshr i32 %2023, 31

  %2026 = lshr i32 %1989, 31

  %2027 = lshr i32 %2017, 31

  %2028 = xor i32 %2027, %2026

  %2029 = xor i32 %2025, %2026

  %2030 = add nuw nsw i32 %2029, %2028

  %2031 = icmp eq i32 %2030, 2

  %2032 = icmp ne i32 %2025, 0

  %2033 = xor i1 %2031, %2032

  %2034 = or i1 %2024, %2033

  %2035 = xor i1 %2034, true

  %2036 = zext i1 %2035 to i8

  store i8 %2036, i8* %20, align 1, !tbaa !1276

  %2037 = load i64, i64* %36, align 8

  %2038 = add i64 %2013, %2037

  %2039 = and i64 %2038, 4294967295

  store i64 %2039, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2040 = load i32, i32* %26, align 4

  %2041 = load i32, i32* %27, align 4

  %2042 = sub i32 %2040, %2041

  %2043 = icmp eq i32 %2042, 0

  %2044 = lshr i32 %2042, 31

  %2045 = lshr i32 %2040, 31

  %2046 = lshr i32 %2041, 31

  %2047 = xor i32 %2046, %2045

  %2048 = xor i32 %2044, %2045

  %2049 = add nuw nsw i32 %2048, %2047

  %2050 = icmp eq i32 %2049, 2

  %2051 = icmp ne i32 %2044, 0

  %2052 = xor i1 %2050, %2051

  %2053 = or i1 %2043, %2052

  %2054 = xor i1 %2053, true

  %2055 = zext i1 %2054 to i8

  store i8 %2055, i8* %14, align 1, !tbaa !1276

  %2056 = load i64, i64* %31, align 8

  %2057 = load i32, i32* %28, align 4

  %2058 = trunc i64 %2056 to i32

  %2059 = add i32 %2057, %2058

  %2060 = zext i32 %2059 to i64

  store i64 %2060, i64* %31, align 8, !tbaa !1240

  %2061 = load i64, i64* %29, align 8

  %2062 = add i64 %2061, 33554412

  %2063 = inttoptr i64 %2062 to i32*

  %2064 = load i32, i32* %2063

  %2065 = zext i32 %2064 to i64

  store i64 %2065, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2066 = load i32, i32* %27, align 4

  %2067 = sub i32 %2066, %2064

  %2068 = icmp eq i32 %2067, 0

  %2069 = lshr i32 %2067, 31

  %2070 = lshr i32 %2066, 31

  %2071 = lshr i32 %2064, 31

  %2072 = xor i32 %2071, %2070

  %2073 = xor i32 %2069, %2070

  %2074 = add nuw nsw i32 %2073, %2072

  %2075 = icmp eq i32 %2074, 2

  %2076 = icmp ne i32 %2069, 0

  %2077 = xor i1 %2075, %2076

  %2078 = or i1 %2068, %2077

  %2079 = xor i1 %2078, true

  %2080 = zext i1 %2079 to i8

  store i8 %2080, i8* %16, align 1, !tbaa !1276

  %2081 = load i64, i64* %33, align 8

  %2082 = load i32, i32* %23, align 4

  %2083 = trunc i64 %2081 to i32

  %2084 = add i32 %2082, %2083

  %2085 = zext i32 %2084 to i64

  store i64 %2085, i64* %33, align 8, !tbaa !1240

  %2086 = load i64, i64* %29, align 8

  %2087 = add i64 %2086, 33554416

  %2088 = inttoptr i64 %2087 to i32*

  %2089 = load i32, i32* %2088

  %2090 = zext i32 %2089 to i64

  store i64 %2090, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %34, align 8, !tbaa !1240

  %2091 = load i32, i32* %25, align 4

  %2092 = sub i32 %2091, %2089

  %2093 = icmp eq i32 %2092, 0

  %2094 = lshr i32 %2092, 31

  %2095 = lshr i32 %2091, 31

  %2096 = lshr i32 %2089, 31

  %2097 = xor i32 %2096, %2095

  %2098 = xor i32 %2094, %2095

  %2099 = add nuw nsw i32 %2098, %2097

  %2100 = icmp eq i32 %2099, 2

  %2101 = icmp ne i32 %2094, 0

  %2102 = xor i1 %2100, %2101

  %2103 = or i1 %2093, %2102

  %2104 = xor i1 %2103, true

  %2105 = zext i1 %2104 to i8

  store i8 %2105, i8* %18, align 1, !tbaa !1276

  %2106 = load i64, i64* %34, align 8

  %2107 = load i32, i32* %26, align 4

  %2108 = trunc i64 %2106 to i32

  %2109 = add i32 %2107, %2108

  %2110 = zext i32 %2109 to i64

  store i64 %2110, i64* %34, align 8, !tbaa !1240

  %2111 = load i64, i64* %29, align 8

  %2112 = add i64 %2111, 33554420

  %2113 = inttoptr i64 %2112 to i32*

  %2114 = load i32, i32* %2113

  %2115 = zext i32 %2114 to i64

  store i64 %2115, i64* %32, align 8, !tbaa !1240

  store i64 0, i64* %33, align 8, !tbaa !1240

  %2116 = load i32, i32* %23, align 4

  %2117 = sub i32 %2116, %2114

  %2118 = icmp eq i32 %2117, 0

  %2119 = lshr i32 %2117, 31

  %2120 = lshr i32 %2116, 31

  %2121 = lshr i32 %2114, 31

  %2122 = xor i32 %2121, %2120

  %2123 = xor i32 %2119, %2120

  %2124 = add nuw nsw i32 %2123, %2122

  %2125 = icmp eq i32 %2124, 2

  %2126 = icmp ne i32 %2119, 0

  %2127 = xor i1 %2125, %2126

  %2128 = or i1 %2118, %2127

  %2129 = xor i1 %2128, true

  %2130 = zext i1 %2129 to i8

  store i8 %2130, i8* %16, align 1, !tbaa !1276

  %2131 = load i64, i64* %33, align 8

  %2132 = load i32, i32* %27, align 4

  %2133 = trunc i64 %2131 to i32

  %2134 = add i32 %2132, %2133

  %2135 = zext i32 %2134 to i64

  store i64 %2135, i64* %33, align 8, !tbaa !1240

  %2136 = load i64, i64* %29, align 8

  %2137 = add i64 %2136, 33554424

  %2138 = inttoptr i64 %2137 to i32*

  %2139 = load i32, i32* %2138

  %2140 = zext i32 %2139 to i64

  store i64 %2140, i64* %34, align 8, !tbaa !1240

  store i64 0, i64* %36, align 8, !tbaa !1240

  %2141 = load i32, i32* %25, align 4

  %2142 = sub i32 %2141, %2139

  %2143 = icmp eq i32 %2142, 0

  %2144 = lshr i32 %2142, 31

  %2145 = lshr i32 %2141, 31

  %2146 = lshr i32 %2139, 31

  %2147 = xor i32 %2146, %2145

  %2148 = xor i32 %2144, %2145

  %2149 = add nuw nsw i32 %2148, %2147

  %2150 = icmp eq i32 %2149, 2

  %2151 = icmp ne i32 %2144, 0

  %2152 = xor i1 %2150, %2151

  %2153 = or i1 %2143, %2152

  %2154 = xor i1 %2153, true

  %2155 = zext i1 %2154 to i8

  store i8 %2155, i8* %20, align 1, !tbaa !1276

  %2156 = load i64, i64* %36, align 8

  %2157 = load i32, i32* %26, align 4

  %2158 = trunc i64 %2156 to i32

  %2159 = add i32 %2157, %2158

  %2160 = zext i32 %2159 to i64

  store i64 %2160, i64* %36, align 8, !tbaa !1240

  store i64 0, i64* %31, align 8, !tbaa !1240

  %2161 = load i32, i32* %27, align 4

  %2162 = load i64, i64* %29, align 8

  %2163 = add i64 %2162, 33554428

  %2164 = inttoptr i64 %2163 to i32*

  %2165 = load i32, i32* %2164

  %2166 = sub i32 %2161, %2165

  %2167 = icmp eq i32 %2166, 0

  %2168 = lshr i32 %2166, 31

  %2169 = lshr i32 %2161, 31

  %2170 = lshr i32 %2165, 31

  %2171 = xor i32 %2170, %2169

  %2172 = xor i32 %2168, %2169

  %2173 = add nuw nsw i32 %2172, %2171

  %2174 = icmp eq i32 %2173, 2

  %2175 = icmp ne i32 %2168, 0

  %2176 = xor i1 %2174, %2175

  %2177 = or i1 %2167, %2176

  %2178 = xor i1 %2177, true

  %2179 = zext i1 %2178 to i8

  store i8 %2179, i8* %14, align 1, !tbaa !1276

  %2180 = load i64, i64* %31, align 8

  %2181 = load i32, i32* %28, align 4

  %2182 = trunc i64 %2180 to i32

  %2183 = add i32 %2181, %2182

  %2184 = zext i32 %2183 to i64

  %2185 = icmp eq i32 %2183, 0

  %2186 = select i1 %2185, i64 594, i64 149

  %2187 = add i64 %1508, %2186

  br i1 %2185, label %block_401d2b, label %block_401b6e



block_401d29:                                     ; preds = %block_401d0a

  %2188 = add i64 %2762, 48

  br label %block_401d59



block_401a20:                                     ; preds = %block_401a20, %block_4019ef

  %2189 = phi i64 [ -8388608, %block_4019ef ], [ %2221, %block_401a20 ]

  %2190 = phi %struct.Memory* [ %108, %block_4019ef ], [ %2190, %block_401a20 ]

  %2191 = shl i64 %2189, 2

  %2192 = add i64 %113, %2191

  %2193 = inttoptr i64 %2192 to i32*

  %2194 = load i32, i32* %2193

  %2195 = sext i32 %2194 to i64

  %2196 = shl nsw i64 %2195, 2

  %2197 = add i64 %2196, %112

  %2198 = inttoptr i64 %2197 to i32*

  %2199 = load i32, i32* %2198

  %2200 = sext i32 %2199 to i64

  %2201 = add i32 %2199, -1

  %2202 = inttoptr i64 %2197 to i32*

  store i32 %2201, i32* %2202

  %2203 = shl nsw i64 %2200, 2

  %2204 = add i64 %114, %2203

  %2205 = inttoptr i64 %2204 to i32*

  store i32 %2194, i32* %2205

  %2206 = add i64 %115, %2191

  %2207 = inttoptr i64 %2206 to i32*

  %2208 = load i32, i32* %2207

  %2209 = sext i32 %2208 to i64

  %2210 = shl nsw i64 %2209, 2

  %2211 = add i64 %2210, %112

  %2212 = inttoptr i64 %2211 to i32*

  %2213 = load i32, i32* %2212

  %2214 = sext i32 %2213 to i64

  %2215 = add nsw i64 %2214, -1

  %2216 = trunc i64 %2215 to i32

  %2217 = inttoptr i64 %2211 to i32*

  store i32 %2216, i32* %2217

  %2218 = shl nsw i64 %2214, 2

  %2219 = add i64 %114, %2218

  %2220 = inttoptr i64 %2219 to i32*

  store i32 %2208, i32* %2220

  %2221 = add i64 %2189, 2

  %2222 = icmp eq i64 %2221, 0

  br i1 %2222, label %block_401a54, label %block_401a20



block_401ec4:                                     ; preds = %block_401d85, %block_401dfe

  %2223 = phi i64 [ %2803, %block_401d85 ], [ %395, %block_401dfe ]

  %2224 = phi i64 [ %2814, %block_401d85 ], [ %394, %block_401dfe ]

  %2225 = phi %struct.Memory* [ %2800, %block_401d85 ], [ %342, %block_401dfe ]

  %2226 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %2227 = add i64 %2224, 12

  %2228 = add i64 %2223, -8

  %2229 = inttoptr i64 %2228 to i64*

  store i64 %2227, i64* %2229

  %2230 = inttoptr i64 %2228 to i64*

  %2231 = load i64, i64* %2230

  store i64 %2231, i64* %11, align 8, !alias.scope !1559, !noalias !1562

  store i64 %2223, i64* %35, align 8, !alias.scope !1559, !noalias !1562

  %2232 = tail call i64 @free(i64 %2226), !noalias !1559

  %2233 = load i64, i64* %11, align 8

  %2234 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %2235 = add i64 %2233, 12

  %2236 = load i64, i64* %35, align 8, !tbaa !1240

  %2237 = add i64 %2236, -8

  %2238 = inttoptr i64 %2237 to i64*

  store i64 %2235, i64* %2238

  %2239 = inttoptr i64 %2237 to i64*

  %2240 = load i64, i64* %2239

  store i64 %2240, i64* %11, align 8, !alias.scope !1564, !noalias !1567

  store i64 %2236, i64* %35, align 8, !alias.scope !1564, !noalias !1567

  %2241 = tail call i64 @free(i64 %2234), !noalias !1564

  %2242 = load i64, i64* %11, align 8

  %2243 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %2244 = add i64 %2242, 12

  %2245 = load i64, i64* %35, align 8, !tbaa !1240

  %2246 = add i64 %2245, -8

  %2247 = inttoptr i64 %2246 to i64*

  store i64 %2244, i64* %2247

  %2248 = inttoptr i64 %2246 to i64*

  %2249 = load i64, i64* %2248

  store i64 %2249, i64* %11, align 8, !alias.scope !1569, !noalias !1572

  store i64 %2245, i64* %35, align 8, !alias.scope !1569, !noalias !1572

  %2250 = tail call i64 @free(i64 %2243), !noalias !1569

  %2251 = load i64, i64* %11, align 8

  %2252 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %2252, i64* %34, align 8, !tbaa !1240

  %2253 = add i64 %2251, 12

  %2254 = load i64, i64* %35, align 8, !tbaa !1240

  %2255 = add i64 %2254, -8

  %2256 = inttoptr i64 %2255 to i64*

  store i64 %2253, i64* %2256

  store i64 %2254, i64* %35, align 8, !alias.scope !1574, !noalias !1577

  %2257 = tail call i64 @free(i64 %2252)

  store i64 0, i64* %29, align 8, !tbaa !1240

  %2258 = load i64, i64* %35, align 8

  %2259 = add i64 %2258, 16

  %2260 = icmp ugt i64 %2258, -17

  %2261 = zext i1 %2260 to i8

  store i8 %2261, i8* %54, align 1, !tbaa !1244

  %2262 = trunc i64 %2259 to i32

  %2263 = and i32 %2262, 255

  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263) #10

  %2265 = trunc i32 %2264 to i8

  %2266 = and i8 %2265, 1

  %2267 = xor i8 %2266, 1

  store i8 %2267, i8* %55, align 1, !tbaa !1258

  %2268 = xor i64 %2258, 16

  %2269 = xor i64 %2268, %2259

  %2270 = lshr i64 %2269, 4

  %2271 = trunc i64 %2270 to i8

  %2272 = and i8 %2271, 1

  store i8 %2272, i8* %56, align 1, !tbaa !1259

  %2273 = icmp eq i64 %2259, 0

  %2274 = zext i1 %2273 to i8

  store i8 %2274, i8* %57, align 1, !tbaa !1260

  %2275 = lshr i64 %2259, 63

  %2276 = trunc i64 %2275 to i8

  store i8 %2276, i8* %58, align 1, !tbaa !1261

  %2277 = lshr i64 %2258, 63

  %2278 = xor i64 %2275, %2277

  %2279 = add nuw nsw i64 %2278, %2275

  %2280 = icmp eq i64 %2279, 2

  %2281 = zext i1 %2280 to i8

  store i8 %2281, i8* %59, align 1, !tbaa !1262

  %2282 = add i64 %2258, 24

  %2283 = inttoptr i64 %2259 to i64*

  %2284 = load i64, i64* %2283

  store i64 %2284, i64* %30, align 8, !tbaa !1240

  %2285 = add i64 %2258, 32

  %2286 = inttoptr i64 %2282 to i64*

  %2287 = load i64, i64* %2286

  store i64 %2287, i64* %37, align 8, !tbaa !1240

  %2288 = add i64 %2258, 40

  %2289 = inttoptr i64 %2285 to i64*

  %2290 = load i64, i64* %2289

  store i64 %2290, i64* %36, align 8, !tbaa !1240

  %2291 = inttoptr i64 %2288 to i64*

  %2292 = load i64, i64* %2291

  store i64 %2292, i64* %11, align 8, !tbaa !1240

  %2293 = add i64 %2258, 48

  store i64 %2293, i64* %35, align 8, !tbaa !1240

  ret %struct.Memory* %2225



block_401a54:                                     ; preds = %block_401a20

  store i64 %2215, i64* %30, align 8, !tbaa !1240

  %2294 = inttoptr i64 %111 to i32*

  %2295 = load i32, i32* %2294

  %2296 = bitcast [32 x %union.VectorReg]* %38 to i32*

  store i32 %2295, i32* %2296, align 1, !tbaa !1273

  %2297 = bitcast i8* %490 to i32*

  store i32 0, i32* %2297, align 1, !tbaa !1273

  %2298 = bitcast i64* %492 to i32*

  store i32 0, i32* %2298, align 1, !tbaa !1273

  %2299 = bitcast i8* %494 to i32*

  store i32 0, i32* %2299, align 1, !tbaa !1273

  %2300 = bitcast %union.VectorReg* %40 to i8*

  %2301 = bitcast [32 x %union.VectorReg]* %38 to i128*

  %2302 = load i128, i128* %2301, align 1

  %2303 = trunc i128 %2302 to i32

  %2304 = lshr i128 %2302, 32

  %2305 = trunc i128 %2304 to i32

  %2306 = lshr i128 %2302, 64

  %2307 = trunc i128 %2306 to i32

  %2308 = bitcast %union.VectorReg* %40 to i32*

  store i32 %2303, i32* %2308, align 1, !tbaa !1273

  %2309 = getelementptr inbounds i8, i8* %2300, i64 4

  %2310 = bitcast i8* %2309 to i32*

  store i32 %2305, i32* %2310, align 1, !tbaa !1273

  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %2312 = bitcast i64* %2311 to i32*

  store i32 %2307, i32* %2312, align 1, !tbaa !1273

  %2313 = getelementptr inbounds i8, i8* %2300, i64 12

  %2314 = bitcast i8* %2313 to i32*

  store i32 %2303, i32* %2314, align 1, !tbaa !1273

  %2315 = bitcast [32 x %union.VectorReg]* %38 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %2315, align 1, !tbaa !1240

  store i64 -8388592, i64* %31, align 8, !tbaa !1240

  %2316 = bitcast %union.VectorReg* %39 to i8*

  %2317 = bitcast %union.VectorReg* %39 to <2 x i64>*

  store <2 x i64> zeroinitializer, <2 x i64>* %2317, align 1, !tbaa !1240

  %2318 = add i64 %109, 171

  %2319 = bitcast %union.VectorReg* %42 to i8*

  %2320 = add i64 %111, 33554372

  %2321 = bitcast %union.VectorReg* %42 to float*

  %2322 = getelementptr inbounds i8, i8* %2319, i64 4

  %2323 = bitcast i8* %2322 to float*

  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1

  %2325 = bitcast i64* %2324 to float*

  %2326 = getelementptr inbounds i8, i8* %2319, i64 12

  %2327 = bitcast i8* %2326 to float*

  %2328 = bitcast %union.VectorReg* %41 to i8*

  %2329 = add i64 %111, 33554388

  %2330 = bitcast %union.VectorReg* %41 to float*

  %2331 = getelementptr inbounds i8, i8* %2328, i64 4

  %2332 = bitcast i8* %2331 to float*

  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1

  %2334 = bitcast i64* %2333 to float*

  %2335 = getelementptr inbounds i8, i8* %2328, i64 12

  %2336 = bitcast i8* %2335 to float*

  %2337 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0

  %2338 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %42, i64 0, i32 0, i32 0, i32 0, i64 0

  %2339 = bitcast <2 x i64>* %10 to i8*

  %2340 = bitcast <2 x i64>* %10 to i32*

  %2341 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 0

  %2342 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 1

  %2343 = getelementptr inbounds i8, i8* %2339, i64 4

  %2344 = bitcast i8* %2343 to i32*

  %2345 = bitcast i64* %2342 to i32*

  %2346 = getelementptr inbounds i8, i8* %2339, i64 12

  %2347 = bitcast i8* %2346 to i32*

  %2348 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0

  %2349 = bitcast %union.VectorReg* %42 to i32*

  %2350 = bitcast i8* %2322 to i32*

  %2351 = bitcast i64* %2324 to i32*

  %2352 = bitcast i8* %2326 to i32*

  %2353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0

  %2354 = bitcast <2 x i64>* %9 to i8*

  %2355 = bitcast <2 x i64>* %9 to i32*

  %2356 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 0

  %2357 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 1

  %2358 = getelementptr inbounds i8, i8* %2354, i64 4

  %2359 = bitcast i8* %2358 to i32*

  %2360 = bitcast i64* %2357 to i32*

  %2361 = getelementptr inbounds i8, i8* %2354, i64 12

  %2362 = bitcast i8* %2361 to i32*

  %2363 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %2365 = bitcast %union.VectorReg* %39 to i32*

  %2366 = getelementptr inbounds i8, i8* %2316, i64 4

  %2367 = bitcast i8* %2366 to i32*

  %2368 = bitcast i64* %2364 to i32*

  %2369 = getelementptr inbounds i8, i8* %2316, i64 12

  %2370 = bitcast i8* %2369 to i32*

  %2371 = load i64, i64* %29, align 8

  %2372 = add i64 %2371, 33554404

  %2373 = add i64 %2371, 33554420

  %2374 = bitcast %union.VectorReg* %40 to float*

  %2375 = bitcast i8* %2309 to float*

  %2376 = bitcast i64* %2311 to float*

  %2377 = bitcast i8* %2313 to float*

  %2378 = bitcast %union.VectorReg* %41 to i32*

  %2379 = bitcast i8* %2331 to i32*

  %2380 = bitcast i64* %2333 to i32*

  %2381 = bitcast i8* %2335 to i32*

  %2382 = bitcast <2 x i64>* %4 to i8*

  %2383 = bitcast <2 x i64>* %4 to i32*

  %2384 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 0

  %2385 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 0, i64 1

  %2386 = getelementptr inbounds i8, i8* %2382, i64 4

  %2387 = bitcast i8* %2386 to i32*

  %2388 = bitcast i64* %2385 to i32*

  %2389 = getelementptr inbounds i8, i8* %2382, i64 12

  %2390 = bitcast i8* %2389 to i32*

  %2391 = bitcast <2 x i64>* %3 to i8*

  %2392 = bitcast <2 x i64>* %3 to i32*

  %2393 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 0

  %2394 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 1

  %2395 = getelementptr inbounds i8, i8* %2391, i64 4

  %2396 = bitcast i8* %2395 to i32*

  %2397 = bitcast i64* %2394 to i32*

  %2398 = getelementptr inbounds i8, i8* %2391, i64 12

  %2399 = bitcast i8* %2398 to i32*

  %2400 = load i64, i64* %2311, align 1

  br label %block_401aa4



block_401c10:                                     ; preds = %block_401c44

  %2401 = shl i64 %1937, 2

  %2402 = add i64 %765, %2401

  %2403 = inttoptr i64 %2402 to float*

  %2404 = load float, float* %2403

  %2405 = add i64 %2402, 4

  %2406 = inttoptr i64 %2405 to float*

  %2407 = load float, float* %2406

  %2408 = add i64 %2402, 8

  %2409 = inttoptr i64 %2408 to float*

  %2410 = load float, float* %2409

  %2411 = add i64 %2402, 12

  %2412 = inttoptr i64 %2411 to float*

  %2413 = load float, float* %2412

  store float %2404, float* %714, align 1, !tbaa !1274

  store float %2407, float* %716, align 1, !tbaa !1274

  store float %2410, float* %718, align 1, !tbaa !1274

  store float %2413, float* %720, align 1, !tbaa !1274

  %2414 = add i64 %766, %2401

  %2415 = inttoptr i64 %2414 to float*

  %2416 = load float, float* %2415

  %2417 = add i64 %2414, 4

  %2418 = inttoptr i64 %2417 to float*

  %2419 = load float, float* %2418

  %2420 = add i64 %2414, 8

  %2421 = inttoptr i64 %2420 to float*

  %2422 = load float, float* %2421

  %2423 = add i64 %2414, 12

  %2424 = inttoptr i64 %2423 to float*

  %2425 = load float, float* %2424

  store float %2416, float* %767, align 1, !tbaa !1274

  store float %2419, float* %768, align 1, !tbaa !1274

  store float %2422, float* %769, align 1, !tbaa !1274

  store float %2425, float* %770, align 1, !tbaa !1274

  %2426 = load i64, i64* %741, align 1

  %2427 = load i64, i64* %726, align 1

  %2428 = load i64, i64* %731, align 1

  %2429 = lshr i64 %2427, 32

  %2430 = trunc i64 %2429 to i32

  %2431 = trunc i64 %2426 to i32

  %2432 = trunc i64 %2428 to i32

  store i32 %2430, i32* %771, align 1, !tbaa !1273

  store i32 %2431, i32* %772, align 1, !tbaa !1273

  store i32 %2432, i32* %773, align 1, !tbaa !1273

  store i32 %2432, i32* %774, align 1, !tbaa !1273

  %2433 = load i64, i64* %741, align 1

  %2434 = load i64, i64* %726, align 1

  %2435 = load i64, i64* %717, align 1

  %2436 = trunc i64 %2433 to i32

  %2437 = trunc i64 %2434 to i32

  %2438 = lshr i64 %2428, 32

  %2439 = trunc i64 %2438 to i32

  %2440 = trunc i64 %2435 to i32

  store i32 %2436, i32* %771, align 1, !tbaa !1273

  store i32 %2437, i32* %772, align 1, !tbaa !1273

  store i32 %2439, i32* %773, align 1, !tbaa !1273

  store i32 %2440, i32* %774, align 1, !tbaa !1273

  %2441 = load i64, i64* %741, align 1

  %2442 = load i64, i64* %726, align 1

  %2443 = trunc i64 %2441 to i32

  %2444 = icmp sgt i32 %2443, %2432

  %2445 = sext i1 %2444 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %775)

  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16

  store i32 %2445, i32* %776, align 16

  %2446 = load i64, i64* %777, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %775)

  %2447 = lshr i64 %2441, 32

  %2448 = trunc i64 %2447 to i32

  %2449 = icmp sgt i32 %2448, %2439

  %2450 = sext i1 %2449 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %775)

  store i64 %2446, i64* %777, align 16

  store i64 0, i64* %778, align 8

  store i32 %2450, i32* %780, align 4

  %2451 = load i64, i64* %777, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %775)

  %2452 = trunc i64 %2442 to i32

  %2453 = icmp sgt i32 %2452, %2440

  %2454 = sext i1 %2453 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %775)

  store i64 %2451, i64* %777, align 16

  store i64 0, i64* %778, align 8

  store i32 %2454, i32* %781, align 8

  %2455 = load i64, i64* %778, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %775)

  %2456 = lshr i64 %2442, 32

  %2457 = trunc i64 %2456 to i32

  %2458 = lshr i64 %2435, 32

  %2459 = trunc i64 %2458 to i32

  %2460 = icmp sgt i32 %2457, %2459

  %2461 = sext i1 %2460 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %775)

  store i64 %2451, i64* %777, align 16

  store i64 %2455, i64* %778, align 8

  store i32 %2461, i32* %783, align 4

  %2462 = load i64, i64* %778, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %775)

  %2463 = lshr i64 %2451, 32

  %2464 = trunc i64 %2451 to i32

  %2465 = trunc i64 %2463 to i32

  store i32 %2464, i32* %771, align 1, !tbaa !1273

  store i32 %2465, i32* %772, align 1, !tbaa !1273

  %2466 = trunc i64 %2462 to i32

  store i32 %2466, i32* %773, align 1, !tbaa !1273

  %2467 = lshr i64 %2462, 32

  %2468 = trunc i64 %2467 to i32

  store i32 %2468, i32* %774, align 1, !tbaa !1273

  %2469 = load i64, i64* %730, align 1

  %2470 = trunc i64 %2469 to i32

  store i32 %2459, i32* %742, align 1, !tbaa !1273

  store i32 %2432, i32* %743, align 1, !tbaa !1273

  store i32 %2470, i32* %744, align 1, !tbaa !1273

  store i32 %2470, i32* %745, align 1, !tbaa !1273

  %2471 = load i64, i64* %731, align 1

  %2472 = load i64, i64* %717, align 1

  %2473 = load i64, i64* %704, align 1

  %2474 = trunc i64 %2471 to i32

  %2475 = trunc i64 %2472 to i32

  %2476 = lshr i64 %2469, 32

  %2477 = trunc i64 %2476 to i32

  %2478 = trunc i64 %2473 to i32

  store i32 %2474, i32* %742, align 1, !tbaa !1273

  store i32 %2475, i32* %743, align 1, !tbaa !1273

  store i32 %2477, i32* %744, align 1, !tbaa !1273

  store i32 %2478, i32* %745, align 1, !tbaa !1273

  %2479 = load i64, i64* %731, align 1

  %2480 = load i64, i64* %717, align 1

  %2481 = trunc i64 %2479 to i32

  %2482 = icmp sgt i32 %2481, %2470

  %2483 = sext i1 %2482 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %784)

  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16

  store i32 %2483, i32* %785, align 16

  %2484 = load i64, i64* %786, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %784)

  %2485 = lshr i64 %2479, 32

  %2486 = trunc i64 %2485 to i32

  %2487 = icmp sgt i32 %2486, %2477

  %2488 = sext i1 %2487 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %784)

  store i64 %2484, i64* %786, align 16

  store i64 0, i64* %787, align 8

  store i32 %2488, i32* %789, align 4

  %2489 = load i64, i64* %786, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %784)

  %2490 = trunc i64 %2480 to i32

  %2491 = icmp sgt i32 %2490, %2478

  %2492 = sext i1 %2491 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %784)

  store i64 %2489, i64* %786, align 16

  store i64 0, i64* %787, align 8

  store i32 %2492, i32* %790, align 8

  %2493 = load i64, i64* %787, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %784)

  %2494 = lshr i64 %2480, 32

  %2495 = trunc i64 %2494 to i32

  %2496 = lshr i64 %2473, 32

  %2497 = trunc i64 %2496 to i32

  %2498 = icmp sgt i32 %2495, %2497

  %2499 = sext i1 %2498 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %784)

  store i64 %2489, i64* %786, align 16

  store i64 %2493, i64* %787, align 8

  store i32 %2499, i32* %792, align 4

  %2500 = load i64, i64* %787, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %784)

  %2501 = lshr i64 %2489, 32

  %2502 = trunc i64 %2489 to i32

  %2503 = trunc i64 %2501 to i32

  store i32 %2502, i32* %742, align 1, !tbaa !1273

  store i32 %2503, i32* %743, align 1, !tbaa !1273

  %2504 = trunc i64 %2500 to i32

  store i32 %2504, i32* %744, align 1, !tbaa !1273

  %2505 = lshr i64 %2500, 32

  %2506 = trunc i64 %2505 to i32

  store i32 %2506, i32* %745, align 1, !tbaa !1273

  %2507 = load i64, i64* %746, align 1

  %2508 = load i64, i64* %492, align 1

  %2509 = lshr i64 %2507, 32

  %2510 = load i64, i64* %741, align 1

  %2511 = load i64, i64* %726, align 1

  %2512 = lshr i64 %2510, 32

  %2513 = sub i64 %2507, %2510

  %2514 = sub nsw i64 %2509, %2512

  %2515 = sub i64 %2508, %2511

  %2516 = lshr i64 %2508, 32

  %2517 = lshr i64 %2511, 32

  %2518 = sub nsw i64 %2516, %2517

  %2519 = trunc i64 %2513 to i32

  %2520 = trunc i64 %2514 to i32

  store i32 %2519, i32* %689, align 1, !tbaa !1273

  store i32 %2520, i32* %690, align 1, !tbaa !1273

  %2521 = trunc i64 %2515 to i32

  store i32 %2521, i32* %691, align 1, !tbaa !1273

  %2522 = trunc i64 %2518 to i32

  store i32 %2522, i32* %692, align 1, !tbaa !1273

  %2523 = load i64, i64* %756, align 1

  %2524 = load i64, i64* %757, align 1

  %2525 = lshr i64 %2523, 32

  %2526 = load i64, i64* %731, align 1

  %2527 = load i64, i64* %717, align 1

  %2528 = lshr i64 %2526, 32

  %2529 = sub i64 %2523, %2526

  %2530 = sub nsw i64 %2525, %2528

  %2531 = sub i64 %2524, %2527

  %2532 = lshr i64 %2524, 32

  %2533 = lshr i64 %2527, 32

  %2534 = sub nsw i64 %2532, %2533

  %2535 = trunc i64 %2529 to i32

  %2536 = trunc i64 %2530 to i32

  store i32 %2535, i32* %758, align 1, !tbaa !1273

  store i32 %2536, i32* %760, align 1, !tbaa !1273

  %2537 = trunc i64 %2531 to i32

  store i32 %2537, i32* %761, align 1, !tbaa !1273

  %2538 = trunc i64 %2534 to i32

  store i32 %2538, i32* %763, align 1, !tbaa !1273

  %2539 = load i64, i64* %31, align 8

  %2540 = add i64 %1940, 52

  %2541 = add i64 %2539, 16

  store i64 %2541, i64* %31, align 8, !tbaa !1240

  br label %block_401c44



block_401d2b:                                     ; preds = %block_401ad9

  %2542 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %2543 = add i32 %2542, 1

  store i32 %2543, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  store i64 2, i64* %34, align 8, !tbaa !1240

  %2544 = add i64 %2187, -4907

  %2545 = add i64 %2187, 17

  %2546 = load i64, i64* %35, align 8, !tbaa !1240

  %2547 = add i64 %2546, -8

  %2548 = inttoptr i64 %2547 to i64*

  store i64 %2545, i64* %2548

  store i64 %2547, i64* %35, align 8, !tbaa !1240

  %2549 = tail call %struct.Memory* @sub_400a00_timer_stop(%struct.State* nonnull %0, i64 %2544, %struct.Memory* %2190)

  %2550 = load i8, i8* %22, align 1

  %2551 = load i64, i64* %11, align 8

  %2552 = icmp eq i8 %2550, 0

  %2553 = select i1 %2552, i64 5, i64 19

  %2554 = add i64 %2551, %2553

  br i1 %2552, label %block_401d41, label %block_401d4f



block_40188b:                                     ; preds = %block_4017f6

  %2555 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 984) to double*)

  %2556 = bitcast [32 x %union.VectorReg]* %38 to double*

  store double %2555, double* %2556, align 1, !tbaa !1271

  %2557 = bitcast i64* %492 to double*

  store double 0.000000e+00, double* %2557, align 1, !tbaa !1271

  %2558 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 992) to i64*)

  %2559 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0

  store i64 %2558, i64* %2559, align 1, !tbaa !1240

  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  store i64 0, i64* %2560, align 1, !tbaa !1240

  %2561 = add i64 %611, -3195

  %2562 = add i64 %611, 21

  %2563 = load i64, i64* %35, align 8, !tbaa !1240

  %2564 = add i64 %2563, -8

  %2565 = inttoptr i64 %2564 to i64*

  store i64 %2562, i64* %2565

  store i64 %2564, i64* %35, align 8, !tbaa !1240

  %2566 = tail call %struct.Memory* @sub_400c10_create_seq(%struct.State* nonnull %0, i64 %2561, %struct.Memory* %482)

  %2567 = load i64, i64* %11, align 8

  br label %block_4018a0



block_401d79:                                     ; preds = %block_401d59

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %2568 = add i64 %480, 12

  br label %block_401d85



block_401a70:                                     ; preds = %block_401aa4

  %2569 = shl i64 %1505, 2

  %2570 = add i64 %2372, %2569

  %2571 = inttoptr i64 %2570 to float*

  %2572 = load float, float* %2571

  %2573 = add i64 %2570, 4

  %2574 = inttoptr i64 %2573 to float*

  %2575 = load float, float* %2574

  %2576 = add i64 %2570, 8

  %2577 = inttoptr i64 %2576 to float*

  %2578 = load float, float* %2577

  %2579 = add i64 %2570, 12

  %2580 = inttoptr i64 %2579 to float*

  %2581 = load float, float* %2580

  store float %2572, float* %2321, align 1, !tbaa !1274

  store float %2575, float* %2323, align 1, !tbaa !1274

  store float %2578, float* %2325, align 1, !tbaa !1274

  store float %2581, float* %2327, align 1, !tbaa !1274

  %2582 = add i64 %2373, %2569

  %2583 = inttoptr i64 %2582 to float*

  %2584 = load float, float* %2583

  %2585 = add i64 %2582, 4

  %2586 = inttoptr i64 %2585 to float*

  %2587 = load float, float* %2586

  %2588 = add i64 %2582, 8

  %2589 = inttoptr i64 %2588 to float*

  %2590 = load float, float* %2589

  %2591 = add i64 %2582, 12

  %2592 = inttoptr i64 %2591 to float*

  %2593 = load float, float* %2592

  store float %2584, float* %2374, align 1, !tbaa !1274

  store float %2587, float* %2375, align 1, !tbaa !1274

  store float %2590, float* %2376, align 1, !tbaa !1274

  store float %2593, float* %2377, align 1, !tbaa !1274

  %2594 = load i64, i64* %2348, align 1

  %2595 = load i64, i64* %2333, align 1

  %2596 = load i64, i64* %2338, align 1

  %2597 = lshr i64 %2595, 32

  %2598 = trunc i64 %2597 to i32

  %2599 = trunc i64 %2594 to i32

  %2600 = trunc i64 %2596 to i32

  store i32 %2598, i32* %2378, align 1, !tbaa !1273

  store i32 %2599, i32* %2379, align 1, !tbaa !1273

  store i32 %2600, i32* %2380, align 1, !tbaa !1273

  store i32 %2600, i32* %2381, align 1, !tbaa !1273

  %2601 = load i64, i64* %2348, align 1

  %2602 = load i64, i64* %2333, align 1

  %2603 = load i64, i64* %2324, align 1

  %2604 = trunc i64 %2601 to i32

  %2605 = trunc i64 %2602 to i32

  %2606 = lshr i64 %2596, 32

  %2607 = trunc i64 %2606 to i32

  %2608 = trunc i64 %2603 to i32

  store i32 %2604, i32* %2378, align 1, !tbaa !1273

  store i32 %2605, i32* %2379, align 1, !tbaa !1273

  store i32 %2607, i32* %2380, align 1, !tbaa !1273

  store i32 %2608, i32* %2381, align 1, !tbaa !1273

  %2609 = load i64, i64* %2348, align 1

  %2610 = load i64, i64* %2333, align 1

  %2611 = trunc i64 %2609 to i32

  %2612 = icmp sgt i32 %2611, %2600

  %2613 = sext i1 %2612 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2382)

  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 16

  store i32 %2613, i32* %2383, align 16

  %2614 = load i64, i64* %2384, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2382)

  %2615 = lshr i64 %2609, 32

  %2616 = trunc i64 %2615 to i32

  %2617 = icmp sgt i32 %2616, %2607

  %2618 = sext i1 %2617 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2382)

  store i64 %2614, i64* %2384, align 16

  store i64 0, i64* %2385, align 8

  store i32 %2618, i32* %2387, align 4

  %2619 = load i64, i64* %2384, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2382)

  %2620 = trunc i64 %2610 to i32

  %2621 = icmp sgt i32 %2620, %2608

  %2622 = sext i1 %2621 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2382)

  store i64 %2619, i64* %2384, align 16

  store i64 0, i64* %2385, align 8

  store i32 %2622, i32* %2388, align 8

  %2623 = load i64, i64* %2385, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2382)

  %2624 = lshr i64 %2610, 32

  %2625 = trunc i64 %2624 to i32

  %2626 = lshr i64 %2603, 32

  %2627 = trunc i64 %2626 to i32

  %2628 = icmp sgt i32 %2625, %2627

  %2629 = sext i1 %2628 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2382)

  store i64 %2619, i64* %2384, align 16

  store i64 %2623, i64* %2385, align 8

  store i32 %2629, i32* %2390, align 4

  %2630 = load i64, i64* %2385, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2382)

  %2631 = lshr i64 %2619, 32

  %2632 = trunc i64 %2619 to i32

  %2633 = trunc i64 %2631 to i32

  store i32 %2632, i32* %2378, align 1, !tbaa !1273

  store i32 %2633, i32* %2379, align 1, !tbaa !1273

  %2634 = trunc i64 %2630 to i32

  store i32 %2634, i32* %2380, align 1, !tbaa !1273

  %2635 = lshr i64 %2630, 32

  %2636 = trunc i64 %2635 to i32

  store i32 %2636, i32* %2381, align 1, !tbaa !1273

  %2637 = load i64, i64* %2337, align 1

  %2638 = trunc i64 %2637 to i32

  store i32 %2627, i32* %2349, align 1, !tbaa !1273

  store i32 %2600, i32* %2350, align 1, !tbaa !1273

  store i32 %2638, i32* %2351, align 1, !tbaa !1273

  store i32 %2638, i32* %2352, align 1, !tbaa !1273

  %2639 = load i64, i64* %2338, align 1

  %2640 = load i64, i64* %2324, align 1

  %2641 = load i64, i64* %2311, align 1

  %2642 = trunc i64 %2639 to i32

  %2643 = trunc i64 %2640 to i32

  %2644 = lshr i64 %2637, 32

  %2645 = trunc i64 %2644 to i32

  %2646 = trunc i64 %2641 to i32

  store i32 %2642, i32* %2349, align 1, !tbaa !1273

  store i32 %2643, i32* %2350, align 1, !tbaa !1273

  store i32 %2645, i32* %2351, align 1, !tbaa !1273

  store i32 %2646, i32* %2352, align 1, !tbaa !1273

  %2647 = load i64, i64* %2338, align 1

  %2648 = load i64, i64* %2324, align 1

  %2649 = trunc i64 %2647 to i32

  %2650 = icmp sgt i32 %2649, %2638

  %2651 = sext i1 %2650 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2391)

  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16

  store i32 %2651, i32* %2392, align 16

  %2652 = load i64, i64* %2393, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2391)

  %2653 = lshr i64 %2647, 32

  %2654 = trunc i64 %2653 to i32

  %2655 = icmp sgt i32 %2654, %2645

  %2656 = sext i1 %2655 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2391)

  store i64 %2652, i64* %2393, align 16

  store i64 0, i64* %2394, align 8

  store i32 %2656, i32* %2396, align 4

  %2657 = load i64, i64* %2393, align 16

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2391)

  %2658 = trunc i64 %2648 to i32

  %2659 = icmp sgt i32 %2658, %2646

  %2660 = sext i1 %2659 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2391)

  store i64 %2657, i64* %2393, align 16

  store i64 0, i64* %2394, align 8

  store i32 %2660, i32* %2397, align 8

  %2661 = load i64, i64* %2394, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2391)

  %2662 = lshr i64 %2648, 32

  %2663 = trunc i64 %2662 to i32

  %2664 = lshr i64 %2641, 32

  %2665 = trunc i64 %2664 to i32

  %2666 = icmp sgt i32 %2663, %2665

  %2667 = sext i1 %2666 to i32

  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2391)

  store i64 %2657, i64* %2393, align 16

  store i64 %2661, i64* %2394, align 8

  store i32 %2667, i32* %2399, align 4

  %2668 = load i64, i64* %2394, align 8

  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2391)

  %2669 = lshr i64 %2657, 32

  %2670 = trunc i64 %2657 to i32

  %2671 = trunc i64 %2669 to i32

  store i32 %2670, i32* %2349, align 1, !tbaa !1273

  store i32 %2671, i32* %2350, align 1, !tbaa !1273

  %2672 = trunc i64 %2668 to i32

  store i32 %2672, i32* %2351, align 1, !tbaa !1273

  %2673 = lshr i64 %2668, 32

  %2674 = trunc i64 %2673 to i32

  store i32 %2674, i32* %2352, align 1, !tbaa !1273

  %2675 = load i64, i64* %2353, align 1

  %2676 = load i64, i64* %492, align 1

  %2677 = lshr i64 %2675, 32

  %2678 = load i64, i64* %2348, align 1

  %2679 = load i64, i64* %2333, align 1

  %2680 = lshr i64 %2678, 32

  %2681 = sub i64 %2675, %2678

  %2682 = sub nsw i64 %2677, %2680

  %2683 = sub i64 %2676, %2679

  %2684 = lshr i64 %2676, 32

  %2685 = lshr i64 %2679, 32

  %2686 = sub nsw i64 %2684, %2685

  %2687 = trunc i64 %2681 to i32

  %2688 = trunc i64 %2682 to i32

  store i32 %2687, i32* %2296, align 1, !tbaa !1273

  store i32 %2688, i32* %2297, align 1, !tbaa !1273

  %2689 = trunc i64 %2683 to i32

  store i32 %2689, i32* %2298, align 1, !tbaa !1273

  %2690 = trunc i64 %2686 to i32

  store i32 %2690, i32* %2299, align 1, !tbaa !1273

  %2691 = load i64, i64* %2363, align 1

  %2692 = load i64, i64* %2364, align 1

  %2693 = lshr i64 %2691, 32

  %2694 = load i64, i64* %2338, align 1

  %2695 = load i64, i64* %2324, align 1

  %2696 = lshr i64 %2694, 32

  %2697 = sub i64 %2691, %2694

  %2698 = sub nsw i64 %2693, %2696

  %2699 = sub i64 %2692, %2695

  %2700 = lshr i64 %2692, 32

  %2701 = lshr i64 %2695, 32

  %2702 = sub nsw i64 %2700, %2701

  %2703 = trunc i64 %2697 to i32

  %2704 = trunc i64 %2698 to i32

  store i32 %2703, i32* %2365, align 1, !tbaa !1273

  store i32 %2704, i32* %2367, align 1, !tbaa !1273

  %2705 = trunc i64 %2699 to i32

  store i32 %2705, i32* %2368, align 1, !tbaa !1273

  %2706 = trunc i64 %2702 to i32

  store i32 %2706, i32* %2370, align 1, !tbaa !1273

  %2707 = load i64, i64* %31, align 8

  %2708 = add i64 %1508, 52

  %2709 = add i64 %2707, 16

  store i64 %2709, i64* %31, align 8, !tbaa !1240

  br label %block_401aa4



block_401d0a:                                     ; preds = %block_401c79

  %2710 = add i64 %1761, 14

  %2711 = load i64, i64* %35, align 8, !tbaa !1240

  %2712 = add i64 %2711, -8

  %2713 = inttoptr i64 %2712 to i64*

  store i64 %2710, i64* %2713

  %2714 = load i64, i64* %528, align 8, !alias.scope !1579, !noalias !1582

  %2715 = load i64, i64* %529, align 8, !alias.scope !1579, !noalias !1582

  %2716 = load i64, i64* %530, align 8, !alias.scope !1579, !noalias !1582

  %2717 = inttoptr i64 %2711 to i64*

  %2718 = load i64, i64* %2717

  %2719 = add i64 %2711, 8

  %2720 = inttoptr i64 %2719 to i64*

  %2721 = load i64, i64* %2720

  %2722 = add i64 %2711, 16

  %2723 = inttoptr i64 %2722 to i64*

  %2724 = load i64, i64* %2723

  %2725 = add i64 %2711, 24

  %2726 = inttoptr i64 %2725 to i64*

  %2727 = load i64, i64* %2726

  %2728 = add i64 %2711, 32

  %2729 = inttoptr i64 %2728 to i64*

  %2730 = load i64, i64* %2729

  %2731 = add i64 %2711, 40

  %2732 = inttoptr i64 %2731 to i64*

  %2733 = load i64, i64* %2732

  %2734 = add i64 %2711, 48

  %2735 = inttoptr i64 %2734 to i64*

  %2736 = load i64, i64* %2735

  %2737 = add i64 %2711, 56

  %2738 = inttoptr i64 %2737 to i64*

  %2739 = load i64, i64* %2738

  %2740 = add i64 %2711, 64

  %2741 = inttoptr i64 %2740 to i64*

  %2742 = load i64, i64* %2741

  %2743 = add i64 %2711, 72

  %2744 = inttoptr i64 %2743 to i64*

  %2745 = load i64, i64* %2744

  %2746 = inttoptr i64 %2712 to i64*

  %2747 = load i64, i64* %2746

  store i64 %2747, i64* %11, align 8, !alias.scope !1579, !noalias !1582

  store i64 %2711, i64* %35, align 8, !alias.scope !1579, !noalias !1582

  %2748 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1032), i64 4294967295), i64 %1758, i64 %2714, i64 %1758, i64 %2715, i64 %2716, i64 %2718, i64 %2721, i64 %2724, i64 %2727, i64 %2730, i64 %2733, i64 %2736, i64 %2739, i64 %2742, i64 %2745), !noalias !1579

  %2749 = load i64, i64* %11, align 8

  %2750 = load i64, i64* @stdout

  %2751 = add i64 %2749, 12

  %2752 = load i64, i64* %35, align 8, !tbaa !1240

  %2753 = add i64 %2752, -8

  %2754 = inttoptr i64 %2753 to i64*

  store i64 %2751, i64* %2754

  %2755 = inttoptr i64 %2753 to i64*

  %2756 = load i64, i64* %2755

  store i64 %2756, i64* %11, align 8, !alias.scope !1584, !noalias !1587

  store i64 %2752, i64* %35, align 8, !alias.scope !1584, !noalias !1587

  %2757 = tail call i64 @fflush(i64 %2750), !noalias !1584

  %2758 = load i8, i8* %22, align 1

  %2759 = load i64, i64* %11, align 8

  %2760 = icmp eq i8 %2758, 0

  %2761 = select i1 %2760, i64 5, i64 43

  %2762 = add i64 %2759, %2761

  br i1 %2760, label %block_401d29, label %block_401d4f



block_401d85:                                     ; preds = %block_401d79, %block_401d59

  %2763 = phi i64 [ 51, %block_401d59 ], [ 0, %block_401d79 ]

  %2764 = phi i64 [ %480, %block_401d59 ], [ %2568, %block_401d79 ]

  %2765 = phi %struct.Memory* [ %432, %block_401d59 ], [ %432, %block_401d79 ]

  %2766 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1000) to double*)

  %2767 = bitcast %union.VectorReg* %39 to double*

  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %2769 = load i64, i64* %35, align 8

  %2770 = inttoptr i64 %2769 to double*

  %2771 = load double, double* %2770

  store double %2771, double* %795, align 1, !tbaa !1271

  %2772 = bitcast i64* %492 to double*

  store double 0.000000e+00, double* %2772, align 1, !tbaa !1271

  %2773 = fdiv double %2766, %2771

  %2774 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1008) to double*)

  %2775 = fdiv double %2773, %2774

  store double %2775, double* %2767, align 1, !tbaa !1271

  store i64 0, i64* %2768, align 1, !tbaa !1271

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1228), i64 4294967295), i64* %34, align 8, !tbaa !1240

  store i64 65, i64* %33, align 8, !tbaa !1240

  store i64 131072, i64* %32, align 8, !tbaa !1240

  store i64 64, i64* %31, align 8, !tbaa !1240

  store i64 0, i64* %529, align 8, !tbaa !1240

  store i64 10, i64* %530, align 8, !tbaa !1240

  %2776 = add i64 %2769, -8

  %2777 = inttoptr i64 %2776 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1296), i64* %2777

  %2778 = add i64 %2769, -16

  %2779 = inttoptr i64 %2778 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1287), i64* %2779

  %2780 = add i64 %2769, -24

  %2781 = inttoptr i64 %2780 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1275), i64* %2781

  %2782 = add i64 %2769, -32

  %2783 = inttoptr i64 %2782 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1271), i64* %2783

  %2784 = add i64 %2769, -40

  %2785 = inttoptr i64 %2784 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1265), i64* %2785

  %2786 = add i64 %2769, -48

  %2787 = inttoptr i64 %2786 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1261), i64* %2787

  %2788 = add i64 %2769, -56

  %2789 = inttoptr i64 %2788 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1249), i64* %2789

  %2790 = add i64 %2769, -64

  %2791 = inttoptr i64 %2790 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1243), i64* %2791

  %2792 = add i64 %2769, -72

  %2793 = inttoptr i64 %2792 to i64*

  store i64 %2763, i64* %2793

  %2794 = add i64 %2769, -80

  %2795 = inttoptr i64 %2794 to i64*

  store i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1231), i64* %2795

  %2796 = add i64 %2764, -5669

  %2797 = add i64 %2764, 108

  %2798 = add i64 %2769, -88

  %2799 = inttoptr i64 %2798 to i64*

  store i64 %2797, i64* %2799

  store i64 %2798, i64* %35, align 8, !tbaa !1240

  %2800 = tail call %struct.Memory* @sub_400760_c_print_results(%struct.State* nonnull %0, i64 %2796, %struct.Memory* %2765)

  %2801 = load i64, i64* %35, align 8

  %2802 = load i64, i64* %11, align 8

  %2803 = add i64 %2801, 80

  %2804 = load i8, i8* %22, align 1

  store i8 0, i8* %54, align 1, !tbaa !1244

  %2805 = zext i8 %2804 to i32

  %2806 = tail call i32 @llvm.ctpop.i32(i32 %2805) #10

  %2807 = trunc i32 %2806 to i8

  %2808 = and i8 %2807, 1

  %2809 = xor i8 %2808, 1

  store i8 %2809, i8* %55, align 1, !tbaa !1258

  %2810 = icmp eq i8 %2804, 0

  %2811 = zext i1 %2810 to i8

  store i8 %2811, i8* %57, align 1, !tbaa !1260

  %2812 = lshr i8 %2804, 7

  store i8 %2812, i8* %58, align 1, !tbaa !1261

  store i8 0, i8* %59, align 1, !tbaa !1262

  store i8 0, i8* %56, align 1, !tbaa !1259

  %2813 = select i1 %2810, i64 211, i64 13

  %2814 = add i64 %2802, %2813

  br i1 %2810, label %block_401ec4, label %block_401dfe

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

  %17 = tail call i64 @free(i64 %11), !noalias !1589

  %18 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %19 = add i64 %16, 12

  %20 = add i64 %8, -16

  %21 = inttoptr i64 %20 to i64*

  store i64 %19, i64* %21

  %22 = inttoptr i64 %20 to i64*

  %23 = load i64, i64* %22

  %24 = tail call i64 @free(i64 %18), !noalias !1592

  %25 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %26 = add i64 %23, 12

  %27 = add i64 %8, -16

  %28 = inttoptr i64 %27 to i64*

  store i64 %26, i64* %28

  %29 = tail call i64 @free(i64 %25), !noalias !1595

  %30 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %30, i64* %5, align 8, !tbaa !1240

  %31 = inttoptr i64 %8 to i64*

  %32 = load i64, i64* %31

  store i64 %32, i64* %3, align 8, !alias.scope !1598, !noalias !1601

  %33 = add i64 %8, 8

  store i64 %33, i64* %7, align 8, !alias.scope !1598, !noalias !1601

  %34 = tail call i64 @free(i64 %30), !noalias !1598

  store i64 %34, i64* %4, align 8, !alias.scope !1598, !noalias !1601

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

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0

  %8 = bitcast %union.anon* %7 to i32*

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %14 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %16 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0

  %17 = load i64, i64* %15, align 8

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %19 = load i64, i64* %18, align 8, !tbaa !1240

  %20 = add i64 %19, -8

  %21 = inttoptr i64 %20 to i64*

  store i64 %17, i64* %21

  %22 = load i64, i64* %16, align 8

  %23 = add i64 %19, -16

  %24 = inttoptr i64 %23 to i64*

  store i64 %22, i64* %24

  %25 = load i64, i64* %10, align 8

  %26 = add i64 %19, -24

  %27 = inttoptr i64 %26 to i64*

  store i64 %25, i64* %27

  store i64 %26, i64* %18, align 8, !tbaa !1240

  %28 = load i32, i32* %5, align 4

  %29 = zext i32 %28 to i64

  store i64 %29, i64* %16, align 8, !tbaa !1240

  %30 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %30, i64* %10, align 8, !tbaa !1240

  %31 = sext i32 %28 to i64

  %32 = shl nsw i64 %31, 2

  %33 = add i64 %32, %30

  %34 = inttoptr i64 %33 to i32*

  store i32 %28, i32* %34

  %35 = sub i32 524288, %28

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %42 = add i64 %30, 40

  %43 = add i64 %42, %32

  %44 = inttoptr i64 %43 to i32*

  store i32 %35, i32* %44

  %45 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %46 = load i32, i32* bitcast (%test_index_array_type* @test_index_array to i32*)

  %47 = sext i32 %46 to i64

  %48 = shl nsw i64 %47, 2

  %49 = add i64 %48, %30

  %50 = inttoptr i64 %49 to i32*

  %51 = load i32, i32* %50

  %52 = inttoptr i64 %45 to i32*

  store i32 %51, i32* %52

  %53 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 4) to i32*)

  %54 = sext i32 %53 to i64

  %55 = shl nsw i64 %54, 2

  %56 = add i64 %55, %30

  %57 = inttoptr i64 %56 to i32*

  %58 = load i32, i32* %57

  %59 = add i64 %45, 4

  %60 = inttoptr i64 %59 to i32*

  store i32 %58, i32* %60

  %61 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 8) to i32*)

  %62 = sext i32 %61 to i64

  %63 = shl nsw i64 %62, 2

  %64 = add i64 %63, %30

  %65 = inttoptr i64 %64 to i32*

  %66 = load i32, i32* %65

  %67 = add i64 %45, 8

  %68 = inttoptr i64 %67 to i32*

  store i32 %66, i32* %68

  %69 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 12) to i32*)

  %70 = sext i32 %69 to i64

  %71 = load i64, i64* %10, align 8

  %72 = shl nsw i64 %70, 2

  %73 = add i64 %72, %71

  %74 = inttoptr i64 %73 to i32*

  %75 = load i32, i32* %74

  %76 = add i64 %45, 12

  %77 = inttoptr i64 %76 to i32*

  store i32 %75, i32* %77

  %78 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_index_array_type* @test_index_array to i64), i64 16) to i32*)

  %79 = sext i32 %78 to i64

  %80 = shl nsw i64 %79, 2

  %81 = add i64 %80, %71

  %82 = inttoptr i64 %81 to i32*

  %83 = load i32, i32* %82

  %84 = add i64 %45, 16

  %85 = inttoptr i64 %84 to i32*

  store i32 %83, i32* %85

  %86 = add i64 %1, 119

  %87 = load i64, i64* %18, align 8, !tbaa !1240

  %88 = add i64 %87, -8

  %89 = inttoptr i64 %88 to i64*

  store i64 %86, i64* %89

  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %91 = inttoptr i64 %88 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %3, align 8, !alias.scope !1603, !noalias !1606

  store i64 %87, i64* %18, align 8, !alias.scope !1603, !noalias !1606

  %93 = tail call i64 @memset(i64 and (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 4294967295), i64 0, i64 4096), !noalias !1603

  %94 = load i64, i64* %3, align 8

  %95 = load i64, i64* %10, align 8

  %96 = add i64 %95, 33554432

  %97 = add i64 %95, 33554436

  br label %block_401390



block_401713:                                     ; preds = %block_401704

  %98 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %99 = add i32 %98, 1

  store i32 %99, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %100 = load i32, i32* %8, align 4

  %101 = add i32 %100, -10

  %102 = icmp ult i32 %100, 10

  %103 = zext i1 %102 to i8

  store i8 %103, i8* %36, align 1, !tbaa !1244

  %104 = and i32 %101, 255

  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #10

  %106 = trunc i32 %105 to i8

  %107 = and i8 %106, 1

  %108 = xor i8 %107, 1

  store i8 %108, i8* %37, align 1, !tbaa !1258

  %109 = xor i32 %101, %100

  %110 = lshr i32 %109, 4

  %111 = trunc i32 %110 to i8

  %112 = and i8 %111, 1

  store i8 %112, i8* %38, align 1, !tbaa !1259

  %113 = icmp eq i32 %101, 0

  %114 = zext i1 %113 to i8

  store i8 %114, i8* %39, align 1, !tbaa !1260

  %115 = lshr i32 %101, 31

  %116 = trunc i32 %115 to i8

  store i8 %116, i8* %40, align 1, !tbaa !1261

  %117 = lshr i32 %100, 31

  %118 = xor i32 %115, %117

  %119 = add nuw nsw i32 %118, %117

  %120 = icmp eq i32 %119, 2

  %121 = zext i1 %120 to i8

  store i8 %121, i8* %41, align 1, !tbaa !1262

  br i1 %113, label %block_401724, label %block_40158a



block_4014f2:                                     ; preds = %block_4014c6, %block_4014e0

  %122 = phi i64 [ -524284, %block_4014c6 ], [ %151, %block_4014e0 ]

  %123 = phi i32 [ %835, %block_4014c6 ], [ %148, %block_4014e0 ]

  %124 = phi i64 [ %836, %block_4014c6 ], [ %150, %block_4014e0 ]

  %125 = phi %struct.Memory* [ %153, %block_4014c6 ], [ %125, %block_4014e0 ]

  %126 = shl i64 %122, 2

  %127 = add i64 %837, %126

  %128 = inttoptr i64 %127 to i32*

  %129 = load i32, i32* %128

  %130 = add i32 %129, %123

  %131 = inttoptr i64 %127 to i32*

  store i32 %130, i32* %131

  %132 = add i64 %838, %126

  %133 = inttoptr i64 %132 to i32*

  %134 = load i32, i32* %133

  %135 = add i32 %134, %130

  %136 = inttoptr i64 %132 to i32*

  store i32 %135, i32* %136

  %137 = add i64 %839, %126

  %138 = inttoptr i64 %137 to i32*

  %139 = load i32, i32* %138

  %140 = add i32 %139, %135

  %141 = inttoptr i64 %137 to i32*

  store i32 %140, i32* %141

  %142 = icmp eq i64 %122, 0

  %143 = select i1 %142, i64 47, i64 -18

  %144 = add i64 %124, %143

  br i1 %142, label %block_401521, label %block_4014e0



block_4014e0:                                     ; preds = %block_4014f2

  %145 = add i64 %840, %126

  %146 = inttoptr i64 %145 to i32*

  %147 = load i32, i32* %146

  %148 = add i32 %147, %140

  %149 = inttoptr i64 %145 to i32*

  store i32 %148, i32* %149

  %150 = add i64 %144, 18

  %151 = add i64 %122, 4

  br label %block_4014f2



block_401490:                                     ; preds = %block_401470, %block_401490

  %152 = phi i64 [ -8388608, %block_401470 ], [ %195, %block_401490 ]

  %153 = phi %struct.Memory* [ %577, %block_401470 ], [ %153, %block_401490 ]

  %154 = shl i64 %152, 2

  %155 = add i64 %784, %154

  %156 = inttoptr i64 %155 to i32*

  %157 = load i32, i32* %156

  %158 = sext i32 %157 to i64

  %159 = shl nsw i64 %158, 2

  %160 = add i64 %159, %785

  %161 = inttoptr i64 %160 to i32*

  %162 = load i32, i32* %161

  %163 = add i32 %162, 1

  %164 = inttoptr i64 %160 to i32*

  store i32 %163, i32* %164

  %165 = add i64 %786, %154

  %166 = inttoptr i64 %165 to i32*

  %167 = load i32, i32* %166

  %168 = sext i32 %167 to i64

  %169 = shl nsw i64 %168, 2

  %170 = add i64 %169, %785

  %171 = inttoptr i64 %170 to i32*

  %172 = load i32, i32* %171

  %173 = add i32 %172, 1

  %174 = inttoptr i64 %170 to i32*

  store i32 %173, i32* %174

  %175 = add i64 %787, %154

  %176 = inttoptr i64 %175 to i32*

  %177 = load i32, i32* %176

  %178 = sext i32 %177 to i64

  %179 = shl nsw i64 %178, 2

  %180 = add i64 %179, %785

  %181 = inttoptr i64 %180 to i32*

  %182 = load i32, i32* %181

  %183 = add i32 %182, 1

  %184 = inttoptr i64 %180 to i32*

  store i32 %183, i32* %184

  %185 = add i64 %788, %154

  %186 = inttoptr i64 %185 to i32*

  %187 = load i32, i32* %186

  %188 = sext i32 %187 to i64

  %189 = shl nsw i64 %188, 2

  %190 = add i64 %189, %785

  %191 = inttoptr i64 %190 to i32*

  %192 = load i32, i32* %191

  %193 = add i32 %192, 1

  %194 = inttoptr i64 %190 to i32*

  store i32 %193, i32* %194

  %195 = add i64 %152, 4

  %196 = icmp eq i64 %195, 0

  br i1 %196, label %block_4014c6, label %block_401490



block_40155d:                                     ; preds = %block_401615, %block_40154b, %block_4015fa

  %197 = phi i64 [ %311, %block_40154b ], [ %705, %block_401615 ], [ %279, %block_4015fa ]

  %198 = phi i64 [ %300, %block_40154b ], [ %695, %block_401615 ], [ %269, %block_4015fa ]

  %199 = phi %struct.Memory* [ %301, %block_40154b ], [ %722, %block_401615 ], [ %722, %block_4015fa ]

  %200 = add i64 %198, 12

  %201 = inttoptr i64 %200 to i32*

  %202 = load i32, i32* %201

  %203 = add i32 %202, -1

  %204 = zext i32 %203 to i64

  store i64 %204, i64* %11, align 8, !tbaa !1240

  %205 = add i32 %202, -8388607

  %206 = icmp ult i32 %203, 8388606

  %207 = icmp eq i32 %205, 0

  %208 = or i1 %207, %206

  %209 = select i1 %208, i64 337, i64 18

  %210 = add i64 %197, %209

  br i1 %208, label %block_4016ae, label %block_40156f



block_4016d8:                                     ; preds = %block_4016ae

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64* %14, align 8, !tbaa !1240

  store i64 3, i64* %12, align 8, !tbaa !1240

  %211 = load i32, i32* %8, align 4

  %212 = zext i32 %211 to i64

  store i64 %212, i64* %13, align 8, !tbaa !1240

  %213 = add i64 %819, 20

  %214 = load i64, i64* %18, align 8, !tbaa !1240

  %215 = add i64 %214, -8

  %216 = inttoptr i64 %215 to i64*

  store i64 %213, i64* %216

  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %219 = load i64, i64* %217, align 8, !alias.scope !1608, !noalias !1611

  %220 = load i64, i64* %218, align 8, !alias.scope !1608, !noalias !1611

  %221 = inttoptr i64 %214 to i64*

  %222 = load i64, i64* %221

  %223 = add i64 %214, 8

  %224 = inttoptr i64 %223 to i64*

  %225 = load i64, i64* %224

  %226 = add i64 %214, 16

  %227 = inttoptr i64 %226 to i64*

  %228 = load i64, i64* %227

  %229 = add i64 %214, 24

  %230 = inttoptr i64 %229 to i64*

  %231 = load i64, i64* %230

  %232 = add i64 %214, 32

  %233 = inttoptr i64 %232 to i64*

  %234 = load i64, i64* %233

  %235 = add i64 %214, 40

  %236 = inttoptr i64 %235 to i64*

  %237 = load i64, i64* %236

  %238 = add i64 %214, 48

  %239 = inttoptr i64 %238 to i64*

  %240 = load i64, i64* %239

  %241 = add i64 %214, 56

  %242 = inttoptr i64 %241 to i64*

  %243 = load i64, i64* %242

  %244 = add i64 %214, 64

  %245 = inttoptr i64 %244 to i64*

  %246 = load i64, i64* %245

  %247 = add i64 %214, 72

  %248 = inttoptr i64 %247 to i64*

  %249 = load i64, i64* %248

  %250 = inttoptr i64 %215 to i64*

  %251 = load i64, i64* %250

  store i64 %251, i64* %3, align 8, !alias.scope !1608, !noalias !1611

  store i64 %214, i64* %18, align 8, !alias.scope !1608, !noalias !1611

  %252 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64 %212, i64 3, i64 %807, i64 %219, i64 %220, i64 %222, i64 %225, i64 %228, i64 %231, i64 %234, i64 %237, i64 %240, i64 %243, i64 %246, i64 %249), !noalias !1608

  %253 = load i64, i64* %3, align 8

  %254 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %255 = add i64 %254, 16

  %256 = inttoptr i64 %255 to i32*

  %257 = load i32, i32* %256

  %258 = add i32 %257, -1

  %259 = zext i32 %258 to i64

  store i64 %259, i64* %9, align 8, !tbaa !1240

  %260 = add i32 %257, -8388607

  %261 = icmp ult i32 %258, 8388606

  %262 = icmp eq i32 %260, 0

  %263 = or i1 %262, %261

  %264 = select i1 %263, i64 24, i64 -364

  %265 = add i64 %253, %264

  br i1 %263, label %block_401704, label %block_401580



block_4016d6:                                     ; preds = %block_4016be

  %266 = add i64 %631, 46

  br label %block_401704



block_4015fa:                                     ; preds = %block_4015ea

  %267 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %268 = add i32 %267, 1

  store i32 %268, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %269 = load i64, i64* %9, align 8

  %270 = add i64 %269, 8

  %271 = inttoptr i64 %270 to i32*

  %272 = load i32, i32* %271

  %273 = add i32 %272, -1

  %274 = add i32 %272, -8388607

  %275 = icmp ult i32 %273, 8388606

  %276 = icmp eq i32 %274, 0

  %277 = or i1 %276, %275

  %278 = select i1 %277, i64 25, i64 -157

  %279 = add i64 %736, %278

  br i1 %277, label %block_401613, label %block_40155d



block_401675:                                     ; preds = %block_40165c

  %280 = add i64 %801, 57

  br label %block_4016ae



block_40164c:                                     ; preds = %block_401613, %block_401615, %block_40154b

  %281 = phi i64 [ %300, %block_40154b ], [ %695, %block_401615 ], [ %269, %block_401613 ]

  %282 = phi i64 [ %311, %block_40154b ], [ %705, %block_401615 ], [ %737, %block_401613 ]

  %283 = phi i32 [ %305, %block_40154b ], [ %699, %block_401615 ], [ %273, %block_401613 ]

  %284 = phi %struct.Memory* [ %301, %block_40154b ], [ %722, %block_401615 ], [ %722, %block_401613 ]

  %285 = sext i32 %283 to i64

  store i64 %285, i64* %11, align 8, !tbaa !1240

  %286 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8) to i32*)

  %287 = load i32, i32* %415, align 4

  %288 = add i32 %287, %286

  %289 = zext i32 %288 to i64

  store i64 %289, i64* %12, align 8, !tbaa !1240

  %290 = load i64, i64* %10, align 8

  %291 = shl nsw i64 %285, 2

  %292 = add i64 %291, %290

  %293 = inttoptr i64 %292 to i32*

  %294 = load i32, i32* %293

  %295 = sub i32 %294, %288

  %296 = icmp eq i32 %295, 0

  %297 = select i1 %296, i64 16, i64 43

  %298 = add i64 %282, %297

  br i1 %296, label %block_40165c, label %block_401677



block_40154b:                                     ; preds = %block_40159f.block_40154b_crit_edge, %block_401539, %block_4015b6

  %299 = phi i64 [ %476, %block_4015b6 ], [ %640, %block_40159f.block_40154b_crit_edge ], [ %483, %block_401539 ]

  %300 = phi i64 [ %469, %block_4015b6 ], [ %641, %block_40159f.block_40154b_crit_edge ], [ %566, %block_401539 ]

  %301 = phi %struct.Memory* [ %125, %block_4015b6 ], [ %125, %block_40159f.block_40154b_crit_edge ], [ %125, %block_401539 ]

  %302 = add i64 %300, 8

  %303 = inttoptr i64 %302 to i32*

  %304 = load i32, i32* %303

  %305 = add i32 %304, -1

  %306 = add i32 %304, -8388607

  %307 = icmp ult i32 %305, 8388606

  %308 = icmp eq i32 %306, 0

  %309 = or i1 %308, %307

  %310 = select i1 %309, i64 257, i64 18

  %311 = add i64 %299, %310

  br i1 %309, label %block_40164c, label %block_40155d



block_401677:                                     ; preds = %block_40164c

  %312 = add i64 %298, 10

  %313 = load i64, i64* %18, align 8, !tbaa !1240

  %314 = add i64 %313, -8

  %315 = inttoptr i64 %314 to i64*

  store i64 %312, i64* %315

  %316 = inttoptr i64 %314 to i64*

  %317 = load i64, i64* %316

  store i64 %317, i64* %3, align 8, !alias.scope !1613, !noalias !1616

  store i64 %313, i64* %18, align 8, !alias.scope !1613, !noalias !1616

  %318 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1446), i64 4294967295))

  %319 = load i64, i64* %3, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64* %14, align 8, !tbaa !1240

  store i64 2, i64* %12, align 8, !tbaa !1240

  %320 = load i32, i32* %8, align 4

  %321 = zext i32 %320 to i64

  store i64 %321, i64* %13, align 8, !tbaa !1240

  %322 = add i64 %319, 20

  %323 = load i64, i64* %18, align 8, !tbaa !1240

  %324 = add i64 %323, -8

  %325 = inttoptr i64 %324 to i64*

  store i64 %322, i64* %325

  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %329 = load i64, i64* %326, align 8, !alias.scope !1618, !noalias !1621

  %330 = load i64, i64* %327, align 8, !alias.scope !1618, !noalias !1621

  %331 = load i64, i64* %328, align 8, !alias.scope !1618, !noalias !1621

  %332 = inttoptr i64 %323 to i64*

  %333 = load i64, i64* %332

  %334 = add i64 %323, 8

  %335 = inttoptr i64 %334 to i64*

  %336 = load i64, i64* %335

  %337 = add i64 %323, 16

  %338 = inttoptr i64 %337 to i64*

  %339 = load i64, i64* %338

  %340 = add i64 %323, 24

  %341 = inttoptr i64 %340 to i64*

  %342 = load i64, i64* %341

  %343 = add i64 %323, 32

  %344 = inttoptr i64 %343 to i64*

  %345 = load i64, i64* %344

  %346 = add i64 %323, 40

  %347 = inttoptr i64 %346 to i64*

  %348 = load i64, i64* %347

  %349 = add i64 %323, 48

  %350 = inttoptr i64 %349 to i64*

  %351 = load i64, i64* %350

  %352 = add i64 %323, 56

  %353 = inttoptr i64 %352 to i64*

  %354 = load i64, i64* %353

  %355 = add i64 %323, 64

  %356 = inttoptr i64 %355 to i64*

  %357 = load i64, i64* %356

  %358 = add i64 %323, 72

  %359 = inttoptr i64 %358 to i64*

  %360 = load i64, i64* %359

  %361 = inttoptr i64 %324 to i64*

  %362 = load i64, i64* %361

  store i64 %362, i64* %3, align 8, !alias.scope !1618, !noalias !1621

  store i64 %323, i64* %18, align 8, !alias.scope !1618, !noalias !1621

  %363 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64 %321, i64 2, i64 %329, i64 %330, i64 %331, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357, i64 %360), !noalias !1618

  %364 = load i64, i64* %3, align 8

  %365 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %365, i64* %9, align 8, !tbaa !1240

  %366 = add i64 %365, 12

  %367 = inttoptr i64 %366 to i32*

  %368 = load i32, i32* %367

  %369 = add i32 %368, -1

  %370 = zext i32 %369 to i64

  store i64 %370, i64* %11, align 8, !tbaa !1240

  %371 = add i32 %368, -8388607

  %372 = icmp ult i32 %369, 8388606

  %373 = icmp eq i32 %371, 0

  %374 = or i1 %373, %372

  %375 = select i1 %374, i64 25, i64 -294

  %376 = add i64 %364, %375

  br i1 %374, label %block_4016ae, label %block_40156f



block_401744:                                     ; preds = %block_401580, %block_401724, %block_401726

  %377 = phi %struct.Memory* [ %843, %block_401726 ], [ %843, %block_401724 ], [ %858, %block_401580 ]

  %378 = load i64, i64* %10, align 8

  store i64 %378, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  %379 = load i64, i64* %18, align 8, !tbaa !1240

  %380 = add i64 %379, 8

  %381 = inttoptr i64 %379 to i64*

  %382 = load i64, i64* %381

  store i64 %382, i64* %10, align 8, !tbaa !1240

  %383 = add i64 %379, 16

  %384 = inttoptr i64 %380 to i64*

  %385 = load i64, i64* %384

  store i64 %385, i64* %16, align 8, !tbaa !1240

  %386 = add i64 %379, 24

  %387 = inttoptr i64 %383 to i64*

  %388 = load i64, i64* %387

  store i64 %388, i64* %15, align 8, !tbaa !1240

  %389 = inttoptr i64 %386 to i64*

  %390 = load i64, i64* %389

  store i64 %390, i64* %3, align 8, !tbaa !1240

  %391 = add i64 %379, 32

  store i64 %391, i64* %18, align 8, !tbaa !1240

  ret %struct.Memory* %377



block_4013e0:                                     ; preds = %block_4013c0, %block_4013e0

  %392 = phi i32 [ 0, %block_4013c0 ], [ %410, %block_4013e0 ]

  %393 = phi i64 [ -4092, %block_4013c0 ], [ %413, %block_4013e0 ]

  %394 = phi %struct.Memory* [ %739, %block_4013c0 ], [ %394, %block_4013e0 ]

  %395 = add i64 %393, add (i64 ptrtoint (%bucket_size_type* @bucket_size to i64), i64 4092)

  %396 = inttoptr i64 %395 to i32*

  %397 = load i32, i32* %396

  %398 = add i32 %397, %392

  %399 = add i64 %393, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %400 = inttoptr i64 %399 to i32*

  store i32 %398, i32* %400

  %401 = add i64 %393, ptrtoint (%key_buff1_type* @key_buff1 to i64)

  %402 = inttoptr i64 %401 to i32*

  %403 = load i32, i32* %402

  %404 = add i32 %403, %398

  %405 = add i64 %393, add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4)

  %406 = inttoptr i64 %405 to i32*

  store i32 %404, i32* %406

  %407 = add i64 %393, add (i64 ptrtoint (%key_buff1_type* @key_buff1 to i64), i64 4)

  %408 = inttoptr i64 %407 to i32*

  %409 = load i32, i32* %408

  %410 = add i32 %409, %404

  %411 = add i64 %393, add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 8)

  %412 = inttoptr i64 %411 to i32*

  store i32 %410, i32* %412

  %413 = add nsw i64 %393, 12

  %414 = icmp eq i64 %413, 0

  br i1 %414, label %block_40140a, label %block_4013e0



block_4013c0:                                     ; preds = %block_401390

  %415 = bitcast %union.anon* %6 to i32*

  store i32 0, i32* bitcast (%bucket_ptrs_type* @bucket_ptrs to i32*)

  br label %block_4013e0



block_4015b6:                                     ; preds = %block_40158f

  %416 = add i64 %832, 10

  %417 = load i64, i64* %18, align 8, !tbaa !1240

  %418 = add i64 %417, -8

  %419 = inttoptr i64 %418 to i64*

  store i64 %416, i64* %419

  %420 = inttoptr i64 %418 to i64*

  %421 = load i64, i64* %420

  store i64 %421, i64* %3, align 8, !alias.scope !1623, !noalias !1626

  store i64 %417, i64* %18, align 8, !alias.scope !1623, !noalias !1626

  %422 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1446), i64 4294967295))

  %423 = load i64, i64* %3, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64* %14, align 8, !tbaa !1240

  store i64 0, i64* %12, align 8, !tbaa !1240

  %424 = load i32, i32* %8, align 4

  %425 = zext i32 %424 to i64

  store i64 %425, i64* %13, align 8, !tbaa !1240

  %426 = add i64 %423, 17

  %427 = load i64, i64* %18, align 8, !tbaa !1240

  %428 = add i64 %427, -8

  %429 = inttoptr i64 %428 to i64*

  store i64 %426, i64* %429

  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %433 = load i64, i64* %430, align 8, !alias.scope !1628, !noalias !1631

  %434 = load i64, i64* %431, align 8, !alias.scope !1628, !noalias !1631

  %435 = load i64, i64* %432, align 8, !alias.scope !1628, !noalias !1631

  %436 = inttoptr i64 %427 to i64*

  %437 = load i64, i64* %436

  %438 = add i64 %427, 8

  %439 = inttoptr i64 %438 to i64*

  %440 = load i64, i64* %439

  %441 = add i64 %427, 16

  %442 = inttoptr i64 %441 to i64*

  %443 = load i64, i64* %442

  %444 = add i64 %427, 24

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %427, 32

  %448 = inttoptr i64 %447 to i64*

  %449 = load i64, i64* %448

  %450 = add i64 %427, 40

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = add i64 %427, 48

  %454 = inttoptr i64 %453 to i64*

  %455 = load i64, i64* %454

  %456 = add i64 %427, 56

  %457 = inttoptr i64 %456 to i64*

  %458 = load i64, i64* %457

  %459 = add i64 %427, 64

  %460 = inttoptr i64 %459 to i64*

  %461 = load i64, i64* %460

  %462 = add i64 %427, 72

  %463 = inttoptr i64 %462 to i64*

  %464 = load i64, i64* %463

  %465 = inttoptr i64 %428 to i64*

  %466 = load i64, i64* %465

  store i64 %466, i64* %3, align 8, !alias.scope !1628, !noalias !1631

  store i64 %427, i64* %18, align 8, !alias.scope !1628, !noalias !1631

  %467 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64 %425, i64 0, i64 %433, i64 %434, i64 %435, i64 %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452, i64 %455, i64 %458, i64 %461, i64 %464), !noalias !1628

  %468 = load i64, i64* %3, align 8

  %469 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %469, i64* %9, align 8, !tbaa !1240

  %470 = add i64 %469, 4

  %471 = inttoptr i64 %470 to i32*

  %472 = load i32, i32* %471

  %473 = add i32 %472, -1

  %474 = icmp ult i32 %473, 8388607

  %475 = select i1 %474, i64 25, i64 -134

  %476 = add i64 %468, %475

  br i1 %474, label %block_4015ea, label %block_40154b



block_401539:                                     ; preds = %block_401521

  %477 = add i64 %566, 4

  %478 = inttoptr i64 %477 to i32*

  %479 = load i32, i32* %478

  %480 = add i32 %479, -1

  %481 = icmp ult i32 %480, 8388607

  %482 = select i1 %481, i64 177, i64 18

  %483 = add i64 %575, %482

  br i1 %481, label %block_4015ea, label %block_40154b



block_4015b4:                                     ; preds = %block_40159f

  %484 = add i64 %640, 54

  br label %block_4015ea



block_401726:                                     ; preds = %block_401704

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64* %14, align 8, !tbaa !1240

  store i64 4, i64* %12, align 8, !tbaa !1240

  %485 = load i32, i32* %8, align 4

  %486 = zext i32 %485 to i64

  store i64 %486, i64* %13, align 8, !tbaa !1240

  %487 = add i64 %857, 20

  %488 = load i64, i64* %18, align 8, !tbaa !1240

  %489 = add i64 %488, -8

  %490 = inttoptr i64 %489 to i64*

  store i64 %487, i64* %490

  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %493 = load i64, i64* %491, align 8, !alias.scope !1633, !noalias !1636

  %494 = load i64, i64* %492, align 8, !alias.scope !1633, !noalias !1636

  %495 = inttoptr i64 %488 to i64*

  %496 = load i64, i64* %495

  %497 = add i64 %488, 8

  %498 = inttoptr i64 %497 to i64*

  %499 = load i64, i64* %498

  %500 = add i64 %488, 16

  %501 = inttoptr i64 %500 to i64*

  %502 = load i64, i64* %501

  %503 = add i64 %488, 24

  %504 = inttoptr i64 %503 to i64*

  %505 = load i64, i64* %504

  %506 = add i64 %488, 32

  %507 = inttoptr i64 %506 to i64*

  %508 = load i64, i64* %507

  %509 = add i64 %488, 40

  %510 = inttoptr i64 %509 to i64*

  %511 = load i64, i64* %510

  %512 = add i64 %488, 48

  %513 = inttoptr i64 %512 to i64*

  %514 = load i64, i64* %513

  %515 = add i64 %488, 56

  %516 = inttoptr i64 %515 to i64*

  %517 = load i64, i64* %516

  %518 = add i64 %488, 64

  %519 = inttoptr i64 %518 to i64*

  %520 = load i64, i64* %519

  %521 = add i64 %488, 72

  %522 = inttoptr i64 %521 to i64*

  %523 = load i64, i64* %522

  %524 = inttoptr i64 %489 to i64*

  %525 = load i64, i64* %524

  store i64 %525, i64* %3, align 8, !alias.scope !1633, !noalias !1636

  store i64 %488, i64* %18, align 8, !alias.scope !1633, !noalias !1636

  %526 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64 %486, i64 4, i64 %848, i64 %493, i64 %494, i64 %496, i64 %499, i64 %502, i64 %505, i64 %508, i64 %511, i64 %514, i64 %517, i64 %520, i64 %523), !noalias !1633

  store i64 %526, i64* %90, align 8, !alias.scope !1633, !noalias !1636

  %527 = load i32, i32* %8, align 4

  %528 = add i32 %527, -10

  %529 = icmp ult i32 %527, 10

  %530 = zext i1 %529 to i8

  store i8 %530, i8* %36, align 1, !tbaa !1244

  %531 = and i32 %528, 255

  %532 = tail call i32 @llvm.ctpop.i32(i32 %531) #10

  %533 = trunc i32 %532 to i8

  %534 = and i8 %533, 1

  %535 = xor i8 %534, 1

  store i8 %535, i8* %37, align 1, !tbaa !1258

  %536 = xor i32 %528, %527

  %537 = lshr i32 %536, 4

  %538 = trunc i32 %537 to i8

  %539 = and i8 %538, 1

  store i8 %539, i8* %38, align 1, !tbaa !1259

  %540 = icmp eq i32 %528, 0

  %541 = zext i1 %540 to i8

  store i8 %541, i8* %39, align 1, !tbaa !1260

  %542 = lshr i32 %528, 31

  %543 = trunc i32 %542 to i8

  store i8 %543, i8* %40, align 1, !tbaa !1261

  %544 = lshr i32 %527, 31

  %545 = xor i32 %542, %544

  %546 = add nuw nsw i32 %545, %544

  %547 = icmp eq i32 %546, 2

  %548 = zext i1 %547 to i8

  store i8 %548, i8* %41, align 1, !tbaa !1262

  br i1 %540, label %block_401744, label %block_40158a



block_40158a:                                     ; preds = %block_401580, %block_401726, %block_401713

  %549 = phi %struct.Memory* [ %843, %block_401726 ], [ %843, %block_401713 ], [ %858, %block_401580 ]

  %550 = load i64, i64* %18, align 8, !tbaa !1240

  %551 = add i64 %550, 8

  %552 = inttoptr i64 %550 to i64*

  %553 = load i64, i64* %552

  store i64 %553, i64* %10, align 8, !tbaa !1240

  %554 = add i64 %550, 16

  %555 = inttoptr i64 %551 to i64*

  %556 = load i64, i64* %555

  store i64 %556, i64* %16, align 8, !tbaa !1240

  %557 = add i64 %550, 24

  %558 = inttoptr i64 %554 to i64*

  %559 = load i64, i64* %558

  store i64 %559, i64* %15, align 8, !tbaa !1240

  %560 = inttoptr i64 %557 to i64*

  %561 = load i64, i64* %560

  store i64 %561, i64* %3, align 8, !tbaa !1240

  %562 = add i64 %550, 32

  store i64 %562, i64* %18, align 8, !tbaa !1240

  ret %struct.Memory* %549



block_401724:                                     ; preds = %block_401713

  br label %block_401744



block_401521:                                     ; preds = %block_4014f2

  %563 = load i64, i64* %16, align 8

  %564 = add i64 %563, 4294967295

  %565 = and i64 %564, 4294967295

  store i64 %565, i64* %15, align 8, !tbaa !1240

  %566 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %566, i64* %9, align 8, !tbaa !1240

  %567 = inttoptr i64 %566 to i32*

  %568 = load i32, i32* %567

  %569 = add i32 %568, -1

  %570 = add i32 %568, -8388607

  %571 = icmp ult i32 %569, 8388606

  %572 = icmp eq i32 %570, 0

  %573 = or i1 %572, %571

  %574 = select i1 %573, i64 110, i64 24

  %575 = add i64 %144, %574

  br i1 %573, label %block_40158f, label %block_401539



block_401420:                                     ; preds = %block_40140a, %block_401420

  %576 = phi i64 [ -8388608, %block_40140a ], [ %616, %block_401420 ]

  %577 = phi %struct.Memory* [ %394, %block_40140a ], [ %577, %block_401420 ]

  %578 = shl i64 %576, 2

  %579 = add i64 %96, %578

  %580 = inttoptr i64 %579 to i32*

  %581 = load i32, i32* %580

  %582 = zext i32 %581 to i64

  %583 = shl nuw i64 %582, 32

  %584 = ashr i64 %583, 40

  %585 = lshr i64 %584, 1

  %586 = shl i64 %585, 32

  %587 = ashr exact i64 %586, 30

  %588 = add i64 %587, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %589 = inttoptr i64 %588 to i32*

  %590 = load i32, i32* %589

  %591 = sext i32 %590 to i64

  %592 = add i32 %590, 1

  %593 = inttoptr i64 %588 to i32*

  store i32 %592, i32* %593

  %594 = shl nsw i64 %591, 2

  %595 = add i64 %594, %833

  %596 = inttoptr i64 %595 to i32*

  store i32 %581, i32* %596

  %597 = add i64 %97, %578

  %598 = inttoptr i64 %597 to i32*

  %599 = load i32, i32* %598

  %600 = zext i32 %599 to i64

  %601 = shl nuw i64 %600, 32

  %602 = ashr i64 %601, 40

  %603 = lshr i64 %602, 1

  %604 = shl i64 %603, 32

  %605 = ashr exact i64 %604, 30

  %606 = add i64 %605, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %607 = inttoptr i64 %606 to i32*

  %608 = load i32, i32* %607

  %609 = sext i32 %608 to i64

  %610 = add nsw i64 %609, 1

  %611 = trunc i64 %610 to i32

  %612 = inttoptr i64 %606 to i32*

  store i32 %611, i32* %612

  %613 = shl nsw i64 %609, 2

  %614 = add i64 %613, %833

  %615 = inttoptr i64 %614 to i32*

  store i32 %599, i32* %615

  %616 = add i64 %576, 2

  %617 = icmp eq i64 %616, 0

  br i1 %617, label %block_401470, label %block_401420



block_4016be:                                     ; preds = %block_4016ae

  %618 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %619 = add i32 %618, 1

  store i32 %619, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %620 = load i64, i64* %9, align 8

  %621 = add i64 %620, 16

  %622 = inttoptr i64 %621 to i32*

  %623 = load i32, i32* %622

  %624 = add i32 %623, -1

  %625 = zext i32 %624 to i64

  store i64 %625, i64* %9, align 8, !tbaa !1240

  %626 = add i32 %623, -8388607

  %627 = icmp ult i32 %624, 8388606

  %628 = icmp eq i32 %626, 0

  %629 = or i1 %628, %627

  %630 = select i1 %629, i64 24, i64 -318

  %631 = add i64 %819, %630

  br i1 %629, label %block_4016d6, label %block_401580



block_40159f:                                     ; preds = %block_40158f

  %632 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %633 = add i32 %632, 1

  store i32 %633, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %634 = add i64 %566, 4

  %635 = inttoptr i64 %634 to i32*

  %636 = load i32, i32* %635

  %637 = add i32 %636, -1

  %638 = icmp ult i32 %637, 8388607

  %639 = select i1 %638, i64 21, i64 -84

  %640 = add i64 %832, %639

  br i1 %638, label %block_4015b4, label %block_40159f.block_40154b_crit_edge



block_40159f.block_40154b_crit_edge:              ; preds = %block_40159f

  %641 = load i64, i64* %9, align 8

  br label %block_40154b



block_401615:                                     ; preds = %block_4015ea

  %642 = add i64 %736, 10

  %643 = load i64, i64* %18, align 8, !tbaa !1240

  %644 = add i64 %643, -8

  %645 = inttoptr i64 %644 to i64*

  store i64 %642, i64* %645

  %646 = inttoptr i64 %644 to i64*

  %647 = load i64, i64* %646

  store i64 %647, i64* %3, align 8, !alias.scope !1638, !noalias !1641

  store i64 %643, i64* %18, align 8, !alias.scope !1638, !noalias !1641

  %648 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1446), i64 4294967295))

  %649 = load i64, i64* %3, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64* %14, align 8, !tbaa !1240

  store i64 1, i64* %12, align 8, !tbaa !1240

  %650 = load i32, i32* %8, align 4

  %651 = zext i32 %650 to i64

  store i64 %651, i64* %13, align 8, !tbaa !1240

  %652 = add i64 %649, 20

  %653 = load i64, i64* %18, align 8, !tbaa !1240

  %654 = add i64 %653, -8

  %655 = inttoptr i64 %654 to i64*

  store i64 %652, i64* %655

  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %659 = load i64, i64* %656, align 8, !alias.scope !1643, !noalias !1646

  %660 = load i64, i64* %657, align 8, !alias.scope !1643, !noalias !1646

  %661 = load i64, i64* %658, align 8, !alias.scope !1643, !noalias !1646

  %662 = inttoptr i64 %653 to i64*

  %663 = load i64, i64* %662

  %664 = add i64 %653, 8

  %665 = inttoptr i64 %664 to i64*

  %666 = load i64, i64* %665

  %667 = add i64 %653, 16

  %668 = inttoptr i64 %667 to i64*

  %669 = load i64, i64* %668

  %670 = add i64 %653, 24

  %671 = inttoptr i64 %670 to i64*

  %672 = load i64, i64* %671

  %673 = add i64 %653, 32

  %674 = inttoptr i64 %673 to i64*

  %675 = load i64, i64* %674

  %676 = add i64 %653, 40

  %677 = inttoptr i64 %676 to i64*

  %678 = load i64, i64* %677

  %679 = add i64 %653, 48

  %680 = inttoptr i64 %679 to i64*

  %681 = load i64, i64* %680

  %682 = add i64 %653, 56

  %683 = inttoptr i64 %682 to i64*

  %684 = load i64, i64* %683

  %685 = add i64 %653, 64

  %686 = inttoptr i64 %685 to i64*

  %687 = load i64, i64* %686

  %688 = add i64 %653, 72

  %689 = inttoptr i64 %688 to i64*

  %690 = load i64, i64* %689

  %691 = inttoptr i64 %654 to i64*

  %692 = load i64, i64* %691

  store i64 %692, i64* %3, align 8, !alias.scope !1643, !noalias !1646

  store i64 %653, i64* %18, align 8, !alias.scope !1643, !noalias !1646

  %693 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 1078), i64 4294967295), i64 %651, i64 1, i64 %659, i64 %660, i64 %661, i64 %663, i64 %666, i64 %669, i64 %672, i64 %675, i64 %678, i64 %681, i64 %684, i64 %687, i64 %690), !noalias !1643

  %694 = load i64, i64* %3, align 8

  %695 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %695, i64* %9, align 8, !tbaa !1240

  %696 = add i64 %695, 8

  %697 = inttoptr i64 %696 to i32*

  %698 = load i32, i32* %697

  %699 = add i32 %698, -1

  %700 = add i32 %698, -8388607

  %701 = icmp ult i32 %699, 8388606

  %702 = icmp eq i32 %700, 0

  %703 = or i1 %702, %701

  %704 = select i1 %703, i64 25, i64 -214

  %705 = add i64 %694, %704

  br i1 %703, label %block_40164c, label %block_40155d



block_40156f:                                     ; preds = %block_40165c.block_40156f_crit_edge, %block_401677, %block_40155d

  %706 = phi i64 [ %376, %block_401677 ], [ %801, %block_40165c.block_40156f_crit_edge ], [ %210, %block_40155d ]

  %707 = phi i64 [ %365, %block_401677 ], [ %802, %block_40165c.block_40156f_crit_edge ], [ %198, %block_40155d ]

  %708 = phi %struct.Memory* [ %284, %block_401677 ], [ %284, %block_40165c.block_40156f_crit_edge ], [ %199, %block_40155d ]

  %709 = add i64 %707, 16

  %710 = inttoptr i64 %709 to i32*

  %711 = load i32, i32* %710

  %712 = add i32 %711, -1

  %713 = zext i32 %712 to i64

  store i64 %713, i64* %9, align 8, !tbaa !1240

  %714 = add i32 %711, -8388607

  %715 = icmp ult i32 %712, 8388606

  %716 = icmp eq i32 %714, 0

  %717 = or i1 %716, %715

  %718 = select i1 %717, i64 405, i64 17

  %719 = add i64 %706, %718

  br i1 %717, label %block_401704, label %block_401580



block_4015ea:                                     ; preds = %block_4015b4, %block_401539, %block_4015b6

  %720 = phi i64 [ %476, %block_4015b6 ], [ %484, %block_4015b4 ], [ %483, %block_401539 ]

  %721 = phi i32 [ %473, %block_4015b6 ], [ %637, %block_4015b4 ], [ %480, %block_401539 ]

  %722 = phi %struct.Memory* [ %125, %block_4015b6 ], [ %125, %block_4015b4 ], [ %125, %block_401539 ]

  %723 = sext i32 %721 to i64

  store i64 %723, i64* %11, align 8, !tbaa !1240

  %724 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 4) to i32*)

  %725 = load i32, i32* %415, align 4

  %726 = add i32 %725, %724

  %727 = zext i32 %726 to i64

  store i64 %727, i64* %12, align 8, !tbaa !1240

  %728 = load i64, i64* %10, align 8

  %729 = shl nsw i64 %723, 2

  %730 = add i64 %729, %728

  %731 = inttoptr i64 %730 to i32*

  %732 = load i32, i32* %731

  %733 = sub i32 %732, %726

  %734 = icmp eq i32 %733, 0

  %735 = select i1 %734, i64 16, i64 43

  %736 = add i64 %720, %735

  br i1 %734, label %block_4015fa, label %block_401615



block_401613:                                     ; preds = %block_4015fa

  %737 = add i64 %279, 57

  br label %block_40164c



block_401390:                                     ; preds = %block_401390, %block_401310

  %738 = phi i64 [ -8388608, %block_401310 ], [ %769, %block_401390 ]

  %739 = phi %struct.Memory* [ %2, %block_401310 ], [ %739, %block_401390 ]

  %740 = shl i64 %738, 2

  %741 = add i64 %96, %740

  %742 = inttoptr i64 %741 to i32*

  %743 = load i32, i32* %742

  %744 = zext i32 %743 to i64

  %745 = shl nuw i64 %744, 32

  %746 = ashr i64 %745, 40

  %747 = lshr i64 %746, 1

  %748 = shl i64 %747, 32

  %749 = ashr exact i64 %748, 30

  %750 = add i64 %749, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %751 = inttoptr i64 %750 to i32*

  %752 = load i32, i32* %751

  %753 = add i32 %752, 1

  %754 = inttoptr i64 %750 to i32*

  store i32 %753, i32* %754

  %755 = add i64 %97, %740

  %756 = inttoptr i64 %755 to i32*

  %757 = load i32, i32* %756

  %758 = zext i32 %757 to i64

  %759 = shl nuw i64 %758, 32

  %760 = ashr i64 %759, 40

  %761 = lshr i64 %760, 1

  %762 = shl i64 %761, 32

  %763 = ashr exact i64 %762, 30

  %764 = add i64 %763, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %765 = inttoptr i64 %764 to i32*

  %766 = load i32, i32* %765

  %767 = add i32 %766, 1

  %768 = inttoptr i64 %764 to i32*

  store i32 %767, i32* %768

  %769 = add nsw i64 %738, 2

  %770 = icmp eq i64 %769, 0

  br i1 %770, label %block_4013c0, label %block_401390



block_401470:                                     ; preds = %block_401420

  %771 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  store i64 %771, i64* %10, align 8, !tbaa !1240

  %772 = zext i32 %608 to i64

  %773 = xor i64 %772, %609

  %774 = and i64 %773, 4294967295

  store i64 %774, i64* %13, align 8, !tbaa !1240

  store i64 2097152, i64* %12, align 8, !tbaa !1240

  store i64 %771, i64* %14, align 8, !tbaa !1240

  %775 = add i64 %94, 255

  %776 = load i64, i64* %18, align 8, !tbaa !1240

  %777 = add i64 %776, -8

  %778 = inttoptr i64 %777 to i64*

  store i64 %775, i64* %778

  %779 = inttoptr i64 %777 to i64*

  %780 = load i64, i64* %779

  store i64 %780, i64* %3, align 8, !alias.scope !1648, !noalias !1651

  store i64 %776, i64* %18, align 8, !alias.scope !1648, !noalias !1651

  %781 = tail call i64 @memset(i64 %771, i64 %774, i64 2097152), !noalias !1648

  %782 = load i64, i64* %3, align 8

  %783 = load i64, i64* %15, align 8

  %784 = add i64 %783, 33554432

  %785 = load i64, i64* %10, align 8

  %786 = add i64 %783, 33554436

  %787 = add i64 %783, 33554440

  %788 = add i64 %783, 33554444

  br label %block_401490



block_40165c:                                     ; preds = %block_40164c

  %789 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %790 = add i32 %789, 1

  store i32 %790, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %791 = add i64 %281, 12

  %792 = inttoptr i64 %791 to i32*

  %793 = load i32, i32* %792

  %794 = add i32 %793, -1

  %795 = zext i32 %794 to i64

  store i64 %795, i64* %11, align 8, !tbaa !1240

  %796 = add i32 %793, -8388607

  %797 = icmp ult i32 %794, 8388606

  %798 = icmp eq i32 %796, 0

  %799 = or i1 %798, %797

  %800 = select i1 %799, i64 25, i64 -237

  %801 = add i64 %298, %800

  br i1 %799, label %block_401675, label %block_40165c.block_40156f_crit_edge



block_40165c.block_40156f_crit_edge:              ; preds = %block_40165c

  %802 = load i64, i64* %9, align 8

  br label %block_40156f



block_4016ae:                                     ; preds = %block_401677, %block_401675, %block_40155d

  %803 = phi i32 [ %369, %block_401677 ], [ %794, %block_401675 ], [ %203, %block_40155d ]

  %804 = phi i64 [ %376, %block_401677 ], [ %280, %block_401675 ], [ %210, %block_40155d ]

  %805 = phi %struct.Memory* [ %284, %block_401677 ], [ %284, %block_401675 ], [ %199, %block_40155d ]

  %806 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 12) to i32*)

  %807 = sext i32 %803 to i64

  store i64 %807, i64* %11, align 8, !tbaa !1240

  %808 = load i32, i32* %415, align 4

  %809 = sub i32 %806, %808

  %810 = zext i32 %809 to i64

  store i64 %810, i64* %12, align 8, !tbaa !1240

  %811 = load i64, i64* %10, align 8

  %812 = shl nsw i64 %807, 2

  %813 = add i64 %812, %811

  %814 = inttoptr i64 %813 to i32*

  %815 = load i32, i32* %814

  %816 = sub i32 %815, %809

  %817 = icmp eq i32 %816, 0

  %818 = select i1 %817, i64 16, i64 42

  %819 = add i64 %804, %818

  br i1 %817, label %block_4016be, label %block_4016d8



block_40158f:                                     ; preds = %block_401521

  %820 = trunc i64 %564 to i32

  %821 = sext i32 %569 to i64

  store i64 %821, i64* %11, align 8, !tbaa !1240

  %822 = load i32, i32* bitcast (%test_rank_array_type* @test_rank_array to i32*)

  %823 = add i32 %820, %822

  %824 = zext i32 %823 to i64

  store i64 %824, i64* %12, align 8, !tbaa !1240

  %825 = shl nsw i64 %821, 2

  %826 = add i64 %825, %785

  %827 = inttoptr i64 %826 to i32*

  %828 = load i32, i32* %827

  %829 = sub i32 %828, %823

  %830 = icmp eq i32 %829, 0

  %831 = select i1 %830, i64 16, i64 39

  %832 = add i64 %575, %831

  br i1 %830, label %block_40159f, label %block_4015b6



block_40140a:                                     ; preds = %block_4013e0

  %833 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  store i64 %833, i64* %15, align 8, !tbaa !1240

  br label %block_401420



block_4014c6:                                     ; preds = %block_401490

  %834 = inttoptr i64 %785 to i32*

  %835 = load i32, i32* %834

  %836 = add i64 %782, 108

  %837 = add i64 %785, 2097140

  %838 = add i64 %785, 2097144

  %839 = add i64 %785, 2097148

  %840 = add i64 %785, 2097152

  br label %block_4014f2



block_401704:                                     ; preds = %block_40156f, %block_4016d6, %block_4016d8

  %841 = phi i32 [ %712, %block_40156f ], [ %258, %block_4016d8 ], [ %624, %block_4016d6 ]

  %842 = phi i64 [ %719, %block_40156f ], [ %265, %block_4016d8 ], [ %266, %block_4016d6 ]

  %843 = phi %struct.Memory* [ %708, %block_40156f ], [ %805, %block_4016d8 ], [ %805, %block_4016d6 ]

  %844 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%test_rank_array_type* @test_rank_array to i64), i64 16) to i32*)

  %845 = sext i32 %841 to i64

  store i64 %845, i64* %9, align 8, !tbaa !1240

  %846 = load i32, i32* %415, align 4

  %847 = sub i32 %844, %846

  %848 = zext i32 %847 to i64

  store i64 %848, i64* %11, align 8, !tbaa !1240

  %849 = load i64, i64* %10, align 8

  %850 = shl nsw i64 %845, 2

  %851 = add i64 %850, %849

  %852 = inttoptr i64 %851 to i32*

  %853 = load i32, i32* %852

  %854 = sub i32 %853, %847

  %855 = icmp eq i32 %854, 0

  %856 = select i1 %855, i64 15, i64 34

  %857 = add i64 %842, %856

  br i1 %855, label %block_401713, label %block_401726



block_401580:                                     ; preds = %block_40156f, %block_4016be, %block_4016d8

  %858 = phi %struct.Memory* [ %708, %block_40156f ], [ %805, %block_4016d8 ], [ %805, %block_4016be ]

  %859 = load i32, i32* %8, align 4

  %860 = add i32 %859, -10

  %861 = icmp ult i32 %859, 10

  %862 = zext i1 %861 to i8

  store i8 %862, i8* %36, align 1, !tbaa !1244

  %863 = and i32 %860, 255

  %864 = tail call i32 @llvm.ctpop.i32(i32 %863) #10

  %865 = trunc i32 %864 to i8

  %866 = and i8 %865, 1

  %867 = xor i8 %866, 1

  store i8 %867, i8* %37, align 1, !tbaa !1258

  %868 = xor i32 %860, %859

  %869 = lshr i32 %868, 4

  %870 = trunc i32 %869 to i8

  %871 = and i8 %870, 1

  store i8 %871, i8* %38, align 1, !tbaa !1259

  %872 = icmp eq i32 %860, 0

  %873 = zext i1 %872 to i8

  store i8 %873, i8* %39, align 1, !tbaa !1260

  %874 = lshr i32 %860, 31

  %875 = trunc i32 %874 to i8

  store i8 %875, i8* %40, align 1, !tbaa !1261

  %876 = lshr i32 %859, 31

  %877 = xor i32 %874, %876

  %878 = add nuw nsw i32 %877, %876

  %879 = icmp eq i32 %878, 2

  %880 = zext i1 %879 to i8

  store i8 %880, i8* %41, align 1, !tbaa !1262

  br i1 %872, label %block_401744, label %block_40158a

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401fc0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401fc0:

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

  store i32 0, i32* %332, align 1, !tbaa !1273

  store i32 0, i32* %334, align 1, !tbaa !1273

  store double %511, double* %335, align 1

  store double %431, double* %350, align 1

  store i64 %374, i64* %351, align 1, !tbaa !1271

  store double %541, double* %49, align 1, !tbaa !1271

  store i64 %374, i64* %51, align 1, !tbaa !1271

  store i64 %547, i64* %7, align 8, !tbaa !1240

  store i64 0, i64* %6, align 8

  store i8 1, i8* %24, align 1, !tbaa !1244

  store i8 1, i8* %25, align 1, !tbaa !1258

  store i8 1, i8* %30, align 1, !tbaa !1259

  store i8 1, i8* %27, align 1, !tbaa !1260

  store i8 0, i8* %28, align 1, !tbaa !1261

  store i8 0, i8* %29, align 1, !tbaa !1262

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

  store i32 0, i32* %82, align 1, !tbaa !1273

  %83 = getelementptr inbounds i8, i8* %70, i64 12

  %84 = bitcast i8* %83 to i32*

  store i32 0, i32* %84, align 1, !tbaa !1273

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

  store i32 0, i32* %150, align 1, !tbaa !1273

  %151 = getelementptr inbounds i8, i8* %45, i64 12

  %152 = bitcast i8* %151 to i32*

  store i32 0, i32* %152, align 1, !tbaa !1273

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

  store i32 0, i32* %112, align 1, !tbaa !1273

  store i32 0, i32* %114, align 1, !tbaa !1273

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

  store i32 0, i32* %82, align 1, !tbaa !1273

  store i32 0, i32* %84, align 1, !tbaa !1273

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

  store i32 0, i32* %267, align 1, !tbaa !1273

  store i32 0, i32* %269, align 1, !tbaa !1273

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

  %311 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 976) to double*)

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

  %327 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 976) to double*)

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

  %358 = add i64 %317, 33554432

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

  %381 = phi i64 [ -8388607, %block_400cb2 ], [ %552, %block_400f10 ]

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

  store i32 0, i32* %267, align 1, !tbaa !1273

  store i32 0, i32* %269, align 1, !tbaa !1273

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

  store i32 0, i32* %344, align 1, !tbaa !1273

  store i32 0, i32* %346, align 1, !tbaa !1273

  store i32 0, i32* %347, align 1, !tbaa !1273

  store i32 0, i32* %349, align 1, !tbaa !1273

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

  store i32 0, i32* %112, align 1, !tbaa !1273

  store i32 0, i32* %114, align 1, !tbaa !1273

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

  store i32 0, i32* %352, align 1, !tbaa !1273

  store i32 0, i32* %354, align 1, !tbaa !1273

  store i32 0, i32* %355, align 1, !tbaa !1273

  store i32 0, i32* %357, align 1, !tbaa !1273

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

  %554 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 944) to double*)

  %555 = bitcast %union.VectorReg* %19 to double*

  store double %554, double* %555, align 1, !tbaa !1271

  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 11, i32 0, i32 0, i32 0, i64 1

  %557 = bitcast i64* %556 to double*

  store double 0.000000e+00, double* %557, align 1, !tbaa !1271

  %558 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 952) to double*)

  %559 = bitcast %union.VectorReg* %13 to double*

  store double %558, double* %559, align 1, !tbaa !1271

  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1

  %561 = bitcast i64* %560 to double*

  store double 0.000000e+00, double* %561, align 1, !tbaa !1271

  %562 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 960) to double*)

  %563 = bitcast %union.VectorReg* %10 to double*

  store double %562, double* %563, align 1, !tbaa !1271

  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %565 = bitcast i64* %564 to double*

  store double 0.000000e+00, double* %565, align 1, !tbaa !1271

  %566 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401fd0__rodata_type* @seg_401fd0__rodata to i64), i64 968) to double*)

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

  store i8 0, i8* %13, align 1, !tbaa !1259

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 1, i8* %14, align 1, !tbaa !1260

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 0, i8* %15, align 1, !tbaa !1261

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %16, align 1, !tbaa !1262

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

  store i8 0, i8* %12, align 1, !tbaa !1276

  store i8 1, i8* %13, align 1, !tbaa !1276

  store i8 0, i8* %14, align 1, !tbaa !1276

  store i8 1, i8* %15, align 1, !tbaa !1276

  store i8 0, i8* %16, align 1, !tbaa !1276

  store i8 0, i8* %17, align 1, !tbaa !1276

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

  %26 = add i64 %1, 5424

  %27 = add i64 %1, 17

  %28 = add i64 %14, -32

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  store i64 %28, i64* %12, align 8, !tbaa !1240

  %30 = tail call %struct.Memory* @sub_401f00_wtime_(%struct.State* nonnull %0, i64 %26, %struct.Memory* %2)

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

  store i8 %53, i8* %19, align 1, !tbaa !1259

  %54 = icmp eq i64 %40, 0

  %55 = zext i1 %54 to i8

  store i8 %55, i8* %20, align 1, !tbaa !1260

  %56 = lshr i64 %40, 63

  %57 = trunc i64 %56 to i8

  store i8 %57, i8* %21, align 1, !tbaa !1261

  %58 = lshr i64 %31, 63

  %59 = xor i64 %56, %58

  %60 = add nuw nsw i64 %59, %56

  %61 = icmp eq i64 %60, 2

  %62 = zext i1 %61 to i8

  store i8 %62, i8* %22, align 1, !tbaa !1262

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

define i64 @callback_sub_401fc0___libc_csu_fini() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202432, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401fc0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4202432, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401f50___libc_csu_init() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4202320, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401f50___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4202320, %struct.Memory* null)

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

  store i64 4202436, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401fc4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4202436, %struct.Memory* null)

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

  store i64 4202240, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401f00_wtime_(%struct.State* nonnull @__mcsema_reg_state, i64 4202240, %struct.Memory* null)

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

define internal void @__mcsema_constructor() #10 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_401f50___libc_csu_init()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #10 {

  %1 = tail call i64 @callback_sub_401fc0___libc_csu_fini()

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

!1259 = !{!1245, !1242, i64 2069}

!1260 = !{!1245, !1242, i64 2071}

!1261 = !{!1245, !1242, i64 2073}

!1262 = !{!1245, !1242, i64 2077}

!1263 = !{!1264}

!1264 = distinct !{!1264, !1265, !"ext_6056e0___libc_start_main: argument 0"}

!1265 = distinct !{!1265, !"ext_6056e0___libc_start_main"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_6056e0___libc_start_main: argument 1"}

!1268 = !{!1269}

!1269 = distinct !{!1269, !1270, !"ext_400620_gettimeofday: argument 0"}

!1270 = distinct !{!1270, !"ext_400620_gettimeofday"}

!1271 = !{!1272, !1272, i64 0}

!1272 = !{!"double", !1242, i64 0}

!1273 = !{!1257, !1257, i64 0}

!1274 = !{!1275, !1275, i64 0}

!1275 = !{!"float", !1242, i64 0}

!1276 = !{!1242, !1242, i64 0}

!1277 = !{!1278}

!1278 = distinct !{!1278, !1279, !"ext_6056c8_printf: argument 0"}

!1279 = distinct !{!1279, !"ext_6056c8_printf"}

!1280 = !{!1281}

!1281 = distinct !{!1281, !1279, !"ext_6056c8_printf: argument 1"}

!1282 = !{!1283}

!1283 = distinct !{!1283, !1284, !"ext_400650_fflush: argument 0"}

!1284 = distinct !{!1284, !"ext_400650_fflush"}

!1285 = !{!1286}

!1286 = distinct !{!1286, !1284, !"ext_400650_fflush: argument 1"}

!1287 = !{!1288}

!1288 = distinct !{!1288, !1289, !"ext_6056c8_printf: argument 0"}

!1289 = distinct !{!1289, !"ext_6056c8_printf"}

!1290 = !{!1291}

!1291 = distinct !{!1291, !1289, !"ext_6056c8_printf: argument 1"}

!1292 = !{!1293}

!1293 = distinct !{!1293, !1294, !"ext_6056c8_printf: argument 0"}

!1294 = distinct !{!1294, !"ext_6056c8_printf"}

!1295 = !{!1296}

!1296 = distinct !{!1296, !1294, !"ext_6056c8_printf: argument 1"}

!1297 = !{!1298}

!1298 = distinct !{!1298, !1299, !"ext_6056b8_puts: argument 0"}

!1299 = distinct !{!1299, !"ext_6056b8_puts"}

!1300 = !{!1301}

!1301 = distinct !{!1301, !1299, !"ext_6056b8_puts: argument 1"}

!1302 = !{!1303}

!1303 = distinct !{!1303, !1304, !"ext_6056c8_printf: argument 0"}

!1304 = distinct !{!1304, !"ext_6056c8_printf"}

!1305 = !{!1306}

!1306 = distinct !{!1306, !1304, !"ext_6056c8_printf: argument 1"}

!1307 = !{!1308}

!1308 = distinct !{!1308, !1309, !"ext_6056c8_printf: argument 0"}

!1309 = distinct !{!1309, !"ext_6056c8_printf"}

!1310 = !{!1311}

!1311 = distinct !{!1311, !1309, !"ext_6056c8_printf: argument 1"}

!1312 = !{!1313}

!1313 = distinct !{!1313, !1314, !"ext_6056b8_puts: argument 0"}

!1314 = distinct !{!1314, !"ext_6056b8_puts"}

!1315 = !{!1316}

!1316 = distinct !{!1316, !1314, !"ext_6056b8_puts: argument 1"}

!1317 = !{!1318}

!1318 = distinct !{!1318, !1319, !"ext_6056c8_printf: argument 0"}

!1319 = distinct !{!1319, !"ext_6056c8_printf"}

!1320 = !{!1321}

!1321 = distinct !{!1321, !1319, !"ext_6056c8_printf: argument 1"}

!1322 = !{!1323}

!1323 = distinct !{!1323, !1324, !"ext_6056c8_printf: argument 0"}

!1324 = distinct !{!1324, !"ext_6056c8_printf"}

!1325 = !{!1326}

!1326 = distinct !{!1326, !1324, !"ext_6056c8_printf: argument 1"}

!1327 = !{!1328}

!1328 = distinct !{!1328, !1329, !"ext_6056c8_printf: argument 0"}

!1329 = distinct !{!1329, !"ext_6056c8_printf"}

!1330 = !{!1331}

!1331 = distinct !{!1331, !1329, !"ext_6056c8_printf: argument 1"}

!1332 = !{!1333}

!1333 = distinct !{!1333, !1334, !"ext_6056c8_printf: argument 0"}

!1334 = distinct !{!1334, !"ext_6056c8_printf"}

!1335 = !{!1336}

!1336 = distinct !{!1336, !1334, !"ext_6056c8_printf: argument 1"}

!1337 = !{!1338}

!1338 = distinct !{!1338, !1339, !"ext_6056c8_printf: argument 0"}

!1339 = distinct !{!1339, !"ext_6056c8_printf"}

!1340 = !{!1341}

!1341 = distinct !{!1341, !1339, !"ext_6056c8_printf: argument 1"}

!1342 = !{!1343}

!1343 = distinct !{!1343, !1344, !"ext_6056c8_printf: argument 0"}

!1344 = distinct !{!1344, !"ext_6056c8_printf"}

!1345 = !{!1346}

!1346 = distinct !{!1346, !1344, !"ext_6056c8_printf: argument 1"}

!1347 = !{!1348}

!1348 = distinct !{!1348, !1349, !"ext_6056b8_puts: argument 0"}

!1349 = distinct !{!1349, !"ext_6056b8_puts"}

!1350 = !{!1351}

!1351 = distinct !{!1351, !1349, !"ext_6056b8_puts: argument 1"}

!1352 = !{!1353}

!1353 = distinct !{!1353, !1354, !"ext_6056b8_puts: argument 0"}

!1354 = distinct !{!1354, !"ext_6056b8_puts"}

!1355 = !{!1356}

!1356 = distinct !{!1356, !1354, !"ext_6056b8_puts: argument 1"}

!1357 = !{!1358}

!1358 = distinct !{!1358, !1359, !"ext_6056b8_puts: argument 0"}

!1359 = distinct !{!1359, !"ext_6056b8_puts"}

!1360 = !{!1361}

!1361 = distinct !{!1361, !1359, !"ext_6056b8_puts: argument 1"}

!1362 = !{!1363}

!1363 = distinct !{!1363, !1364, !"ext_6056b8_puts: argument 0"}

!1364 = distinct !{!1364, !"ext_6056b8_puts"}

!1365 = !{!1366}

!1366 = distinct !{!1366, !1364, !"ext_6056b8_puts: argument 1"}

!1367 = !{!1368}

!1368 = distinct !{!1368, !1369, !"ext_6056b8_puts: argument 0"}

!1369 = distinct !{!1369, !"ext_6056b8_puts"}

!1370 = !{!1371}

!1371 = distinct !{!1371, !1369, !"ext_6056b8_puts: argument 1"}

!1372 = !{!1373}

!1373 = distinct !{!1373, !1374, !"ext_6056b8_puts: argument 0"}

!1374 = distinct !{!1374, !"ext_6056b8_puts"}

!1375 = !{!1376}

!1376 = distinct !{!1376, !1374, !"ext_6056b8_puts: argument 1"}

!1377 = !{!1378}

!1378 = distinct !{!1378, !1379, !"ext_6056c8_printf: argument 0"}

!1379 = distinct !{!1379, !"ext_6056c8_printf"}

!1380 = !{!1381}

!1381 = distinct !{!1381, !1379, !"ext_6056c8_printf: argument 1"}

!1382 = !{!1383}

!1383 = distinct !{!1383, !1384, !"ext_6056c8_printf: argument 0"}

!1384 = distinct !{!1384, !"ext_6056c8_printf"}

!1385 = !{!1386}

!1386 = distinct !{!1386, !1384, !"ext_6056c8_printf: argument 1"}

!1387 = !{!1388}

!1388 = distinct !{!1388, !1389, !"ext_6056c8_printf: argument 0"}

!1389 = distinct !{!1389, !"ext_6056c8_printf"}

!1390 = !{!1391}

!1391 = distinct !{!1391, !1389, !"ext_6056c8_printf: argument 1"}

!1392 = !{!1393}

!1393 = distinct !{!1393, !1394, !"ext_6056c8_printf: argument 0"}

!1394 = distinct !{!1394, !"ext_6056c8_printf"}

!1395 = !{!1396}

!1396 = distinct !{!1396, !1394, !"ext_6056c8_printf: argument 1"}

!1397 = !{!1398}

!1398 = distinct !{!1398, !1399, !"ext_6056c8_printf: argument 0"}

!1399 = distinct !{!1399, !"ext_6056c8_printf"}

!1400 = !{!1401}

!1401 = distinct !{!1401, !1399, !"ext_6056c8_printf: argument 1"}

!1402 = !{!1403}

!1403 = distinct !{!1403, !1404, !"ext_6056c8_printf: argument 0"}

!1404 = distinct !{!1404, !"ext_6056c8_printf"}

!1405 = !{!1406}

!1406 = distinct !{!1406, !1404, !"ext_6056c8_printf: argument 1"}

!1407 = !{!1408}

!1408 = distinct !{!1408, !1409, !"ext_400640_malloc: argument 0"}

!1409 = distinct !{!1409, !"ext_400640_malloc"}

!1410 = !{!1411}

!1411 = distinct !{!1411, !1412, !"ext_400640_malloc: argument 0"}

!1412 = distinct !{!1412, !"ext_400640_malloc"}

!1413 = !{!1414}

!1414 = distinct !{!1414, !1415, !"ext_400640_malloc: argument 0"}

!1415 = distinct !{!1415, !"ext_400640_malloc"}

!1416 = !{!1417}

!1417 = distinct !{!1417, !1418, !"ext_400640_malloc: argument 0"}

!1418 = distinct !{!1418, !"ext_400640_malloc"}

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

!1445 = distinct !{!1445, !1446, !"ext_6056b8_puts: argument 0"}

!1446 = distinct !{!1446, !"ext_6056b8_puts"}

!1447 = !{!1448}

!1448 = distinct !{!1448, !1446, !"ext_6056b8_puts: argument 1"}

!1449 = !{!1450}

!1450 = distinct !{!1450, !1451, !"ext_6056c8_printf: argument 0"}

!1451 = distinct !{!1451, !"ext_6056c8_printf"}

!1452 = !{!1453}

!1453 = distinct !{!1453, !1451, !"ext_6056c8_printf: argument 1"}

!1454 = !{!1455}

!1455 = distinct !{!1455, !1456, !"ext_6056c8_printf: argument 0"}

!1456 = distinct !{!1456, !"ext_6056c8_printf"}

!1457 = !{!1458}

!1458 = distinct !{!1458, !1456, !"ext_6056c8_printf: argument 1"}

!1459 = !{!1460}

!1460 = distinct !{!1460, !1461, !"ext_6056c8_printf: argument 0"}

!1461 = distinct !{!1461, !"ext_6056c8_printf"}

!1462 = !{!1463}

!1463 = distinct !{!1463, !1461, !"ext_6056c8_printf: argument 1"}

!1464 = !{!1465}

!1465 = distinct !{!1465, !1466, !"ext_6056c8_printf: argument 0"}

!1466 = distinct !{!1466, !"ext_6056c8_printf"}

!1467 = !{!1468}

!1468 = distinct !{!1468, !1466, !"ext_6056c8_printf: argument 1"}

!1469 = !{!1470}

!1470 = distinct !{!1470, !1471, !"ext_6056c8_printf: argument 0"}

!1471 = distinct !{!1471, !"ext_6056c8_printf"}

!1472 = !{!1473}

!1473 = distinct !{!1473, !1471, !"ext_6056c8_printf: argument 1"}

!1474 = !{!1475}

!1475 = distinct !{!1475, !1476, !"ext_6056b8_puts: argument 0"}

!1476 = distinct !{!1476, !"ext_6056b8_puts"}

!1477 = !{!1478}

!1478 = distinct !{!1478, !1476, !"ext_6056b8_puts: argument 1"}

!1479 = !{!1480}

!1480 = distinct !{!1480, !1481, !"ext_6056c8_printf: argument 0"}

!1481 = distinct !{!1481, !"ext_6056c8_printf"}

!1482 = !{!1483}

!1483 = distinct !{!1483, !1481, !"ext_6056c8_printf: argument 1"}

!1484 = !{!1485}

!1485 = distinct !{!1485, !1486, !"ext_6056c8_printf: argument 0"}

!1486 = distinct !{!1486, !"ext_6056c8_printf"}

!1487 = !{!1488}

!1488 = distinct !{!1488, !1486, !"ext_6056c8_printf: argument 1"}

!1489 = !{!1490}

!1490 = distinct !{!1490, !1491, !"ext_6056c8_printf: argument 0"}

!1491 = distinct !{!1491, !"ext_6056c8_printf"}

!1492 = !{!1493}

!1493 = distinct !{!1493, !1491, !"ext_6056c8_printf: argument 1"}

!1494 = !{!1495}

!1495 = distinct !{!1495, !1496, !"ext_400650_fflush: argument 0"}

!1496 = distinct !{!1496, !"ext_400650_fflush"}

!1497 = !{!1498}

!1498 = distinct !{!1498, !1496, !"ext_400650_fflush: argument 1"}

!1499 = !{!1500}

!1500 = distinct !{!1500, !1501, !"ext_6056b8_puts: argument 0"}

!1501 = distinct !{!1501, !"ext_6056b8_puts"}

!1502 = !{!1503}

!1503 = distinct !{!1503, !1501, !"ext_6056b8_puts: argument 1"}

!1504 = !{!1505}

!1505 = distinct !{!1505, !1506, !"ext_6056c8_printf: argument 0"}

!1506 = distinct !{!1506, !"ext_6056c8_printf"}

!1507 = !{!1508}

!1508 = distinct !{!1508, !1506, !"ext_6056c8_printf: argument 1"}

!1509 = !{!1510}

!1510 = distinct !{!1510, !1511, !"ext_6056c8_printf: argument 0"}

!1511 = distinct !{!1511, !"ext_6056c8_printf"}

!1512 = !{!1513}

!1513 = distinct !{!1513, !1511, !"ext_6056c8_printf: argument 1"}

!1514 = !{!1515}

!1515 = distinct !{!1515, !1516, !"ext_6056c8_printf: argument 0"}

!1516 = distinct !{!1516, !"ext_6056c8_printf"}

!1517 = !{!1518}

!1518 = distinct !{!1518, !1516, !"ext_6056c8_printf: argument 1"}

!1519 = !{!1520}

!1520 = distinct !{!1520, !1521, !"ext_6056c8_printf: argument 0"}

!1521 = distinct !{!1521, !"ext_6056c8_printf"}

!1522 = !{!1523}

!1523 = distinct !{!1523, !1521, !"ext_6056c8_printf: argument 1"}

!1524 = !{!1525}

!1525 = distinct !{!1525, !1526, !"ext_6056c8_printf: argument 0"}

!1526 = distinct !{!1526, !"ext_6056c8_printf"}

!1527 = !{!1528}

!1528 = distinct !{!1528, !1526, !"ext_6056c8_printf: argument 1"}

!1529 = !{!1530}

!1530 = distinct !{!1530, !1531, !"ext_6056c8_printf: argument 0"}

!1531 = distinct !{!1531, !"ext_6056c8_printf"}

!1532 = !{!1533}

!1533 = distinct !{!1533, !1531, !"ext_6056c8_printf: argument 1"}

!1534 = !{!1535}

!1535 = distinct !{!1535, !1536, !"ext_6056c8_printf: argument 0"}

!1536 = distinct !{!1536, !"ext_6056c8_printf"}

!1537 = !{!1538}

!1538 = distinct !{!1538, !1536, !"ext_6056c8_printf: argument 1"}

!1539 = !{!1540}

!1540 = distinct !{!1540, !1541, !"ext_6056c8_printf: argument 0"}

!1541 = distinct !{!1541, !"ext_6056c8_printf"}

!1542 = !{!1543}

!1543 = distinct !{!1543, !1541, !"ext_6056c8_printf: argument 1"}

!1544 = !{!1545}

!1545 = distinct !{!1545, !1546, !"ext_6056c8_printf: argument 0"}

!1546 = distinct !{!1546, !"ext_6056c8_printf"}

!1547 = !{!1548}

!1548 = distinct !{!1548, !1546, !"ext_6056c8_printf: argument 1"}

!1549 = !{!1550}

!1550 = distinct !{!1550, !1551, !"ext_6056c8_printf: argument 0"}

!1551 = distinct !{!1551, !"ext_6056c8_printf"}

!1552 = !{!1553}

!1553 = distinct !{!1553, !1551, !"ext_6056c8_printf: argument 1"}

!1554 = !{!1555}

!1555 = distinct !{!1555, !1556, !"ext_6056c0_fclose: argument 0"}

!1556 = distinct !{!1556, !"ext_6056c0_fclose"}

!1557 = !{!1558}

!1558 = distinct !{!1558, !1556, !"ext_6056c0_fclose: argument 1"}

!1559 = !{!1560}

!1560 = distinct !{!1560, !1561, !"ext_6056b0_free: argument 0"}

!1561 = distinct !{!1561, !"ext_6056b0_free"}

!1562 = !{!1563}

!1563 = distinct !{!1563, !1561, !"ext_6056b0_free: argument 1"}

!1564 = !{!1565}

!1565 = distinct !{!1565, !1566, !"ext_6056b0_free: argument 0"}

!1566 = distinct !{!1566, !"ext_6056b0_free"}

!1567 = !{!1568}

!1568 = distinct !{!1568, !1566, !"ext_6056b0_free: argument 1"}

!1569 = !{!1570}

!1570 = distinct !{!1570, !1571, !"ext_6056b0_free: argument 0"}

!1571 = distinct !{!1571, !"ext_6056b0_free"}

!1572 = !{!1573}

!1573 = distinct !{!1573, !1571, !"ext_6056b0_free: argument 1"}

!1574 = !{!1575}

!1575 = distinct !{!1575, !1576, !"ext_6056b0_free: argument 0"}

!1576 = distinct !{!1576, !"ext_6056b0_free"}

!1577 = !{!1578}

!1578 = distinct !{!1578, !1576, !"ext_6056b0_free: argument 1"}

!1579 = !{!1580}

!1580 = distinct !{!1580, !1581, !"ext_6056c8_printf: argument 0"}

!1581 = distinct !{!1581, !"ext_6056c8_printf"}

!1582 = !{!1583}

!1583 = distinct !{!1583, !1581, !"ext_6056c8_printf: argument 1"}

!1584 = !{!1585}

!1585 = distinct !{!1585, !1586, !"ext_400650_fflush: argument 0"}

!1586 = distinct !{!1586, !"ext_400650_fflush"}

!1587 = !{!1588}

!1588 = distinct !{!1588, !1586, !"ext_400650_fflush: argument 1"}

!1589 = !{!1590}

!1590 = distinct !{!1590, !1591, !"ext_6056b0_free: argument 0"}

!1591 = distinct !{!1591, !"ext_6056b0_free"}

!1592 = !{!1593}

!1593 = distinct !{!1593, !1594, !"ext_6056b0_free: argument 0"}

!1594 = distinct !{!1594, !"ext_6056b0_free"}

!1595 = !{!1596}

!1596 = distinct !{!1596, !1597, !"ext_6056b0_free: argument 0"}

!1597 = distinct !{!1597, !"ext_6056b0_free"}

!1598 = !{!1599}

!1599 = distinct !{!1599, !1600, !"ext_6056b0_free: argument 0"}

!1600 = distinct !{!1600, !"ext_6056b0_free"}

!1601 = !{!1602}

!1602 = distinct !{!1602, !1600, !"ext_6056b0_free: argument 1"}

!1603 = !{!1604}

!1604 = distinct !{!1604, !1605, !"ext_400630_memset: argument 0"}

!1605 = distinct !{!1605, !"ext_400630_memset"}

!1606 = !{!1607}

!1607 = distinct !{!1607, !1605, !"ext_400630_memset: argument 1"}

!1608 = !{!1609}

!1609 = distinct !{!1609, !1610, !"ext_6056c8_printf: argument 0"}

!1610 = distinct !{!1610, !"ext_6056c8_printf"}

!1611 = !{!1612}

!1612 = distinct !{!1612, !1610, !"ext_6056c8_printf: argument 1"}

!1613 = !{!1614}

!1614 = distinct !{!1614, !1615, !"ext_6056b8_puts: argument 0"}

!1615 = distinct !{!1615, !"ext_6056b8_puts"}

!1616 = !{!1617}

!1617 = distinct !{!1617, !1615, !"ext_6056b8_puts: argument 1"}

!1618 = !{!1619}

!1619 = distinct !{!1619, !1620, !"ext_6056c8_printf: argument 0"}

!1620 = distinct !{!1620, !"ext_6056c8_printf"}

!1621 = !{!1622}

!1622 = distinct !{!1622, !1620, !"ext_6056c8_printf: argument 1"}

!1623 = !{!1624}

!1624 = distinct !{!1624, !1625, !"ext_6056b8_puts: argument 0"}

!1625 = distinct !{!1625, !"ext_6056b8_puts"}

!1626 = !{!1627}

!1627 = distinct !{!1627, !1625, !"ext_6056b8_puts: argument 1"}

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

!1639 = distinct !{!1639, !1640, !"ext_6056b8_puts: argument 0"}

!1640 = distinct !{!1640, !"ext_6056b8_puts"}

!1641 = !{!1642}

!1642 = distinct !{!1642, !1640, !"ext_6056b8_puts: argument 1"}

!1643 = !{!1644}

!1644 = distinct !{!1644, !1645, !"ext_6056c8_printf: argument 0"}

!1645 = distinct !{!1645, !"ext_6056c8_printf"}

!1646 = !{!1647}

!1647 = distinct !{!1647, !1645, !"ext_6056c8_printf: argument 1"}

!1648 = !{!1649}

!1649 = distinct !{!1649, !1650, !"ext_400630_memset: argument 0"}

!1650 = distinct !{!1650, !"ext_400630_memset"}

!1651 = !{!1652}

!1652 = distinct !{!1652, !1650, !"ext_400630_memset: argument 1"}

