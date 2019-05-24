; ModuleID = 'mm.o3.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_400d20__rodata_type = type <{ [4 x i8], [28 x i8], [18 x i8], [18 x i8], [27 x i8], [59 x i8], [39 x i8], [62 x i8], [62 x i8], [82 x i8], [42 x i8], [42 x i8], [45 x i8], [32 x i8], [64 x i8], [32 x i8] }>

%seg_601e00__init_array_type = type <{ i64, i64 }>

%seg_601ff0__got_type = type <{ i64, i64 }>

%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

%__bss_start_type = type <{ [8 x i8] }>

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

@seg_400d20__rodata = internal constant %seg_400d20__rodata_type <{ [4 x i8] c"\01\00\02\00", [28 x i8] c"USAGE: %s [side of matrix]\0A\00", [18 x i8] c"matrix_file_A.txt\00", [18 x i8] c"matrix_file_B.txt\00", [27 x i8] c"matrix_file_out_serial.txt\00", [59 x i8] c"Error at line\0A\09(matrix_len = atoi(argv[1])) < 0\0ASystem Msg\00", [39 x i8] c"MatrixMult: Side of the matrix is %d \0A\00", [62 x i8] c"Error at line\0A\09(fd_A = open(fname_A,O_RDONLY)) < 0\0ASystem Msg\00", [62 x i8] c"Error at line\0A\09(fd_B = open(fname_B,O_RDONLY)) < 0\0ASystem Msg\00", [82 x i8] c"Error at line\0A\09(fd_out = open(fname_out,O_CREAT | O_RDWR,S_IRWXU)) < 0\0ASystem Msg\00", [42 x i8] c"Error at line\0A\09close(fd_A) < 0\0ASystem Msg\00", [42 x i8] c"Error at line\0A\09close(fd_B) < 0\0ASystem Msg\00", [45 x i8] c"Error at line\0A\09close(fd_out) < 0\0ASystem Msg\00\00", [32 x i8] c"MatrixMult: Running...\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"MatrixMult: Calling Serial Matrix Multiplication\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MatrixMult: Multiply Completed\00\00" }>

@seg_601e00__init_array = internal global %seg_601e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4007e0_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4007b0___do_global_dtors_aux to i64) }>

@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] c"\10\1E`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSputs to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSmemset to i64), i64 ptrtoint (i64 (i64)* @SSSSSclose to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSread to i64), i64 ptrtoint (i64 (i64)* @SSSSSsrand to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSstrtol to i64), i64 ptrtoint (i64 (i64)* @SSSSStime to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64)* @SSSSSopen to i64), i64 ptrtoint (i64 (i64)* @SSSSSperror to i64), i64 ptrtoint (i64 (i64)* @SSSSSexit to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer

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

declare extern_weak x86_64_sysvcc i64 @SSSSSexit(i64) #2
declare i64 @exit(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSstrtol(i64, i64, i64) #2
declare i64 @strtol(i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #2
declare i64 @malloc(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmemset(i64, i64, i64) #2
declare i64 @memset(i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSclose(i64) #2
declare i64 @close(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSStime(i64) #2
declare i64 @time(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSputs(i64) #2
declare i64 @puts(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSperror(i64) #2
declare i64 @perror(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSread(i64, i64, i64) #2
declare i64 @read(i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSsrand(i64) #2
declare i64 @srand(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSopen(i64, i64, i64, i64) #2
declare i64 @open(i64, i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400630(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400630:

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

  %10 = icmp eq i64 %9, 4195900

  br i1 %10, label %block_40063c, label %12



block_40063c:                                     ; preds = %block_400630

  store i64 4195904, i64* %3, align 8

  %11 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 4195904, %struct.Memory* %2)

  ret %struct.Memory* %11



; <label>:12:                                     ; preds = %block_400630

  %13 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %13

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400740_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400740:

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

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %17, align 1, !tbaa !1259

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %18, align 1, !tbaa !1260

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %19, align 1, !tbaa !1261

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63), i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63))), i64 2) to i8), i8* %20, align 1, !tbaa !1262

  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400768, label %block_400751



block_400751:                                     ; preds = %block_400740

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %11, align 1, !tbaa !1244

  store i8 1, i8* %16, align 1, !tbaa !1258

  store i8 1, i8* %18, align 1, !tbaa !1260

  store i8 0, i8* %19, align 1, !tbaa !1261

  store i8 0, i8* %20, align 1, !tbaa !1262

  store i8 0, i8* %17, align 1, !tbaa !1259

  br label %block_400768



block_400768:                                     ; preds = %block_400751, %block_400740

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

define %struct.Memory* @sub_400618__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400618:

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

  br i1 %21, label %block_40062a, label %block_400628



block_40062a:                                     ; preds = %block_400628, %block_400618

  %27 = phi i64 [ %7, %block_400618 ], [ %58, %block_400628 ]

  %28 = phi %struct.Memory* [ %2, %block_400618 ], [ %57, %block_400628 ]

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



block_400628:                                     ; preds = %block_400618

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_40062a

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4007b0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4007b0:

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

  br i1 %14, label %block_4007b9, label %block_4007d0



block_4007d0:                                     ; preds = %block_4007b0

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4007b9:                                     ; preds = %block_4007b0

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

  %35 = tail call %struct.Memory* @sub_400740_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400ca0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400ca0:

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

  %47 = add i64 %1, -1672

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400618__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_400cf6, label %block_400cd6



block_400cf6.loopexit:                            ; preds = %block_400ce0

  br label %block_400cf6



block_400cf6:                                     ; preds = %block_400cf6.loopexit, %block_400ca0

  %57 = phi %struct.Memory* [ %51, %block_400ca0 ], [ %119, %block_400cf6.loopexit ]

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



block_400cd6:                                     ; preds = %block_400ca0

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1260

  store i8 0, i8* %45, align 1, !tbaa !1261

  store i8 0, i8* %46, align 1, !tbaa !1262

  store i8 0, i8* %43, align 1, !tbaa !1259

  %102 = add i64 %56, 10

  br label %block_400ce0



block_400ce0:                                     ; preds = %block_400ce0, %block_400cd6

  %103 = phi i64 [ 0, %block_400cd6 ], [ %122, %block_400ce0 ]

  %104 = phi i64 [ %102, %block_400cd6 ], [ %150, %block_400ce0 ]

  %105 = phi %struct.Memory* [ %51, %block_400cd6 ], [ %119, %block_400ce0 ]

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

  br i1 %139, label %block_400cf6.loopexit, label %block_400ce0

}



; Function Attrs: noinline

define %struct.Memory* @sub_400920_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400920:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0

  %9 = bitcast %union.anon* %8 to i32*

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0

  %11 = bitcast %union.anon* %10 to i32*

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %13 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %24 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %26 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %27 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0

  %28 = load i64, i64* %19, align 8

  %29 = load i64, i64* %18, align 8, !tbaa !1240

  %30 = add i64 %29, -8

  %31 = inttoptr i64 %30 to i64*

  store i64 %28, i64* %31

  %32 = load i64, i64* %27, align 8

  %33 = add i64 %29, -16

  %34 = inttoptr i64 %33 to i64*

  store i64 %32, i64* %34

  %35 = load i64, i64* %26, align 8

  %36 = add i64 %29, -24

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = load i64, i64* %25, align 8

  %39 = add i64 %29, -32

  %40 = inttoptr i64 %39 to i64*

  store i64 %38, i64* %40

  %41 = load i64, i64* %24, align 8

  %42 = add i64 %29, -40

  %43 = inttoptr i64 %42 to i64*

  store i64 %41, i64* %43

  %44 = load i64, i64* %13, align 8

  %45 = add i64 %29, -48

  %46 = inttoptr i64 %45 to i64*

  store i64 %44, i64* %46

  %47 = add i64 %29, -152

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %54 = load i64, i64* %16, align 8

  store i64 %54, i64* %13, align 8, !tbaa !1240

  %55 = add i64 %1, 24

  %56 = add i64 %29, -160

  %57 = inttoptr i64 %56 to i64*

  store i64 %55, i64* %57

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %59 = inttoptr i64 %56 to i64*

  %60 = load i64, i64* %59

  store i64 %60, i64* %3, align 8, !alias.scope !1263, !noalias !1266

  store i64 %47, i64* %18, align 8, !alias.scope !1263, !noalias !1266

  %61 = tail call i64 @time(i64 0), !noalias !1263

  %62 = and i64 %61, 4294967295

  %63 = load i64, i64* %3, align 8

  %64 = add i64 %63, 7

  %65 = load i64, i64* %18, align 8, !tbaa !1240

  %66 = add i64 %65, -8

  %67 = inttoptr i64 %66 to i64*

  store i64 %64, i64* %67

  %68 = inttoptr i64 %66 to i64*

  %69 = load i64, i64* %68

  store i64 %69, i64* %3, align 8, !alias.scope !1268, !noalias !1271

  store i64 %65, i64* %18, align 8, !alias.scope !1268, !noalias !1271

  %70 = tail call i64 @srand(i64 %62), !noalias !1268

  %71 = load i64, i64* %13, align 8

  %72 = add i64 %71, 8

  %73 = load i64, i64* %3, align 8

  %74 = inttoptr i64 %72 to i64*

  %75 = load i64, i64* %74

  %76 = icmp eq i64 %75, 0

  %77 = select i1 %76, i64 700, i64 13

  %78 = add i64 %73, %77

  br i1 %76, label %block_400bfb, label %block_40094c



block_400c14:                                     ; preds = %block_40094c

  %79 = add i64 %798, 10

  %80 = load i64, i64* %18, align 8, !tbaa !1240

  %81 = add i64 %80, -8

  %82 = inttoptr i64 %81 to i64*

  store i64 %79, i64* %82

  %83 = inttoptr i64 %81 to i64*

  %84 = load i64, i64* %83

  store i64 %84, i64* %3, align 8, !alias.scope !1273, !noalias !1276

  store i64 %80, i64* %18, align 8, !alias.scope !1273, !noalias !1276

  %85 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 95), i64 4294967295)), !noalias !1273

  %86 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %87 = add i64 %86, 10

  %88 = load i64, i64* %18, align 8, !tbaa !1240

  %89 = add i64 %88, -8

  %90 = inttoptr i64 %89 to i64*

  store i64 %87, i64* %90

  %91 = inttoptr i64 %89 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %3, align 8, !alias.scope !1278, !noalias !1281

  store i64 %88, i64* %18, align 8, !alias.scope !1278, !noalias !1281

  %93 = tail call i64 @exit(i64 1), !noalias !1278

  store i64 %93, i64* %58, align 8, !alias.scope !1278, !noalias !1281

  %94 = load i64, i64* %3, align 8

  %95 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %94, %struct.Memory* %2)

  ret %struct.Memory* %95



block_400af0:                                     ; preds = %block_400b08, %block_400ad0

  %96 = phi i32 [ %107, %block_400b08 ], [ %658, %block_400ad0 ]

  %97 = phi i64 [ %812, %block_400b08 ], [ 1, %block_400ad0 ]

  %98 = phi i64 [ %811, %block_400b08 ], [ %650, %block_400ad0 ]

  %99 = phi i64 [ %823, %block_400b08 ], [ %659, %block_400ad0 ]

  %100 = inttoptr i64 %98 to i32*

  %101 = load i32, i32* %100

  %102 = shl i64 %97, 2

  %103 = add i64 %393, %102

  %104 = inttoptr i64 %103 to i32*

  %105 = load i32, i32* %104

  %106 = mul i32 %105, %101

  %107 = add i32 %96, %106

  %108 = add i64 %97, %396

  %109 = icmp uge i64 %108, %400

  %110 = select i1 %109, i64 36, i64 24

  %111 = add i64 %99, %110

  br i1 %109, label %block_400b14, label %block_400b08



