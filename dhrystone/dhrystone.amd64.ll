; ModuleID = 'dhrystone.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_401110__rodata_type = type <{ [8 x i8], [40 x i8], [31 x i8], [31 x i8], [31 x i8], [17 x i8] }>

%seg_601e00__init_array_type = type <{ i64, i64 }>

%seg_601ff0__got_type = type <{ i64, i64 }>

%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }>

%Version_type = type <{ [4 x i8] }>

%__bss_start_type = type <{ [4 x i8] }>

%seg_602070__bss_type = type <{ [16 x i8] }>

%Char1Glob_type = type <{ [8 x i8] }>

%PtrGlb_type = type <{ [8 x i8] }>

%Array2Glob_type = type <{ [10416 x i8] }>

%Array1Glob_type = type <{ [204 x i8] }>

%IntGlob_type = type <{ [4 x i8] }>

%BoolGlob_type = type <{ [4 x i8] }>

%Char2Glob_type = type <{ [4 x i8] }>

%PtrGlbNext_type = type <{ [8 x i8] }>

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

@seg_401110__rodata = internal constant %seg_401110__rodata_type <{ [8 x i8] c"\01\00\02\00\00\00\00\00", [40 x i8] c"\9B\0D@\00\00\00\00\00\AA\0D@\00\00\00\00\00\D6\0D@\00\00\00\00\00\E5\0D@\00\00\00\00\00\EA\0D@\00\00\00\00\00", [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", [17 x i8] c"Time: %ld.%06ld\0A\00" }>

@seg_601e00__init_array = internal global %seg_601e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4006f0_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4006c0___do_global_dtors_aux to i64) }>

@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] c"\10\1E`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64, i64)* @SSSSSstrcpy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSstrcmp to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSmemcpy to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSStimes to i64), i64 ptrtoint (i64 (i64)* @SSSSSexit to i64) }>
@Version = local_unnamed_addr global %Version_type <{ [4 x i8] c"1.1\00" }>

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer

@seg_602070__bss = internal global %seg_602070__bss_type zeroinitializer

@Char1Glob = global %Char1Glob_type zeroinitializer

@PtrGlb = global %PtrGlb_type zeroinitializer

@Array2Glob = global %Array2Glob_type zeroinitializer

@Array1Glob = global %Array1Glob_type zeroinitializer

@IntGlob = global %IntGlob_type zeroinitializer

@BoolGlob = global %BoolGlob_type zeroinitializer

@Char2Glob = global %Char2Glob_type zeroinitializer

@PtrGlbNext = global %PtrGlbNext_type zeroinitializer

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



; Function Attrs: noduplicate noinline nounwind optnone

define %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #2 {

  call void @llvm.trap()

  unreachable

}



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSstrcmp(i64, i64) #3
declare i64 @strcmp(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #3
declare i64 @gettimeofday(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #3
declare i64 @malloc(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSstrcpy(i64, i64) #3
declare i64 @strcpy(i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSStimes(i64) #3
declare i64 @times(i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmemcpy(i64, i64, i64) #3
declare i64 @memcpy(i64, i64, i64) #3


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSexit(i64) #3
declare i64 @exit(i64) #3


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400e00_Proc7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400e00:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = load i64, i64* %12, align 8

  %14 = load i64, i64* %11, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %11, align 8, !tbaa !1240

  store i64 %15, i64* %12, align 8, !tbaa !1240

  %17 = add i64 %14, -16

  %18 = load i32, i32* %7, align 4

  %19 = inttoptr i64 %17 to i32*

  store i32 %18, i32* %19

  %20 = add i64 %14, -20

  %21 = load i32, i32* %5, align 4

  %22 = inttoptr i64 %20 to i32*

  store i32 %21, i32* %22

  %23 = add i64 %14, -32

  %24 = load i64, i64* %9, align 8

  %25 = inttoptr i64 %23 to i64*

  store i64 %24, i64* %25

  %26 = add i64 %14, -16

  %27 = inttoptr i64 %26 to i32*

  %28 = load i32, i32* %27

  %29 = add i32 %28, 2

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %36 = add i64 %14, -36

  %37 = inttoptr i64 %36 to i32*

  store i32 %29, i32* %37

  %38 = add i64 %14, -20

  %39 = inttoptr i64 %38 to i32*

  %40 = load i32, i32* %39

  %41 = inttoptr i64 %36 to i32*

  %42 = load i32, i32* %41

  %43 = add i32 %42, %40

  %44 = zext i32 %43 to i64

  store i64 %44, i64* %10, align 8, !tbaa !1240

  %45 = icmp ult i32 %43, %40

  %46 = icmp ult i32 %43, %42

  %47 = or i1 %45, %46

  %48 = zext i1 %47 to i8

  store i8 %48, i8* %30, align 1, !tbaa !1244

  %49 = and i32 %43, 255

  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #10

  %51 = trunc i32 %50 to i8

  %52 = and i8 %51, 1

  %53 = xor i8 %52, 1

  store i8 %53, i8* %31, align 1, !tbaa !1258

  %54 = xor i32 %42, %40

  %55 = xor i32 %54, %43

  %56 = lshr i32 %55, 4

  %57 = trunc i32 %56 to i8

  %58 = and i8 %57, 1

  store i8 %58, i8* %32, align 1, !tbaa !1259

  %59 = icmp eq i32 %43, 0

  %60 = zext i1 %59 to i8

  store i8 %60, i8* %33, align 1, !tbaa !1260

  %61 = lshr i32 %43, 31

  %62 = trunc i32 %61 to i8

  store i8 %62, i8* %34, align 1, !tbaa !1261

  %63 = lshr i32 %40, 31

  %64 = lshr i32 %42, 31

  %65 = xor i32 %61, %63

  %66 = xor i32 %61, %64

  %67 = add nuw nsw i32 %65, %66

  %68 = icmp eq i32 %67, 2

  %69 = zext i1 %68 to i8

  store i8 %69, i8* %35, align 1, !tbaa !1262

  %70 = load i64, i64* %12, align 8

  %71 = add i64 %70, -24

  %72 = inttoptr i64 %71 to i64*

  %73 = load i64, i64* %72

  store i64 %73, i64* %9, align 8, !tbaa !1240

  %74 = inttoptr i64 %73 to i32*

  store i32 %43, i32* %74

  %75 = add i64 %70, -4

  %76 = inttoptr i64 %75 to i32*

  %77 = load i32, i32* %76

  %78 = zext i32 %77 to i64

  store i64 %78, i64* %8, align 8, !tbaa !1240

  %79 = load i64, i64* %11, align 8, !tbaa !1240

  %80 = add i64 %79, 8

  %81 = inttoptr i64 %79 to i64*

  %82 = load i64, i64* %81

  store i64 %82, i64* %12, align 8, !tbaa !1240

  %83 = inttoptr i64 %80 to i64*

  %84 = load i64, i64* %83

  store i64 %84, i64* %3, align 8, !tbaa !1240

  %85 = add i64 %79, 16

  store i64 %85, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400d9b(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400d9b:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = add i64 %7, -16

  %9 = inttoptr i64 %8 to i64*

  %10 = load i64, i64* %9

  %11 = inttoptr i64 %10 to i32*

  store i32 0, i32* %11

  %12 = add i64 %7, -4

  %13 = inttoptr i64 %12 to i32*

  %14 = load i32, i32* %13

  %15 = zext i32 %14 to i64

  store i64 %15, i64* %4, align 8, !tbaa !1240

  %16 = load i64, i64* %5, align 8

  %17 = add i64 %16, 32

  %18 = icmp ugt i64 %16, -33

  %19 = zext i1 %18 to i8

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %19, i8* %20, align 1, !tbaa !1244

  %21 = trunc i64 %17 to i32

  %22 = and i32 %21, 255

  %23 = tail call i32 @llvm.ctpop.i32(i32 %22) #10

  %24 = trunc i32 %23 to i8

  %25 = and i8 %24, 1

  %26 = xor i8 %25, 1

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %26, i8* %27, align 1, !tbaa !1258

  %28 = xor i64 %17, %16

  %29 = lshr i64 %28, 4

  %30 = trunc i64 %29 to i8

  %31 = and i8 %30, 1

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %31, i8* %32, align 1, !tbaa !1259

  %33 = icmp eq i64 %17, 0

  %34 = zext i1 %33 to i8

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %34, i8* %35, align 1, !tbaa !1260

  %36 = lshr i64 %17, 63

  %37 = trunc i64 %36 to i8

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %37, i8* %38, align 1, !tbaa !1261

  %39 = lshr i64 %16, 63

  %40 = xor i64 %36, %39

  %41 = add nuw nsw i64 %40, %36

  %42 = icmp eq i64 %41, 2

  %43 = zext i1 %42 to i8

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %43, i8* %44, align 1, !tbaa !1262

  %45 = add i64 %16, 40

  %46 = inttoptr i64 %17 to i64*

  %47 = load i64, i64* %46

  store i64 %47, i64* %6, align 8, !tbaa !1240

  %48 = inttoptr i64 %45 to i64*

  %49 = load i64, i64* %48

  store i64 %49, i64* %3, align 8, !tbaa !1240

  %50 = add i64 %16, 48

  store i64 %50, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400dea(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400dea:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = add i64 %7, -16

  %9 = inttoptr i64 %8 to i64*

  %10 = load i64, i64* %9

  %11 = inttoptr i64 %10 to i32*

  store i32 2, i32* %11

  %12 = add i64 %7, -4

  %13 = inttoptr i64 %12 to i32*

  %14 = load i32, i32* %13

  %15 = zext i32 %14 to i64

  store i64 %15, i64* %4, align 8, !tbaa !1240

  %16 = load i64, i64* %5, align 8

  %17 = add i64 %16, 32

  %18 = icmp ugt i64 %16, -33

  %19 = zext i1 %18 to i8

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %19, i8* %20, align 1, !tbaa !1244

  %21 = trunc i64 %17 to i32

  %22 = and i32 %21, 255

  %23 = tail call i32 @llvm.ctpop.i32(i32 %22) #10

  %24 = trunc i32 %23 to i8

  %25 = and i8 %24, 1

  %26 = xor i8 %25, 1

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %26, i8* %27, align 1, !tbaa !1258

  %28 = xor i64 %17, %16

  %29 = lshr i64 %28, 4

  %30 = trunc i64 %29 to i8

  %31 = and i8 %30, 1

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %31, i8* %32, align 1, !tbaa !1259

  %33 = icmp eq i64 %17, 0

  %34 = zext i1 %33 to i8

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %34, i8* %35, align 1, !tbaa !1260

  %36 = lshr i64 %17, 63

  %37 = trunc i64 %36 to i8

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %37, i8* %38, align 1, !tbaa !1261

  %39 = lshr i64 %16, 63

  %40 = xor i64 %36, %39

  %41 = add nuw nsw i64 %40, %36

  %42 = icmp eq i64 %41, 2

  %43 = zext i1 %42 to i8

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %43, i8* %44, align 1, !tbaa !1262

  %45 = add i64 %16, 40

  %46 = inttoptr i64 %17 to i64*

  %47 = load i64, i64* %46

  store i64 %47, i64* %6, align 8, !tbaa !1240

  %48 = inttoptr i64 %45 to i64*

  %49 = load i64, i64* %48

  store i64 %49, i64* %3, align 8, !tbaa !1240

  %50 = add i64 %16, 48

  store i64 %50, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400610__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400610:

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

  store i64 ptrtoint (i64 ()* @callback_sub_401100___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401090___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401090___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401100___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1263

  store i64 %50, i64* %4, align 8, !alias.scope !1263, !noalias !1266

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006f0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4006f0:

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

  %12 = tail call %struct.Memory* @sub_400680_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400dd6(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400dd6:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = add i64 %7, -16

  %9 = inttoptr i64 %8 to i64*

  %10 = load i64, i64* %9

  %11 = inttoptr i64 %10 to i32*

  store i32 1, i32* %11

  %12 = add i64 %7, -4

  %13 = inttoptr i64 %12 to i32*

  %14 = load i32, i32* %13

  %15 = zext i32 %14 to i64

  store i64 %15, i64* %4, align 8, !tbaa !1240

  %16 = load i64, i64* %5, align 8

  %17 = add i64 %16, 32

  %18 = icmp ugt i64 %16, -33

  %19 = zext i1 %18 to i8

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %19, i8* %20, align 1, !tbaa !1244

  %21 = trunc i64 %17 to i32

  %22 = and i32 %21, 255

  %23 = tail call i32 @llvm.ctpop.i32(i32 %22) #10

  %24 = trunc i32 %23 to i8

  %25 = and i8 %24, 1

  %26 = xor i8 %25, 1

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %26, i8* %27, align 1, !tbaa !1258

  %28 = xor i64 %17, %16

  %29 = lshr i64 %28, 4

  %30 = trunc i64 %29 to i8

  %31 = and i8 %30, 1

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %31, i8* %32, align 1, !tbaa !1259

  %33 = icmp eq i64 %17, 0

  %34 = zext i1 %33 to i8

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %34, i8* %35, align 1, !tbaa !1260

  %36 = lshr i64 %17, 63

  %37 = trunc i64 %36 to i8

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %37, i8* %38, align 1, !tbaa !1261

  %39 = lshr i64 %16, 63

  %40 = xor i64 %36, %39

  %41 = add nuw nsw i64 %40, %36

  %42 = icmp eq i64 %41, 2

  %43 = zext i1 %42 to i8

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %43, i8* %44, align 1, !tbaa !1262

  %45 = add i64 %16, 40

  %46 = inttoptr i64 %17 to i64*

  %47 = load i64, i64* %46

  store i64 %47, i64* %6, align 8, !tbaa !1240

  %48 = inttoptr i64 %45 to i64*

  %49 = load i64, i64* %48

  store i64 %49, i64* %3, align 8, !tbaa !1240

  %50 = add i64 %16, 48

  store i64 %50, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400650_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400650:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64* %4, align 8, !tbaa !1240

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)) to i8), i8* %11, align 1, !tbaa !1244

  %12 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)) to i32), i32 255)) #10

  %13 = trunc i32 %12 to i8

  %14 = and i8 %13, 1

  %15 = xor i8 %14, 1

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %15, i8* %16, align 1, !tbaa !1258

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64))), i64 4) to i8), i8 1), i8* %17, align 1, !tbaa !1259

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 0) to i8), i8* %18, align 1, !tbaa !1260

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 63) to i8), i8* %19, align 1, !tbaa !1261

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 63), i64 lshr (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 63))), i64 2) to i8), i8* %20, align 1, !tbaa !1262

  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 0), label %block_400678, label %block_400661



block_400678:                                     ; preds = %block_400661, %block_400650

  %21 = inttoptr i64 %9 to i64*

  %22 = load i64, i64* %21

  store i64 %22, i64* %6, align 8, !tbaa !1240

  %23 = inttoptr i64 %8 to i64*

  %24 = load i64, i64* %23

  store i64 %24, i64* %3, align 8, !tbaa !1240

  %25 = add i64 %8, 8

  store i64 %25, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_400661:                                     ; preds = %block_400650

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %11, align 1, !tbaa !1244

  store i8 1, i8* %16, align 1, !tbaa !1258

  store i8 1, i8* %18, align 1, !tbaa !1260

  store i8 0, i8* %19, align 1, !tbaa !1261

  store i8 0, i8* %20, align 1, !tbaa !1262

  store i8 0, i8* %17, align 1, !tbaa !1259

  br label %block_400678

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401060_Func3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401060:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %10 = load i64, i64* %9, align 8

  %11 = load i64, i64* %8, align 8, !tbaa !1240

  %12 = add i64 %11, -8

  %13 = inttoptr i64 %12 to i64*

  store i64 %10, i64* %13

  %14 = add i64 %11, -16

  %15 = load i32, i32* %5, align 4

  %16 = inttoptr i64 %14 to i32*

  store i32 %15, i32* %16

  %17 = inttoptr i64 %14 to i32*

  %18 = load i32, i32* %17

  %19 = zext i32 %18 to i64

  store i64 %19, i64* %7, align 8, !tbaa !1240

  %20 = add i64 %11, -20

  %21 = inttoptr i64 %20 to i32*

  store i32 %18, i32* %21

  %22 = inttoptr i64 %20 to i32*

  %23 = load i32, i32* %22

  %24 = add i32 %23, -2

  %25 = icmp ult i32 %23, 2

  %26 = zext i1 %25 to i8

  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %26, i8* %27, align 1, !tbaa !1244

  %28 = and i32 %24, 255

  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #10

  %30 = trunc i32 %29 to i8

  %31 = and i8 %30, 1

  %32 = xor i8 %31, 1

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %32, i8* %33, align 1, !tbaa !1258

  %34 = xor i32 %24, %23

  %35 = lshr i32 %34, 4

  %36 = trunc i32 %35 to i8

  %37 = and i8 %36, 1

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %37, i8* %38, align 1, !tbaa !1259

  %39 = icmp eq i32 %24, 0

  %40 = zext i1 %39 to i8

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %40, i8* %41, align 1, !tbaa !1260

  %42 = lshr i32 %24, 31

  %43 = trunc i32 %42 to i8

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %43, i8* %44, align 1, !tbaa !1261

  %45 = lshr i32 %23, 31

  %46 = xor i32 %42, %45

  %47 = add nuw nsw i32 %46, %45

  %48 = icmp eq i32 %47, 2

  %49 = zext i1 %48 to i8

  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %49, i8* %50, align 1, !tbaa !1262

  %51 = add i64 %11, -12

  br i1 %39, label %block_401077, label %block_401083



