; ModuleID = 'is.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_400560__plt_type = type <{ [12 x i8], i32, [112 x i8] }>

%seg_4005e0__text_type = type <{ [60 x i8], i32, [1228 x i8], i32, [3874 x i8] }>

%seg_401a20__rodata_type = type <{ [4 x i8], [27 x i8], [46 x i8], [38 x i8], [44 x i8], [37 x i8], [39 x i8], [39 x i8], [25 x i8], [45 x i8], [45 x i8], [45 x i8], [37 x i8], [37 x i8], [20 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [64 x i8], [39 x i8], [34 x i8], [21 x i8], [95 x i8], [46 x i8], [6 x i8], [56 x i8], [11 x i8], [2 x i8], [57 x i8], [25 x i8], [19 x i8], [15 x i8], [12 x i8], [25 x i8], [3 x i8], [12 x i8], [6 x i8], [12 x i8], [4 x i8], [6 x i8], [4 x i8], [12 x i8], [29 x i8], [22 x i8], [25 x i8], [35 x i8], [35 x i8], [49 x i8] }>

%seg_602e10__init_array_type = type <{ i64, i64 }>

%seg_602ff0__got_type = type <{ i64, i64 }>

%seg_603000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64 }>

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

%seg_6031f0__bss_type = type <{ [8 x i8], [8 x i8], [512 x i8], [512 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [16 x i8] }>

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

@stdout = external global i64, align 16

@seg_400560__plt = internal global %seg_400560__plt_type <{ [12 x i8] c"\FF5\A2* \00\FF%\A4* \00", i32 0, [112 x i8] c"\FF%\A2* \00h\00\00\00\00\E9\E0\FF\FF\FF\FF%\9A* \00h\01\00\00\00\E9\D0\FF\FF\FF\FF%\92* \00h\02\00\00\00\E9\C0\FF\FF\FF\FF%\8A* \00h\03\00\00\00\E9\B0\FF\FF\FF\FF%\82* \00h\04\00\00\00\E9\A0\FF\FF\FF\FF%z* \00h\05\00\00\00\E9\90\FF\FF\FF\FF%r* \00h\06\00\00\00\E9\80\FF\FF\FF" }>

@seg_4005e0__text = internal global %seg_4005e0__text_type <{ [60 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\10\1A@\00H\C7\C1\A0\19@\00H\C7\C70\14@\00\FF\15\E6) \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00", i32 0, [1228 x i8] c"U\B8\E81`\00H=\E81`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF\E81`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE\E81`\00UH\81\EE\E81`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF\E81`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=a+ \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05O+ \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5AWAVAUATSH\81\EC\08\01\00\00@\88\F0L\8BUXL\8B]PH\8B]HL\8Bu@L\8B}8L\8Be0L\8Bm(H\8Bu \88E\9F\8BE\18H\89u\90H\8Bu\10H\89u\88H\BE$\1A@\00\00\00\00\00H\89}\D0@\8A}\9F@\88}\CF\89U\C8\89M\C4D\89E\C0D\89M\BC\F2\0F\11E\B0\F2\0F\11M\A8H\8B}\D0H\89}\80H\89\F7H\8Bu\80\89\85|\FF\FF\FF\B0\00L\89\9Dp\FF\FF\FFH\89\9Dh\FF\FF\FFL\89\B5`\FF\FF\FFL\89\BDX\FF\FF\FFL\89\A5P\FF\FF\FFL\89\ADH\FF\FF\FFL\89\95@\FF\FF\FF\E8\FC\FD\FF\FFH\BF?\1A@\00\00\00\00\00\0F\BEu\CF\89\85<\FF\FF\FF\B0\00\E8\E1\FD\FF\FF\83}\C0\00\89\858\FF\FF\FF\0F\85?\00\00\00HcE\C8H\89E\A0\83}\C4\00\0F\84\0D\00\00\00HcE\C4H\0F\AFE\A0H\89E\A0H\BFm\1A@\00\00\00\00\00H\8Bu\A0\B0\00\E8\9D\FD\FF\FF\89\854\FF\FF\FF\E9 \00\00\00H\BF\93\1A@\00\00\00\00\00\8Bu\C8\8BU\C4\8BM\C0\B0\00\E8x\FD\FF\FF\89\850\FF\FF\FFH\BF\BF\1A@\00\00\00\00\00\8Bu\BC\B0\00\E8^\FD\FF\FFH\BF\E4\1A@\00\00\00\00\00\F2\0F\10E\B0\89\85,\FF\FF\FF\B0\01\E8B\FD\FF\FFH\BF\0B\1B@\00\00\00\00\00\F2\0F\10E\A8\89\85(\FF\FF\FF\B0\01\E8&\FD\FF\FFH\BF2\1B@\00\00\00\00\00H\8Bu\10\89\85$\FF\FF\FF\B0\00\E8\0B\FD\FF\FF\83}\18\00\89\85 \FF\FF\FF\0F\8D\1C\00\00\00H\BFK\1B@\00\00\00\00\00\B0\00\E8\EA\FC\FF\FF\89\85\1C\FF\FF\FF\E9B\00\00\00\83}\18\00\0F\84\1C\00\00\00H\BFx\1B@\00\00\00\00\00\B0\00\E8\C4\FC\FF\FF\89\85\18\FF\FF\FF\E9\17\00\00\00H\BF\A5\1B@\00\00\00\00\00\B0\00\E8\A8\FC\FF\FF\89\85\14\FF\FF\FF\E9\00\00\00\00H\BF\D2\1B@\00\00\00\00\00H\8Bu \B0\00\E8\88\FC\FF\FFH\BF\F7\1B@\00\00\00\00\00H\8Bu(\89\85\10\FF\FF\FF\B0\00\E8m\FC\FF\FFH\BF\1C\1C@\00\00\00\00\00\89\85\0C\FF\FF\FF\B0\00\E8V\FC\FF\FFH\BF0\1C@\00\00\00\00\00H\8Bu0\89\85\08\FF\FF\FF\B0\00\E8;\FC\FF\FFH\BFG\1C@\00\00\00\00\00H\8Bu8\89\85\04\FF\FF\FF\B0\00\E8 \FC\FF\FFH\BF^\1C@\00\00\00\00\00H\8Bu@\89\85\00\FF\FF\FF\B0\00\E8\05\FC\FF\FFH\BFu\1C@\00\00\00\00\00H\8BuH\89\85\FC\FE\FF\FF\B0\00\E8\EA\FB\FF\FFH\BF\8C\1C@\00\00\00\00\00H\8BuP\89\85\F8\FE\FF\FF\B0\00\E8\CF\FB\FF\FFH\BF\A3\1C@\00\00\00\00\00H\8BuX\89\85\F4\FE\FF\FF\B0\00\E8\B4\FB\FF\FFH\BF\BA\1C@\00\00\00\00\00\89\85\F0\FE\FF\FF\B0\00\E8\9D\FB\FF\FFH\BF\E3\1C@\00\00\00\00\00\89\85\EC\FE\FF\FF\B0\00\E8\86\FB\FF\FFH\BF\0A\1D@\00\00\00\00\00\89\85\E8\FE\FF\FF\B0\00\E8o\FB\FF\FFH\BF,\1D@\00\00\00\00\00\89\85\E4\FE\FF\FF\B0\00\E8X\FB\FF\FFH\BFA\1D@\00\00\00\00\00\89\85\E0\FE\FF\FF\B0\00\E8A\FB\FF\FFH\BF\BB\1C@\00\00\00\00\00\89\85\DC\FE\FF\FF\B0\00\E8*\FB\FF\FF\89\85\D8\FE\FF\FFH\81\C4\08\01\00\00[A\5CA]A^A_]\C3f\90UH\89\E5\0FW\C0\89}\FCHcE\FC\F2\0F\11\04\C5\002`\00]\C3\0F\1F\80\00\00\00\00UH\89\E5H\83\EC\10\89}\FC\E8 \00\00\00HcE\FC\F2\0F\11\04\C5\004`\00H\83\C4\10]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\8D}\F8\E8?\0E\00\00\F2\0F\10E\F8H\83\C4\10]\C3", i32 0, [3874 x i8] c"UH\89\E5H\83\EC \89}\FC\E8\D0\FF\FF\FF\F2\0F\11E\E8\F2\0F\10E\E8HcE\FC\F2\0F\5C\04\C5\004`\00\F2\0F\11E\F0\F2\0F\10E\F0HcE\FC\F2\0FX\04\C5\002`\00\F2\0F\11\04\C5\002`\00H\83\C4 ]\C3\0F\1F\00UH\89\E5\89}\FCHcE\FC\F2\0F\10\04\C5\002`\00]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5\B8\00\00\00\02\89\C7\E8@\FA\FF\FF\B9\00\00 \00\89\CFH\89\04%HF`\00\E8,\FA\FF\FF\B9\00\00\00\02\89\CFH\89\04%@F`\00\E8\18\FA\FF\FF\B9\14\00\00\00\89\CFH\89\04%\88V`\00\E8\04\FA\FF\FFH\89\04%06`\00]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5H\8B\04%HF`\00H\89\C7\E8\9C\F9\FF\FFH\8B\04%@F`\00H\89\C7\E8\8C\F9\FF\FFH\8B\04%\88V`\00H\89\C7\E8|\F9\FF\FFH\8B\04%06`\00H\89\C7\E8l\F9\FF\FF]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0\83<%\006`\00\00\0F\85\DD\00\00\00\F2\0F\10\05.\11\00\00\F2\0F\11\04%\086`\00\F2\0F\11\04%\106`\00\F2\0F\11\04%\186`\00\F2\0F\11\04% 6`\00\C7E\A4\01\00\00\00\83}\A4\17\0F\8FB\00\00\00\F2\0F\10\05\F9\10\00\00\F2\0F\10\0D\F9\10\00\00\F2\0FY\0C%\086`\00\F2\0F\11\0C%\086`\00\F2\0FY\04%\186`\00\F2\0F\11\04%\186`\00\8BE\A4\83\C0\01\89E\A4\E9\B4\FF\FF\FF\C7E\A4\01\00\00\00\83}\A4.\0F\8FB\00\00\00\F2\0F\10\05\A6\10\00\00\F2\0F\10\0D\A6\10\00\00\F2\0FY\0C%\106`\00\F2\0F\11\0C%\106`\00\F2\0FY\04% 6`\00\F2\0F\11\04% 6`\00\8BE\A4\83\C0\01\89E\A4\E9\B4\FF\FF\FF\C7\04%\006`\00\01\00\00\00\F2\0F\10\04%\086`\00H\8BE\F0\F2\0FY\00\F2\0F\11E\E8\F2\0F,M\E8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\C8H\8BE\F0\F2\0F\10\00\F2\0F\10\0C%\186`\00\F2\0FYM\C8\F2\0F\5C\C1\F2\0F\11E\C0\F2\0F\10\04%\086`\00H\8BE\F8\F2\0FY\00\F2\0F\11E\E8\F2\0F,M\E8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\B8H\8BE\F8\F2\0F\10\00\F2\0F\10\0C%\186`\00\F2\0FYM\B8\F2\0F\5C\C1\F2\0F\11E\B0\F2\0F\10E\C8\F2\0FYE\B0\F2\0F\10M\C0\F2\0FYM\B8\F2\0FX\C1\F2\0F\11E\E8\F2\0F\10\04%\086`\00\F2\0FYE\E8\F2\0F,\C8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\E0\F2\0F\10E\E8\F2\0F\10\0C%\186`\00\F2\0FYM\E0\F2\0F\5C\C1\F2\0F\11E\A8\F2\0F\10\04%\186`\00\F2\0FYE\A8\F2\0F\10M\C0\F2\0FYM\B0\F2\0FX\C1\F2\0F\11E\D8\F2\0F\10\04%\106`\00\F2\0FYE\D8\F2\0F,\C8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\D0\F2\0F\10E\D8\F2\0F\10\0C% 6`\00\F2\0FYM\D0\F2\0F\5C\C1H\8BE\F8\F2\0F\11\00\F2\0F\10\04%\106`\00H\8BE\F8\F2\0FY\00]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \F2\0F\11E\F8\F2\0F\11M\F0\C7E\E0\00\00\02\00\C7E\E4\00\00\00\00\81}\E4\00\00\80\00\0F\8D\84\00\00\00H\8D}\F8H\8Du\F0\E8f\FD\FF\FFH\8D}\F8H\8Du\F0\F2\0F\11E\E8\E8T\FD\FF\FFH\8D}\F8H\8Du\F0\F2\0FXE\E8\F2\0F\11E\E8\E8=\FD\FF\FFH\8D}\F8H\8Du\F0\F2\0FXE\E8\F2\0F\11E\E8\E8&\FD\FF\FF\F2\0FXE\E8\F2\0F\11E\E8\8BE\E0\F2\0F*\C0\F2\0FYE\E8\F2\0F,\C0H\8B4%HF`\00Hc}\E4\89\04\BE\8BE\E4\83\C0\01\89E\E4\E9o\FF\FF\FFH\83\C4 ]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10\C7E\FC\00\00\00\00\81}\FC\00\00\80\00\0F\8DO\00\00\00H\8B\04%\88V`\00HcM\FC\8B\14\88H\8B\04%HF`\00H\8B\0C%\90V`\00H\8B4%\88V`\00Hc}\FCHc4\BED\8B\04\B1A\83\C0\FFD\89\04\B1Ic\C8\89\14\88\8BE\FC\83\C0\01\89E\FC\E9\A4\FF\FF\FF\C7E\F8\00\00\00\00\C7E\FC\01\00\00\00\81}\FC\00\00\80\00\0F\8DE\00\00\00H\8B\04%HF`\00\8BM\FC\83\E9\01Hc\D1\8B\0C\90H\8B\04%HF`\00HcU\FC;\0C\90\0F\8E\09\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\00\00\00\00\8BE\FC\83\C0\01\89E\FC\E9\AE\FF\FF\FF\83}\F8\00\0F\84-\00\00\00H\BF\A0\1D@\00\00\00\00\00Hcu\F8\B0\00\E8v\F5\FF\FFH\8B<%\F01`\00\89E\F4\E8\96\F5\FF\FF\89E\F0\E9\11\00\00\00\8B\04%`0`\00\83\C0\01\89\04%`0`\00H\83\C4\10]\C3\0F\1F\80\00\00\00\00UH\89\E5H\83\EC@\B8\00\00\08\00\89}\FC\C7E\DC\09\00\00\00\8B}\FCH\8B\0C%HF`\00HcU\FC\89<\91+E\FCH\8B\0C%HF`\00\8B}\FC\83\C7\0AHc\D7\89\04\91\C7E\F8\00\00\00\00\83}\F8\05\0F\8D4\00\00\00H\8B\04%HF`\00HcM\F8Hc\0C\8DpV`\00\8B\14\88H\8B\04%06`\00HcM\F8\89\14\88\8BE\F8\83\C0\01\89E\F8\E9\C2\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\00\04\00\00\0F\8D\1D\00\00\00HcE\F8\C7\04\85@6`\00\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\D6\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\00\00\80\00\0F\8D6\00\00\00H\8B\04%HF`\00HcM\F8\8B\14\88\8BM\DC\D3\FAHc\C2\8B\14\85@6`\00\83\C2\01\89\14\85@6`\00\8BE\F8\83\C0\01\89E\F8\E9\BD\FF\FF\FF\C7\04%PF`\00\00\00\00\00\C7E\F8\01\00\00\00\81}\F8\00\04\00\00\0F\8D9\00\00\00\8BE\F8\83\E8\01Hc\C8\8B\04\8DPF`\00\8BU\F8\83\EA\01Hc\CA\03\04\8D@6`\00HcM\F8\89\04\8DPF`\00\8BE\F8\83\C0\01\89E\F8\E9\BA\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\00\00\80\00\0F\8DR\00\00\00H\8B\04%HF`\00HcM\F8\8B\14\88\89U\D8\8BU\D8H\8B\04%\88V`\00\8Bu\D8\8BM\DC\D3\FEHc\FE\8B4\BDPF`\00A\89\F0A\83\C0\01D\89\04\BDPF`\00Hc\FE\89\14\B8\8BE\F8\83\C0\01\89E\F8\E9\A1\FF\FF\FFH\8B\04%\88V`\00H\89E\E0\C7E\F8\00\00\00\00\81}\F8\00\00\08\00\0F\8D!\00\00\00H\8B\04%@F`\00HcM\F8\C7\04\88\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\D2\FF\FF\FFH\8B\04%@F`\00H\89E\E8\C7E\F8\00\00\00\00\81}\F8\00\00\80\00\0F\8D'\00\00\00H\8BE\E8H\8BM\E0HcU\F8Hc\0C\91\8B4\88\83\C6\01\894\88\8BE\F8\83\C0\01\89E\F8\E9\CC\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\FF\FF\07\00\0F\8D,\00\00\00H\8BE\E8HcM\F8\8B\14\88H\8BE\E8\8Bu\F8\83\C6\01Hc\CE\03\14\88\89\14\88\8BE\F8\83\C0\01\89E\F8\E9\C7\FF\FF\FF\C7E\F8\00\00\00\00\83}\F8\05\0F\8D\1E\01\00\001\C0H\8B\0C%06`\00HcU\F8\8B4\91\89u\F4;E\F4\0F\8D\EE\00\00\00\81}\F4\FF\FF\7F\00\0F\8F\E1\00\00\00H\8BE\E8\8BM\F4\83\E9\01Hc\D1\8B\0C\90\89M\D4\C7E\D0\00\00\00\00\83}\F8\02\0F\8FT\00\00\00\8BE\D4HcM\F8\8B\14\8DPV`\00\8Bu\FC\83\EE\01\01\F29\D0\0F\84 \00\00\00H\BF\CE\1D@\00\00\00\00\00\C7E\D0\01\00\00\00\B0\00\E8%\F2\FF\FF\89E\CC\E9\11\00\00\00\8B\04%`0`\00\83\C0\01\89\04%`0`\00\E9@\00\00\00\8BE\D4HcM\F8\8B\14\8DPV`\00\8Bu\FC\83\EE\01)\F29\D0\0F\84\0C\00\00\00\C7E\D0\01\00\00\00\E9\11\00\00\00\8B\04%`0`\00\83\C0\01\89\04%`0`\00\E9\00\00\00\00\83}\D0\01\0F\85\1A\00\00\00H\BF\D4\1D@\00\00\00\00\00\8Bu\FC\8BU\F8\B0\00\E8\A6\F1\FF\FF\89E\C8\E9\00\00\00\00\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\D8\FE\FF\FF\83}\FC\0A\0F\85\0C\00\00\00H\8BE\E8H\89\04%\90V`\00H\83\C4@]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5AWAVAUATSH\81\EC\E8\00\00\00\C7E\D4\00\00\00\00\89}\D0H\89u\C8\E8\09\F7\FF\FFH\BF\0C\1E@\00\00\00\00\00H\BE\17\1E@\00\00\00\00\00\C7E\BC\00\00\00\00\E8Y\F1\FF\FFH\89E\A8H\83\F8\00\0F\84\13\00\00\00H\8B}\A8\E8\F2\F0\FF\FF\C7E\BC\01\00\00\00\89E\941\FF\E8\E1\F5\FF\FF\83}\BC\00\0F\84\1E\00\00\00\BF\01\00\00\00\E8\CD\F5\FF\FF\BF\02\00\00\00\E8\C3\F5\FF\FF\BF\03\00\00\00\E8\B9\F5\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\03\00\00\00\E8\C5\F5\FF\FF\C7E\C4\00\00\00\00\83}\C4\05\0F\8D:\00\00\00HcE\C4\8B\0C\85\F00`\00HcE\C4\89\0C\85pV`\00HcE\C4\8B\0C\85\101`\00HcE\C4\89\0C\85PV`\00\8BE\C4\83\C0\01\89E\C4\E9\BC\FF\FF\FFH\BF\19\1E@\00\00\00\00\00\B0\00\E8Y\F0\FF\FFH\BFR\1E@\00\00\00\00\00\B9\00\00\80\00\89\CE\BAA\00\00\00\89E\90\B0\00\E89\F0\FF\FFH\BFk\1E@\00\00\00\00\00\BE\0A\00\00\00\89E\8C\B0\00\E8 \F0\FF\FF\83}\BC\00\89E\88\0F\84\0A\00\00\00\BF\01\00\00\00\E8\19\F5\FF\FF\F2\0F\10\05\E9\07\00\00\F2\0F\10\0D\E9\07\00\00\E8\D4\F8\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\01\00\00\00\E8@\F5\FF\FF\BF\01\00\00\00\E8\96\FA\FF\FFH\BF~\1E@\00\00\00\00\00\C7\04%`0`\00\00\00\00\00\B0\00\E8\BA\EF\FF\FF1\FF\89E\84\E8\C0\F4\FF\FF\C7E\C0\01\00\00\00\83}\C0\0A\0F\8F-\00\00\00H\BF\8D\1E@\00\00\00\00\00\8Bu\C0\B0\00\E8\8B\EF\FF\FF\8B}\C0\89E\80\E8@\FA\FF\FF\8BE\C0\83\C0\01\89E\C0\E9\C9\FF\FF\FF1\FF\E8\CB\F4\FF\FF1\FF\E8\14\F5\FF\FF\F2\0F\11E\B0\83}\BC\00\0F\84\0A\00\00\00\BF\02\00\00\00\E8[\F4\FF\FF\E8\E6\F8\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\02\00\00\00\E8\92\F4\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\03\00\00\00\E8~\F4\FF\FFH\BF\99\1E@\00\00\00\00\00\8B4%`0`\00\B0\00\E8\06\EF\FF\FF\83<%`0`\003\89\85|\FF\FF\FF\0F\84\0B\00\00\00\C7\04%`0`\00\00\00\00\00H\BF\B2\1E@\00\00\00\00\00\BEA\00\00\00\BA\00\00\02\00\B9@\00\00\00E1\C0A\B9\0A\00\00\00H\B8\B5\1E@\00\00\00\00\00I\BA\C1\1E@\00\00\00\00\00I\BB\C7\1E@\00\00\00\00\00H\BB\D3\1E@\00\00\00\00\00I\BE\D7\1E@\00\00\00\00\00I\BF\DD\1E@\00\00\00\00\00I\BC\E1\1E@\00\00\00\00\00I\BD\ED\1E@\00\00\00\00\00H\89\85p\FF\FF\FFH\B8\F6\1E@\00\00\00\00\00\F2\0F\10\05T\06\00\00\F2\0F\10\0DT\06\00\00\F2\0F\10U\B0\F2\0F^M\B0\F2\0F^\C8\89\8Dl\FF\FF\FF\8B\0C%`0`\00\89\8Dh\FF\FF\FF\8B\8Dl\FF\FF\FF\0F(\C2H\89\85`\FF\FF\FFH\8B\85p\FF\FF\FFH\89\04$\8B\85h\FF\FF\FF\89D$\08L\89T$\10L\89\5C$\18H\89\5C$ L\89t$(L\89|$0L\89d$8L\89l$@L\8B\95`\FF\FF\FFL\89T$H\E8\1A\EF\FF\FF\83}\BC\00\0F\84E\01\00\00\BF\03\00\00\00\E8v\F3\FF\FFH\BF\0A\1F@\00\00\00\00\00\F2\0F\11E\A0\B0\00\E8\B0\ED\FF\FFH\BF \1F@\00\00\00\00\00\F2\0F\10E\A0\89\85\5C\FF\FF\FF\B0\01\E8\94\ED\FF\FF\0FW\C0\F2\0F\10M\A0f\0F.\C8\89\85X\FF\FF\FF\0F\85\13\00\00\00\0F\8A\0D\00\00\00\F2\0F\10\05>\05\00\00\F2\0F\11E\A0\BF\01\00\00\00\E8\0F\F3\FF\FFH\BF9\1F@\00\00\00\00\00\F2\0F\10\0DU\05\00\00\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F^E\A0\F2\0FY\C1\F2\0F\11E\98\F2\0F\10E\B0\F2\0F\10M\98\B0\02\E8$\ED\FF\FF1\FF\89\85T\FF\FF\FF\E8\C7\F2\FF\FFH\BF\5C\1F@\00\00\00\00\00\F2\0F\10\0D\0D\05\00\00\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F^E\A0\F2\0FY\C1\F2\0F\11E\98\F2\0F\10E\B0\F2\0F\10M\98\B0\02\E8\DC\EC\FF\FF\BF\02\00\00\00\89\85P\FF\FF\FF\E8|\F2\FF\FFH\BF\7F\1F@\00\00\00\00\00\F2\0F\10\0D\C2\04\00\00\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F^E\A0\F2\0FY\C1\F2\0F\11E\98\F2\0F\10E\B0\F2\0F\10M\98\B0\02\E8\91\EC\FF\FF\89\85L\FF\FF\FF\E8\B6\F2\FF\FF1\C0H\81\C4\E8\00\00\00[A\5CA]A^A_]\C3f\90UH\89\E5H\83\EC H\8DE\E81\C9\89\CEH\89}\F8H\89\C7\E8d\EC\FF\FF\83<%\E41`\00\00\89E\E4\0F\8D\0D\00\00\00H\8BE\E8\89\C1\89\0C%\E41`\00\F2\0F\10\05F\06\00\00H\8BE\E8Hc\0C%\E41`\00H)\C8\F2H\0F*\C8H\8BE\F0\F2H\0F*\D0\F2\0FY\C2\F2\0FX\C8H\8BE\F8\F2\0F\11\08H\83\C4 ]\C3f.\0F\1F\84\00\00\00\00\00\90AWAVI\89\D7AUATL\8D%^\14 \00UH\8D-^\14 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8w\EB\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>