block_400bea:                                     ; preds = %block_400bd9

  store i64 0, i64* %12, align 8, !tbaa !1240

  %112 = load i64, i64* %18, align 8

  %113 = add i64 %112, 104

  %114 = icmp ugt i64 %112, -105

  %115 = zext i1 %114 to i8

  store i8 %115, i8* %48, align 1, !tbaa !1244

  %116 = trunc i64 %113 to i32

  %117 = and i32 %116, 255

  %118 = tail call i32 @llvm.ctpop.i32(i32 %117) #9

  %119 = trunc i32 %118 to i8

  %120 = and i8 %119, 1

  %121 = xor i8 %120, 1

  store i8 %121, i8* %49, align 1, !tbaa !1258

  %122 = xor i64 %113, %112

  %123 = lshr i64 %122, 4

  %124 = trunc i64 %123 to i8

  %125 = and i8 %124, 1

  store i8 %125, i8* %50, align 1, !tbaa !1259

  %126 = icmp eq i64 %113, 0

  %127 = zext i1 %126 to i8

  store i8 %127, i8* %51, align 1, !tbaa !1260

  %128 = lshr i64 %113, 63

  %129 = trunc i64 %128 to i8

  store i8 %129, i8* %52, align 1, !tbaa !1261

  %130 = lshr i64 %112, 63

  %131 = xor i64 %128, %130

  %132 = add nuw nsw i64 %131, %128

  %133 = icmp eq i64 %132, 2

  %134 = zext i1 %133 to i8

  store i8 %134, i8* %53, align 1, !tbaa !1262

  %135 = add i64 %112, 112

  %136 = inttoptr i64 %113 to i64*

  %137 = load i64, i64* %136

  store i64 %137, i64* %13, align 8, !tbaa !1240

  %138 = add i64 %112, 120

  %139 = inttoptr i64 %135 to i64*

  %140 = load i64, i64* %139

  store i64 %140, i64* %24, align 8, !tbaa !1240

  %141 = add i64 %112, 128

  %142 = inttoptr i64 %138 to i64*

  %143 = load i64, i64* %142

  store i64 %143, i64* %25, align 8, !tbaa !1240

  %144 = add i64 %112, 136

  %145 = inttoptr i64 %141 to i64*

  %146 = load i64, i64* %145

  store i64 %146, i64* %26, align 8, !tbaa !1240

  %147 = add i64 %112, 144

  %148 = inttoptr i64 %144 to i64*

  %149 = load i64, i64* %148

  store i64 %149, i64* %27, align 8, !tbaa !1240

  %150 = add i64 %112, 152

  %151 = inttoptr i64 %147 to i64*

  %152 = load i64, i64* %151

  store i64 %152, i64* %19, align 8, !tbaa !1240

  %153 = inttoptr i64 %150 to i64*

  %154 = load i64, i64* %153

  store i64 %154, i64* %3, align 8, !tbaa !1240

  %155 = add i64 %112, 160

  store i64 %155, i64* %18, align 8, !tbaa !1240

  ret %struct.Memory* %616



block_400c64:                                     ; preds = %block_400bad

  %156 = add i64 %648, 10

  %157 = load i64, i64* %18, align 8, !tbaa !1240

  %158 = add i64 %157, -8

  %159 = inttoptr i64 %158 to i64*

  store i64 %156, i64* %159

  %160 = inttoptr i64 %158 to i64*

  %161 = load i64, i64* %160

  store i64 %161, i64* %3, align 8, !alias.scope !1283, !noalias !1286

  store i64 %157, i64* %18, align 8, !alias.scope !1283, !noalias !1286

  %162 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 399), i64 4294967295)), !noalias !1283

  %163 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %164 = add i64 %163, 10

  %165 = load i64, i64* %18, align 8, !tbaa !1240

  %166 = add i64 %165, -8

  %167 = inttoptr i64 %166 to i64*

  store i64 %164, i64* %167

  %168 = inttoptr i64 %166 to i64*

  %169 = load i64, i64* %168

  store i64 %169, i64* %3, align 8, !alias.scope !1288, !noalias !1291

  store i64 %165, i64* %18, align 8, !alias.scope !1288, !noalias !1291

  %170 = tail call i64 @exit(i64 1), !noalias !1288

  store i64 %170, i64* %58, align 8, !alias.scope !1288, !noalias !1291

  %171 = load i64, i64* %3, align 8

  %172 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %171, %struct.Memory* %616)

  ret %struct.Memory* %172



block_400c50:                                     ; preds = %block_4009de

  %173 = add i64 %273, 10

  %174 = add i64 %257, -8

  %175 = inttoptr i64 %174 to i64*

  store i64 %173, i64* %175

  %176 = inttoptr i64 %174 to i64*

  %177 = load i64, i64* %176

  store i64 %177, i64* %3, align 8, !alias.scope !1293, !noalias !1296

  store i64 %257, i64* %18, align 8, !alias.scope !1293, !noalias !1296

  %178 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 317), i64 4294967295)), !noalias !1293

  %179 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %180 = add i64 %179, 10

  %181 = load i64, i64* %18, align 8, !tbaa !1240

  %182 = add i64 %181, -8

  %183 = inttoptr i64 %182 to i64*

  store i64 %180, i64* %183

  %184 = inttoptr i64 %182 to i64*

  %185 = load i64, i64* %184

  store i64 %185, i64* %3, align 8, !alias.scope !1298, !noalias !1301

  store i64 %181, i64* %18, align 8, !alias.scope !1298, !noalias !1301

  %186 = tail call i64 @exit(i64 1), !noalias !1298

  store i64 %186, i64* %58, align 8, !alias.scope !1298, !noalias !1301

  %187 = load i64, i64* %3, align 8

  %188 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %187, %struct.Memory* %2)

  ret %struct.Memory* %188



block_400c78:                                     ; preds = %block_400bc8

  %189 = add i64 %317, 10

  %190 = load i64, i64* %18, align 8, !tbaa !1240

  %191 = add i64 %190, -8

  %192 = inttoptr i64 %191 to i64*

  store i64 %189, i64* %192

  %193 = inttoptr i64 %191 to i64*

  %194 = load i64, i64* %193

  store i64 %194, i64* %3, align 8, !alias.scope !1303, !noalias !1306

  store i64 %190, i64* %18, align 8, !alias.scope !1303, !noalias !1306

  %195 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 441), i64 4294967295)), !noalias !1303

  %196 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %197 = add i64 %196, 10

  %198 = load i64, i64* %18, align 8, !tbaa !1240

  %199 = add i64 %198, -8

  %200 = inttoptr i64 %199 to i64*

  store i64 %197, i64* %200

  %201 = inttoptr i64 %199 to i64*

  %202 = load i64, i64* %201

  store i64 %202, i64* %3, align 8, !alias.scope !1308, !noalias !1311

  store i64 %198, i64* %18, align 8, !alias.scope !1308, !noalias !1311

  %203 = tail call i64 @exit(i64 1), !noalias !1308

  store i64 %203, i64* %58, align 8, !alias.scope !1308, !noalias !1311

  %204 = load i64, i64* %3, align 8

  %205 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %204, %struct.Memory* %616)

  ret %struct.Memory* %205



block_400b75:                                     ; preds = %block_400b4e

  %206 = inttoptr i64 %287 to i64*

  %207 = load i64, i64* %206

  %208 = add i64 %207, 400

  %209 = inttoptr i64 %285 to i64*

  %210 = load i64, i64* %209

  %211 = sub i64 %210, %275

  %212 = lshr i64 %211, 63

  %213 = lshr i64 %210, 63

  %214 = xor i64 %292, %213

  %215 = xor i64 %212, %213

  %216 = add nuw nsw i64 %215, %214

  %217 = icmp eq i64 %216, 2

  %218 = icmp ne i64 %212, 0

  %219 = xor i1 %218, %217

  %220 = select i1 %219, i64 -229, i64 29

  %221 = add i64 %442, %220

  br i1 %219, label %block_400a90, label %block_400b92



block_4009de:                                     ; preds = %block_400997

  %222 = load i64, i64* %18, align 8

  %223 = add i64 %222, 20

  %224 = load i32, i32* %9, align 4

  %225 = inttoptr i64 %223 to i32*

  store i32 %224, i32* %225

  %226 = load i64, i64* %19, align 8

  %227 = add i64 %539, 13

  %228 = add i64 %222, -8

  %229 = inttoptr i64 %228 to i64*

  store i64 %227, i64* %229

  %230 = inttoptr i64 %228 to i64*

  %231 = load i64, i64* %230

  store i64 %231, i64* %3, align 8, !alias.scope !1313, !noalias !1316

  store i64 %222, i64* %18, align 8, !alias.scope !1313, !noalias !1316

  %232 = tail call i64 @malloc(i64 %226)

  %233 = load i64, i64* %18, align 8

  %234 = add i64 %233, 16

  %235 = load i32, i32* %5, align 4

  %236 = load i64, i64* %3, align 8

  %237 = inttoptr i64 %234 to i32*

  store i32 %235, i32* %237

  %238 = zext i32 %235 to i64

  %239 = add i64 %233, 56

  %240 = inttoptr i64 %239 to i64*

  store i64 %232, i64* %240

  %241 = load i64, i64* %19, align 8

  %242 = add i64 %236, 22

  %243 = add i64 %233, -8

  %244 = inttoptr i64 %243 to i64*

  store i64 %242, i64* %244

  %245 = inttoptr i64 %243 to i64*

  %246 = load i64, i64* %245

  store i64 %246, i64* %3, align 8, !alias.scope !1318, !noalias !1321

  store i64 %233, i64* %18, align 8, !alias.scope !1318, !noalias !1321

  %247 = tail call i64 @read(i64 %238, i64 %232, i64 %241)

  %248 = load i64, i64* %3, align 8

  store i64 66, i64* %16, align 8, !tbaa !1240

  store i64 448, i64* %15, align 8, !tbaa !1240

  %249 = add i64 %248, 22

  %250 = load i64, i64* %18, align 8, !tbaa !1240

  %251 = add i64 %250, -8

  %252 = inttoptr i64 %251 to i64*

  store i64 %249, i64* %252

  %253 = load i64, i64* %14, align 8, !alias.scope !1323, !noalias !1326

  %254 = inttoptr i64 %251 to i64*

  %255 = load i64, i64* %254

  store i64 %255, i64* %3, align 8, !alias.scope !1323, !noalias !1326

  store i64 %250, i64* %18, align 8, !alias.scope !1323, !noalias !1326

  %256 = tail call i64 @open(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 68), i64 4294967295), i64 66, i64 448, i64 %253), !noalias !1323

  %257 = load i64, i64* %18, align 8

  %258 = add i64 %257, 12

  %259 = trunc i64 %256 to i32

  %260 = load i64, i64* %3, align 8

  %261 = inttoptr i64 %258 to i32*

  store i32 %259, i32* %261

  store i8 0, i8* %48, align 1, !tbaa !1244

  %262 = and i32 %259, 255

  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #9

  %264 = trunc i32 %263 to i8

  %265 = and i8 %264, 1

  %266 = xor i8 %265, 1

  store i8 %266, i8* %49, align 1, !tbaa !1258

  %267 = icmp eq i32 %259, 0

  %268 = zext i1 %267 to i8

  store i8 %268, i8* %51, align 1, !tbaa !1260

  %269 = lshr i32 %259, 31

  %270 = trunc i32 %269 to i8

  store i8 %270, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %271 = icmp ne i8 %270, 0

  %272 = select i1 %271, i64 569, i64 12

  %273 = add i64 %260, %272

  %274 = icmp eq i8 %270, 1

  br i1 %274, label %block_400c50, label %block_400a23



block_400a4e:                                     ; preds = %block_400a23

  %275 = sext i32 %478 to i64

  %276 = mul nsw i64 %275, 400

  %277 = load i64, i64* %18, align 8

  %278 = add i64 %277, 32

  %279 = inttoptr i64 %278 to i64*

  store i64 %276, i64* %279

  %280 = shl nsw i64 %275, 2

  store i64 %280, i64* %15, align 8, !tbaa !1240

  %281 = add i64 %486, 34

  %282 = add i64 %277, 40

  %283 = add i64 %277, 56

  %284 = add i64 %277, 72

  %285 = add i64 %277, 48

  %286 = add i64 %277, 24

  %287 = add i64 %277, 64

  %288 = add i64 %277, 88

  %289 = add i64 %277, 80

  %290 = add i64 %277, 96

  %291 = load i64, i64* %19, align 8

  %292 = lshr i64 %275, 63

  br label %block_400a70



block_400bc8:                                     ; preds = %block_400bad

  %293 = load i64, i64* %18, align 8

  %294 = add i64 %293, 16

  %295 = inttoptr i64 %294 to i32*

  %296 = load i32, i32* %295

  %297 = zext i32 %296 to i64

  %298 = add i64 %648, 9

  %299 = add i64 %293, -8

  %300 = inttoptr i64 %299 to i64*

  store i64 %298, i64* %300

  %301 = inttoptr i64 %299 to i64*

  %302 = load i64, i64* %301

  store i64 %302, i64* %3, align 8, !alias.scope !1328, !noalias !1331

  store i64 %293, i64* %18, align 8, !alias.scope !1328, !noalias !1331

  %303 = tail call i64 @close(i64 %297), !noalias !1328

  %304 = trunc i64 %303 to i32

  %305 = load i64, i64* %3, align 8

  store i8 0, i8* %48, align 1, !tbaa !1244

  %306 = and i32 %304, 255

  %307 = tail call i32 @llvm.ctpop.i32(i32 %306) #9

  %308 = trunc i32 %307 to i8

  %309 = and i8 %308, 1

  %310 = xor i8 %309, 1

  store i8 %310, i8* %49, align 1, !tbaa !1258

  %311 = icmp eq i32 %304, 0

  %312 = zext i1 %311 to i8

  store i8 %312, i8* %51, align 1, !tbaa !1260

  %313 = lshr i32 %304, 31

  %314 = trunc i32 %313 to i8

  store i8 %314, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %315 = icmp ne i8 %314, 0

  %316 = select i1 %315, i64 167, i64 8

  %317 = add i64 %305, %316

  %318 = icmp eq i8 %314, 1

  br i1 %318, label %block_400c78, label %block_400bd9