block_401077:                                     ; preds = %block_401060

  %52 = inttoptr i64 %51 to i32*

  store i32 1, i32* %52

  br label %block_40108a



block_401083:                                     ; preds = %block_401060

  %53 = inttoptr i64 %51 to i32*

  store i32 0, i32* %53

  br label %block_40108a



block_40108a:                                     ; preds = %block_401083, %block_401077

  %54 = phi %struct.Memory* [ %2, %block_401083 ], [ %2, %block_401077 ]

  %55 = inttoptr i64 %51 to i32*

  %56 = load i32, i32* %55

  %57 = zext i32 %56 to i64

  store i64 %57, i64* %6, align 8, !tbaa !1240

  %58 = inttoptr i64 %12 to i64*

  %59 = load i64, i64* %58

  store i64 %59, i64* %9, align 8, !tbaa !1240

  %60 = inttoptr i64 %11 to i64*

  %61 = load i64, i64* %60

  store i64 %61, i64* %3, align 8, !tbaa !1240

  %62 = add i64 %11, 8

  store i64 %62, i64* %8, align 8, !tbaa !1240

  ret %struct.Memory* %54

}



; Function Attrs: noinline

define %struct.Memory* @sub_400700_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400700:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %8 = load i64, i64* %7, align 8

  %9 = load i64, i64* %6, align 8, !tbaa !1240

  %10 = add i64 %9, -8

  %11 = inttoptr i64 %10 to i64*

  store i64 %8, i64* %11

  store i64 %10, i64* %7, align 8, !tbaa !1240

  %12 = add i64 %9, -12

  %13 = inttoptr i64 %12 to i32*

  store i32 0, i32* %13

  %14 = add i64 %1, 32

  %15 = add i64 %1, 20

  %16 = add i64 %9, -32

  %17 = inttoptr i64 %16 to i64*

  store i64 %15, i64* %17

  store i64 %16, i64* %6, align 8, !tbaa !1240

  %18 = tail call %struct.Memory* @sub_400720_Proc0(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %19 = load i64, i64* %3, align 8

  %20 = load i64, i64* %7, align 8

  %21 = add i64 %20, -8

  %22 = load i32, i32* %5, align 4

  %23 = inttoptr i64 %21 to i32*

  store i32 %22, i32* %23

  %24 = add i64 %19, 10

  %25 = load i64, i64* %6, align 8, !tbaa !1240

  %26 = add i64 %25, -8

  %27 = inttoptr i64 %26 to i64*

  store i64 %24, i64* %27

  %28 = inttoptr i64 %26 to i64*

  %29 = load i64, i64* %28

  store i64 %29, i64* %3, align 8, !alias.scope !1268, !noalias !1271

  store i64 %25, i64* %6, align 8, !alias.scope !1268, !noalias !1271

  %30 = tail call i64 @exit(i64 0), !noalias !1268

  %31 = load i64, i64* %3, align 8

  %32 = add i64 %31, 2

  %33 = tail call %struct.Memory* @sub_400720_Proc0(%struct.State* nonnull %0, i64 %32, %struct.Memory* %18)

  ret %struct.Memory* %33

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400c10_Proc2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400c10:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = load i64, i64* %8, align 8

  %10 = load i64, i64* %7, align 8, !tbaa !1240

  %11 = add i64 %10, -8

  %12 = inttoptr i64 %11 to i64*

  store i64 %9, i64* %12

  %13 = add i64 %10, -24

  %14 = load i64, i64* %6, align 8

  %15 = inttoptr i64 %13 to i64*

  store i64 %14, i64* %15

  %16 = inttoptr i64 %13 to i64*

  %17 = load i64, i64* %16

  store i64 %17, i64* %6, align 8, !tbaa !1240

  %18 = inttoptr i64 %17 to i32*

  %19 = load i32, i32* %18

  %20 = add i32 %19, 10

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %27 = add i64 %10, -28

  %28 = inttoptr i64 %27 to i32*

  store i32 %20, i32* %28

  %29 = add i64 %10, -32

  %30 = add i64 %10, -24

  br label %block_400c24



block_400c55:                                     ; preds = %block_400c35, %block_400c24

  %31 = phi %struct.Memory* [ %44, %block_400c24 ], [ %44, %block_400c35 ]

  %32 = inttoptr i64 %29 to i32*

  %33 = load i32, i32* %32

  %34 = icmp eq i32 %33, 0

  br i1 %34, label %block_400c5f, label %block_400c24



block_400c5f:                                     ; preds = %block_400c55

  store i8 0, i8* %21, align 1, !tbaa !1244

  store i8 1, i8* %22, align 1, !tbaa !1258

  store i8 0, i8* %23, align 1, !tbaa !1259

  store i8 1, i8* %24, align 1, !tbaa !1260

  store i8 0, i8* %25, align 1, !tbaa !1261

  store i8 0, i8* %26, align 1, !tbaa !1262

  %35 = add i64 %10, -12

  %36 = inttoptr i64 %35 to i32*

  %37 = load i32, i32* %36

  %38 = zext i32 %37 to i64

  store i64 %38, i64* %4, align 8, !tbaa !1240

  %39 = inttoptr i64 %11 to i64*

  %40 = load i64, i64* %39

  store i64 %40, i64* %8, align 8, !tbaa !1240

  %41 = inttoptr i64 %10 to i64*

  %42 = load i64, i64* %41

  store i64 %42, i64* %3, align 8, !tbaa !1240

  %43 = add i64 %10, 8

  store i64 %43, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %31



block_400c24:                                     ; preds = %block_400c55, %block_400c10

  %44 = phi %struct.Memory* [ %2, %block_400c10 ], [ %31, %block_400c55 ]

  %45 = load i8, i8* getelementptr inbounds (%Char1Glob_type, %Char1Glob_type* @Char1Glob, i32 0, i32 0, i32 0)

  %46 = icmp eq i8 %45, 65

  br i1 %46, label %block_400c35, label %block_400c55



block_400c35:                                     ; preds = %block_400c24

  %47 = inttoptr i64 %27 to i32*

  %48 = load i32, i32* %47

  %49 = add i32 %48, -1

  %50 = inttoptr i64 %27 to i32*

  store i32 %49, i32* %50

  %51 = inttoptr i64 %27 to i32*

  %52 = load i32, i32* %51

  %53 = load i32, i32* bitcast (%IntGlob_type* @IntGlob to i32*)

  %54 = sub i32 %52, %53

  %55 = inttoptr i64 %30 to i64*

  %56 = load i64, i64* %55

  store i64 %56, i64* %5, align 8, !tbaa !1240

  %57 = inttoptr i64 %56 to i32*

  store i32 %54, i32* %57

  %58 = inttoptr i64 %29 to i32*

  store i32 0, i32* %58

  br label %block_400c55

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006c0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4006c0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* getelementptr inbounds (%seg_602070__bss_type, %seg_602070__bss_type* @seg_602070__bss, i32 0, i32 0, i32 0)

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

  br i1 %14, label %block_4006c9, label %block_4006e0



block_4006e0:                                     ; preds = %block_4006c0

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4006c9:                                     ; preds = %block_4006c0

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

  %35 = tail call %struct.Memory* @sub_400650_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

  store i8 1, i8* getelementptr inbounds (%seg_602070__bss_type, %seg_602070__bss_type* @seg_602070__bss, i32 0, i32 0, i32 0)

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

define %struct.Memory* @sub_400e30_Proc8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400e30:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %15 = load i64, i64* %14, align 8

  %16 = load i64, i64* %13, align 8, !tbaa !1240

  %17 = add i64 %16, -8

  %18 = inttoptr i64 %17 to i64*

  store i64 %15, i64* %18

  store i64 %17, i64* %13, align 8, !tbaa !1240

  store i64 %17, i64* %14, align 8, !tbaa !1240

  %19 = add i64 %16, -24

  %20 = load i64, i64* %12, align 8

  %21 = inttoptr i64 %19 to i64*

  store i64 %20, i64* %21

  %22 = add i64 %16, -32

  %23 = load i64, i64* %11, align 8

  %24 = inttoptr i64 %22 to i64*

  store i64 %23, i64* %24

  %25 = add i64 %16, -36

  %26 = load i32, i32* %7, align 4

  %27 = inttoptr i64 %25 to i32*

  store i32 %26, i32* %27

  %28 = add i64 %16, -40

  %29 = load i32, i32* %5, align 4

  %30 = inttoptr i64 %28 to i32*

  store i32 %29, i32* %30

  %31 = add i64 %16, -36

  %32 = inttoptr i64 %31 to i32*

  %33 = load i32, i32* %32

  %34 = add i32 %33, 5

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %41 = add i64 %16, -44

  %42 = inttoptr i64 %41 to i32*

  store i32 %34, i32* %42

  %43 = inttoptr i64 %28 to i32*

  %44 = load i32, i32* %43

  %45 = add i64 %16, -24

  %46 = inttoptr i64 %45 to i64*

  %47 = load i64, i64* %46

  %48 = inttoptr i64 %41 to i32*

  %49 = load i32, i32* %48

  %50 = sext i32 %49 to i64

  %51 = shl nsw i64 %50, 2

  %52 = add i64 %51, %47

  %53 = inttoptr i64 %52 to i32*

  store i32 %44, i32* %53

  %54 = inttoptr i64 %45 to i64*

  %55 = load i64, i64* %54

  %56 = inttoptr i64 %41 to i32*

  %57 = load i32, i32* %56

  %58 = sext i32 %57 to i64

  %59 = shl nsw i64 %58, 2

  %60 = add i64 %59, %55

  %61 = inttoptr i64 %60 to i32*

  %62 = load i32, i32* %61

  %63 = load i64, i64* %14, align 8

  %64 = add i64 %63, -16

  %65 = inttoptr i64 %64 to i64*

  %66 = load i64, i64* %65

  %67 = add i64 %63, -36

  %68 = inttoptr i64 %67 to i32*

  %69 = load i32, i32* %68

  %70 = add i32 %69, 1

  %71 = sext i32 %70 to i64

  %72 = shl nsw i64 %71, 2

  %73 = add i64 %66, %72

  %74 = inttoptr i64 %73 to i32*

  store i32 %62, i32* %74

  %75 = inttoptr i64 %67 to i32*

  %76 = load i32, i32* %75

  %77 = inttoptr i64 %64 to i64*

  %78 = load i64, i64* %77

  %79 = add i32 %76, 30

  %80 = sext i32 %79 to i64

  store i64 %80, i64* %12, align 8, !tbaa !1240

  %81 = shl nsw i64 %80, 2

  %82 = add i64 %78, %81

  %83 = inttoptr i64 %82 to i32*

  store i32 %76, i32* %83

  %84 = load i64, i64* %14, align 8

  %85 = add i64 %84, -36

  %86 = inttoptr i64 %85 to i32*

  %87 = load i32, i32* %86

  %88 = add i64 %84, -40

  %89 = inttoptr i64 %88 to i32*

  store i32 %87, i32* %89

  %90 = add i64 %84, -24

  br label %block_400e8d



block_400e8d:                                     ; preds = %block_400e9e, %block_400e30

  %91 = phi %struct.Memory* [ %2, %block_400e30 ], [ %91, %block_400e9e ]

  %92 = inttoptr i64 %88 to i32*

  %93 = load i32, i32* %92

  %94 = inttoptr i64 %85 to i32*

  %95 = load i32, i32* %94

  %96 = add i32 %95, 1

  %97 = sub i32 %93, %96

  %98 = icmp eq i32 %97, 0

  %99 = lshr i32 %97, 31

  %100 = lshr i32 %93, 31

  %101 = lshr i32 %96, 31

  %102 = xor i32 %101, %100

  %103 = xor i32 %99, %100

  %104 = add nuw nsw i32 %103, %102

  %105 = icmp eq i32 %104, 2

  %106 = icmp ne i32 %99, 0

  %107 = xor i1 %106, %105

  %108 = or i1 %98, %107

  br i1 %108, label %block_400e9e, label %block_400ec8



block_400e9e:                                     ; preds = %block_400e8d

  %109 = inttoptr i64 %90 to i64*

  %110 = load i64, i64* %109

  %111 = sext i32 %95 to i64

  %112 = mul nsw i64 %111, 204

  %113 = add i64 %112, %110

  %114 = sext i32 %93 to i64

  %115 = shl nsw i64 %114, 2

  %116 = add i64 %115, %113

  %117 = inttoptr i64 %116 to i32*

  store i32 %95, i32* %117

  %118 = inttoptr i64 %88 to i32*

  %119 = load i32, i32* %118

  %120 = add i32 %119, 1

  %121 = inttoptr i64 %88 to i32*

  store i32 %120, i32* %121

  br label %block_400e8d



block_400ec8:                                     ; preds = %block_400e8d

  %122 = inttoptr i64 %90 to i64*

  %123 = load i64, i64* %122

  %124 = sext i32 %95 to i64

  %125 = mul nsw i64 %124, 204

  %126 = add i64 %125, %123

  store i64 %126, i64* %8, align 8, !tbaa !1240

  %127 = add i32 %95, -1

  %128 = sext i32 %127 to i64

  %129 = shl nsw i64 %128, 2

  %130 = add i64 %126, %129

  %131 = inttoptr i64 %130 to i32*

  %132 = load i32, i32* %131

  %133 = add i32 %132, 1

  %134 = load i64, i64* %8, align 8

  %135 = add i64 %129, %134

  %136 = inttoptr i64 %135 to i32*

  store i32 %133, i32* %136

  %137 = load i64, i64* %14, align 8

  %138 = add i64 %137, -16

  %139 = inttoptr i64 %138 to i64*

  %140 = load i64, i64* %139

  %141 = add i64 %137, -36

  %142 = inttoptr i64 %141 to i32*

  %143 = load i32, i32* %142

  %144 = sext i32 %143 to i64

  %145 = shl nsw i64 %144, 2

  %146 = add i64 %145, %140

  %147 = inttoptr i64 %146 to i32*

  %148 = load i32, i32* %147

  %149 = zext i32 %148 to i64

  store i64 %149, i64* %10, align 8, !tbaa !1240

  %150 = add i64 %137, -24

  %151 = inttoptr i64 %150 to i64*

  %152 = load i64, i64* %151

  %153 = add i32 %143, 20

  %154 = zext i32 %153 to i64

  store i64 %154, i64* %11, align 8, !tbaa !1240

  %155 = sext i32 %153 to i64

  %156 = mul nsw i64 %155, 204

  %157 = lshr i64 %156, 63

  %158 = add i64 %156, %152

  %159 = icmp ult i64 %158, %152

  %160 = icmp ult i64 %158, %156

  %161 = or i1 %159, %160

  %162 = zext i1 %161 to i8

  store i8 %162, i8* %35, align 1, !tbaa !1244

  %163 = trunc i64 %158 to i32

  %164 = and i32 %163, 255

  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #10

  %166 = trunc i32 %165 to i8

  %167 = and i8 %166, 1

  %168 = xor i8 %167, 1

  store i8 %168, i8* %36, align 1, !tbaa !1258

  %169 = xor i64 %156, %152

  %170 = xor i64 %169, %158

  %171 = lshr i64 %170, 4

  %172 = trunc i64 %171 to i8

  %173 = and i8 %172, 1

  store i8 %173, i8* %37, align 1, !tbaa !1259

  %174 = icmp eq i64 %158, 0

  %175 = zext i1 %174 to i8

  store i8 %175, i8* %38, align 1, !tbaa !1260

  %176 = lshr i64 %158, 63

  %177 = trunc i64 %176 to i8

  store i8 %177, i8* %39, align 1, !tbaa !1261

  %178 = lshr i64 %152, 63

  %179 = xor i64 %176, %178

  %180 = xor i64 %176, %157

  %181 = add nuw nsw i64 %179, %180

  %182 = icmp eq i64 %181, 2

  %183 = zext i1 %182 to i8

  store i8 %183, i8* %40, align 1, !tbaa !1262

  %184 = load i64, i64* %14, align 8

  %185 = add i64 %184, -36

  %186 = inttoptr i64 %185 to i32*

  %187 = load i32, i32* %186

  %188 = sext i32 %187 to i64

  store i64 %188, i64* %9, align 8, !tbaa !1240

  %189 = shl nsw i64 %188, 2

  %190 = add i64 %189, %158

  %191 = load i32, i32* %7, align 4

  %192 = inttoptr i64 %190 to i32*

  store i32 %191, i32* %192

  store i32 5, i32* bitcast (%IntGlob_type* @IntGlob to i32*)

  %193 = add i64 %184, -4

  %194 = inttoptr i64 %193 to i32*

  %195 = load i32, i32* %194

  %196 = zext i32 %195 to i64

  store i64 %196, i64* %8, align 8, !tbaa !1240

  %197 = load i64, i64* %13, align 8, !tbaa !1240

  %198 = add i64 %197, 8

  %199 = inttoptr i64 %197 to i64*

  %200 = load i64, i64* %199

  store i64 %200, i64* %14, align 8, !tbaa !1240

  %201 = inttoptr i64 %198 to i64*

  %202 = load i64, i64* %201

  store i64 %202, i64* %3, align 8, !tbaa !1240

  %203 = add i64 %197, 16

  store i64 %203, i64* %13, align 8, !tbaa !1240

  ret %struct.Memory* %91

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400c70_Proc3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400c70:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 8, !tbaa !1240

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  store i64 %14, i64* %11, align 8, !tbaa !1240

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %22 = add i64 %13, -24

  %23 = load i64, i64* %9, align 8

  %24 = inttoptr i64 %22 to i64*

  store i64 %23, i64* %24

  %25 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %26 = icmp eq i64 %25, 0

  %27 = select i1 %26, i64 50, i64 27

  %28 = add i64 %27, %1

  br i1 %26, label %block_400ca2, label %block_400c8b



block_400cad:                                     ; preds = %block_400ca2, %block_400c8b

  %29 = phi i64 [ %84, %block_400ca2 ], [ %83, %block_400c8b ]

  %30 = phi %struct.Memory* [ %2, %block_400ca2 ], [ %2, %block_400c8b ]

  store i64 10, i64* %9, align 8, !tbaa !1240

  %31 = load i32, i32* bitcast (%IntGlob_type* @IntGlob to i32*)

  %32 = zext i32 %31 to i64

  store i64 %32, i64* %8, align 8, !tbaa !1240

  %33 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %34 = add i64 %33, 16

  store i64 %34, i64* %7, align 8, !tbaa !1240

  %35 = add i64 %29, 339

  %36 = add i64 %29, 32

  %37 = add i64 %13, -48

  %38 = inttoptr i64 %37 to i64*

  store i64 %36, i64* %38

  store i64 %37, i64* %10, align 8, !tbaa !1240

  %39 = tail call %struct.Memory* @sub_400e00_Proc7(%struct.State* nonnull %0, i64 %35, %struct.Memory* %30)

  %40 = load i64, i64* %11, align 8

  %41 = add i64 %40, -4

  %42 = inttoptr i64 %41 to i32*

  %43 = load i32, i32* %42

  %44 = zext i32 %43 to i64

  store i64 %44, i64* %8, align 8, !tbaa !1240

  %45 = add i64 %40, -20

  %46 = load i32, i32* %5, align 4

  %47 = inttoptr i64 %45 to i32*

  store i32 %46, i32* %47

  store i64 %44, i64* %6, align 8, !tbaa !1240

  %48 = load i64, i64* %10, align 8

  %49 = add i64 %48, 32

  %50 = icmp ugt i64 %48, -33

  %51 = zext i1 %50 to i8

  store i8 %51, i8* %16, align 1, !tbaa !1244

  %52 = trunc i64 %49 to i32

  %53 = and i32 %52, 255

  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #10

  %55 = trunc i32 %54 to i8

  %56 = and i8 %55, 1

  %57 = xor i8 %56, 1

  store i8 %57, i8* %17, align 1, !tbaa !1258

  %58 = xor i64 %49, %48

  %59 = lshr i64 %58, 4

  %60 = trunc i64 %59 to i8

  %61 = and i8 %60, 1

  store i8 %61, i8* %18, align 1, !tbaa !1259

  %62 = icmp eq i64 %49, 0

  %63 = zext i1 %62 to i8

  store i8 %63, i8* %19, align 1, !tbaa !1260

  %64 = lshr i64 %49, 63

  %65 = trunc i64 %64 to i8

  store i8 %65, i8* %20, align 1, !tbaa !1261

  %66 = lshr i64 %48, 63

  %67 = xor i64 %64, %66

  %68 = add nuw nsw i64 %67, %64

  %69 = icmp eq i64 %68, 2

  %70 = zext i1 %69 to i8

  store i8 %70, i8* %21, align 1, !tbaa !1262

  %71 = add i64 %48, 40

  %72 = inttoptr i64 %49 to i64*

  %73 = load i64, i64* %72

  store i64 %73, i64* %11, align 8, !tbaa !1240

  %74 = inttoptr i64 %71 to i64*

  %75 = load i64, i64* %74

  store i64 %75, i64* %3, align 8, !tbaa !1240

  %76 = add i64 %48, 48

  store i64 %76, i64* %10, align 8, !tbaa !1240

  ret %struct.Memory* %39



block_400c8b:                                     ; preds = %block_400c70

  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %78 = inttoptr i64 %25 to i64*

  %79 = load i64, i64* %78

  %80 = inttoptr i64 %22 to i64*

  %81 = load i64, i64* %80

  store i64 %81, i64* %77, align 8, !tbaa !1240

  %82 = inttoptr i64 %81 to i64*

  store i64 %79, i64* %82

  %83 = add i64 %28, 34

  br label %block_400cad



block_400ca2:                                     ; preds = %block_400c70

  %84 = add i64 %28, 11

  store i32 100, i32* bitcast (%IntGlob_type* @IntGlob to i32*)

  br label %block_400cad

}