@seg_401a20__rodata = internal constant %seg_401a20__rodata_type <{ [4 x i8] c"\01\00\02\00", [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", [46 x i8] c" Class           =                        %c\0A\00", [38 x i8] c" Size            =             %12ld\0A\00", [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", [37 x i8] c" Iterations      =             %12d\0A\00", [39 x i8] c" Time in seconds =             %12.2f\0A\00", [39 x i8] c" Mop/s total     =             %12.2f\0A\00", [25 x i8] c" Operation type  = %24s\0A\00", [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", [37 x i8] c" Version         =             %12s\0A\00", [37 x i8] c" Compile date    =             %12s\0A\00", [20 x i8] c"\0A Compile options:\0A\00", [23 x i8] c"    CC           = %s\0A\00", [23 x i8] c"    CLINK        = %s\0A\00", [23 x i8] c"    C_LIB        = %s\0A\00", [23 x i8] c"    C_INC        = %s\0A\00", [23 x i8] c"    CFLAGS       = %s\0A\00", [64 x i8] c"    CLINKFLAGS   = %s\0A\00\0A--------------------------------------\0A\00", [39 x i8] c" Please send all errors/feedbacks to:\0A\00", [34 x i8] c" Center for Manycore Programming\0A\00", [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", [95 x i8] c" http://aces.snu.ac.kr\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\E0?\00\00\00\A1\B0\B9\B2A\00\00@\E5\9C0\D2A\00\00\00\00\80\84.A\00\00\00\00\00\00\94A\00\00\00\00\00\00Y@", [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", [6 x i8] c"shit\0A\00", [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", [11 x i8] c"timer.flag\00", [2 x i8] c"r\00", [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\0A\00", [25 x i8] c" Size:  %ld  (class %c)\0A\00", [19 x i8] c" Iterations:   %d\0A\00", [15 x i8] c"\0A   iteration\0A\00", [12 x i8] c"        %d\0A\00", [25 x i8] c"passed verfications: %d\0A\00", [3 x i8] c"IS\00", [12 x i8] c"keys ranked\00", [6 x i8] c"3.3.1\00", [12 x i8] c"03 Nov 2017\00", [4 x i8] c"gcc\00", [6 x i8] c"$(CC)\00", [4 x i8] c"-lm\00", [12 x i8] c"-I../common\00", [29 x i8] c"-g -Wall -O3 -mcmodel=medium\00", [22 x i8] c"\0AAdditional timers -\0A\00", [25 x i8] c" Total execution: %8.3f\0A\00", [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", [49 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00\00\00\00\00\00\00\8D\ED\B5\A0\F7\C6\B0>" }>

@seg_602e10__init_array = internal global %seg_602e10__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4006c0_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400690___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c" .`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSfflush to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64) }>
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

@seg_6031f0__bss = internal global %seg_6031f0__bss_type zeroinitializer

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



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgettimeofday(i64, i64) #2
declare i64 @gettimeofday(i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfree(i64) #2
declare i64 @free(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfclose(i64) #2
declare i64 @fclose(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfopen(i64, i64) #2
declare i64 @fopen(i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSfflush(i64) #2
declare i64 @fflush(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #2
declare i64 @malloc(i64) #2


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400a80_timer_clear(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400a80:

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

  store i32 0, i32* %16, align 1, !tbaa !1244

  %17 = getelementptr inbounds i8, i8* %14, i64 4

  %18 = bitcast i8* %17 to i32*

  store i32 0, i32* %18, align 1, !tbaa !1244

  %19 = bitcast i64* %15 to i32*

  store i32 0, i32* %19, align 1, !tbaa !1244

  %20 = getelementptr inbounds i8, i8* %14, i64 12

  %21 = bitcast i8* %20 to i32*

  store i32 0, i32* %21, align 1, !tbaa !1244

  %22 = add i64 %11, -12

  %23 = load i32, i32* %5, align 4

  %24 = inttoptr i64 %22 to i32*

  store i32 %23, i32* %24

  %25 = inttoptr i64 %22 to i32*

  %26 = load i32, i32* %25

  %27 = sext i32 %26 to i64

  store i64 %27, i64* %6, align 8, !tbaa !1240

  %28 = shl nsw i64 %27, 3

  %29 = add i64 %28, add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 16)

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



; Function Attrs: noinline

define %struct.Memory* @sub_400b60_allocate_arrays(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400b60:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %8 = load i64, i64* %7, align 8

  %9 = load i64, i64* %6, align 8, !tbaa !1240

  %10 = add i64 %9, -8

  %11 = inttoptr i64 %10 to i64*

  store i64 %8, i64* %11

  %12 = add i64 %1, 16

  %13 = add i64 %9, -16

  %14 = inttoptr i64 %13 to i64*

  store i64 %12, i64* %14

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %16 = inttoptr i64 %13 to i64*

  %17 = load i64, i64* %16

  store i64 %10, i64* %6, align 8, !alias.scope !1246, !noalias !1249

  %18 = tail call i64 @malloc(i64 33554432)

  store i64 %18, i64* bitcast (%key_array_type* @key_array to i64*)

  %19 = add i64 %17, 20

  %20 = load i64, i64* %6, align 8, !tbaa !1240

  %21 = add i64 %20, -8

  %22 = inttoptr i64 %21 to i64*

  store i64 %19, i64* %22

  %23 = inttoptr i64 %21 to i64*

  %24 = load i64, i64* %23

  store i64 %20, i64* %6, align 8, !alias.scope !1251, !noalias !1254

  %25 = tail call i64 @malloc(i64 2097152)

  store i64 %25, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %26 = add i64 %24, 20

  %27 = load i64, i64* %6, align 8, !tbaa !1240

  %28 = add i64 %27, -8

  %29 = inttoptr i64 %28 to i64*

  store i64 %26, i64* %29

  %30 = inttoptr i64 %28 to i64*

  %31 = load i64, i64* %30

  store i64 %27, i64* %6, align 8, !alias.scope !1256, !noalias !1259

  %32 = tail call i64 @malloc(i64 33554432)

  store i64 20, i64* %4, align 8, !tbaa !1240

  store i64 20, i64* %5, align 8, !tbaa !1240

  store i64 %32, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %33 = add i64 %31, 20

  %34 = load i64, i64* %6, align 8, !tbaa !1240

  %35 = add i64 %34, -8

  %36 = inttoptr i64 %35 to i64*

  store i64 %33, i64* %36

  %37 = tail call i64 @malloc(i64 20)

  store i64 %37, i64* %15, align 8, !alias.scope !1261, !noalias !1264

  store i64 %37, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  %38 = add i64 %34, 8

  %39 = inttoptr i64 %34 to i64*

  %40 = load i64, i64* %39

  store i64 %40, i64* %7, align 8, !tbaa !1240

  %41 = inttoptr i64 %38 to i64*

  %42 = load i64, i64* %41

  store i64 %42, i64* %3, align 8, !tbaa !1240

  %43 = add i64 %34, 16

  store i64 %43, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400548__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400548:

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

  store i8 0, i8* %8, align 1, !tbaa !1266

  %15 = trunc i64 %14 to i32

  %16 = and i32 %15, 255

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9

  %18 = trunc i32 %17 to i8

  %19 = and i8 %18, 1

  %20 = xor i8 %19, 1

  store i8 %20, i8* %9, align 1, !tbaa !1279

  %21 = icmp eq i64 %14, 0

  %22 = zext i1 %21 to i8

  store i8 %22, i8* %11, align 1, !tbaa !1280

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1281

  store i8 0, i8* %13, align 1, !tbaa !1282

  store i8 0, i8* %10, align 1, !tbaa !1283

  %25 = select i1 %21, i64 18, i64 16

  %26 = add i64 %25, %1

  br i1 %21, label %block_40055a, label %block_400558



block_40055a:                                     ; preds = %block_400558, %block_400548

  %27 = phi i64 [ %7, %block_400548 ], [ %58, %block_400558 ]

  %28 = phi %struct.Memory* [ %2, %block_400548 ], [ %57, %block_400558 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1266

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9

  %35 = trunc i32 %34 to i8

  %36 = and i8 %35, 1

  %37 = xor i8 %36, 1

  store i8 %37, i8* %9, align 1, !tbaa !1279

  %38 = xor i64 %29, %27

  %39 = lshr i64 %38, 4

  %40 = trunc i64 %39 to i8

  %41 = and i8 %40, 1

  store i8 %41, i8* %10, align 1, !tbaa !1283

  %42 = icmp eq i64 %29, 0

  %43 = zext i1 %42 to i8

  store i8 %43, i8* %11, align 1, !tbaa !1280

  %44 = lshr i64 %29, 63

  %45 = trunc i64 %44 to i8

  store i8 %45, i8* %12, align 1, !tbaa !1281

  %46 = lshr i64 %27, 63

  %47 = xor i64 %44, %46

  %48 = add nuw nsw i64 %47, %44

  %49 = icmp eq i64 %48, 2

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1282

  %51 = inttoptr i64 %29 to i64*

  %52 = load i64, i64* %51

  store i64 %52, i64* %3, align 8, !tbaa !1240

  %53 = add i64 %27, 16

  store i64 %53, i64* %5, align 8, !tbaa !1240

  ret %struct.Memory* %28



block_400558:                                     ; preds = %block_400548

  %54 = add i64 %26, 2

  %55 = add i64 %6, -16

  %56 = inttoptr i64 %55 to i64*

  store i64 %54, i64* %56

  store i64 %55, i64* %5, align 8, !tbaa !1240

  store i64 %14, i64* %3, align 8, !tbaa !1240

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)

  %58 = load i64, i64* %5, align 8

  br label %block_40055a

}



; Function Attrs: noinline

define %struct.Memory* @sub_4005e0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4005e0:

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

  store i8 0, i8* %13, align 1, !tbaa !1266

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 240

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %14, align 1, !tbaa !1279

  %31 = icmp eq i64 %24, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %15, align 1, !tbaa !1280

  %33 = lshr i64 %21, 63

  %34 = trunc i64 %33 to i8

  store i8 %34, i8* %16, align 1, !tbaa !1281

  store i8 0, i8* %17, align 1, !tbaa !1282

  store i8 0, i8* %18, align 1, !tbaa !1283

  %35 = load i64, i64* %4, align 8

  %36 = add i64 %24, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = add i64 %24, -16

  %39 = inttoptr i64 %38 to i64*

  store i64 %36, i64* %39

  store i64 ptrtoint (i64 ()* @callback_sub_401a10___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_4019a0___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_4019a0___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401a10___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1284

  store i64 %50, i64* %4, align 8, !alias.scope !1284, !noalias !1287

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400b40_timer_read(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400b40:

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

  %21 = add i64 %20, add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 16)

  %22 = inttoptr i64 %21 to double*

  %23 = load double, double* %22

  %24 = bitcast %union.VectorReg* %9 to double*

  store double %23, double* %24, align 1, !tbaa !1289

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %26 = bitcast i64* %25 to double*

  store double 0.000000e+00, double* %26, align 1, !tbaa !1289

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



; Function Attrs: noinline

define %struct.Memory* @sub_401050_rank(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401050:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %6 = bitcast %union.anon* %5 to i32*

  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %13 = load i64, i64* %12, align 8

  %14 = load i64, i64* %11, align 8, !tbaa !1240

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %12, align 8, !tbaa !1240

  %17 = add i64 %14, -72

  store i64 %17, i64* %11, align 8, !tbaa !1240

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %24 = add i64 %14, -12

  %25 = load i32, i32* %6, align 4

  %26 = inttoptr i64 %24 to i32*

  store i32 %25, i32* %26

  %27 = add i64 %14, -44

  %28 = inttoptr i64 %27 to i32*

  store i32 9, i32* %28

  %29 = inttoptr i64 %24 to i32*

  %30 = load i32, i32* %29

  %31 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %32 = sext i32 %30 to i64

  %33 = shl nsw i64 %32, 2

  %34 = add i64 %33, %31

  %35 = inttoptr i64 %34 to i32*

  store i32 %30, i32* %35

  %36 = inttoptr i64 %24 to i32*

  %37 = load i32, i32* %36

  %38 = sub i32 524288, %37

  %39 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %39, i64* %8, align 8, !tbaa !1240

  %40 = load i64, i64* %12, align 8

  %41 = add i64 %40, -4

  %42 = inttoptr i64 %41 to i32*

  %43 = load i32, i32* %42

  %44 = add i32 %43, 10

  %45 = zext i32 %44 to i64

  store i64 %45, i64* %10, align 8, !tbaa !1240

  %46 = sext i32 %44 to i64

  store i64 %46, i64* %9, align 8, !tbaa !1240

  %47 = shl nsw i64 %46, 2

  %48 = add i64 %39, %47

  %49 = inttoptr i64 %48 to i32*

  store i32 %38, i32* %49

  %50 = add i64 %40, -8

  %51 = add i64 %1, 71

  %52 = inttoptr i64 %50 to i32*

  store i32 0, i32* %52

  br label %block_401097



block_4013d3:                                     ; preds = %block_4013c9

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 948), i64* %10, align 8, !tbaa !1240

  %53 = add i64 %167, -4

  %54 = inttoptr i64 %53 to i32*

  %55 = load i32, i32* %54

  %56 = zext i32 %55 to i64

  store i64 %56, i64* %149, align 8, !tbaa !1240

  %57 = add i64 %167, -8

  %58 = inttoptr i64 %57 to i32*

  %59 = load i32, i32* %58

  %60 = zext i32 %59 to i64

  store i64 %60, i64* %9, align 8, !tbaa !1240

  %61 = add i64 %178, 23

  %62 = load i64, i64* %11, align 8, !tbaa !1240

  %63 = add i64 %62, -8

  %64 = inttoptr i64 %63 to i64*

  store i64 %61, i64* %64

  %65 = load i64, i64* %214, align 8, !alias.scope !1291, !noalias !1294

  %66 = load i64, i64* %215, align 8, !alias.scope !1291, !noalias !1294

  %67 = load i64, i64* %216, align 8, !alias.scope !1291, !noalias !1294

  %68 = inttoptr i64 %62 to i64*

  %69 = load i64, i64* %68

  %70 = add i64 %62, 8

  %71 = inttoptr i64 %70 to i64*

  %72 = load i64, i64* %71

  %73 = add i64 %62, 16

  %74 = inttoptr i64 %73 to i64*

  %75 = load i64, i64* %74

  %76 = add i64 %62, 24

  %77 = inttoptr i64 %76 to i64*

  %78 = load i64, i64* %77

  %79 = add i64 %62, 32

  %80 = inttoptr i64 %79 to i64*

  %81 = load i64, i64* %80

  %82 = add i64 %62, 40

  %83 = inttoptr i64 %82 to i64*

  %84 = load i64, i64* %83

  %85 = add i64 %62, 48

  %86 = inttoptr i64 %85 to i64*

  %87 = load i64, i64* %86

  %88 = add i64 %62, 56

  %89 = inttoptr i64 %88 to i64*

  %90 = load i64, i64* %89

  %91 = add i64 %62, 64

  %92 = inttoptr i64 %91 to i64*

  %93 = load i64, i64* %92

  %94 = add i64 %62, 72

  %95 = inttoptr i64 %94 to i64*

  %96 = load i64, i64* %95

  %97 = inttoptr i64 %63 to i64*

  %98 = load i64, i64* %97

  store i64 %98, i64* %3, align 8, !alias.scope !1291, !noalias !1294

  store i64 %62, i64* %11, align 8, !alias.scope !1291, !noalias !1294

  %99 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 948), i64 %56, i64 %60, i64 %65, i64 %66, i64 %67, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %87, i64 %90, i64 %93, i64 %96), !noalias !1291

  %100 = load i64, i64* %12, align 8

  %101 = add i64 %100, -56

  %102 = trunc i64 %99 to i32

  %103 = load i64, i64* %3, align 8

  %104 = add i64 %103, 3

  %105 = inttoptr i64 %101 to i32*

  store i32 %102, i32* %105

  br label %block_4013ed



block_4013ed:                                     ; preds = %block_4013c9, %block_4013d3

  %106 = phi i64 [ %167, %block_4013c9 ], [ %100, %block_4013d3 ]

  %107 = phi i64 [ %178, %block_4013c9 ], [ %104, %block_4013d3 ]

  %108 = phi %struct.Memory* [ %170, %block_4013c9 ], [ %170, %block_4013d3 ]

  %109 = add i64 %107, 5

  br label %block_4013f2



block_4010e9:                                     ; preds = %block_4010dc

  %110 = sext i32 %137 to i64

  %111 = shl nsw i64 %110, 2

  %112 = add i64 %111, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %113 = inttoptr i64 %112 to i32*

  store i32 0, i32* %113

  %114 = inttoptr i64 %50 to i32*

  %115 = load i32, i32* %114

  %116 = add i32 %115, 1

  %117 = inttoptr i64 %50 to i32*

  store i32 %116, i32* %117

  %118 = add i64 %148, -13

  br label %block_4010dc



block_401262:                                     ; preds = %block_40124f, %block_40126f

  %119 = phi i64 [ %623, %block_40124f ], [ %614, %block_40126f ]

  %120 = phi %struct.Memory* [ %197, %block_40124f ], [ %120, %block_40126f ]

  %121 = inttoptr i64 %50 to i32*

  %122 = load i32, i32* %121

  %123 = add i32 %122, -8388608

  %124 = lshr i32 %123, 31

  %125 = trunc i32 %124 to i8

  %126 = lshr i32 %122, 31

  %127 = xor i32 %124, %126

  %128 = add nuw nsw i32 %127, %126

  %129 = icmp eq i32 %128, 2

  %130 = icmp ne i8 %125, 0

  %131 = xor i1 %130, %129

  %132 = select i1 %131, i64 13, i64 52

  %133 = add i64 %119, %132

  br i1 %131, label %block_40126f, label %block_401296



block_4010dc:                                     ; preds = %block_4010d5, %block_4010e9

  %134 = phi i64 [ %150, %block_4010d5 ], [ %118, %block_4010e9 ]

  %135 = phi %struct.Memory* [ %420, %block_4010d5 ], [ %135, %block_4010e9 ]

  %136 = inttoptr i64 %50 to i32*

  %137 = load i32, i32* %136

  %138 = add i32 %137, -1024

  %139 = lshr i32 %138, 31

  %140 = trunc i32 %139 to i8

  %141 = lshr i32 %137, 31

  %142 = xor i32 %139, %141

  %143 = add nuw nsw i32 %142, %141

  %144 = icmp eq i32 %143, 2

  %145 = icmp ne i8 %140, 0

  %146 = xor i1 %145, %144

  %147 = select i1 %146, i64 13, i64 42

  %148 = add i64 %134, %147

  br i1 %146, label %block_4010e9, label %block_401106



block_4010d5:                                     ; preds = %block_401097

  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %150 = add i64 %433, 7

  %151 = inttoptr i64 %50 to i32*

  store i32 0, i32* %151

  br label %block_4010dc



block_401162:                                     ; preds = %block_40116f, %block_401150

  %152 = phi i64 [ %414, %block_401150 ], [ %476, %block_40116f ]

  %153 = phi %struct.Memory* [ %575, %block_401150 ], [ %153, %block_40116f ]

  %154 = inttoptr i64 %50 to i32*

  %155 = load i32, i32* %154

  %156 = add i32 %155, -1024

  %157 = lshr i32 %156, 31

  %158 = trunc i32 %157 to i8

  %159 = lshr i32 %155, 31

  %160 = xor i32 %157, %159

  %161 = add nuw nsw i32 %160, %159

  %162 = icmp eq i32 %161, 2

  %163 = icmp ne i8 %158, 0

  %164 = xor i1 %163, %162

  %165 = select i1 %164, i64 13, i64 70

  %166 = add i64 %152, %165

  br i1 %164, label %block_40116f, label %block_4011a8



block_4013c9:                                     ; preds = %block_4013a7, %block_401373, %block_401353, %block_4013b3

  %167 = phi i64 [ %506, %block_401373 ], [ %560, %block_401353 ], [ %506, %block_4013a7 ], [ %506, %block_4013b3 ]

  %168 = phi i64 [ %591, %block_401373 ], [ %565, %block_401353 ], [ %630, %block_4013a7 ], [ %418, %block_4013b3 ]

  %169 = phi i64 [ 69, %block_401373 ], [ 69, %block_401353 ], [ 5, %block_4013a7 ], [ 5, %block_4013b3 ]

  %170 = phi %struct.Memory* [ %181, %block_401373 ], [ %181, %block_401353 ], [ %181, %block_4013a7 ], [ %181, %block_4013b3 ]

  %171 = add i64 %168, %169

  %172 = add i64 %167, -48

  %173 = inttoptr i64 %172 to i32*

  %174 = load i32, i32* %173

  %175 = add i32 %174, -1

  %176 = icmp eq i32 %175, 0

  %177 = select i1 %176, i64 10, i64 36

  %178 = add i64 %171, %177

  br i1 %176, label %block_4013d3, label %block_4013ed



block_4012dd:                                     ; preds = %block_4013f2, %block_4012d6

  %179 = phi i64 [ %212, %block_4012d6 ], [ %330, %block_4013f2 ]

  %180 = phi i64 [ %40, %block_4012d6 ], [ %321, %block_4013f2 ]

  %181 = phi %struct.Memory* [ %332, %block_4012d6 ], [ %323, %block_4013f2 ]

  %182 = add i64 %180, -8

  %183 = inttoptr i64 %182 to i32*

  %184 = load i32, i32* %183

  %185 = add i32 %184, -5

  %186 = lshr i32 %185, 31

  %187 = trunc i32 %186 to i8

  %188 = lshr i32 %184, 31

  %189 = xor i32 %186, %188

  %190 = add nuw nsw i32 %189, %188

  %191 = icmp eq i32 %190, 2

  %192 = icmp ne i8 %187, 0

  %193 = xor i1 %192, %191

  %194 = select i1 %193, i64 10, i64 296

  %195 = add i64 %179, %194

  br i1 %193, label %block_4012e7, label %block_401405



block_401221:                                     ; preds = %block_40120e, %block_40122e

  %196 = phi i64 [ %572, %block_40120e ], [ %293, %block_40122e ]

  %197 = phi %struct.Memory* [ %271, %block_40120e ], [ %197, %block_40122e ]

  %198 = inttoptr i64 %50 to i32*

  %199 = load i32, i32* %198

  %200 = add i32 %199, -524288

  %201 = lshr i32 %200, 31

  %202 = trunc i32 %201 to i8

  %203 = lshr i32 %199, 31

  %204 = xor i32 %201, %203

  %205 = add nuw nsw i32 %204, %203

  %206 = icmp eq i32 %205, 2

  %207 = icmp ne i8 %202, 0

  %208 = xor i1 %207, %206

  %209 = select i1 %208, i64 13, i64 46

  %210 = add i64 %196, %209

  %211 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  br i1 %208, label %block_40122e, label %block_40124f



block_4012d6:                                     ; preds = %block_40129d

  %212 = add i64 %345, 7

  %213 = inttoptr i64 %50 to i32*

  store i32 0, i32* %213

  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  br label %block_4012dd



block_4011bc:                                     ; preds = %block_4011af

  %217 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %218 = sext i32 %273 to i64

  %219 = shl nsw i64 %218, 2

  %220 = add i64 %219, %217

  %221 = inttoptr i64 %220 to i32*

  %222 = load i32, i32* %221

  %223 = inttoptr i64 %319 to i32*

  store i32 %222, i32* %223

  %224 = inttoptr i64 %319 to i32*

  %225 = load i32, i32* %224

  %226 = zext i32 %225 to i64

  store i64 %226, i64* %9, align 8, !tbaa !1240

  %227 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %228 = inttoptr i64 %627 to i32*

  %229 = load i32, i32* %228

  %230 = zext i32 %229 to i64

  store i64 %230, i64* %8, align 8, !tbaa !1240

  %231 = trunc i32 %229 to i5

  switch i5 %231, label %235 [

    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

    i5 1, label %232

  ]



; <label>:232:                                    ; preds = %block_4011bc

  %233 = shl nuw i64 %226, 32

  %234 = ashr i64 %233, 33

  br label %242



; <label>:235:                                    ; preds = %block_4011bc

  %236 = and i32 %229, 31

  %237 = zext i32 %236 to i64

  %238 = add nsw i64 %237, -1

  %239 = sext i32 %225 to i64

  %240 = ashr i64 %239, %238

  %241 = lshr i64 %240, 1

  br label %242



; <label>:242:                                    ; preds = %235, %232

  %243 = phi i64 [ %241, %235 ], [ %234, %232 ]

  %244 = trunc i64 %243 to i32

  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit



_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %242, %block_4011bc

  %245 = phi i32 [ %225, %block_4011bc ], [ %244, %242 ]

  %246 = sext i32 %245 to i64

  %247 = shl nsw i64 %246, 2

  %248 = add i64 %247, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %249 = inttoptr i64 %248 to i32*

  %250 = load i32, i32* %249

  %251 = zext i32 %250 to i64

  store i64 %251, i64* %149, align 8, !tbaa !1240

  %252 = add i32 %250, 1

  %253 = zext i32 %252 to i64

  store i64 %253, i64* %320, align 8, !tbaa !1240

  %254 = inttoptr i64 %248 to i32*

  store i32 %252, i32* %254

  %255 = sext i32 %250 to i64

  store i64 %255, i64* %10, align 8, !tbaa !1240

  %256 = shl nsw i64 %255, 2

  %257 = add i64 %227, %256

  %258 = inttoptr i64 %257 to i32*

  store i32 %225, i32* %258

  %259 = inttoptr i64 %50 to i32*

  %260 = load i32, i32* %259

  %261 = add i32 %260, 1

  %262 = inttoptr i64 %50 to i32*

  store i32 %261, i32* %262

  %263 = add i64 %284, -13

  br label %block_4011af



block_401335:                                     ; preds = %block_401311

  %264 = add i32 %518, %514

  %265 = zext i32 %264 to i64

  store i64 %265, i64* %9, align 8, !tbaa !1240

  %266 = sub i32 %505, %264

  %267 = icmp eq i32 %266, 0

  %268 = select i1 %267, i64 62, i64 30

  %269 = add i64 %503, %268

  br i1 %267, label %block_401373, label %block_401353



block_4011af:                                     ; preds = %block_4011a8, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

  %270 = phi i64 [ %317, %block_4011a8 ], [ %263, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ]

  %271 = phi %struct.Memory* [ %153, %block_4011a8 ], [ %271, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ]

  %272 = inttoptr i64 %50 to i32*

  %273 = load i32, i32* %272

  %274 = add i32 %273, -8388608

  %275 = lshr i32 %274, 31

  %276 = trunc i32 %275 to i8

  %277 = lshr i32 %273, 31

  %278 = xor i32 %275, %277

  %279 = add nuw nsw i32 %278, %277

  %280 = icmp eq i32 %279, 2

  %281 = icmp ne i8 %276, 0

  %282 = xor i1 %281, %280

  %283 = select i1 %282, i64 13, i64 95

  %284 = add i64 %270, %283

  br i1 %282, label %block_4011bc, label %block_40120e



block_40122e:                                     ; preds = %block_401221

  %285 = sext i32 %199 to i64

  store i64 %285, i64* %8, align 8, !tbaa !1240

  %286 = shl nsw i64 %285, 2

  %287 = add i64 %286, %211

  %288 = inttoptr i64 %287 to i32*

  store i32 0, i32* %288

  %289 = inttoptr i64 %50 to i32*

  %290 = load i32, i32* %289

  %291 = add i32 %290, 1

  %292 = inttoptr i64 %50 to i32*

  store i32 %291, i32* %292

  %293 = add i64 %210, -13

  br label %block_401221



block_4012aa:                                     ; preds = %block_40129d

  %294 = inttoptr i64 %621 to i64*

  %295 = load i64, i64* %294

  %296 = sext i32 %334 to i64

  %297 = shl nsw i64 %296, 2

  %298 = add i64 %297, %295

  %299 = inttoptr i64 %298 to i32*

  %300 = load i32, i32* %299

  %301 = add i32 %334, 1

  %302 = zext i32 %301 to i64

  store i64 %302, i64* %149, align 8, !tbaa !1240

  %303 = sext i32 %301 to i64

  store i64 %303, i64* %8, align 8, !tbaa !1240

  %304 = shl nsw i64 %303, 2

  %305 = add i64 %295, %304

  %306 = inttoptr i64 %305 to i32*

  %307 = load i32, i32* %306

  %308 = add i32 %307, %300

  %309 = zext i32 %308 to i64

  store i64 %309, i64* %9, align 8, !tbaa !1240

  %310 = inttoptr i64 %305 to i32*

  store i32 %308, i32* %310

  %311 = inttoptr i64 %50 to i32*

  %312 = load i32, i32* %311

  %313 = add i32 %312, 1

  %314 = zext i32 %313 to i64

  store i64 %314, i64* %7, align 8, !tbaa !1240

  %315 = inttoptr i64 %50 to i32*

  store i32 %313, i32* %315

  %316 = add i64 %345, -13

  br label %block_40129d



block_4011a8:                                     ; preds = %block_401162

  %317 = add i64 %166, 7

  %318 = inttoptr i64 %50 to i32*

  store i32 0, i32* %318

  %319 = add i64 %40, -40

  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  br label %block_4011af



block_4013f2:                                     ; preds = %block_401304, %block_4012e7, %block_4013ed

  %321 = phi i64 [ %180, %block_4012e7 ], [ %180, %block_401304 ], [ %106, %block_4013ed ]

  %322 = phi i64 [ %456, %block_4012e7 ], [ %667, %block_401304 ], [ %109, %block_4013ed ]

  %323 = phi %struct.Memory* [ %181, %block_4012e7 ], [ %181, %block_401304 ], [ %108, %block_4013ed ]

  %324 = add i64 %321, -8

  %325 = inttoptr i64 %324 to i32*

  %326 = load i32, i32* %325

  %327 = add i32 %326, 1

  %328 = zext i32 %327 to i64

  store i64 %328, i64* %7, align 8, !tbaa !1240

  %329 = inttoptr i64 %324 to i32*

  store i32 %327, i32* %329

  %330 = add i64 %322, -277

  br label %block_4012dd



block_40129d:                                     ; preds = %block_401296, %block_4012aa

  %331 = phi i64 [ %434, %block_401296 ], [ %316, %block_4012aa ]

  %332 = phi %struct.Memory* [ %120, %block_401296 ], [ %332, %block_4012aa ]

  %333 = inttoptr i64 %50 to i32*

  %334 = load i32, i32* %333

  %335 = add i32 %334, -524287

  %336 = lshr i32 %335, 31

  %337 = trunc i32 %336 to i8

  %338 = lshr i32 %334, 31

  %339 = xor i32 %336, %338

  %340 = add nuw nsw i32 %339, %338

  %341 = icmp eq i32 %340, 2

  %342 = icmp ne i8 %337, 0

  %343 = xor i1 %342, %341

  %344 = select i1 %343, i64 13, i64 57

  %345 = add i64 %331, %344

  br i1 %343, label %block_4012aa, label %block_4012d6



block_40141b:                                     ; preds = %block_401405, %block_40140f

  %346 = phi %struct.Memory* [ %181, %block_401405 ], [ %181, %block_40140f ]

  %347 = load i64, i64* %11, align 8

  %348 = add i64 %347, 64

  %349 = icmp ugt i64 %347, -65

  %350 = zext i1 %349 to i8

  store i8 %350, i8* %18, align 1, !tbaa !1266

  %351 = trunc i64 %348 to i32

  %352 = and i32 %351, 255

  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #9

  %354 = trunc i32 %353 to i8

  %355 = and i8 %354, 1

  %356 = xor i8 %355, 1

  store i8 %356, i8* %19, align 1, !tbaa !1279

  %357 = xor i64 %348, %347

  %358 = lshr i64 %357, 4

  %359 = trunc i64 %358 to i8

  %360 = and i8 %359, 1

  store i8 %360, i8* %20, align 1, !tbaa !1283

  %361 = icmp eq i64 %348, 0

  %362 = zext i1 %361 to i8

  store i8 %362, i8* %21, align 1, !tbaa !1280

  %363 = lshr i64 %348, 63

  %364 = trunc i64 %363 to i8

  store i8 %364, i8* %22, align 1, !tbaa !1281

  %365 = lshr i64 %347, 63

  %366 = xor i64 %363, %365

  %367 = add nuw nsw i64 %366, %363

  %368 = icmp eq i64 %367, 2

  %369 = zext i1 %368 to i8

  store i8 %369, i8* %23, align 1, !tbaa !1282

  %370 = add i64 %347, 72

  %371 = inttoptr i64 %348 to i64*

  %372 = load i64, i64* %371

  store i64 %372, i64* %12, align 8, !tbaa !1240

  %373 = inttoptr i64 %370 to i64*

  %374 = load i64, i64* %373

  store i64 %374, i64* %3, align 8, !tbaa !1240

  %375 = add i64 %347, 80

  store i64 %375, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %346



block_40111a:                                     ; preds = %block_40110d

  %376 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %377 = sext i32 %577 to i64

  %378 = shl nsw i64 %377, 2

  %379 = add i64 %378, %376

  %380 = inttoptr i64 %379 to i32*

  %381 = load i32, i32* %380

  %382 = zext i32 %381 to i64

  %383 = inttoptr i64 %627 to i32*

  %384 = load i32, i32* %383

  %385 = zext i32 %384 to i64

  store i64 %385, i64* %8, align 8, !tbaa !1240

  %386 = trunc i32 %384 to i5

  switch i5 %386, label %390 [

    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5

    i5 1, label %387

  ]



; <label>:387:                                    ; preds = %block_40111a

  %388 = shl nuw i64 %382, 32

  %389 = ashr i64 %388, 33

  br label %397



; <label>:390:                                    ; preds = %block_40111a

  %391 = and i32 %384, 31

  %392 = zext i32 %391 to i64

  %393 = add nsw i64 %392, -1

  %394 = sext i32 %381 to i64

  %395 = ashr i64 %394, %393

  %396 = lshr i64 %395, 1

  br label %397



; <label>:397:                                    ; preds = %390, %387

  %398 = phi i64 [ %396, %390 ], [ %389, %387 ]

  %399 = trunc i64 %398 to i32

  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5



_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5: ; preds = %397, %block_40111a

  %400 = phi i32 [ %381, %block_40111a ], [ %399, %397 ]

  %401 = sext i32 %400 to i64

  %402 = shl nsw i64 %401, 2

  %403 = add i64 %402, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %404 = inttoptr i64 %403 to i32*

  %405 = load i32, i32* %404

  %406 = add i32 %405, 1

  %407 = zext i32 %406 to i64

  store i64 %407, i64* %9, align 8, !tbaa !1240

  %408 = inttoptr i64 %403 to i32*

  store i32 %406, i32* %408

  %409 = inttoptr i64 %50 to i32*

  %410 = load i32, i32* %409

  %411 = add i32 %410, 1

  %412 = inttoptr i64 %50 to i32*

  store i32 %411, i32* %412

  %413 = add i64 %588, -13

  br label %block_40110d



block_401150:                                     ; preds = %block_40110d

  store i32 0, i32* bitcast (%bucket_ptrs_type* @bucket_ptrs to i32*)

  %414 = add i64 %588, 18

  %415 = inttoptr i64 %50 to i32*

  store i32 1, i32* %415

  br label %block_401162



block_4013b3:                                     ; preds = %block_401389

  %416 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %417 = add i32 %416, 1

  %418 = add i64 %620, 17

  store i32 %417, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_4013c9



block_401097:                                     ; preds = %block_4010a1, %block_401050

  %419 = phi i64 [ %51, %block_401050 ], [ %655, %block_4010a1 ]

  %420 = phi %struct.Memory* [ %2, %block_401050 ], [ %420, %block_4010a1 ]

  %421 = inttoptr i64 %50 to i32*

  %422 = load i32, i32* %421

  %423 = add i32 %422, -5

  %424 = lshr i32 %423, 31

  %425 = trunc i32 %424 to i8

  %426 = lshr i32 %422, 31

  %427 = xor i32 %424, %426

  %428 = add nuw nsw i32 %427, %426

  %429 = icmp eq i32 %428, 2

  %430 = icmp ne i8 %425, 0

  %431 = xor i1 %430, %429

  %432 = select i1 %431, i64 10, i64 62

  %433 = add i64 %419, %432

  br i1 %431, label %block_4010a1, label %block_4010d5



block_401296:                                     ; preds = %block_401262

  %434 = add i64 %133, 7

  %435 = inttoptr i64 %50 to i32*

  store i32 0, i32* %435

  br label %block_40129d



block_4012e7:                                     ; preds = %block_4012dd

  %436 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %436, i64* %8, align 8, !tbaa !1240

  %437 = sext i32 %184 to i64

  store i64 %437, i64* %9, align 8, !tbaa !1240

  %438 = shl nsw i64 %437, 2

  %439 = add i64 %438, %436

  %440 = inttoptr i64 %439 to i32*

  %441 = load i32, i32* %440

  %442 = zext i32 %441 to i64

  store i64 %442, i64* %149, align 8, !tbaa !1240

  %443 = add i64 %180, -12

  %444 = inttoptr i64 %443 to i32*

  store i32 %441, i32* %444

  %445 = inttoptr i64 %443 to i32*

  %446 = load i32, i32* %445

  %447 = sub i32 0, %446

  %448 = lshr i32 %447, 31

  %449 = trunc i32 %448 to i8

  %450 = lshr i32 %446, 31

  %451 = add nuw nsw i32 %448, %450

  %452 = icmp eq i32 %451, 2

  %453 = icmp ne i8 %449, 0

  %454 = xor i1 %453, %452

  %455 = select i1 %454, i64 29, i64 267

  %456 = add i64 %195, %455

  br i1 %454, label %block_401304, label %block_4013f2



block_40116f:                                     ; preds = %block_401162

  %457 = add i32 %155, -1

  %458 = zext i32 %457 to i64

  %459 = sext i32 %457 to i64

  %460 = shl nsw i64 %459, 2

  %461 = add i64 %460, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %462 = inttoptr i64 %461 to i32*

  %463 = load i32, i32* %462

  store i64 %458, i64* %9, align 8, !tbaa !1240

  %464 = add i64 %460, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %465 = inttoptr i64 %464 to i32*

  %466 = load i32, i32* %465

  %467 = add i32 %466, %463

  %468 = sext i32 %155 to i64

  store i64 %468, i64* %8, align 8, !tbaa !1240

  %469 = shl nsw i64 %468, 2

  %470 = add i64 %469, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %471 = inttoptr i64 %470 to i32*

  store i32 %467, i32* %471

  %472 = inttoptr i64 %50 to i32*

  %473 = load i32, i32* %472

  %474 = add i32 %473, 1

  %475 = inttoptr i64 %50 to i32*

  store i32 %474, i32* %475

  %476 = add i64 %166, -13

  br label %block_401162



block_401311:                                     ; preds = %block_401304

  %477 = add i64 %180, -24

  %478 = inttoptr i64 %477 to i64*

  %479 = load i64, i64* %478

  %480 = add i32 %446, -1

  %481 = sext i32 %480 to i64

  %482 = shl nsw i64 %481, 2

  %483 = add i64 %479, %482

  %484 = inttoptr i64 %483 to i32*

  %485 = load i32, i32* %484

  %486 = add i64 %180, -44

  %487 = inttoptr i64 %486 to i32*

  store i32 %485, i32* %487

  %488 = add i64 %180, -48

  %489 = inttoptr i64 %488 to i32*

  store i32 0, i32* %489

  %490 = inttoptr i64 %182 to i32*

  %491 = load i32, i32* %490

  %492 = add i32 %491, -2

  %493 = icmp eq i32 %492, 0

  %494 = lshr i32 %492, 31

  %495 = lshr i32 %491, 31

  %496 = xor i32 %494, %495

  %497 = add nuw nsw i32 %496, %495

  %498 = icmp eq i32 %497, 2

  %499 = icmp ne i32 %494, 0

  %500 = xor i1 %499, %498

  %501 = or i1 %493, %500

  %502 = select i1 %501, i64 36, i64 120

  %503 = add i64 %667, %502

  %504 = inttoptr i64 %486 to i32*

  %505 = load i32, i32* %504

  %506 = load i64, i64* %12, align 8

  %507 = add i64 %506, -8

  %508 = inttoptr i64 %507 to i32*

  %509 = load i32, i32* %508

  %510 = sext i32 %509 to i64

  store i64 %510, i64* %8, align 8, !tbaa !1240

  %511 = shl nsw i64 %510, 2

  %512 = add i64 %511, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %513 = inttoptr i64 %512 to i32*

  %514 = load i32, i32* %513

  %515 = add i64 %506, -4

  %516 = inttoptr i64 %515 to i32*

  %517 = load i32, i32* %516

  %518 = add i32 %517, -1

  %519 = zext i32 %518 to i64

  store i64 %519, i64* %149, align 8, !tbaa !1240

  br i1 %501, label %block_401335, label %block_401389



block_401353:                                     ; preds = %block_401335

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 942), i64* %10, align 8, !tbaa !1240

  %520 = add i64 %506, -48

  %521 = inttoptr i64 %520 to i32*

  store i32 1, i32* %521

  %522 = add i64 %269, 24

  %523 = load i64, i64* %11, align 8, !tbaa !1240

  %524 = add i64 %523, -8

  %525 = inttoptr i64 %524 to i64*

  store i64 %522, i64* %525

  %526 = load i64, i64* %215, align 8, !alias.scope !1296, !noalias !1299

  %527 = load i64, i64* %216, align 8, !alias.scope !1296, !noalias !1299

  %528 = inttoptr i64 %523 to i64*

  %529 = load i64, i64* %528

  %530 = add i64 %523, 8

  %531 = inttoptr i64 %530 to i64*

  %532 = load i64, i64* %531

  %533 = add i64 %523, 16

  %534 = inttoptr i64 %533 to i64*

  %535 = load i64, i64* %534

  %536 = add i64 %523, 24

  %537 = inttoptr i64 %536 to i64*

  %538 = load i64, i64* %537

  %539 = add i64 %523, 32

  %540 = inttoptr i64 %539 to i64*

  %541 = load i64, i64* %540

  %542 = add i64 %523, 40

  %543 = inttoptr i64 %542 to i64*

  %544 = load i64, i64* %543

  %545 = add i64 %523, 48

  %546 = inttoptr i64 %545 to i64*

  %547 = load i64, i64* %546

  %548 = add i64 %523, 56

  %549 = inttoptr i64 %548 to i64*

  %550 = load i64, i64* %549

  %551 = add i64 %523, 64

  %552 = inttoptr i64 %551 to i64*

  %553 = load i64, i64* %552

  %554 = add i64 %523, 72

  %555 = inttoptr i64 %554 to i64*

  %556 = load i64, i64* %555

  %557 = inttoptr i64 %524 to i64*

  %558 = load i64, i64* %557

  store i64 %558, i64* %3, align 8, !alias.scope !1296, !noalias !1299

  store i64 %523, i64* %11, align 8, !alias.scope !1296, !noalias !1299

  %559 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 942), i64 %519, i64 %265, i64 %510, i64 %526, i64 %527, i64 %529, i64 %532, i64 %535, i64 %538, i64 %541, i64 %544, i64 %547, i64 %550, i64 %553, i64 %556), !noalias !1296

  %560 = load i64, i64* %12, align 8

  %561 = add i64 %560, -52

  %562 = trunc i64 %559 to i32

  %563 = load i64, i64* %3, align 8

  %564 = inttoptr i64 %561 to i32*

  store i32 %562, i32* %564

  %565 = add i64 %563, 25

  br label %block_4013c9



block_40140f:                                     ; preds = %block_401405

  %566 = add i64 %180, -24

  %567 = inttoptr i64 %566 to i64*

  %568 = load i64, i64* %567

  store i64 %568, i64* %7, align 8, !tbaa !1240

  store i64 %568, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  br label %block_40141b



block_40120e:                                     ; preds = %block_4011af

  %569 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %570 = add i64 %40, -32

  %571 = inttoptr i64 %570 to i64*

  store i64 %569, i64* %571

  %572 = add i64 %284, 19

  %573 = inttoptr i64 %50 to i32*

  store i32 0, i32* %573

  br label %block_401221



block_40110d:                                     ; preds = %block_401106, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5

  %574 = phi i64 [ %625, %block_401106 ], [ %413, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5 ]

  %575 = phi %struct.Memory* [ %135, %block_401106 ], [ %575, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5 ]

  %576 = inttoptr i64 %50 to i32*

  %577 = load i32, i32* %576

  %578 = add i32 %577, -8388608

  %579 = lshr i32 %578, 31

  %580 = trunc i32 %579 to i8

  %581 = lshr i32 %577, 31

  %582 = xor i32 %579, %581

  %583 = add nuw nsw i32 %582, %581

  %584 = icmp eq i32 %583, 2

  %585 = icmp ne i8 %580, 0

  %586 = xor i1 %585, %584

  %587 = select i1 %586, i64 13, i64 67

  %588 = add i64 %574, %587

  br i1 %586, label %block_40111a, label %block_401150



block_401373:                                     ; preds = %block_401335

  %589 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %590 = add i32 %589, 1

  %591 = add i64 %269, 17

  store i32 %590, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_4013c9



block_40126f:                                     ; preds = %block_401262

  %592 = inttoptr i64 %621 to i64*

  %593 = load i64, i64* %592

  %594 = inttoptr i64 %570 to i64*

  %595 = load i64, i64* %594

  %596 = sext i32 %122 to i64

  store i64 %596, i64* %9, align 8, !tbaa !1240

  %597 = shl nsw i64 %596, 2

  %598 = add i64 %597, %595

  %599 = inttoptr i64 %598 to i32*

  %600 = load i32, i32* %599

  %601 = sext i32 %600 to i64

  store i64 %601, i64* %8, align 8, !tbaa !1240

  %602 = shl nsw i64 %601, 2

  %603 = add i64 %602, %593

  %604 = inttoptr i64 %603 to i32*

  %605 = load i32, i32* %604

  %606 = add i32 %605, 1

  %607 = zext i32 %606 to i64

  store i64 %607, i64* %149, align 8, !tbaa !1240

  %608 = inttoptr i64 %603 to i32*

  store i32 %606, i32* %608

  %609 = inttoptr i64 %50 to i32*

  %610 = load i32, i32* %609

  %611 = add i32 %610, 1

  %612 = zext i32 %611 to i64

  store i64 %612, i64* %7, align 8, !tbaa !1240

  %613 = inttoptr i64 %50 to i32*

  store i32 %611, i32* %613

  %614 = add i64 %133, -13

  br label %block_401262



block_401389:                                     ; preds = %block_401311

  %615 = sub i32 %514, %518

  %616 = zext i32 %615 to i64

  store i64 %616, i64* %9, align 8, !tbaa !1240

  %617 = sub i32 %505, %615

  %618 = icmp eq i32 %617, 0

  %619 = select i1 %618, i64 42, i64 30

  %620 = add i64 %503, %619

  br i1 %618, label %block_4013b3, label %block_4013a7



block_40124f:                                     ; preds = %block_401221

  store i64 %211, i64* %7, align 8, !tbaa !1240

  %621 = add i64 %40, -24

  %622 = inttoptr i64 %621 to i64*

  store i64 %211, i64* %622

  %623 = add i64 %210, 19

  %624 = inttoptr i64 %50 to i32*

  store i32 0, i32* %624

  br label %block_401262



block_401106:                                     ; preds = %block_4010dc

  %625 = add i64 %148, 7

  %626 = inttoptr i64 %50 to i32*

  store i32 0, i32* %626

  %627 = add i64 %40, -36

  br label %block_40110d



block_4013a7:                                     ; preds = %block_401389

  %628 = add i64 %506, -48

  %629 = inttoptr i64 %628 to i32*

  store i32 1, i32* %629

  %630 = add i64 %620, 29

  br label %block_4013c9



block_401405:                                     ; preds = %block_4012dd

  %631 = add i64 %180, -4

  %632 = inttoptr i64 %631 to i32*

  %633 = load i32, i32* %632

  %634 = add i32 %633, -10

  %635 = icmp eq i32 %634, 0

  br i1 %635, label %block_40140f, label %block_40141b



block_4010a1:                                     ; preds = %block_401097

  %636 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %637 = sext i32 %422 to i64

  %638 = shl nsw i64 %637, 2

  %639 = add i64 %638, ptrtoint (%test_index_array_type* @test_index_array to i64)

  %640 = inttoptr i64 %639 to i32*

  %641 = load i32, i32* %640

  %642 = sext i32 %641 to i64

  %643 = shl nsw i64 %642, 2

  %644 = add i64 %643, %636

  %645 = inttoptr i64 %644 to i32*

  %646 = load i32, i32* %645

  %647 = zext i32 %646 to i64

  store i64 %647, i64* %9, align 8, !tbaa !1240

  %648 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %637, i64* %8, align 8, !tbaa !1240

  %649 = add i64 %638, %648

  %650 = inttoptr i64 %649 to i32*

  store i32 %646, i32* %650

  %651 = inttoptr i64 %50 to i32*

  %652 = load i32, i32* %651

  %653 = add i32 %652, 1

  %654 = inttoptr i64 %50 to i32*

  store i32 %653, i32* %654

  %655 = add i64 %433, -10

  br label %block_401097



block_401304:                                     ; preds = %block_4012e7

  %656 = add i32 %446, -8388607

  %657 = icmp eq i32 %656, 0

  %658 = lshr i32 %656, 31

  %659 = trunc i32 %658 to i8

  %660 = xor i32 %658, %450

  %661 = add nuw nsw i32 %660, %450

  %662 = icmp eq i32 %661, 2

  %663 = icmp ne i8 %659, 0

  %664 = xor i1 %663, %662

  %665 = or i1 %657, %664

  %666 = select i1 %665, i64 13, i64 238

  %667 = add i64 %456, %666

  br i1 %665, label %block_401311, label %block_4013f2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400af0_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  %27 = tail call %struct.Memory* @sub_400ad0_elapsed_time(%struct.State* nonnull %0, i64 %23, %struct.Memory* %2)

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

  %41 = add i64 %40, add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 528)

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

  %53 = add i64 %52, add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 16)

  %54 = inttoptr i64 %53 to double*

  %55 = load double, double* %54

  %56 = fadd double %48, %55

  store double %56, double* %30, align 1, !tbaa !1289

  store i64 0, i64* %35, align 1, !tbaa !1289

  %57 = inttoptr i64 %53 to double*

  store double %56, double* %57

  %58 = load i64, i64* %7, align 8

  %59 = add i64 %58, 32

  %60 = icmp ugt i64 %58, -33

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %14, align 1, !tbaa !1266

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #9

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %15, align 1, !tbaa !1279

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %16, align 1, !tbaa !1283

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %17, align 1, !tbaa !1280

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %18, align 1, !tbaa !1281

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %19, align 1, !tbaa !1282

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

define %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400648:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 8, !tbaa !1240

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 6304232, i64* %4, align 8, !tbaa !1240

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %11, align 1, !tbaa !1266

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 1, i8* %12, align 1, !tbaa !1279

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1283

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 1, i8* %14, align 1, !tbaa !1280

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 0, i8* %15, align 1, !tbaa !1281

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %16, align 1, !tbaa !1282

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

define %struct.Memory* @sub_401a10___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_401a10:

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

define %struct.Memory* @sub_400f30_full_verify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400f30:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0

  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

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

  %16 = add i64 %13, -24

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = add i64 %13, -12

  %24 = add i64 %1, 15

  %25 = inttoptr i64 %23 to i32*

  store i32 0, i32* %25

  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  br label %block_400f3f



block_400ffb:                                     ; preds = %block_400fa9

  %27 = inttoptr i64 %221 to i32*

  %28 = load i32, i32* %27

  %29 = icmp eq i32 %28, 0

  %30 = select i1 %29, i64 55, i64 10

  %31 = add i64 %71, %30

  br i1 %29, label %block_401032, label %block_401005



block_400f4c:                                     ; preds = %block_400f3f

  %32 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %33 = sext i32 %204 to i64

  %34 = shl nsw i64 %33, 2

  %35 = add i64 %34, %32

  %36 = inttoptr i64 %35 to i32*

  %37 = load i32, i32* %36

  %38 = zext i32 %37 to i64

  store i64 %38, i64* %7, align 8, !tbaa !1240

  %39 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %40 = load i64, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  store i64 %33, i64* %9, align 8, !tbaa !1240

  %41 = sext i32 %37 to i64

  store i64 %41, i64* %8, align 8, !tbaa !1240

  %42 = shl nsw i64 %41, 2

  %43 = add i64 %42, %40

  %44 = inttoptr i64 %43 to i32*

  %45 = load i32, i32* %44

  %46 = add i32 %45, -1

  %47 = zext i32 %46 to i64

  store i64 %47, i64* %26, align 8, !tbaa !1240

  %48 = inttoptr i64 %43 to i32*

  store i32 %46, i32* %48

  %49 = sext i32 %46 to i64

  store i64 %49, i64* %6, align 8, !tbaa !1240

  %50 = shl nsw i64 %49, 2

  %51 = add i64 %39, %50

  %52 = inttoptr i64 %51 to i32*

  store i32 %37, i32* %52

  %53 = inttoptr i64 %23 to i32*

  %54 = load i32, i32* %53

  %55 = add i32 %54, 1

  %56 = inttoptr i64 %23 to i32*

  store i32 %55, i32* %56

  %57 = add i64 %215, -13

  br label %block_400f3f



block_400fa9:                                     ; preds = %block_400f9b, %block_400fe8

  %58 = phi i64 [ %223, %block_400f9b ], [ %78, %block_400fe8 ]

  %59 = phi %struct.Memory* [ %202, %block_400f9b ], [ %73, %block_400fe8 ]

  %60 = inttoptr i64 %23 to i32*

  %61 = load i32, i32* %60

  %62 = add i32 %61, -8388608

  %63 = lshr i32 %62, 31

  %64 = lshr i32 %61, 31

  %65 = xor i32 %63, %64

  %66 = add nuw nsw i32 %65, %64

  %67 = icmp eq i32 %66, 2

  %68 = icmp ne i32 %63, 0

  %69 = xor i1 %68, %67

  %70 = select i1 %69, i64 13, i64 82

  %71 = add i64 %58, %70

  br i1 %69, label %block_400fb6, label %block_400ffb



block_400fe8:                                     ; preds = %block_400fdf, %block_400fb6

  %72 = phi i64 [ %200, %block_400fb6 ], [ %219, %block_400fdf ]

  %73 = phi %struct.Memory* [ %59, %block_400fb6 ], [ %59, %block_400fdf ]

  %74 = inttoptr i64 %23 to i32*

  %75 = load i32, i32* %74

  %76 = add i32 %75, 1

  %77 = inttoptr i64 %23 to i32*

  store i32 %76, i32* %77

  %78 = add i64 %72, -63

  br label %block_400fa9



block_401005:                                     ; preds = %block_400ffb

  %79 = sext i32 %28 to i64

  store i64 %79, i64* %8, align 8, !tbaa !1240

  %80 = add i64 %31, 21

  %81 = add i64 %13, -32

  %82 = inttoptr i64 %81 to i64*

  store i64 %80, i64* %82

  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %88 = load i64, i64* %85, align 8, !alias.scope !1301, !noalias !1304

  %89 = load i64, i64* %84, align 8, !alias.scope !1301, !noalias !1304

  %90 = load i64, i64* %86, align 8, !alias.scope !1301, !noalias !1304

  %91 = load i64, i64* %87, align 8, !alias.scope !1301, !noalias !1304

  %92 = inttoptr i64 %16 to i64*

  %93 = load i64, i64* %92

  %94 = add i64 %13, -16

  %95 = inttoptr i64 %94 to i64*

  %96 = load i64, i64* %95

  %97 = add i64 %13, -8

  %98 = inttoptr i64 %97 to i64*

  %99 = load i64, i64* %98

  %100 = inttoptr i64 %13 to i64*

  %101 = load i64, i64* %100

  %102 = add i64 %13, 8

  %103 = inttoptr i64 %102 to i64*

  %104 = load i64, i64* %103

  %105 = add i64 %13, 16

  %106 = inttoptr i64 %105 to i64*

  %107 = load i64, i64* %106

  %108 = add i64 %13, 24

  %109 = inttoptr i64 %108 to i64*

  %110 = load i64, i64* %109

  %111 = add i64 %13, 32

  %112 = inttoptr i64 %111 to i64*

  %113 = load i64, i64* %112

  %114 = add i64 %13, 40

  %115 = inttoptr i64 %114 to i64*

  %116 = load i64, i64* %115

  %117 = add i64 %13, 48

  %118 = inttoptr i64 %117 to i64*

  %119 = load i64, i64* %118

  %120 = inttoptr i64 %81 to i64*

  %121 = load i64, i64* %120

  store i64 %16, i64* %10, align 8, !alias.scope !1301, !noalias !1304

  %122 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 896), i64 %79, i64 %88, i64 %89, i64 %90, i64 %91, i64 %93, i64 %96, i64 %99, i64 %101, i64 %104, i64 %107, i64 %110, i64 %113, i64 %116, i64 %119), !noalias !1301

  %123 = load i64, i64* @stdout

  store i64 %123, i64* %9, align 8, !tbaa !1240

  %124 = load i64, i64* %11, align 8

  %125 = add i64 %124, -12

  %126 = trunc i64 %122 to i32

  %127 = inttoptr i64 %125 to i32*

  store i32 %126, i32* %127

  %128 = add i64 %121, 16

  %129 = load i64, i64* %10, align 8, !tbaa !1240

  %130 = add i64 %129, -8

  %131 = inttoptr i64 %130 to i64*

  store i64 %128, i64* %131

  %132 = inttoptr i64 %130 to i64*

  %133 = load i64, i64* %132

  store i64 %133, i64* %3, align 8, !alias.scope !1306, !noalias !1309

  store i64 %129, i64* %10, align 8, !alias.scope !1306, !noalias !1309

  %134 = tail call i64 @fflush(i64 %123), !noalias !1306

  store i64 %134, i64* %83, align 8, !alias.scope !1306, !noalias !1309

  %135 = load i64, i64* %11, align 8

  %136 = add i64 %135, -16

  %137 = trunc i64 %134 to i32

  %138 = inttoptr i64 %136 to i32*

  store i32 %137, i32* %138

  %139 = load i64, i64* %10, align 8

  br label %block_401043



block_401032:                                     ; preds = %block_400ffb

  %140 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %141 = add i32 %140, 1

  %142 = zext i32 %141 to i64

  store i64 %142, i64* %5, align 8, !tbaa !1240

  store i32 %141, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_401043



block_401043:                                     ; preds = %block_401032, %block_401005

  %143 = phi i64 [ %16, %block_401032 ], [ %139, %block_401005 ]

  %144 = phi %struct.Memory* [ %59, %block_401032 ], [ %59, %block_401005 ]

  %145 = add i64 %143, 16

  %146 = icmp ugt i64 %143, -17

  %147 = zext i1 %146 to i8

  store i8 %147, i8* %17, align 1, !tbaa !1266

  %148 = trunc i64 %145 to i32

  %149 = and i32 %148, 255

  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #9

  %151 = trunc i32 %150 to i8

  %152 = and i8 %151, 1

  %153 = xor i8 %152, 1

  store i8 %153, i8* %18, align 1, !tbaa !1279

  %154 = xor i64 %143, 16

  %155 = xor i64 %154, %145

  %156 = lshr i64 %155, 4

  %157 = trunc i64 %156 to i8

  %158 = and i8 %157, 1

  store i8 %158, i8* %19, align 1, !tbaa !1283

  %159 = icmp eq i64 %145, 0

  %160 = zext i1 %159 to i8

  store i8 %160, i8* %20, align 1, !tbaa !1280

  %161 = lshr i64 %145, 63

  %162 = trunc i64 %161 to i8

  store i8 %162, i8* %21, align 1, !tbaa !1281

  %163 = lshr i64 %143, 63

  %164 = xor i64 %161, %163

  %165 = add nuw nsw i64 %164, %161

  %166 = icmp eq i64 %165, 2

  %167 = zext i1 %166 to i8

  store i8 %167, i8* %22, align 1, !tbaa !1282

  %168 = add i64 %143, 24

  %169 = inttoptr i64 %145 to i64*

  %170 = load i64, i64* %169

  store i64 %170, i64* %11, align 8, !tbaa !1240

  %171 = inttoptr i64 %168 to i64*

  %172 = load i64, i64* %171

  store i64 %172, i64* %3, align 8, !tbaa !1240

  %173 = add i64 %143, 32

  store i64 %173, i64* %10, align 8, !tbaa !1240

  ret %struct.Memory* %144



block_400fb6:                                     ; preds = %block_400fa9

  %174 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %175 = add i32 %61, -1

  %176 = sext i32 %175 to i64

  %177 = shl nsw i64 %176, 2

  %178 = add i64 %174, %177

  %179 = inttoptr i64 %178 to i32*

  %180 = load i32, i32* %179

  %181 = zext i32 %180 to i64

  store i64 %181, i64* %6, align 8, !tbaa !1240

  %182 = sext i32 %61 to i64

  store i64 %182, i64* %7, align 8, !tbaa !1240

  %183 = shl nsw i64 %182, 2

  %184 = add i64 %174, %183

  %185 = inttoptr i64 %184 to i32*

  %186 = load i32, i32* %185

  %187 = sub i32 %180, %186

  %188 = icmp eq i32 %187, 0

  %189 = lshr i32 %187, 31

  %190 = lshr i32 %180, 31

  %191 = lshr i32 %186, 31

  %192 = xor i32 %191, %190

  %193 = xor i32 %189, %190

  %194 = add nuw nsw i32 %193, %192

  %195 = icmp eq i32 %194, 2

  %196 = icmp ne i32 %189, 0

  %197 = xor i1 %196, %195

  %198 = or i1 %188, %197

  %199 = select i1 %198, i64 50, i64 41

  %200 = add i64 %71, %199

  br i1 %198, label %block_400fe8, label %block_400fdf



block_400f3f:                                     ; preds = %block_400f4c, %block_400f30

  %201 = phi i64 [ %24, %block_400f30 ], [ %57, %block_400f4c ]

  %202 = phi %struct.Memory* [ %2, %block_400f30 ], [ %202, %block_400f4c ]

  %203 = inttoptr i64 %23 to i32*

  %204 = load i32, i32* %203

  %205 = add i32 %204, -8388608

  %206 = lshr i32 %205, 31

  %207 = trunc i32 %206 to i8

  %208 = lshr i32 %204, 31

  %209 = xor i32 %206, %208

  %210 = add nuw nsw i32 %209, %208

  %211 = icmp eq i32 %210, 2

  %212 = icmp ne i8 %207, 0

  %213 = xor i1 %212, %211

  %214 = select i1 %213, i64 13, i64 92

  %215 = add i64 %201, %214

  br i1 %213, label %block_400f4c, label %block_400f9b



block_400fdf:                                     ; preds = %block_400fb6

  %216 = inttoptr i64 %221 to i32*

  %217 = load i32, i32* %216

  %218 = add i32 %217, 1

  %219 = add i64 %200, 9

  %220 = inttoptr i64 %221 to i32*

  store i32 %218, i32* %220

  br label %block_400fe8



block_400f9b:                                     ; preds = %block_400f3f

  %221 = add i64 %13, -16

  %222 = inttoptr i64 %221 to i32*

  store i32 0, i32* %222

  %223 = add i64 %215, 14

  %224 = inttoptr i64 %23 to i32*

  store i32 1, i32* %224

  br label %block_400fa9

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400c10_randlc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400c10:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %12 = load i64, i64* %9, align 8

  %13 = load i64, i64* %8, align 8, !tbaa !1240

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  store i64 %14, i64* %8, align 8, !tbaa !1240

  store i64 %14, i64* %9, align 8, !tbaa !1240

  %16 = add i64 %13, -16

  %17 = load i64, i64* %7, align 8

  %18 = inttoptr i64 %16 to i64*

  store i64 %17, i64* %18

  %19 = add i64 %13, -24

  %20 = load i64, i64* %6, align 8

  %21 = inttoptr i64 %19 to i64*

  store i64 %20, i64* %21

  %22 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1040) to i32*)

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %23, align 1, !tbaa !1266

  %24 = and i32 %22, 255

  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9

  %26 = trunc i32 %25 to i8

  %27 = and i8 %26, 1

  %28 = xor i8 %27, 1

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %28, i8* %29, align 1, !tbaa !1279

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %30, align 1, !tbaa !1283

  %31 = icmp eq i32 %22, 0

  %32 = zext i1 %31 to i8

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %32, i8* %33, align 1, !tbaa !1280

  %34 = lshr i32 %22, 31

  %35 = trunc i32 %34 to i8

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %35, i8* %36, align 1, !tbaa !1281

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %37, align 1, !tbaa !1282

  %38 = select i1 %31, i64 26, i64 247

  %39 = add i64 %38, %1

  br i1 %31, label %block_400c2a, label %block_400c10.block_400d07_crit_edge



block_400c10.block_400d07_crit_edge:              ; preds = %block_400c10

  %40 = bitcast [32 x %union.VectorReg]* %10 to double*

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %42 = bitcast i64* %41 to double*

  %43 = bitcast %union.VectorReg* %11 to double*

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  br label %block_400d07



block_400cb0:                                     ; preds = %block_400cba, %block_400ca9

  %45 = phi i64 [ %82, %block_400ca9 ], [ %106, %block_400cba ]

  %46 = phi %struct.Memory* [ %283, %block_400ca9 ], [ %46, %block_400cba ]

  %47 = inttoptr i64 %66 to i32*

  %48 = load i32, i32* %47

  %49 = add i32 %48, -46

  %50 = icmp eq i32 %49, 0

  %51 = lshr i32 %49, 31

  %52 = trunc i32 %51 to i8

  %53 = lshr i32 %48, 31

  %54 = xor i32 %51, %53

  %55 = add nuw nsw i32 %54, %53

  %56 = icmp eq i32 %55, 2

  %57 = icmp ne i8 %52, 0

  %58 = xor i1 %57, %56

  %59 = or i1 %50, %58

  %60 = select i1 %59, i64 10, i64 76

  %61 = add i64 %45, %60

  br i1 %59, label %block_400cba, label %block_400cfc



block_400c2a:                                     ; preds = %block_400c10

  %62 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 832) to double*)

  %63 = bitcast [32 x %union.VectorReg]* %10 to double*

  store double %62, double* %63, align 1, !tbaa !1289

  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %65 = bitcast i64* %64 to double*

  store double 0.000000e+00, double* %65, align 1, !tbaa !1289

  store double %62, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  store double %62, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  store double %62, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  store double %62, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1072) to double*)

  %66 = add i64 %13, -100

  %67 = add i64 %39, 51

  %68 = inttoptr i64 %66 to i32*

  store i32 1, i32* %68

  %69 = bitcast %union.VectorReg* %11 to double*

  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  br label %block_400c5d