block_400bfb:                                     ; preds = %block_400920

  %319 = inttoptr i64 %71 to i64*

  %320 = load i64, i64* %319

  store i64 %320, i64* %16, align 8, !tbaa !1240

  store i8 0, i8* %48, align 1, !tbaa !1244

  store i8 1, i8* %49, align 1, !tbaa !1258

  store i8 1, i8* %51, align 1, !tbaa !1260

  store i8 0, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %321 = add i64 %78, 15

  %322 = load i64, i64* %18, align 8, !tbaa !1240

  %323 = add i64 %322, -8

  %324 = inttoptr i64 %323 to i64*

  store i64 %321, i64* %324

  %325 = load i64, i64* %15, align 8, !alias.scope !1333, !noalias !1336

  %326 = load i64, i64* %14, align 8, !alias.scope !1333, !noalias !1336

  %327 = load i64, i64* %20, align 8, !alias.scope !1333, !noalias !1336

  %328 = load i64, i64* %21, align 8, !alias.scope !1333, !noalias !1336

  %329 = inttoptr i64 %322 to i64*

  %330 = load i64, i64* %329

  %331 = add i64 %322, 8

  %332 = inttoptr i64 %331 to i64*

  %333 = load i64, i64* %332

  %334 = add i64 %322, 16

  %335 = inttoptr i64 %334 to i64*

  %336 = load i64, i64* %335

  %337 = add i64 %322, 24

  %338 = inttoptr i64 %337 to i64*

  %339 = load i64, i64* %338

  %340 = add i64 %322, 32

  %341 = inttoptr i64 %340 to i64*

  %342 = load i64, i64* %341

  %343 = add i64 %322, 40

  %344 = inttoptr i64 %343 to i64*

  %345 = load i64, i64* %344

  %346 = add i64 %322, 48

  %347 = inttoptr i64 %346 to i64*

  %348 = load i64, i64* %347

  %349 = add i64 %322, 56

  %350 = inttoptr i64 %349 to i64*

  %351 = load i64, i64* %350

  %352 = add i64 %322, 64

  %353 = inttoptr i64 %352 to i64*

  %354 = load i64, i64* %353

  %355 = add i64 %322, 72

  %356 = inttoptr i64 %355 to i64*

  %357 = load i64, i64* %356

  %358 = inttoptr i64 %323 to i64*

  %359 = load i64, i64* %358

  store i64 %359, i64* %3, align 8, !alias.scope !1333, !noalias !1336

  store i64 %322, i64* %18, align 8, !alias.scope !1333, !noalias !1336

  %360 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 4), i64 4294967295), i64 %320, i64 %325, i64 %326, i64 %327, i64 %328, i64 %330, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354, i64 %357), !noalias !1333

  %361 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %362 = add i64 %361, 10

  %363 = load i64, i64* %18, align 8, !tbaa !1240

  %364 = add i64 %363, -8

  %365 = inttoptr i64 %364 to i64*

  store i64 %362, i64* %365

  %366 = inttoptr i64 %364 to i64*

  %367 = load i64, i64* %366

  store i64 %367, i64* %3, align 8, !alias.scope !1338, !noalias !1341

  store i64 %363, i64* %18, align 8, !alias.scope !1338, !noalias !1341

  %368 = tail call i64 @exit(i64 1), !noalias !1338

  store i64 %368, i64* %58, align 8, !alias.scope !1338, !noalias !1341

  %369 = load i64, i64* %3, align 8

  %370 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %369, %struct.Memory* %2)

  ret %struct.Memory* %370



block_400b42:                                     ; preds = %block_400b2d

  %371 = add i64 %280, %384

  %372 = sub i64 %803, %275

  %373 = lshr i64 %372, 63

  %374 = lshr i64 %803, 63

  %375 = xor i64 %292, %374

  %376 = xor i64 %373, %374

  %377 = add nuw nsw i64 %376, %375

  %378 = icmp eq i64 %377, 2

  %379 = icmp ne i64 %373, 0

  %380 = xor i1 %379, %378

  %381 = select i1 %380, i64 -130, i64 12

  %382 = add i64 %810, %381

  br i1 %380, label %block_400ac0, label %block_400b4e



block_400ac0:                                     ; preds = %block_400ab0, %block_400b42

  %383 = phi i64 [ %394, %block_400ab0 ], [ %807, %block_400b42 ]

  %384 = phi i64 [ %397, %block_400ab0 ], [ %371, %block_400b42 ]

  %385 = phi i64 [ %395, %block_400ab0 ], [ %803, %block_400b42 ]

  %386 = phi i64 [ %402, %block_400ab0 ], [ %382, %block_400b42 ]

  %387 = phi %struct.Memory* [ %399, %block_400ab0 ], [ %653, %block_400b42 ]

  %388 = inttoptr i64 %290 to i64*

  store i64 %385, i64* %388

  %389 = mul i64 %275, %385

  %390 = inttoptr i64 %277 to i64*

  %391 = load i64, i64* %390

  %392 = add i64 %386, 16

  %393 = add i64 %384, -4

  br label %block_400ad0



block_400ab0:                                     ; preds = %block_400a90, %block_400b4e

  %394 = phi i64 [ %600, %block_400a90 ], [ %807, %block_400b4e ]

  %395 = phi i64 [ %601, %block_400a90 ], [ %438, %block_400b4e ]

  %396 = phi i64 [ 0, %block_400a90 ], [ %400, %block_400b4e ]

  %397 = phi i64 [ %608, %block_400a90 ], [ %429, %block_400b4e ]

  %398 = phi i64 [ %612, %block_400a90 ], [ %442, %block_400b4e ]

  %399 = phi %struct.Memory* [ %604, %block_400a90 ], [ %653, %block_400b4e ]

  %400 = add i64 %396, 100

  %401 = inttoptr i64 %289 to i64*

  store i64 %397, i64* %401

  %402 = add i64 %398, 16

  br label %block_400ac0



block_400c28:                                     ; preds = %block_400964

  %403 = add i64 %776, 10

  %404 = load i64, i64* %18, align 8, !tbaa !1240

  %405 = add i64 %404, -8

  %406 = inttoptr i64 %405 to i64*

  store i64 %403, i64* %406

  %407 = inttoptr i64 %405 to i64*

  %408 = load i64, i64* %407

  store i64 %408, i64* %3, align 8, !alias.scope !1343, !noalias !1346

  store i64 %404, i64* %18, align 8, !alias.scope !1343, !noalias !1346

  %409 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 193), i64 4294967295)), !noalias !1343

  %410 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %411 = add i64 %410, 10

  %412 = load i64, i64* %18, align 8, !tbaa !1240

  %413 = add i64 %412, -8

  %414 = inttoptr i64 %413 to i64*

  store i64 %411, i64* %414

  %415 = inttoptr i64 %413 to i64*

  %416 = load i64, i64* %415

  store i64 %416, i64* %3, align 8, !alias.scope !1348, !noalias !1351

  store i64 %412, i64* %18, align 8, !alias.scope !1348, !noalias !1351

  %417 = tail call i64 @exit(i64 1), !noalias !1348

  store i64 %417, i64* %58, align 8, !alias.scope !1348, !noalias !1351

  %418 = load i64, i64* %3, align 8

  %419 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %418, %struct.Memory* %2)

  ret %struct.Memory* %419



block_400b4e:                                     ; preds = %block_400b2d, %block_400b42

  %420 = phi i64 [ %810, %block_400b2d ], [ %382, %block_400b42 ]

  %421 = inttoptr i64 %277 to i64*

  %422 = load i64, i64* %421

  %423 = inttoptr i64 %278 to i64*

  %424 = load i64, i64* %423

  %425 = add i64 %424, %422

  %426 = inttoptr i64 %277 to i64*

  store i64 %425, i64* %426

  %427 = inttoptr i64 %289 to i64*

  %428 = load i64, i64* %427

  %429 = add i64 %428, 400

  %430 = sub i64 %400, %275

  %431 = lshr i64 %430, 63

  %432 = lshr i64 %400, 63

  %433 = xor i64 %292, %432

  %434 = xor i64 %431, %432

  %435 = add nuw nsw i64 %434, %433

  %436 = icmp eq i64 %435, 2

  %437 = inttoptr i64 %284 to i64*

  %438 = load i64, i64* %437

  %439 = icmp ne i64 %431, 0

  %440 = xor i1 %439, %436

  %441 = select i1 %440, i64 -158, i64 39

  %442 = add i64 %420, %441

  br i1 %440, label %block_400ab0, label %block_400b75



block_400a70:                                     ; preds = %block_400b92, %block_400a4e

  %443 = phi i64 [ 0, %block_400a4e ], [ %575, %block_400b92 ]

  %444 = phi i64 [ %281, %block_400a4e ], [ %587, %block_400b92 ]

  %445 = phi %struct.Memory* [ %2, %block_400a4e ], [ %653, %block_400b92 ]

  %446 = add i64 %443, 100

  %447 = inttoptr i64 %282 to i64*

  store i64 %446, i64* %447

  %448 = inttoptr i64 %283 to i64*

  %449 = load i64, i64* %448

  %450 = inttoptr i64 %284 to i64*

  store i64 %443, i64* %450

  %451 = add i64 %444, 32

  br label %block_400a90



block_400a23:                                     ; preds = %block_4009de

  %452 = load i64, i64* %19, align 8

  %453 = add i64 %273, 8

  %454 = add i64 %257, -8

  %455 = inttoptr i64 %454 to i64*

  store i64 %453, i64* %455

  %456 = inttoptr i64 %454 to i64*

  %457 = load i64, i64* %456

  store i64 %457, i64* %3, align 8, !alias.scope !1353, !noalias !1356

  store i64 %257, i64* %18, align 8, !alias.scope !1353, !noalias !1356

  %458 = tail call i64 @malloc(i64 %452)

  %459 = load i64, i64* %3, align 8

  store i64 %458, i64* %19, align 8, !tbaa !1240

  %460 = add i64 %459, 13

  %461 = load i64, i64* %18, align 8, !tbaa !1240

  %462 = add i64 %461, -8

  %463 = inttoptr i64 %462 to i64*

  store i64 %460, i64* %463

  %464 = inttoptr i64 %462 to i64*

  %465 = load i64, i64* %464

  store i64 %465, i64* %3, align 8, !alias.scope !1358, !noalias !1361

  store i64 %461, i64* %18, align 8, !alias.scope !1358, !noalias !1361

  %466 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 560), i64 4294967295)), !noalias !1358

  %467 = load i32, i32* %7, align 4

  %468 = load i64, i64* %3, align 8

  %469 = sext i32 %467 to i64

  store i64 %469, i64* %15, align 8, !tbaa !1240

  store i64 0, i64* %16, align 8, !tbaa !1240

  %470 = load i64, i64* %19, align 8

  %471 = add i64 %468, 13

  %472 = load i64, i64* %18, align 8, !tbaa !1240

  %473 = add i64 %472, -8

  %474 = inttoptr i64 %473 to i64*

  store i64 %471, i64* %474

  %475 = inttoptr i64 %473 to i64*

  %476 = load i64, i64* %475

  store i64 %476, i64* %3, align 8, !alias.scope !1363, !noalias !1366

  store i64 %472, i64* %18, align 8, !alias.scope !1363, !noalias !1366

  %477 = tail call i64 @memset(i64 %470, i64 0, i64 %469), !noalias !1363

  %478 = load i32, i32* %11, align 4

  %479 = load i64, i64* %3, align 8

  %480 = icmp eq i32 %478, 0

  %481 = lshr i32 %478, 31

  %482 = trunc i32 %481 to i8

  %483 = icmp ne i8 %482, 0

  %484 = or i1 %480, %483

  %485 = select i1 %484, i64 360, i64 9

  %486 = add i64 %479, %485

  br i1 %484, label %block_400a23.block_400bad_crit_edge, label %block_400a4e



block_400a23.block_400bad_crit_edge:              ; preds = %block_400a23

  %487 = load i64, i64* %18, align 8, !tbaa !1240

  br label %block_400bad