; Function Attrs: noinline

define %struct.Memory* @sub_400b00_Proc1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400b00:

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

  %17 = add i64 %14, -40

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %24 = add i64 %14, -24

  %25 = load i64, i64* %10, align 8

  %26 = inttoptr i64 %24 to i64*

  store i64 %25, i64* %26

  %27 = inttoptr i64 %24 to i64*

  %28 = load i64, i64* %27

  %29 = inttoptr i64 %28 to i64*

  %30 = load i64, i64* %29

  %31 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %32 = add i64 %1, 42

  %33 = add i64 %14, -48

  %34 = inttoptr i64 %33 to i64*

  store i64 %32, i64* %34

  %35 = inttoptr i64 %33 to i64*

  %36 = load i64, i64* %35

  store i64 %36, i64* %3, align 8, !alias.scope !1273, !noalias !1276

  store i64 %17, i64* %11, align 8, !alias.scope !1273, !noalias !1276

  %37 = tail call i64 @memcpy(i64 %30, i64 %31, i64 56), !noalias !1273

  %38 = load i64, i64* %12, align 8

  %39 = add i64 %38, -16

  %40 = load i64, i64* %3, align 8

  %41 = inttoptr i64 %39 to i64*

  %42 = load i64, i64* %41

  %43 = add i64 %42, 16

  %44 = inttoptr i64 %43 to i32*

  store i32 5, i32* %44

  %45 = inttoptr i64 %39 to i64*

  %46 = load i64, i64* %45

  %47 = add i64 %46, 16

  %48 = inttoptr i64 %47 to i32*

  %49 = load i32, i32* %48

  %50 = inttoptr i64 %46 to i64*

  %51 = load i64, i64* %50

  %52 = add i64 %51, 16

  %53 = inttoptr i64 %52 to i32*

  store i32 %49, i32* %53

  %54 = inttoptr i64 %39 to i64*

  %55 = load i64, i64* %54

  %56 = inttoptr i64 %55 to i64*

  %57 = load i64, i64* %56

  %58 = inttoptr i64 %57 to i64*

  store i64 %57, i64* %58

  %59 = inttoptr i64 %39 to i64*

  %60 = load i64, i64* %59

  %61 = inttoptr i64 %60 to i64*

  %62 = load i64, i64* %61

  store i64 %62, i64* %7, align 8, !tbaa !1240

  %63 = inttoptr i64 %62 to i64*

  %64 = load i64, i64* %63

  store i64 %64, i64* %10, align 8, !tbaa !1240

  %65 = add i64 %40, 326

  %66 = add i64 %40, 62

  %67 = load i64, i64* %11, align 8, !tbaa !1240

  %68 = add i64 %67, -8

  %69 = inttoptr i64 %68 to i64*

  store i64 %66, i64* %69

  store i64 %68, i64* %11, align 8, !tbaa !1240

  %70 = tail call %struct.Memory* @sub_400c70_Proc3(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)

  %71 = load i64, i64* %12, align 8

  %72 = add i64 %71, -16

  %73 = load i64, i64* %3, align 8

  %74 = inttoptr i64 %72 to i64*

  %75 = load i64, i64* %74

  %76 = inttoptr i64 %75 to i64*

  %77 = load i64, i64* %76

  store i64 %77, i64* %7, align 8, !tbaa !1240

  %78 = add i64 %77, 8

  %79 = inttoptr i64 %78 to i32*

  %80 = load i32, i32* %79

  %81 = icmp eq i32 %80, 0

  %82 = add i64 %71, -20

  %83 = load i32, i32* %5, align 4

  %84 = inttoptr i64 %82 to i32*

  store i32 %83, i32* %84

  %85 = select i1 %81, i64 20, i64 126

  %86 = add i64 %73, %85

  br i1 %81, label %block_400b7c, label %block_400be6



block_400be6:                                     ; preds = %block_400b00

  store i64 56, i64* %8, align 8, !tbaa !1240

  %87 = inttoptr i64 %72 to i64*

  %88 = load i64, i64* %87

  store i64 %88, i64* %7, align 8, !tbaa !1240

  %89 = inttoptr i64 %88 to i64*

  %90 = load i64, i64* %89

  store i64 %90, i64* %9, align 8, !tbaa !1240

  store i64 %88, i64* %10, align 8, !tbaa !1240

  %91 = add i64 %86, 26

  %92 = load i64, i64* %11, align 8, !tbaa !1240

  %93 = add i64 %92, -8

  %94 = inttoptr i64 %93 to i64*

  store i64 %91, i64* %94

  store i64 %92, i64* %11, align 8, !alias.scope !1278, !noalias !1281

  %95 = tail call i64 @memcpy(i64 %88, i64 %90, i64 56), !noalias !1278

  %96 = load i64, i64* %12, align 8

  br label %block_400c00



block_400b7c:                                     ; preds = %block_400b00

  %97 = inttoptr i64 %72 to i64*

  %98 = load i64, i64* %97

  %99 = inttoptr i64 %98 to i64*

  %100 = load i64, i64* %99

  %101 = add i64 %100, 16

  %102 = inttoptr i64 %101 to i32*

  store i32 6, i32* %102

  %103 = inttoptr i64 %72 to i64*

  %104 = load i64, i64* %103

  %105 = add i64 %104, 12

  %106 = inttoptr i64 %105 to i32*

  %107 = load i32, i32* %106

  %108 = zext i32 %107 to i64

  store i64 %108, i64* %10, align 8, !tbaa !1240

  %109 = inttoptr i64 %104 to i64*

  %110 = load i64, i64* %109

  %111 = add i64 %110, 12

  store i64 %111, i64* %9, align 8, !tbaa !1240

  %112 = add i64 %86, 452

  %113 = add i64 %86, 40

  %114 = load i64, i64* %11, align 8, !tbaa !1240

  %115 = add i64 %114, -8

  %116 = inttoptr i64 %115 to i64*

  store i64 %113, i64* %116

  store i64 %115, i64* %11, align 8, !tbaa !1240

  %117 = tail call %struct.Memory* @sub_400d40_Proc6(%struct.State* nonnull %0, i64 %112, %struct.Memory* %70)

  %118 = load i64, i64* %3, align 8

  store i64 10, i64* %9, align 8, !tbaa !1240

  %119 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %120 = inttoptr i64 %119 to i64*

  %121 = load i64, i64* %120

  %122 = load i64, i64* %12, align 8

  %123 = add i64 %122, -16

  %124 = inttoptr i64 %123 to i64*

  %125 = load i64, i64* %124

  %126 = inttoptr i64 %125 to i64*

  %127 = load i64, i64* %126

  %128 = inttoptr i64 %127 to i64*

  store i64 %121, i64* %128

  %129 = inttoptr i64 %123 to i64*

  %130 = load i64, i64* %129

  %131 = inttoptr i64 %130 to i64*

  %132 = load i64, i64* %131

  %133 = add i64 %132, 16

  %134 = inttoptr i64 %133 to i32*

  %135 = load i32, i32* %134

  %136 = zext i32 %135 to i64

  store i64 %136, i64* %10, align 8, !tbaa !1240

  store i64 %133, i64* %7, align 8, !tbaa !1240

  store i64 %133, i64* %8, align 8, !tbaa !1240

  %137 = add i64 %122, -24

  %138 = load i32, i32* %5, align 4

  %139 = inttoptr i64 %137 to i32*

  store i32 %138, i32* %139

  %140 = add i64 %118, 604

  %141 = add i64 %118, 58

  %142 = load i64, i64* %11, align 8, !tbaa !1240

  %143 = add i64 %142, -8

  %144 = inttoptr i64 %143 to i64*

  store i64 %141, i64* %144

  store i64 %143, i64* %11, align 8, !tbaa !1240

  %145 = tail call %struct.Memory* @sub_400e00_Proc7(%struct.State* nonnull %0, i64 %140, %struct.Memory* %117)

  %146 = load i64, i64* %12, align 8

  %147 = add i64 %146, -28

  %148 = load i32, i32* %5, align 4

  %149 = inttoptr i64 %147 to i32*

  store i32 %148, i32* %149

  br label %block_400c00



block_400c00:                                     ; preds = %block_400b7c, %block_400be6

  %150 = phi i64 [ %96, %block_400be6 ], [ %146, %block_400b7c ]

  %151 = phi %struct.Memory* [ %70, %block_400be6 ], [ %145, %block_400b7c ]

  %152 = add i64 %150, -4

  %153 = inttoptr i64 %152 to i32*

  %154 = load i32, i32* %153

  %155 = zext i32 %154 to i64

  store i64 %155, i64* %6, align 8, !tbaa !1240

  %156 = load i64, i64* %11, align 8

  %157 = add i64 %156, 32

  %158 = icmp ugt i64 %156, -33

  %159 = zext i1 %158 to i8

  store i8 %159, i8* %18, align 1, !tbaa !1244

  %160 = trunc i64 %157 to i32

  %161 = and i32 %160, 255

  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #10

  %163 = trunc i32 %162 to i8

  %164 = and i8 %163, 1

  %165 = xor i8 %164, 1

  store i8 %165, i8* %19, align 1, !tbaa !1258

  %166 = xor i64 %157, %156

  %167 = lshr i64 %166, 4

  %168 = trunc i64 %167 to i8

  %169 = and i8 %168, 1

  store i8 %169, i8* %20, align 1, !tbaa !1259

  %170 = icmp eq i64 %157, 0

  %171 = zext i1 %170 to i8

  store i8 %171, i8* %21, align 1, !tbaa !1260

  %172 = lshr i64 %157, 63

  %173 = trunc i64 %172 to i8

  store i8 %173, i8* %22, align 1, !tbaa !1261

  %174 = lshr i64 %156, 63

  %175 = xor i64 %172, %174

  %176 = add nuw nsw i64 %175, %172

  %177 = icmp eq i64 %176, 2

  %178 = zext i1 %177 to i8

  store i8 %178, i8* %23, align 1, !tbaa !1262

  %179 = add i64 %156, 40

  %180 = inttoptr i64 %157 to i64*

  %181 = load i64, i64* %180

  store i64 %181, i64* %12, align 8, !tbaa !1240

  %182 = inttoptr i64 %179 to i64*

  %183 = load i64, i64* %182

  store i64 %183, i64* %3, align 8, !tbaa !1240

  %184 = add i64 %156, 48

  store i64 %184, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %151

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400f30_Func1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400f30:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %6 = bitcast %union.anon* %5 to i8*

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %8 = bitcast %union.anon* %7 to i8*

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %10 = bitcast %union.anon* %9 to i8*

  %11 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %12 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0

  %13 = getelementptr inbounds %union.anon, %union.anon* %9, i64 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %16 = load i64, i64* %15, align 8

  %17 = load i64, i64* %14, align 8, !tbaa !1240

  %18 = add i64 %17, -8

  %19 = inttoptr i64 %18 to i64*

  store i64 %16, i64* %19

  %20 = load i8, i8* %10, align 1

  %21 = load i8, i8* %8, align 1

  store i8 %21, i8* %6, align 1, !tbaa !1283

  %22 = add i64 %17, -13

  %23 = inttoptr i64 %22 to i8*

  store i8 %20, i8* %23

  %24 = add i64 %17, -14

  %25 = inttoptr i64 %24 to i8*

  store i8 %21, i8* %25

  %26 = inttoptr i64 %22 to i8*

  %27 = load i8, i8* %26

  %28 = add i64 %17, -15

  %29 = inttoptr i64 %28 to i8*

  store i8 %27, i8* %29

  %30 = inttoptr i64 %28 to i8*

  %31 = load i8, i8* %30

  %32 = add i64 %17, -16

  %33 = inttoptr i64 %32 to i8*

  store i8 %31, i8* %33

  %34 = inttoptr i64 %32 to i8*

  %35 = load i8, i8* %34

  %36 = sext i8 %35 to i64

  %37 = and i64 %36, 4294967295

  store i64 %37, i64* %12, align 8, !tbaa !1240

  %38 = inttoptr i64 %24 to i8*

  %39 = load i8, i8* %38

  %40 = sext i8 %39 to i64

  %41 = and i64 %40, 4294967295

  store i64 %41, i64* %13, align 8, !tbaa !1240

  %42 = sext i8 %35 to i32

  %43 = sext i8 %39 to i32

  %44 = sub nsw i32 %42, %43

  %45 = icmp ult i8 %35, %39

  %46 = zext i1 %45 to i8

  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %46, i8* %47, align 1, !tbaa !1244

  %48 = and i32 %44, 255

  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #10

  %50 = trunc i32 %49 to i8

  %51 = and i8 %50, 1

  %52 = xor i8 %51, 1

  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %52, i8* %53, align 1, !tbaa !1258

  %54 = xor i8 %39, %35

  %55 = zext i8 %54 to i32

  %56 = xor i32 %55, %44

  %57 = lshr i32 %56, 4

  %58 = trunc i32 %57 to i8

  %59 = and i8 %58, 1

  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %59, i8* %60, align 1, !tbaa !1259

  %61 = icmp eq i32 %44, 0

  %62 = zext i1 %61 to i8

  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %62, i8* %63, align 1, !tbaa !1260

  %64 = lshr i32 %44, 31

  %65 = trunc i32 %64 to i8

  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %65, i8* %66, align 1, !tbaa !1261

  %67 = lshr i32 %42, 31

  %68 = lshr i32 %43, 31

  %69 = xor i32 %68, %67

  %70 = xor i32 %64, %67

  %71 = add nuw nsw i32 %70, %69

  %72 = icmp eq i32 %71, 2

  %73 = zext i1 %72 to i8

  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %73, i8* %74, align 1, !tbaa !1262

  %75 = add i64 %17, -12

  br i1 %61, label %block_400f68, label %block_400f5c