block_400c67:                                     ; preds = %block_400c5d

  %71 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 840) to double*)

  %72 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 848) to double*)

  %73 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %74 = fmul double %72, %73

  store double %74, double* %69, align 1, !tbaa !1289

  store i64 0, i64* %70, align 1, !tbaa !1289

  store double %74, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %75 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %76 = fmul double %71, %75

  store double %76, double* %63, align 1, !tbaa !1289

  store i64 0, i64* %64, align 1, !tbaa !1289

  store double %76, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %77 = inttoptr i64 %66 to i32*

  %78 = load i32, i32* %77

  %79 = add i32 %78, 1

  %80 = inttoptr i64 %66 to i32*

  store i32 %79, i32* %80

  %81 = add i64 %298, -10

  br label %block_400c5d



block_400ca9:                                     ; preds = %block_400c5d

  %82 = add i64 %298, 7

  %83 = inttoptr i64 %66 to i32*

  store i32 1, i32* %83

  br label %block_400cb0



block_400cfc:                                     ; preds = %block_400cb0

  %84 = icmp ult i32 %48, 46

  %85 = zext i1 %84 to i8

  %86 = and i32 %49, 255

  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #9

  %88 = trunc i32 %87 to i8

  %89 = and i8 %88, 1

  %90 = xor i8 %89, 1

  %91 = xor i32 %49, %48

  %92 = lshr i32 %91, 4

  %93 = trunc i32 %92 to i8

  %94 = and i8 %93, 1

  %95 = zext i1 %56 to i8

  store i8 %85, i8* %23, align 1, !tbaa !1266

  store i8 %90, i8* %29, align 1, !tbaa !1279

  store i8 %94, i8* %30, align 1, !tbaa !1283

  store i8 0, i8* %33, align 1, !tbaa !1280

  store i8 %52, i8* %36, align 1, !tbaa !1281

  store i8 %95, i8* %37, align 1, !tbaa !1282

  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1040) to i32*)

  br label %block_400d07



block_400cba:                                     ; preds = %block_400cb0

  %96 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 840) to double*)

  %97 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 848) to double*)

  %98 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  %99 = fmul double %97, %98

  store double %99, double* %69, align 1, !tbaa !1289

  store i64 0, i64* %70, align 1, !tbaa !1289

  store double %99, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  %100 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1072) to double*)

  %101 = fmul double %96, %100

  store double %101, double* %63, align 1, !tbaa !1289

  store i64 0, i64* %64, align 1, !tbaa !1289

  store double %101, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1072) to double*)

  %102 = inttoptr i64 %66 to i32*

  %103 = load i32, i32* %102

  %104 = add i32 %103, 1

  %105 = inttoptr i64 %66 to i32*

  store i32 %104, i32* %105

  %106 = add i64 %61, -10

  br label %block_400cb0



block_400d07:                                     ; preds = %block_400cfc, %block_400c10.block_400d07_crit_edge

  %107 = phi i64* [ %44, %block_400c10.block_400d07_crit_edge ], [ %70, %block_400cfc ]

  %108 = phi double* [ %43, %block_400c10.block_400d07_crit_edge ], [ %69, %block_400cfc ]

  %109 = phi double* [ %42, %block_400c10.block_400d07_crit_edge ], [ %65, %block_400cfc ]

  %110 = phi i64* [ %41, %block_400c10.block_400d07_crit_edge ], [ %64, %block_400cfc ]

  %111 = phi double* [ %40, %block_400c10.block_400d07_crit_edge ], [ %63, %block_400cfc ]

  %112 = phi %struct.Memory* [ %2, %block_400c10.block_400d07_crit_edge ], [ %46, %block_400cfc ]

  %113 = bitcast i64* %107 to double*

  %114 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %115 = add i64 %13, -24

  %116 = inttoptr i64 %115 to i64*

  %117 = load i64, i64* %116

  %118 = inttoptr i64 %117 to double*

  %119 = load double, double* %118

  %120 = fmul double %114, %119

  %121 = add i64 %13, -32

  %122 = inttoptr i64 %121 to double*

  store double %120, double* %122

  %123 = inttoptr i64 %121 to double*

  %124 = load double, double* %123

  %125 = tail call double @llvm.trunc.f64(double %124) #9

  %126 = tail call double @llvm.fabs.f64(double %125) #9

  %127 = fcmp ogt double %126, 0x41DFFFFFFFC00000

  %128 = fptosi double %125 to i32

  %129 = add i64 %13, -104

  %130 = select i1 %127, i32 -2147483648, i32 %128

  %131 = inttoptr i64 %129 to i32*

  store i32 %130, i32* %131

  %132 = inttoptr i64 %129 to i32*

  %133 = load i32, i32* %132

  %134 = sitofp i32 %133 to double

  %135 = add i64 %13, -64

  %136 = inttoptr i64 %135 to double*

  store double %134, double* %136

  %137 = inttoptr i64 %115 to i64*

  %138 = load i64, i64* %137

  %139 = inttoptr i64 %138 to double*

  %140 = load double, double* %139

  %141 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %142 = inttoptr i64 %135 to double*

  %143 = load double, double* %142

  %144 = fmul double %141, %143

  %145 = fsub double %140, %144

  %146 = add i64 %13, -72

  %147 = inttoptr i64 %146 to double*

  store double %145, double* %147

  %148 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %149 = add i64 %13, -16

  %150 = inttoptr i64 %149 to i64*

  %151 = load i64, i64* %150

  %152 = inttoptr i64 %151 to double*

  %153 = load double, double* %152

  %154 = fmul double %148, %153

  %155 = load i64, i64* %9, align 8

  %156 = add i64 %155, -24

  %157 = inttoptr i64 %156 to double*

  store double %154, double* %157

  %158 = inttoptr i64 %156 to double*

  %159 = load double, double* %158

  %160 = tail call double @llvm.trunc.f64(double %159) #9

  %161 = tail call double @llvm.fabs.f64(double %160) #9

  %162 = fcmp ogt double %161, 0x41DFFFFFFFC00000

  %163 = fptosi double %160 to i32

  %164 = add i64 %155, -96

  %165 = select i1 %162, i32 -2147483648, i32 %163

  %166 = inttoptr i64 %164 to i32*

  store i32 %165, i32* %166

  %167 = inttoptr i64 %164 to i32*

  %168 = load i32, i32* %167

  %169 = sitofp i32 %168 to double

  %170 = add i64 %155, -72

  %171 = inttoptr i64 %170 to double*

  store double %169, double* %171

  %172 = add i64 %155, -8

  %173 = inttoptr i64 %172 to i64*

  %174 = load i64, i64* %173

  %175 = inttoptr i64 %174 to double*

  %176 = load double, double* %175

  %177 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %178 = inttoptr i64 %170 to double*

  %179 = load double, double* %178

  %180 = fmul double %177, %179

  %181 = fsub double %176, %180

  %182 = add i64 %155, -80

  %183 = inttoptr i64 %182 to double*

  store double %181, double* %183

  %184 = add i64 %155, -56

  %185 = inttoptr i64 %184 to double*

  %186 = load double, double* %185

  %187 = inttoptr i64 %182 to double*

  %188 = load double, double* %187

  %189 = fmul double %186, %188

  %190 = add i64 %155, -64

  %191 = inttoptr i64 %190 to double*

  %192 = load double, double* %191

  %193 = inttoptr i64 %170 to double*

  %194 = load double, double* %193

  %195 = fmul double %192, %194

  %196 = fadd double %195, %189

  %197 = inttoptr i64 %156 to double*

  store double %196, double* %197

  %198 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %199 = inttoptr i64 %156 to double*

  %200 = load double, double* %199

  %201 = fmul double %198, %200

  %202 = tail call double @llvm.trunc.f64(double %201) #9

  %203 = tail call double @llvm.fabs.f64(double %202) #9

  %204 = fcmp ogt double %203, 0x41DFFFFFFFC00000

  %205 = fptosi double %202 to i32

  %206 = load i64, i64* %9, align 8

  %207 = add i64 %206, -96

  %208 = select i1 %204, i32 -2147483648, i32 %205

  %209 = inttoptr i64 %207 to i32*

  store i32 %208, i32* %209

  %210 = inttoptr i64 %207 to i32*

  %211 = load i32, i32* %210

  %212 = sitofp i32 %211 to double

  %213 = add i64 %206, -32

  %214 = inttoptr i64 %213 to double*

  store double %212, double* %214

  %215 = add i64 %206, -24

  %216 = inttoptr i64 %215 to double*

  %217 = load double, double* %216

  %218 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %219 = inttoptr i64 %213 to double*

  %220 = load double, double* %219

  %221 = fmul double %218, %220

  %222 = fsub double %217, %221

  %223 = add i64 %206, -88

  %224 = inttoptr i64 %223 to double*

  store double %222, double* %224

  %225 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %226 = inttoptr i64 %223 to double*

  %227 = load double, double* %226

  %228 = fmul double %225, %227

  %229 = add i64 %206, -64

  %230 = inttoptr i64 %229 to double*

  %231 = load double, double* %230

  %232 = add i64 %206, -80

  %233 = inttoptr i64 %232 to double*

  %234 = load double, double* %233

  %235 = fmul double %231, %234

  %236 = fadd double %235, %228

  %237 = add i64 %206, -40

  %238 = inttoptr i64 %237 to double*

  store double %236, double* %238

  %239 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  %240 = inttoptr i64 %237 to double*

  %241 = load double, double* %240

  %242 = fmul double %239, %241

  %243 = tail call double @llvm.trunc.f64(double %242) #9

  %244 = tail call double @llvm.fabs.f64(double %243) #9

  %245 = fcmp ogt double %244, 0x41DFFFFFFFC00000

  %246 = fptosi double %243 to i32

  %247 = select i1 %245, i32 -2147483648, i32 %246

  %248 = inttoptr i64 %207 to i32*

  store i32 %247, i32* %248

  %249 = load i64, i64* %9, align 8

  %250 = add i64 %249, -96

  %251 = inttoptr i64 %250 to i32*

  %252 = load i32, i32* %251

  %253 = zext i32 %252 to i64

  store i64 %253, i64* %5, align 8, !tbaa !1240

  %254 = sitofp i32 %252 to double

  %255 = add i64 %249, -48

  %256 = inttoptr i64 %255 to double*

  store double %254, double* %256

  %257 = add i64 %249, -40

  %258 = inttoptr i64 %257 to double*

  %259 = load double, double* %258

  %260 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1072) to double*)

  store double 0.000000e+00, double* %113, align 1, !tbaa !1289

  %261 = inttoptr i64 %255 to double*

  %262 = load double, double* %261

  %263 = fmul double %260, %262

  store double %263, double* %108, align 1, !tbaa !1289

  store i64 0, i64* %107, align 1, !tbaa !1289

  %264 = fsub double %259, %263

  %265 = add i64 %249, -8

  %266 = inttoptr i64 %265 to i64*

  %267 = load i64, i64* %266

  %268 = inttoptr i64 %267 to double*

  store double %264, double* %268

  %269 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  store double 0.000000e+00, double* %109, align 1, !tbaa !1289

  %270 = inttoptr i64 %265 to i64*

  %271 = load i64, i64* %270

  store i64 %271, i64* %4, align 8, !tbaa !1240

  %272 = inttoptr i64 %271 to double*

  %273 = load double, double* %272

  %274 = fmul double %269, %273

  store double %274, double* %111, align 1, !tbaa !1289

  store i64 0, i64* %110, align 1, !tbaa !1289

  %275 = load i64, i64* %8, align 8, !tbaa !1240

  %276 = add i64 %275, 8

  %277 = inttoptr i64 %275 to i64*

  %278 = load i64, i64* %277

  store i64 %278, i64* %9, align 8, !tbaa !1240

  %279 = inttoptr i64 %276 to i64*

  %280 = load i64, i64* %279

  store i64 %280, i64* %3, align 8, !tbaa !1240

  %281 = add i64 %275, 16

  store i64 %281, i64* %8, align 8, !tbaa !1240

  ret %struct.Memory* %112



block_400c5d:                                     ; preds = %block_400c67, %block_400c2a

  %282 = phi i64 [ %67, %block_400c2a ], [ %81, %block_400c67 ]

  %283 = phi %struct.Memory* [ %2, %block_400c2a ], [ %283, %block_400c67 ]

  %284 = inttoptr i64 %66 to i32*

  %285 = load i32, i32* %284

  %286 = add i32 %285, -23

  %287 = icmp eq i32 %286, 0

  %288 = lshr i32 %286, 31

  %289 = trunc i32 %288 to i8

  %290 = lshr i32 %285, 31

  %291 = xor i32 %288, %290

  %292 = add nuw nsw i32 %291, %290

  %293 = icmp eq i32 %292, 2

  %294 = icmp ne i8 %289, 0

  %295 = xor i1 %294, %293

  %296 = or i1 %287, %295

  %297 = select i1 %296, i64 10, i64 76

  %298 = add i64 %282, %297

  br i1 %296, label %block_400c67, label %block_400ca9

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400690:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 8) to i8*)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1266

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #9

  %9 = trunc i32 %8 to i8

  %10 = and i8 %9, 1

  %11 = xor i8 %10, 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %11, i8* %12, align 1, !tbaa !1279

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1283

  %14 = icmp eq i8 %5, 0

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %15, i8* %16, align 1, !tbaa !1280

  %17 = lshr i8 %5, 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %17, i8* %18, align 1, !tbaa !1281

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %19, align 1, !tbaa !1282

  %20 = select i1 %14, i64 9, i64 32

  %21 = add i64 %20, %1

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  br i1 %14, label %block_400699, label %block_4006b0



block_4006b0:                                     ; preds = %block_400690

  %23 = load i64, i64* %22, align 8, !tbaa !1240

  %24 = inttoptr i64 %23 to i64*

  %25 = load i64, i64* %24

  store i64 %25, i64* %3, align 8, !tbaa !1240

  %26 = add i64 %23, 8

  store i64 %26, i64* %22, align 8, !tbaa !1240

  ret %struct.Memory* %2



block_400699:                                     ; preds = %block_400690

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

  %35 = tail call %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* nonnull %0, i64 %31, %struct.Memory* %2)

  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 8) to i8*)

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

define %struct.Memory* @sub_400e70_create_seq(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400e70:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %11 = load i64, i64* %8, align 8

  %12 = load i64, i64* %7, align 8, !tbaa !1240

  %13 = add i64 %12, -8

  %14 = inttoptr i64 %13 to i64*

  store i64 %11, i64* %14

  store i64 %13, i64* %8, align 8, !tbaa !1240

  %15 = add i64 %12, -40

  store i64 %15, i64* %7, align 8, !tbaa !1240

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %22 = add i64 %12, -16

  %23 = bitcast [32 x %union.VectorReg]* %9 to double*

  %24 = load double, double* %23, align 1

  %25 = inttoptr i64 %22 to double*

  store double %24, double* %25

  %26 = add i64 %12, -24

  %27 = bitcast %union.VectorReg* %10 to double*

  %28 = load double, double* %27, align 1

  %29 = inttoptr i64 %26 to double*

  store double %28, double* %29

  %30 = add i64 %12, -40

  %31 = inttoptr i64 %30 to i32*

  store i32 131072, i32* %31

  %32 = add i64 %12, -36

  %33 = add i64 %1, 32

  %34 = inttoptr i64 %32 to i32*

  store i32 0, i32* %34

  br label %block_400e90



block_400f21:                                     ; preds = %block_400e90

  %35 = load i64, i64* %7, align 8

  %36 = add i64 %35, 32

  %37 = icmp ugt i64 %35, -33

  %38 = zext i1 %37 to i8

  store i8 %38, i8* %16, align 1, !tbaa !1266

  %39 = trunc i64 %36 to i32

  %40 = and i32 %39, 255

  %41 = tail call i32 @llvm.ctpop.i32(i32 %40) #9

  %42 = trunc i32 %41 to i8

  %43 = and i8 %42, 1

  %44 = xor i8 %43, 1

  store i8 %44, i8* %17, align 1, !tbaa !1279

  %45 = xor i64 %36, %35

  %46 = lshr i64 %45, 4

  %47 = trunc i64 %46 to i8

  %48 = and i8 %47, 1

  store i8 %48, i8* %18, align 1, !tbaa !1283

  %49 = icmp eq i64 %36, 0

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %19, align 1, !tbaa !1280

  %51 = lshr i64 %36, 63

  %52 = trunc i64 %51 to i8

  store i8 %52, i8* %20, align 1, !tbaa !1281

  %53 = lshr i64 %35, 63

  %54 = xor i64 %51, %53

  %55 = add nuw nsw i64 %54, %51

  %56 = icmp eq i64 %55, 2

  %57 = zext i1 %56 to i8

  store i8 %57, i8* %21, align 1, !tbaa !1282

  %58 = add i64 %35, 40

  %59 = inttoptr i64 %36 to i64*

  %60 = load i64, i64* %59

  store i64 %60, i64* %8, align 8, !tbaa !1240

  %61 = inttoptr i64 %58 to i64*

  %62 = load i64, i64* %61

  store i64 %62, i64* %3, align 8, !tbaa !1240

  %63 = add i64 %35, 48

  store i64 %63, i64* %7, align 8, !tbaa !1240

  ret %struct.Memory* %153



block_400e9d:                                     ; preds = %block_400e90

  %64 = add i64 %152, -8

  store i64 %64, i64* %6, align 8, !tbaa !1240

  %65 = add i64 %152, -16

  store i64 %65, i64* %5, align 8, !tbaa !1240

  %66 = add i64 %167, -653

  %67 = add i64 %167, 13

  %68 = load i64, i64* %7, align 8, !tbaa !1240

  %69 = add i64 %68, -8

  %70 = inttoptr i64 %69 to i64*

  store i64 %67, i64* %70

  store i64 %69, i64* %7, align 8, !tbaa !1240

  %71 = tail call %struct.Memory* @sub_400c10_randlc(%struct.State* nonnull %0, i64 %66, %struct.Memory* %153)

  %72 = load i64, i64* %8, align 8

  %73 = add i64 %72, -8

  %74 = load i64, i64* %3, align 8

  store i64 %73, i64* %6, align 8, !tbaa !1240

  %75 = add i64 %72, -16

  store i64 %75, i64* %5, align 8, !tbaa !1240

  %76 = add i64 %72, -24

  %77 = load double, double* %23, align 1

  %78 = inttoptr i64 %76 to double*

  store double %77, double* %78

  %79 = add i64 %74, -666

  %80 = add i64 %74, 18

  %81 = load i64, i64* %7, align 8, !tbaa !1240

  %82 = add i64 %81, -8

  %83 = inttoptr i64 %82 to i64*

  store i64 %80, i64* %83

  store i64 %82, i64* %7, align 8, !tbaa !1240

  %84 = tail call %struct.Memory* @sub_400c10_randlc(%struct.State* nonnull %0, i64 %79, %struct.Memory* %71)

  %85 = load i64, i64* %8, align 8

  %86 = add i64 %85, -8

  %87 = load i64, i64* %3, align 8

  store i64 %86, i64* %6, align 8, !tbaa !1240

  %88 = add i64 %85, -16

  store i64 %88, i64* %5, align 8, !tbaa !1240

  %89 = add i64 %85, -24

  %90 = load double, double* %23, align 1

  %91 = inttoptr i64 %89 to double*

  %92 = load double, double* %91

  %93 = fadd double %90, %92

  store double %93, double* %23, align 1, !tbaa !1289

  %94 = inttoptr i64 %89 to double*

  store double %93, double* %94

  %95 = add i64 %87, -684

  %96 = add i64 %87, 23

  %97 = load i64, i64* %7, align 8, !tbaa !1240

  %98 = add i64 %97, -8

  %99 = inttoptr i64 %98 to i64*

  store i64 %96, i64* %99

  store i64 %98, i64* %7, align 8, !tbaa !1240

  %100 = tail call %struct.Memory* @sub_400c10_randlc(%struct.State* nonnull %0, i64 %95, %struct.Memory* %84)

  %101 = load i64, i64* %8, align 8

  %102 = add i64 %101, -8

  %103 = load i64, i64* %3, align 8

  store i64 %102, i64* %6, align 8, !tbaa !1240

  %104 = add i64 %101, -16

  store i64 %104, i64* %5, align 8, !tbaa !1240

  %105 = add i64 %101, -24

  %106 = load double, double* %23, align 1

  %107 = inttoptr i64 %105 to double*

  %108 = load double, double* %107

  %109 = fadd double %106, %108

  store double %109, double* %23, align 1, !tbaa !1289

  %110 = inttoptr i64 %105 to double*

  store double %109, double* %110

  %111 = add i64 %103, -707

  %112 = add i64 %103, 23

  %113 = load i64, i64* %7, align 8, !tbaa !1240

  %114 = add i64 %113, -8

  %115 = inttoptr i64 %114 to i64*

  store i64 %112, i64* %115

  store i64 %114, i64* %7, align 8, !tbaa !1240

  %116 = tail call %struct.Memory* @sub_400c10_randlc(%struct.State* nonnull %0, i64 %111, %struct.Memory* %100)

  %117 = load i64, i64* %8, align 8

  %118 = add i64 %117, -24

  %119 = load i64, i64* %3, align 8

  %120 = load double, double* %23, align 1

  %121 = inttoptr i64 %118 to double*

  %122 = load double, double* %121

  %123 = fadd double %120, %122

  %124 = inttoptr i64 %118 to double*

  store double %123, double* %124

  %125 = add i64 %117, -32

  %126 = inttoptr i64 %125 to i32*

  %127 = load i32, i32* %126

  %128 = sitofp i32 %127 to double

  %129 = inttoptr i64 %118 to double*

  %130 = load double, double* %129

  %131 = fmul double %128, %130

  store double %131, double* %23, align 1, !tbaa !1289

  %132 = tail call double @llvm.trunc.f64(double %131) #9

  %133 = tail call double @llvm.fabs.f64(double %132) #9

  %134 = fcmp ogt double %133, 0x41DFFFFFFFC00000

  %135 = fptosi double %132 to i32

  %136 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  store i64 %136, i64* %5, align 8, !tbaa !1240

  %137 = add i64 %117, -28

  %138 = inttoptr i64 %137 to i32*

  %139 = load i32, i32* %138

  %140 = sext i32 %139 to i64

  store i64 %140, i64* %6, align 8, !tbaa !1240

  %141 = shl nsw i64 %140, 2

  %142 = add i64 %141, %136

  %143 = select i1 %134, i32 -2147483648, i32 %135

  %144 = inttoptr i64 %142 to i32*

  store i32 %143, i32* %144

  %145 = inttoptr i64 %137 to i32*

  %146 = load i32, i32* %145

  %147 = add i32 %146, 1

  %148 = zext i32 %147 to i64

  store i64 %148, i64* %4, align 8, !tbaa !1240

  %149 = inttoptr i64 %137 to i32*

  store i32 %147, i32* %149

  %150 = add i64 %119, -90

  br label %block_400e90



block_400e90:                                     ; preds = %block_400e9d, %block_400e70

  %151 = phi i64 [ %33, %block_400e70 ], [ %150, %block_400e9d ]

  %152 = phi i64 [ %13, %block_400e70 ], [ %117, %block_400e9d ]

  %153 = phi %struct.Memory* [ %2, %block_400e70 ], [ %116, %block_400e9d ]

  %154 = add i64 %152, -28

  %155 = inttoptr i64 %154 to i32*

  %156 = load i32, i32* %155

  %157 = add i32 %156, -8388608

  %158 = lshr i32 %157, 31

  %159 = trunc i32 %158 to i8

  %160 = lshr i32 %156, 31

  %161 = xor i32 %158, %160

  %162 = add nuw nsw i32 %161, %160

  %163 = icmp eq i32 %162, 2

  %164 = icmp ne i8 %159, 0

  %165 = xor i1 %164, %163

  %166 = select i1 %165, i64 13, i64 145

  %167 = add i64 %151, %166

  br i1 %165, label %block_400e9d, label %block_400f21

}