block_400997:                                     ; preds = %block_400964

  %488 = load i32, i32* %11, align 4

  %489 = mul i32 %488, %488

  %490 = shl i32 %489, 2

  %491 = zext i32 %490 to i64

  store i64 %491, i64* %24, align 8, !tbaa !1240

  %492 = or i64 %491, 1

  %493 = shl nuw i64 %492, 32

  %494 = ashr exact i64 %493, 32

  store i64 %494, i64* %19, align 8, !tbaa !1240

  %495 = add i64 %776, 28

  %496 = load i64, i64* %18, align 8, !tbaa !1240

  %497 = add i64 %496, -8

  %498 = inttoptr i64 %497 to i64*

  store i64 %495, i64* %498

  %499 = inttoptr i64 %497 to i64*

  %500 = load i64, i64* %499

  store i64 %500, i64* %3, align 8, !alias.scope !1368, !noalias !1371

  store i64 %496, i64* %18, align 8, !alias.scope !1368, !noalias !1371

  %501 = tail call i64 @malloc(i64 %494)

  %502 = load i32, i32* %9, align 4

  %503 = zext i32 %502 to i64

  %504 = load i64, i64* %3, align 8

  %505 = load i64, i64* %18, align 8

  %506 = add i64 %505, 24

  %507 = inttoptr i64 %506 to i64*

  store i64 %501, i64* %507

  %508 = load i64, i64* %19, align 8

  store i64 %508, i64* %15, align 8, !tbaa !1240

  %509 = add i64 %504, 19

  %510 = add i64 %505, -8

  %511 = inttoptr i64 %510 to i64*

  store i64 %509, i64* %511

  %512 = inttoptr i64 %510 to i64*

  %513 = load i64, i64* %512

  store i64 %513, i64* %3, align 8, !alias.scope !1373, !noalias !1376

  store i64 %505, i64* %18, align 8, !alias.scope !1373, !noalias !1376

  %514 = tail call i64 @read(i64 %503, i64 %501, i64 %508)

  %515 = load i64, i64* %3, align 8

  store i64 0, i64* %16, align 8, !tbaa !1240

  %516 = add i64 %515, 14

  %517 = load i64, i64* %18, align 8, !tbaa !1240

  %518 = add i64 %517, -8

  %519 = inttoptr i64 %518 to i64*

  store i64 %516, i64* %519

  %520 = load i64, i64* %15, align 8, !alias.scope !1378, !noalias !1381

  %521 = load i64, i64* %14, align 8, !alias.scope !1378, !noalias !1381

  %522 = inttoptr i64 %518 to i64*

  %523 = load i64, i64* %522

  store i64 %523, i64* %3, align 8, !alias.scope !1378, !noalias !1381

  store i64 %517, i64* %18, align 8, !alias.scope !1378, !noalias !1381

  %524 = tail call i64 @open(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 50), i64 4294967295), i64 0, i64 %520, i64 %521), !noalias !1378

  %525 = trunc i64 %524 to i32

  %526 = and i64 %524, 4294967295

  %527 = load i64, i64* %3, align 8

  store i64 %526, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %48, align 1, !tbaa !1244

  %528 = and i32 %525, 255

  %529 = tail call i32 @llvm.ctpop.i32(i32 %528) #9

  %530 = trunc i32 %529 to i8

  %531 = and i8 %530, 1

  %532 = xor i8 %531, 1

  store i8 %532, i8* %49, align 1, !tbaa !1258

  %533 = icmp eq i32 %525, 0

  %534 = zext i1 %533 to i8

  store i8 %534, i8* %51, align 1, !tbaa !1260

  %535 = lshr i32 %525, 31

  %536 = trunc i32 %535 to i8

  store i8 %536, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %537 = icmp ne i8 %536, 0

  %538 = select i1 %537, i64 616, i64 10

  %539 = add i64 %527, %538

  %540 = icmp eq i8 %536, 1

  br i1 %540, label %block_400c3c, label %block_4009de



block_400c3c:                                     ; preds = %block_400997

  %541 = add i64 %539, 10

  %542 = load i64, i64* %18, align 8, !tbaa !1240

  %543 = add i64 %542, -8

  %544 = inttoptr i64 %543 to i64*

  store i64 %541, i64* %544

  %545 = inttoptr i64 %543 to i64*

  %546 = load i64, i64* %545

  store i64 %546, i64* %3, align 8, !alias.scope !1383, !noalias !1386

  store i64 %542, i64* %18, align 8, !alias.scope !1383, !noalias !1386

  %547 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 255), i64 4294967295)), !noalias !1383

  %548 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %549 = add i64 %548, 10

  %550 = load i64, i64* %18, align 8, !tbaa !1240

  %551 = add i64 %550, -8

  %552 = inttoptr i64 %551 to i64*

  store i64 %549, i64* %552

  %553 = inttoptr i64 %551 to i64*

  %554 = load i64, i64* %553

  store i64 %554, i64* %3, align 8, !alias.scope !1388, !noalias !1391

  store i64 %550, i64* %18, align 8, !alias.scope !1388, !noalias !1391

  %555 = tail call i64 @exit(i64 1), !noalias !1388

  store i64 %555, i64* %58, align 8, !alias.scope !1388, !noalias !1391

  %556 = load i64, i64* %3, align 8

  %557 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %556, %struct.Memory* %2)

  ret %struct.Memory* %557



block_400b14:                                     ; preds = %block_400b08, %block_400af0

  %558 = phi i64 [ %812, %block_400b08 ], [ %97, %block_400af0 ]

  %559 = phi i64 [ %811, %block_400b08 ], [ %98, %block_400af0 ]

  %560 = phi i64 [ %823, %block_400b08 ], [ %111, %block_400af0 ]

  %561 = inttoptr i64 %656 to i32*

  store i32 %107, i32* %561

  %562 = add i64 %651, 1

  %563 = inttoptr i64 %285 to i64*

  %564 = load i64, i64* %563

  %565 = icmp uge i64 %562, %564

  %566 = select i1 %565, i64 25, i64 16

  %567 = add i64 %560, %566

  br i1 %565, label %block_400b2d, label %block_400b24



block_400b92:                                     ; preds = %block_400b75

  %568 = inttoptr i64 %278 to i64*

  %569 = load i64, i64* %568

  %570 = inttoptr i64 %286 to i64*

  %571 = load i64, i64* %570

  %572 = add i64 %571, %569

  %573 = inttoptr i64 %286 to i64*

  store i64 %572, i64* %573

  %574 = inttoptr i64 %282 to i64*

  %575 = load i64, i64* %574

  %576 = sub i64 %575, %275

  %577 = lshr i64 %576, 63

  %578 = trunc i64 %577 to i8

  %579 = lshr i64 %575, 63

  %580 = xor i64 %292, %579

  %581 = xor i64 %577, %579

  %582 = add nuw nsw i64 %581, %580

  %583 = icmp eq i64 %582, 2

  %584 = icmp ne i8 %578, 0

  %585 = xor i1 %584, %583

  %586 = select i1 %585, i64 -290, i64 27

  %587 = add i64 %221, %586

  br i1 %585, label %block_400a70, label %block_400bad.loopexit



block_400b24:                                     ; preds = %block_400b14

  %588 = add i64 %650, 4

  %589 = sub i64 %562, %275

  %590 = lshr i64 %589, 63

  %591 = lshr i64 %562, 63

  %592 = xor i64 %292, %591

  %593 = xor i64 %590, %591

  %594 = add nuw nsw i64 %593, %592

  %595 = icmp eq i64 %594, 2

  %596 = icmp ne i64 %590, 0

  %597 = xor i1 %596, %595

  %598 = select i1 %597, i64 -84, i64 9

  %599 = add i64 %567, %598

  br i1 %597, label %block_400ad0, label %block_400b2d



block_400a90:                                     ; preds = %block_400a70, %block_400b75

  %600 = phi i64 [ 0, %block_400a70 ], [ %210, %block_400b75 ]

  %601 = phi i64 [ %443, %block_400a70 ], [ %438, %block_400b75 ]

  %602 = phi i64 [ %449, %block_400a70 ], [ %208, %block_400b75 ]

  %603 = phi i64 [ %451, %block_400a70 ], [ %221, %block_400b75 ]

  %604 = phi %struct.Memory* [ %445, %block_400a70 ], [ %653, %block_400b75 ]

  %605 = add i64 %600, 100

  %606 = inttoptr i64 %285 to i64*

  store i64 %605, i64* %606

  %607 = inttoptr i64 %286 to i64*

  %608 = load i64, i64* %607

  %609 = inttoptr i64 %287 to i64*

  store i64 %602, i64* %609

  %610 = inttoptr i64 %277 to i64*

  store i64 %602, i64* %610

  %611 = inttoptr i64 %288 to i64*

  store i64 %600, i64* %611

  %612 = add i64 %603, 32

  br label %block_400ab0



block_400bad.loopexit:                            ; preds = %block_400b92

  %613 = zext i32 %107 to i64

  store i64 %210, i64* %13, align 8, !tbaa !1240

  store i64 %613, i64* %27, align 8, !tbaa !1240

  store i64 %559, i64* %21, align 8

  store i64 %429, i64* %23, align 8

  store i64 %558, i64* %22, align 8

  store i64 %208, i64* %20, align 8

  store i64 %400, i64* %24, align 8

  store i64 %569, i64* %14, align 8

  store i64 %575, i64* %26, align 8

  store i64 %654, i64* %25, align 8

  store i64 %575, i64* %16, align 8

  br label %block_400bad



block_400bad:                                     ; preds = %block_400bad.loopexit, %block_400a23.block_400bad_crit_edge

  %614 = phi i64 [ %487, %block_400a23.block_400bad_crit_edge ], [ %277, %block_400bad.loopexit ]

  %615 = phi i64 [ %486, %block_400a23.block_400bad_crit_edge ], [ %587, %block_400bad.loopexit ]

  %616 = phi %struct.Memory* [ %2, %block_400a23.block_400bad_crit_edge ], [ %653, %block_400bad.loopexit ]

  %617 = add i64 %615, 10

  %618 = add i64 %614, -8

  %619 = inttoptr i64 %618 to i64*

  store i64 %617, i64* %619

  %620 = inttoptr i64 %618 to i64*

  %621 = load i64, i64* %620

  store i64 %621, i64* %3, align 8, !alias.scope !1393, !noalias !1396

  store i64 %614, i64* %18, align 8, !alias.scope !1393, !noalias !1396

  %622 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 624), i64 4294967295)), !noalias !1393

  %623 = load i64, i64* %18, align 8

  %624 = add i64 %623, 20

  %625 = load i64, i64* %3, align 8

  %626 = inttoptr i64 %624 to i32*

  %627 = load i32, i32* %626

  %628 = zext i32 %627 to i64

  %629 = add i64 %625, 9

  %630 = add i64 %623, -8

  %631 = inttoptr i64 %630 to i64*

  store i64 %629, i64* %631

  %632 = inttoptr i64 %630 to i64*

  %633 = load i64, i64* %632

  store i64 %633, i64* %3, align 8, !alias.scope !1398, !noalias !1401

  store i64 %623, i64* %18, align 8, !alias.scope !1398, !noalias !1401

  %634 = tail call i64 @close(i64 %628), !noalias !1398

  %635 = trunc i64 %634 to i32

  %636 = load i64, i64* %3, align 8

  store i8 0, i8* %48, align 1, !tbaa !1244

  %637 = and i32 %635, 255

  %638 = tail call i32 @llvm.ctpop.i32(i32 %637) #9

  %639 = trunc i32 %638 to i8

  %640 = and i8 %639, 1

  %641 = xor i8 %640, 1

  store i8 %641, i8* %49, align 1, !tbaa !1258

  %642 = icmp eq i32 %635, 0

  %643 = zext i1 %642 to i8

  store i8 %643, i8* %51, align 1, !tbaa !1260

  %644 = lshr i32 %635, 31

  %645 = trunc i32 %644 to i8

  store i8 %645, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %646 = icmp ne i8 %645, 0

  %647 = select i1 %646, i64 164, i64 8

  %648 = add i64 %636, %647

  %649 = icmp eq i8 %645, 1

  br i1 %649, label %block_400c64, label %block_400bc8



block_400ad0:                                     ; preds = %block_400b24, %block_400ac0

  %650 = phi i64 [ %391, %block_400ac0 ], [ %588, %block_400b24 ]

  %651 = phi i64 [ %383, %block_400ac0 ], [ %562, %block_400b24 ]

  %652 = phi i64 [ %392, %block_400ac0 ], [ %599, %block_400b24 ]

  %653 = phi %struct.Memory* [ %387, %block_400ac0 ], [ %653, %block_400b24 ]

  %654 = add i64 %389, %651

  %655 = shl i64 %654, 2

  %656 = add i64 %291, %655

  %657 = inttoptr i64 %656 to i32*

  %658 = load i32, i32* %657

  %659 = add i64 %652, 32

  br label %block_400af0