block_400f5c:                                     ; preds = %block_400f30

  %76 = inttoptr i64 %75 to i32*

  store i32 0, i32* %76

  br label %block_400f6f



block_400f6f:                                     ; preds = %block_400f68, %block_400f5c

  %77 = phi %struct.Memory* [ %2, %block_400f68 ], [ %2, %block_400f5c ]

  %78 = inttoptr i64 %75 to i32*

  %79 = load i32, i32* %78

  %80 = zext i32 %79 to i64

  store i64 %80, i64* %11, align 8, !tbaa !1240

  %81 = inttoptr i64 %18 to i64*

  %82 = load i64, i64* %81

  store i64 %82, i64* %15, align 8, !tbaa !1240

  %83 = inttoptr i64 %17 to i64*

  %84 = load i64, i64* %83

  store i64 %84, i64* %3, align 8, !tbaa !1240

  %85 = add i64 %17, 8

  store i64 %85, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %77



block_400f68:                                     ; preds = %block_400f30

  %86 = inttoptr i64 %75 to i32*

  store i32 1, i32* %86

  br label %block_400f6f

}



; Function Attrs: noinline

define %struct.Memory* @sub_400720_Proc0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400720:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0

  %6 = bitcast %union.anon* %4 to i32*

  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 8, !tbaa !1240

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  store i64 %14, i64* %11, align 8, !tbaa !1240

  %16 = add i64 %13, -360

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = add i64 %13, -216

  %24 = add i64 %1, 23

  %25 = add i64 %13, -368

  %26 = inttoptr i64 %25 to i64*

  store i64 %24, i64* %26

  %27 = inttoptr i64 %25 to i64*

  %28 = load i64, i64* %27

  store i64 %28, i64* %3, align 8, !alias.scope !1284, !noalias !1287

  store i64 %16, i64* %10, align 8, !alias.scope !1284, !noalias !1287

  %29 = tail call i64 @times(i64 %23)

  %30 = load i64, i64* %11, align 8

  %31 = add i64 %30, -208

  %32 = load i64, i64* %3, align 8

  %33 = inttoptr i64 %31 to i64*

  %34 = load i64, i64* %33

  %35 = add i64 %30, -160

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = add i64 %30, -100

  %38 = inttoptr i64 %37 to i32*

  store i32 0, i32* %38

  %39 = add i64 %30, -216

  %40 = add i64 %32, 28

  %41 = inttoptr i64 %39 to i64*

  store i64 %29, i64* %41

  br label %block_400753



block_400773:                                     ; preds = %block_400753

  %42 = bitcast %union.anon* %5 to i8*

  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %45 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0

  %46 = add i64 %455, 12

  %47 = load i64, i64* %10, align 8, !tbaa !1240

  %48 = add i64 %47, -8

  %49 = inttoptr i64 %48 to i64*

  store i64 %46, i64* %49

  %50 = inttoptr i64 %48 to i64*

  %51 = load i64, i64* %50

  store i64 %51, i64* %3, align 8, !alias.scope !1289, !noalias !1292

  store i64 %47, i64* %10, align 8, !alias.scope !1289, !noalias !1292

  %52 = tail call i64 @times(i64 %31)

  %53 = load i64, i64* %3, align 8

  %54 = load i64, i64* %11, align 8

  %55 = add i64 %54, -208

  %56 = inttoptr i64 %55 to i64*

  %57 = load i64, i64* %56

  %58 = add i64 %54, -160

  %59 = inttoptr i64 %58 to i64*

  %60 = load i64, i64* %59

  %61 = sub i64 %57, %60

  %62 = add i64 %54, -176

  %63 = inttoptr i64 %62 to i64*

  store i64 %61, i64* %63

  %64 = add i64 %54, -224

  %65 = inttoptr i64 %64 to i64*

  store i64 %52, i64* %65

  %66 = add i64 %53, 40

  %67 = load i64, i64* %10, align 8, !tbaa !1240

  %68 = add i64 %67, -8

  %69 = inttoptr i64 %68 to i64*

  store i64 %66, i64* %69

  %70 = inttoptr i64 %68 to i64*

  %71 = load i64, i64* %70

  store i64 %71, i64* %3, align 8, !alias.scope !1294, !noalias !1297

  store i64 %67, i64* %10, align 8, !alias.scope !1294, !noalias !1297

  %72 = tail call i64 @malloc(i64 56)

  %73 = load i64, i64* %3, align 8

  store i64 %72, i64* bitcast (%PtrGlbNext_type* @PtrGlbNext to i64*)

  %74 = add i64 %73, 20

  %75 = load i64, i64* %10, align 8, !tbaa !1240

  %76 = add i64 %75, -8

  %77 = inttoptr i64 %76 to i64*

  store i64 %74, i64* %77

  %78 = inttoptr i64 %76 to i64*

  %79 = load i64, i64* %78

  store i64 %79, i64* %3, align 8, !alias.scope !1299, !noalias !1302

  store i64 %75, i64* %10, align 8, !alias.scope !1299, !noalias !1302

  %80 = tail call i64 @malloc(i64 56)

  %81 = load i64, i64* %11, align 8

  %82 = add i64 %81, -120

  %83 = load i64, i64* %3, align 8

  store i64 %82, i64* %9, align 8, !tbaa !1240

  %84 = add i64 %81, -64

  store i64 %80, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %85 = load i64, i64* bitcast (%PtrGlbNext_type* @PtrGlbNext to i64*)

  %86 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %87 = inttoptr i64 %86 to i64*

  store i64 %85, i64* %87

  %88 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %89 = add i64 %88, 8

  %90 = inttoptr i64 %89 to i32*

  store i32 0, i32* %90

  %91 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %92 = add i64 %91, 12

  %93 = inttoptr i64 %92 to i32*

  store i32 2, i32* %93

  %94 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %95 = add i64 %94, 16

  %96 = inttoptr i64 %95 to i32*

  store i32 40, i32* %96

  %97 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  %98 = add i64 %97, 20

  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 48), i64 4294967295) to i32) to i64), i64* %45, align 8, !tbaa !1240

  %99 = load i64, i64* %11, align 8

  %100 = add i64 %99, -232

  %101 = load i64, i64* %9, align 8

  %102 = inttoptr i64 %100 to i64*

  store i64 %101, i64* %102

  %103 = add i64 %99, -240

  %104 = inttoptr i64 %103 to i64*

  store i64 0, i64* %104

  %105 = add i64 %99, -248

  %106 = inttoptr i64 %105 to i64*

  store i64 %84, i64* %106

  %107 = add i64 %83, 136

  %108 = load i64, i64* %10, align 8, !tbaa !1240

  %109 = add i64 %108, -8

  %110 = inttoptr i64 %109 to i64*

  store i64 %107, i64* %110

  %111 = inttoptr i64 %109 to i64*

  %112 = load i64, i64* %111

  store i64 %112, i64* %3, align 8, !alias.scope !1304, !noalias !1307

  store i64 %108, i64* %10, align 8, !alias.scope !1304, !noalias !1307

  %113 = tail call i64 @strcpy(i64 %98, i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 48), i64 4294967295) to i32) to i64))

  %114 = load i64, i64* %3, align 8

  store i64 and (i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 79), i64 4294967295), i64* %43, align 8, !tbaa !1240

  %115 = load i64, i64* %11, align 8

  %116 = add i64 %115, -248

  %117 = inttoptr i64 %116 to i64*

  %118 = load i64, i64* %117

  %119 = add i64 %115, -256

  %120 = inttoptr i64 %119 to i64*

  store i64 %113, i64* %120

  %121 = add i64 %114, 26

  %122 = load i64, i64* %10, align 8, !tbaa !1240

  %123 = add i64 %122, -8

  %124 = inttoptr i64 %123 to i64*

  store i64 %121, i64* %124

  %125 = inttoptr i64 %123 to i64*

  %126 = load i64, i64* %125

  store i64 %126, i64* %3, align 8, !alias.scope !1309, !noalias !1312

  store i64 %122, i64* %10, align 8, !alias.scope !1309, !noalias !1312

  %127 = tail call i64 @strcpy(i64 %118, i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 79), i64 4294967295) to i32) to i64))

  %128 = load i64, i64* %3, align 8

  store i32 10, i32* inttoptr (i64 add (i64 ptrtoint (%Array2Glob_type* @Array2Glob to i64), i64 1660) to i32*)

  %129 = load i64, i64* %11, align 8

  %130 = add i64 %129, -232

  %131 = inttoptr i64 %130 to i64*

  %132 = load i64, i64* %131

  %133 = add i64 %129, -240

  %134 = inttoptr i64 %133 to i64*

  %135 = load i64, i64* %134

  store i64 %135, i64* %44, align 8, !tbaa !1240

  %136 = add i64 %129, -264

  %137 = inttoptr i64 %136 to i64*

  store i64 %127, i64* %137

  %138 = add i64 %128, 37

  %139 = load i64, i64* %10, align 8, !tbaa !1240

  %140 = add i64 %139, -8

  %141 = inttoptr i64 %140 to i64*

  store i64 %138, i64* %141

  %142 = inttoptr i64 %140 to i64*

  %143 = load i64, i64* %142

  store i64 %143, i64* %3, align 8, !alias.scope !1314, !noalias !1317

  store i64 %139, i64* %10, align 8, !alias.scope !1314, !noalias !1317

  %144 = tail call i64 @gettimeofday(i64 %132, i64 %135), !noalias !1314

  %145 = load i64, i64* %11, align 8

  %146 = add i64 %145, -208

  %147 = load i64, i64* %3, align 8

  store i64 %146, i64* %9, align 8, !tbaa !1240

  %148 = add i64 %145, -268

  %149 = trunc i64 %144 to i32

  %150 = inttoptr i64 %148 to i32*

  store i32 %149, i32* %150

  %151 = add i64 %147, 18

  %152 = load i64, i64* %10, align 8, !tbaa !1240

  %153 = add i64 %152, -8

  %154 = inttoptr i64 %153 to i64*

  store i64 %151, i64* %154

  %155 = inttoptr i64 %153 to i64*

  %156 = load i64, i64* %155

  store i64 %156, i64* %3, align 8, !alias.scope !1319, !noalias !1322

  store i64 %152, i64* %10, align 8, !alias.scope !1319, !noalias !1322

  %157 = tail call i64 @times(i64 %146)

  %158 = load i64, i64* %11, align 8

  %159 = add i64 %158, -208

  %160 = load i64, i64* %3, align 8

  %161 = inttoptr i64 %159 to i64*

  %162 = load i64, i64* %161

  store i64 %162, i64* %8, align 8, !tbaa !1240

  %163 = add i64 %158, -160

  %164 = inttoptr i64 %163 to i64*

  store i64 %162, i64* %164

  %165 = add i64 %158, -100

  %166 = inttoptr i64 %165 to i32*

  store i32 0, i32* %166

  %167 = add i64 %158, -280

  %168 = add i64 %160, 28

  %169 = inttoptr i64 %167 to i64*

  store i64 %157, i64* %169

  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %171 = trunc i64 %157 to i32

  br label %block_4008b0



block_40097a:                                     ; preds = %block_400941

  store i64 ptrtoint (%Array1Glob_type* @Array1Glob to i64), i64* %9, align 8, !tbaa !1240

  store i64 ptrtoint (%Array2Glob_type* @Array2Glob to i64), i64* %44, align 8, !tbaa !1240

  store i64 %511, i64* %8, align 8, !tbaa !1240

  %172 = add i64 %506, -16

  %173 = inttoptr i64 %172 to i32*

  %174 = load i32, i32* %173

  %175 = zext i32 %174 to i64

  store i64 %175, i64* %43, align 8, !tbaa !1240

  %176 = add i64 %527, 1206

  %177 = add i64 %527, 31

  %178 = load i64, i64* %10, align 8, !tbaa !1240

  %179 = add i64 %178, -8

  %180 = inttoptr i64 %179 to i64*

  store i64 %177, i64* %180

  store i64 %179, i64* %10, align 8, !tbaa !1240

  %181 = tail call %struct.Memory* @sub_400e30_Proc8(%struct.State* nonnull %0, i64 %176, %struct.Memory* %507)

  %182 = load i64, i64* %3, align 8

  %183 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)

  store i64 %183, i64* %9, align 8, !tbaa !1240

  %184 = load i64, i64* %11, align 8

  %185 = add i64 %184, -328

  %186 = load i32, i32* %6, align 4

  %187 = inttoptr i64 %185 to i32*

  store i32 %186, i32* %187

  %188 = add i64 %182, 359

  %189 = add i64 %182, 19

  %190 = load i64, i64* %10, align 8, !tbaa !1240

  %191 = add i64 %190, -8

  %192 = inttoptr i64 %191 to i64*

  store i64 %189, i64* %192

  store i64 %191, i64* %10, align 8, !tbaa !1240

  %193 = tail call %struct.Memory* @sub_400b00_Proc1(%struct.State* nonnull %0, i64 %188, %struct.Memory* %181)

  %194 = load i64, i64* %11, align 8

  %195 = add i64 %194, -18

  %196 = load i64, i64* %3, align 8

  %197 = inttoptr i64 %195 to i8*

  store i8 65, i8* %197

  %198 = add i64 %194, -332

  %199 = load i32, i32* %6, align 4

  %200 = add i64 %196, 10

  %201 = inttoptr i64 %198 to i32*

  store i32 %199, i32* %201

  br label %block_4009b6



block_400a97:                                     ; preds = %block_400a52

  %202 = add i64 %255, -152

  %203 = inttoptr i64 %202 to i64*

  %204 = load i64, i64* %203

  %205 = add i64 %204, -1

  %206 = inttoptr i64 %202 to i64*

  store i64 %205, i64* %206

  %207 = add i64 %255, -144

  %208 = inttoptr i64 %207 to i64*

  %209 = load i64, i64* %208

  %210 = add i64 %209, 1000000

  %211 = add i64 %254, 38

  %212 = inttoptr i64 %207 to i64*

  store i64 %210, i64* %212

  br label %block_400abd



block_400a52:                                     ; preds = %block_4008b0

  %213 = add i64 %323, -136

  %214 = zext i32 %320 to i64

  %215 = xor i64 %214, %321

  %216 = and i64 %215, 4294967295

  %217 = add i64 %350, 16

  %218 = load i64, i64* %10, align 8, !tbaa !1240

  %219 = add i64 %218, -8

  %220 = inttoptr i64 %219 to i64*

  store i64 %217, i64* %220

  %221 = inttoptr i64 %219 to i64*

  %222 = load i64, i64* %221

  store i64 %222, i64* %3, align 8, !alias.scope !1324, !noalias !1327

  store i64 %218, i64* %10, align 8, !alias.scope !1324, !noalias !1327

  %223 = tail call i64 @gettimeofday(i64 %213, i64 %216), !noalias !1324

  %224 = load i64, i64* %11, align 8

  %225 = add i64 %224, -348

  %226 = trunc i64 %223 to i32

  %227 = load i64, i64* %3, align 8

  %228 = inttoptr i64 %225 to i32*

  store i32 %226, i32* %228

  %229 = add i64 %224, -136

  %230 = inttoptr i64 %229 to i64*

  %231 = load i64, i64* %230

  %232 = add i64 %224, -120

  %233 = inttoptr i64 %232 to i64*

  %234 = load i64, i64* %233

  %235 = sub i64 %231, %234

  %236 = add i64 %224, -152

  %237 = inttoptr i64 %236 to i64*

  store i64 %235, i64* %237

  %238 = add i64 %224, -128

  %239 = inttoptr i64 %238 to i64*

  %240 = load i64, i64* %239

  %241 = add i64 %224, -112

  %242 = inttoptr i64 %241 to i64*

  %243 = load i64, i64* %242

  %244 = sub i64 %240, %243

  %245 = add i64 %224, -144

  %246 = inttoptr i64 %245 to i64*

  store i64 %244, i64* %246

  %247 = add i64 %227, 47

  %248 = inttoptr i64 %245 to i64*

  %249 = load i64, i64* %248

  %250 = lshr i64 %249, 63

  %251 = trunc i64 %250 to i8

  %252 = icmp ne i8 %251, 0

  %253 = select i1 %252, i64 6, i64 44

  %254 = add i64 %247, %253

  %255 = load i64, i64* %11, align 8

  br i1 %252, label %block_400a97, label %block_400abd