; Function Attrs: noinline

define %struct.Memory* @sub_400bc0_deallocate_arrays(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400bc0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %8 = load i64, i64* %7, align 8

  %9 = load i64, i64* %6, align 8, !tbaa !1240

  %10 = add i64 %9, -8

  %11 = inttoptr i64 %10 to i64*

  store i64 %8, i64* %11

  %12 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %13 = add i64 %1, 20

  %14 = add i64 %9, -16

  %15 = inttoptr i64 %14 to i64*

  store i64 %13, i64* %15

  %16 = inttoptr i64 %14 to i64*

  %17 = load i64, i64* %16

  %18 = tail call i64 @free(i64 %12), !noalias !1311

  %19 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %20 = add i64 %17, 16

  %21 = add i64 %9, -16

  %22 = inttoptr i64 %21 to i64*

  store i64 %20, i64* %22

  %23 = inttoptr i64 %21 to i64*

  %24 = load i64, i64* %23

  %25 = tail call i64 @free(i64 %19), !noalias !1314

  %26 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %27 = add i64 %24, 16

  %28 = add i64 %9, -16

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  %30 = inttoptr i64 %28 to i64*

  %31 = load i64, i64* %30

  %32 = tail call i64 @free(i64 %26), !noalias !1317

  %33 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %33, i64* %5, align 8, !tbaa !1240

  %34 = add i64 %31, 16

  %35 = add i64 %9, -16

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = tail call i64 @free(i64 %33), !noalias !1320

  store i64 %37, i64* %4, align 8, !alias.scope !1320, !noalias !1323

  %38 = inttoptr i64 %10 to i64*

  %39 = load i64, i64* %38

  store i64 %39, i64* %7, align 8, !tbaa !1240

  %40 = inttoptr i64 %9 to i64*

  %41 = load i64, i64* %40

  store i64 %41, i64* %3, align 8, !tbaa !1240

  %42 = add i64 %9, 8

  store i64 %42, i64* %6, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400610__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_400610:

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

define %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4006c0:

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

  %12 = tail call %struct.Memory* @sub_400650_register_tm_clones(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)

  ret %struct.Memory* %12

}



; Function Attrs: noinline

define %struct.Memory* @sub_401430_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401430:

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

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2

  %25 = load i64, i64* %15, align 8

  %26 = load i64, i64* %14, align 8, !tbaa !1240

  %27 = add i64 %26, -8

  %28 = inttoptr i64 %27 to i64*

  store i64 %25, i64* %28

  store i64 %27, i64* %15, align 8, !tbaa !1240

  %29 = load i64, i64* %21, align 8

  %30 = add i64 %26, -16

  %31 = inttoptr i64 %30 to i64*

  store i64 %29, i64* %31

  %32 = load i64, i64* %20, align 8

  %33 = add i64 %26, -24

  %34 = inttoptr i64 %33 to i64*

  store i64 %32, i64* %34

  %35 = load i64, i64* %19, align 8

  %36 = add i64 %26, -32

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = load i64, i64* %18, align 8

  %39 = add i64 %26, -40

  %40 = inttoptr i64 %39 to i64*

  store i64 %38, i64* %40

  %41 = load i64, i64* %9, align 8

  %42 = add i64 %26, -48

  %43 = inttoptr i64 %42 to i64*

  store i64 %41, i64* %43

  %44 = add i64 %26, -280

  %45 = icmp ult i64 %42, 232

  %46 = zext i1 %45 to i8

  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 %46, i8* %47, align 1, !tbaa !1266

  %48 = trunc i64 %44 to i32

  %49 = and i32 %48, 255

  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #9

  %51 = trunc i32 %50 to i8

  %52 = and i8 %51, 1

  %53 = xor i8 %52, 1

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %53, i8* %54, align 1, !tbaa !1279

  %55 = xor i64 %42, %44

  %56 = lshr i64 %55, 4

  %57 = trunc i64 %56 to i8

  %58 = and i8 %57, 1

  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %58, i8* %59, align 1, !tbaa !1283

  %60 = icmp eq i64 %44, 0

  %61 = zext i1 %60 to i8

  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %61, i8* %62, align 1, !tbaa !1280

  %63 = lshr i64 %44, 63

  %64 = trunc i64 %63 to i8

  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %64, i8* %65, align 1, !tbaa !1281

  %66 = lshr i64 %42, 63

  %67 = xor i64 %63, %66

  %68 = add nuw nsw i64 %67, %66

  %69 = icmp eq i64 %68, 2

  %70 = zext i1 %69 to i8

  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %70, i8* %71, align 1, !tbaa !1282

  %72 = add i64 %26, -52

  %73 = inttoptr i64 %72 to i32*

  store i32 0, i32* %73

  %74 = add i64 %26, -56

  %75 = load i32, i32* %7, align 4

  %76 = inttoptr i64 %74 to i32*

  store i32 %75, i32* %76

  %77 = add i64 %26, -64

  %78 = load i64, i64* %12, align 8

  %79 = inttoptr i64 %77 to i64*

  store i64 %78, i64* %79

  %80 = add i64 %1, -2256

  %81 = add i64 %1, 39

  %82 = add i64 %26, -288

  %83 = inttoptr i64 %82 to i64*

  store i64 %81, i64* %83

  store i64 %82, i64* %14, align 8, !tbaa !1240

  %84 = tail call %struct.Memory* @sub_400b60_allocate_arrays(%struct.State* nonnull %0, i64 %80, %struct.Memory* %2)

  %85 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1015), i64* %12, align 8, !tbaa !1240

  %86 = load i64, i64* %15, align 8

  %87 = add i64 %86, -68

  %88 = inttoptr i64 %87 to i32*

  store i32 0, i32* %88

  %89 = add i64 %85, 32

  %90 = load i64, i64* %14, align 8, !tbaa !1240

  %91 = add i64 %90, -8

  %92 = inttoptr i64 %91 to i64*

  store i64 %89, i64* %92

  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %94 = inttoptr i64 %91 to i64*

  %95 = load i64, i64* %94

  store i64 %95, i64* %3, align 8, !alias.scope !1325, !noalias !1328

  store i64 %90, i64* %14, align 8, !alias.scope !1325, !noalias !1328

  %96 = tail call i64 @fopen(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1004), i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1015))

  %97 = load i64, i64* %15, align 8

  %98 = add i64 %97, -88

  %99 = load i64, i64* %3, align 8

  %100 = inttoptr i64 %98 to i64*

  store i64 %96, i64* %100

  %101 = icmp eq i64 %96, 0

  %102 = select i1 %101, i64 33, i64 14

  %103 = add i64 %99, %102

  br i1 %101, label %block_401498, label %block_401485



block_4015e7:                                     ; preds = %block_4015b0, %block_4015f1

  %104 = phi i64 [ %470, %block_4015b0 ], [ %359, %block_4015f1 ]

  %105 = phi i64 [ %467, %block_4015b0 ], [ %352, %block_4015f1 ]

  %106 = phi %struct.Memory* [ %466, %block_4015b0 ], [ %351, %block_4015f1 ]

  %107 = add i64 %105, -64

  %108 = inttoptr i64 %107 to i32*

  %109 = load i32, i32* %108

  %110 = add i32 %109, -10

  %111 = icmp eq i32 %110, 0

  %112 = lshr i32 %110, 31

  %113 = trunc i32 %112 to i8

  %114 = lshr i32 %109, 31

  %115 = xor i32 %112, %114

  %116 = add nuw nsw i32 %115, %114

  %117 = icmp eq i32 %116, 2

  %118 = icmp ne i8 %113, 0

  %119 = xor i1 %118, %117

  %120 = or i1 %111, %119

  %121 = select i1 %120, i64 10, i64 55

  %122 = add i64 %104, %121

  br i1 %120, label %block_4015f1, label %block_40161e



block_401672:                                     ; preds = %block_40165e, %block_401668

  %123 = phi i64 [ %1065, %block_40165e ], [ %373, %block_401668 ]

  %124 = phi %struct.Memory* [ %1059, %block_40165e ], [ %372, %block_401668 ]

  %125 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %126 = zext i32 %125 to i64

  %127 = add i64 %123, 24

  %128 = load i64, i64* %14, align 8, !tbaa !1240

  %129 = add i64 %128, -8

  %130 = inttoptr i64 %129 to i64*

  store i64 %127, i64* %130

  %131 = load i64, i64* %11, align 8, !alias.scope !1330, !noalias !1333

  %132 = load i64, i64* %621, align 8, !alias.scope !1330, !noalias !1333

  %133 = load i64, i64* %622, align 8, !alias.scope !1330, !noalias !1333

  %134 = load i64, i64* %623, align 8, !alias.scope !1330, !noalias !1333

  %135 = inttoptr i64 %128 to i64*

  %136 = load i64, i64* %135

  %137 = add i64 %128, 8

  %138 = inttoptr i64 %137 to i64*

  %139 = load i64, i64* %138

  %140 = add i64 %128, 16

  %141 = inttoptr i64 %140 to i64*

  %142 = load i64, i64* %141

  %143 = add i64 %128, 24

  %144 = inttoptr i64 %143 to i64*

  %145 = load i64, i64* %144

  %146 = add i64 %128, 32

  %147 = inttoptr i64 %146 to i64*

  %148 = load i64, i64* %147

  %149 = add i64 %128, 40

  %150 = inttoptr i64 %149 to i64*

  %151 = load i64, i64* %150

  %152 = add i64 %128, 48

  %153 = inttoptr i64 %152 to i64*

  %154 = load i64, i64* %153

  %155 = add i64 %128, 56

  %156 = inttoptr i64 %155 to i64*

  %157 = load i64, i64* %156

  %158 = add i64 %128, 64

  %159 = inttoptr i64 %158 to i64*

  %160 = load i64, i64* %159

  %161 = add i64 %128, 72

  %162 = inttoptr i64 %161 to i64*

  %163 = load i64, i64* %162

  %164 = inttoptr i64 %129 to i64*

  %165 = load i64, i64* %164

  store i64 %165, i64* %3, align 8, !alias.scope !1330, !noalias !1333

  store i64 %128, i64* %14, align 8, !alias.scope !1330, !noalias !1333

  %166 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1145), i64 %126, i64 %131, i64 %132, i64 %133, i64 %134, i64 %136, i64 %139, i64 %142, i64 %145, i64 %148, i64 %151, i64 %154, i64 %157, i64 %160, i64 %163), !noalias !1330

  %167 = load i64, i64* %3, align 8

  %168 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %169 = add i32 %168, -51

  %170 = icmp eq i32 %169, 0

  %171 = load i64, i64* %15, align 8

  %172 = add i64 %171, -132

  %173 = trunc i64 %166 to i32

  %174 = inttoptr i64 %172 to i32*

  store i32 %173, i32* %174

  %175 = select i1 %170, i64 31, i64 20

  %176 = add i64 %167, %175

  br i1 %170, label %block_4016a9, label %block_40169e



block_4014db:                                     ; preds = %block_4014c7, %block_4014d1

  %177 = phi i64 [ %1074, %block_4014c7 ], [ %381, %block_4014d1 ]

  %178 = phi i64 [ %1067, %block_4014c7 ], [ %380, %block_4014d1 ]

  %179 = phi %struct.Memory* [ %1068, %block_4014c7 ], [ %379, %block_4014d1 ]

  %180 = add i64 %178, -60

  %181 = add i64 %177, 7

  %182 = inttoptr i64 %180 to i32*

  store i32 0, i32* %182

  br label %block_4014e2



block_4016a9:                                     ; preds = %block_40169e, %block_401672

  %183 = phi i64 [ %176, %block_401672 ], [ %1102, %block_40169e ]

  %184 = phi %struct.Memory* [ %124, %block_401672 ], [ %124, %block_40169e ]

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1170), i64* %13, align 8, !tbaa !1240

  store i64 65, i64* %12, align 8, !tbaa !1240

  store i64 131072, i64* %11, align 8, !tbaa !1240

  store i64 0, i64* %622, align 8, !tbaa !1240

  store i64 10, i64* %623, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1185), i64* %16, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1191), i64* %17, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1203), i64* %9, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1207), i64* %20, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1213), i64* %21, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1217), i64* %18, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1229), i64* %19, align 8, !tbaa !1240

  %185 = add i64 %171, -144

  %186 = inttoptr i64 %185 to i64*

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1173), i64* %186

  %187 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 872) to double*)

  %188 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 880) to double*)

  %189 = add i64 %171, -80

  %190 = inttoptr i64 %189 to double*

  %191 = load double, double* %190

  %192 = bitcast %union.VectorReg* %24 to double*

  store double %191, double* %192, align 1, !tbaa !1289

  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %194 = bitcast i64* %193 to double*

  store double 0.000000e+00, double* %194, align 1, !tbaa !1289

  %195 = fdiv double %188, %191

  %196 = fdiv double %195, %187

  store double %196, double* %1162, align 1, !tbaa !1289

  store i64 0, i64* %1163, align 1, !tbaa !1289

  %197 = add i64 %171, -148

  %198 = inttoptr i64 %197 to i32*

  store i32 64, i32* %198

  %199 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %200 = add i64 %171, -152

  %201 = inttoptr i64 %200 to i32*

  store i32 %199, i32* %201

  %202 = inttoptr i64 %197 to i32*

  %203 = load i32, i32* %202

  %204 = zext i32 %203 to i64

  store i64 %204, i64* %10, align 8, !tbaa !1240

  %205 = bitcast double %191 to <2 x i32>

  %206 = extractelement <2 x i32> %205, i32 0

  %207 = bitcast [32 x %union.VectorReg]* %22 to i32*

  store i32 %206, i32* %207, align 1, !tbaa !1335

  %208 = extractelement <2 x i32> %205, i32 1

  %209 = getelementptr inbounds i8, i8* %1156, i64 4

  %210 = bitcast i8* %209 to i32*

  store i32 %208, i32* %210, align 1, !tbaa !1335

  %211 = bitcast i64* %1159 to i32*

  store i32 0, i32* %211, align 1, !tbaa !1335

  %212 = getelementptr inbounds i8, i8* %1156, i64 12

  %213 = bitcast i8* %212 to i32*

  store i32 0, i32* %213, align 1, !tbaa !1335

  %214 = load i64, i64* %15, align 8

  %215 = add i64 %214, -160

  %216 = inttoptr i64 %215 to i64*

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1238), i64* %216

  %217 = add i64 %214, -144

  %218 = inttoptr i64 %217 to i64*

  %219 = load i64, i64* %218

  %220 = load i64, i64* %14, align 8

  %221 = inttoptr i64 %220 to i64*

  store i64 %219, i64* %221

  %222 = add i64 %214, -152

  %223 = inttoptr i64 %222 to i32*

  %224 = load i32, i32* %223

  %225 = add i64 %220, 8

  %226 = inttoptr i64 %225 to i32*

  store i32 %224, i32* %226

  %227 = add i64 %220, 16

  %228 = load i64, i64* %16, align 8

  %229 = inttoptr i64 %227 to i64*

  store i64 %228, i64* %229

  %230 = add i64 %220, 24

  %231 = load i64, i64* %17, align 8

  %232 = inttoptr i64 %230 to i64*

  store i64 %231, i64* %232

  %233 = add i64 %220, 32

  %234 = load i64, i64* %9, align 8

  %235 = inttoptr i64 %233 to i64*

  store i64 %234, i64* %235

  %236 = add i64 %220, 40

  %237 = load i64, i64* %20, align 8

  %238 = inttoptr i64 %236 to i64*

  store i64 %237, i64* %238

  %239 = add i64 %220, 48

  %240 = load i64, i64* %21, align 8

  %241 = inttoptr i64 %239 to i64*

  store i64 %240, i64* %241

  %242 = add i64 %220, 56

  %243 = load i64, i64* %18, align 8

  %244 = inttoptr i64 %242 to i64*

  store i64 %243, i64* %244

  %245 = add i64 %220, 64

  %246 = load i64, i64* %19, align 8

  %247 = inttoptr i64 %245 to i64*

  store i64 %246, i64* %247

  %248 = inttoptr i64 %215 to i64*

  %249 = load i64, i64* %248

  %250 = add i64 %220, 72

  %251 = inttoptr i64 %250 to i64*

  store i64 %249, i64* %251

  %252 = add i64 %183, -4057

  %253 = add i64 %183, 269

  %254 = add i64 %220, -8

  %255 = inttoptr i64 %254 to i64*

  store i64 %253, i64* %255

  store i64 %254, i64* %14, align 8, !tbaa !1240

  %256 = tail call %struct.Memory* @sub_4006d0_c_print_results(%struct.State* nonnull %0, i64 %252, %struct.Memory* %184)

  %257 = load i64, i64* %15, align 8

  %258 = add i64 %257, -68

  %259 = load i64, i64* %3, align 8

  %260 = inttoptr i64 %258 to i32*

  %261 = load i32, i32* %260

  store i8 0, i8* %47, align 1, !tbaa !1266

  %262 = and i32 %261, 255

  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #9

  %264 = trunc i32 %263 to i8

  %265 = and i8 %264, 1

  %266 = xor i8 %265, 1

  store i8 %266, i8* %54, align 1, !tbaa !1279

  store i8 0, i8* %59, align 1, !tbaa !1283

  %267 = icmp eq i32 %261, 0

  %268 = zext i1 %267 to i8

  store i8 %268, i8* %62, align 1, !tbaa !1280

  %269 = lshr i32 %261, 31

  %270 = trunc i32 %269 to i8

  store i8 %270, i8* %65, align 1, !tbaa !1281

  store i8 0, i8* %71, align 1, !tbaa !1282

  %271 = select i1 %267, i64 335, i64 10

  %272 = add i64 %259, %271

  br i1 %267, label %block_401905, label %block_4017c0



block_4015a6:                                     ; preds = %block_401587

  store i64 1, i64* %13, align 8, !tbaa !1240

  %273 = add i64 %1178, -2742

  %274 = add i64 %1178, 10

  %275 = load i64, i64* %14, align 8, !tbaa !1240

  %276 = add i64 %275, -8

  %277 = inttoptr i64 %276 to i64*

  store i64 %274, i64* %277

  store i64 %276, i64* %14, align 8, !tbaa !1240

  %278 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %273, %struct.Memory* %1170)

  %279 = load i64, i64* %3, align 8

  br label %block_4015b0



block_401645:                                     ; preds = %block_40161e, %block_40163b

  %280 = phi i64 [ %405, %block_40161e ], [ %366, %block_40163b ]

  %281 = phi %struct.Memory* [ %394, %block_40161e ], [ %365, %block_40163b ]

  %282 = add i64 %280, -1813

  %283 = add i64 %280, 5

  %284 = load i64, i64* %14, align 8, !tbaa !1240

  %285 = add i64 %284, -8

  %286 = inttoptr i64 %285 to i64*

  store i64 %283, i64* %286

  store i64 %285, i64* %14, align 8, !tbaa !1240

  %287 = tail call %struct.Memory* @sub_400f30_full_verify(%struct.State* nonnull %0, i64 %282, %struct.Memory* %281)

  %288 = load i64, i64* %15, align 8

  %289 = add i64 %288, -68

  %290 = load i64, i64* %3, align 8

  %291 = inttoptr i64 %289 to i32*

  %292 = load i32, i32* %291

  %293 = icmp eq i32 %292, 0

  %294 = select i1 %293, i64 20, i64 10

  %295 = add i64 %290, %294

  br i1 %293, label %block_40165e, label %block_401654



block_4015f1:                                     ; preds = %block_4015e7

  %296 = zext i32 %109 to i64

  store i64 %296, i64* %12, align 8, !tbaa !1240

  %297 = add i64 %122, 20

  %298 = load i64, i64* %14, align 8, !tbaa !1240

  %299 = add i64 %298, -8

  %300 = inttoptr i64 %299 to i64*

  store i64 %297, i64* %300

  %301 = load i64, i64* %11, align 8, !alias.scope !1337, !noalias !1340

  %302 = load i64, i64* %621, align 8, !alias.scope !1337, !noalias !1340

  %303 = load i64, i64* %622, align 8, !alias.scope !1337, !noalias !1340

  %304 = load i64, i64* %623, align 8, !alias.scope !1337, !noalias !1340

  %305 = inttoptr i64 %298 to i64*

  %306 = load i64, i64* %305

  %307 = add i64 %298, 8

  %308 = inttoptr i64 %307 to i64*

  %309 = load i64, i64* %308

  %310 = add i64 %298, 16

  %311 = inttoptr i64 %310 to i64*

  %312 = load i64, i64* %311

  %313 = add i64 %298, 24

  %314 = inttoptr i64 %313 to i64*

  %315 = load i64, i64* %314

  %316 = add i64 %298, 32

  %317 = inttoptr i64 %316 to i64*

  %318 = load i64, i64* %317

  %319 = add i64 %298, 40

  %320 = inttoptr i64 %319 to i64*

  %321 = load i64, i64* %320

  %322 = add i64 %298, 48

  %323 = inttoptr i64 %322 to i64*

  %324 = load i64, i64* %323

  %325 = add i64 %298, 56

  %326 = inttoptr i64 %325 to i64*

  %327 = load i64, i64* %326

  %328 = add i64 %298, 64

  %329 = inttoptr i64 %328 to i64*

  %330 = load i64, i64* %329

  %331 = add i64 %298, 72

  %332 = inttoptr i64 %331 to i64*

  %333 = load i64, i64* %332

  %334 = inttoptr i64 %299 to i64*

  %335 = load i64, i64* %334

  store i64 %335, i64* %3, align 8, !alias.scope !1337, !noalias !1340

  store i64 %298, i64* %14, align 8, !alias.scope !1337, !noalias !1340

  %336 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1133), i64 %296, i64 %301, i64 %302, i64 %303, i64 %304, i64 %306, i64 %309, i64 %312, i64 %315, i64 %318, i64 %321, i64 %324, i64 %327, i64 %330, i64 %333), !noalias !1337

  %337 = load i64, i64* %15, align 8

  %338 = add i64 %337, -64

  %339 = load i64, i64* %3, align 8

  %340 = inttoptr i64 %338 to i32*

  %341 = load i32, i32* %340

  %342 = zext i32 %341 to i64

  store i64 %342, i64* %13, align 8, !tbaa !1240

  %343 = add i64 %337, -128

  %344 = trunc i64 %336 to i32

  %345 = inttoptr i64 %343 to i32*

  store i32 %344, i32* %345

  %346 = add i64 %339, -1461

  %347 = add i64 %339, 11

  %348 = load i64, i64* %14, align 8, !tbaa !1240

  %349 = add i64 %348, -8

  %350 = inttoptr i64 %349 to i64*

  store i64 %347, i64* %350

  store i64 %349, i64* %14, align 8, !tbaa !1240

  %351 = tail call %struct.Memory* @sub_401050_rank(%struct.State* nonnull %0, i64 %346, %struct.Memory* %106)

  %352 = load i64, i64* %15, align 8

  %353 = add i64 %352, -64

  %354 = load i64, i64* %3, align 8

  %355 = inttoptr i64 %353 to i32*

  %356 = load i32, i32* %355

  %357 = add i32 %356, 1

  %358 = inttoptr i64 %353 to i32*

  store i32 %357, i32* %358

  %359 = add i64 %354, -41

  br label %block_4015e7



block_40163b:                                     ; preds = %block_40161e

  store i64 2, i64* %13, align 8, !tbaa !1240

  %360 = add i64 %405, -2971

  %361 = add i64 %405, 10

  %362 = load i64, i64* %14, align 8, !tbaa !1240

  %363 = add i64 %362, -8

  %364 = inttoptr i64 %363 to i64*

  store i64 %361, i64* %364

  store i64 %363, i64* %14, align 8, !tbaa !1240

  %365 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %360, %struct.Memory* %394)

  %366 = load i64, i64* %3, align 8

  br label %block_401645



block_401668:                                     ; preds = %block_40165e

  store i64 3, i64* %13, align 8, !tbaa !1240

  %367 = add i64 %1065, -2936

  %368 = add i64 %1065, 10

  %369 = load i64, i64* %14, align 8, !tbaa !1240

  %370 = add i64 %369, -8

  %371 = inttoptr i64 %370 to i64*

  store i64 %368, i64* %371

  store i64 %370, i64* %14, align 8, !tbaa !1240

  %372 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %367, %struct.Memory* %1059)

  %373 = load i64, i64* %3, align 8

  br label %block_401672



block_4014d1:                                     ; preds = %block_4014c7

  store i64 3, i64* %13, align 8, !tbaa !1240

  %374 = add i64 %1074, -2609

  %375 = add i64 %1074, 10

  %376 = load i64, i64* %14, align 8, !tbaa !1240

  %377 = add i64 %376, -8

  %378 = inttoptr i64 %377 to i64*

  store i64 %375, i64* %378

  store i64 %377, i64* %14, align 8, !tbaa !1240

  %379 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %374, %struct.Memory* %1068)

  %380 = load i64, i64* %15, align 8

  %381 = load i64, i64* %3, align 8

  br label %block_4014db



block_40161e:                                     ; preds = %block_4015e7

  store i64 0, i64* %13, align 8, !tbaa !1240

  %382 = add i64 %122, -2862

  %383 = add i64 %122, 7

  %384 = load i64, i64* %14, align 8, !tbaa !1240

  %385 = add i64 %384, -8

  %386 = inttoptr i64 %385 to i64*

  store i64 %383, i64* %386

  store i64 %385, i64* %14, align 8, !tbaa !1240

  %387 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %382, %struct.Memory* %106)

  %388 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1266

  store i8 1, i8* %54, align 1, !tbaa !1279

  store i8 1, i8* %62, align 1, !tbaa !1280

  store i8 0, i8* %65, align 1, !tbaa !1281

  store i8 0, i8* %71, align 1, !tbaa !1282

  store i8 0, i8* %59, align 1, !tbaa !1283

  %389 = add i64 %388, -2789

  %390 = add i64 %388, 7

  %391 = load i64, i64* %14, align 8, !tbaa !1240

  %392 = add i64 %391, -8

  %393 = inttoptr i64 %392 to i64*

  store i64 %390, i64* %393

  store i64 %392, i64* %14, align 8, !tbaa !1240

  %394 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %389, %struct.Memory* %387)

  %395 = load i64, i64* %15, align 8

  %396 = add i64 %395, -80

  %397 = load i64, i64* %3, align 8

  %398 = load double, double* %1158, align 1

  %399 = inttoptr i64 %396 to double*

  store double %398, double* %399

  %400 = add i64 %395, -68

  %401 = inttoptr i64 %400 to i32*

  %402 = load i32, i32* %401

  %403 = icmp eq i32 %402, 0

  %404 = select i1 %403, i64 25, i64 15

  %405 = add i64 %397, %404

  br i1 %403, label %block_401645, label %block_40163b



block_4015b0:                                     ; preds = %block_401587, %block_4015a6

  %406 = phi i64 [ %1178, %block_401587 ], [ %279, %block_4015a6 ]

  %407 = phi %struct.Memory* [ %1170, %block_401587 ], [ %278, %block_4015a6 ]

  store i64 1, i64* %13, align 8, !tbaa !1240

  %408 = add i64 %406, -1376

  %409 = add i64 %406, 10

  %410 = load i64, i64* %14, align 8, !tbaa !1240

  %411 = add i64 %410, -8

  %412 = inttoptr i64 %411 to i64*

  store i64 %409, i64* %412

  store i64 %411, i64* %14, align 8, !tbaa !1240

  %413 = tail call %struct.Memory* @sub_401050_rank(%struct.State* nonnull %0, i64 %408, %struct.Memory* %407)

  %414 = load i64, i64* %3, align 8

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %415 = add i64 %414, 28

  %416 = load i64, i64* %14, align 8, !tbaa !1240

  %417 = add i64 %416, -8

  %418 = inttoptr i64 %417 to i64*

  store i64 %415, i64* %418

  %419 = load i64, i64* %12, align 8, !alias.scope !1342, !noalias !1345

  %420 = load i64, i64* %11, align 8, !alias.scope !1342, !noalias !1345

  %421 = load i64, i64* %621, align 8, !alias.scope !1342, !noalias !1345

  %422 = load i64, i64* %622, align 8, !alias.scope !1342, !noalias !1345

  %423 = load i64, i64* %623, align 8, !alias.scope !1342, !noalias !1345

  %424 = inttoptr i64 %416 to i64*

  %425 = load i64, i64* %424

  %426 = add i64 %416, 8

  %427 = inttoptr i64 %426 to i64*

  %428 = load i64, i64* %427

  %429 = add i64 %416, 16

  %430 = inttoptr i64 %429 to i64*

  %431 = load i64, i64* %430

  %432 = add i64 %416, 24

  %433 = inttoptr i64 %432 to i64*

  %434 = load i64, i64* %433

  %435 = add i64 %416, 32

  %436 = inttoptr i64 %435 to i64*

  %437 = load i64, i64* %436

  %438 = add i64 %416, 40

  %439 = inttoptr i64 %438 to i64*

  %440 = load i64, i64* %439

  %441 = add i64 %416, 48

  %442 = inttoptr i64 %441 to i64*

  %443 = load i64, i64* %442

  %444 = add i64 %416, 56

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %416, 64

  %448 = inttoptr i64 %447 to i64*

  %449 = load i64, i64* %448

  %450 = add i64 %416, 72

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = inttoptr i64 %417 to i64*

  %454 = load i64, i64* %453

  store i64 %454, i64* %3, align 8, !alias.scope !1342, !noalias !1345

  store i64 %416, i64* %14, align 8, !alias.scope !1342, !noalias !1345

  %455 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1118), i64 %419, i64 %420, i64 %421, i64 %422, i64 %423, i64 %425, i64 %428, i64 %431, i64 %434, i64 %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452), !noalias !1342

  %456 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  %457 = load i64, i64* %15, align 8

  %458 = add i64 %457, -124

  %459 = trunc i64 %455 to i32

  %460 = inttoptr i64 %458 to i32*

  store i32 %459, i32* %460

  %461 = add i64 %456, -2870

  %462 = add i64 %456, 10

  %463 = load i64, i64* %14, align 8, !tbaa !1240

  %464 = add i64 %463, -8

  %465 = inttoptr i64 %464 to i64*

  store i64 %462, i64* %465

  store i64 %464, i64* %14, align 8, !tbaa !1240

  %466 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %461, %struct.Memory* %413)

  %467 = load i64, i64* %15, align 8

  %468 = add i64 %467, -64

  %469 = load i64, i64* %3, align 8

  %470 = add i64 %469, 7

  %471 = inttoptr i64 %468 to i32*

  store i32 1, i32* %471

  br label %block_4015e7