block_400c8c:                                     ; preds = %block_400bd9

  %660 = add i64 %701, 10

  %661 = load i64, i64* %18, align 8, !tbaa !1240

  %662 = add i64 %661, -8

  %663 = inttoptr i64 %662 to i64*

  store i64 %660, i64* %663

  %664 = inttoptr i64 %662 to i64*

  %665 = load i64, i64* %664

  store i64 %665, i64* %3, align 8, !alias.scope !1403, !noalias !1406

  store i64 %661, i64* %18, align 8, !alias.scope !1403, !noalias !1406

  %666 = tail call i64 @perror(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 483), i64 4294967295)), !noalias !1403

  %667 = load i64, i64* %3, align 8

  store i64 1, i64* %17, align 8, !tbaa !1240

  %668 = add i64 %667, 10

  %669 = load i64, i64* %18, align 8, !tbaa !1240

  %670 = add i64 %669, -8

  %671 = inttoptr i64 %670 to i64*

  store i64 %668, i64* %671

  %672 = inttoptr i64 %670 to i64*

  %673 = load i64, i64* %672

  store i64 %673, i64* %3, align 8, !alias.scope !1408, !noalias !1411

  store i64 %669, i64* %18, align 8, !alias.scope !1408, !noalias !1411

  %674 = tail call i64 @exit(i64 1), !noalias !1408

  store i64 %674, i64* %58, align 8, !alias.scope !1408, !noalias !1411

  %675 = load i64, i64* %3, align 8

  %676 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %675, %struct.Memory* %616)

  ret %struct.Memory* %676



block_400bd9:                                     ; preds = %block_400bc8

  %677 = load i64, i64* %18, align 8

  %678 = add i64 %677, 12

  %679 = inttoptr i64 %678 to i32*

  %680 = load i32, i32* %679

  %681 = zext i32 %680 to i64

  store i64 %681, i64* %17, align 8, !tbaa !1240

  %682 = add i64 %317, 9

  %683 = add i64 %677, -8

  %684 = inttoptr i64 %683 to i64*

  store i64 %682, i64* %684

  %685 = inttoptr i64 %683 to i64*

  %686 = load i64, i64* %685

  store i64 %686, i64* %3, align 8, !alias.scope !1413, !noalias !1416

  store i64 %677, i64* %18, align 8, !alias.scope !1413, !noalias !1416

  %687 = tail call i64 @close(i64 %681), !noalias !1413

  %688 = trunc i64 %687 to i32

  %689 = load i64, i64* %3, align 8

  store i8 0, i8* %48, align 1, !tbaa !1244

  %690 = and i32 %688, 255

  %691 = tail call i32 @llvm.ctpop.i32(i32 %690) #9

  %692 = trunc i32 %691 to i8

  %693 = and i8 %692, 1

  %694 = xor i8 %693, 1

  store i8 %694, i8* %49, align 1, !tbaa !1258

  %695 = icmp eq i32 %688, 0

  %696 = zext i1 %695 to i8

  store i8 %696, i8* %51, align 1, !tbaa !1260

  %697 = lshr i32 %688, 31

  %698 = trunc i32 %697 to i8

  store i8 %698, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %699 = icmp ne i8 %698, 0

  %700 = select i1 %699, i64 170, i64 8

  %701 = add i64 %689, %700

  %702 = icmp eq i8 %698, 1

  br i1 %702, label %block_400c8c, label %block_400bea



block_400964:                                     ; preds = %block_40094c

  %703 = and i64 %784, 4294967295

  %704 = add i64 %798, 15

  %705 = load i64, i64* %18, align 8, !tbaa !1240

  %706 = add i64 %705, -8

  %707 = inttoptr i64 %706 to i64*

  store i64 %704, i64* %707

  %708 = load i64, i64* %15, align 8, !alias.scope !1418, !noalias !1421

  %709 = load i64, i64* %14, align 8, !alias.scope !1418, !noalias !1421

  %710 = load i64, i64* %20, align 8, !alias.scope !1418, !noalias !1421

  %711 = load i64, i64* %21, align 8, !alias.scope !1418, !noalias !1421

  %712 = inttoptr i64 %705 to i64*

  %713 = load i64, i64* %712

  %714 = add i64 %705, 8

  %715 = inttoptr i64 %714 to i64*

  %716 = load i64, i64* %715

  %717 = add i64 %705, 16

  %718 = inttoptr i64 %717 to i64*

  %719 = load i64, i64* %718

  %720 = add i64 %705, 24

  %721 = inttoptr i64 %720 to i64*

  %722 = load i64, i64* %721

  %723 = add i64 %705, 32

  %724 = inttoptr i64 %723 to i64*

  %725 = load i64, i64* %724

  %726 = add i64 %705, 40

  %727 = inttoptr i64 %726 to i64*

  %728 = load i64, i64* %727

  %729 = add i64 %705, 48

  %730 = inttoptr i64 %729 to i64*

  %731 = load i64, i64* %730

  %732 = add i64 %705, 56

  %733 = inttoptr i64 %732 to i64*

  %734 = load i64, i64* %733

  %735 = add i64 %705, 64

  %736 = inttoptr i64 %735 to i64*

  %737 = load i64, i64* %736

  %738 = add i64 %705, 72

  %739 = inttoptr i64 %738 to i64*

  %740 = load i64, i64* %739

  %741 = inttoptr i64 %706 to i64*

  %742 = load i64, i64* %741

  store i64 %742, i64* %3, align 8, !alias.scope !1418, !noalias !1421

  store i64 %705, i64* %18, align 8, !alias.scope !1418, !noalias !1421

  %743 = tail call i64 @printf(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 154), i64 4294967295), i64 %703, i64 %708, i64 %709, i64 %710, i64 %711, i64 %713, i64 %716, i64 %719, i64 %722, i64 %725, i64 %728, i64 %731, i64 %734, i64 %737, i64 %740), !noalias !1418

  %744 = load i64, i64* %3, align 8

  %745 = add i64 %744, 10

  %746 = load i64, i64* %18, align 8, !tbaa !1240

  %747 = add i64 %746, -8

  %748 = inttoptr i64 %747 to i64*

  store i64 %745, i64* %748

  %749 = inttoptr i64 %747 to i64*

  %750 = load i64, i64* %749

  store i64 %750, i64* %3, align 8, !alias.scope !1423, !noalias !1426

  store i64 %746, i64* %18, align 8, !alias.scope !1423, !noalias !1426

  %751 = tail call i64 @puts(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 528), i64 4294967295))

  %752 = load i64, i64* %3, align 8

  store i64 0, i64* %16, align 8, !tbaa !1240

  %753 = add i64 %752, 14

  %754 = load i64, i64* %18, align 8, !tbaa !1240

  %755 = add i64 %754, -8

  %756 = inttoptr i64 %755 to i64*

  store i64 %753, i64* %756

  %757 = load i64, i64* %15, align 8, !alias.scope !1428, !noalias !1431

  %758 = load i64, i64* %14, align 8, !alias.scope !1428, !noalias !1431

  %759 = inttoptr i64 %755 to i64*

  %760 = load i64, i64* %759

  store i64 %760, i64* %3, align 8, !alias.scope !1428, !noalias !1431

  store i64 %754, i64* %18, align 8, !alias.scope !1428, !noalias !1431

  %761 = tail call i64 @open(i64 and (i64 add (i64 ptrtoint (%seg_400d20__rodata_type* @seg_400d20__rodata to i64), i64 32), i64 4294967295), i64 0, i64 %757, i64 %758), !noalias !1428

  %762 = trunc i64 %761 to i32

  %763 = and i64 %761, 4294967295

  %764 = load i64, i64* %3, align 8

  store i64 %763, i64* %26, align 8, !tbaa !1240

  store i8 0, i8* %48, align 1, !tbaa !1244

  %765 = and i32 %762, 255

  %766 = tail call i32 @llvm.ctpop.i32(i32 %765) #9

  %767 = trunc i32 %766 to i8

  %768 = and i8 %767, 1

  %769 = xor i8 %768, 1

  store i8 %769, i8* %49, align 1, !tbaa !1258

  %770 = icmp eq i32 %762, 0

  %771 = zext i1 %770 to i8

  store i8 %771, i8* %51, align 1, !tbaa !1260

  %772 = lshr i32 %762, 31

  %773 = trunc i32 %772 to i8

  store i8 %773, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %774 = icmp ne i8 %773, 0

  %775 = select i1 %774, i64 669, i64 12

  %776 = add i64 %764, %775

  %777 = icmp eq i8 %773, 1

  br i1 %777, label %block_400c28, label %block_400997



block_40094c:                                     ; preds = %block_400920

  store i64 0, i64* %16, align 8, !tbaa !1240

  store i64 10, i64* %15, align 8, !tbaa !1240

  %778 = add i64 %78, 12

  %779 = load i64, i64* %18, align 8, !tbaa !1240

  %780 = add i64 %779, -8

  %781 = inttoptr i64 %780 to i64*

  store i64 %778, i64* %781

  %782 = inttoptr i64 %780 to i64*

  %783 = load i64, i64* %782

  store i64 %783, i64* %3, align 8, !alias.scope !1433, !noalias !1436

  store i64 %779, i64* %18, align 8, !alias.scope !1433, !noalias !1436

  %784 = tail call i64 @strtol(i64 %75, i64 0, i64 10)

  %785 = load i64, i64* %3, align 8

  store i64 %784, i64* %27, align 8, !tbaa !1240

  %786 = trunc i64 %784 to i32

  store i8 0, i8* %48, align 1, !tbaa !1244

  %787 = and i32 %786, 255

  %788 = tail call i32 @llvm.ctpop.i32(i32 %787) #9

  %789 = trunc i32 %788 to i8

  %790 = and i8 %789, 1

  %791 = xor i8 %790, 1

  store i8 %791, i8* %49, align 1, !tbaa !1258

  %792 = icmp eq i32 %786, 0

  %793 = zext i1 %792 to i8

  store i8 %793, i8* %51, align 1, !tbaa !1260

  %794 = lshr i32 %786, 31

  %795 = trunc i32 %794 to i8

  store i8 %795, i8* %52, align 1, !tbaa !1261

  store i8 0, i8* %53, align 1, !tbaa !1262

  store i8 0, i8* %50, align 1, !tbaa !1259

  %796 = icmp ne i8 %795, 0

  %797 = select i1 %796, i64 700, i64 12

  %798 = add i64 %785, %797

  %799 = icmp eq i8 %795, 1

  br i1 %799, label %block_400c14, label %block_400964



block_400b2d:                                     ; preds = %block_400b24, %block_400b14

  %800 = phi i64 [ %599, %block_400b24 ], [ %567, %block_400b14 ]

  %801 = inttoptr i64 %290 to i64*

  %802 = load i64, i64* %801

  %803 = add i64 %802, 1

  %804 = inttoptr i64 %282 to i64*

  %805 = load i64, i64* %804

  %806 = inttoptr i64 %288 to i64*

  %807 = load i64, i64* %806

  %808 = icmp uge i64 %803, %805

  %809 = select i1 %808, i64 33, i64 21

  %810 = add i64 %800, %809

  br i1 %808, label %block_400b4e, label %block_400b42



block_400b08:                                     ; preds = %block_400af0

  %811 = add i64 %280, %98

  %812 = add nuw nsw i64 %97, 1

  %813 = sub i64 %108, %275

  %814 = lshr i64 %813, 63

  %815 = lshr i64 %108, 63

  %816 = xor i64 %292, %815

  %817 = xor i64 %814, %815

  %818 = add nuw nsw i64 %817, %816

  %819 = icmp eq i64 %818, 2

  %820 = icmp ne i64 %814, 0

  %821 = xor i1 %820, %819

  %822 = select i1 %821, i64 -24, i64 12

  %823 = add i64 %111, %822

  br i1 %821, label %block_400af0, label %block_400b14

}



; Function Attrs: noinline

define %struct.Memory* @sub_400700__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400700:

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

  store i64 ptrtoint (i64 ()* @callback_sub_400d10___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_400ca0___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  store i64 %38, i64* %9, align 8, !alias.scope !1438, !noalias !1441

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_400ca0___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_400d10___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1438

  store i64 %50, i64* %4, align 8, !alias.scope !1438, !noalias !1441

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400730__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400730:

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

define %struct.Memory* @sub_400d14__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400d14:

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4007e0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4007e0:

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

  %12 = tail call %struct.Memory* @sub_400770_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400770_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400770:

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

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !1443

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1) to i32), i32 255)) #9

  %19 = trunc i32 %18 to i8

  %20 = and i8 %19, 1

  %21 = xor i8 %20, 1

  store i8 %21, i8* %13, align 1, !tbaa !1443

  store i8 0, i8* %14, align 1, !tbaa !1443

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !1443

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !1443

  store i8 0, i8* %17, align 1, !tbaa !1443

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0), label %block_4007a8, label %block_400793