block_4008bd:                                     ; preds = %block_4008b0

  %256 = add i64 %350, 1123

  %257 = add i64 %350, 5

  %258 = load i64, i64* %10, align 8, !tbaa !1240

  %259 = add i64 %258, -8

  %260 = inttoptr i64 %259 to i64*

  store i64 %257, i64* %260

  store i64 %259, i64* %10, align 8, !tbaa !1240

  %261 = tail call %struct.Memory* @sub_400d20_Proc5(%struct.State* nonnull %0, i64 %256, %struct.Memory* %324)

  %262 = load i64, i64* %11, align 8

  %263 = add i64 %262, -284

  %264 = load i32, i32* %6, align 4

  %265 = load i64, i64* %3, align 8

  %266 = inttoptr i64 %263 to i32*

  store i32 %264, i32* %266

  %267 = add i64 %265, 1054

  %268 = add i64 %265, 11

  %269 = load i64, i64* %10, align 8, !tbaa !1240

  %270 = add i64 %269, -8

  %271 = inttoptr i64 %270 to i64*

  store i64 %268, i64* %271

  store i64 %270, i64* %10, align 8, !tbaa !1240

  %272 = tail call %struct.Memory* @sub_400ce0_Proc4(%struct.State* nonnull %0, i64 %267, %struct.Memory* %261)

  %273 = load i64, i64* %11, align 8

  %274 = add i64 %273, -96

  %275 = load i64, i64* %3, align 8

  store i64 %274, i64* %43, align 8, !tbaa !1240

  %276 = add i64 %273, -64

  %277 = add i64 %273, -8

  %278 = inttoptr i64 %277 to i32*

  store i32 2, i32* %278

  %279 = add i64 %273, -12

  %280 = inttoptr i64 %279 to i32*

  store i32 3, i32* %280

  store i64 and (i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 110), i64 4294967295), i64* %8, align 8, !tbaa !1240

  %281 = add i64 %273, -296

  %282 = inttoptr i64 %281 to i64*

  store i64 %276, i64* %282

  %283 = add i64 %273, -300

  %284 = load i32, i32* %6, align 4

  %285 = inttoptr i64 %283 to i32*

  store i32 %284, i32* %285

  %286 = add i64 %273, -312

  %287 = inttoptr i64 %286 to i64*

  store i64 %274, i64* %287

  %288 = add i64 %275, 57

  %289 = load i64, i64* %10, align 8, !tbaa !1240

  %290 = add i64 %289, -8

  %291 = inttoptr i64 %290 to i64*

  store i64 %288, i64* %291

  %292 = inttoptr i64 %290 to i64*

  %293 = load i64, i64* %292

  store i64 %293, i64* %3, align 8, !alias.scope !1329, !noalias !1332

  store i64 %289, i64* %10, align 8, !alias.scope !1329, !noalias !1332

  %294 = tail call i64 @strcpy(i64 %274, i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 110), i64 4294967295) to i32) to i64))

  %295 = load i64, i64* %11, align 8

  %296 = add i64 %295, -24

  %297 = load i64, i64* %3, align 8

  %298 = inttoptr i64 %296 to i32*

  store i32 1, i32* %298

  %299 = add i64 %295, -296

  %300 = inttoptr i64 %299 to i64*

  %301 = load i64, i64* %300

  store i64 %301, i64* %9, align 8, !tbaa !1240

  %302 = add i64 %295, -312

  %303 = inttoptr i64 %302 to i64*

  %304 = load i64, i64* %303

  store i64 %304, i64* %44, align 8, !tbaa !1240

  %305 = add i64 %295, -320

  %306 = inttoptr i64 %305 to i64*

  store i64 %294, i64* %306

  %307 = add i64 %297, 1658

  %308 = add i64 %297, 33

  %309 = load i64, i64* %10, align 8, !tbaa !1240

  %310 = add i64 %309, -8

  %311 = inttoptr i64 %310 to i64*

  store i64 %308, i64* %311

  store i64 %310, i64* %10, align 8, !tbaa !1240

  %312 = tail call %struct.Memory* @sub_400f80_Func2(%struct.State* nonnull %0, i64 %307, %struct.Memory* %272)

  %313 = load i32, i32* %6, align 4

  %314 = load i64, i64* %3, align 8

  %315 = icmp eq i32 %313, 0

  %316 = zext i1 %315 to i8

  store i8 %316, i8* %42, align 1, !tbaa !1283

  %317 = zext i1 %315 to i32

  %318 = add i64 %314, 26

  store i32 %317, i32* bitcast (%BoolGlob_type* @BoolGlob to i32*)

  %319 = load i64, i64* %11, align 8

  br label %block_400941