block_4017c0:                                     ; preds = %block_4016a9

  store i64 3, i64* %13, align 8, !tbaa !1240

  %472 = add i64 %272, -3200

  %473 = add i64 %272, 10

  %474 = load i64, i64* %14, align 8, !tbaa !1240

  %475 = add i64 %474, -8

  %476 = inttoptr i64 %475 to i64*

  store i64 %473, i64* %476

  store i64 %475, i64* %14, align 8, !tbaa !1240

  %477 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %472, %struct.Memory* %256)

  %478 = load i64, i64* %3, align 8

  %479 = load i64, i64* %15, align 8

  %480 = add i64 %479, -96

  %481 = load double, double* %1158, align 1

  %482 = inttoptr i64 %480 to double*

  store double %481, double* %482

  %483 = add i64 %478, 22

  %484 = load i64, i64* %14, align 8, !tbaa !1240

  %485 = add i64 %484, -8

  %486 = inttoptr i64 %485 to i64*

  store i64 %483, i64* %486

  %487 = load i64, i64* %12, align 8, !alias.scope !1347, !noalias !1350

  %488 = load i64, i64* %11, align 8, !alias.scope !1347, !noalias !1350

  %489 = load i64, i64* %621, align 8, !alias.scope !1347, !noalias !1350

  %490 = load i64, i64* %622, align 8, !alias.scope !1347, !noalias !1350

  %491 = load i64, i64* %623, align 8, !alias.scope !1347, !noalias !1350

  %492 = inttoptr i64 %484 to i64*

  %493 = load i64, i64* %492

  %494 = add i64 %484, 8

  %495 = inttoptr i64 %494 to i64*

  %496 = load i64, i64* %495

  %497 = add i64 %484, 16

  %498 = inttoptr i64 %497 to i64*

  %499 = load i64, i64* %498

  %500 = add i64 %484, 24

  %501 = inttoptr i64 %500 to i64*

  %502 = load i64, i64* %501

  %503 = add i64 %484, 32

  %504 = inttoptr i64 %503 to i64*

  %505 = load i64, i64* %504

  %506 = add i64 %484, 40

  %507 = inttoptr i64 %506 to i64*

  %508 = load i64, i64* %507

  %509 = add i64 %484, 48

  %510 = inttoptr i64 %509 to i64*

  %511 = load i64, i64* %510

  %512 = add i64 %484, 56

  %513 = inttoptr i64 %512 to i64*

  %514 = load i64, i64* %513

  %515 = add i64 %484, 64

  %516 = inttoptr i64 %515 to i64*

  %517 = load i64, i64* %516

  %518 = add i64 %484, 72

  %519 = inttoptr i64 %518 to i64*

  %520 = load i64, i64* %519

  %521 = inttoptr i64 %485 to i64*

  %522 = load i64, i64* %521

  store i64 %522, i64* %3, align 8, !alias.scope !1347, !noalias !1350

  store i64 %484, i64* %14, align 8, !alias.scope !1347, !noalias !1350

  %523 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1258), i64 %487, i64 %488, i64 %489, i64 %490, i64 %491, i64 %493, i64 %496, i64 %499, i64 %502, i64 %505, i64 %508, i64 %511, i64 %514, i64 %517, i64 %520), !noalias !1347

  %524 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1280), i64* %13, align 8, !tbaa !1240

  %525 = load i64, i64* %15, align 8

  %526 = add i64 %525, -96

  %527 = inttoptr i64 %526 to double*

  %528 = load double, double* %527

  store double %528, double* %1158, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1160, align 1, !tbaa !1289

  %529 = add i64 %525, -164

  %530 = trunc i64 %523 to i32

  %531 = inttoptr i64 %529 to i32*

  store i32 %530, i32* %531

  %532 = add i64 %524, 28

  %533 = load i64, i64* %14, align 8, !tbaa !1240

  %534 = add i64 %533, -8

  %535 = inttoptr i64 %534 to i64*

  store i64 %532, i64* %535

  %536 = load i64, i64* %12, align 8, !alias.scope !1352, !noalias !1355

  %537 = load i64, i64* %11, align 8, !alias.scope !1352, !noalias !1355

  %538 = load i64, i64* %621, align 8, !alias.scope !1352, !noalias !1355

  %539 = load i64, i64* %622, align 8, !alias.scope !1352, !noalias !1355

  %540 = load i64, i64* %623, align 8, !alias.scope !1352, !noalias !1355

  %541 = inttoptr i64 %533 to i64*

  %542 = load i64, i64* %541

  %543 = add i64 %533, 8

  %544 = inttoptr i64 %543 to i64*

  %545 = load i64, i64* %544

  %546 = add i64 %533, 16

  %547 = inttoptr i64 %546 to i64*

  %548 = load i64, i64* %547

  %549 = add i64 %533, 24

  %550 = inttoptr i64 %549 to i64*

  %551 = load i64, i64* %550

  %552 = add i64 %533, 32

  %553 = inttoptr i64 %552 to i64*

  %554 = load i64, i64* %553

  %555 = add i64 %533, 40

  %556 = inttoptr i64 %555 to i64*

  %557 = load i64, i64* %556

  %558 = add i64 %533, 48

  %559 = inttoptr i64 %558 to i64*

  %560 = load i64, i64* %559

  %561 = add i64 %533, 56

  %562 = inttoptr i64 %561 to i64*

  %563 = load i64, i64* %562

  %564 = add i64 %533, 64

  %565 = inttoptr i64 %564 to i64*

  %566 = load i64, i64* %565

  %567 = add i64 %533, 72

  %568 = inttoptr i64 %567 to i64*

  %569 = load i64, i64* %568

  %570 = inttoptr i64 %534 to i64*

  %571 = load i64, i64* %570

  store i64 %571, i64* %3, align 8, !alias.scope !1352, !noalias !1355

  store i64 %533, i64* %14, align 8, !alias.scope !1352, !noalias !1355

  %572 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1280), i64 %536, i64 %537, i64 %538, i64 %539, i64 %540, i64 %542, i64 %545, i64 %548, i64 %551, i64 %554, i64 %557, i64 %560, i64 %563, i64 %566, i64 %569), !noalias !1352

  store i64 %572, i64* %93, align 8, !alias.scope !1352, !noalias !1355

  %573 = load i64, i64* %3, align 8

  store i32 0, i32* %207, align 1, !tbaa !1244

  store i32 0, i32* %210, align 1, !tbaa !1244

  store i32 0, i32* %211, align 1, !tbaa !1244

  store i32 0, i32* %213, align 1, !tbaa !1244

  %574 = load i64, i64* %15, align 8

  %575 = add i64 %574, -96

  %576 = inttoptr i64 %575 to double*

  %577 = load double, double* %576

  store double %577, double* %1162, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1164, align 1, !tbaa !1289

  %578 = add i64 %573, 12

  store i64 %578, i64* %3, align 8

  %579 = load double, double* %1158, align 1

  %580 = fcmp uno double %577, %579

  %581 = trunc i64 %572 to i32

  br i1 %580, label %582, label %595



; <label>:582:                                    ; preds = %block_4017c0

  %583 = fadd double %577, %579

  %584 = bitcast double %583 to i64

  %585 = and i64 %584, 9221120237041090560

  %586 = icmp eq i64 %585, 9218868437227405312

  %587 = and i64 %584, 2251799813685247

  %588 = icmp ne i64 %587, 0

  %589 = and i1 %586, %588

  br i1 %589, label %590, label %601



; <label>:590:                                    ; preds = %582

  %591 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %578, %struct.Memory* %477) #12

  %592 = load i64, i64* %15, align 8

  %593 = load i32, i32* %5, align 4

  %594 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:595:                                    ; preds = %block_4017c0

  %596 = fcmp ogt double %577, %579

  br i1 %596, label %601, label %597



; <label>:597:                                    ; preds = %595

  %598 = fcmp olt double %577, %579

  br i1 %598, label %601, label %599



; <label>:599:                                    ; preds = %597

  %600 = fcmp oeq double %577, %579

  br i1 %600, label %601, label %605



; <label>:601:                                    ; preds = %599, %597, %595, %582

  %602 = phi i8 [ 0, %595 ], [ 0, %597 ], [ 1, %599 ], [ 1, %582 ]

  %603 = phi i8 [ 0, %595 ], [ 0, %597 ], [ 0, %599 ], [ 1, %582 ]

  %604 = phi i8 [ 0, %595 ], [ 1, %597 ], [ 0, %599 ], [ 1, %582 ]

  store i8 %602, i8* %62, align 1, !tbaa !1357

  store i8 %603, i8* %54, align 1, !tbaa !1357

  store i8 %604, i8* %47, align 1, !tbaa !1357

  br label %605



; <label>:605:                                    ; preds = %601, %599

  store i8 0, i8* %71, align 1, !tbaa !1357

  store i8 0, i8* %65, align 1, !tbaa !1357

  store i8 0, i8* %59, align 1, !tbaa !1357

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %605, %590

  %606 = phi i64 [ %594, %590 ], [ %578, %605 ]

  %607 = phi i32 [ %593, %590 ], [ %581, %605 ]

  %608 = phi i64 [ %592, %590 ], [ %574, %605 ]

  %609 = phi %struct.Memory* [ %591, %590 ], [ %477, %605 ]

  %610 = add i64 %608, -168

  %611 = inttoptr i64 %610 to i32*

  store i32 %607, i32* %611

  %612 = add i64 %606, 31

  %613 = add i64 %606, 12

  %614 = load i8, i8* %62, align 1, !tbaa !1280

  %615 = icmp eq i8 %614, 0

  %616 = select i1 %615, i64 %612, i64 %613

  br i1 %615, label %block_401827, label %block_401814



block_401526:                                     ; preds = %block_4014e2

  %617 = add i64 %1093, 17

  %618 = load i64, i64* %14, align 8, !tbaa !1240

  %619 = add i64 %618, -8

  %620 = inttoptr i64 %619 to i64*

  store i64 %617, i64* %620

  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %624 = load i64, i64* %12, align 8, !alias.scope !1358, !noalias !1361

  %625 = load i64, i64* %11, align 8, !alias.scope !1358, !noalias !1361

  %626 = load i64, i64* %621, align 8, !alias.scope !1358, !noalias !1361

  %627 = load i64, i64* %622, align 8, !alias.scope !1358, !noalias !1361

  %628 = load i64, i64* %623, align 8, !alias.scope !1358, !noalias !1361

  %629 = inttoptr i64 %618 to i64*

  %630 = load i64, i64* %629

  %631 = add i64 %618, 8

  %632 = inttoptr i64 %631 to i64*

  %633 = load i64, i64* %632

  %634 = add i64 %618, 16

  %635 = inttoptr i64 %634 to i64*

  %636 = load i64, i64* %635

  %637 = add i64 %618, 24

  %638 = inttoptr i64 %637 to i64*

  %639 = load i64, i64* %638

  %640 = add i64 %618, 32

  %641 = inttoptr i64 %640 to i64*

  %642 = load i64, i64* %641

  %643 = add i64 %618, 40

  %644 = inttoptr i64 %643 to i64*

  %645 = load i64, i64* %644

  %646 = add i64 %618, 48

  %647 = inttoptr i64 %646 to i64*

  %648 = load i64, i64* %647

  %649 = add i64 %618, 56

  %650 = inttoptr i64 %649 to i64*

  %651 = load i64, i64* %650

  %652 = add i64 %618, 64

  %653 = inttoptr i64 %652 to i64*

  %654 = load i64, i64* %653

  %655 = add i64 %618, 72

  %656 = inttoptr i64 %655 to i64*

  %657 = load i64, i64* %656

  %658 = inttoptr i64 %619 to i64*

  %659 = load i64, i64* %658

  store i64 %659, i64* %3, align 8, !alias.scope !1358, !noalias !1361

  store i64 %618, i64* %14, align 8, !alias.scope !1358, !noalias !1361

  %660 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1017), i64 %624, i64 %625, i64 %626, i64 %627, i64 %628, i64 %630, i64 %633, i64 %636, i64 %639, i64 %642, i64 %645, i64 %648, i64 %651, i64 %654, i64 %657), !noalias !1358

  %661 = load i64, i64* %3, align 8

  store i64 8388608, i64* %10, align 8, !tbaa !1240

  store i64 65, i64* %11, align 8, !tbaa !1240

  %662 = load i64, i64* %15, align 8

  %663 = add i64 %662, -112

  %664 = trunc i64 %660 to i32

  %665 = inttoptr i64 %663 to i32*

  store i32 %664, i32* %665

  %666 = add i64 %661, 32

  %667 = load i64, i64* %14, align 8, !tbaa !1240

  %668 = add i64 %667, -8

  %669 = inttoptr i64 %668 to i64*

  store i64 %666, i64* %669

  %670 = load i64, i64* %622, align 8, !alias.scope !1363, !noalias !1366

  %671 = load i64, i64* %623, align 8, !alias.scope !1363, !noalias !1366

  %672 = inttoptr i64 %667 to i64*

  %673 = load i64, i64* %672

  %674 = add i64 %667, 8

  %675 = inttoptr i64 %674 to i64*

  %676 = load i64, i64* %675

  %677 = add i64 %667, 16

  %678 = inttoptr i64 %677 to i64*

  %679 = load i64, i64* %678

  %680 = add i64 %667, 24

  %681 = inttoptr i64 %680 to i64*

  %682 = load i64, i64* %681

  %683 = add i64 %667, 32

  %684 = inttoptr i64 %683 to i64*

  %685 = load i64, i64* %684

  %686 = add i64 %667, 40

  %687 = inttoptr i64 %686 to i64*

  %688 = load i64, i64* %687

  %689 = add i64 %667, 48

  %690 = inttoptr i64 %689 to i64*

  %691 = load i64, i64* %690

  %692 = add i64 %667, 56

  %693 = inttoptr i64 %692 to i64*

  %694 = load i64, i64* %693

  %695 = add i64 %667, 64

  %696 = inttoptr i64 %695 to i64*

  %697 = load i64, i64* %696

  %698 = add i64 %667, 72

  %699 = inttoptr i64 %698 to i64*

  %700 = load i64, i64* %699

  %701 = inttoptr i64 %668 to i64*

  %702 = load i64, i64* %701

  store i64 %702, i64* %3, align 8, !alias.scope !1363, !noalias !1366

  store i64 %667, i64* %14, align 8, !alias.scope !1363, !noalias !1366

  %703 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1074), i64 8388608, i64 65, i64 8388608, i64 %670, i64 %671, i64 %673, i64 %676, i64 %679, i64 %682, i64 %685, i64 %688, i64 %691, i64 %694, i64 %697, i64 %700), !noalias !1363

  %704 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1099), i64* %13, align 8, !tbaa !1240

  store i64 10, i64* %12, align 8, !tbaa !1240

  %705 = load i64, i64* %15, align 8

  %706 = add i64 %705, -116

  %707 = trunc i64 %703 to i32

  %708 = inttoptr i64 %706 to i32*

  store i32 %707, i32* %708

  %709 = add i64 %704, 25

  %710 = load i64, i64* %14, align 8, !tbaa !1240

  %711 = add i64 %710, -8

  %712 = inttoptr i64 %711 to i64*

  store i64 %709, i64* %712

  %713 = load i64, i64* %11, align 8, !alias.scope !1368, !noalias !1371

  %714 = load i64, i64* %621, align 8, !alias.scope !1368, !noalias !1371

  %715 = load i64, i64* %622, align 8, !alias.scope !1368, !noalias !1371

  %716 = load i64, i64* %623, align 8, !alias.scope !1368, !noalias !1371

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

  store i64 %747, i64* %3, align 8, !alias.scope !1368, !noalias !1371

  store i64 %710, i64* %14, align 8, !alias.scope !1368, !noalias !1371

  %748 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1099), i64 10, i64 %713, i64 %714, i64 %715, i64 %716, i64 %718, i64 %721, i64 %724, i64 %727, i64 %730, i64 %733, i64 %736, i64 %739, i64 %742, i64 %745), !noalias !1368

  store i64 %748, i64* %93, align 8, !alias.scope !1368, !noalias !1371

  %749 = load i64, i64* %15, align 8

  %750 = add i64 %749, -68

  %751 = load i64, i64* %3, align 8

  %752 = inttoptr i64 %750 to i32*

  %753 = load i32, i32* %752

  %754 = icmp eq i32 %753, 0

  %755 = add i64 %749, -120

  %756 = trunc i64 %748 to i32

  %757 = inttoptr i64 %755 to i32*

  store i32 %756, i32* %757

  %758 = select i1 %754, i64 23, i64 13

  %759 = add i64 %751, %758

  br i1 %754, label %block_401587, label %block_40157d



block_40157d:                                     ; preds = %block_401526

  store i64 1, i64* %13, align 8, !tbaa !1240

  %760 = add i64 %759, -2781

  %761 = add i64 %759, 10

  %762 = load i64, i64* %14, align 8, !tbaa !1240

  %763 = add i64 %762, -8

  %764 = inttoptr i64 %763 to i64*

  store i64 %761, i64* %764

  store i64 %763, i64* %14, align 8, !tbaa !1240

  %765 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %760, %struct.Memory* %1080)

  %766 = load i64, i64* %3, align 8

  br label %block_401587



block_401827:                                     ; preds = %block_401814, %block_40181a, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %767 = phi i64 [ %612, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %1130, %block_401814 ], [ %1077, %block_40181a ]

  %768 = phi %struct.Memory* [ %609, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %609, %block_401814 ], [ %609, %block_40181a ]

  store i64 1, i64* %13, align 8, !tbaa !1240

  %769 = add i64 %767, -3303

  %770 = add i64 %767, 10

  %771 = load i64, i64* %14, align 8, !tbaa !1240

  %772 = add i64 %771, -8

  %773 = inttoptr i64 %772 to i64*

  store i64 %770, i64* %773

  store i64 %772, i64* %14, align 8, !tbaa !1240

  %774 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %769, %struct.Memory* %768)

  %775 = load i64, i64* %3, align 8

  %776 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 888) to double*)

  %777 = load i64, i64* %15, align 8

  %778 = add i64 %777, -80

  %779 = load double, double* %1158, align 1

  %780 = inttoptr i64 %778 to double*

  store double %779, double* %780

  %781 = inttoptr i64 %778 to double*

  %782 = load double, double* %781

  %783 = add i64 %777, -96

  %784 = inttoptr i64 %783 to double*

  %785 = load double, double* %784

  %786 = fdiv double %782, %785

  %787 = fmul double %786, %776

  %788 = add i64 %777, -104

  %789 = inttoptr i64 %788 to double*

  store double %787, double* %789

  %790 = inttoptr i64 %778 to double*

  %791 = load double, double* %790

  store double %791, double* %1158, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1160, align 1, !tbaa !1289

  %792 = inttoptr i64 %788 to double*

  %793 = load double, double* %792

  store double %793, double* %1162, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1164, align 1, !tbaa !1289

  %794 = add i64 %775, 59

  %795 = load i64, i64* %14, align 8, !tbaa !1240

  %796 = add i64 %795, -8

  %797 = inttoptr i64 %796 to i64*

  store i64 %794, i64* %797

  %798 = load i64, i64* %12, align 8, !alias.scope !1373, !noalias !1376

  %799 = load i64, i64* %11, align 8, !alias.scope !1373, !noalias !1376

  %800 = load i64, i64* %621, align 8, !alias.scope !1373, !noalias !1376

  %801 = load i64, i64* %622, align 8, !alias.scope !1373, !noalias !1376

  %802 = load i64, i64* %623, align 8, !alias.scope !1373, !noalias !1376

  %803 = inttoptr i64 %795 to i64*

  %804 = load i64, i64* %803

  %805 = add i64 %795, 8

  %806 = inttoptr i64 %805 to i64*

  %807 = load i64, i64* %806

  %808 = add i64 %795, 16

  %809 = inttoptr i64 %808 to i64*

  %810 = load i64, i64* %809

  %811 = add i64 %795, 24

  %812 = inttoptr i64 %811 to i64*

  %813 = load i64, i64* %812

  %814 = add i64 %795, 32

  %815 = inttoptr i64 %814 to i64*

  %816 = load i64, i64* %815

  %817 = add i64 %795, 40

  %818 = inttoptr i64 %817 to i64*

  %819 = load i64, i64* %818

  %820 = add i64 %795, 48

  %821 = inttoptr i64 %820 to i64*

  %822 = load i64, i64* %821

  %823 = add i64 %795, 56

  %824 = inttoptr i64 %823 to i64*

  %825 = load i64, i64* %824

  %826 = add i64 %795, 64

  %827 = inttoptr i64 %826 to i64*

  %828 = load i64, i64* %827

  %829 = add i64 %795, 72

  %830 = inttoptr i64 %829 to i64*

  %831 = load i64, i64* %830

  %832 = inttoptr i64 %796 to i64*

  %833 = load i64, i64* %832

  store i64 %833, i64* %3, align 8, !alias.scope !1373, !noalias !1376

  store i64 %795, i64* %14, align 8, !alias.scope !1373, !noalias !1376

  %834 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1305), i64 %798, i64 %799, i64 %800, i64 %801, i64 %802, i64 %804, i64 %807, i64 %810, i64 %813, i64 %816, i64 %819, i64 %822, i64 %825, i64 %828, i64 %831), !noalias !1373

  %835 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1266

  store i8 1, i8* %54, align 1, !tbaa !1279

  store i8 1, i8* %62, align 1, !tbaa !1280

  store i8 0, i8* %65, align 1, !tbaa !1281

  store i8 0, i8* %71, align 1, !tbaa !1282

  store i8 0, i8* %59, align 1, !tbaa !1283

  %836 = load i64, i64* %15, align 8

  %837 = add i64 %836, -172

  %838 = trunc i64 %834 to i32

  %839 = inttoptr i64 %837 to i32*

  store i32 %838, i32* %839

  %840 = add i64 %835, -3372

  %841 = add i64 %835, 13

  %842 = load i64, i64* %14, align 8, !tbaa !1240

  %843 = add i64 %842, -8

  %844 = inttoptr i64 %843 to i64*

  store i64 %841, i64* %844

  store i64 %843, i64* %14, align 8, !tbaa !1240

  %845 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %840, %struct.Memory* %774)

  %846 = load i64, i64* %3, align 8

  %847 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 888) to double*)

  %848 = load i64, i64* %15, align 8

  %849 = add i64 %848, -80

  %850 = load double, double* %1158, align 1

  %851 = inttoptr i64 %849 to double*

  store double %850, double* %851

  %852 = inttoptr i64 %849 to double*

  %853 = load double, double* %852

  %854 = add i64 %848, -96

  %855 = inttoptr i64 %854 to double*

  %856 = load double, double* %855

  %857 = fdiv double %853, %856

  %858 = fmul double %857, %847

  %859 = add i64 %848, -104

  %860 = inttoptr i64 %859 to double*

  store double %858, double* %860

  %861 = inttoptr i64 %849 to double*

  %862 = load double, double* %861

  store double %862, double* %1158, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1160, align 1, !tbaa !1289

  %863 = inttoptr i64 %859 to double*

  %864 = load double, double* %863

  store double %864, double* %1162, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1164, align 1, !tbaa !1289

  %865 = add i64 %846, 59

  %866 = load i64, i64* %14, align 8, !tbaa !1240

  %867 = add i64 %866, -8

  %868 = inttoptr i64 %867 to i64*

  store i64 %865, i64* %868

  %869 = load i64, i64* %12, align 8, !alias.scope !1378, !noalias !1381

  %870 = load i64, i64* %11, align 8, !alias.scope !1378, !noalias !1381

  %871 = load i64, i64* %621, align 8, !alias.scope !1378, !noalias !1381

  %872 = load i64, i64* %622, align 8, !alias.scope !1378, !noalias !1381

  %873 = load i64, i64* %623, align 8, !alias.scope !1378, !noalias !1381

  %874 = inttoptr i64 %866 to i64*

  %875 = load i64, i64* %874

  %876 = add i64 %866, 8

  %877 = inttoptr i64 %876 to i64*

  %878 = load i64, i64* %877

  %879 = add i64 %866, 16

  %880 = inttoptr i64 %879 to i64*

  %881 = load i64, i64* %880

  %882 = add i64 %866, 24

  %883 = inttoptr i64 %882 to i64*

  %884 = load i64, i64* %883

  %885 = add i64 %866, 32

  %886 = inttoptr i64 %885 to i64*

  %887 = load i64, i64* %886

  %888 = add i64 %866, 40

  %889 = inttoptr i64 %888 to i64*

  %890 = load i64, i64* %889

  %891 = add i64 %866, 48

  %892 = inttoptr i64 %891 to i64*

  %893 = load i64, i64* %892

  %894 = add i64 %866, 56

  %895 = inttoptr i64 %894 to i64*

  %896 = load i64, i64* %895

  %897 = add i64 %866, 64

  %898 = inttoptr i64 %897 to i64*

  %899 = load i64, i64* %898

  %900 = add i64 %866, 72

  %901 = inttoptr i64 %900 to i64*

  %902 = load i64, i64* %901

  %903 = inttoptr i64 %867 to i64*

  %904 = load i64, i64* %903

  store i64 %904, i64* %3, align 8, !alias.scope !1378, !noalias !1381

  store i64 %866, i64* %14, align 8, !alias.scope !1378, !noalias !1381

  %905 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1340), i64 %869, i64 %870, i64 %871, i64 %872, i64 %873, i64 %875, i64 %878, i64 %881, i64 %884, i64 %887, i64 %890, i64 %893, i64 %896, i64 %899, i64 %902), !noalias !1378

  %906 = load i64, i64* %3, align 8

  store i64 2, i64* %13, align 8, !tbaa !1240

  %907 = load i64, i64* %15, align 8

  %908 = add i64 %907, -176

  %909 = trunc i64 %905 to i32

  %910 = inttoptr i64 %908 to i32*

  store i32 %909, i32* %910

  %911 = add i64 %906, -3444

  %912 = add i64 %906, 16

  %913 = load i64, i64* %14, align 8, !tbaa !1240

  %914 = add i64 %913, -8

  %915 = inttoptr i64 %914 to i64*

  store i64 %912, i64* %915

  store i64 %914, i64* %14, align 8, !tbaa !1240

  %916 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %911, %struct.Memory* %845)

  %917 = load i64, i64* %3, align 8

  %918 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 888) to double*)

  %919 = load i64, i64* %15, align 8

  %920 = add i64 %919, -80

  %921 = load double, double* %1158, align 1

  %922 = inttoptr i64 %920 to double*

  store double %921, double* %922

  %923 = inttoptr i64 %920 to double*

  %924 = load double, double* %923

  %925 = add i64 %919, -96

  %926 = inttoptr i64 %925 to double*

  %927 = load double, double* %926

  %928 = fdiv double %924, %927

  %929 = fmul double %928, %918

  %930 = add i64 %919, -104

  %931 = inttoptr i64 %930 to double*

  store double %929, double* %931

  %932 = inttoptr i64 %920 to double*

  %933 = load double, double* %932

  store double %933, double* %1158, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1160, align 1, !tbaa !1289

  %934 = inttoptr i64 %930 to double*

  %935 = load double, double* %934

  store double %935, double* %1162, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1164, align 1, !tbaa !1289

  %936 = add i64 %917, 59

  %937 = load i64, i64* %14, align 8, !tbaa !1240

  %938 = add i64 %937, -8

  %939 = inttoptr i64 %938 to i64*

  store i64 %936, i64* %939

  %940 = load i64, i64* %12, align 8, !alias.scope !1383, !noalias !1386

  %941 = load i64, i64* %11, align 8, !alias.scope !1383, !noalias !1386

  %942 = load i64, i64* %621, align 8, !alias.scope !1383, !noalias !1386

  %943 = load i64, i64* %622, align 8, !alias.scope !1383, !noalias !1386

  %944 = load i64, i64* %623, align 8, !alias.scope !1383, !noalias !1386

  %945 = inttoptr i64 %937 to i64*

  %946 = load i64, i64* %945

  %947 = add i64 %937, 8

  %948 = inttoptr i64 %947 to i64*

  %949 = load i64, i64* %948

  %950 = add i64 %937, 16

  %951 = inttoptr i64 %950 to i64*

  %952 = load i64, i64* %951

  %953 = add i64 %937, 24

  %954 = inttoptr i64 %953 to i64*

  %955 = load i64, i64* %954

  %956 = add i64 %937, 32

  %957 = inttoptr i64 %956 to i64*

  %958 = load i64, i64* %957

  %959 = add i64 %937, 40

  %960 = inttoptr i64 %959 to i64*

  %961 = load i64, i64* %960

  %962 = add i64 %937, 48

  %963 = inttoptr i64 %962 to i64*

  %964 = load i64, i64* %963

  %965 = add i64 %937, 56

  %966 = inttoptr i64 %965 to i64*

  %967 = load i64, i64* %966

  %968 = add i64 %937, 64

  %969 = inttoptr i64 %968 to i64*

  %970 = load i64, i64* %969

  %971 = add i64 %937, 72

  %972 = inttoptr i64 %971 to i64*

  %973 = load i64, i64* %972

  %974 = inttoptr i64 %938 to i64*

  %975 = load i64, i64* %974

  store i64 %975, i64* %3, align 8, !alias.scope !1383, !noalias !1386

  store i64 %937, i64* %14, align 8, !alias.scope !1383, !noalias !1386

  %976 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1375), i64 %940, i64 %941, i64 %942, i64 %943, i64 %944, i64 %946, i64 %949, i64 %952, i64 %955, i64 %958, i64 %961, i64 %964, i64 %967, i64 %970, i64 %973), !noalias !1383

  %977 = load i64, i64* %15, align 8

  %978 = add i64 %977, -180

  %979 = trunc i64 %976 to i32

  %980 = load i64, i64* %3, align 8

  %981 = add i64 %980, 6

  %982 = inttoptr i64 %978 to i32*

  store i32 %979, i32* %982

  br label %block_401905



block_401905:                                     ; preds = %block_401827, %block_4016a9

  %983 = phi i64 [ %272, %block_4016a9 ], [ %981, %block_401827 ]

  %984 = phi %struct.Memory* [ %256, %block_4016a9 ], [ %916, %block_401827 ]

  %985 = add i64 %983, -3397

  %986 = add i64 %983, 5

  %987 = load i64, i64* %14, align 8, !tbaa !1240

  %988 = add i64 %987, -8

  %989 = inttoptr i64 %988 to i64*

  store i64 %986, i64* %989

  store i64 %988, i64* %14, align 8, !tbaa !1240

  %990 = tail call %struct.Memory* @sub_400bc0_deallocate_arrays(%struct.State* nonnull %0, i64 %985, %struct.Memory* %984)

  store i64 0, i64* %8, align 8, !tbaa !1240

  %991 = load i64, i64* %14, align 8

  %992 = add i64 %991, 232

  %993 = icmp ugt i64 %991, -233

  %994 = zext i1 %993 to i8

  store i8 %994, i8* %47, align 1, !tbaa !1266

  %995 = trunc i64 %992 to i32

  %996 = and i32 %995, 255

  %997 = tail call i32 @llvm.ctpop.i32(i32 %996) #9

  %998 = trunc i32 %997 to i8

  %999 = and i8 %998, 1

  %1000 = xor i8 %999, 1

  store i8 %1000, i8* %54, align 1, !tbaa !1279

  %1001 = xor i64 %992, %991

  %1002 = lshr i64 %1001, 4

  %1003 = trunc i64 %1002 to i8

  %1004 = and i8 %1003, 1

  store i8 %1004, i8* %59, align 1, !tbaa !1283

  %1005 = icmp eq i64 %992, 0

  %1006 = zext i1 %1005 to i8

  store i8 %1006, i8* %62, align 1, !tbaa !1280

  %1007 = lshr i64 %992, 63

  %1008 = trunc i64 %1007 to i8

  store i8 %1008, i8* %65, align 1, !tbaa !1281

  %1009 = lshr i64 %991, 63

  %1010 = xor i64 %1007, %1009

  %1011 = add nuw nsw i64 %1010, %1007

  %1012 = icmp eq i64 %1011, 2

  %1013 = zext i1 %1012 to i8

  store i8 %1013, i8* %71, align 1, !tbaa !1282

  %1014 = add i64 %991, 240

  %1015 = inttoptr i64 %992 to i64*

  %1016 = load i64, i64* %1015

  store i64 %1016, i64* %9, align 8, !tbaa !1240

  %1017 = add i64 %991, 248

  %1018 = inttoptr i64 %1014 to i64*

  %1019 = load i64, i64* %1018

  store i64 %1019, i64* %18, align 8, !tbaa !1240

  %1020 = add i64 %991, 256

  %1021 = inttoptr i64 %1017 to i64*

  %1022 = load i64, i64* %1021

  store i64 %1022, i64* %19, align 8, !tbaa !1240

  %1023 = add i64 %991, 264

  %1024 = inttoptr i64 %1020 to i64*

  %1025 = load i64, i64* %1024

  store i64 %1025, i64* %20, align 8, !tbaa !1240

  %1026 = add i64 %991, 272

  %1027 = inttoptr i64 %1023 to i64*

  %1028 = load i64, i64* %1027

  store i64 %1028, i64* %21, align 8, !tbaa !1240

  %1029 = add i64 %991, 280

  %1030 = inttoptr i64 %1026 to i64*

  %1031 = load i64, i64* %1030

  store i64 %1031, i64* %15, align 8, !tbaa !1240

  %1032 = inttoptr i64 %1029 to i64*

  %1033 = load i64, i64* %1032

  store i64 %1033, i64* %3, align 8, !tbaa !1240

  %1034 = add i64 %991, 288

  store i64 %1034, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %990



block_4014ec:                                     ; preds = %block_4014e2

  %1035 = sext i32 %1082 to i64

  %1036 = shl nsw i64 %1035, 2

  %1037 = add i64 %1036, ptrtoint (%A_test_index_array_type* @A_test_index_array to i64)

  %1038 = inttoptr i64 %1037 to i32*

  %1039 = load i32, i32* %1038

  %1040 = add i64 %1036, ptrtoint (%test_index_array_type* @test_index_array to i64)

  %1041 = inttoptr i64 %1040 to i32*

  store i32 %1039, i32* %1041

  %1042 = inttoptr i64 %180 to i32*

  %1043 = load i32, i32* %1042

  %1044 = sext i32 %1043 to i64

  %1045 = shl nsw i64 %1044, 2

  %1046 = add i64 %1045, ptrtoint (%A_test_rank_array_type* @A_test_rank_array to i64)

  %1047 = inttoptr i64 %1046 to i32*

  %1048 = load i32, i32* %1047

  %1049 = zext i32 %1048 to i64

  store i64 %1049, i64* %10, align 8, !tbaa !1240

  %1050 = add i64 %1045, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %1051 = inttoptr i64 %1050 to i32*

  store i32 %1048, i32* %1051

  %1052 = inttoptr i64 %180 to i32*

  %1053 = load i32, i32* %1052

  %1054 = add i32 %1053, 1

  %1055 = inttoptr i64 %180 to i32*

  store i32 %1054, i32* %1055

  %1056 = add i64 %1093, -10

  br label %block_4014e2



block_40165e:                                     ; preds = %block_401654, %block_401645

  %1057 = phi i64 [ %295, %block_401645 ], [ %1101, %block_401654 ]

  %1058 = phi i64 [ %288, %block_401645 ], [ %1100, %block_401654 ]

  %1059 = phi %struct.Memory* [ %287, %block_401645 ], [ %1099, %block_401654 ]

  %1060 = add i64 %1058, -68

  %1061 = inttoptr i64 %1060 to i32*

  %1062 = load i32, i32* %1061

  %1063 = icmp eq i32 %1062, 0

  %1064 = select i1 %1063, i64 20, i64 10

  %1065 = add i64 %1057, %1064

  br i1 %1063, label %block_401672, label %block_401668



block_4014c7:                                     ; preds = %block_4014a9, %block_401498

  %1066 = phi i64 [ %1126, %block_401498 ], [ %1153, %block_4014a9 ]

  %1067 = phi i64 [ %1111, %block_401498 ], [ %1152, %block_4014a9 ]

  %1068 = phi %struct.Memory* [ %1110, %block_401498 ], [ %1151, %block_4014a9 ]

  %1069 = add i64 %1067, -68

  %1070 = inttoptr i64 %1069 to i32*

  %1071 = load i32, i32* %1070

  %1072 = icmp eq i32 %1071, 0

  %1073 = select i1 %1072, i64 20, i64 10

  %1074 = add i64 %1066, %1073

  br i1 %1072, label %block_4014db, label %block_4014d1



block_40181a:                                     ; preds = %block_401814

  %1075 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 832) to double*)

  store double %1075, double* %1158, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1160, align 1, !tbaa !1289

  %1076 = add i64 %608, -96

  %1077 = add i64 %1130, 13

  %1078 = inttoptr i64 %1076 to double*

  store double %1075, double* %1078

  br label %block_401827



block_4014e2:                                     ; preds = %block_4014ec, %block_4014db

  %1079 = phi i64 [ %181, %block_4014db ], [ %1056, %block_4014ec ]

  %1080 = phi %struct.Memory* [ %179, %block_4014db ], [ %1080, %block_4014ec ]

  %1081 = inttoptr i64 %180 to i32*

  %1082 = load i32, i32* %1081

  %1083 = add i32 %1082, -5

  %1084 = lshr i32 %1083, 31

  %1085 = trunc i32 %1084 to i8

  %1086 = lshr i32 %1082, 31

  %1087 = xor i32 %1084, %1086

  %1088 = add nuw nsw i32 %1087, %1086

  %1089 = icmp eq i32 %1088, 2

  %1090 = icmp ne i8 %1085, 0

  %1091 = xor i1 %1090, %1089

  %1092 = select i1 %1091, i64 10, i64 68

  %1093 = add i64 %1079, %1092

  br i1 %1091, label %block_4014ec, label %block_401526



block_401654:                                     ; preds = %block_401645

  store i64 2, i64* %13, align 8, !tbaa !1240

  %1094 = add i64 %295, -2916

  %1095 = add i64 %295, 10

  %1096 = load i64, i64* %14, align 8, !tbaa !1240

  %1097 = add i64 %1096, -8

  %1098 = inttoptr i64 %1097 to i64*

  store i64 %1095, i64* %1098

  store i64 %1097, i64* %14, align 8, !tbaa !1240

  %1099 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %1094, %struct.Memory* %287)

  %1100 = load i64, i64* %15, align 8

  %1101 = load i64, i64* %3, align 8

  br label %block_40165e



block_40169e:                                     ; preds = %block_401672

  %1102 = add i64 %176, 11

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_4016a9



block_401498:                                     ; preds = %block_401485, %block_401430

  %1103 = phi i64 [ %103, %block_401430 ], [ %1194, %block_401485 ]

  %1104 = phi %struct.Memory* [ %84, %block_401430 ], [ %84, %block_401485 ]

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1266

  store i8 1, i8* %54, align 1, !tbaa !1279

  store i8 1, i8* %62, align 1, !tbaa !1280

  store i8 0, i8* %65, align 1, !tbaa !1281

  store i8 0, i8* %71, align 1, !tbaa !1282

  store i8 0, i8* %59, align 1, !tbaa !1283

  %1105 = add i64 %1103, -2584

  %1106 = add i64 %1103, 7

  %1107 = load i64, i64* %14, align 8, !tbaa !1240

  %1108 = add i64 %1107, -8

  %1109 = inttoptr i64 %1108 to i64*

  store i64 %1106, i64* %1109

  store i64 %1108, i64* %14, align 8, !tbaa !1240

  %1110 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %1105, %struct.Memory* %1104)

  %1111 = load i64, i64* %15, align 8

  %1112 = add i64 %1111, -68

  %1113 = load i64, i64* %3, align 8

  %1114 = inttoptr i64 %1112 to i32*

  %1115 = load i32, i32* %1114

  store i8 0, i8* %47, align 1, !tbaa !1266

  %1116 = and i32 %1115, 255

  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116) #9

  %1118 = trunc i32 %1117 to i8

  %1119 = and i8 %1118, 1

  %1120 = xor i8 %1119, 1

  store i8 %1120, i8* %54, align 1, !tbaa !1279

  store i8 0, i8* %59, align 1, !tbaa !1283

  %1121 = icmp eq i32 %1115, 0

  %1122 = zext i1 %1121 to i8

  store i8 %1122, i8* %62, align 1, !tbaa !1280

  %1123 = lshr i32 %1115, 31

  %1124 = trunc i32 %1123 to i8

  store i8 %1124, i8* %65, align 1, !tbaa !1281

  store i8 0, i8* %71, align 1, !tbaa !1282

  %1125 = select i1 %1121, i64 40, i64 10

  %1126 = add i64 %1113, %1125

  br i1 %1121, label %block_4014c7, label %block_4014a9