block_400793:                                     ; preds = %block_400770

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1244

  store i8 1, i8* %13, align 1, !tbaa !1258

  store i8 1, i8* %15, align 1, !tbaa !1260

  store i8 0, i8* %16, align 1, !tbaa !1261

  store i8 0, i8* %17, align 1, !tbaa !1262

  store i8 0, i8* %14, align 1, !tbaa !1259

  br label %block_4007a8



block_4007a8:                                     ; preds = %block_400793, %block_400770

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

define %struct.Memory* @sub_4007f0_matrix_mult(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4007f0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %18 = load i64, i64* %11, align 8

  %19 = load i64, i64* %10, align 8, !tbaa !1240

  %20 = add i64 %19, -8

  %21 = inttoptr i64 %20 to i64*

  store i64 %18, i64* %21

  %22 = load i64, i64* %17, align 8

  %23 = add i64 %19, -16

  %24 = inttoptr i64 %23 to i64*

  store i64 %22, i64* %24

  %25 = load i64, i64* %16, align 8

  %26 = add i64 %19, -24

  %27 = inttoptr i64 %26 to i64*

  store i64 %25, i64* %27

  %28 = load i64, i64* %15, align 8

  %29 = add i64 %19, -32

  %30 = inttoptr i64 %29 to i64*

  store i64 %28, i64* %30

  %31 = load i64, i64* %14, align 8

  %32 = add i64 %19, -40

  %33 = inttoptr i64 %32 to i64*

  store i64 %31, i64* %33

  %34 = load i64, i64* %5, align 8

  %35 = add i64 %19, -48

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = load i64, i64* %9, align 8

  %38 = add i64 %37, 24

  %39 = inttoptr i64 %38 to i32*

  %40 = load i32, i32* %39

  %41 = zext i32 %40 to i64

  store i64 %41, i64* %7, align 8, !tbaa !1240

  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %42, align 1, !tbaa !1244

  %43 = and i32 %40, 255

  %44 = tail call i32 @llvm.ctpop.i32(i32 %43) #9

  %45 = trunc i32 %44 to i8

  %46 = and i8 %45, 1

  %47 = xor i8 %46, 1

  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %47, i8* %48, align 1, !tbaa !1258

  %49 = icmp eq i32 %40, 0

  %50 = zext i1 %49 to i8

  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %50, i8* %51, align 1, !tbaa !1260

  %52 = lshr i32 %40, 31

  %53 = trunc i32 %52 to i8

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %53, i8* %54, align 1, !tbaa !1261

  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %55, align 1, !tbaa !1262

  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %56, align 1, !tbaa !1259

  %57 = icmp ne i8 %53, 0

  %58 = or i1 %49, %57

  %59 = select i1 %58, i64 293, i64 21

  %60 = add i64 %59, %1

  br i1 %58, label %block_400915, label %block_400805



block_400870:                                     ; preds = %block_4008cf, %block_400865

  %61 = phi i64 [ %168, %block_400865 ], [ %161, %block_4008cf ]

  %62 = phi i64 [ %124, %block_400865 ], [ %142, %block_4008cf ]

  %63 = phi i32 [ %126, %block_400865 ], [ %141, %block_4008cf ]

  %64 = phi i32 [ %181, %block_400865 ], [ %162, %block_4008cf ]

  %65 = phi i64 [ %78, %block_400865 ], [ %154, %block_4008cf ]

  %66 = phi %struct.Memory* [ %128, %block_400865 ], [ %159, %block_4008cf ]

  %67 = sub i32 %354, %63

  %68 = lshr i32 %67, 31

  %69 = lshr i32 %63, 31

  %70 = xor i32 %69, %319

  %71 = xor i32 %68, %319

  %72 = add nuw nsw i32 %71, %70

  %73 = icmp eq i32 %72, 2

  %74 = icmp ne i32 %68, 0

  %75 = xor i1 %74, %73

  %76 = select i1 %75, i64 5, i64 87

  %77 = add i64 %65, %76

  br i1 %75, label %block_400875, label %block_4008c7



block_400865:                                     ; preds = %block_400860

  %78 = add i64 %139, 11

  %79 = sext i32 %125 to i64

  br label %block_400870



block_4008fb.loopexit:                            ; preds = %block_4008ed

  br label %block_4008fb



block_4008fb:                                     ; preds = %block_400830, %block_4008fb.loopexit

  %80 = phi i64 [ %176, %block_400830 ], [ %191, %block_4008fb.loopexit ]

  %81 = phi i32 [ %177, %block_400830 ], [ %192, %block_4008fb.loopexit ]

  %82 = phi i32 [ %178, %block_400830 ], [ %193, %block_4008fb.loopexit ]

  %83 = phi i32 [ %179, %block_400830 ], [ %211, %block_4008fb.loopexit ]

  %84 = phi i32 [ %180, %block_400830 ], [ %211, %block_4008fb.loopexit ]

  %85 = phi i64 [ %188, %block_400830 ], [ %210, %block_4008fb.loopexit ]

  %86 = phi %struct.Memory* [ %184, %block_400830 ], [ %196, %block_4008fb.loopexit ]

  %87 = and i64 %185, 4294967295

  %88 = sub i32 %189, %82

  %89 = lshr i32 %88, 31

  %90 = lshr i32 %189, 31

  %91 = lshr i32 %82, 31

  %92 = xor i32 %91, %90

  %93 = xor i32 %89, %90

  %94 = add nuw nsw i32 %93, %92

  %95 = icmp eq i32 %94, 2

  %96 = icmp ne i32 %89, 0

  %97 = xor i1 %96, %95

  %98 = select i1 %97, i64 -203, i64 12

  %99 = add i64 %85, %98

  br i1 %97, label %block_400830, label %block_400907.loopexit



block_4008e4:                                     ; preds = %block_4008d6

  %100 = sub i32 %215, %217

  %101 = lshr i32 %100, 31

  %102 = lshr i32 %215, 31

  %103 = lshr i32 %217, 31

  %104 = xor i32 %103, %102

  %105 = xor i32 %101, %102

  %106 = add nuw nsw i32 %105, %104

  %107 = icmp eq i32 %106, 2

  %108 = icmp ne i32 %101, 0

  %109 = xor i1 %108, %107

  %110 = select i1 %109, i64 -132, i64 9

  %111 = add i64 %223, %110

  br i1 %109, label %block_400860, label %block_4008ed.loopexit



block_400810:                                     ; preds = %block_400805, %block_400907

  %112 = phi i64 [ %41, %block_400805 ], [ %321, %block_400907 ]

  %113 = phi i32 [ %40, %block_400805 ], [ %322, %block_400907 ]

  %114 = phi i32 [ 0, %block_400805 ], [ %326, %block_400907 ]

  %115 = phi i64 [ 0, %block_400805 ], [ %327, %block_400907 ]

  %116 = phi i64 [ %341, %block_400805 ], [ %340, %block_400907 ]

  %117 = phi %struct.Memory* [ %2, %block_400805 ], [ %324, %block_400907 ]

  %118 = add nuw nsw i64 %115, 100

  %119 = trunc i64 %118 to i32

  %120 = inttoptr i64 %342 to i32*

  store i32 %119, i32* %120

  %121 = icmp slt i32 %113, 1

  %122 = select i1 %121, i64 247, i64 15

  %123 = add i64 %116, %122

  br i1 %121, label %block_400907, label %block_40081f



block_400860:                                     ; preds = %block_40084f, %block_4008e4

  %124 = phi i64 [ %348, %block_40084f ], [ %218, %block_4008e4 ]

  %125 = phi i32 [ %352, %block_40084f ], [ %215, %block_4008e4 ]

  %126 = phi i32 [ %351, %block_40084f ], [ %217, %block_4008e4 ]

  %127 = phi i64 [ %318, %block_40084f ], [ %111, %block_4008e4 ]

  %128 = phi %struct.Memory* [ %356, %block_40084f ], [ %214, %block_4008e4 ]

  %129 = sub i32 %181, %126

  %130 = lshr i32 %129, 31

  %131 = lshr i32 %126, 31

  %132 = xor i32 %131, %167

  %133 = xor i32 %130, %167

  %134 = add nuw nsw i32 %133, %132

  %135 = icmp eq i32 %134, 2

  %136 = icmp ne i32 %130, 0

  %137 = xor i1 %136, %135

  %138 = select i1 %137, i64 5, i64 118

  %139 = add i64 %127, %138

  br i1 %137, label %block_400865, label %block_4008d6



block_4008cf:                                     ; preds = %block_4008c7

  %140 = inttoptr i64 %38 to i32*

  %141 = load i32, i32* %140

  %142 = zext i32 %141 to i64

  %143 = sub i32 %162, %141

  %144 = lshr i32 %143, 31

  %145 = lshr i32 %162, 31

  %146 = lshr i32 %141, 31

  %147 = xor i32 %146, %145

  %148 = xor i32 %144, %145

  %149 = add nuw nsw i32 %148, %147

  %150 = icmp eq i32 %149, 2

  %151 = icmp ne i32 %144, 0

  %152 = xor i1 %151, %150

  %153 = select i1 %152, i64 -95, i64 7

  %154 = add i64 %165, %153

  br i1 %152, label %block_400870, label %block_4008d6.loopexit



block_4008c7.loopexit:                            ; preds = %block_400890, %block_4008c0

  %155 = phi i64 [ %239, %block_4008c0 ], [ %317, %block_400890 ]

  %156 = and i64 %286, 4294967295

  %157 = zext i32 %305 to i64

  store i64 %156, i64* %347, align 8, !tbaa !1240

  store i64 %157, i64* %8, align 8, !tbaa !1240

  br label %block_4008c7



block_4008c7:                                     ; preds = %block_4008c7.loopexit, %block_400870

  %158 = phi i64 [ %77, %block_400870 ], [ %155, %block_4008c7.loopexit ]

  %159 = phi %struct.Memory* [ %66, %block_400870 ], [ %283, %block_4008c7.loopexit ]

  %160 = add nuw nsw i64 %61, 1

  %161 = and i64 %160, 4294967295

  %162 = trunc i64 %160 to i32

  %163 = icmp uge i32 %162, %189

  %164 = select i1 %163, i64 15, i64 8

  %165 = add i64 %158, %164

  br i1 %163, label %block_4008d6.loopexit, label %block_4008cf



block_40083c:                                     ; preds = %block_400830

  %166 = add i64 %188, 4

  %167 = lshr i32 %181, 31

  %168 = zext i32 %181 to i64

  br label %block_400840



block_400875:                                     ; preds = %block_400870

  %169 = inttoptr i64 %37 to i64*

  %170 = load i64, i64* %169

  %171 = inttoptr i64 %345 to i64*

  %172 = load i64, i64* %171

  store i64 %172, i64* %12, align 8, !tbaa !1240

  %173 = inttoptr i64 %346 to i64*

  %174 = load i64, i64* %173

  %175 = add i64 %77, 27

  br label %block_400890



block_400830:                                     ; preds = %block_40081f, %block_4008fb

  %176 = phi i64 [ %112, %block_40081f ], [ %80, %block_4008fb ]

  %177 = phi i32 [ %113, %block_40081f ], [ %81, %block_4008fb ]

  %178 = phi i32 [ %113, %block_40081f ], [ %82, %block_4008fb ]

  %179 = phi i32 [ %114, %block_40081f ], [ %83, %block_4008fb ]

  %180 = phi i32 [ %114, %block_40081f ], [ %84, %block_4008fb ]

  %181 = phi i32 [ 0, %block_40081f ], [ %189, %block_4008fb ]

  %182 = phi i64 [ 0, %block_40081f ], [ %87, %block_4008fb ]

  %183 = phi i64 [ %241, %block_40081f ], [ %99, %block_4008fb ]

  %184 = phi %struct.Memory* [ %117, %block_40081f ], [ %86, %block_4008fb ]

  %185 = add nuw nsw i64 %182, 100

  %186 = icmp slt i32 %178, 1

  %187 = select i1 %186, i64 203, i64 12

  %188 = add i64 %183, %187

  %189 = trunc i64 %185 to i32

  br i1 %186, label %block_4008fb, label %block_40083c



block_4008ed.loopexit:                            ; preds = %block_4008d6, %block_4008e4

  %190 = phi i64 [ %111, %block_4008e4 ], [ %223, %block_4008d6 ]

  store i64 %218, i64* %7, align 8, !tbaa !1240

  br label %block_4008ed



block_4008ed:                                     ; preds = %block_400840, %block_4008ed.loopexit

  %191 = phi i64 [ %348, %block_400840 ], [ %218, %block_4008ed.loopexit ]

  %192 = phi i32 [ %349, %block_400840 ], [ %217, %block_4008ed.loopexit ]

  %193 = phi i32 [ %350, %block_400840 ], [ %217, %block_4008ed.loopexit ]

  %194 = phi i32 [ %351, %block_400840 ], [ %217, %block_4008ed.loopexit ]

  %195 = phi i64 [ %370, %block_400840 ], [ %190, %block_4008ed.loopexit ]

  %196 = phi %struct.Memory* [ %356, %block_400840 ], [ %214, %block_4008ed.loopexit ]

  %197 = sub i32 %371, %194

  %198 = lshr i32 %197, 31

  %199 = lshr i32 %371, 31

  %200 = lshr i32 %194, 31

  %201 = xor i32 %200, %199

  %202 = xor i32 %198, %199

  %203 = add nuw nsw i32 %202, %201

  %204 = icmp eq i32 %203, 2

  %205 = inttoptr i64 %343 to i64*

  %206 = load i64, i64* %205

  %207 = icmp ne i32 %198, 0

  %208 = xor i1 %207, %204

  %209 = select i1 %208, i64 -173, i64 14

  %210 = add i64 %195, %209

  %211 = trunc i64 %206 to i32

  br i1 %208, label %block_400840, label %block_4008fb.loopexit



block_4008d6.loopexit:                            ; preds = %block_4008c7, %block_4008cf

  %212 = phi i64 [ %154, %block_4008cf ], [ %165, %block_4008c7 ]

  br label %block_4008d6



block_4008d6:                                     ; preds = %block_4008d6.loopexit, %block_400860

  %213 = phi i64 [ %139, %block_400860 ], [ %212, %block_4008d6.loopexit ]

  %214 = phi %struct.Memory* [ %128, %block_400860 ], [ %159, %block_4008d6.loopexit ]

  %215 = add i32 %125, 1

  %216 = inttoptr i64 %38 to i32*

  %217 = load i32, i32* %216

  %218 = zext i32 %217 to i64

  %219 = inttoptr i64 %342 to i32*

  %220 = load i32, i32* %219

  %221 = icmp uge i32 %215, %220

  %222 = select i1 %221, i64 23, i64 14

  %223 = add i64 %213, %222

  br i1 %221, label %block_4008ed.loopexit, label %block_4008e4



block_4008c0:                                     ; preds = %block_400890

  %224 = and i64 %313, 4294967295

  %225 = inttoptr i64 %38 to i32*

  %226 = load i32, i32* %225

  %227 = zext i32 %226 to i64

  %228 = sub i32 %314, %226

  %229 = lshr i32 %228, 31

  %230 = lshr i32 %314, 31

  %231 = lshr i32 %226, 31

  %232 = xor i32 %231, %230

  %233 = xor i32 %229, %230

  %234 = add nuw nsw i32 %233, %232

  %235 = icmp eq i32 %234, 2

  %236 = icmp ne i32 %229, 0

  %237 = xor i1 %236, %235

  %238 = select i1 %237, i64 -48, i64 7

  %239 = add i64 %317, %238

  br i1 %237, label %block_400890, label %block_4008c7.loopexit



block_40081f:                                     ; preds = %block_400810

  %240 = inttoptr i64 %343 to i64*

  store i64 %115, i64* %240

  %241 = add i64 %123, 17

  br label %block_400830



block_400915.loopexit:                            ; preds = %block_400907

  store i64 %327, i64* %4, align 8, !tbaa !1240

  store i64 %327, i64* %6, align 8

  %242 = icmp ult i32 %326, %322

  %243 = zext i1 %242 to i8

  %244 = and i32 %328, 255

  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #9

  %246 = trunc i32 %245 to i8

  %247 = and i8 %246, 1

  %248 = xor i8 %247, 1

  %249 = xor i32 %322, %326

  %250 = xor i32 %249, %328

  %251 = lshr i32 %250, 4

  %252 = trunc i32 %251 to i8

  %253 = and i8 %252, 1

  %254 = icmp eq i32 %328, 0

  %255 = zext i1 %254 to i8

  %256 = zext i1 %336 to i8

  store i8 %243, i8* %42, align 1, !tbaa !1244

  store i8 %248, i8* %48, align 1, !tbaa !1258

  store i8 %253, i8* %56, align 1, !tbaa !1259

  store i8 %255, i8* %51, align 1, !tbaa !1260

  store i8 %330, i8* %54, align 1, !tbaa !1261

  store i8 %256, i8* %55, align 1, !tbaa !1262

  br label %block_400915



block_400915:                                     ; preds = %block_400915.loopexit, %block_4007f0

  %257 = phi %struct.Memory* [ %2, %block_4007f0 ], [ %324, %block_400915.loopexit ]

  %258 = add i64 %19, -40

  %259 = inttoptr i64 %35 to i64*

  %260 = load i64, i64* %259

  store i64 %260, i64* %5, align 8, !tbaa !1240

  %261 = add i64 %19, -32

  %262 = inttoptr i64 %258 to i64*

  %263 = load i64, i64* %262

  store i64 %263, i64* %14, align 8, !tbaa !1240

  %264 = add i64 %19, -24

  %265 = inttoptr i64 %261 to i64*

  %266 = load i64, i64* %265

  store i64 %266, i64* %15, align 8, !tbaa !1240

  %267 = add i64 %19, -16

  %268 = inttoptr i64 %264 to i64*

  %269 = load i64, i64* %268

  store i64 %269, i64* %16, align 8, !tbaa !1240

  %270 = add i64 %19, -8

  %271 = inttoptr i64 %267 to i64*

  %272 = load i64, i64* %271

  store i64 %272, i64* %17, align 8, !tbaa !1240

  %273 = inttoptr i64 %270 to i64*

  %274 = load i64, i64* %273

  store i64 %274, i64* %11, align 8, !tbaa !1240

  %275 = inttoptr i64 %19 to i64*

  %276 = load i64, i64* %275

  store i64 %276, i64* %3, align 8, !tbaa !1240

  %277 = add i64 %19, 8

  store i64 %277, i64* %10, align 8, !tbaa !1240

  ret %struct.Memory* %257



block_400890:                                     ; preds = %block_4008c0, %block_400875

  %278 = phi i64 [ %62, %block_400875 ], [ %227, %block_4008c0 ]

  %279 = phi i32 [ %354, %block_400875 ], [ %314, %block_4008c0 ]

  %280 = phi i64 [ %357, %block_400875 ], [ %224, %block_4008c0 ]

  %281 = phi i32 [ %63, %block_400875 ], [ %226, %block_4008c0 ]

  %282 = phi i64 [ %175, %block_400875 ], [ %239, %block_4008c0 ]

  %283 = phi %struct.Memory* [ %66, %block_400875 ], [ %283, %block_4008c0 ]

  %284 = sext i32 %281 to i64

  %285 = mul nsw i64 %79, %284

  %286 = add i64 %285, %280

  %287 = shl i64 %286, 32

  %288 = shl i64 %278, 32

  %289 = ashr exact i64 %288, 32

  %290 = sext i32 %279 to i64

  %291 = mul nsw i64 %290, %289

  %292 = trunc i64 %291 to i32

  %293 = add i32 %64, %292

  %294 = sext i32 %293 to i64

  %295 = shl nsw i64 %294, 2

  %296 = add i64 %172, %295

  %297 = inttoptr i64 %296 to i32*

  %298 = load i32, i32* %297

  %299 = ashr exact i64 %287, 30

  %300 = add i64 %299, %170

  %301 = inttoptr i64 %300 to i32*

  %302 = load i32, i32* %301

  %303 = mul i32 %302, %298

  %304 = trunc i64 %285 to i32

  %305 = add i32 %64, %304

  %306 = sext i32 %305 to i64

  %307 = shl nsw i64 %306, 2

  %308 = add i64 %174, %307

  %309 = inttoptr i64 %308 to i32*

  %310 = load i32, i32* %309

  %311 = add i32 %310, %303

  %312 = inttoptr i64 %308 to i32*

  store i32 %311, i32* %312

  %313 = add nuw nsw i64 %280, 1

  %314 = trunc i64 %313 to i32

  %315 = icmp uge i32 %314, %371

  %316 = select i1 %315, i64 55, i64 48

  %317 = add i64 %282, %316

  br i1 %315, label %block_4008c7.loopexit, label %block_4008c0



block_40084f:                                     ; preds = %block_400840

  %318 = add i64 %370, 17

  %319 = lshr i32 %354, 31

  br label %block_400860



block_400907.loopexit:                            ; preds = %block_4008fb

  %320 = and i64 %185, 4294967295

  store i64 %320, i64* %344, align 8, !tbaa !1240

  store i64 %87, i64* %13, align 8, !tbaa !1240

  br label %block_400907



block_400907:                                     ; preds = %block_400907.loopexit, %block_400810

  %321 = phi i64 [ %112, %block_400810 ], [ %80, %block_400907.loopexit ]

  %322 = phi i32 [ %113, %block_400810 ], [ %81, %block_400907.loopexit ]

  %323 = phi i64 [ %123, %block_400810 ], [ %99, %block_400907.loopexit ]

  %324 = phi %struct.Memory* [ %117, %block_400810 ], [ %86, %block_400907.loopexit ]

  %325 = inttoptr i64 %342 to i32*

  %326 = load i32, i32* %325

  %327 = zext i32 %326 to i64

  %328 = sub i32 %326, %322

  %329 = lshr i32 %328, 31

  %330 = trunc i32 %329 to i8

  %331 = lshr i32 %326, 31

  %332 = lshr i32 %322, 31

  %333 = xor i32 %332, %331

  %334 = xor i32 %329, %331

  %335 = add nuw nsw i32 %334, %333

  %336 = icmp eq i32 %335, 2

  %337 = icmp ne i8 %330, 0

  %338 = xor i1 %337, %336

  %339 = select i1 %338, i64 -247, i64 14

  %340 = add i64 %323, %339

  br i1 %338, label %block_400810, label %block_400915.loopexit



block_400805:                                     ; preds = %block_4007f0

  %341 = add i64 %60, 11

  %342 = add i64 %19, -60

  %343 = add i64 %19, -56

  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %345 = add i64 %37, 8

  %346 = add i64 %37, 16

  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  br label %block_400810



block_400840:                                     ; preds = %block_4008ed, %block_40083c

  %348 = phi i64 [ %176, %block_40083c ], [ %191, %block_4008ed ]

  %349 = phi i32 [ %177, %block_40083c ], [ %192, %block_4008ed ]

  %350 = phi i32 [ %178, %block_40083c ], [ %193, %block_4008ed ]

  %351 = phi i32 [ %178, %block_40083c ], [ %194, %block_4008ed ]

  %352 = phi i32 [ %179, %block_40083c ], [ %211, %block_4008ed ]

  %353 = phi i32 [ %180, %block_40083c ], [ %211, %block_4008ed ]

  %354 = phi i32 [ 0, %block_40083c ], [ %371, %block_4008ed ]

  %355 = phi i64 [ %166, %block_40083c ], [ %210, %block_4008ed ]

  %356 = phi %struct.Memory* [ %184, %block_40083c ], [ %196, %block_4008ed ]

  %357 = zext i32 %354 to i64

  %358 = add nuw nsw i64 %357, 100

  %359 = sub i32 %353, %351

  %360 = lshr i32 %359, 31

  %361 = lshr i32 %353, 31

  %362 = lshr i32 %351, 31

  %363 = xor i32 %362, %361

  %364 = xor i32 %360, %361

  %365 = add nuw nsw i32 %364, %363

  %366 = icmp eq i32 %365, 2

  %367 = icmp ne i32 %360, 0

  %368 = xor i1 %367, %366

  %369 = select i1 %368, i64 15, i64 173

  %370 = add i64 %355, %369

  %371 = trunc i64 %358 to i32

  br i1 %368, label %block_40084f, label %block_4008ed

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400d10___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400d10:

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

define i64 @callback_sub_400700__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

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

  %18 = tail call %struct.Memory* @sub_400700__start(%struct.State* nonnull @__mcsema_reg_state, i64 4196096, %struct.Memory* null)

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

define i64 @callback_sub_4007e0_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196320, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4007e0_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196320, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4007b0___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196272, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4007b0___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196272, %struct.Memory* null)

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