block_4008b0:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400773

  %320 = phi i32 [ %171, %block_400773 ], [ %610, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %321 = phi i64 [ %157, %block_400773 ], [ %611, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %322 = phi i64 [ %168, %block_400773 ], [ %613, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %323 = phi i64 [ %158, %block_400773 ], [ %602, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %324 = phi %struct.Memory* [ %450, %block_400773 ], [ %601, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %325 = add i64 %323, -100

  %326 = inttoptr i64 %325 to i32*

  %327 = load i32, i32* %326

  %328 = add i32 %327, -50000000

  %329 = icmp ult i32 %327, 50000000

  %330 = zext i1 %329 to i8

  store i8 %330, i8* %17, align 1, !tbaa !1244

  %331 = and i32 %328, 255

  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #10

  %333 = trunc i32 %332 to i8

  %334 = and i8 %333, 1

  %335 = xor i8 %334, 1

  store i8 %335, i8* %18, align 1, !tbaa !1258

  %336 = xor i32 %328, %327

  %337 = lshr i32 %336, 4

  %338 = trunc i32 %337 to i8

  %339 = and i8 %338, 1

  store i8 %339, i8* %19, align 1, !tbaa !1259

  %340 = icmp eq i32 %328, 0

  %341 = zext i1 %340 to i8

  store i8 %341, i8* %20, align 1, !tbaa !1260

  %342 = lshr i32 %328, 31

  %343 = trunc i32 %342 to i8

  store i8 %343, i8* %21, align 1, !tbaa !1261

  %344 = lshr i32 %327, 31

  %345 = xor i32 %342, %344

  %346 = add nuw nsw i32 %345, %344

  %347 = icmp eq i32 %346, 2

  %348 = zext i1 %347 to i8

  store i8 %348, i8* %22, align 1, !tbaa !1262

  %349 = select i1 %329, i64 13, i64 418

  %350 = add i64 %322, %349

  br i1 %329, label %block_4008bd, label %block_400a52



block_4009ef:                                     ; preds = %block_4009ca

  store i64 0, i64* %9, align 8, !tbaa !1240

  %351 = add i64 %494, -24

  store i64 %351, i64* %44, align 8, !tbaa !1240

  %352 = add i64 %504, 849

  %353 = add i64 %504, 11

  %354 = load i64, i64* %10, align 8, !tbaa !1240

  %355 = add i64 %354, -8

  %356 = inttoptr i64 %355 to i64*

  store i64 %353, i64* %356

  store i64 %355, i64* %10, align 8, !tbaa !1240

  %357 = tail call %struct.Memory* @sub_400d40_Proc6(%struct.State* nonnull %0, i64 %352, %struct.Memory* %493)

  %358 = load i64, i64* %11, align 8

  %359 = add i64 %358, -340

  %360 = load i32, i32* %6, align 4

  %361 = load i64, i64* %3, align 8

  %362 = add i64 %361, 6

  %363 = inttoptr i64 %359 to i32*

  store i32 %360, i32* %363

  br label %block_400a00



block_400abd:                                     ; preds = %block_400a52, %block_400a97

  %364 = phi i64 [ %211, %block_400a97 ], [ %254, %block_400a52 ]

  %365 = phi %struct.Memory* [ %324, %block_400a97 ], [ %324, %block_400a52 ]

  store i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 141), i64* %9, align 8, !tbaa !1240

  %366 = add i64 %255, -152

  %367 = inttoptr i64 %366 to i64*

  %368 = load i64, i64* %367

  store i64 %368, i64* %44, align 8, !tbaa !1240

  %369 = add i64 %255, -144

  %370 = inttoptr i64 %369 to i64*

  %371 = load i64, i64* %370

  store i64 %371, i64* %8, align 8, !tbaa !1240

  %372 = add i64 %364, 36

  %373 = load i64, i64* %10, align 8, !tbaa !1240

  %374 = add i64 %373, -8

  %375 = inttoptr i64 %374 to i64*

  store i64 %372, i64* %375

  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %379 = load i64, i64* %376, align 8, !alias.scope !1334, !noalias !1337

  %380 = load i64, i64* %377, align 8, !alias.scope !1334, !noalias !1337

  %381 = load i64, i64* %378, align 8, !alias.scope !1334, !noalias !1337

  %382 = inttoptr i64 %373 to i64*

  %383 = load i64, i64* %382

  %384 = add i64 %373, 8

  %385 = inttoptr i64 %384 to i64*

  %386 = load i64, i64* %385

  %387 = add i64 %373, 16

  %388 = inttoptr i64 %387 to i64*

  %389 = load i64, i64* %388

  %390 = add i64 %373, 24

  %391 = inttoptr i64 %390 to i64*

  %392 = load i64, i64* %391

  %393 = add i64 %373, 32

  %394 = inttoptr i64 %393 to i64*

  %395 = load i64, i64* %394

  %396 = add i64 %373, 40

  %397 = inttoptr i64 %396 to i64*

  %398 = load i64, i64* %397

  %399 = add i64 %373, 48

  %400 = inttoptr i64 %399 to i64*

  %401 = load i64, i64* %400

  %402 = add i64 %373, 56

  %403 = inttoptr i64 %402 to i64*

  %404 = load i64, i64* %403

  %405 = add i64 %373, 64

  %406 = inttoptr i64 %405 to i64*

  %407 = load i64, i64* %406

  %408 = add i64 %373, 72

  %409 = inttoptr i64 %408 to i64*

  %410 = load i64, i64* %409

  store i64 %373, i64* %10, align 8, !alias.scope !1334, !noalias !1337

  %411 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 141), i64 %368, i64 %371, i64 %379, i64 %380, i64 %381, i64 %383, i64 %386, i64 %389, i64 %392, i64 %395, i64 %398, i64 %401, i64 %404, i64 %407, i64 %410), !noalias !1334

  %412 = load i64, i64* %11, align 8

  %413 = add i64 %412, -4

  %414 = inttoptr i64 %413 to i32*

  %415 = load i32, i32* %414

  %416 = zext i32 %415 to i64

  store i64 %416, i64* %43, align 8, !tbaa !1240

  %417 = add i64 %412, -352

  %418 = trunc i64 %411 to i32

  %419 = inttoptr i64 %417 to i32*

  store i32 %418, i32* %419

  store i64 %416, i64* %7, align 8, !tbaa !1240

  %420 = load i64, i64* %10, align 8

  %421 = add i64 %420, 352

  %422 = icmp ugt i64 %420, -353

  %423 = zext i1 %422 to i8

  store i8 %423, i8* %17, align 1, !tbaa !1244

  %424 = trunc i64 %421 to i32

  %425 = and i32 %424, 255

  %426 = tail call i32 @llvm.ctpop.i32(i32 %425) #10

  %427 = trunc i32 %426 to i8

  %428 = and i8 %427, 1

  %429 = xor i8 %428, 1

  store i8 %429, i8* %18, align 1, !tbaa !1258

  %430 = xor i64 %421, %420

  %431 = lshr i64 %430, 4

  %432 = trunc i64 %431 to i8

  %433 = and i8 %432, 1

  store i8 %433, i8* %19, align 1, !tbaa !1259

  %434 = icmp eq i64 %421, 0

  %435 = zext i1 %434 to i8

  store i8 %435, i8* %20, align 1, !tbaa !1260

  %436 = lshr i64 %421, 63

  %437 = trunc i64 %436 to i8

  store i8 %437, i8* %21, align 1, !tbaa !1261

  %438 = lshr i64 %420, 63

  %439 = xor i64 %436, %438

  %440 = add nuw nsw i64 %439, %436

  %441 = icmp eq i64 %440, 2

  %442 = zext i1 %441 to i8

  store i8 %442, i8* %22, align 1, !tbaa !1262

  %443 = add i64 %420, 360

  %444 = inttoptr i64 %421 to i64*

  %445 = load i64, i64* %444

  store i64 %445, i64* %11, align 8, !tbaa !1240

  %446 = inttoptr i64 %443 to i64*

  %447 = load i64, i64* %446

  store i64 %447, i64* %3, align 8, !tbaa !1240

  %448 = add i64 %420, 368

  store i64 %448, i64* %10, align 8, !tbaa !1240

  ret %struct.Memory* %365



block_400753:                                     ; preds = %block_400760, %block_400720

  %449 = phi i64 [ %40, %block_400720 ], [ %644, %block_400760 ]

  %450 = phi %struct.Memory* [ %2, %block_400720 ], [ %450, %block_400760 ]

  %451 = inttoptr i64 %37 to i32*

  %452 = load i32, i32* %451

  %453 = icmp ult i32 %452, 50000000

  %454 = select i1 %453, i64 13, i64 32

  %455 = add i64 %449, %454

  br i1 %453, label %block_400760, label %block_400773



block_40094d:                                     ; preds = %block_400941

  %456 = add i64 %506, -16

  store i64 %456, i64* %8, align 8, !tbaa !1240

  %457 = mul i32 %510, 5

  %458 = sub i32 %457, %514

  %459 = inttoptr i64 %456 to i32*

  store i32 %458, i32* %459

  %460 = inttoptr i64 %508 to i32*

  %461 = load i32, i32* %460

  %462 = zext i32 %461 to i64

  store i64 %462, i64* %9, align 8, !tbaa !1240

  %463 = inttoptr i64 %512 to i32*

  %464 = load i32, i32* %463

  %465 = zext i32 %464 to i64

  store i64 %465, i64* %44, align 8, !tbaa !1240

  %466 = add i64 %527, 1203

  %467 = add i64 %527, 25

  %468 = load i64, i64* %10, align 8, !tbaa !1240

  %469 = add i64 %468, -8

  %470 = inttoptr i64 %469 to i64*

  store i64 %467, i64* %470

  store i64 %469, i64* %10, align 8, !tbaa !1240

  %471 = tail call %struct.Memory* @sub_400e00_Proc7(%struct.State* nonnull %0, i64 %466, %struct.Memory* %507)

  %472 = load i64, i64* %11, align 8

  %473 = add i64 %472, -8

  %474 = load i64, i64* %3, align 8

  %475 = inttoptr i64 %473 to i32*

  %476 = load i32, i32* %475

  %477 = add i32 %476, 1

  %478 = inttoptr i64 %473 to i32*

  store i32 %477, i32* %478

  %479 = add i64 %472, -324

  %480 = load i32, i32* %6, align 4

  %481 = inttoptr i64 %479 to i32*

  store i32 %480, i32* %481

  %482 = add i64 %474, -37

  br label %block_400941



block_4009ca:                                     ; preds = %block_4009b6

  store i64 67, i64* %44, align 8, !tbaa !1240

  %483 = add i64 %615, -24

  %484 = inttoptr i64 %483 to i32*

  %485 = load i32, i32* %484

  store i64 %621, i64* %9, align 8, !tbaa !1240

  %486 = add i64 %615, -336

  %487 = inttoptr i64 %486 to i32*

  store i32 %485, i32* %487

  %488 = add i64 %641, 1382

  %489 = add i64 %641, 23

  %490 = load i64, i64* %10, align 8, !tbaa !1240

  %491 = add i64 %490, -8

  %492 = inttoptr i64 %491 to i64*

  store i64 %489, i64* %492

  store i64 %491, i64* %10, align 8, !tbaa !1240

  %493 = tail call %struct.Memory* @sub_400f30_Func1(%struct.State* nonnull %0, i64 %488, %struct.Memory* %616)

  %494 = load i64, i64* %11, align 8

  %495 = add i64 %494, -336

  %496 = load i64, i64* %3, align 8

  %497 = inttoptr i64 %495 to i32*

  %498 = load i32, i32* %497

  %499 = zext i32 %498 to i64

  store i64 %499, i64* %44, align 8, !tbaa !1240

  %500 = load i32, i32* %6, align 4

  %501 = sub i32 %498, %500

  %502 = icmp eq i32 %501, 0

  %503 = select i1 %502, i64 14, i64 31

  %504 = add i64 %496, %503

  br i1 %502, label %block_4009ef, label %block_400a00



block_400941:                                     ; preds = %block_40094d, %block_4008bd

  %505 = phi i64 [ %318, %block_4008bd ], [ %482, %block_40094d ]

  %506 = phi i64 [ %319, %block_4008bd ], [ %472, %block_40094d ]

  %507 = phi %struct.Memory* [ %312, %block_4008bd ], [ %471, %block_40094d ]

  %508 = add i64 %506, -8

  %509 = inttoptr i64 %508 to i32*

  %510 = load i32, i32* %509

  %511 = zext i32 %510 to i64

  %512 = add i64 %506, -12

  %513 = inttoptr i64 %512 to i32*

  %514 = load i32, i32* %513

  %515 = sub i32 %510, %514

  %516 = lshr i32 %515, 31

  %517 = trunc i32 %516 to i8

  %518 = lshr i32 %510, 31

  %519 = lshr i32 %514, 31

  %520 = xor i32 %519, %518

  %521 = xor i32 %516, %518

  %522 = add nuw nsw i32 %521, %520

  %523 = icmp eq i32 %522, 2

  %524 = icmp ne i8 %517, 0

  %525 = xor i1 %524, %523

  %526 = select i1 %525, i64 12, i64 57

  %527 = add i64 %505, %526

  br i1 %525, label %block_40094d, label %block_40097a



block_400a12:                                     ; preds = %block_4009b6

  %528 = add i64 %615, -8

  store i64 %528, i64* %9, align 8, !tbaa !1240

  %529 = add i64 %615, -12

  %530 = inttoptr i64 %529 to i32*

  %531 = load i32, i32* %530

  %532 = inttoptr i64 %528 to i32*

  %533 = load i32, i32* %532

  %534 = sext i32 %531 to i64

  %535 = sext i32 %533 to i64

  %536 = mul nsw i64 %535, %534

  %537 = trunc i64 %536 to i32

  %538 = shl i64 %536, 32

  %539 = ashr exact i64 %538, 32

  %540 = icmp ne i64 %539, %536

  %541 = zext i1 %540 to i8

  store i8 %541, i8* %17, align 1, !tbaa !1244

  %542 = and i32 %537, 255

  %543 = tail call i32 @llvm.ctpop.i32(i32 %542) #10

  %544 = trunc i32 %543 to i8

  %545 = and i8 %544, 1

  %546 = xor i8 %545, 1

  store i8 %546, i8* %18, align 1, !tbaa !1258

  store i8 0, i8* %19, align 1, !tbaa !1259

  store i8 0, i8* %20, align 1, !tbaa !1260

  %547 = lshr i32 %537, 31

  %548 = trunc i32 %547 to i8

  store i8 %548, i8* %21, align 1, !tbaa !1261

  store i8 %541, i8* %22, align 1, !tbaa !1262

  %549 = add i64 %615, -16

  %550 = trunc i64 %536 to i32

  %551 = inttoptr i64 %549 to i32*

  store i32 %550, i32* %551

  %552 = inttoptr i64 %549 to i32*

  %553 = load i32, i32* %552

  %554 = zext i32 %553 to i64

  store i64 %554, i64* %7, align 8, !tbaa !1240

  %555 = sext i32 %553 to i64

  %556 = lshr i64 %555, 32

  store i64 %556, i64* %170, align 8, !tbaa !1240

  %557 = add i64 %641, 21

  store i64 %557, i64* %3, align 8

  %558 = inttoptr i64 %528 to i32*

  %559 = load i32, i32* %558

  %560 = sext i32 %559 to i64

  %561 = shl nuw i64 %556, 32

  %562 = or i64 %561, %554

  %563 = sdiv i64 %562, %560

  %564 = shl i64 %563, 32

  %565 = ashr exact i64 %564, 32

  %566 = icmp eq i64 %563, %565

  br i1 %566, label %572, label %567



; <label>:567:                                    ; preds = %block_400a12

  %568 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %557, %struct.Memory* %616) #13

  %569 = load i64, i64* %11, align 8

  %570 = load i32, i32* %6, align 4

  %571 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:572:                                    ; preds = %block_400a12

  %573 = srem i64 %562, %560

  %574 = and i64 %573, 4294967295

  store i64 %574, i64* %8, align 8, !tbaa !1240

  %575 = trunc i64 %563 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %572, %567

  %576 = phi i64 [ %571, %567 ], [ %557, %572 ]

  %577 = phi i32 [ %570, %567 ], [ %575, %572 ]

  %578 = phi i64 [ %569, %567 ], [ %615, %572 ]

  %579 = phi %struct.Memory* [ %568, %567 ], [ %616, %572 ]

  %580 = add i64 %578, -12

  %581 = inttoptr i64 %580 to i32*

  store i32 %577, i32* %581

  %582 = add i64 %578, -16

  %583 = inttoptr i64 %582 to i32*

  %584 = load i32, i32* %583

  %585 = inttoptr i64 %580 to i32*

  %586 = load i32, i32* %585

  %587 = sub i32 %584, %586

  %588 = mul i32 %587, 7

  %589 = add i64 %578, -8

  %590 = inttoptr i64 %589 to i32*

  %591 = load i32, i32* %590

  %592 = sub i32 %588, %591

  %593 = load i64, i64* %11, align 8

  %594 = add i64 %593, -12

  %595 = inttoptr i64 %594 to i32*

  store i32 %592, i32* %595

  %596 = add i64 %576, 489

  %597 = add i64 %576, 23

  %598 = load i64, i64* %10, align 8, !tbaa !1240

  %599 = add i64 %598, -8

  %600 = inttoptr i64 %599 to i64*

  store i64 %597, i64* %600

  store i64 %599, i64* %10, align 8, !tbaa !1240

  %601 = tail call %struct.Memory* @sub_400c10_Proc2(%struct.State* nonnull %0, i64 %596, %struct.Memory* %579)

  %602 = load i64, i64* %11, align 8

  %603 = add i64 %602, -344

  %604 = load i32, i32* %6, align 4

  %605 = load i64, i64* %3, align 8

  %606 = inttoptr i64 %603 to i32*

  store i32 %604, i32* %606

  %607 = add i64 %602, -100

  %608 = inttoptr i64 %607 to i32*

  %609 = load i32, i32* %608

  %610 = add i32 %609, 1

  %611 = zext i32 %610 to i64

  %612 = inttoptr i64 %607 to i32*

  store i32 %610, i32* %612

  %613 = add i64 %605, -398

  br label %block_4008b0



block_4009b6:                                     ; preds = %block_400a00, %block_40097a

  %614 = phi i64 [ %200, %block_40097a ], [ %653, %block_400a00 ]

  %615 = phi i64 [ %194, %block_40097a ], [ %645, %block_400a00 ]

  %616 = phi %struct.Memory* [ %193, %block_40097a ], [ %647, %block_400a00 ]

  %617 = add i64 %615, -18

  %618 = inttoptr i64 %617 to i8*

  %619 = load i8, i8* %618

  %620 = sext i8 %619 to i64

  %621 = and i64 %620, 4294967295

  %622 = load i8, i8* getelementptr inbounds (%Char2Glob_type, %Char2Glob_type* @Char2Glob, i32 0, i32 0, i32 0)

  %623 = sext i8 %622 to i64

  %624 = and i64 %623, 4294967295

  store i64 %624, i64* %43, align 8, !tbaa !1240

  %625 = sext i8 %619 to i32

  %626 = sext i8 %622 to i32

  %627 = sub nsw i32 %625, %626

  %628 = icmp eq i32 %627, 0

  %629 = lshr i32 %627, 31

  %630 = trunc i32 %629 to i8

  %631 = lshr i32 %625, 31

  %632 = lshr i32 %626, 31

  %633 = xor i32 %632, %631

  %634 = xor i32 %629, %631

  %635 = add nuw nsw i32 %634, %633

  %636 = icmp eq i32 %635, 2

  %637 = icmp ne i8 %630, 0

  %638 = xor i1 %637, %636

  %639 = or i1 %628, %638

  %640 = select i1 %639, i64 20, i64 92

  %641 = add i64 %614, %640

  br i1 %639, label %block_4009ca, label %block_400a12



block_400760:                                     ; preds = %block_400753

  %642 = add i32 %452, 1

  %643 = inttoptr i64 %37 to i32*

  store i32 %642, i32* %643

  %644 = add i64 %455, -13

  br label %block_400753



block_400a00:                                     ; preds = %block_4009ca, %block_4009ef

  %645 = phi i64 [ %494, %block_4009ca ], [ %358, %block_4009ef ]

  %646 = phi i64 [ %504, %block_4009ca ], [ %362, %block_4009ef ]

  %647 = phi %struct.Memory* [ %493, %block_4009ca ], [ %357, %block_4009ef ]

  %648 = add i64 %645, -18

  %649 = inttoptr i64 %648 to i8*

  %650 = load i8, i8* %649

  %651 = add i8 %650, 1

  %652 = inttoptr i64 %648 to i8*

  store i8 %651, i8* %652

  %653 = add i64 %646, -74

  br label %block_4009b6

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400560__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400560:

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

  br i1 %21, label %block_400572, label %block_400570



block_400572:                                     ; preds = %block_400570, %block_400560

  %27 = phi i64 [ %7, %block_400560 ], [ %58, %block_400570 ]

  %28 = phi %struct.Memory* [ %2, %block_400560 ], [ %57, %block_400570 ]

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



block_400570:                                     ; preds = %block_400560

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_400572

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400de5(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_400de5:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = add i64 %7, -4

  %9 = inttoptr i64 %8 to i32*

  %10 = load i32, i32* %9

  %11 = zext i32 %10 to i64

  store i64 %11, i64* %4, align 8, !tbaa !1240

  %12 = load i64, i64* %5, align 8

  %13 = add i64 %12, 32

  %14 = icmp ugt i64 %12, -33

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %15, i8* %16, align 1, !tbaa !1244

  %17 = trunc i64 %13 to i32

  %18 = and i32 %17, 255

  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10

  %20 = trunc i32 %19 to i8

  %21 = and i8 %20, 1

  %22 = xor i8 %21, 1

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %22, i8* %23, align 1, !tbaa !1258

  %24 = xor i64 %13, %12

  %25 = lshr i64 %24, 4

  %26 = trunc i64 %25 to i8

  %27 = and i8 %26, 1

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %27, i8* %28, align 1, !tbaa !1259

  %29 = icmp eq i64 %13, 0

  %30 = zext i1 %29 to i8

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %30, i8* %31, align 1, !tbaa !1260

  %32 = lshr i64 %13, 63

  %33 = trunc i64 %32 to i8

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %33, i8* %34, align 1, !tbaa !1261

  %35 = lshr i64 %12, 63

  %36 = xor i64 %32, %35

  %37 = add nuw nsw i64 %36, %32

  %38 = icmp eq i64 %37, 2

  %39 = zext i1 %38 to i8

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %39, i8* %40, align 1, !tbaa !1262

  %41 = add i64 %12, 40

  %42 = inttoptr i64 %13 to i64*

  %43 = load i64, i64* %42

  store i64 %43, i64* %6, align 8, !tbaa !1240

  %44 = inttoptr i64 %41 to i64*

  %45 = load i64, i64* %44

  store i64 %45, i64* %3, align 8, !tbaa !1240

  %46 = add i64 %12, 48

  store i64 %46, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401100___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401100:

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

define %struct.Memory* @sub_400ce0_Proc4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400ce0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0

  %5 = bitcast %union.anon* %4 to i8*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = load i64, i64* %8, align 8

  %10 = load i64, i64* %7, align 8, !tbaa !1240

  %11 = add i64 %10, -8

  %12 = inttoptr i64 %11 to i64*

  store i64 %9, i64* %12

  store i64 %11, i64* %7, align 8, !tbaa !1240

  %13 = load i8, i8* getelementptr inbounds (%Char1Glob_type, %Char1Glob_type* @Char1Glob, i32 0, i32 0, i32 0)

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %17 = icmp eq i8 %13, 65

  %18 = zext i1 %17 to i8

  %19 = getelementptr %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %18, i8* %5, align 1, !tbaa !1283

  %22 = add i64 %10, -16

  %23 = zext i1 %17 to i32

  %24 = inttoptr i64 %22 to i32*

  store i32 %23, i32* %24

  %25 = load i32, i32* bitcast (%BoolGlob_type* @BoolGlob to i32*)

  %26 = inttoptr i64 %22 to i32*

  %27 = load i32, i32* %26

  %28 = or i32 %27, %25

  store i8 0, i8* %14, align 1, !tbaa !1244

  %29 = and i32 %28, 255

  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #10

  %31 = trunc i32 %30 to i8

  %32 = and i8 %31, 1

  %33 = xor i8 %32, 1

  store i8 %33, i8* %15, align 1, !tbaa !1258

  %34 = icmp eq i32 %28, 0

  %35 = zext i1 %34 to i8

  store i8 %35, i8* %19, align 1, !tbaa !1260

  %36 = lshr i32 %28, 31

  %37 = trunc i32 %36 to i8

  store i8 %37, i8* %20, align 1, !tbaa !1261

  store i8 0, i8* %21, align 1, !tbaa !1262

  store i8 0, i8* %16, align 1, !tbaa !1259

  %38 = inttoptr i64 %22 to i32*

  store i32 %28, i32* %38

  store i8 66, i8* getelementptr inbounds (%Char2Glob_type, %Char2Glob_type* @Char2Glob, i32 0, i32 0, i32 0)

  %39 = add i64 %10, -12

  %40 = inttoptr i64 %39 to i32*

  %41 = load i32, i32* %40

  %42 = zext i32 %41 to i64

  store i64 %42, i64* %6, align 8, !tbaa !1240

  %43 = load i64, i64* %7, align 8, !tbaa !1240

  %44 = add i64 %43, 8

  %45 = inttoptr i64 %43 to i64*

  %46 = load i64, i64* %45

  store i64 %46, i64* %8, align 8, !tbaa !1240

  %47 = inttoptr i64 %44 to i64*

  %48 = load i64, i64* %47

  store i64 %48, i64* %3, align 8, !tbaa !1240

  %49 = add i64 %43, 16

  store i64 %49, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400640__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_400640:

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

define %struct.Memory* @sub_401104__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_401104:

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

define %struct.Memory* @sub_400580(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400580:

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

  %10 = icmp eq i64 %9, 4195724

  br i1 %10, label %block_40058c, label %19



block_40058c:                                     ; preds = %block_400580

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %14 = load i64, i64* %13, align 8, !alias.scope !1339, !noalias !1342

  %15 = load i64, i64* %12, align 8, !alias.scope !1339, !noalias !1342

  %16 = inttoptr i64 %7 to i64*

  %17 = load i64, i64* %16

  store i64 %17, i64* %3, align 8, !alias.scope !1339, !noalias !1342

  store i64 %6, i64* %5, align 8, !alias.scope !1339, !noalias !1342

  %18 = tail call i64 @strcpy(i64 %14, i64 %15), !noalias !1339

  store i64 %18, i64* %11, align 8, !alias.scope !1339, !noalias !1342

  ret %struct.Memory* %2



; <label>:19:                                     ; preds = %block_400580

  %20 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %20

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401090___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401090:

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

  %47 = add i64 %1, -2864

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400560__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_4010e6, label %block_4010c6



block_4010e6.loopexit:                            ; preds = %block_4010d0

  br label %block_4010e6



block_4010e6:                                     ; preds = %block_4010e6.loopexit, %block_401090

  %57 = phi %struct.Memory* [ %51, %block_401090 ], [ %119, %block_4010e6.loopexit ]

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



block_4010c6:                                     ; preds = %block_401090

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1244

  store i8 1, i8* %42, align 1, !tbaa !1258

  store i8 1, i8* %44, align 1, !tbaa !1260

  store i8 0, i8* %45, align 1, !tbaa !1261

  store i8 0, i8* %46, align 1, !tbaa !1262

  store i8 0, i8* %43, align 1, !tbaa !1259

  %102 = add i64 %56, 10

  br label %block_4010d0



block_4010d0:                                     ; preds = %block_4010d0, %block_4010c6

  %103 = phi i64 [ 0, %block_4010c6 ], [ %122, %block_4010d0 ]

  %104 = phi i64 [ %102, %block_4010c6 ], [ %150, %block_4010d0 ]

  %105 = phi %struct.Memory* [ %51, %block_4010c6 ], [ %119, %block_4010d0 ]

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

  br i1 %139, label %block_4010e6.loopexit, label %block_4010d0

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400daa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400daa:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i32, i32* bitcast (%IntGlob_type* @IntGlob to i32*)

  %8 = add i32 %7, -100

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %12 = icmp eq i32 %8, 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %14 = lshr i32 %8, 31

  %15 = trunc i32 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %17 = lshr i32 %7, 31

  %18 = xor i32 %14, %17

  %19 = add nuw nsw i32 %18, %17

  %20 = icmp eq i32 %19, 2

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %22 = icmp ne i8 %15, 0

  %23 = xor i1 %22, %20

  %24 = or i1 %12, %23

  %25 = load i64, i64* %6, align 8

  %26 = add i64 %25, -16

  %27 = inttoptr i64 %26 to i64*

  %28 = load i64, i64* %27

  br i1 %24, label %block_400dc7, label %block_400db8



block_400db8:                                     ; preds = %block_400daa

  %29 = inttoptr i64 %28 to i32*

  store i32 0, i32* %29

  br label %block_400dd1



block_400dd1:                                     ; preds = %block_400dc7, %block_400db8

  %30 = phi %struct.Memory* [ %2, %block_400dc7 ], [ %2, %block_400db8 ]

  %31 = add i64 %25, -4

  %32 = inttoptr i64 %31 to i32*

  %33 = load i32, i32* %32

  %34 = zext i32 %33 to i64

  store i64 %34, i64* %4, align 8, !tbaa !1240

  %35 = load i64, i64* %5, align 8

  %36 = add i64 %35, 32

  %37 = icmp ugt i64 %35, -33

  %38 = zext i1 %37 to i8

  store i8 %38, i8* %9, align 1, !tbaa !1244

  %39 = trunc i64 %36 to i32

  %40 = and i32 %39, 255

  %41 = tail call i32 @llvm.ctpop.i32(i32 %40) #10

  %42 = trunc i32 %41 to i8

  %43 = and i8 %42, 1

  %44 = xor i8 %43, 1

  store i8 %44, i8* %10, align 1, !tbaa !1258

  %45 = xor i64 %36, %35

  %46 = lshr i64 %45, 4

  %47 = trunc i64 %46 to i8

  %48 = and i8 %47, 1

  store i8 %48, i8* %11, align 1, !tbaa !1259

  %49 = icmp eq i64 %36, 0

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1260

  %51 = lshr i64 %36, 63

  %52 = trunc i64 %51 to i8

  store i8 %52, i8* %16, align 1, !tbaa !1261

  %53 = lshr i64 %35, 63

  %54 = xor i64 %51, %53

  %55 = add nuw nsw i64 %54, %51

  %56 = icmp eq i64 %55, 2

  %57 = zext i1 %56 to i8

  store i8 %57, i8* %21, align 1, !tbaa !1262

  %58 = add i64 %35, 40

  %59 = inttoptr i64 %36 to i64*

  %60 = load i64, i64* %59

  store i64 %60, i64* %6, align 8, !tbaa !1240

  %61 = inttoptr i64 %58 to i64*

  %62 = load i64, i64* %61

  store i64 %62, i64* %3, align 8, !tbaa !1240

  %63 = add i64 %35, 48

  store i64 %63, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %30



block_400dc7:                                     ; preds = %block_400daa

  %64 = inttoptr i64 %28 to i32*

  store i32 3, i32* %64

  br label %block_400dd1

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400d40_Proc6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400d40:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %12 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %15 = load i64, i64* %14, align 8

  %16 = load i64, i64* %13, align 8, !tbaa !1240

  %17 = add i64 %16, -8

  %18 = inttoptr i64 %17 to i64*

  store i64 %15, i64* %18

  store i64 %17, i64* %14, align 8, !tbaa !1240

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %25 = add i64 %16, -16

  %26 = load i32, i32* %7, align 4

  %27 = inttoptr i64 %25 to i32*

  store i32 %26, i32* %27

  %28 = add i64 %16, -24

  %29 = load i64, i64* %11, align 8

  %30 = inttoptr i64 %28 to i64*

  store i64 %29, i64* %30

  %31 = inttoptr i64 %25 to i32*

  %32 = load i32, i32* %31

  %33 = inttoptr i64 %28 to i64*

  %34 = load i64, i64* %33

  store i64 %34, i64* %11, align 8, !tbaa !1240

  %35 = inttoptr i64 %34 to i32*

  store i32 %32, i32* %35

  %36 = inttoptr i64 %25 to i32*

  %37 = load i32, i32* %36

  %38 = zext i32 %37 to i64

  store i64 %38, i64* %12, align 8, !tbaa !1240

  %39 = add i64 %1, 800

  %40 = add i64 %1, 32

  %41 = add i64 %16, -48

  %42 = inttoptr i64 %41 to i64*

  store i64 %40, i64* %42

  store i64 %41, i64* %13, align 8, !tbaa !1240

  %43 = tail call %struct.Memory* @sub_401060_Func3(%struct.State* nonnull %0, i64 %39, %struct.Memory* %2)

  %44 = load i32, i32* %5, align 4

  %45 = icmp eq i32 %44, 0

  %46 = load i64, i64* %14, align 8

  br i1 %45, label %block_400d69, label %block_400d73



block_400d9b:                                     ; preds = %block_400d8d

  %47 = add i64 %46, -16

  %48 = inttoptr i64 %47 to i64*

  %49 = load i64, i64* %48

  %50 = inttoptr i64 %49 to i32*

  store i32 0, i32* %50

  br label %block_400df4



block_400db8:                                     ; preds = %block_400daa

  %51 = inttoptr i64 %111 to i32*

  store i32 0, i32* %51

  br label %block_400dd1



block_400dd6:                                     ; preds = %block_400d8d

  %52 = add i64 %46, -16

  %53 = inttoptr i64 %52 to i64*

  %54 = load i64, i64* %53

  %55 = inttoptr i64 %54 to i32*

  store i32 1, i32* %55

  br label %block_400df4



block_400df4:                                     ; preds = %block_400d73, %block_400dea, %block_400de5, %block_400dd1, %block_400dd6, %block_400d9b

  %56 = phi %struct.Memory* [ %121, %block_400d73 ], [ %121, %block_400dd6 ], [ %121, %block_400de5 ], [ %90, %block_400dd1 ], [ %121, %block_400dea ], [ %121, %block_400d9b ]

  %57 = add i64 %46, -4

  %58 = inttoptr i64 %57 to i32*

  %59 = load i32, i32* %58

  %60 = zext i32 %59 to i64

  store i64 %60, i64* %8, align 8, !tbaa !1240

  %61 = load i64, i64* %13, align 8

  %62 = add i64 %61, 32

  %63 = icmp ugt i64 %61, -33

  %64 = zext i1 %63 to i8

  store i8 %64, i8* %19, align 1, !tbaa !1244

  %65 = trunc i64 %62 to i32

  %66 = and i32 %65, 255

  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #10

  %68 = trunc i32 %67 to i8

  %69 = and i8 %68, 1

  %70 = xor i8 %69, 1

  store i8 %70, i8* %20, align 1, !tbaa !1258

  %71 = xor i64 %62, %61

  %72 = lshr i64 %71, 4

  %73 = trunc i64 %72 to i8

  %74 = and i8 %73, 1

  store i8 %74, i8* %21, align 1, !tbaa !1259

  %75 = icmp eq i64 %62, 0

  %76 = zext i1 %75 to i8

  store i8 %76, i8* %22, align 1, !tbaa !1260

  %77 = lshr i64 %62, 63

  %78 = trunc i64 %77 to i8

  store i8 %78, i8* %23, align 1, !tbaa !1261

  %79 = lshr i64 %61, 63

  %80 = xor i64 %77, %79

  %81 = add nuw nsw i64 %80, %77

  %82 = icmp eq i64 %81, 2

  %83 = zext i1 %82 to i8

  store i8 %83, i8* %24, align 1, !tbaa !1262

  %84 = add i64 %61, 40

  %85 = inttoptr i64 %62 to i64*

  %86 = load i64, i64* %85

  store i64 %86, i64* %14, align 8, !tbaa !1240

  %87 = inttoptr i64 %84 to i64*

  %88 = load i64, i64* %87

  store i64 %88, i64* %3, align 8, !tbaa !1240

  %89 = add i64 %61, 48

  store i64 %89, i64* %13, align 8, !tbaa !1240

  ret %struct.Memory* %56



block_400dd1:                                     ; preds = %block_400dc7, %block_400db8

  %90 = phi %struct.Memory* [ %121, %block_400dc7 ], [ %121, %block_400db8 ]

  br label %block_400df4



block_400d8d:                                     ; preds = %block_400d73

  %91 = inttoptr i64 %143 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %8, align 8, !tbaa !1240

  %93 = shl i64 %92, 3

  %94 = add i64 %93, add (i64 ptrtoint (%seg_401110__rodata_type* @seg_401110__rodata to i64), i64 8)

  %95 = inttoptr i64 %94 to i64*

  %96 = load i64, i64* %95

  store i64 %96, i64* %9, align 8, !tbaa !1240

  store i64 %96, i64* %3, align 8, !tbaa !1240

  switch i64 %96, label %148 [

    i64 4197787, label %block_400d9b

    i64 4197866, label %block_400dea

    i64 4197802, label %block_400daa

    i64 4197861, label %block_400de5

    i64 4197846, label %block_400dd6

  ]



block_400daa:                                     ; preds = %block_400d8d

  %97 = load i32, i32* bitcast (%IntGlob_type* @IntGlob to i32*)

  %98 = add i32 %97, -100

  %99 = icmp eq i32 %98, 0

  %100 = lshr i32 %98, 31

  %101 = trunc i32 %100 to i8

  %102 = lshr i32 %97, 31

  %103 = xor i32 %100, %102

  %104 = add nuw nsw i32 %103, %102

  %105 = icmp eq i32 %104, 2

  %106 = icmp ne i8 %101, 0

  %107 = xor i1 %106, %105

  %108 = or i1 %99, %107

  %109 = add i64 %46, -16

  %110 = inttoptr i64 %109 to i64*

  %111 = load i64, i64* %110

  br i1 %108, label %block_400dc7, label %block_400db8



block_400d69:                                     ; preds = %block_400d40

  %112 = add i64 %46, -16

  %113 = inttoptr i64 %112 to i64*

  %114 = load i64, i64* %113

  %115 = inttoptr i64 %114 to i32*

  store i32 3, i32* %115

  br label %block_400d73



block_400dc7:                                     ; preds = %block_400daa

  %116 = inttoptr i64 %111 to i32*

  store i32 3, i32* %116

  br label %block_400dd1



block_400de5:                                     ; preds = %block_400d8d

  br label %block_400df4



block_400dea:                                     ; preds = %block_400d8d

  %117 = add i64 %46, -16

  %118 = inttoptr i64 %117 to i64*

  %119 = load i64, i64* %118

  %120 = inttoptr i64 %119 to i32*

  store i32 2, i32* %120

  br label %block_400df4



block_400d73:                                     ; preds = %block_400d69, %block_400d40

  %121 = phi %struct.Memory* [ %43, %block_400d69 ], [ %43, %block_400d40 ]

  %122 = add i64 %46, -8

  %123 = inttoptr i64 %122 to i32*

  %124 = load i32, i32* %123

  %125 = zext i32 %124 to i64

  store i64 %125, i64* %9, align 8, !tbaa !1240

  %126 = add nsw i64 %125, -4

  store i64 %126, i64* %10, align 8, !tbaa !1240

  %127 = icmp ult i32 %124, 4

  %128 = zext i1 %127 to i8

  store i8 %128, i8* %19, align 1, !tbaa !1244

  %129 = trunc i64 %126 to i32

  %130 = and i32 %129, 255

  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #10

  %132 = trunc i32 %131 to i8

  %133 = and i8 %132, 1

  %134 = xor i8 %133, 1

  store i8 %134, i8* %20, align 1, !tbaa !1258

  %135 = xor i64 %126, %125

  %136 = lshr i64 %135, 4

  %137 = trunc i64 %136 to i8

  %138 = and i8 %137, 1

  store i8 %138, i8* %21, align 1, !tbaa !1259

  %139 = icmp eq i64 %126, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %22, align 1, !tbaa !1260

  %141 = lshr i64 %126, 63

  %142 = trunc i64 %141 to i8

  store i8 %142, i8* %23, align 1, !tbaa !1261

  store i8 0, i8* %24, align 1, !tbaa !1262

  %143 = add i64 %46, -24

  %144 = inttoptr i64 %143 to i64*

  store i64 %125, i64* %144

  %145 = add i64 %46, -32

  %146 = inttoptr i64 %145 to i64*

  store i64 %126, i64* %146

  %147 = or i1 %139, %127

  br i1 %147, label %block_400d8d, label %block_400df4



; <label>:148:                                    ; preds = %block_400d8d

  %149 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %96, %struct.Memory* %121)

  ret %struct.Memory* %149

}



; Function Attrs: noinline

define %struct.Memory* @sub_400f80_Func2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #5 {

block_400f80:

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

  %17 = add i64 %14, -40

  store i64 %17, i64* %11, align 8, !tbaa !1240

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %24 = add i64 %14, -24

  %25 = load i64, i64* %10, align 8

  %26 = inttoptr i64 %24 to i64*

  store i64 %25, i64* %26

  %27 = add i64 %14, -32

  %28 = load i64, i64* %9, align 8

  %29 = inttoptr i64 %27 to i64*

  store i64 %28, i64* %29

  %30 = add i64 %14, -36

  %31 = add i64 %1, 23

  %32 = inttoptr i64 %30 to i32*

  store i32 1, i32* %32

  br label %block_400f97



block_400fde:                                     ; preds = %block_400f97

  %33 = add i64 %49, -29

  %34 = inttoptr i64 %33 to i8*

  %35 = load i8, i8* %34

  %36 = sext i8 %35 to i32

  %37 = add nsw i32 %36, -87

  %38 = lshr i32 %37, 31

  %39 = trunc i32 %38 to i8

  %40 = lshr i32 %36, 31

  %41 = xor i32 %38, %40

  %42 = add nuw nsw i32 %41, %40

  %43 = icmp eq i32 %42, 2

  %44 = icmp ne i8 %39, 0

  %45 = xor i1 %44, %43

  %46 = select i1 %45, i64 33, i64 13

  %47 = add i64 %66, %46

  br i1 %45, label %block_400fff, label %block_400feb



block_400f97:                                     ; preds = %block_400fd9, %block_400f80

  %48 = phi i64 [ %31, %block_400f80 ], [ %71, %block_400fd9 ]

  %49 = phi i64 [ %15, %block_400f80 ], [ %198, %block_400fd9 ]

  %50 = phi %struct.Memory* [ %2, %block_400f80 ], [ %70, %block_400fd9 ]

  %51 = add i64 %49, -28

  %52 = inttoptr i64 %51 to i32*

  %53 = load i32, i32* %52

  %54 = add i32 %53, -1

  %55 = icmp eq i32 %54, 0

  %56 = lshr i32 %54, 31

  %57 = trunc i32 %56 to i8

  %58 = lshr i32 %53, 31

  %59 = xor i32 %56, %58

  %60 = add nuw nsw i32 %59, %58

  %61 = icmp eq i32 %60, 2

  %62 = icmp ne i8 %57, 0

  %63 = xor i1 %62, %61

  %64 = or i1 %55, %63

  %65 = select i1 %64, i64 10, i64 71

  %66 = add i64 %48, %65

  br i1 %64, label %block_400fa1, label %block_400fde



block_400ff8:                                     ; preds = %block_400feb

  %67 = add i64 %92, 7

  %68 = inttoptr i64 %51 to i32*

  store i32 7, i32* %68

  br label %block_400fff



block_400fd9:                                     ; preds = %block_400fa1, %block_400fcc

  %69 = phi i64 [ %143, %block_400fcc ], [ %197, %block_400fa1 ]

  %70 = phi %struct.Memory* [ %192, %block_400fcc ], [ %192, %block_400fa1 ]

  %71 = add i64 %69, -66

  br label %block_400f97



block_40102e:                                     ; preds = %block_401018

  %72 = add i64 %166, -28

  %73 = inttoptr i64 %72 to i32*

  %74 = load i32, i32* %73

  %75 = add i32 %74, 7

  %76 = inttoptr i64 %72 to i32*

  store i32 %75, i32* %76

  %77 = add i64 %166, -4

  %78 = inttoptr i64 %77 to i32*

  store i32 1, i32* %78

  br label %block_40104a



block_40100c:                                     ; preds = %block_400fff

  %79 = add i64 %49, -4

  %80 = inttoptr i64 %79 to i32*

  store i32 1, i32* %80

  br label %block_40104a



block_400feb:                                     ; preds = %block_400fde

  %81 = add nsw i32 %36, -90

  %82 = icmp eq i32 %81, 0

  %83 = lshr i32 %81, 31

  %84 = trunc i32 %83 to i8

  %85 = xor i32 %83, %40

  %86 = add nuw nsw i32 %85, %40

  %87 = icmp eq i32 %86, 2

  %88 = icmp ne i8 %84, 0

  %89 = xor i1 %88, %87

  %90 = or i1 %82, %89

  %91 = select i1 %90, i64 13, i64 20

  %92 = add i64 %47, %91

  br i1 %90, label %block_400ff8, label %block_400fff



block_40104a:                                     ; preds = %block_401043, %block_40100c, %block_40102e

  %93 = phi i64 [ %166, %block_401043 ], [ %166, %block_40102e ], [ %49, %block_40100c ]

  %94 = phi %struct.Memory* [ %129, %block_401043 ], [ %129, %block_40102e ], [ %129, %block_40100c ]

  %95 = add i64 %93, -4

  %96 = inttoptr i64 %95 to i32*

  %97 = load i32, i32* %96

  %98 = zext i32 %97 to i64

  store i64 %98, i64* %6, align 8, !tbaa !1240

  %99 = load i64, i64* %11, align 8

  %100 = add i64 %99, 32

  %101 = icmp ugt i64 %99, -33

  %102 = zext i1 %101 to i8

  store i8 %102, i8* %18, align 1, !tbaa !1244

  %103 = trunc i64 %100 to i32

  %104 = and i32 %103, 255

  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #10

  %106 = trunc i32 %105 to i8

  %107 = and i8 %106, 1

  %108 = xor i8 %107, 1

  store i8 %108, i8* %19, align 1, !tbaa !1258

  %109 = xor i64 %100, %99

  %110 = lshr i64 %109, 4

  %111 = trunc i64 %110 to i8

  %112 = and i8 %111, 1

  store i8 %112, i8* %20, align 1, !tbaa !1259

  %113 = icmp eq i64 %100, 0

  %114 = zext i1 %113 to i8

  store i8 %114, i8* %21, align 1, !tbaa !1260

  %115 = lshr i64 %100, 63

  %116 = trunc i64 %115 to i8

  store i8 %116, i8* %22, align 1, !tbaa !1261

  %117 = lshr i64 %99, 63

  %118 = xor i64 %115, %117

  %119 = add nuw nsw i64 %118, %115

  %120 = icmp eq i64 %119, 2

  %121 = zext i1 %120 to i8

  store i8 %121, i8* %23, align 1, !tbaa !1262

  %122 = add i64 %99, 40

  %123 = inttoptr i64 %100 to i64*

  %124 = load i64, i64* %123

  store i64 %124, i64* %12, align 8, !tbaa !1240

  %125 = inttoptr i64 %122 to i64*

  %126 = load i64, i64* %125

  store i64 %126, i64* %3, align 8, !tbaa !1240

  %127 = add i64 %99, 48

  store i64 %127, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %94



block_400fff:                                     ; preds = %block_400feb, %block_400ff8, %block_400fde

  %128 = phi i64 [ %47, %block_400fde ], [ %92, %block_400feb ], [ %67, %block_400ff8 ]

  %129 = phi %struct.Memory* [ %50, %block_400fde ], [ %50, %block_400feb ], [ %50, %block_400ff8 ]

  %130 = inttoptr i64 %33 to i8*

  %131 = load i8, i8* %130

  %132 = sext i8 %131 to i32

  %133 = add nsw i32 %132, -88

  %134 = icmp eq i32 %133, 0

  %135 = select i1 %134, i64 13, i64 25

  %136 = add i64 %128, %135

  br i1 %134, label %block_40100c, label %block_401018



block_400fcc:                                     ; preds = %block_400fa1

  %137 = add i64 %198, -29

  %138 = inttoptr i64 %137 to i8*

  store i8 65, i8* %138

  %139 = add i64 %198, -28

  %140 = inttoptr i64 %139 to i32*

  %141 = load i32, i32* %140

  %142 = add i32 %141, 1

  %143 = add i64 %197, 13

  %144 = inttoptr i64 %139 to i32*

  store i32 %142, i32* %144

  br label %block_400fd9



block_401043:                                     ; preds = %block_401018

  %145 = add i64 %166, -4

  %146 = inttoptr i64 %145 to i32*

  store i32 0, i32* %146

  br label %block_40104a



block_401018:                                     ; preds = %block_400fff

  %147 = add i64 %49, -16

  %148 = inttoptr i64 %147 to i64*

  %149 = load i64, i64* %148

  store i64 %149, i64* %10, align 8, !tbaa !1240

  %150 = add i64 %49, -24

  %151 = inttoptr i64 %150 to i64*

  %152 = load i64, i64* %151

  store i64 %152, i64* %9, align 8, !tbaa !1240

  %153 = add i64 %136, 13

  %154 = load i64, i64* %11, align 8, !tbaa !1240

  %155 = add i64 %154, -8

  %156 = inttoptr i64 %155 to i64*

  store i64 %153, i64* %156

  %157 = inttoptr i64 %155 to i64*

  %158 = load i64, i64* %157

  store i64 %158, i64* %3, align 8, !alias.scope !1344, !noalias !1347

  store i64 %154, i64* %11, align 8, !alias.scope !1344, !noalias !1347

  %159 = tail call i64 @strcmp(i64 %149, i64 %152), !noalias !1344

  %160 = trunc i64 %159 to i32

  %161 = icmp eq i32 %160, 0

  %162 = lshr i32 %160, 31

  %163 = trunc i32 %162 to i8

  %164 = icmp ne i8 %163, 0

  %165 = or i1 %161, %164

  %166 = load i64, i64* %12, align 8

  br i1 %165, label %block_401043, label %block_40102e



block_400fa1:                                     ; preds = %block_400f97

  %167 = add i64 %49, -16

  %168 = inttoptr i64 %167 to i64*

  %169 = load i64, i64* %168

  %170 = sext i32 %53 to i64

  %171 = add i64 %169, %170

  %172 = inttoptr i64 %171 to i8*

  %173 = load i8, i8* %172

  %174 = sext i8 %173 to i64

  %175 = and i64 %174, 4294967295

  store i64 %175, i64* %10, align 8, !tbaa !1240

  %176 = add i64 %49, -24

  %177 = inttoptr i64 %176 to i64*

  %178 = load i64, i64* %177

  %179 = add i32 %53, 1

  %180 = zext i32 %179 to i64

  store i64 %180, i64* %8, align 8, !tbaa !1240

  %181 = sext i32 %179 to i64

  store i64 %181, i64* %7, align 8, !tbaa !1240

  %182 = add i64 %178, %181

  %183 = inttoptr i64 %182 to i8*

  %184 = load i8, i8* %183

  %185 = sext i8 %184 to i64

  %186 = and i64 %185, 4294967295

  store i64 %186, i64* %9, align 8, !tbaa !1240

  %187 = add i64 %66, -113

  %188 = add i64 %66, 34

  %189 = load i64, i64* %11, align 8, !tbaa !1240

  %190 = add i64 %189, -8

  %191 = inttoptr i64 %190 to i64*

  store i64 %188, i64* %191

  store i64 %190, i64* %11, align 8, !tbaa !1240

  %192 = tail call %struct.Memory* @sub_400f30_Func1(%struct.State* nonnull %0, i64 %187, %struct.Memory* %50)

  %193 = load i32, i32* %5, align 4

  %194 = load i64, i64* %3, align 8

  %195 = icmp eq i32 %193, 0

  %196 = select i1 %195, i64 9, i64 22

  %197 = add i64 %194, %196

  %198 = load i64, i64* %12, align 8

  br i1 %195, label %block_400fcc, label %block_400fd9

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400d20_Proc5(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400d20:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i8 65, i8* getelementptr inbounds (%Char1Glob_type, %Char1Glob_type* @Char1Glob, i32 0, i32 0, i32 0)

  store i32 0, i32* bitcast (%BoolGlob_type* @BoolGlob to i32*)

  %11 = add i64 %8, -12

  %12 = inttoptr i64 %11 to i32*

  %13 = load i32, i32* %12

  %14 = zext i32 %13 to i64

  store i64 %14, i64* %4, align 8, !tbaa !1240

  %15 = inttoptr i64 %9 to i64*

  %16 = load i64, i64* %15

  store i64 %16, i64* %6, align 8, !tbaa !1240

  %17 = inttoptr i64 %8 to i64*

  %18 = load i64, i64* %17

  store i64 %18, i64* %3, align 8, !tbaa !1240

  %19 = add i64 %8, 8

  store i64 %19, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400680_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400680:

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

  store i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64* %4, align 8, !tbaa !1240

  store i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3)), i64 1), i64* %5, align 8, !tbaa !1240

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !1283

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3)), i64 1) to i32), i32 255)) #10

  %19 = trunc i32 %18 to i8

  %20 = and i8 %19, 1

  %21 = xor i8 %20, 1

  store i8 %21, i8* %13, align 1, !tbaa !1283

  store i8 0, i8* %14, align 1, !tbaa !1283

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !1283

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !1283

  store i8 0, i8* %17, align 1, !tbaa !1283

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64), i64 4294967295), i64 ptrtoint (%seg_602070__bss_type* @seg_602070__bss to i64)), i64 3)), i64 1), i64 0), label %block_4006b8, label %block_4006a3