block_401814:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %1127 = load i8, i8* %54, align 1, !tbaa !1279

  %1128 = icmp ne i8 %1127, 0

  %1129 = select i1 %1128, i64 19, i64 6

  %1130 = add i64 %616, %1129

  %1131 = icmp eq i8 %1127, 1

  br i1 %1131, label %block_401827, label %block_40181a



block_4014a9:                                     ; preds = %block_401498

  store i64 1, i64* %13, align 8, !tbaa !1240

  %1132 = add i64 %1126, -2601

  %1133 = add i64 %1126, 10

  %1134 = load i64, i64* %14, align 8, !tbaa !1240

  %1135 = add i64 %1134, -8

  %1136 = inttoptr i64 %1135 to i64*

  store i64 %1133, i64* %1136

  store i64 %1135, i64* %14, align 8, !tbaa !1240

  %1137 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %1132, %struct.Memory* %1110)

  %1138 = load i64, i64* %3, align 8

  store i64 2, i64* %13, align 8, !tbaa !1240

  %1139 = add i64 %1138, -2611

  %1140 = add i64 %1138, 10

  %1141 = load i64, i64* %14, align 8, !tbaa !1240

  %1142 = add i64 %1141, -8

  %1143 = inttoptr i64 %1142 to i64*

  store i64 %1140, i64* %1143

  store i64 %1142, i64* %14, align 8, !tbaa !1240

  %1144 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %1139, %struct.Memory* %1137)

  %1145 = load i64, i64* %3, align 8

  store i64 3, i64* %13, align 8, !tbaa !1240

  %1146 = add i64 %1145, -2621

  %1147 = add i64 %1145, 10

  %1148 = load i64, i64* %14, align 8, !tbaa !1240

  %1149 = add i64 %1148, -8

  %1150 = inttoptr i64 %1149 to i64*

  store i64 %1147, i64* %1150

  store i64 %1149, i64* %14, align 8, !tbaa !1240

  %1151 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %1146, %struct.Memory* %1144)

  %1152 = load i64, i64* %15, align 8

  %1153 = load i64, i64* %3, align 8

  br label %block_4014c7



block_401587:                                     ; preds = %block_40157d, %block_401526

  %1154 = phi i64 [ %759, %block_401526 ], [ %766, %block_40157d ]

  %1155 = phi %struct.Memory* [ %1080, %block_401526 ], [ %765, %block_40157d ]

  %1156 = bitcast [32 x %union.VectorReg]* %22 to i8*

  %1157 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 856) to double*)

  %1158 = bitcast [32 x %union.VectorReg]* %22 to double*

  store double %1157, double* %1158, align 1, !tbaa !1289

  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1160 = bitcast i64* %1159 to double*

  store double 0.000000e+00, double* %1160, align 1, !tbaa !1289

  %1161 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 864) to double*)

  %1162 = bitcast %union.VectorReg* %23 to double*

  store double %1161, double* %1162, align 1, !tbaa !1289

  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %1164 = bitcast i64* %1163 to double*

  store double 0.000000e+00, double* %1164, align 1, !tbaa !1289

  %1165 = add i64 %1154, -1815

  %1166 = add i64 %1154, 21

  %1167 = load i64, i64* %14, align 8, !tbaa !1240

  %1168 = add i64 %1167, -8

  %1169 = inttoptr i64 %1168 to i64*

  store i64 %1166, i64* %1169

  store i64 %1168, i64* %14, align 8, !tbaa !1240

  %1170 = tail call %struct.Memory* @sub_400e70_create_seq(%struct.State* nonnull %0, i64 %1165, %struct.Memory* %1155)

  %1171 = load i64, i64* %15, align 8

  %1172 = add i64 %1171, -68

  %1173 = load i64, i64* %3, align 8

  %1174 = inttoptr i64 %1172 to i32*

  %1175 = load i32, i32* %1174

  %1176 = icmp eq i32 %1175, 0

  %1177 = select i1 %1176, i64 20, i64 10

  %1178 = add i64 %1173, %1177

  br i1 %1176, label %block_4015b0, label %block_4015a6



block_401485:                                     ; preds = %block_401430

  %1179 = inttoptr i64 %98 to i64*

  %1180 = load i64, i64* %1179

  %1181 = add i64 %103, 9

  %1182 = load i64, i64* %14, align 8, !tbaa !1240

  %1183 = add i64 %1182, -8

  %1184 = inttoptr i64 %1183 to i64*

  store i64 %1181, i64* %1184

  %1185 = inttoptr i64 %1183 to i64*

  %1186 = load i64, i64* %1185

  store i64 %1186, i64* %3, align 8, !alias.scope !1388, !noalias !1391

  store i64 %1182, i64* %14, align 8, !alias.scope !1388, !noalias !1391

  %1187 = tail call i64 @fclose(i64 %1180), !noalias !1388

  %1188 = load i64, i64* %15, align 8

  %1189 = add i64 %1188, -68

  %1190 = load i64, i64* %3, align 8

  %1191 = inttoptr i64 %1189 to i32*

  store i32 1, i32* %1191

  %1192 = add i64 %1188, -108

  %1193 = trunc i64 %1187 to i32

  %1194 = add i64 %1190, 10

  %1195 = inttoptr i64 %1192 to i32*

  store i32 %1193, i32* %1195

  br label %block_401498

}



; Function Attrs: noinline

define %struct.Memory* @sub_400ad0_elapsed_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400ad0:

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

  %19 = add i64 %1, 3664

  %20 = add i64 %1, 17

  %21 = add i64 %9, -32

  %22 = inttoptr i64 %21 to i64*

  store i64 %20, i64* %22

  store i64 %21, i64* %5, align 8, !tbaa !1240

  %23 = tail call %struct.Memory* @sub_401920_wtime_(%struct.State* nonnull %0, i64 %19, %struct.Memory* %2)

  %24 = load i64, i64* %6, align 8

  %25 = add i64 %24, -8

  %26 = inttoptr i64 %25 to double*

  %27 = load double, double* %26

  %28 = bitcast %union.VectorReg* %7 to double*

  store double %27, double* %28, align 1, !tbaa !1289

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %30 = bitcast i64* %29 to double*

  store double 0.000000e+00, double* %30, align 1, !tbaa !1289

  %31 = load i64, i64* %5, align 8

  %32 = add i64 %31, 16

  %33 = icmp ugt i64 %31, -17

  %34 = zext i1 %33 to i8

  store i8 %34, i8* %12, align 1, !tbaa !1266

  %35 = trunc i64 %32 to i32

  %36 = and i32 %35, 255

  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #9

  %38 = trunc i32 %37 to i8

  %39 = and i8 %38, 1

  %40 = xor i8 %39, 1

  store i8 %40, i8* %13, align 1, !tbaa !1279

  %41 = xor i64 %31, 16

  %42 = xor i64 %41, %32

  %43 = lshr i64 %42, 4

  %44 = trunc i64 %43 to i8

  %45 = and i8 %44, 1

  store i8 %45, i8* %14, align 1, !tbaa !1283

  %46 = icmp eq i64 %32, 0

  %47 = zext i1 %46 to i8

  store i8 %47, i8* %15, align 1, !tbaa !1280

  %48 = lshr i64 %32, 63

  %49 = trunc i64 %48 to i8

  store i8 %49, i8* %16, align 1, !tbaa !1281

  %50 = lshr i64 %31, 63

  %51 = xor i64 %48, %50

  %52 = add nuw nsw i64 %51, %48

  %53 = icmp eq i64 %52, 2

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %17, align 1, !tbaa !1282

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



; Function Attrs: noinline

define %struct.Memory* @sub_4006d0_c_print_results(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_4006d0:

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

  %158 = load i64, i64* %154, align 8, !alias.scope !1393, !noalias !1396

  %159 = load i64, i64* %153, align 8, !alias.scope !1393, !noalias !1396

  %160 = load i64, i64* %156, align 8, !alias.scope !1393, !noalias !1396

  %161 = load i64, i64* %157, align 8, !alias.scope !1393, !noalias !1396

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

  store i64 %192, i64* %3, align 8, !alias.scope !1393, !noalias !1396

  store i64 %149, i64* %17, align 8, !alias.scope !1393, !noalias !1396

  %193 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 4), i64 %123, i64 %158, i64 %159, i64 %160, i64 %161, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175, i64 %178, i64 %181, i64 %184, i64 %187, i64 %190), !noalias !1393

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

  %208 = load i64, i64* %154, align 8, !alias.scope !1398, !noalias !1401

  %209 = load i64, i64* %153, align 8, !alias.scope !1398, !noalias !1401

  %210 = load i64, i64* %156, align 8, !alias.scope !1398, !noalias !1401

  %211 = load i64, i64* %157, align 8, !alias.scope !1398, !noalias !1401

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

  store i64 %242, i64* %3, align 8, !alias.scope !1398, !noalias !1401

  store i64 %205, i64* %17, align 8, !alias.scope !1398, !noalias !1401

  %243 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 31), i64 %200, i64 %208, i64 %209, i64 %210, i64 %211, i64 %213, i64 %216, i64 %219, i64 %222, i64 %225, i64 %228, i64 %231, i64 %234, i64 %237, i64 %240), !noalias !1398

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

  br i1 %249, label %block_4007bf, label %block_4007fe



block_4007bf:                                     ; preds = %block_4006d0

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

  br i1 %264, label %block_4007de, label %block_4007d1



block_4008d7:                                     ; preds = %block_4008b1

  %267 = add i64 %1070, 17

  %268 = load i64, i64* %17, align 8, !tbaa !1240

  %269 = add i64 %268, -8

  %270 = inttoptr i64 %269 to i64*

  store i64 %267, i64* %270

  %271 = load i64, i64* %155, align 8, !alias.scope !1403, !noalias !1406

  %272 = load i64, i64* %154, align 8, !alias.scope !1403, !noalias !1406

  %273 = load i64, i64* %153, align 8, !alias.scope !1403, !noalias !1406

  %274 = load i64, i64* %156, align 8, !alias.scope !1403, !noalias !1406

  %275 = load i64, i64* %157, align 8, !alias.scope !1403, !noalias !1406

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

  store i64 %306, i64* %3, align 8, !alias.scope !1403, !noalias !1406

  store i64 %268, i64* %17, align 8, !alias.scope !1403, !noalias !1406

  %307 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 389), i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %277, i64 %280, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304), !noalias !1403

  %308 = load i64, i64* %18, align 8

  %309 = add i64 %308, -236

  %310 = trunc i64 %307 to i32

  %311 = load i64, i64* %3, align 8

  %312 = add i64 %311, 6

  %313 = inttoptr i64 %309 to i32*

  store i32 %310, i32* %313

  br label %block_4008f3



block_4008f3:                                     ; preds = %block_400895, %block_4008bb, %block_4008d7

  %314 = phi i64 [ %1209, %block_400895 ], [ %1162, %block_4008bb ], [ %308, %block_4008d7 ]

  %315 = phi i64 [ %1213, %block_400895 ], [ %1167, %block_4008bb ], [ %312, %block_4008d7 ]

  %316 = phi i64 [ 71, %block_400895 ], [ 5, %block_4008bb ], [ 5, %block_4008d7 ]

  %317 = phi %struct.Memory* [ %1217, %block_400895 ], [ %1217, %block_4008bb ], [ %1217, %block_4008d7 ]

  %318 = add i64 %315, %316

  %319 = add i64 %314, 32

  %320 = inttoptr i64 %319 to i64*

  %321 = load i64, i64* %320

  %322 = add i64 %318, 21

  %323 = load i64, i64* %17, align 8, !tbaa !1240

  %324 = add i64 %323, -8

  %325 = inttoptr i64 %324 to i64*

  store i64 %322, i64* %325

  %326 = load i64, i64* %154, align 8, !alias.scope !1408, !noalias !1411

  %327 = load i64, i64* %153, align 8, !alias.scope !1408, !noalias !1411

  %328 = load i64, i64* %156, align 8, !alias.scope !1408, !noalias !1411

  %329 = load i64, i64* %157, align 8, !alias.scope !1408, !noalias !1411

  %330 = inttoptr i64 %323 to i64*

  %331 = load i64, i64* %330

  %332 = add i64 %323, 8

  %333 = inttoptr i64 %332 to i64*

  %334 = load i64, i64* %333

  %335 = add i64 %323, 16

  %336 = inttoptr i64 %335 to i64*

  %337 = load i64, i64* %336

  %338 = add i64 %323, 24

  %339 = inttoptr i64 %338 to i64*

  %340 = load i64, i64* %339

  %341 = add i64 %323, 32

  %342 = inttoptr i64 %341 to i64*

  %343 = load i64, i64* %342

  %344 = add i64 %323, 40

  %345 = inttoptr i64 %344 to i64*

  %346 = load i64, i64* %345

  %347 = add i64 %323, 48

  %348 = inttoptr i64 %347 to i64*

  %349 = load i64, i64* %348

  %350 = add i64 %323, 56

  %351 = inttoptr i64 %350 to i64*

  %352 = load i64, i64* %351

  %353 = add i64 %323, 64

  %354 = inttoptr i64 %353 to i64*

  %355 = load i64, i64* %354

  %356 = add i64 %323, 72

  %357 = inttoptr i64 %356 to i64*

  %358 = load i64, i64* %357

  %359 = inttoptr i64 %324 to i64*

  %360 = load i64, i64* %359

  store i64 %360, i64* %3, align 8, !alias.scope !1408, !noalias !1411

  store i64 %323, i64* %17, align 8, !alias.scope !1408, !noalias !1411

  %361 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 434), i64 %321, i64 %326, i64 %327, i64 %328, i64 %329, i64 %331, i64 %334, i64 %337, i64 %340, i64 %343, i64 %346, i64 %349, i64 %352, i64 %355, i64 %358), !noalias !1408

  %362 = load i64, i64* %3, align 8

  %363 = load i64, i64* %18, align 8

  %364 = add i64 %363, 40

  %365 = inttoptr i64 %364 to i64*

  %366 = load i64, i64* %365

  store i64 %366, i64* %15, align 8, !tbaa !1240

  %367 = add i64 %363, -240

  %368 = trunc i64 %361 to i32

  %369 = inttoptr i64 %367 to i32*

  store i32 %368, i32* %369

  %370 = add i64 %362, 27

  %371 = load i64, i64* %17, align 8, !tbaa !1240

  %372 = add i64 %371, -8

  %373 = inttoptr i64 %372 to i64*

  store i64 %370, i64* %373

  %374 = load i64, i64* %154, align 8, !alias.scope !1413, !noalias !1416

  %375 = load i64, i64* %153, align 8, !alias.scope !1413, !noalias !1416

  %376 = load i64, i64* %156, align 8, !alias.scope !1413, !noalias !1416

  %377 = load i64, i64* %157, align 8, !alias.scope !1413, !noalias !1416

  %378 = inttoptr i64 %371 to i64*

  %379 = load i64, i64* %378

  %380 = add i64 %371, 8

  %381 = inttoptr i64 %380 to i64*

  %382 = load i64, i64* %381

  %383 = add i64 %371, 16

  %384 = inttoptr i64 %383 to i64*

  %385 = load i64, i64* %384

  %386 = add i64 %371, 24

  %387 = inttoptr i64 %386 to i64*

  %388 = load i64, i64* %387

  %389 = add i64 %371, 32

  %390 = inttoptr i64 %389 to i64*

  %391 = load i64, i64* %390

  %392 = add i64 %371, 40

  %393 = inttoptr i64 %392 to i64*

  %394 = load i64, i64* %393

  %395 = add i64 %371, 48

  %396 = inttoptr i64 %395 to i64*

  %397 = load i64, i64* %396

  %398 = add i64 %371, 56

  %399 = inttoptr i64 %398 to i64*

  %400 = load i64, i64* %399

  %401 = add i64 %371, 64

  %402 = inttoptr i64 %401 to i64*

  %403 = load i64, i64* %402

  %404 = add i64 %371, 72

  %405 = inttoptr i64 %404 to i64*

  %406 = load i64, i64* %405

  %407 = inttoptr i64 %372 to i64*

  %408 = load i64, i64* %407

  store i64 %408, i64* %3, align 8, !alias.scope !1413, !noalias !1416

  store i64 %371, i64* %17, align 8, !alias.scope !1413, !noalias !1416

  %409 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 471), i64 %366, i64 %374, i64 %375, i64 %376, i64 %377, i64 %379, i64 %382, i64 %385, i64 %388, i64 %391, i64 %394, i64 %397, i64 %400, i64 %403, i64 %406), !noalias !1413

  %410 = load i64, i64* %3, align 8

  %411 = load i64, i64* %18, align 8

  %412 = add i64 %411, -244

  %413 = trunc i64 %409 to i32

  %414 = inttoptr i64 %412 to i32*

  store i32 %413, i32* %414

  %415 = add i64 %410, 23

  %416 = load i64, i64* %17, align 8, !tbaa !1240

  %417 = add i64 %416, -8

  %418 = inttoptr i64 %417 to i64*

  store i64 %415, i64* %418

  %419 = load i64, i64* %155, align 8, !alias.scope !1418, !noalias !1421

  %420 = load i64, i64* %154, align 8, !alias.scope !1418, !noalias !1421

  %421 = load i64, i64* %153, align 8, !alias.scope !1418, !noalias !1421

  %422 = load i64, i64* %156, align 8, !alias.scope !1418, !noalias !1421

  %423 = load i64, i64* %157, align 8, !alias.scope !1418, !noalias !1421

  %424 = inttoptr i64 %416 to i64*

  %425 = load i64, i64* %424

  %426 = add i64 %416, 8

  %427 = inttoptr i64 %426 to i64*

  %428 = load i64, i64* %427

  %429 = add i64 %416, 16

  %430 = inttoptr i64 %429 to i64*

  %431 = load i64, i64* %430

  %432 = add i64 %416, 24

  %433 = inttoptr i64 %432 to i64*

  %434 = load i64, i64* %433

  %435 = add i64 %416, 32

  %436 = inttoptr i64 %435 to i64*

  %437 = load i64, i64* %436

  %438 = add i64 %416, 40

  %439 = inttoptr i64 %438 to i64*

  %440 = load i64, i64* %439

  %441 = add i64 %416, 48

  %442 = inttoptr i64 %441 to i64*

  %443 = load i64, i64* %442

  %444 = add i64 %416, 56

  %445 = inttoptr i64 %444 to i64*

  %446 = load i64, i64* %445

  %447 = add i64 %416, 64

  %448 = inttoptr i64 %447 to i64*

  %449 = load i64, i64* %448

  %450 = add i64 %416, 72

  %451 = inttoptr i64 %450 to i64*

  %452 = load i64, i64* %451

  %453 = inttoptr i64 %417 to i64*

  %454 = load i64, i64* %453

  store i64 %454, i64* %3, align 8, !alias.scope !1418, !noalias !1421

  store i64 %416, i64* %17, align 8, !alias.scope !1418, !noalias !1421

  %455 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 508), i64 %419, i64 %420, i64 %421, i64 %422, i64 %423, i64 %425, i64 %428, i64 %431, i64 %434, i64 %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452), !noalias !1418

  %456 = load i64, i64* %3, align 8

  %457 = load i64, i64* %18, align 8

  %458 = add i64 %457, 48

  %459 = inttoptr i64 %458 to i64*

  %460 = load i64, i64* %459

  %461 = add i64 %457, -248

  %462 = trunc i64 %455 to i32

  %463 = inttoptr i64 %461 to i32*

  store i32 %462, i32* %463

  %464 = add i64 %456, 27

  %465 = load i64, i64* %17, align 8, !tbaa !1240

  %466 = add i64 %465, -8

  %467 = inttoptr i64 %466 to i64*

  store i64 %464, i64* %467

  %468 = load i64, i64* %154, align 8, !alias.scope !1423, !noalias !1426

  %469 = load i64, i64* %153, align 8, !alias.scope !1423, !noalias !1426

  %470 = load i64, i64* %156, align 8, !alias.scope !1423, !noalias !1426

  %471 = load i64, i64* %157, align 8, !alias.scope !1423, !noalias !1426

  %472 = inttoptr i64 %465 to i64*

  %473 = load i64, i64* %472

  %474 = add i64 %465, 8

  %475 = inttoptr i64 %474 to i64*

  %476 = load i64, i64* %475

  %477 = add i64 %465, 16

  %478 = inttoptr i64 %477 to i64*

  %479 = load i64, i64* %478

  %480 = add i64 %465, 24

  %481 = inttoptr i64 %480 to i64*

  %482 = load i64, i64* %481

  %483 = add i64 %465, 32

  %484 = inttoptr i64 %483 to i64*

  %485 = load i64, i64* %484

  %486 = add i64 %465, 40

  %487 = inttoptr i64 %486 to i64*

  %488 = load i64, i64* %487

  %489 = add i64 %465, 48

  %490 = inttoptr i64 %489 to i64*

  %491 = load i64, i64* %490

  %492 = add i64 %465, 56

  %493 = inttoptr i64 %492 to i64*

  %494 = load i64, i64* %493

  %495 = add i64 %465, 64

  %496 = inttoptr i64 %495 to i64*

  %497 = load i64, i64* %496

  %498 = add i64 %465, 72

  %499 = inttoptr i64 %498 to i64*

  %500 = load i64, i64* %499

  %501 = inttoptr i64 %466 to i64*

  %502 = load i64, i64* %501

  store i64 %502, i64* %3, align 8, !alias.scope !1423, !noalias !1426

  store i64 %465, i64* %17, align 8, !alias.scope !1423, !noalias !1426

  %503 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 528), i64 %460, i64 %468, i64 %469, i64 %470, i64 %471, i64 %473, i64 %476, i64 %479, i64 %482, i64 %485, i64 %488, i64 %491, i64 %494, i64 %497, i64 %500), !noalias !1423

  %504 = load i64, i64* %3, align 8

  %505 = load i64, i64* %18, align 8

  %506 = add i64 %505, 56

  %507 = inttoptr i64 %506 to i64*

  %508 = load i64, i64* %507

  %509 = add i64 %505, -252

  %510 = trunc i64 %503 to i32

  %511 = inttoptr i64 %509 to i32*

  store i32 %510, i32* %511

  %512 = add i64 %504, 27

  %513 = load i64, i64* %17, align 8, !tbaa !1240

  %514 = add i64 %513, -8

  %515 = inttoptr i64 %514 to i64*

  store i64 %512, i64* %515

  %516 = load i64, i64* %154, align 8, !alias.scope !1428, !noalias !1431

  %517 = load i64, i64* %153, align 8, !alias.scope !1428, !noalias !1431

  %518 = load i64, i64* %156, align 8, !alias.scope !1428, !noalias !1431

  %519 = load i64, i64* %157, align 8, !alias.scope !1428, !noalias !1431

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

  store i64 %550, i64* %3, align 8, !alias.scope !1428, !noalias !1431

  store i64 %513, i64* %17, align 8, !alias.scope !1428, !noalias !1431

  %551 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 551), i64 %508, i64 %516, i64 %517, i64 %518, i64 %519, i64 %521, i64 %524, i64 %527, i64 %530, i64 %533, i64 %536, i64 %539, i64 %542, i64 %545, i64 %548), !noalias !1428

  %552 = load i64, i64* %3, align 8

  %553 = load i64, i64* %18, align 8

  %554 = add i64 %553, 64

  %555 = inttoptr i64 %554 to i64*

  %556 = load i64, i64* %555

  %557 = add i64 %553, -256

  %558 = trunc i64 %551 to i32

  %559 = inttoptr i64 %557 to i32*

  store i32 %558, i32* %559

  %560 = add i64 %552, 27

  %561 = load i64, i64* %17, align 8, !tbaa !1240

  %562 = add i64 %561, -8

  %563 = inttoptr i64 %562 to i64*

  store i64 %560, i64* %563

  %564 = load i64, i64* %154, align 8, !alias.scope !1433, !noalias !1436

  %565 = load i64, i64* %153, align 8, !alias.scope !1433, !noalias !1436

  %566 = load i64, i64* %156, align 8, !alias.scope !1433, !noalias !1436

  %567 = load i64, i64* %157, align 8, !alias.scope !1433, !noalias !1436

  %568 = inttoptr i64 %561 to i64*

  %569 = load i64, i64* %568

  %570 = add i64 %561, 8

  %571 = inttoptr i64 %570 to i64*

  %572 = load i64, i64* %571

  %573 = add i64 %561, 16

  %574 = inttoptr i64 %573 to i64*

  %575 = load i64, i64* %574

  %576 = add i64 %561, 24

  %577 = inttoptr i64 %576 to i64*

  %578 = load i64, i64* %577

  %579 = add i64 %561, 32

  %580 = inttoptr i64 %579 to i64*

  %581 = load i64, i64* %580

  %582 = add i64 %561, 40

  %583 = inttoptr i64 %582 to i64*

  %584 = load i64, i64* %583

  %585 = add i64 %561, 48

  %586 = inttoptr i64 %585 to i64*

  %587 = load i64, i64* %586

  %588 = add i64 %561, 56

  %589 = inttoptr i64 %588 to i64*

  %590 = load i64, i64* %589

  %591 = add i64 %561, 64

  %592 = inttoptr i64 %591 to i64*

  %593 = load i64, i64* %592

  %594 = add i64 %561, 72

  %595 = inttoptr i64 %594 to i64*

  %596 = load i64, i64* %595

  %597 = inttoptr i64 %562 to i64*

  %598 = load i64, i64* %597

  store i64 %598, i64* %3, align 8, !alias.scope !1433, !noalias !1436

  store i64 %561, i64* %17, align 8, !alias.scope !1433, !noalias !1436

  %599 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 574), i64 %556, i64 %564, i64 %565, i64 %566, i64 %567, i64 %569, i64 %572, i64 %575, i64 %578, i64 %581, i64 %584, i64 %587, i64 %590, i64 %593, i64 %596), !noalias !1433

  %600 = load i64, i64* %3, align 8

  %601 = load i64, i64* %18, align 8

  %602 = add i64 %601, 72

  %603 = inttoptr i64 %602 to i64*

  %604 = load i64, i64* %603

  %605 = add i64 %601, -260

  %606 = trunc i64 %599 to i32

  %607 = inttoptr i64 %605 to i32*

  store i32 %606, i32* %607

  %608 = add i64 %600, 27

  %609 = load i64, i64* %17, align 8, !tbaa !1240

  %610 = add i64 %609, -8

  %611 = inttoptr i64 %610 to i64*

  store i64 %608, i64* %611

  %612 = load i64, i64* %154, align 8, !alias.scope !1438, !noalias !1441

  %613 = load i64, i64* %153, align 8, !alias.scope !1438, !noalias !1441

  %614 = load i64, i64* %156, align 8, !alias.scope !1438, !noalias !1441

  %615 = load i64, i64* %157, align 8, !alias.scope !1438, !noalias !1441

  %616 = inttoptr i64 %609 to i64*

  %617 = load i64, i64* %616

  %618 = add i64 %609, 8

  %619 = inttoptr i64 %618 to i64*

  %620 = load i64, i64* %619

  %621 = add i64 %609, 16

  %622 = inttoptr i64 %621 to i64*

  %623 = load i64, i64* %622

  %624 = add i64 %609, 24

  %625 = inttoptr i64 %624 to i64*

  %626 = load i64, i64* %625

  %627 = add i64 %609, 32

  %628 = inttoptr i64 %627 to i64*

  %629 = load i64, i64* %628

  %630 = add i64 %609, 40

  %631 = inttoptr i64 %630 to i64*

  %632 = load i64, i64* %631

  %633 = add i64 %609, 48

  %634 = inttoptr i64 %633 to i64*

  %635 = load i64, i64* %634

  %636 = add i64 %609, 56

  %637 = inttoptr i64 %636 to i64*

  %638 = load i64, i64* %637

  %639 = add i64 %609, 64

  %640 = inttoptr i64 %639 to i64*

  %641 = load i64, i64* %640

  %642 = add i64 %609, 72

  %643 = inttoptr i64 %642 to i64*

  %644 = load i64, i64* %643

  %645 = inttoptr i64 %610 to i64*

  %646 = load i64, i64* %645

  store i64 %646, i64* %3, align 8, !alias.scope !1438, !noalias !1441

  store i64 %609, i64* %17, align 8, !alias.scope !1438, !noalias !1441

  %647 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 597), i64 %604, i64 %612, i64 %613, i64 %614, i64 %615, i64 %617, i64 %620, i64 %623, i64 %626, i64 %629, i64 %632, i64 %635, i64 %638, i64 %641, i64 %644), !noalias !1438

  %648 = load i64, i64* %3, align 8

  %649 = load i64, i64* %18, align 8

  %650 = add i64 %649, 80

  %651 = inttoptr i64 %650 to i64*

  %652 = load i64, i64* %651

  %653 = add i64 %649, -264

  %654 = trunc i64 %647 to i32

  %655 = inttoptr i64 %653 to i32*

  store i32 %654, i32* %655

  %656 = add i64 %648, 27

  %657 = load i64, i64* %17, align 8, !tbaa !1240

  %658 = add i64 %657, -8

  %659 = inttoptr i64 %658 to i64*

  store i64 %656, i64* %659

  %660 = load i64, i64* %154, align 8, !alias.scope !1443, !noalias !1446

  %661 = load i64, i64* %153, align 8, !alias.scope !1443, !noalias !1446

  %662 = load i64, i64* %156, align 8, !alias.scope !1443, !noalias !1446

  %663 = load i64, i64* %157, align 8, !alias.scope !1443, !noalias !1446

  %664 = inttoptr i64 %657 to i64*

  %665 = load i64, i64* %664

  %666 = add i64 %657, 8

  %667 = inttoptr i64 %666 to i64*

  %668 = load i64, i64* %667

  %669 = add i64 %657, 16

  %670 = inttoptr i64 %669 to i64*

  %671 = load i64, i64* %670

  %672 = add i64 %657, 24

  %673 = inttoptr i64 %672 to i64*

  %674 = load i64, i64* %673

  %675 = add i64 %657, 32

  %676 = inttoptr i64 %675 to i64*

  %677 = load i64, i64* %676

  %678 = add i64 %657, 40

  %679 = inttoptr i64 %678 to i64*

  %680 = load i64, i64* %679

  %681 = add i64 %657, 48

  %682 = inttoptr i64 %681 to i64*

  %683 = load i64, i64* %682

  %684 = add i64 %657, 56

  %685 = inttoptr i64 %684 to i64*

  %686 = load i64, i64* %685

  %687 = add i64 %657, 64

  %688 = inttoptr i64 %687 to i64*

  %689 = load i64, i64* %688

  %690 = add i64 %657, 72

  %691 = inttoptr i64 %690 to i64*

  %692 = load i64, i64* %691

  %693 = inttoptr i64 %658 to i64*

  %694 = load i64, i64* %693

  store i64 %694, i64* %3, align 8, !alias.scope !1443, !noalias !1446

  store i64 %657, i64* %17, align 8, !alias.scope !1443, !noalias !1446

  %695 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 620), i64 %652, i64 %660, i64 %661, i64 %662, i64 %663, i64 %665, i64 %668, i64 %671, i64 %674, i64 %677, i64 %680, i64 %683, i64 %686, i64 %689, i64 %692), !noalias !1443

  %696 = load i64, i64* %3, align 8

  %697 = load i64, i64* %18, align 8

  %698 = add i64 %697, 88

  %699 = inttoptr i64 %698 to i64*

  %700 = load i64, i64* %699

  store i64 %700, i64* %15, align 8, !tbaa !1240

  %701 = add i64 %697, -268

  %702 = trunc i64 %695 to i32

  %703 = inttoptr i64 %701 to i32*

  store i32 %702, i32* %703

  %704 = add i64 %696, 27

  %705 = load i64, i64* %17, align 8, !tbaa !1240

  %706 = add i64 %705, -8

  %707 = inttoptr i64 %706 to i64*

  store i64 %704, i64* %707

  %708 = load i64, i64* %154, align 8, !alias.scope !1448, !noalias !1451

  %709 = load i64, i64* %153, align 8, !alias.scope !1448, !noalias !1451

  %710 = load i64, i64* %156, align 8, !alias.scope !1448, !noalias !1451

  %711 = load i64, i64* %157, align 8, !alias.scope !1448, !noalias !1451

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

  store i64 %742, i64* %3, align 8, !alias.scope !1448, !noalias !1451

  store i64 %705, i64* %17, align 8, !alias.scope !1448, !noalias !1451

  %743 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 643), i64 %700, i64 %708, i64 %709, i64 %710, i64 %711, i64 %713, i64 %716, i64 %719, i64 %722, i64 %725, i64 %728, i64 %731, i64 %734, i64 %737, i64 %740), !noalias !1448

  %744 = load i64, i64* %3, align 8

  %745 = load i64, i64* %18, align 8

  %746 = add i64 %745, -272

  %747 = trunc i64 %743 to i32

  %748 = inttoptr i64 %746 to i32*

  store i32 %747, i32* %748

  %749 = add i64 %744, 23

  %750 = load i64, i64* %17, align 8, !tbaa !1240

  %751 = add i64 %750, -8

  %752 = inttoptr i64 %751 to i64*

  store i64 %749, i64* %752

  %753 = load i64, i64* %155, align 8, !alias.scope !1453, !noalias !1456

  %754 = load i64, i64* %154, align 8, !alias.scope !1453, !noalias !1456

  %755 = load i64, i64* %153, align 8, !alias.scope !1453, !noalias !1456

  %756 = load i64, i64* %156, align 8, !alias.scope !1453, !noalias !1456

  %757 = load i64, i64* %157, align 8, !alias.scope !1453, !noalias !1456

  %758 = inttoptr i64 %750 to i64*

  %759 = load i64, i64* %758

  %760 = add i64 %750, 8

  %761 = inttoptr i64 %760 to i64*

  %762 = load i64, i64* %761

  %763 = add i64 %750, 16

  %764 = inttoptr i64 %763 to i64*

  %765 = load i64, i64* %764

  %766 = add i64 %750, 24

  %767 = inttoptr i64 %766 to i64*

  %768 = load i64, i64* %767

  %769 = add i64 %750, 32

  %770 = inttoptr i64 %769 to i64*

  %771 = load i64, i64* %770

  %772 = add i64 %750, 40

  %773 = inttoptr i64 %772 to i64*

  %774 = load i64, i64* %773

  %775 = add i64 %750, 48

  %776 = inttoptr i64 %775 to i64*

  %777 = load i64, i64* %776

  %778 = add i64 %750, 56

  %779 = inttoptr i64 %778 to i64*

  %780 = load i64, i64* %779

  %781 = add i64 %750, 64

  %782 = inttoptr i64 %781 to i64*

  %783 = load i64, i64* %782

  %784 = add i64 %750, 72

  %785 = inttoptr i64 %784 to i64*

  %786 = load i64, i64* %785

  %787 = inttoptr i64 %751 to i64*

  %788 = load i64, i64* %787

  store i64 %788, i64* %3, align 8, !alias.scope !1453, !noalias !1456

  store i64 %750, i64* %17, align 8, !alias.scope !1453, !noalias !1456

  %789 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 666), i64 %753, i64 %754, i64 %755, i64 %756, i64 %757, i64 %759, i64 %762, i64 %765, i64 %768, i64 %771, i64 %774, i64 %777, i64 %780, i64 %783, i64 %786), !noalias !1453

  %790 = load i64, i64* %3, align 8

  %791 = load i64, i64* %18, align 8

  %792 = add i64 %791, -276

  %793 = trunc i64 %789 to i32

  %794 = inttoptr i64 %792 to i32*

  store i32 %793, i32* %794

  %795 = add i64 %790, 23

  %796 = load i64, i64* %17, align 8, !tbaa !1240

  %797 = add i64 %796, -8

  %798 = inttoptr i64 %797 to i64*

  store i64 %795, i64* %798

  %799 = load i64, i64* %155, align 8, !alias.scope !1458, !noalias !1461

  %800 = load i64, i64* %154, align 8, !alias.scope !1458, !noalias !1461

  %801 = load i64, i64* %153, align 8, !alias.scope !1458, !noalias !1461

  %802 = load i64, i64* %156, align 8, !alias.scope !1458, !noalias !1461

  %803 = load i64, i64* %157, align 8, !alias.scope !1458, !noalias !1461

  %804 = inttoptr i64 %796 to i64*

  %805 = load i64, i64* %804

  %806 = add i64 %796, 8

  %807 = inttoptr i64 %806 to i64*

  %808 = load i64, i64* %807

  %809 = add i64 %796, 16

  %810 = inttoptr i64 %809 to i64*

  %811 = load i64, i64* %810

  %812 = add i64 %796, 24

  %813 = inttoptr i64 %812 to i64*

  %814 = load i64, i64* %813

  %815 = add i64 %796, 32

  %816 = inttoptr i64 %815 to i64*

  %817 = load i64, i64* %816

  %818 = add i64 %796, 40

  %819 = inttoptr i64 %818 to i64*

  %820 = load i64, i64* %819

  %821 = add i64 %796, 48

  %822 = inttoptr i64 %821 to i64*

  %823 = load i64, i64* %822

  %824 = add i64 %796, 56

  %825 = inttoptr i64 %824 to i64*

  %826 = load i64, i64* %825

  %827 = add i64 %796, 64

  %828 = inttoptr i64 %827 to i64*

  %829 = load i64, i64* %828

  %830 = add i64 %796, 72

  %831 = inttoptr i64 %830 to i64*

  %832 = load i64, i64* %831

  %833 = inttoptr i64 %797 to i64*

  %834 = load i64, i64* %833

  store i64 %834, i64* %3, align 8, !alias.scope !1458, !noalias !1461

  store i64 %796, i64* %17, align 8, !alias.scope !1458, !noalias !1461

  %835 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 707), i64 %799, i64 %800, i64 %801, i64 %802, i64 %803, i64 %805, i64 %808, i64 %811, i64 %814, i64 %817, i64 %820, i64 %823, i64 %826, i64 %829, i64 %832), !noalias !1458

  %836 = load i64, i64* %3, align 8

  %837 = load i64, i64* %18, align 8

  %838 = add i64 %837, -280

  %839 = trunc i64 %835 to i32

  %840 = inttoptr i64 %838 to i32*

  store i32 %839, i32* %840

  %841 = add i64 %836, 23

  %842 = load i64, i64* %17, align 8, !tbaa !1240

  %843 = add i64 %842, -8

  %844 = inttoptr i64 %843 to i64*

  store i64 %841, i64* %844

  %845 = load i64, i64* %155, align 8, !alias.scope !1463, !noalias !1466

  %846 = load i64, i64* %154, align 8, !alias.scope !1463, !noalias !1466

  %847 = load i64, i64* %153, align 8, !alias.scope !1463, !noalias !1466

  %848 = load i64, i64* %156, align 8, !alias.scope !1463, !noalias !1466

  %849 = load i64, i64* %157, align 8, !alias.scope !1463, !noalias !1466

  %850 = inttoptr i64 %842 to i64*

  %851 = load i64, i64* %850

  %852 = add i64 %842, 8

  %853 = inttoptr i64 %852 to i64*

  %854 = load i64, i64* %853

  %855 = add i64 %842, 16

  %856 = inttoptr i64 %855 to i64*

  %857 = load i64, i64* %856

  %858 = add i64 %842, 24

  %859 = inttoptr i64 %858 to i64*

  %860 = load i64, i64* %859

  %861 = add i64 %842, 32

  %862 = inttoptr i64 %861 to i64*

  %863 = load i64, i64* %862

  %864 = add i64 %842, 40

  %865 = inttoptr i64 %864 to i64*

  %866 = load i64, i64* %865

  %867 = add i64 %842, 48

  %868 = inttoptr i64 %867 to i64*

  %869 = load i64, i64* %868

  %870 = add i64 %842, 56

  %871 = inttoptr i64 %870 to i64*

  %872 = load i64, i64* %871

  %873 = add i64 %842, 64

  %874 = inttoptr i64 %873 to i64*

  %875 = load i64, i64* %874

  %876 = add i64 %842, 72

  %877 = inttoptr i64 %876 to i64*

  %878 = load i64, i64* %877

  %879 = inttoptr i64 %843 to i64*

  %880 = load i64, i64* %879

  store i64 %880, i64* %3, align 8, !alias.scope !1463, !noalias !1466

  store i64 %842, i64* %17, align 8, !alias.scope !1463, !noalias !1466

  %881 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 746), i64 %845, i64 %846, i64 %847, i64 %848, i64 %849, i64 %851, i64 %854, i64 %857, i64 %860, i64 %863, i64 %866, i64 %869, i64 %872, i64 %875, i64 %878), !noalias !1463

  %882 = load i64, i64* %3, align 8

  %883 = load i64, i64* %18, align 8

  %884 = add i64 %883, -284

  %885 = trunc i64 %881 to i32

  %886 = inttoptr i64 %884 to i32*

  store i32 %885, i32* %886

  %887 = add i64 %882, 23

  %888 = load i64, i64* %17, align 8, !tbaa !1240

  %889 = add i64 %888, -8

  %890 = inttoptr i64 %889 to i64*

  store i64 %887, i64* %890

  %891 = load i64, i64* %155, align 8, !alias.scope !1468, !noalias !1471

  %892 = load i64, i64* %154, align 8, !alias.scope !1468, !noalias !1471

  %893 = load i64, i64* %153, align 8, !alias.scope !1468, !noalias !1471

  %894 = load i64, i64* %156, align 8, !alias.scope !1468, !noalias !1471

  %895 = load i64, i64* %157, align 8, !alias.scope !1468, !noalias !1471

  %896 = inttoptr i64 %888 to i64*

  %897 = load i64, i64* %896

  %898 = add i64 %888, 8

  %899 = inttoptr i64 %898 to i64*

  %900 = load i64, i64* %899

  %901 = add i64 %888, 16

  %902 = inttoptr i64 %901 to i64*

  %903 = load i64, i64* %902

  %904 = add i64 %888, 24

  %905 = inttoptr i64 %904 to i64*

  %906 = load i64, i64* %905

  %907 = add i64 %888, 32

  %908 = inttoptr i64 %907 to i64*

  %909 = load i64, i64* %908

  %910 = add i64 %888, 40

  %911 = inttoptr i64 %910 to i64*

  %912 = load i64, i64* %911

  %913 = add i64 %888, 48

  %914 = inttoptr i64 %913 to i64*

  %915 = load i64, i64* %914

  %916 = add i64 %888, 56

  %917 = inttoptr i64 %916 to i64*

  %918 = load i64, i64* %917

  %919 = add i64 %888, 64

  %920 = inttoptr i64 %919 to i64*

  %921 = load i64, i64* %920

  %922 = add i64 %888, 72

  %923 = inttoptr i64 %922 to i64*

  %924 = load i64, i64* %923

  %925 = inttoptr i64 %889 to i64*

  %926 = load i64, i64* %925

  store i64 %926, i64* %3, align 8, !alias.scope !1468, !noalias !1471

  store i64 %888, i64* %17, align 8, !alias.scope !1468, !noalias !1471

  %927 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 780), i64 %891, i64 %892, i64 %893, i64 %894, i64 %895, i64 %897, i64 %900, i64 %903, i64 %906, i64 %909, i64 %912, i64 %915, i64 %918, i64 %921, i64 %924), !noalias !1468

  %928 = load i64, i64* %3, align 8

  %929 = load i64, i64* %18, align 8

  %930 = add i64 %929, -288

  %931 = trunc i64 %927 to i32

  %932 = inttoptr i64 %930 to i32*

  store i32 %931, i32* %932

  %933 = add i64 %928, 23

  %934 = load i64, i64* %17, align 8, !tbaa !1240

  %935 = add i64 %934, -8

  %936 = inttoptr i64 %935 to i64*

  store i64 %933, i64* %936

  %937 = load i64, i64* %155, align 8, !alias.scope !1473, !noalias !1476

  %938 = load i64, i64* %154, align 8, !alias.scope !1473, !noalias !1476

  %939 = load i64, i64* %153, align 8, !alias.scope !1473, !noalias !1476

  %940 = load i64, i64* %156, align 8, !alias.scope !1473, !noalias !1476

  %941 = load i64, i64* %157, align 8, !alias.scope !1473, !noalias !1476

  %942 = inttoptr i64 %934 to i64*

  %943 = load i64, i64* %942

  %944 = add i64 %934, 8

  %945 = inttoptr i64 %944 to i64*

  %946 = load i64, i64* %945

  %947 = add i64 %934, 16

  %948 = inttoptr i64 %947 to i64*

  %949 = load i64, i64* %948

  %950 = add i64 %934, 24

  %951 = inttoptr i64 %950 to i64*

  %952 = load i64, i64* %951

  %953 = add i64 %934, 32

  %954 = inttoptr i64 %953 to i64*

  %955 = load i64, i64* %954

  %956 = add i64 %934, 40

  %957 = inttoptr i64 %956 to i64*

  %958 = load i64, i64* %957

  %959 = add i64 %934, 48

  %960 = inttoptr i64 %959 to i64*

  %961 = load i64, i64* %960

  %962 = add i64 %934, 56

  %963 = inttoptr i64 %962 to i64*

  %964 = load i64, i64* %963

  %965 = add i64 %934, 64

  %966 = inttoptr i64 %965 to i64*

  %967 = load i64, i64* %966

  %968 = add i64 %934, 72

  %969 = inttoptr i64 %968 to i64*

  %970 = load i64, i64* %969

  %971 = inttoptr i64 %935 to i64*

  %972 = load i64, i64* %971

  store i64 %972, i64* %3, align 8, !alias.scope !1473, !noalias !1476

  store i64 %934, i64* %17, align 8, !alias.scope !1473, !noalias !1476

  %973 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 801), i64 %937, i64 %938, i64 %939, i64 %940, i64 %941, i64 %943, i64 %946, i64 %949, i64 %952, i64 %955, i64 %958, i64 %961, i64 %964, i64 %967, i64 %970), !noalias !1473

  %974 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 667), i64* %16, align 8, !tbaa !1240

  %975 = load i64, i64* %18, align 8

  %976 = add i64 %975, -292

  %977 = trunc i64 %973 to i32

  %978 = inttoptr i64 %976 to i32*

  store i32 %977, i32* %978

  %979 = add i64 %974, 23

  %980 = load i64, i64* %17, align 8, !tbaa !1240

  %981 = add i64 %980, -8

  %982 = inttoptr i64 %981 to i64*

  store i64 %979, i64* %982

  %983 = load i64, i64* %155, align 8, !alias.scope !1478, !noalias !1481

  %984 = load i64, i64* %154, align 8, !alias.scope !1478, !noalias !1481

  %985 = load i64, i64* %153, align 8, !alias.scope !1478, !noalias !1481

  %986 = load i64, i64* %156, align 8, !alias.scope !1478, !noalias !1481

  %987 = load i64, i64* %157, align 8, !alias.scope !1478, !noalias !1481

  %988 = inttoptr i64 %980 to i64*

  %989 = load i64, i64* %988

  %990 = add i64 %980, 8

  %991 = inttoptr i64 %990 to i64*

  %992 = load i64, i64* %991

  %993 = add i64 %980, 16

  %994 = inttoptr i64 %993 to i64*

  %995 = load i64, i64* %994

  %996 = add i64 %980, 24

  %997 = inttoptr i64 %996 to i64*

  %998 = load i64, i64* %997

  %999 = add i64 %980, 32

  %1000 = inttoptr i64 %999 to i64*

  %1001 = load i64, i64* %1000

  %1002 = add i64 %980, 40

  %1003 = inttoptr i64 %1002 to i64*

  %1004 = load i64, i64* %1003

  %1005 = add i64 %980, 48

  %1006 = inttoptr i64 %1005 to i64*

  %1007 = load i64, i64* %1006

  %1008 = add i64 %980, 56

  %1009 = inttoptr i64 %1008 to i64*

  %1010 = load i64, i64* %1009

  %1011 = add i64 %980, 64

  %1012 = inttoptr i64 %1011 to i64*

  %1013 = load i64, i64* %1012

  %1014 = add i64 %980, 72

  %1015 = inttoptr i64 %1014 to i64*

  %1016 = load i64, i64* %1015

  store i64 %980, i64* %17, align 8, !alias.scope !1478, !noalias !1481

  %1017 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 667), i64 %983, i64 %984, i64 %985, i64 %986, i64 %987, i64 %989, i64 %992, i64 %995, i64 %998, i64 %1001, i64 %1004, i64 %1007, i64 %1010, i64 %1013, i64 %1016), !noalias !1478

  store i64 %1017, i64* %152, align 8, !alias.scope !1478, !noalias !1481

  %1018 = load i64, i64* %18, align 8

  %1019 = add i64 %1018, -296

  %1020 = trunc i64 %1017 to i32

  %1021 = inttoptr i64 %1019 to i32*

  store i32 %1020, i32* %1021

  %1022 = load i64, i64* %17, align 8

  %1023 = add i64 %1022, 264

  %1024 = icmp ugt i64 %1022, -265

  %1025 = zext i1 %1024 to i8

  store i8 %1025, i8* %47, align 1, !tbaa !1266

  %1026 = trunc i64 %1023 to i32

  %1027 = and i32 %1026, 255

  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027) #9

  %1029 = trunc i32 %1028 to i8

  %1030 = and i8 %1029, 1

  %1031 = xor i8 %1030, 1

  store i8 %1031, i8* %48, align 1, !tbaa !1279

  %1032 = xor i64 %1023, %1022

  %1033 = lshr i64 %1032, 4

  %1034 = trunc i64 %1033 to i8

  %1035 = and i8 %1034, 1

  store i8 %1035, i8* %49, align 1, !tbaa !1283

  %1036 = icmp eq i64 %1023, 0

  %1037 = zext i1 %1036 to i8

  store i8 %1037, i8* %50, align 1, !tbaa !1280

  %1038 = lshr i64 %1023, 63

  %1039 = trunc i64 %1038 to i8

  store i8 %1039, i8* %51, align 1, !tbaa !1281

  %1040 = lshr i64 %1022, 63

  %1041 = xor i64 %1038, %1040

  %1042 = add nuw nsw i64 %1041, %1038

  %1043 = icmp eq i64 %1042, 2

  %1044 = zext i1 %1043 to i8

  store i8 %1044, i8* %52, align 1, !tbaa !1282

  %1045 = add i64 %1022, 272

  %1046 = inttoptr i64 %1023 to i64*

  %1047 = load i64, i64* %1046

  store i64 %1047, i64* %14, align 8, !tbaa !1240

  %1048 = add i64 %1022, 280

  %1049 = inttoptr i64 %1045 to i64*

  %1050 = load i64, i64* %1049

  store i64 %1050, i64* %21, align 8, !tbaa !1240

  %1051 = add i64 %1022, 288

  %1052 = inttoptr i64 %1048 to i64*

  %1053 = load i64, i64* %1052

  store i64 %1053, i64* %22, align 8, !tbaa !1240

  %1054 = add i64 %1022, 296

  %1055 = inttoptr i64 %1051 to i64*

  %1056 = load i64, i64* %1055

  store i64 %1056, i64* %23, align 8, !tbaa !1240

  %1057 = add i64 %1022, 304

  %1058 = inttoptr i64 %1054 to i64*

  %1059 = load i64, i64* %1058

  store i64 %1059, i64* %24, align 8, !tbaa !1240

  %1060 = add i64 %1022, 312

  %1061 = inttoptr i64 %1057 to i64*

  %1062 = load i64, i64* %1061

  store i64 %1062, i64* %18, align 8, !tbaa !1240

  %1063 = inttoptr i64 %1060 to i64*

  %1064 = load i64, i64* %1063

  store i64 %1064, i64* %3, align 8, !tbaa !1240

  %1065 = add i64 %1022, 320

  store i64 %1065, i64* %17, align 8, !tbaa !1240

  ret %struct.Memory* %317