define %struct.Memory* @ext_4006e0_perror(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %13 = tail call i64 @perror(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020f8_exit(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6020e0_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6020b8_read(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %17 = tail call i64 @read(i64 %10, i64 %11, i64 %12)

  store i64 %17, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020e8_open(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = load i64, i64* %9, align 8

  %12 = load i64, i64* %8, align 8

  %13 = load i64, i64* %7, align 8

  %14 = load i64, i64* %6, align 8

  %15 = load i64, i64* %10, align 8

  %16 = inttoptr i64 %15 to i64*

  %17 = load i64, i64* %16

  store i64 %17, i64* %4, align 8

  %18 = add i64 %15, 8

  store i64 %18, i64* %10, align 8

  %19 = tail call i64 @open(i64 %11, i64 %12, i64 %13, i64 %14)

  store i64 %19, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400670_close(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %13 = tail call i64 @close(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020a0_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_400640_puts(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_400660_memset(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6020d8_time(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %13 = tail call i64 @time(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020c8_srand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %13 = tail call i64 @srand(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020d0_strtol(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

  %17 = tail call i64 @strtol(i64 %10, i64 %11, i64 %12)

  store i64 %17, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400d10___libc_csu_fini() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197648, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_400d10___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4197648, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400ca0___libc_csu_init() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197536, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_400ca0___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4197536, %struct.Memory* null)

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

  store i64 4196640, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_400920_main(%struct.State* nonnull @__mcsema_reg_state, i64 4196640, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %11

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020c0___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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



; Function Attrs: nobuiltin noinline nounwind

define i64 @matrix_mult(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196336, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4007f0_matrix_mult(%struct.State* nonnull @__mcsema_reg_state, i64 4196336, %struct.Memory* null)

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

  store i64 4197652, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400d14__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4197652, %struct.Memory* null)

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

  store i64 4195864, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400618__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195864, %struct.Memory* null)

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

  %3 = tail call i64 @callback_sub_400ca0___libc_csu_init()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #9 {

  %1 = tail call i64 @callback_sub_400d10___libc_csu_fini()

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

!1264 = distinct !{!1264, !1265, !"ext_6020d8_time: argument 0"}

!1265 = distinct !{!1265, !"ext_6020d8_time"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_6020d8_time: argument 1"}

!1268 = !{!1269}

!1269 = distinct !{!1269, !1270, !"ext_6020c8_srand: argument 0"}

!1270 = distinct !{!1270, !"ext_6020c8_srand"}

!1271 = !{!1272}

!1272 = distinct !{!1272, !1270, !"ext_6020c8_srand: argument 1"}

!1273 = !{!1274}

!1274 = distinct !{!1274, !1275, !"ext_4006e0_perror: argument 0"}

!1275 = distinct !{!1275, !"ext_4006e0_perror"}

!1276 = !{!1277}

!1277 = distinct !{!1277, !1275, !"ext_4006e0_perror: argument 1"}

!1278 = !{!1279}

!1279 = distinct !{!1279, !1280, !"ext_6020f8_exit: argument 0"}

!1280 = distinct !{!1280, !"ext_6020f8_exit"}

!1281 = !{!1282}

!1282 = distinct !{!1282, !1280, !"ext_6020f8_exit: argument 1"}

!1283 = !{!1284}

!1284 = distinct !{!1284, !1285, !"ext_4006e0_perror: argument 0"}

!1285 = distinct !{!1285, !"ext_4006e0_perror"}

!1286 = !{!1287}

!1287 = distinct !{!1287, !1285, !"ext_4006e0_perror: argument 1"}

!1288 = !{!1289}

!1289 = distinct !{!1289, !1290, !"ext_6020f8_exit: argument 0"}

!1290 = distinct !{!1290, !"ext_6020f8_exit"}

!1291 = !{!1292}

!1292 = distinct !{!1292, !1290, !"ext_6020f8_exit: argument 1"}

!1293 = !{!1294}

!1294 = distinct !{!1294, !1295, !"ext_4006e0_perror: argument 0"}

!1295 = distinct !{!1295, !"ext_4006e0_perror"}

!1296 = !{!1297}

!1297 = distinct !{!1297, !1295, !"ext_4006e0_perror: argument 1"}

!1298 = !{!1299}

!1299 = distinct !{!1299, !1300, !"ext_6020f8_exit: argument 0"}

!1300 = distinct !{!1300, !"ext_6020f8_exit"}

!1301 = !{!1302}

!1302 = distinct !{!1302, !1300, !"ext_6020f8_exit: argument 1"}

!1303 = !{!1304}

!1304 = distinct !{!1304, !1305, !"ext_4006e0_perror: argument 0"}

!1305 = distinct !{!1305, !"ext_4006e0_perror"}

!1306 = !{!1307}

!1307 = distinct !{!1307, !1305, !"ext_4006e0_perror: argument 1"}

!1308 = !{!1309}

!1309 = distinct !{!1309, !1310, !"ext_6020f8_exit: argument 0"}

!1310 = distinct !{!1310, !"ext_6020f8_exit"}

!1311 = !{!1312}

!1312 = distinct !{!1312, !1310, !"ext_6020f8_exit: argument 1"}

!1313 = !{!1314}

!1314 = distinct !{!1314, !1315, !"ext_6020e0_malloc: argument 0"}

!1315 = distinct !{!1315, !"ext_6020e0_malloc"}

!1316 = !{!1317}

!1317 = distinct !{!1317, !1315, !"ext_6020e0_malloc: argument 1"}

!1318 = !{!1319}

!1319 = distinct !{!1319, !1320, !"ext_6020b8_read: argument 0"}

!1320 = distinct !{!1320, !"ext_6020b8_read"}

!1321 = !{!1322}

!1322 = distinct !{!1322, !1320, !"ext_6020b8_read: argument 1"}

!1323 = !{!1324}

!1324 = distinct !{!1324, !1325, !"ext_6020e8_open: argument 0"}

!1325 = distinct !{!1325, !"ext_6020e8_open"}

!1326 = !{!1327}

!1327 = distinct !{!1327, !1325, !"ext_6020e8_open: argument 1"}

!1328 = !{!1329}

!1329 = distinct !{!1329, !1330, !"ext_400670_close: argument 0"}

!1330 = distinct !{!1330, !"ext_400670_close"}

!1331 = !{!1332}

!1332 = distinct !{!1332, !1330, !"ext_400670_close: argument 1"}

!1333 = !{!1334}

!1334 = distinct !{!1334, !1335, !"ext_6020a0_printf: argument 0"}

!1335 = distinct !{!1335, !"ext_6020a0_printf"}

!1336 = !{!1337}

!1337 = distinct !{!1337, !1335, !"ext_6020a0_printf: argument 1"}

!1338 = !{!1339}

!1339 = distinct !{!1339, !1340, !"ext_6020f8_exit: argument 0"}

!1340 = distinct !{!1340, !"ext_6020f8_exit"}

!1341 = !{!1342}

!1342 = distinct !{!1342, !1340, !"ext_6020f8_exit: argument 1"}

!1343 = !{!1344}

!1344 = distinct !{!1344, !1345, !"ext_4006e0_perror: argument 0"}

!1345 = distinct !{!1345, !"ext_4006e0_perror"}

!1346 = !{!1347}

!1347 = distinct !{!1347, !1345, !"ext_4006e0_perror: argument 1"}

!1348 = !{!1349}

!1349 = distinct !{!1349, !1350, !"ext_6020f8_exit: argument 0"}

!1350 = distinct !{!1350, !"ext_6020f8_exit"}

!1351 = !{!1352}

!1352 = distinct !{!1352, !1350, !"ext_6020f8_exit: argument 1"}

!1353 = !{!1354}

!1354 = distinct !{!1354, !1355, !"ext_6020e0_malloc: argument 0"}

!1355 = distinct !{!1355, !"ext_6020e0_malloc"}

!1356 = !{!1357}

!1357 = distinct !{!1357, !1355, !"ext_6020e0_malloc: argument 1"}

!1358 = !{!1359}

!1359 = distinct !{!1359, !1360, !"ext_400640_puts: argument 0"}

!1360 = distinct !{!1360, !"ext_400640_puts"}

!1361 = !{!1362}

!1362 = distinct !{!1362, !1360, !"ext_400640_puts: argument 1"}

!1363 = !{!1364}

!1364 = distinct !{!1364, !1365, !"ext_400660_memset: argument 0"}

!1365 = distinct !{!1365, !"ext_400660_memset"}

!1366 = !{!1367}

!1367 = distinct !{!1367, !1365, !"ext_400660_memset: argument 1"}

!1368 = !{!1369}

!1369 = distinct !{!1369, !1370, !"ext_6020e0_malloc: argument 0"}

!1370 = distinct !{!1370, !"ext_6020e0_malloc"}

!1371 = !{!1372}

!1372 = distinct !{!1372, !1370, !"ext_6020e0_malloc: argument 1"}

!1373 = !{!1374}

!1374 = distinct !{!1374, !1375, !"ext_6020b8_read: argument 0"}

!1375 = distinct !{!1375, !"ext_6020b8_read"}

!1376 = !{!1377}

!1377 = distinct !{!1377, !1375, !"ext_6020b8_read: argument 1"}

!1378 = !{!1379}

!1379 = distinct !{!1379, !1380, !"ext_6020e8_open: argument 0"}

!1380 = distinct !{!1380, !"ext_6020e8_open"}

!1381 = !{!1382}

!1382 = distinct !{!1382, !1380, !"ext_6020e8_open: argument 1"}

!1383 = !{!1384}

!1384 = distinct !{!1384, !1385, !"ext_4006e0_perror: argument 0"}

!1385 = distinct !{!1385, !"ext_4006e0_perror"}

!1386 = !{!1387}

!1387 = distinct !{!1387, !1385, !"ext_4006e0_perror: argument 1"}

!1388 = !{!1389}

!1389 = distinct !{!1389, !1390, !"ext_6020f8_exit: argument 0"}

!1390 = distinct !{!1390, !"ext_6020f8_exit"}

!1391 = !{!1392}

!1392 = distinct !{!1392, !1390, !"ext_6020f8_exit: argument 1"}

!1393 = !{!1394}

!1394 = distinct !{!1394, !1395, !"ext_400640_puts: argument 0"}

!1395 = distinct !{!1395, !"ext_400640_puts"}

!1396 = !{!1397}

!1397 = distinct !{!1397, !1395, !"ext_400640_puts: argument 1"}

!1398 = !{!1399}

!1399 = distinct !{!1399, !1400, !"ext_400670_close: argument 0"}

!1400 = distinct !{!1400, !"ext_400670_close"}

!1401 = !{!1402}

!1402 = distinct !{!1402, !1400, !"ext_400670_close: argument 1"}

!1403 = !{!1404}

!1404 = distinct !{!1404, !1405, !"ext_4006e0_perror: argument 0"}

!1405 = distinct !{!1405, !"ext_4006e0_perror"}

!1406 = !{!1407}

!1407 = distinct !{!1407, !1405, !"ext_4006e0_perror: argument 1"}

!1408 = !{!1409}

!1409 = distinct !{!1409, !1410, !"ext_6020f8_exit: argument 0"}

!1410 = distinct !{!1410, !"ext_6020f8_exit"}

!1411 = !{!1412}

!1412 = distinct !{!1412, !1410, !"ext_6020f8_exit: argument 1"}

!1413 = !{!1414}

!1414 = distinct !{!1414, !1415, !"ext_400670_close: argument 0"}

!1415 = distinct !{!1415, !"ext_400670_close"}

!1416 = !{!1417}

!1417 = distinct !{!1417, !1415, !"ext_400670_close: argument 1"}

!1418 = !{!1419}

!1419 = distinct !{!1419, !1420, !"ext_6020a0_printf: argument 0"}

!1420 = distinct !{!1420, !"ext_6020a0_printf"}

!1421 = !{!1422}

!1422 = distinct !{!1422, !1420, !"ext_6020a0_printf: argument 1"}

!1423 = !{!1424}

!1424 = distinct !{!1424, !1425, !"ext_400640_puts: argument 0"}

!1425 = distinct !{!1425, !"ext_400640_puts"}

!1426 = !{!1427}

!1427 = distinct !{!1427, !1425, !"ext_400640_puts: argument 1"}

!1428 = !{!1429}

!1429 = distinct !{!1429, !1430, !"ext_6020e8_open: argument 0"}

!1430 = distinct !{!1430, !"ext_6020e8_open"}

!1431 = !{!1432}

!1432 = distinct !{!1432, !1430, !"ext_6020e8_open: argument 1"}

!1433 = !{!1434}

!1434 = distinct !{!1434, !1435, !"ext_6020d0_strtol: argument 0"}

!1435 = distinct !{!1435, !"ext_6020d0_strtol"}

!1436 = !{!1437}

!1437 = distinct !{!1437, !1435, !"ext_6020d0_strtol: argument 1"}

!1438 = !{!1439}

!1439 = distinct !{!1439, !1440, !"ext_6020c0___libc_start_main: argument 0"}

!1440 = distinct !{!1440, !"ext_6020c0___libc_start_main"}

!1441 = !{!1442}

!1442 = distinct !{!1442, !1440, !"ext_6020c0___libc_start_main: argument 1"}

!1443 = !{!1242, !1242, i64 0}