block_4006b8:                                     ; preds = %block_4006a3, %block_400680

  %22 = inttoptr i64 %10 to i64*

  %23 = load i64, i64* %22

  store i64 %23, i64* %7, align 8, !tbaa !1240

  %24 = inttoptr i64 %9 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %9, 8

  store i64 %26, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_4006a3:                                     ; preds = %block_400680

  store i64 0, i64* %4, align 8, !tbaa !1240

  store i8 0, i8* %12, align 1, !tbaa !1244

  store i8 1, i8* %13, align 1, !tbaa !1258

  store i8 1, i8* %15, align 1, !tbaa !1260

  store i8 0, i8* %16, align 1, !tbaa !1261

  store i8 0, i8* %17, align 1, !tbaa !1262

  store i8 0, i8* %14, align 1, !tbaa !1259

  br label %block_4006b8

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400610__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195856, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400610__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195856, %struct.Memory* null)

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

define i64 @callback_sub_4006f0_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196080, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4006f0_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196080, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4006c0___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196032, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_4006c0___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196032, %struct.Memory* null)

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

  %27 = tail call i64 %26(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25) #10

  store i64 %27, i64* %5, align 8

  %28 = inttoptr i64 %19 to i64*

  %29 = load i64, i64* %28

  store i64 %29, i64* %4, align 8

  store i64 %20, i64* %10, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401100___libc_csu_fini() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198656, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401100___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4198656, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401090___libc_csu_init() #8 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198544, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = add i64 %3, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_401090___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4198544, %struct.Memory* null)

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

  store i64 4196096, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %10 = tail call %struct.Memory* @sub_400700_main(%struct.State* nonnull @__mcsema_reg_state, i64 4196096, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %11

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_604a40___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400600_exit(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_604a50_memcpy(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %17 = tail call i64 @memcpy(i64 %10, i64 %11, i64 %12)

  store i64 %17, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_604a60_times(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %13 = tail call i64 @times(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_604a58_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_400590_strcpy(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_604a38_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_604a30_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

define %struct.Memory* @ext_4005c0_strcmp(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #9 {

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

  %15 = tail call i64 @strcmp(i64 %9, i64 %10)

  store i64 %15, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc7(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197888, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400e00_Proc7(%struct.State* nonnull @__mcsema_reg_state, i64 4197888, %struct.Memory* null)

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

  store i64 4195680, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400560__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195680, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Func3(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198496, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401060_Func3(%struct.State* nonnull @__mcsema_reg_state, i64 4198496, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc4(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197600, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400ce0_Proc4(%struct.State* nonnull @__mcsema_reg_state, i64 4197600, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc6(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197696, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400d40_Proc6(%struct.State* nonnull @__mcsema_reg_state, i64 4197696, %struct.Memory* null)

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

  store i64 4198660, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_401104__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4198660, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @Func2(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198272, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400f80_Func2(%struct.State* nonnull @__mcsema_reg_state, i64 4198272, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @Proc1(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197120, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400b00_Proc1(%struct.State* nonnull @__mcsema_reg_state, i64 4197120, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc5(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197664, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400d20_Proc5(%struct.State* nonnull @__mcsema_reg_state, i64 4197664, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc8(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197936, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400e30_Proc8(%struct.State* nonnull @__mcsema_reg_state, i64 4197936, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc2(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

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

  %18 = tail call %struct.Memory* @sub_400c10_Proc2(%struct.State* nonnull @__mcsema_reg_state, i64 4197392, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Func1(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198192, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400f30_Func1(%struct.State* nonnull @__mcsema_reg_state, i64 4198192, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @Proc3(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #8 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197488, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %18 = tail call %struct.Memory* @sub_400c70_Proc3(%struct.State* nonnull @__mcsema_reg_state, i64 4197488, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nobuiltin noinline

define i64 @Proc0(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #6 {

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

  %18 = tail call %struct.Memory* @sub_400720_Proc0(%struct.State* nonnull @__mcsema_reg_state, i64 4196128, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %19

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #10 {

  %1 = tail call i64 @callback_sub_401100___libc_csu_fini()

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

  %3 = tail call i64 @callback_sub_401090___libc_csu_init()

  ret void

}



; Function Attrs: noinline optnone

define %struct.State* @__mcsema_debug_get_reg_state() #11 {

  ret %struct.State* @__mcsema_reg_state

}



; Function Attrs: noreturn nounwind

declare void @llvm.trap() #12



attributes #0 = { nounwind readnone speculatable }

attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

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

attributes #13 = { alwaysinline nobuiltin nounwind }



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

!1264 = distinct !{!1264, !1265, !"ext_604a40___libc_start_main: argument 0"}

!1265 = distinct !{!1265, !"ext_604a40___libc_start_main"}

!1266 = !{!1267}

!1267 = distinct !{!1267, !1265, !"ext_604a40___libc_start_main: argument 1"}

!1268 = !{!1269}

!1269 = distinct !{!1269, !1270, !"ext_400600_exit: argument 0"}

!1270 = distinct !{!1270, !"ext_400600_exit"}

!1271 = !{!1272}

!1272 = distinct !{!1272, !1270, !"ext_400600_exit: argument 1"}

!1273 = !{!1274}

!1274 = distinct !{!1274, !1275, !"ext_604a50_memcpy: argument 0"}

!1275 = distinct !{!1275, !"ext_604a50_memcpy"}

!1276 = !{!1277}

!1277 = distinct !{!1277, !1275, !"ext_604a50_memcpy: argument 1"}

!1278 = !{!1279}

!1279 = distinct !{!1279, !1280, !"ext_604a50_memcpy: argument 0"}

!1280 = distinct !{!1280, !"ext_604a50_memcpy"}

!1281 = !{!1282}

!1282 = distinct !{!1282, !1280, !"ext_604a50_memcpy: argument 1"}

!1283 = !{!1242, !1242, i64 0}

!1284 = !{!1285}

!1285 = distinct !{!1285, !1286, !"ext_604a60_times: argument 0"}

!1286 = distinct !{!1286, !"ext_604a60_times"}

!1287 = !{!1288}

!1288 = distinct !{!1288, !1286, !"ext_604a60_times: argument 1"}

!1289 = !{!1290}

!1290 = distinct !{!1290, !1291, !"ext_604a60_times: argument 0"}

!1291 = distinct !{!1291, !"ext_604a60_times"}

!1292 = !{!1293}

!1293 = distinct !{!1293, !1291, !"ext_604a60_times: argument 1"}

!1294 = !{!1295}

!1295 = distinct !{!1295, !1296, !"ext_604a58_malloc: argument 0"}

!1296 = distinct !{!1296, !"ext_604a58_malloc"}

!1297 = !{!1298}

!1298 = distinct !{!1298, !1296, !"ext_604a58_malloc: argument 1"}

!1299 = !{!1300}

!1300 = distinct !{!1300, !1301, !"ext_604a58_malloc: argument 0"}

!1301 = distinct !{!1301, !"ext_604a58_malloc"}

!1302 = !{!1303}

!1303 = distinct !{!1303, !1301, !"ext_604a58_malloc: argument 1"}

!1304 = !{!1305}

!1305 = distinct !{!1305, !1306, !"ext_400590_strcpy: argument 0"}

!1306 = distinct !{!1306, !"ext_400590_strcpy"}

!1307 = !{!1308}

!1308 = distinct !{!1308, !1306, !"ext_400590_strcpy: argument 1"}

!1309 = !{!1310}

!1310 = distinct !{!1310, !1311, !"ext_400590_strcpy: argument 0"}

!1311 = distinct !{!1311, !"ext_400590_strcpy"}

!1312 = !{!1313}

!1313 = distinct !{!1313, !1311, !"ext_400590_strcpy: argument 1"}

!1314 = !{!1315}

!1315 = distinct !{!1315, !1316, !"ext_604a38_gettimeofday: argument 0"}

!1316 = distinct !{!1316, !"ext_604a38_gettimeofday"}

!1317 = !{!1318}

!1318 = distinct !{!1318, !1316, !"ext_604a38_gettimeofday: argument 1"}

!1319 = !{!1320}

!1320 = distinct !{!1320, !1321, !"ext_604a60_times: argument 0"}

!1321 = distinct !{!1321, !"ext_604a60_times"}

!1322 = !{!1323}

!1323 = distinct !{!1323, !1321, !"ext_604a60_times: argument 1"}

!1324 = !{!1325}

!1325 = distinct !{!1325, !1326, !"ext_604a38_gettimeofday: argument 0"}

!1326 = distinct !{!1326, !"ext_604a38_gettimeofday"}

!1327 = !{!1328}

!1328 = distinct !{!1328, !1326, !"ext_604a38_gettimeofday: argument 1"}

!1329 = !{!1330}

!1330 = distinct !{!1330, !1331, !"ext_400590_strcpy: argument 0"}

!1331 = distinct !{!1331, !"ext_400590_strcpy"}

!1332 = !{!1333}

!1333 = distinct !{!1333, !1331, !"ext_400590_strcpy: argument 1"}

!1334 = !{!1335}

!1335 = distinct !{!1335, !1336, !"ext_604a30_printf: argument 0"}

!1336 = distinct !{!1336, !"ext_604a30_printf"}

!1337 = !{!1338}

!1338 = distinct !{!1338, !1336, !"ext_604a30_printf: argument 1"}

!1339 = !{!1340}

!1340 = distinct !{!1340, !1341, !"ext_400590_strcpy: argument 0"}

!1341 = distinct !{!1341, !"ext_400590_strcpy"}

!1342 = !{!1343}

!1343 = distinct !{!1343, !1341, !"ext_400590_strcpy: argument 1"}

!1344 = !{!1345}

!1345 = distinct !{!1345, !1346, !"ext_4005c0_strcmp: argument 0"}

!1346 = distinct !{!1346, !"ext_4005c0_strcmp"}

!1347 = !{!1348}

!1348 = distinct !{!1348, !1346, !"ext_4005c0_strcmp: argument 1"}