block_4008b1:                                     ; preds = %block_40081e

  %1066 = inttoptr i64 %1411 to i32*

  %1067 = load i32, i32* %1066

  %1068 = icmp eq i32 %1067, 0

  %1069 = select i1 %1068, i64 38, i64 10

  %1070 = add i64 %1422, %1069

  br i1 %1068, label %block_4008d7, label %block_4008bb



block_4007de:                                     ; preds = %block_4007d1, %block_4007bf

  %1071 = phi i64 [ %266, %block_4007bf ], [ %1493, %block_4007d1 ]

  %1072 = phi %struct.Memory* [ %2, %block_4007bf ], [ %2, %block_4007d1 ]

  %1073 = inttoptr i64 %259 to i64*

  %1074 = load i64, i64* %1073

  %1075 = add i64 %1071, 21

  %1076 = load i64, i64* %17, align 8, !tbaa !1240

  %1077 = add i64 %1076, -8

  %1078 = inttoptr i64 %1077 to i64*

  store i64 %1075, i64* %1078

  %1079 = load i64, i64* %154, align 8, !alias.scope !1483, !noalias !1486

  %1080 = load i64, i64* %153, align 8, !alias.scope !1483, !noalias !1486

  %1081 = load i64, i64* %156, align 8, !alias.scope !1483, !noalias !1486

  %1082 = load i64, i64* %157, align 8, !alias.scope !1483, !noalias !1486

  %1083 = inttoptr i64 %1076 to i64*

  %1084 = load i64, i64* %1083

  %1085 = add i64 %1076, 8

  %1086 = inttoptr i64 %1085 to i64*

  %1087 = load i64, i64* %1086

  %1088 = add i64 %1076, 16

  %1089 = inttoptr i64 %1088 to i64*

  %1090 = load i64, i64* %1089

  %1091 = add i64 %1076, 24

  %1092 = inttoptr i64 %1091 to i64*

  %1093 = load i64, i64* %1092

  %1094 = add i64 %1076, 32

  %1095 = inttoptr i64 %1094 to i64*

  %1096 = load i64, i64* %1095

  %1097 = add i64 %1076, 40

  %1098 = inttoptr i64 %1097 to i64*

  %1099 = load i64, i64* %1098

  %1100 = add i64 %1076, 48

  %1101 = inttoptr i64 %1100 to i64*

  %1102 = load i64, i64* %1101

  %1103 = add i64 %1076, 56

  %1104 = inttoptr i64 %1103 to i64*

  %1105 = load i64, i64* %1104

  %1106 = add i64 %1076, 64

  %1107 = inttoptr i64 %1106 to i64*

  %1108 = load i64, i64* %1107

  %1109 = add i64 %1076, 72

  %1110 = inttoptr i64 %1109 to i64*

  %1111 = load i64, i64* %1110

  %1112 = inttoptr i64 %1077 to i64*

  %1113 = load i64, i64* %1112

  store i64 %1113, i64* %3, align 8, !alias.scope !1483, !noalias !1486

  store i64 %1076, i64* %17, align 8, !alias.scope !1483, !noalias !1486

  %1114 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 77), i64 %1074, i64 %1079, i64 %1080, i64 %1081, i64 %1082, i64 %1084, i64 %1087, i64 %1090, i64 %1093, i64 %1096, i64 %1099, i64 %1102, i64 %1105, i64 %1108, i64 %1111), !noalias !1483

  %1115 = load i64, i64* %18, align 8

  %1116 = add i64 %1115, -204

  %1117 = trunc i64 %1114 to i32

  %1118 = load i64, i64* %3, align 8

  %1119 = inttoptr i64 %1116 to i32*

  store i32 %1117, i32* %1119

  %1120 = add i64 %1118, 43

  br label %block_40081e



block_4008bb:                                     ; preds = %block_4008b1

  %1121 = add i64 %1070, 17

  %1122 = load i64, i64* %17, align 8, !tbaa !1240

  %1123 = add i64 %1122, -8

  %1124 = inttoptr i64 %1123 to i64*

  store i64 %1121, i64* %1124

  %1125 = load i64, i64* %155, align 8, !alias.scope !1488, !noalias !1491

  %1126 = load i64, i64* %154, align 8, !alias.scope !1488, !noalias !1491

  %1127 = load i64, i64* %153, align 8, !alias.scope !1488, !noalias !1491

  %1128 = load i64, i64* %156, align 8, !alias.scope !1488, !noalias !1491

  %1129 = load i64, i64* %157, align 8, !alias.scope !1488, !noalias !1491

  %1130 = inttoptr i64 %1122 to i64*

  %1131 = load i64, i64* %1130

  %1132 = add i64 %1122, 8

  %1133 = inttoptr i64 %1132 to i64*

  %1134 = load i64, i64* %1133

  %1135 = add i64 %1122, 16

  %1136 = inttoptr i64 %1135 to i64*

  %1137 = load i64, i64* %1136

  %1138 = add i64 %1122, 24

  %1139 = inttoptr i64 %1138 to i64*

  %1140 = load i64, i64* %1139

  %1141 = add i64 %1122, 32

  %1142 = inttoptr i64 %1141 to i64*

  %1143 = load i64, i64* %1142

  %1144 = add i64 %1122, 40

  %1145 = inttoptr i64 %1144 to i64*

  %1146 = load i64, i64* %1145

  %1147 = add i64 %1122, 48

  %1148 = inttoptr i64 %1147 to i64*

  %1149 = load i64, i64* %1148

  %1150 = add i64 %1122, 56

  %1151 = inttoptr i64 %1150 to i64*

  %1152 = load i64, i64* %1151

  %1153 = add i64 %1122, 64

  %1154 = inttoptr i64 %1153 to i64*

  %1155 = load i64, i64* %1154

  %1156 = add i64 %1122, 72

  %1157 = inttoptr i64 %1156 to i64*

  %1158 = load i64, i64* %1157

  %1159 = inttoptr i64 %1123 to i64*

  %1160 = load i64, i64* %1159

  store i64 %1160, i64* %3, align 8, !alias.scope !1488, !noalias !1491

  store i64 %1122, i64* %17, align 8, !alias.scope !1488, !noalias !1491

  %1161 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 344), i64 %1125, i64 %1126, i64 %1127, i64 %1128, i64 %1129, i64 %1131, i64 %1134, i64 %1137, i64 %1140, i64 %1143, i64 %1146, i64 %1149, i64 %1152, i64 %1155, i64 %1158), !noalias !1488

  %1162 = load i64, i64* %18, align 8

  %1163 = add i64 %1162, -232

  %1164 = trunc i64 %1161 to i32

  %1165 = load i64, i64* %3, align 8

  %1166 = inttoptr i64 %1163 to i32*

  store i32 %1164, i32* %1166

  %1167 = add i64 %1165, 34

  br label %block_4008f3



block_400895:                                     ; preds = %block_40081e

  %1168 = add i64 %1422, 17

  %1169 = load i64, i64* %17, align 8, !tbaa !1240

  %1170 = add i64 %1169, -8

  %1171 = inttoptr i64 %1170 to i64*

  store i64 %1168, i64* %1171

  %1172 = load i64, i64* %155, align 8, !alias.scope !1493, !noalias !1496

  %1173 = load i64, i64* %154, align 8, !alias.scope !1493, !noalias !1496

  %1174 = load i64, i64* %153, align 8, !alias.scope !1493, !noalias !1496

  %1175 = load i64, i64* %156, align 8, !alias.scope !1493, !noalias !1496

  %1176 = load i64, i64* %157, align 8, !alias.scope !1493, !noalias !1496

  %1177 = inttoptr i64 %1169 to i64*

  %1178 = load i64, i64* %1177

  %1179 = add i64 %1169, 8

  %1180 = inttoptr i64 %1179 to i64*

  %1181 = load i64, i64* %1180

  %1182 = add i64 %1169, 16

  %1183 = inttoptr i64 %1182 to i64*

  %1184 = load i64, i64* %1183

  %1185 = add i64 %1169, 24

  %1186 = inttoptr i64 %1185 to i64*

  %1187 = load i64, i64* %1186

  %1188 = add i64 %1169, 32

  %1189 = inttoptr i64 %1188 to i64*

  %1190 = load i64, i64* %1189

  %1191 = add i64 %1169, 40

  %1192 = inttoptr i64 %1191 to i64*

  %1193 = load i64, i64* %1192

  %1194 = add i64 %1169, 48

  %1195 = inttoptr i64 %1194 to i64*

  %1196 = load i64, i64* %1195

  %1197 = add i64 %1169, 56

  %1198 = inttoptr i64 %1197 to i64*

  %1199 = load i64, i64* %1198

  %1200 = add i64 %1169, 64

  %1201 = inttoptr i64 %1200 to i64*

  %1202 = load i64, i64* %1201

  %1203 = add i64 %1169, 72

  %1204 = inttoptr i64 %1203 to i64*

  %1205 = load i64, i64* %1204

  %1206 = inttoptr i64 %1170 to i64*

  %1207 = load i64, i64* %1206

  store i64 %1207, i64* %3, align 8, !alias.scope !1493, !noalias !1496

  store i64 %1169, i64* %17, align 8, !alias.scope !1493, !noalias !1496

  %1208 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 299), i64 %1172, i64 %1173, i64 %1174, i64 %1175, i64 %1176, i64 %1178, i64 %1181, i64 %1184, i64 %1187, i64 %1190, i64 %1193, i64 %1196, i64 %1199, i64 %1202, i64 %1205), !noalias !1493

  %1209 = load i64, i64* %18, align 8

  %1210 = add i64 %1209, -228

  %1211 = trunc i64 %1208 to i32

  %1212 = load i64, i64* %3, align 8

  %1213 = add i64 %1212, 6

  %1214 = inttoptr i64 %1210 to i32*

  store i32 %1211, i32* %1214

  br label %block_4008f3



block_40081e:                                     ; preds = %block_4007fe, %block_4007de

  %1215 = phi i64 [ %1474, %block_4007fe ], [ %1115, %block_4007de ]

  %1216 = phi i64 [ %1478, %block_4007fe ], [ %1120, %block_4007de ]

  %1217 = phi %struct.Memory* [ %2, %block_4007fe ], [ %1072, %block_4007de ]

  %1218 = add i64 %1215, -68

  %1219 = inttoptr i64 %1218 to i32*

  %1220 = load i32, i32* %1219

  %1221 = zext i32 %1220 to i64

  store i64 %1221, i64* %15, align 8, !tbaa !1240

  %1222 = add i64 %1216, 20

  %1223 = load i64, i64* %17, align 8, !tbaa !1240

  %1224 = add i64 %1223, -8

  %1225 = inttoptr i64 %1224 to i64*

  store i64 %1222, i64* %1225

  %1226 = load i64, i64* %154, align 8, !alias.scope !1498, !noalias !1501

  %1227 = load i64, i64* %153, align 8, !alias.scope !1498, !noalias !1501

  %1228 = load i64, i64* %156, align 8, !alias.scope !1498, !noalias !1501

  %1229 = load i64, i64* %157, align 8, !alias.scope !1498, !noalias !1501

  %1230 = inttoptr i64 %1223 to i64*

  %1231 = load i64, i64* %1230

  %1232 = add i64 %1223, 8

  %1233 = inttoptr i64 %1232 to i64*

  %1234 = load i64, i64* %1233

  %1235 = add i64 %1223, 16

  %1236 = inttoptr i64 %1235 to i64*

  %1237 = load i64, i64* %1236

  %1238 = add i64 %1223, 24

  %1239 = inttoptr i64 %1238 to i64*

  %1240 = load i64, i64* %1239

  %1241 = add i64 %1223, 32

  %1242 = inttoptr i64 %1241 to i64*

  %1243 = load i64, i64* %1242

  %1244 = add i64 %1223, 40

  %1245 = inttoptr i64 %1244 to i64*

  %1246 = load i64, i64* %1245

  %1247 = add i64 %1223, 48

  %1248 = inttoptr i64 %1247 to i64*

  %1249 = load i64, i64* %1248

  %1250 = add i64 %1223, 56

  %1251 = inttoptr i64 %1250 to i64*

  %1252 = load i64, i64* %1251

  %1253 = add i64 %1223, 64

  %1254 = inttoptr i64 %1253 to i64*

  %1255 = load i64, i64* %1254

  %1256 = add i64 %1223, 72

  %1257 = inttoptr i64 %1256 to i64*

  %1258 = load i64, i64* %1257

  %1259 = inttoptr i64 %1224 to i64*

  %1260 = load i64, i64* %1259

  store i64 %1260, i64* %3, align 8, !alias.scope !1498, !noalias !1501

  store i64 %1223, i64* %17, align 8, !alias.scope !1498, !noalias !1501

  %1261 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 159), i64 %1221, i64 %1226, i64 %1227, i64 %1228, i64 %1229, i64 %1231, i64 %1234, i64 %1237, i64 %1240, i64 %1243, i64 %1246, i64 %1249, i64 %1252, i64 %1255, i64 %1258), !noalias !1498

  %1262 = load i64, i64* %3, align 8

  %1263 = load i64, i64* %18, align 8

  %1264 = add i64 %1263, -80

  %1265 = inttoptr i64 %1264 to double*

  %1266 = load double, double* %1265

  store double %1266, double* %111, align 1, !tbaa !1289

  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1268 = bitcast i64* %1267 to double*

  store double 0.000000e+00, double* %1268, align 1, !tbaa !1289

  %1269 = add i64 %1263, -212

  %1270 = trunc i64 %1261 to i32

  %1271 = inttoptr i64 %1269 to i32*

  store i32 %1270, i32* %1271

  %1272 = add i64 %1262, 28

  %1273 = load i64, i64* %17, align 8, !tbaa !1240

  %1274 = add i64 %1273, -8

  %1275 = inttoptr i64 %1274 to i64*

  store i64 %1272, i64* %1275

  %1276 = load i64, i64* %155, align 8, !alias.scope !1503, !noalias !1506

  %1277 = load i64, i64* %154, align 8, !alias.scope !1503, !noalias !1506

  %1278 = load i64, i64* %153, align 8, !alias.scope !1503, !noalias !1506

  %1279 = load i64, i64* %156, align 8, !alias.scope !1503, !noalias !1506

  %1280 = load i64, i64* %157, align 8, !alias.scope !1503, !noalias !1506

  %1281 = inttoptr i64 %1273 to i64*

  %1282 = load i64, i64* %1281

  %1283 = add i64 %1273, 8

  %1284 = inttoptr i64 %1283 to i64*

  %1285 = load i64, i64* %1284

  %1286 = add i64 %1273, 16

  %1287 = inttoptr i64 %1286 to i64*

  %1288 = load i64, i64* %1287

  %1289 = add i64 %1273, 24

  %1290 = inttoptr i64 %1289 to i64*

  %1291 = load i64, i64* %1290

  %1292 = add i64 %1273, 32

  %1293 = inttoptr i64 %1292 to i64*

  %1294 = load i64, i64* %1293

  %1295 = add i64 %1273, 40

  %1296 = inttoptr i64 %1295 to i64*

  %1297 = load i64, i64* %1296

  %1298 = add i64 %1273, 48

  %1299 = inttoptr i64 %1298 to i64*

  %1300 = load i64, i64* %1299

  %1301 = add i64 %1273, 56

  %1302 = inttoptr i64 %1301 to i64*

  %1303 = load i64, i64* %1302

  %1304 = add i64 %1273, 64

  %1305 = inttoptr i64 %1304 to i64*

  %1306 = load i64, i64* %1305

  %1307 = add i64 %1273, 72

  %1308 = inttoptr i64 %1307 to i64*

  %1309 = load i64, i64* %1308

  %1310 = inttoptr i64 %1274 to i64*

  %1311 = load i64, i64* %1310

  store i64 %1311, i64* %3, align 8, !alias.scope !1503, !noalias !1506

  store i64 %1273, i64* %17, align 8, !alias.scope !1503, !noalias !1506

  %1312 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 196), i64 %1276, i64 %1277, i64 %1278, i64 %1279, i64 %1280, i64 %1282, i64 %1285, i64 %1288, i64 %1291, i64 %1294, i64 %1297, i64 %1300, i64 %1303, i64 %1306, i64 %1309), !noalias !1503

  %1313 = load i64, i64* %3, align 8

  %1314 = load i64, i64* %18, align 8

  %1315 = add i64 %1314, -88

  %1316 = inttoptr i64 %1315 to double*

  %1317 = load double, double* %1316

  store double %1317, double* %111, align 1, !tbaa !1289

  store double 0.000000e+00, double* %1268, align 1, !tbaa !1289

  %1318 = add i64 %1314, -216

  %1319 = trunc i64 %1312 to i32

  %1320 = inttoptr i64 %1318 to i32*

  store i32 %1319, i32* %1320

  %1321 = add i64 %1313, 28

  %1322 = load i64, i64* %17, align 8, !tbaa !1240

  %1323 = add i64 %1322, -8

  %1324 = inttoptr i64 %1323 to i64*

  store i64 %1321, i64* %1324

  %1325 = load i64, i64* %155, align 8, !alias.scope !1508, !noalias !1511

  %1326 = load i64, i64* %154, align 8, !alias.scope !1508, !noalias !1511

  %1327 = load i64, i64* %153, align 8, !alias.scope !1508, !noalias !1511

  %1328 = load i64, i64* %156, align 8, !alias.scope !1508, !noalias !1511

  %1329 = load i64, i64* %157, align 8, !alias.scope !1508, !noalias !1511

  %1330 = inttoptr i64 %1322 to i64*

  %1331 = load i64, i64* %1330

  %1332 = add i64 %1322, 8

  %1333 = inttoptr i64 %1332 to i64*

  %1334 = load i64, i64* %1333

  %1335 = add i64 %1322, 16

  %1336 = inttoptr i64 %1335 to i64*

  %1337 = load i64, i64* %1336

  %1338 = add i64 %1322, 24

  %1339 = inttoptr i64 %1338 to i64*

  %1340 = load i64, i64* %1339

  %1341 = add i64 %1322, 32

  %1342 = inttoptr i64 %1341 to i64*

  %1343 = load i64, i64* %1342

  %1344 = add i64 %1322, 40

  %1345 = inttoptr i64 %1344 to i64*

  %1346 = load i64, i64* %1345

  %1347 = add i64 %1322, 48

  %1348 = inttoptr i64 %1347 to i64*

  %1349 = load i64, i64* %1348

  %1350 = add i64 %1322, 56

  %1351 = inttoptr i64 %1350 to i64*

  %1352 = load i64, i64* %1351

  %1353 = add i64 %1322, 64

  %1354 = inttoptr i64 %1353 to i64*

  %1355 = load i64, i64* %1354

  %1356 = add i64 %1322, 72

  %1357 = inttoptr i64 %1356 to i64*

  %1358 = load i64, i64* %1357

  %1359 = inttoptr i64 %1323 to i64*

  %1360 = load i64, i64* %1359

  store i64 %1360, i64* %3, align 8, !alias.scope !1508, !noalias !1511

  store i64 %1322, i64* %17, align 8, !alias.scope !1508, !noalias !1511

  %1361 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 235), i64 %1325, i64 %1326, i64 %1327, i64 %1328, i64 %1329, i64 %1331, i64 %1334, i64 %1337, i64 %1340, i64 %1343, i64 %1346, i64 %1349, i64 %1352, i64 %1355, i64 %1358), !noalias !1508

  %1362 = load i64, i64* %3, align 8

  %1363 = load i64, i64* %18, align 8

  %1364 = add i64 %1363, 16

  %1365 = inttoptr i64 %1364 to i64*

  %1366 = load i64, i64* %1365

  store i64 %1366, i64* %15, align 8, !tbaa !1240

  %1367 = add i64 %1363, -220

  %1368 = trunc i64 %1361 to i32

  %1369 = inttoptr i64 %1367 to i32*

  store i32 %1368, i32* %1369

  %1370 = add i64 %1362, 27

  %1371 = load i64, i64* %17, align 8, !tbaa !1240

  %1372 = add i64 %1371, -8

  %1373 = inttoptr i64 %1372 to i64*

  store i64 %1370, i64* %1373

  %1374 = load i64, i64* %154, align 8, !alias.scope !1513, !noalias !1516

  %1375 = load i64, i64* %153, align 8, !alias.scope !1513, !noalias !1516

  %1376 = load i64, i64* %156, align 8, !alias.scope !1513, !noalias !1516

  %1377 = load i64, i64* %157, align 8, !alias.scope !1513, !noalias !1516

  %1378 = inttoptr i64 %1371 to i64*

  %1379 = load i64, i64* %1378

  %1380 = add i64 %1371, 8

  %1381 = inttoptr i64 %1380 to i64*

  %1382 = load i64, i64* %1381

  %1383 = add i64 %1371, 16

  %1384 = inttoptr i64 %1383 to i64*

  %1385 = load i64, i64* %1384

  %1386 = add i64 %1371, 24

  %1387 = inttoptr i64 %1386 to i64*

  %1388 = load i64, i64* %1387

  %1389 = add i64 %1371, 32

  %1390 = inttoptr i64 %1389 to i64*

  %1391 = load i64, i64* %1390

  %1392 = add i64 %1371, 40

  %1393 = inttoptr i64 %1392 to i64*

  %1394 = load i64, i64* %1393

  %1395 = add i64 %1371, 48

  %1396 = inttoptr i64 %1395 to i64*

  %1397 = load i64, i64* %1396

  %1398 = add i64 %1371, 56

  %1399 = inttoptr i64 %1398 to i64*

  %1400 = load i64, i64* %1399

  %1401 = add i64 %1371, 64

  %1402 = inttoptr i64 %1401 to i64*

  %1403 = load i64, i64* %1402

  %1404 = add i64 %1371, 72

  %1405 = inttoptr i64 %1404 to i64*

  %1406 = load i64, i64* %1405

  %1407 = inttoptr i64 %1372 to i64*

  %1408 = load i64, i64* %1407

  store i64 %1408, i64* %3, align 8, !alias.scope !1513, !noalias !1516

  store i64 %1371, i64* %17, align 8, !alias.scope !1513, !noalias !1516

  %1409 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 274), i64 %1366, i64 %1374, i64 %1375, i64 %1376, i64 %1377, i64 %1379, i64 %1382, i64 %1385, i64 %1388, i64 %1391, i64 %1394, i64 %1397, i64 %1400, i64 %1403, i64 %1406), !noalias !1513

  %1410 = load i64, i64* %18, align 8

  %1411 = add i64 %1410, 24

  %1412 = load i64, i64* %3, align 8

  %1413 = inttoptr i64 %1411 to i32*

  %1414 = load i32, i32* %1413

  %1415 = lshr i32 %1414, 31

  %1416 = trunc i32 %1415 to i8

  %1417 = add i64 %1410, -224

  %1418 = trunc i64 %1409 to i32

  %1419 = inttoptr i64 %1417 to i32*

  store i32 %1418, i32* %1419

  %1420 = icmp ne i8 %1416, 0

  %1421 = select i1 %1420, i64 16, i64 44

  %1422 = add i64 %1412, %1421

  br i1 %1420, label %block_400895, label %block_4008b1



block_4007fe:                                     ; preds = %block_4006d0

  %1423 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0

  %1424 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %1425 = add i64 %244, -56

  %1426 = inttoptr i64 %1425 to i32*

  %1427 = load i32, i32* %1426

  %1428 = zext i32 %1427 to i64

  %1429 = add i64 %244, -60

  %1430 = inttoptr i64 %1429 to i32*

  %1431 = load i32, i32* %1430

  %1432 = zext i32 %1431 to i64

  store i64 %1432, i64* %1423, align 8, !tbaa !1240

  %1433 = inttoptr i64 %245 to i32*

  %1434 = load i32, i32* %1433

  %1435 = zext i32 %1434 to i64

  store i64 %1435, i64* %1424, align 8, !tbaa !1240

  %1436 = add i64 %254, 26

  %1437 = load i64, i64* %17, align 8, !tbaa !1240

  %1438 = add i64 %1437, -8

  %1439 = inttoptr i64 %1438 to i64*

  store i64 %1436, i64* %1439

  %1440 = load i64, i64* %156, align 8, !alias.scope !1518, !noalias !1521

  %1441 = load i64, i64* %157, align 8, !alias.scope !1518, !noalias !1521

  %1442 = inttoptr i64 %1437 to i64*

  %1443 = load i64, i64* %1442

  %1444 = add i64 %1437, 8

  %1445 = inttoptr i64 %1444 to i64*

  %1446 = load i64, i64* %1445

  %1447 = add i64 %1437, 16

  %1448 = inttoptr i64 %1447 to i64*

  %1449 = load i64, i64* %1448

  %1450 = add i64 %1437, 24

  %1451 = inttoptr i64 %1450 to i64*

  %1452 = load i64, i64* %1451

  %1453 = add i64 %1437, 32

  %1454 = inttoptr i64 %1453 to i64*

  %1455 = load i64, i64* %1454

  %1456 = add i64 %1437, 40

  %1457 = inttoptr i64 %1456 to i64*

  %1458 = load i64, i64* %1457

  %1459 = add i64 %1437, 48

  %1460 = inttoptr i64 %1459 to i64*

  %1461 = load i64, i64* %1460

  %1462 = add i64 %1437, 56

  %1463 = inttoptr i64 %1462 to i64*

  %1464 = load i64, i64* %1463

  %1465 = add i64 %1437, 64

  %1466 = inttoptr i64 %1465 to i64*

  %1467 = load i64, i64* %1466

  %1468 = add i64 %1437, 72

  %1469 = inttoptr i64 %1468 to i64*

  %1470 = load i64, i64* %1469

  %1471 = inttoptr i64 %1438 to i64*

  %1472 = load i64, i64* %1471

  store i64 %1472, i64* %3, align 8, !alias.scope !1518, !noalias !1521

  store i64 %1437, i64* %17, align 8, !alias.scope !1518, !noalias !1521

  %1473 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 115), i64 %1428, i64 %1432, i64 %1435, i64 %1440, i64 %1441, i64 %1443, i64 %1446, i64 %1449, i64 %1452, i64 %1455, i64 %1458, i64 %1461, i64 %1464, i64 %1467, i64 %1470), !noalias !1518

  %1474 = load i64, i64* %18, align 8

  %1475 = add i64 %1474, -208

  %1476 = trunc i64 %1473 to i32

  %1477 = load i64, i64* %3, align 8

  %1478 = add i64 %1477, 6

  %1479 = inttoptr i64 %1475 to i32*

  store i32 %1476, i32* %1479

  br label %block_40081e



block_4007d1:                                     ; preds = %block_4007bf

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

  br label %block_4007de

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4019a0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_4019a0:

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

  %47 = add i64 %1, -5208

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1240

  %51 = tail call %struct.Memory* @sub_400548__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_4019f6, label %block_4019d6



block_4019f6.loopexit:                            ; preds = %block_4019e0

  br label %block_4019f6



block_4019f6:                                     ; preds = %block_4019f6.loopexit, %block_4019a0

  %57 = phi %struct.Memory* [ %51, %block_4019a0 ], [ %119, %block_4019f6.loopexit ]

  %58 = load i64, i64* %12, align 8

  %59 = add i64 %58, 8

  %60 = icmp ugt i64 %58, -9

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %41, align 1, !tbaa !1266

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #9

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %42, align 1, !tbaa !1279

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %43, align 1, !tbaa !1283

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %44, align 1, !tbaa !1280

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %45, align 1, !tbaa !1281

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %46, align 1, !tbaa !1282

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



block_4019d6:                                     ; preds = %block_4019a0

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1266

  store i8 1, i8* %42, align 1, !tbaa !1279

  store i8 1, i8* %44, align 1, !tbaa !1280

  store i8 0, i8* %45, align 1, !tbaa !1281

  store i8 0, i8* %46, align 1, !tbaa !1282

  store i8 0, i8* %43, align 1, !tbaa !1283

  %102 = add i64 %56, 10

  br label %block_4019e0



block_4019e0:                                     ; preds = %block_4019e0, %block_4019d6

  %103 = phi i64 [ 0, %block_4019d6 ], [ %122, %block_4019e0 ]

  %104 = phi i64 [ %102, %block_4019d6 ], [ %150, %block_4019e0 ]

  %105 = phi %struct.Memory* [ %51, %block_4019d6 ], [ %119, %block_4019e0 ]

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

  store i8 %127, i8* %41, align 1, !tbaa !1266

  %128 = trunc i64 %125 to i32

  %129 = and i32 %128, 255

  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #9

  %131 = trunc i32 %130 to i8

  %132 = and i8 %131, 1

  %133 = xor i8 %132, 1

  store i8 %133, i8* %42, align 1, !tbaa !1279

  %134 = xor i64 %122, %124

  %135 = xor i64 %134, %125

  %136 = lshr i64 %135, 4

  %137 = trunc i64 %136 to i8

  %138 = and i8 %137, 1

  store i8 %138, i8* %43, align 1, !tbaa !1283

  %139 = icmp eq i64 %125, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %44, align 1, !tbaa !1280

  %141 = lshr i64 %125, 63

  %142 = trunc i64 %141 to i8

  store i8 %142, i8* %45, align 1, !tbaa !1281

  %143 = lshr i64 %124, 63

  %144 = xor i64 %123, %143

  %145 = xor i64 %141, %143

  %146 = add nuw nsw i64 %145, %144

  %147 = icmp eq i64 %146, 2

  %148 = zext i1 %147 to i8

  store i8 %148, i8* %46, align 1, !tbaa !1282

  %149 = select i1 %139, i64 9, i64 -13

  %150 = add i64 %121, %149

  br i1 %139, label %block_4019f6.loopexit, label %block_4019e0

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400650_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_400688:

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

  store i8 0, i8* %12, align 1, !tbaa !1357

  store i8 1, i8* %13, align 1, !tbaa !1357

  store i8 0, i8* %14, align 1, !tbaa !1357

  store i8 1, i8* %15, align 1, !tbaa !1357

  store i8 0, i8* %16, align 1, !tbaa !1357

  store i8 0, i8* %17, align 1, !tbaa !1357

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

define %struct.Memory* @sub_401920_wtime_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401920:

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

  store i64 %17, i64* %8, align 8, !alias.scope !1523, !noalias !1526

  %31 = tail call i64 @gettimeofday(i64 %24, i64 0), !noalias !1523

  %32 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  %33 = lshr i32 %32, 31

  %34 = trunc i32 %33 to i8

  %35 = load i64, i64* %9, align 8

  %36 = add i64 %35, -28

  %37 = trunc i64 %31 to i32

  %38 = inttoptr i64 %36 to i32*

  store i32 %37, i32* %38

  %39 = icmp ne i8 %34, 0

  %40 = add i64 %35, -24

  br i1 %39, label %block_40194d, label %block_40195a



block_40195a:                                     ; preds = %block_40194d, %block_401920

  %41 = phi %struct.Memory* [ %2, %block_40194d ], [ %2, %block_401920 ]

  %42 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1416) to double*)

  %43 = bitcast [32 x %union.VectorReg]* %10 to double*

  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %45 = inttoptr i64 %40 to i64*

  %46 = load i64, i64* %45

  %47 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

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

  store double %55, double* %56, align 1, !tbaa !1289

  %57 = fmul double %55, %42

  store double %57, double* %43, align 1, !tbaa !1289

  store i64 0, i64* %44, align 1, !tbaa !1289

  %58 = fadd double %50, %57

  store double %58, double* %51, align 1, !tbaa !1289

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

  store i8 %66, i8* %18, align 1, !tbaa !1266

  %67 = trunc i64 %64 to i32

  %68 = and i32 %67, 255

  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #9

  %70 = trunc i32 %69 to i8

  %71 = and i8 %70, 1

  %72 = xor i8 %71, 1

  store i8 %72, i8* %19, align 1, !tbaa !1279

  %73 = xor i64 %64, %63

  %74 = lshr i64 %73, 4

  %75 = trunc i64 %74 to i8

  %76 = and i8 %75, 1

  store i8 %76, i8* %20, align 1, !tbaa !1283

  %77 = icmp eq i64 %64, 0

  %78 = zext i1 %77 to i8

  store i8 %78, i8* %21, align 1, !tbaa !1280

  %79 = lshr i64 %64, 63

  %80 = trunc i64 %79 to i8

  store i8 %80, i8* %22, align 1, !tbaa !1281

  %81 = lshr i64 %63, 63

  %82 = xor i64 %79, %81

  %83 = add nuw nsw i64 %82, %79

  %84 = icmp eq i64 %83, 2

  %85 = zext i1 %84 to i8

  store i8 %85, i8* %23, align 1, !tbaa !1282

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



block_40194d:                                     ; preds = %block_401920

  %92 = inttoptr i64 %40 to i64*

  %93 = load i64, i64* %92

  %94 = trunc i64 %93 to i32

  store i32 %94, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  br label %block_40195a

}



; Function Attrs: noinline

define %struct.Memory* @sub_400560(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400560:

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

  %10 = icmp eq i64 %9, 4195692

  br i1 %10, label %block_40056c, label %17



block_40056c:                                     ; preds = %block_400560

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %13 = load i64, i64* %12, align 8, !alias.scope !1528, !noalias !1531

  %14 = inttoptr i64 %7 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %3, align 8, !alias.scope !1528, !noalias !1531

  store i64 %6, i64* %5, align 8, !alias.scope !1528, !noalias !1531

  %16 = tail call i64 @free(i64 %13), !noalias !1528

  store i64 %16, i64* %11, align 8, !alias.scope !1528, !noalias !1531

  ret %struct.Memory* %2



; <label>:17:                                     ; preds = %block_400560

  %18 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %18

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_401a14__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {

block_401a14:

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

  store i8 %24, i8* %7, align 1, !tbaa !1266

  %25 = trunc i64 %5 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %8, align 1, !tbaa !1279

  store i8 %12, i8* %13, align 1, !tbaa !1283

  %31 = icmp eq i64 %5, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %14, align 1, !tbaa !1280

  %33 = trunc i64 %17 to i8

  store i8 %33, i8* %16, align 1, !tbaa !1281

  store i8 %21, i8* %22, align 1, !tbaa !1282

  %34 = inttoptr i64 %5 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %3, align 8, !tbaa !1240

  %36 = add i64 %5, 8

  store i64 %36, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400aa0_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400aa0:

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

  %27 = tail call %struct.Memory* @sub_400ad0_elapsed_time(%struct.State* nonnull %0, i64 %23, %struct.Memory* %2)

  %28 = load i64, i64* %8, align 8

  %29 = add i64 %28, -4

  %30 = inttoptr i64 %29 to i32*

  %31 = load i32, i32* %30

  %32 = sext i32 %31 to i64

  store i64 %32, i64* %6, align 8, !tbaa !1240

  %33 = shl nsw i64 %32, 3

  %34 = add i64 %33, add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 528)

  %35 = bitcast %union.VectorReg* %9 to double*

  %36 = load double, double* %35, align 1

  %37 = inttoptr i64 %34 to double*

  store double %36, double* %37

  %38 = load i64, i64* %7, align 8

  %39 = add i64 %38, 16

  %40 = icmp ugt i64 %38, -17

  %41 = zext i1 %40 to i8

  store i8 %41, i8* %14, align 1, !tbaa !1266

  %42 = trunc i64 %39 to i32

  %43 = and i32 %42, 255

  %44 = tail call i32 @llvm.ctpop.i32(i32 %43) #9

  %45 = trunc i32 %44 to i8

  %46 = and i8 %45, 1

  %47 = xor i8 %46, 1

  store i8 %47, i8* %15, align 1, !tbaa !1279

  %48 = xor i64 %38, 16

  %49 = xor i64 %48, %39

  %50 = lshr i64 %49, 4

  %51 = trunc i64 %50 to i8

  %52 = and i8 %51, 1

  store i8 %52, i8* %16, align 1, !tbaa !1283

  %53 = icmp eq i64 %39, 0

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %17, align 1, !tbaa !1280

  %55 = lshr i64 %39, 63

  %56 = trunc i64 %55 to i8

  store i8 %56, i8* %18, align 1, !tbaa !1281

  %57 = lshr i64 %38, 63

  %58 = xor i64 %55, %57

  %59 = add nuw nsw i64 %58, %55

  %60 = icmp eq i64 %59, 2

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %19, align 1, !tbaa !1282

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



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_4005e0__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195808, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_4005e0__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195808, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

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

define i64 @callback_sub_4006c0_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196032, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400690___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4195984, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4195984, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6056c8_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401a10___libc_csu_fini() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200976, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = phi i64 [ %3, %__mcsema_verify_reg_state.exit ], [ %.pre, %5 ]

  %7 = add i64 %6, -8

  store i64 %7, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = tail call %struct.Memory* @sub_401a10___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4200976, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %9

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4019a0___libc_csu_init() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200864, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = phi i64 [ %3, %__mcsema_verify_reg_state.exit ], [ %.pre, %5 ]

  %7 = add i64 %6, -8

  store i64 %7, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = tail call %struct.Memory* @sub_4019a0___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4200864, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %9

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

  store i64 4199472, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %7 = load volatile i1, i1* @0, align 1

  br i1 %7, label %__mcsema_early_init.exit, label %8



; <label>:8:                                      ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %8, %__mcsema_verify_reg_state.exit

  %9 = phi i64 [ %6, %__mcsema_verify_reg_state.exit ], [ %.pre, %8 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  %10 = add i64 %9, -8

  store i64 %10, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %11 = tail call %struct.Memory* @sub_401430_main(%struct.State* nonnull @__mcsema_reg_state, i64 4199472, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %12 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %12

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6056c0___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6056b0_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_4005c0_fflush(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6056a0_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_4005d0_fopen(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6056a8_fclose(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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

define %struct.Memory* @ext_6056b8_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {

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



; Function Attrs: nobuiltin noinline

define i64 @deallocate_arrays(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197312, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400bc0_deallocate_arrays(%struct.State* nonnull @__mcsema_reg_state, i64 4197312, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @c_print_results(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196048, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_4006d0_c_print_results(%struct.State* nonnull @__mcsema_reg_state, i64 4196048, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

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

  store i64 4195656, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400548__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195656, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @rank(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198480, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_401050_rank(%struct.State* nonnull @__mcsema_reg_state, i64 4198480, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @randlc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400c10_randlc(%struct.State* nonnull @__mcsema_reg_state, i64 4197392, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @allocate_arrays(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400b60_allocate_arrays(%struct.State* nonnull @__mcsema_reg_state, i64 4197216, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @wtime_(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200736, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_401920_wtime_(%struct.State* nonnull @__mcsema_reg_state, i64 4200736, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @timer_clear(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4196992, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull @__mcsema_reg_state, i64 4196992, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @timer_read(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4197184, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull @__mcsema_reg_state, i64 4197184, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @create_seq(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {

  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %10 = icmp eq i64 %9, 0

  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %8

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8

  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4198000, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400e70_create_seq(%struct.State* nonnull @__mcsema_reg_state, i64 4198000, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @timer_start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull @__mcsema_reg_state, i64 4197024, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

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

  store i64 4200980, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_401a14__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4200980, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @timer_stop(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull @__mcsema_reg_state, i64 4197104, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nobuiltin noinline

define i64 @full_verify(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit

  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8

  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8

  %15 = inttoptr i64 %14 to i64*

  store i64 %7, i64* %15

  %16 = add i64 %14, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %6, i64* %17

  %18 = add i64 %14, -24

  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %19 = tail call %struct.Memory* @sub_400f30_full_verify(%struct.State* nonnull @__mcsema_reg_state, i64 4198192, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #9 {

  %1 = tail call i64 @callback_sub_401a10___libc_csu_fini()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_constructor() #9 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a20__rodata_type* @seg_401a20__rodata to i64), i64 1263) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_4019a0___libc_csu_init()

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

!1244 = !{!1245, !1245, i64 0}

!1245 = !{!"int", !1242, i64 0}

!1246 = !{!1247}

!1247 = distinct !{!1247, !1248, !"ext_6056c8_malloc: argument 0"}

!1248 = distinct !{!1248, !"ext_6056c8_malloc"}

!1249 = !{!1250}

!1250 = distinct !{!1250, !1248, !"ext_6056c8_malloc: argument 1"}

!1251 = !{!1252}

!1252 = distinct !{!1252, !1253, !"ext_6056c8_malloc: argument 0"}

!1253 = distinct !{!1253, !"ext_6056c8_malloc"}

!1254 = !{!1255}

!1255 = distinct !{!1255, !1253, !"ext_6056c8_malloc: argument 1"}

!1256 = !{!1257}

!1257 = distinct !{!1257, !1258, !"ext_6056c8_malloc: argument 0"}

!1258 = distinct !{!1258, !"ext_6056c8_malloc"}

!1259 = !{!1260}

!1260 = distinct !{!1260, !1258, !"ext_6056c8_malloc: argument 1"}

!1261 = !{!1262}

!1262 = distinct !{!1262, !1263, !"ext_6056c8_malloc: argument 0"}

!1263 = distinct !{!1263, !"ext_6056c8_malloc"}

!1264 = !{!1265}

!1265 = distinct !{!1265, !1263, !"ext_6056c8_malloc: argument 1"}

!1266 = !{!1267, !1242, i64 2065}

!1267 = !{!"_ZTS5State", !1242, i64 16, !1268, i64 2064, !1242, i64 2080, !1269, i64 2088, !1271, i64 2112, !1273, i64 2208, !1274, i64 2480, !1275, i64 2608, !1276, i64 2736, !1242, i64 2760, !1242, i64 2768, !1277, i64 3280}

!1268 = !{!"_ZTS10ArithFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15}

!1269 = !{!"_ZTS8Segments", !1270, i64 0, !1242, i64 2, !1270, i64 4, !1242, i64 6, !1270, i64 8, !1242, i64 10, !1270, i64 12, !1242, i64 14, !1270, i64 16, !1242, i64 18, !1270, i64 20, !1242, i64 22}

!1270 = !{!"short", !1242, i64 0}

!1271 = !{!"_ZTS12AddressSpace", !1241, i64 0, !1272, i64 8, !1241, i64 16, !1272, i64 24, !1241, i64 32, !1272, i64 40, !1241, i64 48, !1272, i64 56, !1241, i64 64, !1272, i64 72, !1241, i64 80, !1272, i64 88}

!1272 = !{!"_ZTS3Reg", !1242, i64 0}

!1273 = !{!"_ZTS3GPR", !1241, i64 0, !1272, i64 8, !1241, i64 16, !1272, i64 24, !1241, i64 32, !1272, i64 40, !1241, i64 48, !1272, i64 56, !1241, i64 64, !1272, i64 72, !1241, i64 80, !1272, i64 88, !1241, i64 96, !1272, i64 104, !1241, i64 112, !1272, i64 120, !1241, i64 128, !1272, i64 136, !1241, i64 144, !1272, i64 152, !1241, i64 160, !1272, i64 168, !1241, i64 176, !1272, i64 184, !1241, i64 192, !1272, i64 200, !1241, i64 208, !1272, i64 216, !1241, i64 224, !1272, i64 232, !1241, i64 240, !1272, i64 248, !1241, i64 256, !1272, i64 264}

!1274 = !{!"_ZTS8X87Stack", !1242, i64 0}

!1275 = !{!"_ZTS3MMX", !1242, i64 0}

!1276 = !{!"_ZTS14FPUStatusFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15, !1242, i64 16, !1242, i64 17, !1242, i64 18, !1242, i64 19, !1242, i64 20}

!1277 = !{!"_ZTS13SegmentCaches", !1278, i64 0, !1278, i64 16, !1278, i64 32, !1278, i64 48, !1278, i64 64, !1278, i64 80}

!1278 = !{!"_ZTS13SegmentShadow", !1242, i64 0, !1245, i64 8, !1245, i64 12}

!1279 = !{!1267, !1242, i64 2067}

!1280 = !{!1267, !1242, i64 2071}

!1281 = !{!1267, !1242, i64 2073}

!1282 = !{!1267, !1242, i64 2077}

!1283 = !{!1267, !1242, i64 2069}

!1284 = !{!1285}

!1285 = distinct !{!1285, !1286, !"ext_6056c0___libc_start_main: argument 0"}

!1286 = distinct !{!1286, !"ext_6056c0___libc_start_main"}

!1287 = !{!1288}

!1288 = distinct !{!1288, !1286, !"ext_6056c0___libc_start_main: argument 1"}

!1289 = !{!1290, !1290, i64 0}

!1290 = !{!"double", !1242, i64 0}

!1291 = !{!1292}

!1292 = distinct !{!1292, !1293, !"ext_6056b0_printf: argument 0"}

!1293 = distinct !{!1293, !"ext_6056b0_printf"}

!1294 = !{!1295}

!1295 = distinct !{!1295, !1293, !"ext_6056b0_printf: argument 1"}

!1296 = !{!1297}

!1297 = distinct !{!1297, !1298, !"ext_6056b0_printf: argument 0"}

!1298 = distinct !{!1298, !"ext_6056b0_printf"}

!1299 = !{!1300}

!1300 = distinct !{!1300, !1298, !"ext_6056b0_printf: argument 1"}

!1301 = !{!1302}

!1302 = distinct !{!1302, !1303, !"ext_6056b0_printf: argument 0"}

!1303 = distinct !{!1303, !"ext_6056b0_printf"}

!1304 = !{!1305}

!1305 = distinct !{!1305, !1303, !"ext_6056b0_printf: argument 1"}

!1306 = !{!1307}

!1307 = distinct !{!1307, !1308, !"ext_4005c0_fflush: argument 0"}

!1308 = distinct !{!1308, !"ext_4005c0_fflush"}

!1309 = !{!1310}

!1310 = distinct !{!1310, !1308, !"ext_4005c0_fflush: argument 1"}

!1311 = !{!1312}

!1312 = distinct !{!1312, !1313, !"ext_6056a0_free: argument 0"}

!1313 = distinct !{!1313, !"ext_6056a0_free"}

!1314 = !{!1315}

!1315 = distinct !{!1315, !1316, !"ext_6056a0_free: argument 0"}

!1316 = distinct !{!1316, !"ext_6056a0_free"}

!1317 = !{!1318}

!1318 = distinct !{!1318, !1319, !"ext_6056a0_free: argument 0"}

!1319 = distinct !{!1319, !"ext_6056a0_free"}

!1320 = !{!1321}

!1321 = distinct !{!1321, !1322, !"ext_6056a0_free: argument 0"}

!1322 = distinct !{!1322, !"ext_6056a0_free"}

!1323 = !{!1324}

!1324 = distinct !{!1324, !1322, !"ext_6056a0_free: argument 1"}

!1325 = !{!1326}

!1326 = distinct !{!1326, !1327, !"ext_4005d0_fopen: argument 0"}

!1327 = distinct !{!1327, !"ext_4005d0_fopen"}

!1328 = !{!1329}

!1329 = distinct !{!1329, !1327, !"ext_4005d0_fopen: argument 1"}

!1330 = !{!1331}

!1331 = distinct !{!1331, !1332, !"ext_6056b0_printf: argument 0"}

!1332 = distinct !{!1332, !"ext_6056b0_printf"}

!1333 = !{!1334}

!1334 = distinct !{!1334, !1332, !"ext_6056b0_printf: argument 1"}

!1335 = !{!1336, !1336, i64 0}

!1336 = !{!"float", !1242, i64 0}

!1337 = !{!1338}

!1338 = distinct !{!1338, !1339, !"ext_6056b0_printf: argument 0"}

!1339 = distinct !{!1339, !"ext_6056b0_printf"}

!1340 = !{!1341}

!1341 = distinct !{!1341, !1339, !"ext_6056b0_printf: argument 1"}

!1342 = !{!1343}

!1343 = distinct !{!1343, !1344, !"ext_6056b0_printf: argument 0"}

!1344 = distinct !{!1344, !"ext_6056b0_printf"}

!1345 = !{!1346}

!1346 = distinct !{!1346, !1344, !"ext_6056b0_printf: argument 1"}

!1347 = !{!1348}

!1348 = distinct !{!1348, !1349, !"ext_6056b0_printf: argument 0"}

!1349 = distinct !{!1349, !"ext_6056b0_printf"}

!1350 = !{!1351}

!1351 = distinct !{!1351, !1349, !"ext_6056b0_printf: argument 1"}

!1352 = !{!1353}

!1353 = distinct !{!1353, !1354, !"ext_6056b0_printf: argument 0"}

!1354 = distinct !{!1354, !"ext_6056b0_printf"}

!1355 = !{!1356}

!1356 = distinct !{!1356, !1354, !"ext_6056b0_printf: argument 1"}

!1357 = !{!1242, !1242, i64 0}

!1358 = !{!1359}

!1359 = distinct !{!1359, !1360, !"ext_6056b0_printf: argument 0"}

!1360 = distinct !{!1360, !"ext_6056b0_printf"}

!1361 = !{!1362}

!1362 = distinct !{!1362, !1360, !"ext_6056b0_printf: argument 1"}

!1363 = !{!1364}

!1364 = distinct !{!1364, !1365, !"ext_6056b0_printf: argument 0"}

!1365 = distinct !{!1365, !"ext_6056b0_printf"}

!1366 = !{!1367}

!1367 = distinct !{!1367, !1365, !"ext_6056b0_printf: argument 1"}

!1368 = !{!1369}

!1369 = distinct !{!1369, !1370, !"ext_6056b0_printf: argument 0"}

!1370 = distinct !{!1370, !"ext_6056b0_printf"}

!1371 = !{!1372}

!1372 = distinct !{!1372, !1370, !"ext_6056b0_printf: argument 1"}

!1373 = !{!1374}

!1374 = distinct !{!1374, !1375, !"ext_6056b0_printf: argument 0"}

!1375 = distinct !{!1375, !"ext_6056b0_printf"}

!1376 = !{!1377}

!1377 = distinct !{!1377, !1375, !"ext_6056b0_printf: argument 1"}

!1378 = !{!1379}

!1379 = distinct !{!1379, !1380, !"ext_6056b0_printf: argument 0"}

!1380 = distinct !{!1380, !"ext_6056b0_printf"}

!1381 = !{!1382}

!1382 = distinct !{!1382, !1380, !"ext_6056b0_printf: argument 1"}

!1383 = !{!1384}

!1384 = distinct !{!1384, !1385, !"ext_6056b0_printf: argument 0"}

!1385 = distinct !{!1385, !"ext_6056b0_printf"}

!1386 = !{!1387}

!1387 = distinct !{!1387, !1385, !"ext_6056b0_printf: argument 1"}

!1388 = !{!1389}

!1389 = distinct !{!1389, !1390, !"ext_6056a8_fclose: argument 0"}

!1390 = distinct !{!1390, !"ext_6056a8_fclose"}

!1391 = !{!1392}

!1392 = distinct !{!1392, !1390, !"ext_6056a8_fclose: argument 1"}

!1393 = !{!1394}

!1394 = distinct !{!1394, !1395, !"ext_6056b0_printf: argument 0"}

!1395 = distinct !{!1395, !"ext_6056b0_printf"}

!1396 = !{!1397}

!1397 = distinct !{!1397, !1395, !"ext_6056b0_printf: argument 1"}

!1398 = !{!1399}

!1399 = distinct !{!1399, !1400, !"ext_6056b0_printf: argument 0"}

!1400 = distinct !{!1400, !"ext_6056b0_printf"}

!1401 = !{!1402}

!1402 = distinct !{!1402, !1400, !"ext_6056b0_printf: argument 1"}

!1403 = !{!1404}

!1404 = distinct !{!1404, !1405, !"ext_6056b0_printf: argument 0"}

!1405 = distinct !{!1405, !"ext_6056b0_printf"}

!1406 = !{!1407}

!1407 = distinct !{!1407, !1405, !"ext_6056b0_printf: argument 1"}

!1408 = !{!1409}

!1409 = distinct !{!1409, !1410, !"ext_6056b0_printf: argument 0"}

!1410 = distinct !{!1410, !"ext_6056b0_printf"}

!1411 = !{!1412}

!1412 = distinct !{!1412, !1410, !"ext_6056b0_printf: argument 1"}

!1413 = !{!1414}

!1414 = distinct !{!1414, !1415, !"ext_6056b0_printf: argument 0"}

!1415 = distinct !{!1415, !"ext_6056b0_printf"}

!1416 = !{!1417}

!1417 = distinct !{!1417, !1415, !"ext_6056b0_printf: argument 1"}

!1418 = !{!1419}

!1419 = distinct !{!1419, !1420, !"ext_6056b0_printf: argument 0"}

!1420 = distinct !{!1420, !"ext_6056b0_printf"}

!1421 = !{!1422}

!1422 = distinct !{!1422, !1420, !"ext_6056b0_printf: argument 1"}

!1423 = !{!1424}

!1424 = distinct !{!1424, !1425, !"ext_6056b0_printf: argument 0"}

!1425 = distinct !{!1425, !"ext_6056b0_printf"}

!1426 = !{!1427}

!1427 = distinct !{!1427, !1425, !"ext_6056b0_printf: argument 1"}

!1428 = !{!1429}

!1429 = distinct !{!1429, !1430, !"ext_6056b0_printf: argument 0"}

!1430 = distinct !{!1430, !"ext_6056b0_printf"}

!1431 = !{!1432}

!1432 = distinct !{!1432, !1430, !"ext_6056b0_printf: argument 1"}

!1433 = !{!1434}

!1434 = distinct !{!1434, !1435, !"ext_6056b0_printf: argument 0"}

!1435 = distinct !{!1435, !"ext_6056b0_printf"}

!1436 = !{!1437}

!1437 = distinct !{!1437, !1435, !"ext_6056b0_printf: argument 1"}

!1438 = !{!1439}

!1439 = distinct !{!1439, !1440, !"ext_6056b0_printf: argument 0"}

!1440 = distinct !{!1440, !"ext_6056b0_printf"}

!1441 = !{!1442}

!1442 = distinct !{!1442, !1440, !"ext_6056b0_printf: argument 1"}

!1443 = !{!1444}

!1444 = distinct !{!1444, !1445, !"ext_6056b0_printf: argument 0"}

!1445 = distinct !{!1445, !"ext_6056b0_printf"}

!1446 = !{!1447}

!1447 = distinct !{!1447, !1445, !"ext_6056b0_printf: argument 1"}

!1448 = !{!1449}

!1449 = distinct !{!1449, !1450, !"ext_6056b0_printf: argument 0"}

!1450 = distinct !{!1450, !"ext_6056b0_printf"}

!1451 = !{!1452}

!1452 = distinct !{!1452, !1450, !"ext_6056b0_printf: argument 1"}

!1453 = !{!1454}

!1454 = distinct !{!1454, !1455, !"ext_6056b0_printf: argument 0"}

!1455 = distinct !{!1455, !"ext_6056b0_printf"}

!1456 = !{!1457}

!1457 = distinct !{!1457, !1455, !"ext_6056b0_printf: argument 1"}

!1458 = !{!1459}

!1459 = distinct !{!1459, !1460, !"ext_6056b0_printf: argument 0"}

!1460 = distinct !{!1460, !"ext_6056b0_printf"}

!1461 = !{!1462}

!1462 = distinct !{!1462, !1460, !"ext_6056b0_printf: argument 1"}

!1463 = !{!1464}

!1464 = distinct !{!1464, !1465, !"ext_6056b0_printf: argument 0"}

!1465 = distinct !{!1465, !"ext_6056b0_printf"}

!1466 = !{!1467}

!1467 = distinct !{!1467, !1465, !"ext_6056b0_printf: argument 1"}

!1468 = !{!1469}

!1469 = distinct !{!1469, !1470, !"ext_6056b0_printf: argument 0"}

!1470 = distinct !{!1470, !"ext_6056b0_printf"}

!1471 = !{!1472}

!1472 = distinct !{!1472, !1470, !"ext_6056b0_printf: argument 1"}

!1473 = !{!1474}

!1474 = distinct !{!1474, !1475, !"ext_6056b0_printf: argument 0"}

!1475 = distinct !{!1475, !"ext_6056b0_printf"}

!1476 = !{!1477}

!1477 = distinct !{!1477, !1475, !"ext_6056b0_printf: argument 1"}

!1478 = !{!1479}

!1479 = distinct !{!1479, !1480, !"ext_6056b0_printf: argument 0"}

!1480 = distinct !{!1480, !"ext_6056b0_printf"}

!1481 = !{!1482}

!1482 = distinct !{!1482, !1480, !"ext_6056b0_printf: argument 1"}

!1483 = !{!1484}

!1484 = distinct !{!1484, !1485, !"ext_6056b0_printf: argument 0"}

!1485 = distinct !{!1485, !"ext_6056b0_printf"}

!1486 = !{!1487}

!1487 = distinct !{!1487, !1485, !"ext_6056b0_printf: argument 1"}

!1488 = !{!1489}

!1489 = distinct !{!1489, !1490, !"ext_6056b0_printf: argument 0"}

!1490 = distinct !{!1490, !"ext_6056b0_printf"}

!1491 = !{!1492}

!1492 = distinct !{!1492, !1490, !"ext_6056b0_printf: argument 1"}

!1493 = !{!1494}

!1494 = distinct !{!1494, !1495, !"ext_6056b0_printf: argument 0"}

!1495 = distinct !{!1495, !"ext_6056b0_printf"}

!1496 = !{!1497}

!1497 = distinct !{!1497, !1495, !"ext_6056b0_printf: argument 1"}

!1498 = !{!1499}

!1499 = distinct !{!1499, !1500, !"ext_6056b0_printf: argument 0"}

!1500 = distinct !{!1500, !"ext_6056b0_printf"}

!1501 = !{!1502}

!1502 = distinct !{!1502, !1500, !"ext_6056b0_printf: argument 1"}

!1503 = !{!1504}

!1504 = distinct !{!1504, !1505, !"ext_6056b0_printf: argument 0"}

!1505 = distinct !{!1505, !"ext_6056b0_printf"}

!1506 = !{!1507}

!1507 = distinct !{!1507, !1505, !"ext_6056b0_printf: argument 1"}

!1508 = !{!1509}

!1509 = distinct !{!1509, !1510, !"ext_6056b0_printf: argument 0"}

!1510 = distinct !{!1510, !"ext_6056b0_printf"}

!1511 = !{!1512}

!1512 = distinct !{!1512, !1510, !"ext_6056b0_printf: argument 1"}

!1513 = !{!1514}

!1514 = distinct !{!1514, !1515, !"ext_6056b0_printf: argument 0"}

!1515 = distinct !{!1515, !"ext_6056b0_printf"}

!1516 = !{!1517}

!1517 = distinct !{!1517, !1515, !"ext_6056b0_printf: argument 1"}

!1518 = !{!1519}

!1519 = distinct !{!1519, !1520, !"ext_6056b0_printf: argument 0"}

!1520 = distinct !{!1520, !"ext_6056b0_printf"}

!1521 = !{!1522}

!1522 = distinct !{!1522, !1520, !"ext_6056b0_printf: argument 1"}

!1523 = !{!1524}

!1524 = distinct !{!1524, !1525, !"ext_6056b8_gettimeofday: argument 0"}

!1525 = distinct !{!1525, !"ext_6056b8_gettimeofday"}

!1526 = !{!1527}

!1527 = distinct !{!1527, !1525, !"ext_6056b8_gettimeofday: argument 1"}

!1528 = !{!1529}

!1529 = distinct !{!1529, !1530, !"ext_6056a0_free: argument 0"}

!1530 = distinct !{!1530, !"ext_6056a0_free"}

!1531 = !{!1532}

!1532 = distinct !{!1532, !1530, !"ext_6056a0_free: argument 1"}

