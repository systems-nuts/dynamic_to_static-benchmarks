; ModuleID = 'is-c.amd64.bc'

source_filename = "llvm-link"

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_400560__plt_type = type <{ [12 x i8], i32, [112 x i8] }>

%seg_4005e0__text_type = type <{ [60 x i8], i32, [1228 x i8], i32, [3842 x i8] }>

%seg_401a00__rodata_type = type <{ [4 x i8], [27 x i8], [46 x i8], [38 x i8], [44 x i8], [37 x i8], [39 x i8], [39 x i8], [25 x i8], [45 x i8], [45 x i8], [45 x i8], [37 x i8], [37 x i8], [20 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [23 x i8], [64 x i8], [39 x i8], [34 x i8], [21 x i8], [95 x i8], [46 x i8], [56 x i8], [11 x i8], [2 x i8], [57 x i8], [25 x i8], [19 x i8], [15 x i8], [12 x i8], [25 x i8], [3 x i8], [12 x i8], [6 x i8], [12 x i8], [4 x i8], [6 x i8], [4 x i8], [12 x i8], [29 x i8], [22 x i8], [25 x i8], [35 x i8], [35 x i8], [47 x i8] }>

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

@seg_4005e0__text = internal global %seg_4005e0__text_type <{ [60 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\19@\00H\C7\C1\80\19@\00H\C7\C7\10\14@\00\FF\15\E6) \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00", i32 0, [1228 x i8] c"U\B8\E81`\00H=\E81`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF\E81`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE\E81`\00UH\81\EE\E81`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF\E81`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=a+ \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05O+ \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5AWAVAUATSH\81\EC\08\01\00\00@\88\F0L\8BUXL\8B]PH\8B]HL\8Bu@L\8B}8L\8Be0L\8Bm(H\8Bu \88E\9F\8BE\18H\89u\90H\8Bu\10H\89u\88H\BE\04\1A@\00\00\00\00\00H\89}\D0@\8A}\9F@\88}\CF\89U\C8\89M\C4D\89E\C0D\89M\BC\F2\0F\11E\B0\F2\0F\11M\A8H\8B}\D0H\89}\80H\89\F7H\8Bu\80\89\85|\FF\FF\FF\B0\00L\89\9Dp\FF\FF\FFH\89\9Dh\FF\FF\FFL\89\B5`\FF\FF\FFL\89\BDX\FF\FF\FFL\89\A5P\FF\FF\FFL\89\ADH\FF\FF\FFL\89\95@\FF\FF\FF\E8\FC\FD\FF\FFH\BF\1F\1A@\00\00\00\00\00\0F\BEu\CF\89\85<\FF\FF\FF\B0\00\E8\E1\FD\FF\FF\83}\C0\00\89\858\FF\FF\FF\0F\85?\00\00\00HcE\C8H\89E\A0\83}\C4\00\0F\84\0D\00\00\00HcE\C4H\0F\AFE\A0H\89E\A0H\BFM\1A@\00\00\00\00\00H\8Bu\A0\B0\00\E8\9D\FD\FF\FF\89\854\FF\FF\FF\E9 \00\00\00H\BFs\1A@\00\00\00\00\00\8Bu\C8\8BU\C4\8BM\C0\B0\00\E8x\FD\FF\FF\89\850\FF\FF\FFH\BF\9F\1A@\00\00\00\00\00\8Bu\BC\B0\00\E8^\FD\FF\FFH\BF\C4\1A@\00\00\00\00\00\F2\0F\10E\B0\89\85,\FF\FF\FF\B0\01\E8B\FD\FF\FFH\BF\EB\1A@\00\00\00\00\00\F2\0F\10E\A8\89\85(\FF\FF\FF\B0\01\E8&\FD\FF\FFH\BF\12\1B@\00\00\00\00\00H\8Bu\10\89\85$\FF\FF\FF\B0\00\E8\0B\FD\FF\FF\83}\18\00\89\85 \FF\FF\FF\0F\8D\1C\00\00\00H\BF+\1B@\00\00\00\00\00\B0\00\E8\EA\FC\FF\FF\89\85\1C\FF\FF\FF\E9B\00\00\00\83}\18\00\0F\84\1C\00\00\00H\BFX\1B@\00\00\00\00\00\B0\00\E8\C4\FC\FF\FF\89\85\18\FF\FF\FF\E9\17\00\00\00H\BF\85\1B@\00\00\00\00\00\B0\00\E8\A8\FC\FF\FF\89\85\14\FF\FF\FF\E9\00\00\00\00H\BF\B2\1B@\00\00\00\00\00H\8Bu \B0\00\E8\88\FC\FF\FFH\BF\D7\1B@\00\00\00\00\00H\8Bu(\89\85\10\FF\FF\FF\B0\00\E8m\FC\FF\FFH\BF\FC\1B@\00\00\00\00\00\89\85\0C\FF\FF\FF\B0\00\E8V\FC\FF\FFH\BF\10\1C@\00\00\00\00\00H\8Bu0\89\85\08\FF\FF\FF\B0\00\E8;\FC\FF\FFH\BF'\1C@\00\00\00\00\00H\8Bu8\89\85\04\FF\FF\FF\B0\00\E8 \FC\FF\FFH\BF>\1C@\00\00\00\00\00H\8Bu@\89\85\00\FF\FF\FF\B0\00\E8\05\FC\FF\FFH\BFU\1C@\00\00\00\00\00H\8BuH\89\85\FC\FE\FF\FF\B0\00\E8\EA\FB\FF\FFH\BFl\1C@\00\00\00\00\00H\8BuP\89\85\F8\FE\FF\FF\B0\00\E8\CF\FB\FF\FFH\BF\83\1C@\00\00\00\00\00H\8BuX\89\85\F4\FE\FF\FF\B0\00\E8\B4\FB\FF\FFH\BF\9A\1C@\00\00\00\00\00\89\85\F0\FE\FF\FF\B0\00\E8\9D\FB\FF\FFH\BF\C3\1C@\00\00\00\00\00\89\85\EC\FE\FF\FF\B0\00\E8\86\FB\FF\FFH\BF\EA\1C@\00\00\00\00\00\89\85\E8\FE\FF\FF\B0\00\E8o\FB\FF\FFH\BF\0C\1D@\00\00\00\00\00\89\85\E4\FE\FF\FF\B0\00\E8X\FB\FF\FFH\BF!\1D@\00\00\00\00\00\89\85\E0\FE\FF\FF\B0\00\E8A\FB\FF\FFH\BF\9B\1C@\00\00\00\00\00\89\85\DC\FE\FF\FF\B0\00\E8*\FB\FF\FF\89\85\D8\FE\FF\FFH\81\C4\08\01\00\00[A\5CA]A^A_]\C3f\90UH\89\E5\0FW\C0\89}\FCHcE\FC\F2\0F\11\04\C5\002`\00]\C3\0F\1F\80\00\00\00\00UH\89\E5H\83\EC\10\89}\FC\E8 \00\00\00HcE\FC\F2\0F\11\04\C5\004`\00H\83\C4\10]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\8D}\F8\E8\1F\0E\00\00\F2\0F\10E\F8H\83\C4\10]\C3", i32 0, [3842 x i8] c"UH\89\E5H\83\EC \89}\FC\E8\D0\FF\FF\FF\F2\0F\11E\E8\F2\0F\10E\E8HcE\FC\F2\0F\5C\04\C5\004`\00\F2\0F\11E\F0\F2\0F\10E\F0HcE\FC\F2\0FX\04\C5\002`\00\F2\0F\11\04\C5\002`\00H\83\C4 ]\C3\0F\1F\00UH\89\E5\89}\FCHcE\FC\F2\0F\10\04\C5\002`\00]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5\B8\00\00\00 \89\C7\E8@\FA\FF\FF\B9\00\00\00\02\89\CFH\89\04%HF`\00\E8,\FA\FF\FF\B9\00\00\00 \89\CFH\89\04%@F`\00\E8\18\FA\FF\FF\B9\14\00\00\00\89\CFH\89\04%\88V`\00\E8\04\FA\FF\FFH\89\04%06`\00]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5H\8B\04%HF`\00H\89\C7\E8\9C\F9\FF\FFH\8B\04%@F`\00H\89\C7\E8\8C\F9\FF\FFH\8B\04%\88V`\00H\89\C7\E8|\F9\FF\FFH\8B\04%06`\00H\89\C7\E8l\F9\FF\FF]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0\83<%\006`\00\00\0F\85\DD\00\00\00\F2\0F\10\05\0E\11\00\00\F2\0F\11\04%\086`\00\F2\0F\11\04%\106`\00\F2\0F\11\04%\186`\00\F2\0F\11\04% 6`\00\C7E\A4\01\00\00\00\83}\A4\17\0F\8FB\00\00\00\F2\0F\10\05\D9\10\00\00\F2\0F\10\0D\D9\10\00\00\F2\0FY\0C%\086`\00\F2\0F\11\0C%\086`\00\F2\0FY\04%\186`\00\F2\0F\11\04%\186`\00\8BE\A4\83\C0\01\89E\A4\E9\B4\FF\FF\FF\C7E\A4\01\00\00\00\83}\A4.\0F\8FB\00\00\00\F2\0F\10\05\86\10\00\00\F2\0F\10\0D\86\10\00\00\F2\0FY\0C%\106`\00\F2\0F\11\0C%\106`\00\F2\0FY\04% 6`\00\F2\0F\11\04% 6`\00\8BE\A4\83\C0\01\89E\A4\E9\B4\FF\FF\FF\C7\04%\006`\00\01\00\00\00\F2\0F\10\04%\086`\00H\8BE\F0\F2\0FY\00\F2\0F\11E\E8\F2\0F,M\E8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\C8H\8BE\F0\F2\0F\10\00\F2\0F\10\0C%\186`\00\F2\0FYM\C8\F2\0F\5C\C1\F2\0F\11E\C0\F2\0F\10\04%\086`\00H\8BE\F8\F2\0FY\00\F2\0F\11E\E8\F2\0F,M\E8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\B8H\8BE\F8\F2\0F\10\00\F2\0F\10\0C%\186`\00\F2\0FYM\B8\F2\0F\5C\C1\F2\0F\11E\B0\F2\0F\10E\C8\F2\0FYE\B0\F2\0F\10M\C0\F2\0FYM\B8\F2\0FX\C1\F2\0F\11E\E8\F2\0F\10\04%\086`\00\F2\0FYE\E8\F2\0F,\C8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\E0\F2\0F\10E\E8\F2\0F\10\0C%\186`\00\F2\0FYM\E0\F2\0F\5C\C1\F2\0F\11E\A8\F2\0F\10\04%\186`\00\F2\0FYE\A8\F2\0F\10M\C0\F2\0FYM\B0\F2\0FX\C1\F2\0F\11E\D8\F2\0F\10\04%\106`\00\F2\0FYE\D8\F2\0F,\C8\89M\A0\8BM\A0\F2\0F*\C1\F2\0F\11E\D0\F2\0F\10E\D8\F2\0F\10\0C% 6`\00\F2\0FYM\D0\F2\0F\5C\C1H\8BE\F8\F2\0F\11\00\F2\0F\10\04%\106`\00H\8BE\F8\F2\0FY\00]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \F2\0F\11E\F8\F2\0F\11M\F0\C7E\E0\00\00 \00\C7E\E4\00\00\00\00\81}\E4\00\00\00\08\0F\8D\84\00\00\00H\8D}\F8H\8Du\F0\E8f\FD\FF\FFH\8D}\F8H\8Du\F0\F2\0F\11E\E8\E8T\FD\FF\FFH\8D}\F8H\8Du\F0\F2\0FXE\E8\F2\0F\11E\E8\E8=\FD\FF\FFH\8D}\F8H\8Du\F0\F2\0FXE\E8\F2\0F\11E\E8\E8&\FD\FF\FF\F2\0FXE\E8\F2\0F\11E\E8\8BE\E0\F2\0F*\C0\F2\0FYE\E8\F2\0F,\C0H\8B4%HF`\00Hc}\E4\89\04\BE\8BE\E4\83\C0\01\89E\E4\E9o\FF\FF\FFH\83\C4 ]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10\C7E\FC\00\00\00\00\81}\FC\00\00\00\08\0F\8DO\00\00\00H\8B\04%\88V`\00HcM\FC\8B\14\88H\8B\04%HF`\00H\8B\0C%\90V`\00H\8B4%\88V`\00Hc}\FCHc4\BED\8B\04\B1A\83\C0\FFD\89\04\B1Ic\C8\89\14\88\8BE\FC\83\C0\01\89E\FC\E9\A4\FF\FF\FF\C7E\F8\00\00\00\00\C7E\FC\01\00\00\00\81}\FC\00\00\00\08\0F\8DE\00\00\00H\8B\04%HF`\00\8BM\FC\83\E9\01Hc\D1\8B\0C\90H\8B\04%HF`\00HcU\FC;\0C\90\0F\8E\09\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\00\00\00\00\8BE\FC\83\C0\01\89E\FC\E9\AE\FF\FF\FF\83}\F8\00\0F\84-\00\00\00H\BF\80\1D@\00\00\00\00\00Hcu\F8\B0\00\E8v\F5\FF\FFH\8B<%\F01`\00\89E\F4\E8\96\F5\FF\FF\89E\F0\E9\11\00\00\00\8B\04%`0`\00\83\C0\01\89\04%`0`\00H\83\C4\10]\C3\0F\1F\80\00\00\00\00UH\89\E5H\83\EC@\B8\00\00\80\00\89}\FC\C7E\DC\0D\00\00\00\8B}\FCH\8B\0C%HF`\00HcU\FC\89<\91+E\FCH\8B\0C%HF`\00\8B}\FC\83\C7\0AHc\D7\89\04\91\C7E\F8\00\00\00\00\83}\F8\05\0F\8D4\00\00\00H\8B\04%HF`\00HcM\F8Hc\0C\8DpV`\00\8B\14\88H\8B\04%06`\00HcM\F8\89\14\88\8BE\F8\83\C0\01\89E\F8\E9\C2\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\00\04\00\00\0F\8D\1D\00\00\00HcE\F8\C7\04\85@6`\00\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\D6\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\00\00\00\08\0F\8D6\00\00\00H\8B\04%HF`\00HcM\F8\8B\14\88\8BM\DC\D3\FAHc\C2\8B\14\85@6`\00\83\C2\01\89\14\85@6`\00\8BE\F8\83\C0\01\89E\F8\E9\BD\FF\FF\FF\C7\04%PF`\00\00\00\00\00\C7E\F8\01\00\00\00\81}\F8\00\04\00\00\0F\8D9\00\00\00\8BE\F8\83\E8\01Hc\C8\8B\04\8DPF`\00\8BU\F8\83\EA\01Hc\CA\03\04\8D@6`\00HcM\F8\89\04\8DPF`\00\8BE\F8\83\C0\01\89E\F8\E9\BA\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\00\00\00\08\0F\8DR\00\00\00H\8B\04%HF`\00HcM\F8\8B\14\88\89U\D8\8BU\D8H\8B\04%\88V`\00\8Bu\D8\8BM\DC\D3\FEHc\FE\8B4\BDPF`\00A\89\F0A\83\C0\01D\89\04\BDPF`\00Hc\FE\89\14\B8\8BE\F8\83\C0\01\89E\F8\E9\A1\FF\FF\FFH\8B\04%\88V`\00H\89E\E0\C7E\F8\00\00\00\00\81}\F8\00\00\80\00\0F\8D!\00\00\00H\8B\04%@F`\00HcM\F8\C7\04\88\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\D2\FF\FF\FFH\8B\04%@F`\00H\89E\E8\C7E\F8\00\00\00\00\81}\F8\00\00\00\08\0F\8D'\00\00\00H\8BE\E8H\8BM\E0HcU\F8Hc\0C\91\8B4\88\83\C6\01\894\88\8BE\F8\83\C0\01\89E\F8\E9\CC\FF\FF\FF\C7E\F8\00\00\00\00\81}\F8\FF\FF\7F\00\0F\8D,\00\00\00H\8BE\E8HcM\F8\8B\14\88H\8BE\E8\8Bu\F8\83\C6\01Hc\CE\03\14\88\89\14\88\8BE\F8\83\C0\01\89E\F8\E9\C7\FF\FF\FF\C7E\F8\00\00\00\00\83}\F8\05\0F\8D\00\01\00\001\C0H\8B\0C%06`\00HcU\F8\8B4\91\89u\F4;E\F4\0F\8D\D0\00\00\00\81}\F4\FF\FF\FF\07\0F\8F\C3\00\00\00H\8BE\E8\8BM\F4\83\E9\01Hc\D1\8B\0C\90\89M\D4\C7E\D0\00\00\00\00\83}\F8\02\0F\8F;\00\00\00\8BE\D4HcM\F8\8B\14\8DPV`\00\03U\FC9\D0\0F\84\0C\00\00\00\C7E\D0\01\00\00\00\E9\11\00\00\00\8B\04%`0`\00\83\C0\01\89\04%`0`\00\E9;\00\00\00\8BE\D4HcM\F8\8B\14\8DPV`\00+U\FC9\D0\0F\84\0C\00\00\00\C7E\D0\01\00\00\00\E9\11\00\00\00\8B\04%`0`\00\83\C0\01\89\04%`0`\00\E9\00\00\00\00\83}\D0\01\0F\85\1A\00\00\00H\BF\AE\1D@\00\00\00\00\00\8Bu\FC\8BU\F8\B0\00\E8\C4\F1\FF\FF\89E\CC\E9\00\00\00\00\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\F6\FE\FF\FF\83}\FC\0A\0F\85\0C\00\00\00H\8BE\E8H\89\04%\90V`\00H\83\C4@]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5AWAVAUATSH\81\EC\E8\00\00\00\C7E\D4\00\00\00\00\89}\D0H\89u\C8\E8)\F7\FF\FFH\BF\E6\1D@\00\00\00\00\00H\BE\F1\1D@\00\00\00\00\00\C7E\BC\00\00\00\00\E8y\F1\FF\FFH\89E\A8H\83\F8\00\0F\84\13\00\00\00H\8B}\A8\E8\12\F1\FF\FF\C7E\BC\01\00\00\00\89E\941\FF\E8\01\F6\FF\FF\83}\BC\00\0F\84\1E\00\00\00\BF\01\00\00\00\E8\ED\F5\FF\FF\BF\02\00\00\00\E8\E3\F5\FF\FF\BF\03\00\00\00\E8\D9\F5\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\03\00\00\00\E8\E5\F5\FF\FF\C7E\C4\00\00\00\00\83}\C4\05\0F\8D:\00\00\00HcE\C4\8B\0C\85p1`\00HcE\C4\89\0C\85pV`\00HcE\C4\8B\0C\85\901`\00HcE\C4\89\0C\85PV`\00\8BE\C4\83\C0\01\89E\C4\E9\BC\FF\FF\FFH\BF\F3\1D@\00\00\00\00\00\B0\00\E8y\F0\FF\FFH\BF,\1E@\00\00\00\00\00\B9\00\00\00\08\89\CE\BAC\00\00\00\89E\90\B0\00\E8Y\F0\FF\FFH\BFE\1E@\00\00\00\00\00\BE\0A\00\00\00\89E\8C\B0\00\E8@\F0\FF\FF\83}\BC\00\89E\88\0F\84\0A\00\00\00\BF\01\00\00\00\E89\F5\FF\FF\F2\0F\10\05\E9\07\00\00\F2\0F\10\0D\E9\07\00\00\E8\F4\F8\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\01\00\00\00\E8`\F5\FF\FF\BF\01\00\00\00\E8\B6\FA\FF\FFH\BFX\1E@\00\00\00\00\00\C7\04%`0`\00\00\00\00\00\B0\00\E8\DA\EF\FF\FF1\FF\89E\84\E8\E0\F4\FF\FF\C7E\C0\01\00\00\00\83}\C0\0A\0F\8F-\00\00\00H\BFg\1E@\00\00\00\00\00\8Bu\C0\B0\00\E8\AB\EF\FF\FF\8B}\C0\89E\80\E8`\FA\FF\FF\8BE\C0\83\C0\01\89E\C0\E9\C9\FF\FF\FF1\FF\E8\EB\F4\FF\FF1\FF\E84\F5\FF\FF\F2\0F\11E\B0\83}\BC\00\0F\84\0A\00\00\00\BF\02\00\00\00\E8{\F4\FF\FF\E8\06\F9\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\02\00\00\00\E8\B2\F4\FF\FF\83}\BC\00\0F\84\0A\00\00\00\BF\03\00\00\00\E8\9E\F4\FF\FFH\BFs\1E@\00\00\00\00\00\8B4%`0`\00\B0\00\E8&\EF\FF\FF\83<%`0`\003\89\85|\FF\FF\FF\0F\84\0B\00\00\00\C7\04%`0`\00\00\00\00\00H\BF\8C\1E@\00\00\00\00\00\BEC\00\00\00\BA\00\00 \00\B9@\00\00\00E1\C0A\B9\0A\00\00\00H\B8\8F\1E@\00\00\00\00\00I\BA\9B\1E@\00\00\00\00\00I\BB\A1\1E@\00\00\00\00\00H\BB\AD\1E@\00\00\00\00\00I\BE\B1\1E@\00\00\00\00\00I\BF\B7\1E@\00\00\00\00\00I\BC\BB\1E@\00\00\00\00\00I\BD\C7\1E@\00\00\00\00\00H\89\85p\FF\FF\FFH\B8\D0\1E@\00\00\00\00\00\F2\0F\10\05T\06\00\00\F2\0F\10\0DT\06\00\00\F2\0F\10U\B0\F2\0F^M\B0\F2\0F^\C8\89\8Dl\FF\FF\FF\8B\0C%`0`\00\89\8Dh\FF\FF\FF\8B\8Dl\FF\FF\FF\0F(\C2H\89\85`\FF\FF\FFH\8B\85p\FF\FF\FFH\89\04$\8B\85h\FF\FF\FF\89D$\08L\89T$\10L\89\5C$\18H\89\5C$ L\89t$(L\89|$0L\89d$8L\89l$@L\8B\95`\FF\FF\FFL\89T$H\E8:\EF\FF\FF\83}\BC\00\0F\84E\01\00\00\BF\03\00\00\00\E8\96\F3\FF\FFH\BF\E4\1E@\00\00\00\00\00\F2\0F\11E\A0\B0\00\E8\D0\ED\FF\FFH\BF\FA\1E@\00\00\00\00\00\F2\0F\10E\A0\89\85\5C\FF\FF\FF\B0\01\E8\B4\ED\FF\FF\0FW\C0\F2\0F\10M\A0f\0F.\C8\89\85X\FF\FF\FF\0F\85\13\00\00\00\0F\8A\0D\00\00\00\F2\0F\10\05>\05\00\00\F2\0F\11E\A0\BF\01\00\00\00\E8/\F3\FF\FFH\BF\13\1F@\00\00\00\00\00\F2\0F\10\0DU\05\00\00\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F^E\A0\F2\0FY\C1\F2\0F\11E\98\F2\0F\10E\B0\F2\0F\10M\98\B0\02\E8D\ED\FF\FF1\FF\89\85T\FF\FF\FF\E8\E7\F2\FF\FFH\BF6\1F@\00\00\00\00\00\F2\0F\10\0D\0D\05\00\00\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F^E\A0\F2\0FY\C1\F2\0F\11E\98\F2\0F\10E\B0\F2\0F\10M\98\B0\02\E8\FC\EC\FF\FF\BF\02\00\00\00\89\85P\FF\FF\FF\E8\9C\F2\FF\FFH\BFY\1F@\00\00\00\00\00\F2\0F\10\0D\C2\04\00\00\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F^E\A0\F2\0FY\C1\F2\0F\11E\98\F2\0F\10E\B0\F2\0F\10M\98\B0\02\E8\B1\EC\FF\FF\89\85L\FF\FF\FF\E8\D6\F2\FF\FF1\C0H\81\C4\E8\00\00\00[A\5CA]A^A_]\C3f\90UH\89\E5H\83\EC H\8DE\E81\C9\89\CEH\89}\F8H\89\C7\E8\84\EC\FF\FF\83<%\E41`\00\00\89E\E4\0F\8D\0D\00\00\00H\8BE\E8\89\C1\89\0C%\E41`\00\F2\0F\10\05>\06\00\00H\8BE\E8Hc\0C%\E41`\00H)\C8\F2H\0F*\C8H\8BE\F0\F2H\0F*\D0\F2\0FY\C2\F2\0FX\C8H\8BE\F8\F2\0F\11\08H\83\C4 ]\C3f.\0F\1F\84\00\00\00\00\00\90AWAVI\89\D7AUATL\8D%~\14 \00UH\8D-~\14 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\97\EB\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>

@seg_401a00__rodata = internal constant %seg_401a00__rodata_type <{ [4 x i8] c"\01\00\02\00", [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", [46 x i8] c" Class           =                        %c\0A\00", [38 x i8] c" Size            =             %12ld\0A\00", [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", [37 x i8] c" Iterations      =             %12d\0A\00", [39 x i8] c" Time in seconds =             %12.2f\0A\00", [39 x i8] c" Mop/s total     =             %12.2f\0A\00", [25 x i8] c" Operation type  = %24s\0A\00", [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", [37 x i8] c" Version         =             %12s\0A\00", [37 x i8] c" Compile date    =             %12s\0A\00", [20 x i8] c"\0A Compile options:\0A\00", [23 x i8] c"    CC           = %s\0A\00", [23 x i8] c"    CLINK        = %s\0A\00", [23 x i8] c"    C_LIB        = %s\0A\00", [23 x i8] c"    C_INC        = %s\0A\00", [23 x i8] c"    CFLAGS       = %s\0A\00", [64 x i8] c"    CLINKFLAGS   = %s\0A\00\0A--------------------------------------\0A\00", [39 x i8] c" Please send all errors/feedbacks to:\0A\00", [34 x i8] c" Center for Manycore Programming\0A\00", [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", [95 x i8] c" http://aces.snu.ac.kr\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\E0?\00\00\00\A1\B0\B9\B2A\00\00@\E5\9C0\D2A\00\00\00\00\80\84.A\00\00\00\00\00\00\D4A\00\00\00\00\00\00Y@", [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", [11 x i8] c"timer.flag\00", [2 x i8] c"r\00", [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\0A\00", [25 x i8] c" Size:  %ld  (class %c)\0A\00", [19 x i8] c" Iterations:   %d\0A\00", [15 x i8] c"\0A   iteration\0A\00", [12 x i8] c"        %d\0A\00", [25 x i8] c"passed verfications: %d\0A\00", [3 x i8] c"IS\00", [12 x i8] c"keys ranked\00", [6 x i8] c"3.3.1\00", [12 x i8] c"12 Mar 2018\00", [4 x i8] c"gcc\00", [6 x i8] c"$(CC)\00", [4 x i8] c"-lm\00", [12 x i8] c"-I../common\00", [29 x i8] c"-g -Wall -O3 -mcmodel=medium\00", [22 x i8] c"\0AAdditional timers -\0A\00", [25 x i8] c" Total execution: %8.3f\0A\00", [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", [47 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00\00\00\00\00\8D\ED\B5\A0\F7\C6\B0>" }>

@seg_602e10__init_array = internal global %seg_602e10__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_4006c0_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400690___do_global_dtors_aux to i64) }>

@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_603000__got_plt = internal global %seg_603000__got_plt_type <{ [24 x i8] c" .`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @SSSSSfree to i64), i64 ptrtoint (i64 (i64)* @SSSSSfclose to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSgettimeofday to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64)* @SSSSSfflush to i64), i64 ptrtoint (i64 (i64, i64)* @SSSSSfopen to i64) }>
@passed_verification = global %passed_verification_type <{ [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_index_array = local_unnamed_addr global %S_test_index_array_type <{ [32 x i8] c"+\BD\00\00\FCB\00\00K\5C\00\00T\F4\00\00O\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@S_test_rank_array = local_unnamed_addr global %S_test_rank_array_type <{ [32 x i8] c"\00\00\00\00\12\00\00\00Z\01\00\00\95\FD\00\00\B7\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_index_array = local_unnamed_addr global %W_test_index_array_type <{ [32 x i8] c"\8Du\05\00oC\0E\00\CB\5C\0D\00\B7\B7\0D\00\19,\06\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@W_test_rank_array = local_unnamed_addr global %W_test_rank_array_type <{ [32 x i8] c"\E1\04\00\00\B2-\00\00s\DE\0F\00\B8\ED\0F\00\D2\FD\0F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_index_array = local_unnamed_addr global %A_test_index_array_type <{ [32 x i8] c"y; \00\19\1A\0A\00klQ\00\D1\957\00\88\DC@\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@A_test_rank_array = local_unnamed_addr global %A_test_rank_array_type <{ [32 x i8] c"h\00\00\00sD\00\00\18\E4\01\00\A4z~\00\A8\FE\7F\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@B_test_index_array = local_unnamed_addr global %B_test_index_array_type <{ [32 x i8] c"\8D\A3\00\00\12e\0C\00\09\DDM\00\AF3\16\01\B6\DA\99\01\00\00\00\00\00\00\00\00\00\00\00\00" }>

@B_test_rank_array = local_unnamed_addr global %B_test_rank_array_type <{ [32 x i8] c"Y\FE\FD\01\04(\00\00\0D\E7\00\00\B1\9A\F9\01c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>

@C_test_index_array = global %C_test_index_array_type <{ [32 x i8] c"\7F\06\A2\02\F9\E0Y\04w!n\04\82\A2\B9\07n\ADK\01\00\00\00\00\00\00\00\00\00\00\00\00" }>

@C_test_rank_array = global %C_test_rank_array_type <{ [32 x i8] c"\DB\EE\00\00,y\0D\002\10\04\00\1B\A4\FC\07\87q\F5\07\00\00\00\00\00\00\00\00\00\00\00\00" }>

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


; Function Attrs: noinline

define %struct.Memory* @sub_4006d0_c_print_results(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  %193 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 4), i64 %123, i64 %158, i64 %159, i64 %160, i64 %161, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175, i64 %178, i64 %181, i64 %184, i64 %187, i64 %190), !noalias !1244

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

  %243 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 31), i64 %200, i64 %208, i64 %209, i64 %210, i64 %211, i64 %213, i64 %216, i64 %219, i64 %222, i64 %225, i64 %228, i64 %231, i64 %234, i64 %237, i64 %240), !noalias !1249

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

  %307 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 389), i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %277, i64 %280, i64 %283, i64 %286, i64 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %304), !noalias !1254

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

  %326 = load i64, i64* %154, align 8, !alias.scope !1259, !noalias !1262

  %327 = load i64, i64* %153, align 8, !alias.scope !1259, !noalias !1262

  %328 = load i64, i64* %156, align 8, !alias.scope !1259, !noalias !1262

  %329 = load i64, i64* %157, align 8, !alias.scope !1259, !noalias !1262

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

  store i64 %360, i64* %3, align 8, !alias.scope !1259, !noalias !1262

  store i64 %323, i64* %17, align 8, !alias.scope !1259, !noalias !1262

  %361 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 434), i64 %321, i64 %326, i64 %327, i64 %328, i64 %329, i64 %331, i64 %334, i64 %337, i64 %340, i64 %343, i64 %346, i64 %349, i64 %352, i64 %355, i64 %358), !noalias !1259

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

  %374 = load i64, i64* %154, align 8, !alias.scope !1264, !noalias !1267

  %375 = load i64, i64* %153, align 8, !alias.scope !1264, !noalias !1267

  %376 = load i64, i64* %156, align 8, !alias.scope !1264, !noalias !1267

  %377 = load i64, i64* %157, align 8, !alias.scope !1264, !noalias !1267

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

  store i64 %408, i64* %3, align 8, !alias.scope !1264, !noalias !1267

  store i64 %371, i64* %17, align 8, !alias.scope !1264, !noalias !1267

  %409 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 471), i64 %366, i64 %374, i64 %375, i64 %376, i64 %377, i64 %379, i64 %382, i64 %385, i64 %388, i64 %391, i64 %394, i64 %397, i64 %400, i64 %403, i64 %406), !noalias !1264

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

  %419 = load i64, i64* %155, align 8, !alias.scope !1269, !noalias !1272

  %420 = load i64, i64* %154, align 8, !alias.scope !1269, !noalias !1272

  %421 = load i64, i64* %153, align 8, !alias.scope !1269, !noalias !1272

  %422 = load i64, i64* %156, align 8, !alias.scope !1269, !noalias !1272

  %423 = load i64, i64* %157, align 8, !alias.scope !1269, !noalias !1272

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

  store i64 %454, i64* %3, align 8, !alias.scope !1269, !noalias !1272

  store i64 %416, i64* %17, align 8, !alias.scope !1269, !noalias !1272

  %455 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 508), i64 %419, i64 %420, i64 %421, i64 %422, i64 %423, i64 %425, i64 %428, i64 %431, i64 %434, i64 %437, i64 %440, i64 %443, i64 %446, i64 %449, i64 %452), !noalias !1269

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

  %468 = load i64, i64* %154, align 8, !alias.scope !1274, !noalias !1277

  %469 = load i64, i64* %153, align 8, !alias.scope !1274, !noalias !1277

  %470 = load i64, i64* %156, align 8, !alias.scope !1274, !noalias !1277

  %471 = load i64, i64* %157, align 8, !alias.scope !1274, !noalias !1277

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

  store i64 %502, i64* %3, align 8, !alias.scope !1274, !noalias !1277

  store i64 %465, i64* %17, align 8, !alias.scope !1274, !noalias !1277

  %503 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 528), i64 %460, i64 %468, i64 %469, i64 %470, i64 %471, i64 %473, i64 %476, i64 %479, i64 %482, i64 %485, i64 %488, i64 %491, i64 %494, i64 %497, i64 %500), !noalias !1274

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

  %516 = load i64, i64* %154, align 8, !alias.scope !1279, !noalias !1282

  %517 = load i64, i64* %153, align 8, !alias.scope !1279, !noalias !1282

  %518 = load i64, i64* %156, align 8, !alias.scope !1279, !noalias !1282

  %519 = load i64, i64* %157, align 8, !alias.scope !1279, !noalias !1282

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

  store i64 %550, i64* %3, align 8, !alias.scope !1279, !noalias !1282

  store i64 %513, i64* %17, align 8, !alias.scope !1279, !noalias !1282

  %551 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 551), i64 %508, i64 %516, i64 %517, i64 %518, i64 %519, i64 %521, i64 %524, i64 %527, i64 %530, i64 %533, i64 %536, i64 %539, i64 %542, i64 %545, i64 %548), !noalias !1279

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

  %564 = load i64, i64* %154, align 8, !alias.scope !1284, !noalias !1287

  %565 = load i64, i64* %153, align 8, !alias.scope !1284, !noalias !1287

  %566 = load i64, i64* %156, align 8, !alias.scope !1284, !noalias !1287

  %567 = load i64, i64* %157, align 8, !alias.scope !1284, !noalias !1287

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

  store i64 %598, i64* %3, align 8, !alias.scope !1284, !noalias !1287

  store i64 %561, i64* %17, align 8, !alias.scope !1284, !noalias !1287

  %599 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 574), i64 %556, i64 %564, i64 %565, i64 %566, i64 %567, i64 %569, i64 %572, i64 %575, i64 %578, i64 %581, i64 %584, i64 %587, i64 %590, i64 %593, i64 %596), !noalias !1284

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

  %612 = load i64, i64* %154, align 8, !alias.scope !1289, !noalias !1292

  %613 = load i64, i64* %153, align 8, !alias.scope !1289, !noalias !1292

  %614 = load i64, i64* %156, align 8, !alias.scope !1289, !noalias !1292

  %615 = load i64, i64* %157, align 8, !alias.scope !1289, !noalias !1292

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

  store i64 %646, i64* %3, align 8, !alias.scope !1289, !noalias !1292

  store i64 %609, i64* %17, align 8, !alias.scope !1289, !noalias !1292

  %647 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 597), i64 %604, i64 %612, i64 %613, i64 %614, i64 %615, i64 %617, i64 %620, i64 %623, i64 %626, i64 %629, i64 %632, i64 %635, i64 %638, i64 %641, i64 %644), !noalias !1289

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

  %660 = load i64, i64* %154, align 8, !alias.scope !1294, !noalias !1297

  %661 = load i64, i64* %153, align 8, !alias.scope !1294, !noalias !1297

  %662 = load i64, i64* %156, align 8, !alias.scope !1294, !noalias !1297

  %663 = load i64, i64* %157, align 8, !alias.scope !1294, !noalias !1297

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

  store i64 %694, i64* %3, align 8, !alias.scope !1294, !noalias !1297

  store i64 %657, i64* %17, align 8, !alias.scope !1294, !noalias !1297

  %695 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 620), i64 %652, i64 %660, i64 %661, i64 %662, i64 %663, i64 %665, i64 %668, i64 %671, i64 %674, i64 %677, i64 %680, i64 %683, i64 %686, i64 %689, i64 %692), !noalias !1294

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

  %708 = load i64, i64* %154, align 8, !alias.scope !1299, !noalias !1302

  %709 = load i64, i64* %153, align 8, !alias.scope !1299, !noalias !1302

  %710 = load i64, i64* %156, align 8, !alias.scope !1299, !noalias !1302

  %711 = load i64, i64* %157, align 8, !alias.scope !1299, !noalias !1302

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

  store i64 %742, i64* %3, align 8, !alias.scope !1299, !noalias !1302

  store i64 %705, i64* %17, align 8, !alias.scope !1299, !noalias !1302

  %743 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 643), i64 %700, i64 %708, i64 %709, i64 %710, i64 %711, i64 %713, i64 %716, i64 %719, i64 %722, i64 %725, i64 %728, i64 %731, i64 %734, i64 %737, i64 %740), !noalias !1299

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

  %753 = load i64, i64* %155, align 8, !alias.scope !1304, !noalias !1307

  %754 = load i64, i64* %154, align 8, !alias.scope !1304, !noalias !1307

  %755 = load i64, i64* %153, align 8, !alias.scope !1304, !noalias !1307

  %756 = load i64, i64* %156, align 8, !alias.scope !1304, !noalias !1307

  %757 = load i64, i64* %157, align 8, !alias.scope !1304, !noalias !1307

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

  store i64 %788, i64* %3, align 8, !alias.scope !1304, !noalias !1307

  store i64 %750, i64* %17, align 8, !alias.scope !1304, !noalias !1307

  %789 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 666), i64 %753, i64 %754, i64 %755, i64 %756, i64 %757, i64 %759, i64 %762, i64 %765, i64 %768, i64 %771, i64 %774, i64 %777, i64 %780, i64 %783, i64 %786), !noalias !1304

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

  %799 = load i64, i64* %155, align 8, !alias.scope !1309, !noalias !1312

  %800 = load i64, i64* %154, align 8, !alias.scope !1309, !noalias !1312

  %801 = load i64, i64* %153, align 8, !alias.scope !1309, !noalias !1312

  %802 = load i64, i64* %156, align 8, !alias.scope !1309, !noalias !1312

  %803 = load i64, i64* %157, align 8, !alias.scope !1309, !noalias !1312

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

  store i64 %834, i64* %3, align 8, !alias.scope !1309, !noalias !1312

  store i64 %796, i64* %17, align 8, !alias.scope !1309, !noalias !1312

  %835 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 707), i64 %799, i64 %800, i64 %801, i64 %802, i64 %803, i64 %805, i64 %808, i64 %811, i64 %814, i64 %817, i64 %820, i64 %823, i64 %826, i64 %829, i64 %832), !noalias !1309

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

  %845 = load i64, i64* %155, align 8, !alias.scope !1314, !noalias !1317

  %846 = load i64, i64* %154, align 8, !alias.scope !1314, !noalias !1317

  %847 = load i64, i64* %153, align 8, !alias.scope !1314, !noalias !1317

  %848 = load i64, i64* %156, align 8, !alias.scope !1314, !noalias !1317

  %849 = load i64, i64* %157, align 8, !alias.scope !1314, !noalias !1317

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

  store i64 %880, i64* %3, align 8, !alias.scope !1314, !noalias !1317

  store i64 %842, i64* %17, align 8, !alias.scope !1314, !noalias !1317

  %881 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 746), i64 %845, i64 %846, i64 %847, i64 %848, i64 %849, i64 %851, i64 %854, i64 %857, i64 %860, i64 %863, i64 %866, i64 %869, i64 %872, i64 %875, i64 %878), !noalias !1314

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

  %891 = load i64, i64* %155, align 8, !alias.scope !1319, !noalias !1322

  %892 = load i64, i64* %154, align 8, !alias.scope !1319, !noalias !1322

  %893 = load i64, i64* %153, align 8, !alias.scope !1319, !noalias !1322

  %894 = load i64, i64* %156, align 8, !alias.scope !1319, !noalias !1322

  %895 = load i64, i64* %157, align 8, !alias.scope !1319, !noalias !1322

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

  store i64 %926, i64* %3, align 8, !alias.scope !1319, !noalias !1322

  store i64 %888, i64* %17, align 8, !alias.scope !1319, !noalias !1322

  %927 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 780), i64 %891, i64 %892, i64 %893, i64 %894, i64 %895, i64 %897, i64 %900, i64 %903, i64 %906, i64 %909, i64 %912, i64 %915, i64 %918, i64 %921, i64 %924), !noalias !1319

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

  %937 = load i64, i64* %155, align 8, !alias.scope !1324, !noalias !1327

  %938 = load i64, i64* %154, align 8, !alias.scope !1324, !noalias !1327

  %939 = load i64, i64* %153, align 8, !alias.scope !1324, !noalias !1327

  %940 = load i64, i64* %156, align 8, !alias.scope !1324, !noalias !1327

  %941 = load i64, i64* %157, align 8, !alias.scope !1324, !noalias !1327

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

  store i64 %972, i64* %3, align 8, !alias.scope !1324, !noalias !1327

  store i64 %934, i64* %17, align 8, !alias.scope !1324, !noalias !1327

  %973 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 801), i64 %937, i64 %938, i64 %939, i64 %940, i64 %941, i64 %943, i64 %946, i64 %949, i64 %952, i64 %955, i64 %958, i64 %961, i64 %964, i64 %967, i64 %970), !noalias !1324

  %974 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 667), i64* %16, align 8, !tbaa !1240

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

  %983 = load i64, i64* %155, align 8, !alias.scope !1329, !noalias !1332

  %984 = load i64, i64* %154, align 8, !alias.scope !1329, !noalias !1332

  %985 = load i64, i64* %153, align 8, !alias.scope !1329, !noalias !1332

  %986 = load i64, i64* %156, align 8, !alias.scope !1329, !noalias !1332

  %987 = load i64, i64* %157, align 8, !alias.scope !1329, !noalias !1332

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

  store i64 %980, i64* %17, align 8, !alias.scope !1329, !noalias !1332

  %1017 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 667), i64 %983, i64 %984, i64 %985, i64 %986, i64 %987, i64 %989, i64 %992, i64 %995, i64 %998, i64 %1001, i64 %1004, i64 %1007, i64 %1010, i64 %1013, i64 %1016), !noalias !1329

  store i64 %1017, i64* %152, align 8, !alias.scope !1329, !noalias !1332

  %1018 = load i64, i64* %18, align 8

  %1019 = add i64 %1018, -296

  %1020 = trunc i64 %1017 to i32

  %1021 = inttoptr i64 %1019 to i32*

  store i32 %1020, i32* %1021

  %1022 = load i64, i64* %17, align 8

  %1023 = add i64 %1022, 264

  %1024 = icmp ugt i64 %1022, -265

  %1025 = zext i1 %1024 to i8

  store i8 %1025, i8* %47, align 1, !tbaa !1334

  %1026 = trunc i64 %1023 to i32

  %1027 = and i32 %1026, 255

  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027) #9

  %1029 = trunc i32 %1028 to i8

  %1030 = and i8 %1029, 1

  %1031 = xor i8 %1030, 1

  store i8 %1031, i8* %48, align 1, !tbaa !1348

  %1032 = xor i64 %1023, %1022

  %1033 = lshr i64 %1032, 4

  %1034 = trunc i64 %1033 to i8

  %1035 = and i8 %1034, 1

  store i8 %1035, i8* %49, align 1, !tbaa !1349

  %1036 = icmp eq i64 %1023, 0

  %1037 = zext i1 %1036 to i8

  store i8 %1037, i8* %50, align 1, !tbaa !1350

  %1038 = lshr i64 %1023, 63

  %1039 = trunc i64 %1038 to i8

  store i8 %1039, i8* %51, align 1, !tbaa !1351

  %1040 = lshr i64 %1022, 63

  %1041 = xor i64 %1038, %1040

  %1042 = add nuw nsw i64 %1041, %1038

  %1043 = icmp eq i64 %1042, 2

  %1044 = zext i1 %1043 to i8

  store i8 %1044, i8* %52, align 1, !tbaa !1352

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

  %1079 = load i64, i64* %154, align 8, !alias.scope !1353, !noalias !1356

  %1080 = load i64, i64* %153, align 8, !alias.scope !1353, !noalias !1356

  %1081 = load i64, i64* %156, align 8, !alias.scope !1353, !noalias !1356

  %1082 = load i64, i64* %157, align 8, !alias.scope !1353, !noalias !1356

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

  store i64 %1113, i64* %3, align 8, !alias.scope !1353, !noalias !1356

  store i64 %1076, i64* %17, align 8, !alias.scope !1353, !noalias !1356

  %1114 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 77), i64 %1074, i64 %1079, i64 %1080, i64 %1081, i64 %1082, i64 %1084, i64 %1087, i64 %1090, i64 %1093, i64 %1096, i64 %1099, i64 %1102, i64 %1105, i64 %1108, i64 %1111), !noalias !1353

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

  %1125 = load i64, i64* %155, align 8, !alias.scope !1358, !noalias !1361

  %1126 = load i64, i64* %154, align 8, !alias.scope !1358, !noalias !1361

  %1127 = load i64, i64* %153, align 8, !alias.scope !1358, !noalias !1361

  %1128 = load i64, i64* %156, align 8, !alias.scope !1358, !noalias !1361

  %1129 = load i64, i64* %157, align 8, !alias.scope !1358, !noalias !1361

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

  store i64 %1160, i64* %3, align 8, !alias.scope !1358, !noalias !1361

  store i64 %1122, i64* %17, align 8, !alias.scope !1358, !noalias !1361

  %1161 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 344), i64 %1125, i64 %1126, i64 %1127, i64 %1128, i64 %1129, i64 %1131, i64 %1134, i64 %1137, i64 %1140, i64 %1143, i64 %1146, i64 %1149, i64 %1152, i64 %1155, i64 %1158), !noalias !1358

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

  %1172 = load i64, i64* %155, align 8, !alias.scope !1363, !noalias !1366

  %1173 = load i64, i64* %154, align 8, !alias.scope !1363, !noalias !1366

  %1174 = load i64, i64* %153, align 8, !alias.scope !1363, !noalias !1366

  %1175 = load i64, i64* %156, align 8, !alias.scope !1363, !noalias !1366

  %1176 = load i64, i64* %157, align 8, !alias.scope !1363, !noalias !1366

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

  store i64 %1207, i64* %3, align 8, !alias.scope !1363, !noalias !1366

  store i64 %1169, i64* %17, align 8, !alias.scope !1363, !noalias !1366

  %1208 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 299), i64 %1172, i64 %1173, i64 %1174, i64 %1175, i64 %1176, i64 %1178, i64 %1181, i64 %1184, i64 %1187, i64 %1190, i64 %1193, i64 %1196, i64 %1199, i64 %1202, i64 %1205), !noalias !1363

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

  %1226 = load i64, i64* %154, align 8, !alias.scope !1368, !noalias !1371

  %1227 = load i64, i64* %153, align 8, !alias.scope !1368, !noalias !1371

  %1228 = load i64, i64* %156, align 8, !alias.scope !1368, !noalias !1371

  %1229 = load i64, i64* %157, align 8, !alias.scope !1368, !noalias !1371

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

  store i64 %1260, i64* %3, align 8, !alias.scope !1368, !noalias !1371

  store i64 %1223, i64* %17, align 8, !alias.scope !1368, !noalias !1371

  %1261 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 159), i64 %1221, i64 %1226, i64 %1227, i64 %1228, i64 %1229, i64 %1231, i64 %1234, i64 %1237, i64 %1240, i64 %1243, i64 %1246, i64 %1249, i64 %1252, i64 %1255, i64 %1258), !noalias !1368

  %1262 = load i64, i64* %3, align 8

  %1263 = load i64, i64* %18, align 8

  %1264 = add i64 %1263, -80

  %1265 = inttoptr i64 %1264 to double*

  %1266 = load double, double* %1265

  store double %1266, double* %111, align 1, !tbaa !1373

  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %1268 = bitcast i64* %1267 to double*

  store double 0.000000e+00, double* %1268, align 1, !tbaa !1373

  %1269 = add i64 %1263, -212

  %1270 = trunc i64 %1261 to i32

  %1271 = inttoptr i64 %1269 to i32*

  store i32 %1270, i32* %1271

  %1272 = add i64 %1262, 28

  %1273 = load i64, i64* %17, align 8, !tbaa !1240

  %1274 = add i64 %1273, -8

  %1275 = inttoptr i64 %1274 to i64*

  store i64 %1272, i64* %1275

  %1276 = load i64, i64* %155, align 8, !alias.scope !1375, !noalias !1378

  %1277 = load i64, i64* %154, align 8, !alias.scope !1375, !noalias !1378

  %1278 = load i64, i64* %153, align 8, !alias.scope !1375, !noalias !1378

  %1279 = load i64, i64* %156, align 8, !alias.scope !1375, !noalias !1378

  %1280 = load i64, i64* %157, align 8, !alias.scope !1375, !noalias !1378

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

  store i64 %1311, i64* %3, align 8, !alias.scope !1375, !noalias !1378

  store i64 %1273, i64* %17, align 8, !alias.scope !1375, !noalias !1378

  %1312 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 196), i64 %1276, i64 %1277, i64 %1278, i64 %1279, i64 %1280, i64 %1282, i64 %1285, i64 %1288, i64 %1291, i64 %1294, i64 %1297, i64 %1300, i64 %1303, i64 %1306, i64 %1309), !noalias !1375

  %1313 = load i64, i64* %3, align 8

  %1314 = load i64, i64* %18, align 8

  %1315 = add i64 %1314, -88

  %1316 = inttoptr i64 %1315 to double*

  %1317 = load double, double* %1316

  store double %1317, double* %111, align 1, !tbaa !1373

  store double 0.000000e+00, double* %1268, align 1, !tbaa !1373

  %1318 = add i64 %1314, -216

  %1319 = trunc i64 %1312 to i32

  %1320 = inttoptr i64 %1318 to i32*

  store i32 %1319, i32* %1320

  %1321 = add i64 %1313, 28

  %1322 = load i64, i64* %17, align 8, !tbaa !1240

  %1323 = add i64 %1322, -8

  %1324 = inttoptr i64 %1323 to i64*

  store i64 %1321, i64* %1324

  %1325 = load i64, i64* %155, align 8, !alias.scope !1380, !noalias !1383

  %1326 = load i64, i64* %154, align 8, !alias.scope !1380, !noalias !1383

  %1327 = load i64, i64* %153, align 8, !alias.scope !1380, !noalias !1383

  %1328 = load i64, i64* %156, align 8, !alias.scope !1380, !noalias !1383

  %1329 = load i64, i64* %157, align 8, !alias.scope !1380, !noalias !1383

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

  store i64 %1360, i64* %3, align 8, !alias.scope !1380, !noalias !1383

  store i64 %1322, i64* %17, align 8, !alias.scope !1380, !noalias !1383

  %1361 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 235), i64 %1325, i64 %1326, i64 %1327, i64 %1328, i64 %1329, i64 %1331, i64 %1334, i64 %1337, i64 %1340, i64 %1343, i64 %1346, i64 %1349, i64 %1352, i64 %1355, i64 %1358), !noalias !1380

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

  %1374 = load i64, i64* %154, align 8, !alias.scope !1385, !noalias !1388

  %1375 = load i64, i64* %153, align 8, !alias.scope !1385, !noalias !1388

  %1376 = load i64, i64* %156, align 8, !alias.scope !1385, !noalias !1388

  %1377 = load i64, i64* %157, align 8, !alias.scope !1385, !noalias !1388

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

  store i64 %1408, i64* %3, align 8, !alias.scope !1385, !noalias !1388

  store i64 %1371, i64* %17, align 8, !alias.scope !1385, !noalias !1388

  %1409 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 274), i64 %1366, i64 %1374, i64 %1375, i64 %1376, i64 %1377, i64 %1379, i64 %1382, i64 %1385, i64 %1388, i64 %1391, i64 %1394, i64 %1397, i64 %1400, i64 %1403, i64 %1406), !noalias !1385

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

  %1440 = load i64, i64* %156, align 8, !alias.scope !1390, !noalias !1393

  %1441 = load i64, i64* %157, align 8, !alias.scope !1390, !noalias !1393

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

  store i64 %1472, i64* %3, align 8, !alias.scope !1390, !noalias !1393

  store i64 %1437, i64* %17, align 8, !alias.scope !1390, !noalias !1393

  %1473 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 115), i64 %1428, i64 %1432, i64 %1435, i64 %1440, i64 %1441, i64 %1443, i64 %1446, i64 %1449, i64 %1452, i64 %1455, i64 %1458, i64 %1461, i64 %1464, i64 %1467, i64 %1470), !noalias !1390

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



; Function Attrs: noinline

define %struct.Memory* @sub_400b60_allocate_arrays(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  store i64 %10, i64* %6, align 8, !alias.scope !1395, !noalias !1398

  %18 = tail call i64 @malloc(i64 536870912)

  store i64 %18, i64* bitcast (%key_array_type* @key_array to i64*)

  %19 = add i64 %17, 20

  %20 = load i64, i64* %6, align 8, !tbaa !1240

  %21 = add i64 %20, -8

  %22 = inttoptr i64 %21 to i64*

  store i64 %19, i64* %22

  %23 = inttoptr i64 %21 to i64*

  %24 = load i64, i64* %23

  store i64 %20, i64* %6, align 8, !alias.scope !1400, !noalias !1403

  %25 = tail call i64 @malloc(i64 33554432)

  store i64 %25, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %26 = add i64 %24, 20

  %27 = load i64, i64* %6, align 8, !tbaa !1240

  %28 = add i64 %27, -8

  %29 = inttoptr i64 %28 to i64*

  store i64 %26, i64* %29

  %30 = inttoptr i64 %28 to i64*

  %31 = load i64, i64* %30

  store i64 %27, i64* %6, align 8, !alias.scope !1405, !noalias !1408

  %32 = tail call i64 @malloc(i64 536870912)

  store i64 20, i64* %4, align 8, !tbaa !1240

  store i64 20, i64* %5, align 8, !tbaa !1240

  store i64 %32, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %33 = add i64 %31, 20

  %34 = load i64, i64* %6, align 8, !tbaa !1240

  %35 = add i64 %34, -8

  %36 = inttoptr i64 %35 to i64*

  store i64 %33, i64* %36

  %37 = tail call i64 @malloc(i64 20)

  store i64 %37, i64* %15, align 8, !alias.scope !1410, !noalias !1413

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



; Function Attrs: noinline

define %struct.Memory* @sub_4005e0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  store i8 0, i8* %13, align 1, !tbaa !1334

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 240

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %14, align 1, !tbaa !1348

  %31 = icmp eq i64 %24, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %15, align 1, !tbaa !1350

  %33 = lshr i64 %21, 63

  %34 = trunc i64 %33 to i8

  store i8 %34, i8* %16, align 1, !tbaa !1351

  store i8 0, i8* %17, align 1, !tbaa !1352

  store i8 0, i8* %18, align 1, !tbaa !1349

  %35 = load i64, i64* %4, align 8

  %36 = add i64 %24, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = add i64 %24, -16

  %39 = inttoptr i64 %38 to i64*

  store i64 %36, i64* %39

  store i64 ptrtoint (i64 ()* @callback_sub_4019f0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240

  store i64 ptrtoint (i64 ()* @callback_sub_401980___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240

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

  store i64 %38, i64* %9, align 8, !alias.scope !1415, !noalias !1418

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_401980___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_4019f0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1415

  store i64 %50, i64* %4, align 8, !alias.scope !1415, !noalias !1418

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400b40_timer_read(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store double %23, double* %24, align 1, !tbaa !1373

  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %26 = bitcast i64* %25 to double*

  store double 0.000000e+00, double* %26, align 1, !tbaa !1373

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

define %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store i8 0, i8* %11, align 1, !tbaa !1334

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 1, i8* %12, align 1, !tbaa !1348

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1349

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 1, i8* %14, align 1, !tbaa !1350

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 0, i8* %15, align 1, !tbaa !1351

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %16, align 1, !tbaa !1352

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

define %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

define %struct.Memory* @sub_401900_wtime_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_401900:

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

  store i64 %17, i64* %8, align 8, !alias.scope !1420, !noalias !1423

  %31 = tail call i64 @gettimeofday(i64 %24, i64 0), !noalias !1420

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

  br i1 %39, label %block_40192d, label %block_40193a



block_40193a:                                     ; preds = %block_40192d, %block_401900

  %41 = phi %struct.Memory* [ %2, %block_40192d ], [ %2, %block_401900 ]

  %42 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1408) to double*)

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

  store double %55, double* %56, align 1, !tbaa !1373

  %57 = fmul double %55, %42

  store double %57, double* %43, align 1, !tbaa !1373

  store i64 0, i64* %44, align 1, !tbaa !1373

  %58 = fadd double %50, %57

  store double %58, double* %51, align 1, !tbaa !1373

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

  store i8 %66, i8* %18, align 1, !tbaa !1334

  %67 = trunc i64 %64 to i32

  %68 = and i32 %67, 255

  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #9

  %70 = trunc i32 %69 to i8

  %71 = and i8 %70, 1

  %72 = xor i8 %71, 1

  store i8 %72, i8* %19, align 1, !tbaa !1348

  %73 = xor i64 %64, %63

  %74 = lshr i64 %73, 4

  %75 = trunc i64 %74 to i8

  %76 = and i8 %75, 1

  store i8 %76, i8* %20, align 1, !tbaa !1349

  %77 = icmp eq i64 %64, 0

  %78 = zext i1 %77 to i8

  store i8 %78, i8* %21, align 1, !tbaa !1350

  %79 = lshr i64 %64, 63

  %80 = trunc i64 %79 to i8

  store i8 %80, i8* %22, align 1, !tbaa !1351

  %81 = lshr i64 %63, 63

  %82 = xor i64 %79, %81

  %83 = add nuw nsw i64 %82, %79

  %84 = icmp eq i64 %83, 2

  %85 = zext i1 %84 to i8

  store i8 %85, i8* %23, align 1, !tbaa !1352

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



block_40192d:                                     ; preds = %block_401900

  %92 = inttoptr i64 %40 to i64*

  %93 = load i64, i64* %92

  %94 = trunc i64 %93 to i32

  store i32 %94, i32* inttoptr (i64 add (i64 ptrtoint (%D_test_rank_array_type* @D_test_rank_array to i64), i64 20) to i32*)

  br label %block_40193a

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400c10_randlc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store i8 0, i8* %23, align 1, !tbaa !1334

  %24 = and i32 %22, 255

  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9

  %26 = trunc i32 %25 to i8

  %27 = and i8 %26, 1

  %28 = xor i8 %27, 1

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %28, i8* %29, align 1, !tbaa !1348

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %30, align 1, !tbaa !1349

  %31 = icmp eq i32 %22, 0

  %32 = zext i1 %31 to i8

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %32, i8* %33, align 1, !tbaa !1350

  %34 = lshr i32 %22, 31

  %35 = trunc i32 %34 to i8

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %35, i8* %36, align 1, !tbaa !1351

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %37, align 1, !tbaa !1352

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

  %62 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 832) to double*)

  %63 = bitcast [32 x %union.VectorReg]* %10 to double*

  store double %62, double* %63, align 1, !tbaa !1373

  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %65 = bitcast i64* %64 to double*

  store double 0.000000e+00, double* %65, align 1, !tbaa !1373

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

  %71 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 840) to double*)

  %72 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 848) to double*)

  %73 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %74 = fmul double %72, %73

  store double %74, double* %69, align 1, !tbaa !1373

  store i64 0, i64* %70, align 1, !tbaa !1373

  store double %74, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1048) to double*)

  %75 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1064) to double*)

  %76 = fmul double %71, %75

  store double %76, double* %63, align 1, !tbaa !1373

  store i64 0, i64* %64, align 1, !tbaa !1373

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

  store i8 %85, i8* %23, align 1, !tbaa !1334

  store i8 %90, i8* %29, align 1, !tbaa !1348

  store i8 %94, i8* %30, align 1, !tbaa !1349

  store i8 0, i8* %33, align 1, !tbaa !1350

  store i8 %52, i8* %36, align 1, !tbaa !1351

  store i8 %95, i8* %37, align 1, !tbaa !1352

  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1040) to i32*)

  br label %block_400d07



block_400cba:                                     ; preds = %block_400cb0

  %96 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 840) to double*)

  %97 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 848) to double*)

  %98 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  %99 = fmul double %97, %98

  store double %99, double* %69, align 1, !tbaa !1373

  store i64 0, i64* %70, align 1, !tbaa !1373

  store double %99, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  %100 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1072) to double*)

  %101 = fmul double %96, %100

  store double %101, double* %63, align 1, !tbaa !1373

  store i64 0, i64* %64, align 1, !tbaa !1373

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

  store double 0.000000e+00, double* %113, align 1, !tbaa !1373

  %261 = inttoptr i64 %255 to double*

  %262 = load double, double* %261

  %263 = fmul double %260, %262

  store double %263, double* %108, align 1, !tbaa !1373

  store i64 0, i64* %107, align 1, !tbaa !1373

  %264 = fsub double %259, %263

  %265 = add i64 %249, -8

  %266 = inttoptr i64 %265 to i64*

  %267 = load i64, i64* %266

  %268 = inttoptr i64 %267 to double*

  store double %264, double* %268

  %269 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 1056) to double*)

  store double 0.000000e+00, double* %109, align 1, !tbaa !1373

  %270 = inttoptr i64 %265 to i64*

  %271 = load i64, i64* %270

  store i64 %271, i64* %4, align 8, !tbaa !1240

  %272 = inttoptr i64 %271 to double*

  %273 = load double, double* %272

  %274 = fmul double %269, %273

  store double %274, double* %111, align 1, !tbaa !1373

  store i64 0, i64* %110, align 1, !tbaa !1373

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

define %struct.Memory* @sub_401980___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_401980:

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

  %47 = add i64 %1, -5176

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

  br i1 %54, label %block_4019d6, label %block_4019b6



block_4019d6.loopexit:                            ; preds = %block_4019c0

  br label %block_4019d6



block_4019d6:                                     ; preds = %block_4019d6.loopexit, %block_401980

  %57 = phi %struct.Memory* [ %51, %block_401980 ], [ %119, %block_4019d6.loopexit ]

  %58 = load i64, i64* %12, align 8

  %59 = add i64 %58, 8

  %60 = icmp ugt i64 %58, -9

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %41, align 1, !tbaa !1334

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #9

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %42, align 1, !tbaa !1348

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %43, align 1, !tbaa !1349

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %44, align 1, !tbaa !1350

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %45, align 1, !tbaa !1351

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %46, align 1, !tbaa !1352

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



block_4019b6:                                     ; preds = %block_401980

  store i64 0, i64* %8, align 8, !tbaa !1240

  store i8 0, i8* %41, align 1, !tbaa !1334

  store i8 1, i8* %42, align 1, !tbaa !1348

  store i8 1, i8* %44, align 1, !tbaa !1350

  store i8 0, i8* %45, align 1, !tbaa !1351

  store i8 0, i8* %46, align 1, !tbaa !1352

  store i8 0, i8* %43, align 1, !tbaa !1349

  %102 = add i64 %56, 10

  br label %block_4019c0



block_4019c0:                                     ; preds = %block_4019c0, %block_4019b6

  %103 = phi i64 [ 0, %block_4019b6 ], [ %122, %block_4019c0 ]

  %104 = phi i64 [ %102, %block_4019b6 ], [ %150, %block_4019c0 ]

  %105 = phi %struct.Memory* [ %51, %block_4019b6 ], [ %119, %block_4019c0 ]

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

  store i8 %127, i8* %41, align 1, !tbaa !1334

  %128 = trunc i64 %125 to i32

  %129 = and i32 %128, 255

  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #9

  %131 = trunc i32 %130 to i8

  %132 = and i8 %131, 1

  %133 = xor i8 %132, 1

  store i8 %133, i8* %42, align 1, !tbaa !1348

  %134 = xor i64 %122, %124

  %135 = xor i64 %134, %125

  %136 = lshr i64 %135, 4

  %137 = trunc i64 %136 to i8

  %138 = and i8 %137, 1

  store i8 %138, i8* %43, align 1, !tbaa !1349

  %139 = icmp eq i64 %125, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %44, align 1, !tbaa !1350

  %141 = lshr i64 %125, 63

  %142 = trunc i64 %141 to i8

  store i8 %142, i8* %45, align 1, !tbaa !1351

  %143 = lshr i64 %124, 63

  %144 = xor i64 %123, %143

  %145 = xor i64 %141, %143

  %146 = add nuw nsw i64 %145, %144

  %147 = icmp eq i64 %146, 2

  %148 = zext i1 %147 to i8

  store i8 %148, i8* %46, align 1, !tbaa !1352

  %149 = select i1 %139, i64 9, i64 -13

  %150 = add i64 %121, %149

  br i1 %139, label %block_4019d6.loopexit, label %block_4019c0

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400e70_create_seq(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store i32 2097152, i32* %31

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

  store i8 %38, i8* %16, align 1, !tbaa !1334

  %39 = trunc i64 %36 to i32

  %40 = and i32 %39, 255

  %41 = tail call i32 @llvm.ctpop.i32(i32 %40) #9

  %42 = trunc i32 %41 to i8

  %43 = and i8 %42, 1

  %44 = xor i8 %43, 1

  store i8 %44, i8* %17, align 1, !tbaa !1348

  %45 = xor i64 %36, %35

  %46 = lshr i64 %45, 4

  %47 = trunc i64 %46 to i8

  %48 = and i8 %47, 1

  store i8 %48, i8* %18, align 1, !tbaa !1349

  %49 = icmp eq i64 %36, 0

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %19, align 1, !tbaa !1350

  %51 = lshr i64 %36, 63

  %52 = trunc i64 %51 to i8

  store i8 %52, i8* %20, align 1, !tbaa !1351

  %53 = lshr i64 %35, 63

  %54 = xor i64 %51, %53

  %55 = add nuw nsw i64 %54, %51

  %56 = icmp eq i64 %55, 2

  %57 = zext i1 %56 to i8

  store i8 %57, i8* %21, align 1, !tbaa !1352

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

  store double %93, double* %23, align 1, !tbaa !1373

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

  store double %109, double* %23, align 1, !tbaa !1373

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

  store double %131, double* %23, align 1, !tbaa !1373

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

  %157 = add i32 %156, -134217728

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

define %struct.Memory* @sub_400bc0_deallocate_arrays(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  %18 = tail call i64 @free(i64 %12), !noalias !1425

  %19 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  %20 = add i64 %17, 16

  %21 = add i64 %9, -16

  %22 = inttoptr i64 %21 to i64*

  store i64 %20, i64* %22

  %23 = inttoptr i64 %21 to i64*

  %24 = load i64, i64* %23

  %25 = tail call i64 @free(i64 %19), !noalias !1428

  %26 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %27 = add i64 %24, 16

  %28 = add i64 %9, -16

  %29 = inttoptr i64 %28 to i64*

  store i64 %27, i64* %29

  %30 = inttoptr i64 %28 to i64*

  %31 = load i64, i64* %30

  %32 = tail call i64 @free(i64 %26), !noalias !1431

  %33 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %33, i64* %5, align 8, !tbaa !1240

  %34 = add i64 %31, 16

  %35 = add i64 %9, -16

  %36 = inttoptr i64 %35 to i64*

  store i64 %34, i64* %36

  %37 = tail call i64 @free(i64 %33), !noalias !1434

  store i64 %37, i64* %4, align 8, !alias.scope !1434, !noalias !1437

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

define %struct.Memory* @sub_400650_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store i8 0, i8* %12, align 1, !tbaa !1439

  store i8 1, i8* %13, align 1, !tbaa !1439

  store i8 0, i8* %14, align 1, !tbaa !1439

  store i8 1, i8* %15, align 1, !tbaa !1439

  store i8 0, i8* %16, align 1, !tbaa !1439

  store i8 0, i8* %17, align 1, !tbaa !1439

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400610__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

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



; Function Attrs: noinline

define %struct.Memory* @sub_400f30_full_verify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  %62 = add i32 %61, -134217728

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

  %88 = load i64, i64* %85, align 8, !alias.scope !1440, !noalias !1443

  %89 = load i64, i64* %84, align 8, !alias.scope !1440, !noalias !1443

  %90 = load i64, i64* %86, align 8, !alias.scope !1440, !noalias !1443

  %91 = load i64, i64* %87, align 8, !alias.scope !1440, !noalias !1443

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

  store i64 %16, i64* %10, align 8, !alias.scope !1440, !noalias !1443

  %122 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 896), i64 %79, i64 %88, i64 %89, i64 %90, i64 %91, i64 %93, i64 %96, i64 %99, i64 %101, i64 %104, i64 %107, i64 %110, i64 %113, i64 %116, i64 %119), !noalias !1440

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

  store i64 %133, i64* %3, align 8, !alias.scope !1445, !noalias !1448

  store i64 %129, i64* %10, align 8, !alias.scope !1445, !noalias !1448

  %134 = tail call i64 @fflush(i64 %123), !noalias !1445

  store i64 %134, i64* %83, align 8, !alias.scope !1445, !noalias !1448

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

  store i8 %147, i8* %17, align 1, !tbaa !1334

  %148 = trunc i64 %145 to i32

  %149 = and i32 %148, 255

  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #9

  %151 = trunc i32 %150 to i8

  %152 = and i8 %151, 1

  %153 = xor i8 %152, 1

  store i8 %153, i8* %18, align 1, !tbaa !1348

  %154 = xor i64 %143, 16

  %155 = xor i64 %154, %145

  %156 = lshr i64 %155, 4

  %157 = trunc i64 %156 to i8

  %158 = and i8 %157, 1

  store i8 %158, i8* %19, align 1, !tbaa !1349

  %159 = icmp eq i64 %145, 0

  %160 = zext i1 %159 to i8

  store i8 %160, i8* %20, align 1, !tbaa !1350

  %161 = lshr i64 %145, 63

  %162 = trunc i64 %161 to i8

  store i8 %162, i8* %21, align 1, !tbaa !1351

  %163 = lshr i64 %143, 63

  %164 = xor i64 %161, %163

  %165 = add nuw nsw i64 %164, %161

  %166 = icmp eq i64 %165, 2

  %167 = zext i1 %166 to i8

  store i8 %167, i8* %22, align 1, !tbaa !1352

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

  %205 = add i32 %204, -134217728

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

define %struct.Memory* @sub_4019f0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4019f0:

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

define %struct.Memory* @sub_401050_rank(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  store i32 13, i32* %28

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

  %38 = sub i32 8388608, %37

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



block_4010dc:                                     ; preds = %block_4010d5, %block_4010e9

  %53 = phi i64 [ %84, %block_4010d5 ], [ %80, %block_4010e9 ]

  %54 = phi %struct.Memory* [ %348, %block_4010d5 ], [ %54, %block_4010e9 ]

  %55 = inttoptr i64 %50 to i32*

  %56 = load i32, i32* %55

  %57 = add i32 %56, -1024

  %58 = lshr i32 %57, 31

  %59 = trunc i32 %58 to i8

  %60 = lshr i32 %56, 31

  %61 = xor i32 %58, %60

  %62 = add nuw nsw i32 %61, %60

  %63 = icmp eq i32 %62, 2

  %64 = icmp ne i8 %59, 0

  %65 = xor i1 %64, %63

  %66 = select i1 %65, i64 13, i64 42

  %67 = add i64 %53, %66

  br i1 %65, label %block_4010e9, label %block_401106



block_4013cf:                                     ; preds = %block_4013b5, %block_4013ab

  %68 = phi i64 [ %430, %block_4013ab ], [ %484, %block_4013b5 ]

  %69 = phi i64 [ %236, %block_4013ab ], [ %488, %block_4013b5 ]

  %70 = phi %struct.Memory* [ %228, %block_4013ab ], [ %228, %block_4013b5 ]

  %71 = add i64 %69, 5

  br label %block_4013d4



block_4010e9:                                     ; preds = %block_4010dc

  %72 = sext i32 %56 to i64

  %73 = shl nsw i64 %72, 2

  %74 = add i64 %73, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %75 = inttoptr i64 %74 to i32*

  store i32 0, i32* %75

  %76 = inttoptr i64 %50 to i32*

  %77 = load i32, i32* %76

  %78 = add i32 %77, 1

  %79 = inttoptr i64 %50 to i32*

  store i32 %78, i32* %79

  %80 = add i64 %67, -13

  br label %block_4010dc



block_401150:                                     ; preds = %block_40110d

  store i32 0, i32* bitcast (%bucket_ptrs_type* @bucket_ptrs to i32*)

  %81 = add i64 %545, 18

  %82 = inttoptr i64 %50 to i32*

  store i32 1, i32* %82

  br label %block_401162



block_4010d5:                                     ; preds = %block_401097

  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %84 = add i64 %361, 7

  %85 = inttoptr i64 %50 to i32*

  store i32 0, i32* %85

  br label %block_4010dc



block_401162:                                     ; preds = %block_40116f, %block_401150

  %86 = phi i64 [ %81, %block_401150 ], [ %305, %block_40116f ]

  %87 = phi %struct.Memory* [ %532, %block_401150 ], [ %87, %block_40116f ]

  %88 = inttoptr i64 %50 to i32*

  %89 = load i32, i32* %88

  %90 = add i32 %89, -1024

  %91 = lshr i32 %90, 31

  %92 = trunc i32 %91 to i8

  %93 = lshr i32 %89, 31

  %94 = xor i32 %91, %93

  %95 = add nuw nsw i32 %94, %93

  %96 = icmp eq i32 %95, 2

  %97 = icmp ne i8 %92, 0

  %98 = xor i1 %97, %96

  %99 = select i1 %98, i64 13, i64 70

  %100 = add i64 %86, %99

  br i1 %98, label %block_40116f, label %block_4011a8



block_4012dd:                                     ; preds = %block_4013d4, %block_4012d6

  %101 = phi i64 [ %134, %block_4012d6 ], [ %399, %block_4013d4 ]

  %102 = phi i64 [ %40, %block_4012d6 ], [ %390, %block_4013d4 ]

  %103 = phi %struct.Memory* [ %251, %block_4012d6 ], [ %392, %block_4013d4 ]

  %104 = add i64 %102, -8

  %105 = inttoptr i64 %104 to i32*

  %106 = load i32, i32* %105

  %107 = add i32 %106, -5

  %108 = lshr i32 %107, 31

  %109 = trunc i32 %108 to i8

  %110 = lshr i32 %106, 31

  %111 = xor i32 %108, %110

  %112 = add nuw nsw i32 %111, %110

  %113 = icmp eq i32 %112, 2

  %114 = icmp ne i8 %109, 0

  %115 = xor i1 %114, %113

  %116 = select i1 %115, i64 10, i64 266

  %117 = add i64 %101, %116

  br i1 %115, label %block_4012e7, label %block_4013e7



block_401221:                                     ; preds = %block_40120e, %block_40122e

  %118 = phi i64 [ %493, %block_40120e ], [ %249, %block_40122e ]

  %119 = phi %struct.Memory* [ %197, %block_40120e ], [ %119, %block_40122e ]

  %120 = inttoptr i64 %50 to i32*

  %121 = load i32, i32* %120

  %122 = add i32 %121, -8388608

  %123 = lshr i32 %122, 31

  %124 = trunc i32 %123 to i8

  %125 = lshr i32 %121, 31

  %126 = xor i32 %123, %125

  %127 = add nuw nsw i32 %126, %125

  %128 = icmp eq i32 %127, 2

  %129 = icmp ne i8 %124, 0

  %130 = xor i1 %129, %128

  %131 = select i1 %130, i64 13, i64 46

  %132 = add i64 %118, %131

  %133 = load i64, i64* bitcast (%key_buff1_type* @key_buff1 to i64*)

  br i1 %130, label %block_40122e, label %block_40124f



block_4012d6:                                     ; preds = %block_40129d

  %134 = add i64 %264, 7

  %135 = inttoptr i64 %50 to i32*

  store i32 0, i32* %135

  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %138 = load i64, i64* %136, align 8

  %139 = load i64, i64* %137, align 8

  br label %block_4012dd



block_4011bc:                                     ; preds = %block_4011af

  %140 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %141 = sext i32 %199 to i64

  %142 = shl nsw i64 %141, 2

  %143 = add i64 %142, %140

  %144 = inttoptr i64 %143 to i32*

  %145 = load i32, i32* %144

  %146 = inttoptr i64 %239 to i32*

  store i32 %145, i32* %146

  %147 = inttoptr i64 %239 to i32*

  %148 = load i32, i32* %147

  %149 = zext i32 %148 to i64

  store i64 %149, i64* %9, align 8, !tbaa !1240

  %150 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %151 = inttoptr i64 %586 to i32*

  %152 = load i32, i32* %151

  %153 = zext i32 %152 to i64

  store i64 %153, i64* %8, align 8, !tbaa !1240

  %154 = trunc i32 %152 to i5

  switch i5 %154, label %158 [

    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

    i5 1, label %155

  ]



; <label>:155:                                    ; preds = %block_4011bc

  %156 = shl nuw i64 %149, 32

  %157 = ashr i64 %156, 33

  br label %165



; <label>:158:                                    ; preds = %block_4011bc

  %159 = and i32 %152, 31

  %160 = zext i32 %159 to i64

  %161 = add nsw i64 %160, -1

  %162 = sext i32 %148 to i64

  %163 = ashr i64 %162, %161

  %164 = lshr i64 %163, 1

  br label %165



; <label>:165:                                    ; preds = %158, %155

  %166 = phi i64 [ %164, %158 ], [ %157, %155 ]

  %167 = trunc i64 %166 to i32

  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit



_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %165, %block_4011bc

  %168 = phi i32 [ %148, %block_4011bc ], [ %167, %165 ]

  %169 = sext i32 %168 to i64

  %170 = shl nsw i64 %169, 2

  %171 = add i64 %170, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %172 = inttoptr i64 %171 to i32*

  %173 = load i32, i32* %172

  %174 = zext i32 %173 to i64

  store i64 %174, i64* %83, align 8, !tbaa !1240

  %175 = add i32 %173, 1

  %176 = zext i32 %175 to i64

  store i64 %176, i64* %240, align 8, !tbaa !1240

  %177 = inttoptr i64 %171 to i32*

  store i32 %175, i32* %177

  %178 = sext i32 %173 to i64

  store i64 %178, i64* %10, align 8, !tbaa !1240

  %179 = shl nsw i64 %178, 2

  %180 = add i64 %150, %179

  %181 = inttoptr i64 %180 to i32*

  store i32 %148, i32* %181

  %182 = inttoptr i64 %50 to i32*

  %183 = load i32, i32* %182

  %184 = add i32 %183, 1

  %185 = inttoptr i64 %50 to i32*

  store i32 %184, i32* %185

  %186 = add i64 %210, -13

  br label %block_4011af



block_4013f1:                                     ; preds = %block_4013e7

  %187 = add i64 %102, -24

  %188 = inttoptr i64 %187 to i64*

  %189 = load i64, i64* %188

  store i64 %189, i64* %7, align 8, !tbaa !1240

  store i64 %189, i64* bitcast (%key_buff_ptr_global_type* @key_buff_ptr_global to i64*)

  br label %block_4013fd



block_401335:                                     ; preds = %block_401311

  %190 = add i32 %441, %438

  %191 = zext i32 %190 to i64

  store i64 %191, i64* %9, align 8, !tbaa !1240

  %192 = sub i32 %429, %190

  %193 = icmp eq i32 %192, 0

  %194 = select i1 %193, i64 37, i64 25

  %195 = add i64 %427, %194

  br i1 %193, label %block_40135a, label %block_40134e



block_4011af:                                     ; preds = %block_4011a8, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

  %196 = phi i64 [ %237, %block_4011a8 ], [ %186, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ]

  %197 = phi %struct.Memory* [ %87, %block_4011a8 ], [ %197, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ]

  %198 = inttoptr i64 %50 to i32*

  %199 = load i32, i32* %198

  %200 = add i32 %199, -134217728

  %201 = lshr i32 %200, 31

  %202 = trunc i32 %201 to i8

  %203 = lshr i32 %199, 31

  %204 = xor i32 %201, %203

  %205 = add nuw nsw i32 %204, %203

  %206 = icmp eq i32 %205, 2

  %207 = icmp ne i8 %202, 0

  %208 = xor i1 %207, %206

  %209 = select i1 %208, i64 13, i64 95

  %210 = add i64 %196, %209

  br i1 %208, label %block_4011bc, label %block_40120e



block_401262:                                     ; preds = %block_40124f, %block_40126f

  %211 = phi i64 [ %582, %block_40124f ], [ %568, %block_40126f ]

  %212 = phi %struct.Memory* [ %119, %block_40124f ], [ %212, %block_40126f ]

  %213 = inttoptr i64 %50 to i32*

  %214 = load i32, i32* %213

  %215 = add i32 %214, -134217728

  %216 = lshr i32 %215, 31

  %217 = trunc i32 %216 to i8

  %218 = lshr i32 %214, 31

  %219 = xor i32 %216, %218

  %220 = add nuw nsw i32 %219, %218

  %221 = icmp eq i32 %220, 2

  %222 = icmp ne i8 %217, 0

  %223 = xor i1 %222, %221

  %224 = select i1 %223, i64 13, i64 52

  %225 = add i64 %211, %224

  br i1 %223, label %block_40126f, label %block_401296



block_4013ab:                                     ; preds = %block_401389, %block_40135a, %block_401395, %block_40134e

  %226 = phi i64 [ %576, %block_40135a ], [ %308, %block_40134e ], [ %579, %block_401389 ], [ %389, %block_401395 ]

  %227 = phi i64 [ 64, %block_40135a ], [ 64, %block_40134e ], [ 5, %block_401389 ], [ 5, %block_401395 ]

  %228 = phi %struct.Memory* [ %103, %block_40135a ], [ %103, %block_40134e ], [ %103, %block_401389 ], [ %103, %block_401395 ]

  %229 = add i64 %226, %227

  %230 = add i64 %430, -48

  %231 = inttoptr i64 %230 to i32*

  %232 = load i32, i32* %231

  %233 = add i32 %232, -1

  %234 = icmp eq i32 %233, 0

  %235 = select i1 %234, i64 10, i64 36

  %236 = add i64 %229, %235

  br i1 %234, label %block_4013b5, label %block_4013cf



block_4011a8:                                     ; preds = %block_401162

  %237 = add i64 %100, 7

  %238 = inttoptr i64 %50 to i32*

  store i32 0, i32* %238

  %239 = add i64 %40, -40

  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  br label %block_4011af



block_40122e:                                     ; preds = %block_401221

  %241 = sext i32 %121 to i64

  store i64 %241, i64* %8, align 8, !tbaa !1240

  %242 = shl nsw i64 %241, 2

  %243 = add i64 %242, %133

  %244 = inttoptr i64 %243 to i32*

  store i32 0, i32* %244

  %245 = inttoptr i64 %50 to i32*

  %246 = load i32, i32* %245

  %247 = add i32 %246, 1

  %248 = inttoptr i64 %50 to i32*

  store i32 %247, i32* %248

  %249 = add i64 %132, -13

  br label %block_401221



block_40129d:                                     ; preds = %block_4012aa, %block_401296

  %250 = phi i64 [ %362, %block_401296 ], [ %386, %block_4012aa ]

  %251 = phi %struct.Memory* [ %212, %block_401296 ], [ %251, %block_4012aa ]

  %252 = inttoptr i64 %50 to i32*

  %253 = load i32, i32* %252

  %254 = add i32 %253, -8388607

  %255 = lshr i32 %254, 31

  %256 = trunc i32 %255 to i8

  %257 = lshr i32 %253, 31

  %258 = xor i32 %255, %257

  %259 = add nuw nsw i32 %258, %257

  %260 = icmp eq i32 %259, 2

  %261 = icmp ne i8 %256, 0

  %262 = xor i1 %261, %260

  %263 = select i1 %262, i64 13, i64 57

  %264 = add i64 %250, %263

  br i1 %262, label %block_4012aa, label %block_4012d6



block_4012e7:                                     ; preds = %block_4012dd

  %265 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %265, i64* %8, align 8, !tbaa !1240

  %266 = sext i32 %106 to i64

  store i64 %266, i64* %9, align 8, !tbaa !1240

  %267 = shl nsw i64 %266, 2

  %268 = add i64 %267, %265

  %269 = inttoptr i64 %268 to i32*

  %270 = load i32, i32* %269

  %271 = zext i32 %270 to i64

  store i64 %271, i64* %83, align 8, !tbaa !1240

  %272 = add i64 %102, -12

  %273 = inttoptr i64 %272 to i32*

  store i32 %270, i32* %273

  %274 = inttoptr i64 %272 to i32*

  %275 = load i32, i32* %274

  %276 = sub i32 0, %275

  %277 = lshr i32 %276, 31

  %278 = trunc i32 %277 to i8

  %279 = lshr i32 %275, 31

  %280 = add nuw nsw i32 %277, %279

  %281 = icmp eq i32 %280, 2

  %282 = icmp ne i8 %278, 0

  %283 = xor i1 %282, %281

  %284 = select i1 %283, i64 29, i64 237

  %285 = add i64 %117, %284

  br i1 %283, label %block_401304, label %block_4013d4



block_40116f:                                     ; preds = %block_401162

  %286 = add i32 %89, -1

  %287 = zext i32 %286 to i64

  %288 = sext i32 %286 to i64

  %289 = shl nsw i64 %288, 2

  %290 = add i64 %289, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %291 = inttoptr i64 %290 to i32*

  %292 = load i32, i32* %291

  store i64 %287, i64* %9, align 8, !tbaa !1240

  %293 = add i64 %289, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %294 = inttoptr i64 %293 to i32*

  %295 = load i32, i32* %294

  %296 = add i32 %295, %292

  %297 = sext i32 %89 to i64

  store i64 %297, i64* %8, align 8, !tbaa !1240

  %298 = shl nsw i64 %297, 2

  %299 = add i64 %298, ptrtoint (%bucket_ptrs_type* @bucket_ptrs to i64)

  %300 = inttoptr i64 %299 to i32*

  store i32 %296, i32* %300

  %301 = inttoptr i64 %50 to i32*

  %302 = load i32, i32* %301

  %303 = add i32 %302, 1

  %304 = inttoptr i64 %50 to i32*

  store i32 %303, i32* %304

  %305 = add i64 %100, -13

  br label %block_401162



block_40134e:                                     ; preds = %block_401335

  %306 = add i64 %430, -48

  %307 = inttoptr i64 %306 to i32*

  store i32 1, i32* %307

  %308 = add i64 %195, 29

  br label %block_4013ab



block_40111a:                                     ; preds = %block_40110d

  %309 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %310 = sext i32 %534 to i64

  %311 = shl nsw i64 %310, 2

  %312 = add i64 %311, %309

  %313 = inttoptr i64 %312 to i32*

  %314 = load i32, i32* %313

  %315 = zext i32 %314 to i64

  %316 = inttoptr i64 %586 to i32*

  %317 = load i32, i32* %316

  %318 = zext i32 %317 to i64

  store i64 %318, i64* %8, align 8, !tbaa !1240

  %319 = trunc i32 %317 to i5

  switch i5 %319, label %323 [

    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5

    i5 1, label %320

  ]



; <label>:320:                                    ; preds = %block_40111a

  %321 = shl nuw i64 %315, 32

  %322 = ashr i64 %321, 33

  br label %330



; <label>:323:                                    ; preds = %block_40111a

  %324 = and i32 %317, 31

  %325 = zext i32 %324 to i64

  %326 = add nsw i64 %325, -1

  %327 = sext i32 %314 to i64

  %328 = ashr i64 %327, %326

  %329 = lshr i64 %328, 1

  br label %330



; <label>:330:                                    ; preds = %323, %320

  %331 = phi i64 [ %329, %323 ], [ %322, %320 ]

  %332 = trunc i64 %331 to i32

  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5



_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5: ; preds = %330, %block_40111a

  %333 = phi i32 [ %314, %block_40111a ], [ %332, %330 ]

  %334 = sext i32 %333 to i64

  %335 = shl nsw i64 %334, 2

  %336 = add i64 %335, ptrtoint (%bucket_size_type* @bucket_size to i64)

  %337 = inttoptr i64 %336 to i32*

  %338 = load i32, i32* %337

  %339 = add i32 %338, 1

  %340 = zext i32 %339 to i64

  store i64 %340, i64* %9, align 8, !tbaa !1240

  %341 = inttoptr i64 %336 to i32*

  store i32 %339, i32* %341

  %342 = inttoptr i64 %50 to i32*

  %343 = load i32, i32* %342

  %344 = add i32 %343, 1

  %345 = inttoptr i64 %50 to i32*

  store i32 %344, i32* %345

  %346 = add i64 %545, -13

  br label %block_40110d



block_401097:                                     ; preds = %block_4010a1, %block_401050

  %347 = phi i64 [ %51, %block_401050 ], [ %606, %block_4010a1 ]

  %348 = phi %struct.Memory* [ %2, %block_401050 ], [ %348, %block_4010a1 ]

  %349 = inttoptr i64 %50 to i32*

  %350 = load i32, i32* %349

  %351 = add i32 %350, -5

  %352 = lshr i32 %351, 31

  %353 = trunc i32 %352 to i8

  %354 = lshr i32 %350, 31

  %355 = xor i32 %352, %354

  %356 = add nuw nsw i32 %355, %354

  %357 = icmp eq i32 %356, 2

  %358 = icmp ne i8 %353, 0

  %359 = xor i1 %358, %357

  %360 = select i1 %359, i64 10, i64 62

  %361 = add i64 %347, %360

  br i1 %359, label %block_4010a1, label %block_4010d5



block_401296:                                     ; preds = %block_401262

  %362 = add i64 %225, 7

  %363 = inttoptr i64 %50 to i32*

  store i32 0, i32* %363

  br label %block_40129d



block_4012aa:                                     ; preds = %block_40129d

  %364 = inttoptr i64 %580 to i64*

  %365 = load i64, i64* %364

  %366 = sext i32 %253 to i64

  %367 = shl nsw i64 %366, 2

  %368 = add i64 %367, %365

  %369 = inttoptr i64 %368 to i32*

  %370 = load i32, i32* %369

  %371 = add i32 %253, 1

  %372 = zext i32 %371 to i64

  store i64 %372, i64* %83, align 8, !tbaa !1240

  %373 = sext i32 %371 to i64

  store i64 %373, i64* %8, align 8, !tbaa !1240

  %374 = shl nsw i64 %373, 2

  %375 = add i64 %365, %374

  %376 = inttoptr i64 %375 to i32*

  %377 = load i32, i32* %376

  %378 = add i32 %377, %370

  %379 = zext i32 %378 to i64

  store i64 %379, i64* %9, align 8, !tbaa !1240

  %380 = inttoptr i64 %375 to i32*

  store i32 %378, i32* %380

  %381 = inttoptr i64 %50 to i32*

  %382 = load i32, i32* %381

  %383 = add i32 %382, 1

  %384 = zext i32 %383 to i64

  store i64 %384, i64* %7, align 8, !tbaa !1240

  %385 = inttoptr i64 %50 to i32*

  store i32 %383, i32* %385

  %386 = add i64 %264, -13

  br label %block_40129d



block_401395:                                     ; preds = %block_401370

  %387 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %388 = add i32 %387, 1

  %389 = add i64 %530, 17

  store i32 %388, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_4013ab



block_4013d4:                                     ; preds = %block_401304, %block_4012e7, %block_4013cf

  %390 = phi i64 [ %102, %block_4012e7 ], [ %102, %block_401304 ], [ %68, %block_4013cf ]

  %391 = phi i64 [ %285, %block_4012e7 ], [ %618, %block_401304 ], [ %71, %block_4013cf ]

  %392 = phi %struct.Memory* [ %103, %block_4012e7 ], [ %103, %block_401304 ], [ %70, %block_4013cf ]

  %393 = add i64 %390, -8

  %394 = inttoptr i64 %393 to i32*

  %395 = load i32, i32* %394

  %396 = add i32 %395, 1

  %397 = zext i32 %396 to i64

  store i64 %397, i64* %7, align 8, !tbaa !1240

  %398 = inttoptr i64 %393 to i32*

  store i32 %396, i32* %398

  %399 = add i64 %391, -247

  br label %block_4012dd



block_401311:                                     ; preds = %block_401304

  %400 = add i64 %102, -24

  %401 = inttoptr i64 %400 to i64*

  %402 = load i64, i64* %401

  %403 = add i32 %275, -1

  %404 = sext i32 %403 to i64

  %405 = shl nsw i64 %404, 2

  %406 = add i64 %402, %405

  %407 = inttoptr i64 %406 to i32*

  %408 = load i32, i32* %407

  %409 = add i64 %102, -44

  %410 = inttoptr i64 %409 to i32*

  store i32 %408, i32* %410

  %411 = add i64 %102, -48

  %412 = inttoptr i64 %411 to i32*

  store i32 0, i32* %412

  %413 = inttoptr i64 %104 to i32*

  %414 = load i32, i32* %413

  %415 = add i32 %414, -2

  %416 = icmp eq i32 %415, 0

  %417 = lshr i32 %415, 31

  %418 = trunc i32 %417 to i8

  %419 = lshr i32 %414, 31

  %420 = xor i32 %417, %419

  %421 = add nuw nsw i32 %420, %419

  %422 = icmp eq i32 %421, 2

  %423 = icmp ne i8 %418, 0

  %424 = xor i1 %423, %422

  %425 = or i1 %416, %424

  %426 = select i1 %425, i64 36, i64 95

  %427 = add i64 %618, %426

  %428 = inttoptr i64 %409 to i32*

  %429 = load i32, i32* %428

  %430 = load i64, i64* %12, align 8

  %431 = add i64 %430, -8

  %432 = inttoptr i64 %431 to i32*

  %433 = load i32, i32* %432

  %434 = sext i32 %433 to i64

  store i64 %434, i64* %8, align 8, !tbaa !1240

  %435 = shl nsw i64 %434, 2

  %436 = add i64 %435, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %437 = inttoptr i64 %436 to i32*

  %438 = load i32, i32* %437

  %439 = add i64 %430, -4

  %440 = inttoptr i64 %439 to i32*

  %441 = load i32, i32* %440

  br i1 %425, label %block_401335, label %block_401370



block_4013b5:                                     ; preds = %block_4013ab

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 942), i64* %10, align 8, !tbaa !1240

  %442 = inttoptr i64 %439 to i32*

  %443 = load i32, i32* %442

  %444 = zext i32 %443 to i64

  store i64 %444, i64* %83, align 8, !tbaa !1240

  %445 = inttoptr i64 %431 to i32*

  %446 = load i32, i32* %445

  %447 = zext i32 %446 to i64

  store i64 %447, i64* %9, align 8, !tbaa !1240

  %448 = add i64 %236, 23

  %449 = load i64, i64* %11, align 8, !tbaa !1240

  %450 = add i64 %449, -8

  %451 = inttoptr i64 %450 to i64*

  store i64 %448, i64* %451

  %452 = inttoptr i64 %449 to i64*

  %453 = load i64, i64* %452

  %454 = add i64 %449, 8

  %455 = inttoptr i64 %454 to i64*

  %456 = load i64, i64* %455

  %457 = add i64 %449, 16

  %458 = inttoptr i64 %457 to i64*

  %459 = load i64, i64* %458

  %460 = add i64 %449, 24

  %461 = inttoptr i64 %460 to i64*

  %462 = load i64, i64* %461

  %463 = add i64 %449, 32

  %464 = inttoptr i64 %463 to i64*

  %465 = load i64, i64* %464

  %466 = add i64 %449, 40

  %467 = inttoptr i64 %466 to i64*

  %468 = load i64, i64* %467

  %469 = add i64 %449, 48

  %470 = inttoptr i64 %469 to i64*

  %471 = load i64, i64* %470

  %472 = add i64 %449, 56

  %473 = inttoptr i64 %472 to i64*

  %474 = load i64, i64* %473

  %475 = add i64 %449, 64

  %476 = inttoptr i64 %475 to i64*

  %477 = load i64, i64* %476

  %478 = add i64 %449, 72

  %479 = inttoptr i64 %478 to i64*

  %480 = load i64, i64* %479

  %481 = inttoptr i64 %450 to i64*

  %482 = load i64, i64* %481

  store i64 %482, i64* %3, align 8, !alias.scope !1450, !noalias !1453

  store i64 %449, i64* %11, align 8, !alias.scope !1450, !noalias !1453

  %483 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 942), i64 %444, i64 %447, i64 %434, i64 %138, i64 %139, i64 %453, i64 %456, i64 %459, i64 %462, i64 %465, i64 %468, i64 %471, i64 %474, i64 %477, i64 %480), !noalias !1450

  %484 = load i64, i64* %12, align 8

  %485 = add i64 %484, -52

  %486 = trunc i64 %483 to i32

  %487 = load i64, i64* %3, align 8

  %488 = add i64 %487, 3

  %489 = inttoptr i64 %485 to i32*

  store i32 %486, i32* %489

  br label %block_4013cf



block_40120e:                                     ; preds = %block_4011af

  %490 = load i64, i64* bitcast (%key_buff2_type* @key_buff2 to i64*)

  %491 = add i64 %40, -32

  %492 = inttoptr i64 %491 to i64*

  store i64 %490, i64* %492

  %493 = add i64 %210, 19

  %494 = inttoptr i64 %50 to i32*

  store i32 0, i32* %494

  br label %block_401221



block_4013fd:                                     ; preds = %block_4013e7, %block_4013f1

  %495 = phi %struct.Memory* [ %103, %block_4013e7 ], [ %103, %block_4013f1 ]

  %496 = load i64, i64* %11, align 8

  %497 = add i64 %496, 64

  %498 = icmp ugt i64 %496, -65

  %499 = zext i1 %498 to i8

  store i8 %499, i8* %18, align 1, !tbaa !1334

  %500 = trunc i64 %497 to i32

  %501 = and i32 %500, 255

  %502 = tail call i32 @llvm.ctpop.i32(i32 %501) #9

  %503 = trunc i32 %502 to i8

  %504 = and i8 %503, 1

  %505 = xor i8 %504, 1

  store i8 %505, i8* %19, align 1, !tbaa !1348

  %506 = xor i64 %497, %496

  %507 = lshr i64 %506, 4

  %508 = trunc i64 %507 to i8

  %509 = and i8 %508, 1

  store i8 %509, i8* %20, align 1, !tbaa !1349

  %510 = icmp eq i64 %497, 0

  %511 = zext i1 %510 to i8

  store i8 %511, i8* %21, align 1, !tbaa !1350

  %512 = lshr i64 %497, 63

  %513 = trunc i64 %512 to i8

  store i8 %513, i8* %22, align 1, !tbaa !1351

  %514 = lshr i64 %496, 63

  %515 = xor i64 %512, %514

  %516 = add nuw nsw i64 %515, %512

  %517 = icmp eq i64 %516, 2

  %518 = zext i1 %517 to i8

  store i8 %518, i8* %23, align 1, !tbaa !1352

  %519 = add i64 %496, 72

  %520 = inttoptr i64 %497 to i64*

  %521 = load i64, i64* %520

  store i64 %521, i64* %12, align 8, !tbaa !1240

  %522 = inttoptr i64 %519 to i64*

  %523 = load i64, i64* %522

  store i64 %523, i64* %3, align 8, !tbaa !1240

  %524 = add i64 %496, 80

  store i64 %524, i64* %11, align 8, !tbaa !1240

  ret %struct.Memory* %495



block_401370:                                     ; preds = %block_401311

  %525 = sub i32 %438, %441

  %526 = zext i32 %525 to i64

  store i64 %526, i64* %9, align 8, !tbaa !1240

  %527 = sub i32 %429, %525

  %528 = icmp eq i32 %527, 0

  %529 = select i1 %528, i64 37, i64 25

  %530 = add i64 %427, %529

  br i1 %528, label %block_401395, label %block_401389



block_40110d:                                     ; preds = %block_401106, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5

  %531 = phi i64 [ %584, %block_401106 ], [ %346, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5 ]

  %532 = phi %struct.Memory* [ %54, %block_401106 ], [ %532, %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit5 ]

  %533 = inttoptr i64 %50 to i32*

  %534 = load i32, i32* %533

  %535 = add i32 %534, -134217728

  %536 = lshr i32 %535, 31

  %537 = trunc i32 %536 to i8

  %538 = lshr i32 %534, 31

  %539 = xor i32 %536, %538

  %540 = add nuw nsw i32 %539, %538

  %541 = icmp eq i32 %540, 2

  %542 = icmp ne i8 %537, 0

  %543 = xor i1 %542, %541

  %544 = select i1 %543, i64 13, i64 67

  %545 = add i64 %531, %544

  br i1 %543, label %block_40111a, label %block_401150



block_40126f:                                     ; preds = %block_401262

  %546 = inttoptr i64 %580 to i64*

  %547 = load i64, i64* %546

  %548 = inttoptr i64 %491 to i64*

  %549 = load i64, i64* %548

  %550 = sext i32 %214 to i64

  store i64 %550, i64* %9, align 8, !tbaa !1240

  %551 = shl nsw i64 %550, 2

  %552 = add i64 %551, %549

  %553 = inttoptr i64 %552 to i32*

  %554 = load i32, i32* %553

  %555 = sext i32 %554 to i64

  store i64 %555, i64* %8, align 8, !tbaa !1240

  %556 = shl nsw i64 %555, 2

  %557 = add i64 %556, %547

  %558 = inttoptr i64 %557 to i32*

  %559 = load i32, i32* %558

  %560 = add i32 %559, 1

  %561 = zext i32 %560 to i64

  store i64 %561, i64* %83, align 8, !tbaa !1240

  %562 = inttoptr i64 %557 to i32*

  store i32 %560, i32* %562

  %563 = inttoptr i64 %50 to i32*

  %564 = load i32, i32* %563

  %565 = add i32 %564, 1

  %566 = zext i32 %565 to i64

  store i64 %566, i64* %7, align 8, !tbaa !1240

  %567 = inttoptr i64 %50 to i32*

  store i32 %565, i32* %567

  %568 = add i64 %225, -13

  br label %block_401262



block_4013e7:                                     ; preds = %block_4012dd

  %569 = add i64 %102, -4

  %570 = inttoptr i64 %569 to i32*

  %571 = load i32, i32* %570

  %572 = add i32 %571, -10

  %573 = icmp eq i32 %572, 0

  br i1 %573, label %block_4013f1, label %block_4013fd



block_40135a:                                     ; preds = %block_401335

  %574 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %575 = add i32 %574, 1

  %576 = add i64 %195, 17

  store i32 %575, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_4013ab



block_401389:                                     ; preds = %block_401370

  %577 = add i64 %430, -48

  %578 = inttoptr i64 %577 to i32*

  store i32 1, i32* %578

  %579 = add i64 %530, 29

  br label %block_4013ab



block_40124f:                                     ; preds = %block_401221

  store i64 %133, i64* %7, align 8, !tbaa !1240

  %580 = add i64 %40, -24

  %581 = inttoptr i64 %580 to i64*

  store i64 %133, i64* %581

  %582 = add i64 %132, 19

  %583 = inttoptr i64 %50 to i32*

  store i32 0, i32* %583

  br label %block_401262



block_401106:                                     ; preds = %block_4010dc

  %584 = add i64 %67, 7

  %585 = inttoptr i64 %50 to i32*

  store i32 0, i32* %585

  %586 = add i64 %40, -36

  br label %block_40110d



block_4010a1:                                     ; preds = %block_401097

  %587 = load i64, i64* bitcast (%key_array_type* @key_array to i64*)

  %588 = sext i32 %350 to i64

  %589 = shl nsw i64 %588, 2

  %590 = add i64 %589, ptrtoint (%test_index_array_type* @test_index_array to i64)

  %591 = inttoptr i64 %590 to i32*

  %592 = load i32, i32* %591

  %593 = sext i32 %592 to i64

  %594 = shl nsw i64 %593, 2

  %595 = add i64 %594, %587

  %596 = inttoptr i64 %595 to i32*

  %597 = load i32, i32* %596

  %598 = zext i32 %597 to i64

  store i64 %598, i64* %9, align 8, !tbaa !1240

  %599 = load i64, i64* bitcast (%partial_verify_vals_type* @partial_verify_vals to i64*)

  store i64 %588, i64* %8, align 8, !tbaa !1240

  %600 = add i64 %589, %599

  %601 = inttoptr i64 %600 to i32*

  store i32 %597, i32* %601

  %602 = inttoptr i64 %50 to i32*

  %603 = load i32, i32* %602

  %604 = add i32 %603, 1

  %605 = inttoptr i64 %50 to i32*

  store i32 %604, i32* %605

  %606 = add i64 %361, -10

  br label %block_401097



block_401304:                                     ; preds = %block_4012e7

  %607 = add i32 %275, -134217727

  %608 = icmp eq i32 %607, 0

  %609 = lshr i32 %607, 31

  %610 = trunc i32 %609 to i8

  %611 = xor i32 %609, %279

  %612 = add nuw nsw i32 %611, %279

  %613 = icmp eq i32 %612, 2

  %614 = icmp ne i8 %610, 0

  %615 = xor i1 %614, %613

  %616 = or i1 %608, %615

  %617 = select i1 %616, i64 13, i64 208

  %618 = add i64 %285, %617

  br i1 %616, label %block_401311, label %block_4013d4

}



; Function Attrs: noinline

define %struct.Memory* @sub_400af0_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  store double %56, double* %30, align 1, !tbaa !1373

  store i64 0, i64* %35, align 1, !tbaa !1373

  %57 = inttoptr i64 %53 to double*

  store double %56, double* %57

  %58 = load i64, i64* %7, align 8

  %59 = add i64 %58, 32

  %60 = icmp ugt i64 %58, -33

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %14, align 1, !tbaa !1334

  %62 = trunc i64 %59 to i32

  %63 = and i32 %62, 255

  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #9

  %65 = trunc i32 %64 to i8

  %66 = and i8 %65, 1

  %67 = xor i8 %66, 1

  store i8 %67, i8* %15, align 1, !tbaa !1348

  %68 = xor i64 %59, %58

  %69 = lshr i64 %68, 4

  %70 = trunc i64 %69 to i8

  %71 = and i8 %70, 1

  store i8 %71, i8* %16, align 1, !tbaa !1349

  %72 = icmp eq i64 %59, 0

  %73 = zext i1 %72 to i8

  store i8 %73, i8* %17, align 1, !tbaa !1350

  %74 = lshr i64 %59, 63

  %75 = trunc i64 %74 to i8

  store i8 %75, i8* %18, align 1, !tbaa !1351

  %76 = lshr i64 %58, 63

  %77 = xor i64 %74, %76

  %78 = add nuw nsw i64 %77, %74

  %79 = icmp eq i64 %78, 2

  %80 = zext i1 %79 to i8

  store i8 %80, i8* %19, align 1, !tbaa !1352

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

define %struct.Memory* @sub_400a80_timer_clear(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store i32 0, i32* %16, align 1, !tbaa !1455

  %17 = getelementptr inbounds i8, i8* %14, i64 4

  %18 = bitcast i8* %17 to i32*

  store i32 0, i32* %18, align 1, !tbaa !1455

  %19 = bitcast i64* %15 to i32*

  store i32 0, i32* %19, align 1, !tbaa !1455

  %20 = getelementptr inbounds i8, i8* %14, i64 12

  %21 = bitcast i8* %20 to i32*

  store i32 0, i32* %21, align 1, !tbaa !1455

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



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4019f4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {

block_4019f4:

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

  store i8 %24, i8* %7, align 1, !tbaa !1334

  %25 = trunc i64 %5 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9

  %28 = trunc i32 %27 to i8

  %29 = and i8 %28, 1

  %30 = xor i8 %29, 1

  store i8 %30, i8* %8, align 1, !tbaa !1348

  store i8 %12, i8* %13, align 1, !tbaa !1349

  %31 = icmp eq i64 %5, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %14, align 1, !tbaa !1350

  %33 = trunc i64 %17 to i8

  store i8 %33, i8* %16, align 1, !tbaa !1351

  store i8 %21, i8* %22, align 1, !tbaa !1352

  %34 = inttoptr i64 %5 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %3, align 8, !tbaa !1240

  %36 = add i64 %5, 8

  store i64 %36, i64* %4, align 8, !tbaa !1240

  ret %struct.Memory* %2

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400548__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

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

  store i8 0, i8* %8, align 1, !tbaa !1334

  %15 = trunc i64 %14 to i32

  %16 = and i32 %15, 255

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9

  %18 = trunc i32 %17 to i8

  %19 = and i8 %18, 1

  %20 = xor i8 %19, 1

  store i8 %20, i8* %9, align 1, !tbaa !1348

  %21 = icmp eq i64 %14, 0

  %22 = zext i1 %21 to i8

  store i8 %22, i8* %11, align 1, !tbaa !1350

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1351

  store i8 0, i8* %13, align 1, !tbaa !1352

  store i8 0, i8* %10, align 1, !tbaa !1349

  %25 = select i1 %21, i64 18, i64 16

  %26 = add i64 %25, %1

  br i1 %21, label %block_40055a, label %block_400558



block_40055a:                                     ; preds = %block_400558, %block_400548

  %27 = phi i64 [ %7, %block_400548 ], [ %58, %block_400558 ]

  %28 = phi %struct.Memory* [ %2, %block_400548 ], [ %57, %block_400558 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1334

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9

  %35 = trunc i32 %34 to i8

  %36 = and i8 %35, 1

  %37 = xor i8 %36, 1

  store i8 %37, i8* %9, align 1, !tbaa !1348

  %38 = xor i64 %29, %27

  %39 = lshr i64 %38, 4

  %40 = trunc i64 %39 to i8

  %41 = and i8 %40, 1

  store i8 %41, i8* %10, align 1, !tbaa !1349

  %42 = icmp eq i64 %29, 0

  %43 = zext i1 %42 to i8

  store i8 %43, i8* %11, align 1, !tbaa !1350

  %44 = lshr i64 %29, 63

  %45 = trunc i64 %44 to i8

  store i8 %45, i8* %12, align 1, !tbaa !1351

  %46 = lshr i64 %27, 63

  %47 = xor i64 %44, %46

  %48 = add nuw nsw i64 %47, %44

  %49 = icmp eq i64 %48, 2

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1352

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

define %struct.Memory* @sub_401410_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

block_401410:

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

  store i8 %46, i8* %47, align 1, !tbaa !1334

  %48 = trunc i64 %44 to i32

  %49 = and i32 %48, 255

  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #9

  %51 = trunc i32 %50 to i8

  %52 = and i8 %51, 1

  %53 = xor i8 %52, 1

  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %53, i8* %54, align 1, !tbaa !1348

  %55 = xor i64 %42, %44

  %56 = lshr i64 %55, 4

  %57 = trunc i64 %56 to i8

  %58 = and i8 %57, 1

  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 %58, i8* %59, align 1, !tbaa !1349

  %60 = icmp eq i64 %44, 0

  %61 = zext i1 %60 to i8

  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %61, i8* %62, align 1, !tbaa !1350

  %63 = lshr i64 %44, 63

  %64 = trunc i64 %63 to i8

  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %64, i8* %65, align 1, !tbaa !1351

  %66 = lshr i64 %42, 63

  %67 = xor i64 %63, %66

  %68 = add nuw nsw i64 %67, %66

  %69 = icmp eq i64 %68, 2

  %70 = zext i1 %69 to i8

  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 %70, i8* %71, align 1, !tbaa !1352

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

  %80 = add i64 %1, -2224

  %81 = add i64 %1, 39

  %82 = add i64 %26, -288

  %83 = inttoptr i64 %82 to i64*

  store i64 %81, i64* %83

  store i64 %82, i64* %14, align 8, !tbaa !1240

  %84 = tail call %struct.Memory* @sub_400b60_allocate_arrays(%struct.State* nonnull %0, i64 %80, %struct.Memory* %2)

  %85 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1009), i64* %12, align 8, !tbaa !1240

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

  store i64 %95, i64* %3, align 8, !alias.scope !1456, !noalias !1459

  store i64 %90, i64* %14, align 8, !alias.scope !1456, !noalias !1459

  %96 = tail call i64 @fopen(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 998), i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1009))

  %97 = load i64, i64* %15, align 8

  %98 = add i64 %97, -88

  %99 = load i64, i64* %3, align 8

  %100 = inttoptr i64 %98 to i64*

  store i64 %96, i64* %100

  %101 = icmp eq i64 %96, 0

  %102 = select i1 %101, i64 33, i64 14

  %103 = add i64 %99, %102

  br i1 %101, label %block_401478, label %block_401465



block_401465:                                     ; preds = %block_401410

  %104 = inttoptr i64 %98 to i64*

  %105 = load i64, i64* %104

  %106 = add i64 %103, 9

  %107 = load i64, i64* %14, align 8, !tbaa !1240

  %108 = add i64 %107, -8

  %109 = inttoptr i64 %108 to i64*

  store i64 %106, i64* %109

  %110 = inttoptr i64 %108 to i64*

  %111 = load i64, i64* %110

  store i64 %111, i64* %3, align 8, !alias.scope !1461, !noalias !1464

  store i64 %107, i64* %14, align 8, !alias.scope !1461, !noalias !1464

  %112 = tail call i64 @fclose(i64 %105), !noalias !1461

  %113 = load i64, i64* %15, align 8

  %114 = add i64 %113, -68

  %115 = load i64, i64* %3, align 8

  %116 = inttoptr i64 %114 to i32*

  store i32 1, i32* %116

  %117 = add i64 %113, -108

  %118 = trunc i64 %112 to i32

  %119 = add i64 %115, 10

  %120 = inttoptr i64 %117 to i32*

  store i32 %118, i32* %120

  br label %block_401478



block_4017f4:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

  %121 = load i8, i8* %54, align 1, !tbaa !1348

  %122 = icmp ne i8 %121, 0

  %123 = select i1 %122, i64 19, i64 6

  %124 = add i64 %1052, %123

  %125 = icmp eq i8 %121, 1

  br i1 %125, label %block_401807, label %block_4017fa



block_401625:                                     ; preds = %block_40161b, %block_4015fe

  %126 = phi i64 [ %299, %block_4015fe ], [ %429, %block_40161b ]

  %127 = phi %struct.Memory* [ %288, %block_4015fe ], [ %428, %block_40161b ]

  %128 = add i64 %126, -1781

  %129 = add i64 %126, 5

  %130 = load i64, i64* %14, align 8, !tbaa !1240

  %131 = add i64 %130, -8

  %132 = inttoptr i64 %131 to i64*

  store i64 %129, i64* %132

  store i64 %131, i64* %14, align 8, !tbaa !1240

  %133 = tail call %struct.Memory* @sub_400f30_full_verify(%struct.State* nonnull %0, i64 %128, %struct.Memory* %127)

  %134 = load i64, i64* %15, align 8

  %135 = add i64 %134, -68

  %136 = load i64, i64* %3, align 8

  %137 = inttoptr i64 %135 to i32*

  %138 = load i32, i32* %137

  %139 = icmp eq i32 %138, 0

  %140 = select i1 %139, i64 20, i64 10

  %141 = add i64 %136, %140

  br i1 %139, label %block_40163e, label %block_401634



block_40155d:                                     ; preds = %block_401506

  store i64 1, i64* %13, align 8, !tbaa !1240

  %142 = add i64 %1195, -2749

  %143 = add i64 %1195, 10

  %144 = load i64, i64* %14, align 8, !tbaa !1240

  %145 = add i64 %144, -8

  %146 = inttoptr i64 %145 to i64*

  store i64 %143, i64* %146

  store i64 %145, i64* %14, align 8, !tbaa !1240

  %147 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %142, %struct.Memory* %254)

  %148 = load i64, i64* %3, align 8

  br label %block_401567



block_4015c7:                                     ; preds = %block_401590, %block_4015d1

  %149 = phi i64 [ %591, %block_401590 ], [ %422, %block_4015d1 ]

  %150 = phi i64 [ %588, %block_401590 ], [ %415, %block_4015d1 ]

  %151 = phi %struct.Memory* [ %587, %block_401590 ], [ %414, %block_4015d1 ]

  %152 = add i64 %150, -64

  %153 = inttoptr i64 %152 to i32*

  %154 = load i32, i32* %153

  %155 = add i32 %154, -10

  %156 = icmp eq i32 %155, 0

  %157 = lshr i32 %155, 31

  %158 = trunc i32 %157 to i8

  %159 = lshr i32 %154, 31

  %160 = xor i32 %157, %159

  %161 = add nuw nsw i32 %160, %159

  %162 = icmp eq i32 %161, 2

  %163 = icmp ne i8 %158, 0

  %164 = xor i1 %163, %162

  %165 = or i1 %156, %164

  %166 = select i1 %165, i64 10, i64 55

  %167 = add i64 %149, %166

  br i1 %165, label %block_4015d1, label %block_4015fe



block_401652:                                     ; preds = %block_40163e, %block_401648

  %168 = phi i64 [ %349, %block_40163e ], [ %306, %block_401648 ]

  %169 = phi %struct.Memory* [ %343, %block_40163e ], [ %305, %block_401648 ]

  %170 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %171 = zext i32 %170 to i64

  %172 = add i64 %168, 24

  %173 = load i64, i64* %14, align 8, !tbaa !1240

  %174 = add i64 %173, -8

  %175 = inttoptr i64 %174 to i64*

  store i64 %172, i64* %175

  %176 = load i64, i64* %11, align 8, !alias.scope !1466, !noalias !1469

  %177 = load i64, i64* %1057, align 8, !alias.scope !1466, !noalias !1469

  %178 = load i64, i64* %1058, align 8, !alias.scope !1466, !noalias !1469

  %179 = load i64, i64* %1059, align 8, !alias.scope !1466, !noalias !1469

  %180 = inttoptr i64 %173 to i64*

  %181 = load i64, i64* %180

  %182 = add i64 %173, 8

  %183 = inttoptr i64 %182 to i64*

  %184 = load i64, i64* %183

  %185 = add i64 %173, 16

  %186 = inttoptr i64 %185 to i64*

  %187 = load i64, i64* %186

  %188 = add i64 %173, 24

  %189 = inttoptr i64 %188 to i64*

  %190 = load i64, i64* %189

  %191 = add i64 %173, 32

  %192 = inttoptr i64 %191 to i64*

  %193 = load i64, i64* %192

  %194 = add i64 %173, 40

  %195 = inttoptr i64 %194 to i64*

  %196 = load i64, i64* %195

  %197 = add i64 %173, 48

  %198 = inttoptr i64 %197 to i64*

  %199 = load i64, i64* %198

  %200 = add i64 %173, 56

  %201 = inttoptr i64 %200 to i64*

  %202 = load i64, i64* %201

  %203 = add i64 %173, 64

  %204 = inttoptr i64 %203 to i64*

  %205 = load i64, i64* %204

  %206 = add i64 %173, 72

  %207 = inttoptr i64 %206 to i64*

  %208 = load i64, i64* %207

  %209 = inttoptr i64 %174 to i64*

  %210 = load i64, i64* %209

  store i64 %210, i64* %3, align 8, !alias.scope !1466, !noalias !1469

  store i64 %173, i64* %14, align 8, !alias.scope !1466, !noalias !1469

  %211 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1139), i64 %171, i64 %176, i64 %177, i64 %178, i64 %179, i64 %181, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199, i64 %202, i64 %205, i64 %208), !noalias !1466

  %212 = load i64, i64* %3, align 8

  %213 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %214 = add i32 %213, -51

  %215 = icmp eq i32 %214, 0

  %216 = load i64, i64* %15, align 8

  %217 = add i64 %216, -132

  %218 = trunc i64 %211 to i32

  %219 = inttoptr i64 %217 to i32*

  store i32 %218, i32* %219

  %220 = select i1 %215, i64 31, i64 20

  %221 = add i64 %212, %220

  br i1 %215, label %block_401689, label %block_40167e



block_4014bb:                                     ; preds = %block_4014a7, %block_4014b1

  %222 = phi i64 [ %358, %block_4014a7 ], [ %314, %block_4014b1 ]

  %223 = phi i64 [ %351, %block_4014a7 ], [ %313, %block_4014b1 ]

  %224 = phi %struct.Memory* [ %352, %block_4014a7 ], [ %312, %block_4014b1 ]

  %225 = add i64 %223, -60

  %226 = add i64 %222, 7

  %227 = inttoptr i64 %225 to i32*

  store i32 0, i32* %227

  br label %block_4014c2



block_40167e:                                     ; preds = %block_401652

  %228 = add i64 %221, 11

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  br label %block_401689



block_401478:                                     ; preds = %block_401465, %block_401410

  %229 = phi i64 [ %103, %block_401410 ], [ %119, %block_401465 ]

  %230 = phi %struct.Memory* [ %84, %block_401410 ], [ %84, %block_401465 ]

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1334

  store i8 1, i8* %54, align 1, !tbaa !1348

  store i8 1, i8* %62, align 1, !tbaa !1350

  store i8 0, i8* %65, align 1, !tbaa !1351

  store i8 0, i8* %71, align 1, !tbaa !1352

  store i8 0, i8* %59, align 1, !tbaa !1349

  %231 = add i64 %229, -2552

  %232 = add i64 %229, 7

  %233 = load i64, i64* %14, align 8, !tbaa !1240

  %234 = add i64 %233, -8

  %235 = inttoptr i64 %234 to i64*

  store i64 %232, i64* %235

  store i64 %234, i64* %14, align 8, !tbaa !1240

  %236 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %231, %struct.Memory* %230)

  %237 = load i64, i64* %15, align 8

  %238 = add i64 %237, -68

  %239 = load i64, i64* %3, align 8

  %240 = inttoptr i64 %238 to i32*

  %241 = load i32, i32* %240

  store i8 0, i8* %47, align 1, !tbaa !1334

  %242 = and i32 %241, 255

  %243 = tail call i32 @llvm.ctpop.i32(i32 %242) #9

  %244 = trunc i32 %243 to i8

  %245 = and i8 %244, 1

  %246 = xor i8 %245, 1

  store i8 %246, i8* %54, align 1, !tbaa !1348

  store i8 0, i8* %59, align 1, !tbaa !1349

  %247 = icmp eq i32 %241, 0

  %248 = zext i1 %247 to i8

  store i8 %248, i8* %62, align 1, !tbaa !1350

  %249 = lshr i32 %241, 31

  %250 = trunc i32 %249 to i8

  store i8 %250, i8* %65, align 1, !tbaa !1351

  store i8 0, i8* %71, align 1, !tbaa !1352

  %251 = select i1 %247, i64 40, i64 10

  %252 = add i64 %239, %251

  br i1 %247, label %block_4014a7, label %block_401489



block_4014c2:                                     ; preds = %block_4014cc, %block_4014bb

  %253 = phi i64 [ %226, %block_4014bb ], [ %340, %block_4014cc ]

  %254 = phi %struct.Memory* [ %224, %block_4014bb ], [ %254, %block_4014cc ]

  %255 = inttoptr i64 %225 to i32*

  %256 = load i32, i32* %255

  %257 = add i32 %256, -5

  %258 = lshr i32 %257, 31

  %259 = trunc i32 %258 to i8

  %260 = lshr i32 %256, 31

  %261 = xor i32 %258, %260

  %262 = add nuw nsw i32 %261, %260

  %263 = icmp eq i32 %262, 2

  %264 = icmp ne i8 %259, 0

  %265 = xor i1 %264, %263

  %266 = select i1 %265, i64 10, i64 68

  %267 = add i64 %253, %266

  br i1 %265, label %block_4014cc, label %block_401506



block_401634:                                     ; preds = %block_401625

  store i64 2, i64* %13, align 8, !tbaa !1240

  %268 = add i64 %141, -2884

  %269 = add i64 %141, 10

  %270 = load i64, i64* %14, align 8, !tbaa !1240

  %271 = add i64 %270, -8

  %272 = inttoptr i64 %271 to i64*

  store i64 %269, i64* %272

  store i64 %271, i64* %14, align 8, !tbaa !1240

  %273 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %268, %struct.Memory* %133)

  %274 = load i64, i64* %15, align 8

  %275 = load i64, i64* %3, align 8

  br label %block_40163e



block_4015fe:                                     ; preds = %block_4015c7

  store i64 0, i64* %13, align 8, !tbaa !1240

  %276 = add i64 %167, -2830

  %277 = add i64 %167, 7

  %278 = load i64, i64* %14, align 8, !tbaa !1240

  %279 = add i64 %278, -8

  %280 = inttoptr i64 %279 to i64*

  store i64 %277, i64* %280

  store i64 %279, i64* %14, align 8, !tbaa !1240

  %281 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %276, %struct.Memory* %151)

  %282 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1334

  store i8 1, i8* %54, align 1, !tbaa !1348

  store i8 1, i8* %62, align 1, !tbaa !1350

  store i8 0, i8* %65, align 1, !tbaa !1351

  store i8 0, i8* %71, align 1, !tbaa !1352

  store i8 0, i8* %59, align 1, !tbaa !1349

  %283 = add i64 %282, -2757

  %284 = add i64 %282, 7

  %285 = load i64, i64* %14, align 8, !tbaa !1240

  %286 = add i64 %285, -8

  %287 = inttoptr i64 %286 to i64*

  store i64 %284, i64* %287

  store i64 %286, i64* %14, align 8, !tbaa !1240

  %288 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %283, %struct.Memory* %281)

  %289 = load i64, i64* %15, align 8

  %290 = add i64 %289, -80

  %291 = load i64, i64* %3, align 8

  %292 = load double, double* %597, align 1

  %293 = inttoptr i64 %290 to double*

  store double %292, double* %293

  %294 = add i64 %289, -68

  %295 = inttoptr i64 %294 to i32*

  %296 = load i32, i32* %295

  %297 = icmp eq i32 %296, 0

  %298 = select i1 %297, i64 25, i64 15

  %299 = add i64 %291, %298

  br i1 %297, label %block_401625, label %block_40161b



block_401648:                                     ; preds = %block_40163e

  store i64 3, i64* %13, align 8, !tbaa !1240

  %300 = add i64 %349, -2904

  %301 = add i64 %349, 10

  %302 = load i64, i64* %14, align 8, !tbaa !1240

  %303 = add i64 %302, -8

  %304 = inttoptr i64 %303 to i64*

  store i64 %301, i64* %304

  store i64 %303, i64* %14, align 8, !tbaa !1240

  %305 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %300, %struct.Memory* %343)

  %306 = load i64, i64* %3, align 8

  br label %block_401652



block_4014b1:                                     ; preds = %block_4014a7

  store i64 3, i64* %13, align 8, !tbaa !1240

  %307 = add i64 %358, -2577

  %308 = add i64 %358, 10

  %309 = load i64, i64* %14, align 8, !tbaa !1240

  %310 = add i64 %309, -8

  %311 = inttoptr i64 %310 to i64*

  store i64 %308, i64* %311

  store i64 %310, i64* %14, align 8, !tbaa !1240

  %312 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %307, %struct.Memory* %352)

  %313 = load i64, i64* %15, align 8

  %314 = load i64, i64* %3, align 8

  br label %block_4014bb



block_4017fa:                                     ; preds = %block_4017f4

  %315 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 832) to double*)

  store double %315, double* %597, align 1, !tbaa !1373

  store double 0.000000e+00, double* %599, align 1, !tbaa !1373

  %316 = add i64 %1044, -96

  %317 = add i64 %124, 13

  %318 = inttoptr i64 %316 to double*

  store double %315, double* %318

  br label %block_401807



block_4014cc:                                     ; preds = %block_4014c2

  %319 = sext i32 %256 to i64

  %320 = shl nsw i64 %319, 2

  %321 = add i64 %320, ptrtoint (%C_test_index_array_type* @C_test_index_array to i64)

  %322 = inttoptr i64 %321 to i32*

  %323 = load i32, i32* %322

  %324 = add i64 %320, ptrtoint (%test_index_array_type* @test_index_array to i64)

  %325 = inttoptr i64 %324 to i32*

  store i32 %323, i32* %325

  %326 = inttoptr i64 %225 to i32*

  %327 = load i32, i32* %326

  %328 = sext i32 %327 to i64

  %329 = shl nsw i64 %328, 2

  %330 = add i64 %329, ptrtoint (%C_test_rank_array_type* @C_test_rank_array to i64)

  %331 = inttoptr i64 %330 to i32*

  %332 = load i32, i32* %331

  %333 = zext i32 %332 to i64

  store i64 %333, i64* %10, align 8, !tbaa !1240

  %334 = add i64 %329, ptrtoint (%test_rank_array_type* @test_rank_array to i64)

  %335 = inttoptr i64 %334 to i32*

  store i32 %332, i32* %335

  %336 = inttoptr i64 %225 to i32*

  %337 = load i32, i32* %336

  %338 = add i32 %337, 1

  %339 = inttoptr i64 %225 to i32*

  store i32 %338, i32* %339

  %340 = add i64 %267, -10

  br label %block_4014c2



block_40163e:                                     ; preds = %block_401634, %block_401625

  %341 = phi i64 [ %141, %block_401625 ], [ %275, %block_401634 ]

  %342 = phi i64 [ %134, %block_401625 ], [ %274, %block_401634 ]

  %343 = phi %struct.Memory* [ %133, %block_401625 ], [ %273, %block_401634 ]

  %344 = add i64 %342, -68

  %345 = inttoptr i64 %344 to i32*

  %346 = load i32, i32* %345

  %347 = icmp eq i32 %346, 0

  %348 = select i1 %347, i64 20, i64 10

  %349 = add i64 %341, %348

  br i1 %347, label %block_401652, label %block_401648



block_4014a7:                                     ; preds = %block_401489, %block_401478

  %350 = phi i64 [ %252, %block_401478 ], [ %639, %block_401489 ]

  %351 = phi i64 [ %237, %block_401478 ], [ %638, %block_401489 ]

  %352 = phi %struct.Memory* [ %236, %block_401478 ], [ %637, %block_401489 ]

  %353 = add i64 %351, -68

  %354 = inttoptr i64 %353 to i32*

  %355 = load i32, i32* %354

  %356 = icmp eq i32 %355, 0

  %357 = select i1 %356, i64 20, i64 10

  %358 = add i64 %350, %357

  br i1 %356, label %block_4014bb, label %block_4014b1



block_4015d1:                                     ; preds = %block_4015c7

  %359 = zext i32 %154 to i64

  store i64 %359, i64* %12, align 8, !tbaa !1240

  %360 = add i64 %167, 20

  %361 = load i64, i64* %14, align 8, !tbaa !1240

  %362 = add i64 %361, -8

  %363 = inttoptr i64 %362 to i64*

  store i64 %360, i64* %363

  %364 = load i64, i64* %11, align 8, !alias.scope !1471, !noalias !1474

  %365 = load i64, i64* %1057, align 8, !alias.scope !1471, !noalias !1474

  %366 = load i64, i64* %1058, align 8, !alias.scope !1471, !noalias !1474

  %367 = load i64, i64* %1059, align 8, !alias.scope !1471, !noalias !1474

  %368 = inttoptr i64 %361 to i64*

  %369 = load i64, i64* %368

  %370 = add i64 %361, 8

  %371 = inttoptr i64 %370 to i64*

  %372 = load i64, i64* %371

  %373 = add i64 %361, 16

  %374 = inttoptr i64 %373 to i64*

  %375 = load i64, i64* %374

  %376 = add i64 %361, 24

  %377 = inttoptr i64 %376 to i64*

  %378 = load i64, i64* %377

  %379 = add i64 %361, 32

  %380 = inttoptr i64 %379 to i64*

  %381 = load i64, i64* %380

  %382 = add i64 %361, 40

  %383 = inttoptr i64 %382 to i64*

  %384 = load i64, i64* %383

  %385 = add i64 %361, 48

  %386 = inttoptr i64 %385 to i64*

  %387 = load i64, i64* %386

  %388 = add i64 %361, 56

  %389 = inttoptr i64 %388 to i64*

  %390 = load i64, i64* %389

  %391 = add i64 %361, 64

  %392 = inttoptr i64 %391 to i64*

  %393 = load i64, i64* %392

  %394 = add i64 %361, 72

  %395 = inttoptr i64 %394 to i64*

  %396 = load i64, i64* %395

  %397 = inttoptr i64 %362 to i64*

  %398 = load i64, i64* %397

  store i64 %398, i64* %3, align 8, !alias.scope !1471, !noalias !1474

  store i64 %361, i64* %14, align 8, !alias.scope !1471, !noalias !1474

  %399 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1127), i64 %359, i64 %364, i64 %365, i64 %366, i64 %367, i64 %369, i64 %372, i64 %375, i64 %378, i64 %381, i64 %384, i64 %387, i64 %390, i64 %393, i64 %396), !noalias !1471

  %400 = load i64, i64* %15, align 8

  %401 = add i64 %400, -64

  %402 = load i64, i64* %3, align 8

  %403 = inttoptr i64 %401 to i32*

  %404 = load i32, i32* %403

  %405 = zext i32 %404 to i64

  store i64 %405, i64* %13, align 8, !tbaa !1240

  %406 = add i64 %400, -128

  %407 = trunc i64 %399 to i32

  %408 = inttoptr i64 %406 to i32*

  store i32 %407, i32* %408

  %409 = add i64 %402, -1429

  %410 = add i64 %402, 11

  %411 = load i64, i64* %14, align 8, !tbaa !1240

  %412 = add i64 %411, -8

  %413 = inttoptr i64 %412 to i64*

  store i64 %410, i64* %413

  store i64 %412, i64* %14, align 8, !tbaa !1240

  %414 = tail call %struct.Memory* @sub_401050_rank(%struct.State* nonnull %0, i64 %409, %struct.Memory* %151)

  %415 = load i64, i64* %15, align 8

  %416 = add i64 %415, -64

  %417 = load i64, i64* %3, align 8

  %418 = inttoptr i64 %416 to i32*

  %419 = load i32, i32* %418

  %420 = add i32 %419, 1

  %421 = inttoptr i64 %416 to i32*

  store i32 %420, i32* %421

  %422 = add i64 %417, -41

  br label %block_4015c7



block_40161b:                                     ; preds = %block_4015fe

  store i64 2, i64* %13, align 8, !tbaa !1240

  %423 = add i64 %299, -2939

  %424 = add i64 %299, 10

  %425 = load i64, i64* %14, align 8, !tbaa !1240

  %426 = add i64 %425, -8

  %427 = inttoptr i64 %426 to i64*

  store i64 %424, i64* %427

  store i64 %426, i64* %14, align 8, !tbaa !1240

  %428 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %423, %struct.Memory* %288)

  %429 = load i64, i64* %3, align 8

  br label %block_401625



block_401689:                                     ; preds = %block_40167e, %block_401652

  %430 = phi i64 [ %221, %block_401652 ], [ %228, %block_40167e ]

  %431 = phi %struct.Memory* [ %169, %block_401652 ], [ %169, %block_40167e ]

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1164), i64* %13, align 8, !tbaa !1240

  store i64 67, i64* %12, align 8, !tbaa !1240

  store i64 2097152, i64* %11, align 8, !tbaa !1240

  store i64 0, i64* %1058, align 8, !tbaa !1240

  store i64 10, i64* %1059, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1179), i64* %16, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1185), i64* %17, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1197), i64* %9, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1201), i64* %20, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1207), i64* %21, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1211), i64* %18, align 8, !tbaa !1240

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1223), i64* %19, align 8, !tbaa !1240

  %432 = add i64 %216, -144

  %433 = inttoptr i64 %432 to i64*

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1167), i64* %433

  %434 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 872) to double*)

  %435 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 880) to double*)

  %436 = add i64 %216, -80

  %437 = inttoptr i64 %436 to double*

  %438 = load double, double* %437

  %439 = bitcast %union.VectorReg* %24 to double*

  store double %438, double* %439, align 1, !tbaa !1373

  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1

  %441 = bitcast i64* %440 to double*

  store double 0.000000e+00, double* %441, align 1, !tbaa !1373

  %442 = fdiv double %435, %438

  %443 = fdiv double %442, %434

  store double %443, double* %601, align 1, !tbaa !1373

  store i64 0, i64* %602, align 1, !tbaa !1373

  %444 = add i64 %216, -148

  %445 = inttoptr i64 %444 to i32*

  store i32 64, i32* %445

  %446 = load i32, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %447 = add i64 %216, -152

  %448 = inttoptr i64 %447 to i32*

  store i32 %446, i32* %448

  %449 = inttoptr i64 %444 to i32*

  %450 = load i32, i32* %449

  %451 = zext i32 %450 to i64

  store i64 %451, i64* %10, align 8, !tbaa !1240

  %452 = bitcast double %438 to <2 x i32>

  %453 = extractelement <2 x i32> %452, i32 0

  %454 = bitcast [32 x %union.VectorReg]* %22 to i32*

  store i32 %453, i32* %454, align 1, !tbaa !1476

  %455 = extractelement <2 x i32> %452, i32 1

  %456 = getelementptr inbounds i8, i8* %595, i64 4

  %457 = bitcast i8* %456 to i32*

  store i32 %455, i32* %457, align 1, !tbaa !1476

  %458 = bitcast i64* %598 to i32*

  store i32 0, i32* %458, align 1, !tbaa !1476

  %459 = getelementptr inbounds i8, i8* %595, i64 12

  %460 = bitcast i8* %459 to i32*

  store i32 0, i32* %460, align 1, !tbaa !1476

  %461 = load i64, i64* %15, align 8

  %462 = add i64 %461, -160

  %463 = inttoptr i64 %462 to i64*

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1232), i64* %463

  %464 = add i64 %461, -144

  %465 = inttoptr i64 %464 to i64*

  %466 = load i64, i64* %465

  %467 = load i64, i64* %14, align 8

  %468 = inttoptr i64 %467 to i64*

  store i64 %466, i64* %468

  %469 = add i64 %461, -152

  %470 = inttoptr i64 %469 to i32*

  %471 = load i32, i32* %470

  %472 = add i64 %467, 8

  %473 = inttoptr i64 %472 to i32*

  store i32 %471, i32* %473

  %474 = add i64 %467, 16

  %475 = load i64, i64* %16, align 8

  %476 = inttoptr i64 %474 to i64*

  store i64 %475, i64* %476

  %477 = add i64 %467, 24

  %478 = load i64, i64* %17, align 8

  %479 = inttoptr i64 %477 to i64*

  store i64 %478, i64* %479

  %480 = add i64 %467, 32

  %481 = load i64, i64* %9, align 8

  %482 = inttoptr i64 %480 to i64*

  store i64 %481, i64* %482

  %483 = add i64 %467, 40

  %484 = load i64, i64* %20, align 8

  %485 = inttoptr i64 %483 to i64*

  store i64 %484, i64* %485

  %486 = add i64 %467, 48

  %487 = load i64, i64* %21, align 8

  %488 = inttoptr i64 %486 to i64*

  store i64 %487, i64* %488

  %489 = add i64 %467, 56

  %490 = load i64, i64* %18, align 8

  %491 = inttoptr i64 %489 to i64*

  store i64 %490, i64* %491

  %492 = add i64 %467, 64

  %493 = load i64, i64* %19, align 8

  %494 = inttoptr i64 %492 to i64*

  store i64 %493, i64* %494

  %495 = inttoptr i64 %462 to i64*

  %496 = load i64, i64* %495

  %497 = add i64 %467, 72

  %498 = inttoptr i64 %497 to i64*

  store i64 %496, i64* %498

  %499 = add i64 %430, -4025

  %500 = add i64 %430, 269

  %501 = add i64 %467, -8

  %502 = inttoptr i64 %501 to i64*

  store i64 %500, i64* %502

  store i64 %501, i64* %14, align 8, !tbaa !1240

  %503 = tail call %struct.Memory* @sub_4006d0_c_print_results(%struct.State* nonnull %0, i64 %499, %struct.Memory* %431)

  %504 = load i64, i64* %15, align 8

  %505 = add i64 %504, -68

  %506 = load i64, i64* %3, align 8

  %507 = inttoptr i64 %505 to i32*

  %508 = load i32, i32* %507

  store i8 0, i8* %47, align 1, !tbaa !1334

  %509 = and i32 %508, 255

  %510 = tail call i32 @llvm.ctpop.i32(i32 %509) #9

  %511 = trunc i32 %510 to i8

  %512 = and i8 %511, 1

  %513 = xor i8 %512, 1

  store i8 %513, i8* %54, align 1, !tbaa !1348

  store i8 0, i8* %59, align 1, !tbaa !1349

  %514 = icmp eq i32 %508, 0

  %515 = zext i1 %514 to i8

  store i8 %515, i8* %62, align 1, !tbaa !1350

  %516 = lshr i32 %508, 31

  %517 = trunc i32 %516 to i8

  store i8 %517, i8* %65, align 1, !tbaa !1351

  store i8 0, i8* %71, align 1, !tbaa !1352

  %518 = select i1 %514, i64 335, i64 10

  %519 = add i64 %506, %518

  br i1 %514, label %block_4018e5, label %block_4017a0



block_401586:                                     ; preds = %block_401567

  store i64 1, i64* %13, align 8, !tbaa !1240

  %520 = add i64 %617, -2710

  %521 = add i64 %617, 10

  %522 = load i64, i64* %14, align 8, !tbaa !1240

  %523 = add i64 %522, -8

  %524 = inttoptr i64 %523 to i64*

  store i64 %521, i64* %524

  store i64 %523, i64* %14, align 8, !tbaa !1240

  %525 = tail call %struct.Memory* @sub_400af0_timer_stop(%struct.State* nonnull %0, i64 %520, %struct.Memory* %609)

  %526 = load i64, i64* %3, align 8

  br label %block_401590



block_401590:                                     ; preds = %block_401567, %block_401586

  %527 = phi i64 [ %617, %block_401567 ], [ %526, %block_401586 ]

  %528 = phi %struct.Memory* [ %609, %block_401567 ], [ %525, %block_401586 ]

  store i64 1, i64* %13, align 8, !tbaa !1240

  %529 = add i64 %527, -1344

  %530 = add i64 %527, 10

  %531 = load i64, i64* %14, align 8, !tbaa !1240

  %532 = add i64 %531, -8

  %533 = inttoptr i64 %532 to i64*

  store i64 %530, i64* %533

  store i64 %532, i64* %14, align 8, !tbaa !1240

  %534 = tail call %struct.Memory* @sub_401050_rank(%struct.State* nonnull %0, i64 %529, %struct.Memory* %528)

  %535 = load i64, i64* %3, align 8

  store i32 0, i32* bitcast (%passed_verification_type* @passed_verification to i32*)

  %536 = add i64 %535, 28

  %537 = load i64, i64* %14, align 8, !tbaa !1240

  %538 = add i64 %537, -8

  %539 = inttoptr i64 %538 to i64*

  store i64 %536, i64* %539

  %540 = load i64, i64* %12, align 8, !alias.scope !1478, !noalias !1481

  %541 = load i64, i64* %11, align 8, !alias.scope !1478, !noalias !1481

  %542 = load i64, i64* %1057, align 8, !alias.scope !1478, !noalias !1481

  %543 = load i64, i64* %1058, align 8, !alias.scope !1478, !noalias !1481

  %544 = load i64, i64* %1059, align 8, !alias.scope !1478, !noalias !1481

  %545 = inttoptr i64 %537 to i64*

  %546 = load i64, i64* %545

  %547 = add i64 %537, 8

  %548 = inttoptr i64 %547 to i64*

  %549 = load i64, i64* %548

  %550 = add i64 %537, 16

  %551 = inttoptr i64 %550 to i64*

  %552 = load i64, i64* %551

  %553 = add i64 %537, 24

  %554 = inttoptr i64 %553 to i64*

  %555 = load i64, i64* %554

  %556 = add i64 %537, 32

  %557 = inttoptr i64 %556 to i64*

  %558 = load i64, i64* %557

  %559 = add i64 %537, 40

  %560 = inttoptr i64 %559 to i64*

  %561 = load i64, i64* %560

  %562 = add i64 %537, 48

  %563 = inttoptr i64 %562 to i64*

  %564 = load i64, i64* %563

  %565 = add i64 %537, 56

  %566 = inttoptr i64 %565 to i64*

  %567 = load i64, i64* %566

  %568 = add i64 %537, 64

  %569 = inttoptr i64 %568 to i64*

  %570 = load i64, i64* %569

  %571 = add i64 %537, 72

  %572 = inttoptr i64 %571 to i64*

  %573 = load i64, i64* %572

  %574 = inttoptr i64 %538 to i64*

  %575 = load i64, i64* %574

  store i64 %575, i64* %3, align 8, !alias.scope !1478, !noalias !1481

  store i64 %537, i64* %14, align 8, !alias.scope !1478, !noalias !1481

  %576 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1112), i64 %540, i64 %541, i64 %542, i64 %543, i64 %544, i64 %546, i64 %549, i64 %552, i64 %555, i64 %558, i64 %561, i64 %564, i64 %567, i64 %570, i64 %573), !noalias !1478

  %577 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  %578 = load i64, i64* %15, align 8

  %579 = add i64 %578, -124

  %580 = trunc i64 %576 to i32

  %581 = inttoptr i64 %579 to i32*

  store i32 %580, i32* %581

  %582 = add i64 %577, -2838

  %583 = add i64 %577, 10

  %584 = load i64, i64* %14, align 8, !tbaa !1240

  %585 = add i64 %584, -8

  %586 = inttoptr i64 %585 to i64*

  store i64 %583, i64* %586

  store i64 %585, i64* %14, align 8, !tbaa !1240

  %587 = tail call %struct.Memory* @sub_400aa0_timer_start(%struct.State* nonnull %0, i64 %582, %struct.Memory* %534)

  %588 = load i64, i64* %15, align 8

  %589 = add i64 %588, -64

  %590 = load i64, i64* %3, align 8

  %591 = add i64 %590, 7

  %592 = inttoptr i64 %589 to i32*

  store i32 1, i32* %592

  br label %block_4015c7



block_401567:                                     ; preds = %block_401506, %block_40155d

  %593 = phi i64 [ %1195, %block_401506 ], [ %148, %block_40155d ]

  %594 = phi %struct.Memory* [ %254, %block_401506 ], [ %147, %block_40155d ]

  %595 = bitcast [32 x %union.VectorReg]* %22 to i8*

  %596 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 856) to double*)

  %597 = bitcast [32 x %union.VectorReg]* %22 to double*

  store double %596, double* %597, align 1, !tbaa !1373

  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %599 = bitcast i64* %598 to double*

  store double 0.000000e+00, double* %599, align 1, !tbaa !1373

  %600 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 864) to double*)

  %601 = bitcast %union.VectorReg* %23 to double*

  store double %600, double* %601, align 1, !tbaa !1373

  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1

  %603 = bitcast i64* %602 to double*

  store double 0.000000e+00, double* %603, align 1, !tbaa !1373

  %604 = add i64 %593, -1783

  %605 = add i64 %593, 21

  %606 = load i64, i64* %14, align 8, !tbaa !1240

  %607 = add i64 %606, -8

  %608 = inttoptr i64 %607 to i64*

  store i64 %605, i64* %608

  store i64 %607, i64* %14, align 8, !tbaa !1240

  %609 = tail call %struct.Memory* @sub_400e70_create_seq(%struct.State* nonnull %0, i64 %604, %struct.Memory* %594)

  %610 = load i64, i64* %15, align 8

  %611 = add i64 %610, -68

  %612 = load i64, i64* %3, align 8

  %613 = inttoptr i64 %611 to i32*

  %614 = load i32, i32* %613

  %615 = icmp eq i32 %614, 0

  %616 = select i1 %615, i64 20, i64 10

  %617 = add i64 %612, %616

  br i1 %615, label %block_401590, label %block_401586



block_401489:                                     ; preds = %block_401478

  store i64 1, i64* %13, align 8, !tbaa !1240

  %618 = add i64 %252, -2569

  %619 = add i64 %252, 10

  %620 = load i64, i64* %14, align 8, !tbaa !1240

  %621 = add i64 %620, -8

  %622 = inttoptr i64 %621 to i64*

  store i64 %619, i64* %622

  store i64 %621, i64* %14, align 8, !tbaa !1240

  %623 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %618, %struct.Memory* %236)

  %624 = load i64, i64* %3, align 8

  store i64 2, i64* %13, align 8, !tbaa !1240

  %625 = add i64 %624, -2579

  %626 = add i64 %624, 10

  %627 = load i64, i64* %14, align 8, !tbaa !1240

  %628 = add i64 %627, -8

  %629 = inttoptr i64 %628 to i64*

  store i64 %626, i64* %629

  store i64 %628, i64* %14, align 8, !tbaa !1240

  %630 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %625, %struct.Memory* %623)

  %631 = load i64, i64* %3, align 8

  store i64 3, i64* %13, align 8, !tbaa !1240

  %632 = add i64 %631, -2589

  %633 = add i64 %631, 10

  %634 = load i64, i64* %14, align 8, !tbaa !1240

  %635 = add i64 %634, -8

  %636 = inttoptr i64 %635 to i64*

  store i64 %633, i64* %636

  store i64 %635, i64* %14, align 8, !tbaa !1240

  %637 = tail call %struct.Memory* @sub_400a80_timer_clear(%struct.State* nonnull %0, i64 %632, %struct.Memory* %630)

  %638 = load i64, i64* %15, align 8

  %639 = load i64, i64* %3, align 8

  br label %block_4014a7



block_4018e5:                                     ; preds = %block_401807, %block_401689

  %640 = phi i64 [ %519, %block_401689 ], [ %906, %block_401807 ]

  %641 = phi %struct.Memory* [ %503, %block_401689 ], [ %841, %block_401807 ]

  %642 = add i64 %640, -3365

  %643 = add i64 %640, 5

  %644 = load i64, i64* %14, align 8, !tbaa !1240

  %645 = add i64 %644, -8

  %646 = inttoptr i64 %645 to i64*

  store i64 %643, i64* %646

  store i64 %645, i64* %14, align 8, !tbaa !1240

  %647 = tail call %struct.Memory* @sub_400bc0_deallocate_arrays(%struct.State* nonnull %0, i64 %642, %struct.Memory* %641)

  store i64 0, i64* %8, align 8, !tbaa !1240

  %648 = load i64, i64* %14, align 8

  %649 = add i64 %648, 232

  %650 = icmp ugt i64 %648, -233

  %651 = zext i1 %650 to i8

  store i8 %651, i8* %47, align 1, !tbaa !1334

  %652 = trunc i64 %649 to i32

  %653 = and i32 %652, 255

  %654 = tail call i32 @llvm.ctpop.i32(i32 %653) #9

  %655 = trunc i32 %654 to i8

  %656 = and i8 %655, 1

  %657 = xor i8 %656, 1

  store i8 %657, i8* %54, align 1, !tbaa !1348

  %658 = xor i64 %649, %648

  %659 = lshr i64 %658, 4

  %660 = trunc i64 %659 to i8

  %661 = and i8 %660, 1

  store i8 %661, i8* %59, align 1, !tbaa !1349

  %662 = icmp eq i64 %649, 0

  %663 = zext i1 %662 to i8

  store i8 %663, i8* %62, align 1, !tbaa !1350

  %664 = lshr i64 %649, 63

  %665 = trunc i64 %664 to i8

  store i8 %665, i8* %65, align 1, !tbaa !1351

  %666 = lshr i64 %648, 63

  %667 = xor i64 %664, %666

  %668 = add nuw nsw i64 %667, %664

  %669 = icmp eq i64 %668, 2

  %670 = zext i1 %669 to i8

  store i8 %670, i8* %71, align 1, !tbaa !1352

  %671 = add i64 %648, 240

  %672 = inttoptr i64 %649 to i64*

  %673 = load i64, i64* %672

  store i64 %673, i64* %9, align 8, !tbaa !1240

  %674 = add i64 %648, 248

  %675 = inttoptr i64 %671 to i64*

  %676 = load i64, i64* %675

  store i64 %676, i64* %18, align 8, !tbaa !1240

  %677 = add i64 %648, 256

  %678 = inttoptr i64 %674 to i64*

  %679 = load i64, i64* %678

  store i64 %679, i64* %19, align 8, !tbaa !1240

  %680 = add i64 %648, 264

  %681 = inttoptr i64 %677 to i64*

  %682 = load i64, i64* %681

  store i64 %682, i64* %20, align 8, !tbaa !1240

  %683 = add i64 %648, 272

  %684 = inttoptr i64 %680 to i64*

  %685 = load i64, i64* %684

  store i64 %685, i64* %21, align 8, !tbaa !1240

  %686 = add i64 %648, 280

  %687 = inttoptr i64 %683 to i64*

  %688 = load i64, i64* %687

  store i64 %688, i64* %15, align 8, !tbaa !1240

  %689 = inttoptr i64 %686 to i64*

  %690 = load i64, i64* %689

  store i64 %690, i64* %3, align 8, !tbaa !1240

  %691 = add i64 %648, 288

  store i64 %691, i64* %14, align 8, !tbaa !1240

  ret %struct.Memory* %647



block_401807:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_4017fa, %block_4017f4

  %692 = phi i64 [ %1048, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %124, %block_4017f4 ], [ %317, %block_4017fa ]

  %693 = phi %struct.Memory* [ %1045, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %1045, %block_4017f4 ], [ %1045, %block_4017fa ]

  store i64 1, i64* %13, align 8, !tbaa !1240

  %694 = add i64 %692, -3271

  %695 = add i64 %692, 10

  %696 = load i64, i64* %14, align 8, !tbaa !1240

  %697 = add i64 %696, -8

  %698 = inttoptr i64 %697 to i64*

  store i64 %695, i64* %698

  store i64 %697, i64* %14, align 8, !tbaa !1240

  %699 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %694, %struct.Memory* %693)

  %700 = load i64, i64* %3, align 8

  %701 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 888) to double*)

  %702 = load i64, i64* %15, align 8

  %703 = add i64 %702, -80

  %704 = load double, double* %597, align 1

  %705 = inttoptr i64 %703 to double*

  store double %704, double* %705

  %706 = inttoptr i64 %703 to double*

  %707 = load double, double* %706

  %708 = add i64 %702, -96

  %709 = inttoptr i64 %708 to double*

  %710 = load double, double* %709

  %711 = fdiv double %707, %710

  %712 = fmul double %711, %701

  %713 = add i64 %702, -104

  %714 = inttoptr i64 %713 to double*

  store double %712, double* %714

  %715 = inttoptr i64 %703 to double*

  %716 = load double, double* %715

  store double %716, double* %597, align 1, !tbaa !1373

  store double 0.000000e+00, double* %599, align 1, !tbaa !1373

  %717 = inttoptr i64 %713 to double*

  %718 = load double, double* %717

  store double %718, double* %601, align 1, !tbaa !1373

  store double 0.000000e+00, double* %603, align 1, !tbaa !1373

  %719 = add i64 %700, 59

  %720 = load i64, i64* %14, align 8, !tbaa !1240

  %721 = add i64 %720, -8

  %722 = inttoptr i64 %721 to i64*

  store i64 %719, i64* %722

  %723 = load i64, i64* %12, align 8, !alias.scope !1483, !noalias !1486

  %724 = load i64, i64* %11, align 8, !alias.scope !1483, !noalias !1486

  %725 = load i64, i64* %1057, align 8, !alias.scope !1483, !noalias !1486

  %726 = load i64, i64* %1058, align 8, !alias.scope !1483, !noalias !1486

  %727 = load i64, i64* %1059, align 8, !alias.scope !1483, !noalias !1486

  %728 = inttoptr i64 %720 to i64*

  %729 = load i64, i64* %728

  %730 = add i64 %720, 8

  %731 = inttoptr i64 %730 to i64*

  %732 = load i64, i64* %731

  %733 = add i64 %720, 16

  %734 = inttoptr i64 %733 to i64*

  %735 = load i64, i64* %734

  %736 = add i64 %720, 24

  %737 = inttoptr i64 %736 to i64*

  %738 = load i64, i64* %737

  %739 = add i64 %720, 32

  %740 = inttoptr i64 %739 to i64*

  %741 = load i64, i64* %740

  %742 = add i64 %720, 40

  %743 = inttoptr i64 %742 to i64*

  %744 = load i64, i64* %743

  %745 = add i64 %720, 48

  %746 = inttoptr i64 %745 to i64*

  %747 = load i64, i64* %746

  %748 = add i64 %720, 56

  %749 = inttoptr i64 %748 to i64*

  %750 = load i64, i64* %749

  %751 = add i64 %720, 64

  %752 = inttoptr i64 %751 to i64*

  %753 = load i64, i64* %752

  %754 = add i64 %720, 72

  %755 = inttoptr i64 %754 to i64*

  %756 = load i64, i64* %755

  %757 = inttoptr i64 %721 to i64*

  %758 = load i64, i64* %757

  store i64 %758, i64* %3, align 8, !alias.scope !1483, !noalias !1486

  store i64 %720, i64* %14, align 8, !alias.scope !1483, !noalias !1486

  %759 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1299), i64 %723, i64 %724, i64 %725, i64 %726, i64 %727, i64 %729, i64 %732, i64 %735, i64 %738, i64 %741, i64 %744, i64 %747, i64 %750, i64 %753, i64 %756), !noalias !1483

  %760 = load i64, i64* %3, align 8

  store i64 0, i64* %13, align 8, !tbaa !1240

  store i8 0, i8* %47, align 1, !tbaa !1334

  store i8 1, i8* %54, align 1, !tbaa !1348

  store i8 1, i8* %62, align 1, !tbaa !1350

  store i8 0, i8* %65, align 1, !tbaa !1351

  store i8 0, i8* %71, align 1, !tbaa !1352

  store i8 0, i8* %59, align 1, !tbaa !1349

  %761 = load i64, i64* %15, align 8

  %762 = add i64 %761, -172

  %763 = trunc i64 %759 to i32

  %764 = inttoptr i64 %762 to i32*

  store i32 %763, i32* %764

  %765 = add i64 %760, -3340

  %766 = add i64 %760, 13

  %767 = load i64, i64* %14, align 8, !tbaa !1240

  %768 = add i64 %767, -8

  %769 = inttoptr i64 %768 to i64*

  store i64 %766, i64* %769

  store i64 %768, i64* %14, align 8, !tbaa !1240

  %770 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %765, %struct.Memory* %699)

  %771 = load i64, i64* %3, align 8

  %772 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 888) to double*)

  %773 = load i64, i64* %15, align 8

  %774 = add i64 %773, -80

  %775 = load double, double* %597, align 1

  %776 = inttoptr i64 %774 to double*

  store double %775, double* %776

  %777 = inttoptr i64 %774 to double*

  %778 = load double, double* %777

  %779 = add i64 %773, -96

  %780 = inttoptr i64 %779 to double*

  %781 = load double, double* %780

  %782 = fdiv double %778, %781

  %783 = fmul double %782, %772

  %784 = add i64 %773, -104

  %785 = inttoptr i64 %784 to double*

  store double %783, double* %785

  %786 = inttoptr i64 %774 to double*

  %787 = load double, double* %786

  store double %787, double* %597, align 1, !tbaa !1373

  store double 0.000000e+00, double* %599, align 1, !tbaa !1373

  %788 = inttoptr i64 %784 to double*

  %789 = load double, double* %788

  store double %789, double* %601, align 1, !tbaa !1373

  store double 0.000000e+00, double* %603, align 1, !tbaa !1373

  %790 = add i64 %771, 59

  %791 = load i64, i64* %14, align 8, !tbaa !1240

  %792 = add i64 %791, -8

  %793 = inttoptr i64 %792 to i64*

  store i64 %790, i64* %793

  %794 = load i64, i64* %12, align 8, !alias.scope !1488, !noalias !1491

  %795 = load i64, i64* %11, align 8, !alias.scope !1488, !noalias !1491

  %796 = load i64, i64* %1057, align 8, !alias.scope !1488, !noalias !1491

  %797 = load i64, i64* %1058, align 8, !alias.scope !1488, !noalias !1491

  %798 = load i64, i64* %1059, align 8, !alias.scope !1488, !noalias !1491

  %799 = inttoptr i64 %791 to i64*

  %800 = load i64, i64* %799

  %801 = add i64 %791, 8

  %802 = inttoptr i64 %801 to i64*

  %803 = load i64, i64* %802

  %804 = add i64 %791, 16

  %805 = inttoptr i64 %804 to i64*

  %806 = load i64, i64* %805

  %807 = add i64 %791, 24

  %808 = inttoptr i64 %807 to i64*

  %809 = load i64, i64* %808

  %810 = add i64 %791, 32

  %811 = inttoptr i64 %810 to i64*

  %812 = load i64, i64* %811

  %813 = add i64 %791, 40

  %814 = inttoptr i64 %813 to i64*

  %815 = load i64, i64* %814

  %816 = add i64 %791, 48

  %817 = inttoptr i64 %816 to i64*

  %818 = load i64, i64* %817

  %819 = add i64 %791, 56

  %820 = inttoptr i64 %819 to i64*

  %821 = load i64, i64* %820

  %822 = add i64 %791, 64

  %823 = inttoptr i64 %822 to i64*

  %824 = load i64, i64* %823

  %825 = add i64 %791, 72

  %826 = inttoptr i64 %825 to i64*

  %827 = load i64, i64* %826

  %828 = inttoptr i64 %792 to i64*

  %829 = load i64, i64* %828

  store i64 %829, i64* %3, align 8, !alias.scope !1488, !noalias !1491

  store i64 %791, i64* %14, align 8, !alias.scope !1488, !noalias !1491

  %830 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1334), i64 %794, i64 %795, i64 %796, i64 %797, i64 %798, i64 %800, i64 %803, i64 %806, i64 %809, i64 %812, i64 %815, i64 %818, i64 %821, i64 %824, i64 %827), !noalias !1488

  %831 = load i64, i64* %3, align 8

  store i64 2, i64* %13, align 8, !tbaa !1240

  %832 = load i64, i64* %15, align 8

  %833 = add i64 %832, -176

  %834 = trunc i64 %830 to i32

  %835 = inttoptr i64 %833 to i32*

  store i32 %834, i32* %835

  %836 = add i64 %831, -3412

  %837 = add i64 %831, 16

  %838 = load i64, i64* %14, align 8, !tbaa !1240

  %839 = add i64 %838, -8

  %840 = inttoptr i64 %839 to i64*

  store i64 %837, i64* %840

  store i64 %839, i64* %14, align 8, !tbaa !1240

  %841 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %836, %struct.Memory* %770)

  %842 = load i64, i64* %3, align 8

  %843 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 888) to double*)

  %844 = load i64, i64* %15, align 8

  %845 = add i64 %844, -80

  %846 = load double, double* %597, align 1

  %847 = inttoptr i64 %845 to double*

  store double %846, double* %847

  %848 = inttoptr i64 %845 to double*

  %849 = load double, double* %848

  %850 = add i64 %844, -96

  %851 = inttoptr i64 %850 to double*

  %852 = load double, double* %851

  %853 = fdiv double %849, %852

  %854 = fmul double %853, %843

  %855 = add i64 %844, -104

  %856 = inttoptr i64 %855 to double*

  store double %854, double* %856

  %857 = inttoptr i64 %845 to double*

  %858 = load double, double* %857

  store double %858, double* %597, align 1, !tbaa !1373

  store double 0.000000e+00, double* %599, align 1, !tbaa !1373

  %859 = inttoptr i64 %855 to double*

  %860 = load double, double* %859

  store double %860, double* %601, align 1, !tbaa !1373

  store double 0.000000e+00, double* %603, align 1, !tbaa !1373

  %861 = add i64 %842, 59

  %862 = load i64, i64* %14, align 8, !tbaa !1240

  %863 = add i64 %862, -8

  %864 = inttoptr i64 %863 to i64*

  store i64 %861, i64* %864

  %865 = load i64, i64* %12, align 8, !alias.scope !1493, !noalias !1496

  %866 = load i64, i64* %11, align 8, !alias.scope !1493, !noalias !1496

  %867 = load i64, i64* %1057, align 8, !alias.scope !1493, !noalias !1496

  %868 = load i64, i64* %1058, align 8, !alias.scope !1493, !noalias !1496

  %869 = load i64, i64* %1059, align 8, !alias.scope !1493, !noalias !1496

  %870 = inttoptr i64 %862 to i64*

  %871 = load i64, i64* %870

  %872 = add i64 %862, 8

  %873 = inttoptr i64 %872 to i64*

  %874 = load i64, i64* %873

  %875 = add i64 %862, 16

  %876 = inttoptr i64 %875 to i64*

  %877 = load i64, i64* %876

  %878 = add i64 %862, 24

  %879 = inttoptr i64 %878 to i64*

  %880 = load i64, i64* %879

  %881 = add i64 %862, 32

  %882 = inttoptr i64 %881 to i64*

  %883 = load i64, i64* %882

  %884 = add i64 %862, 40

  %885 = inttoptr i64 %884 to i64*

  %886 = load i64, i64* %885

  %887 = add i64 %862, 48

  %888 = inttoptr i64 %887 to i64*

  %889 = load i64, i64* %888

  %890 = add i64 %862, 56

  %891 = inttoptr i64 %890 to i64*

  %892 = load i64, i64* %891

  %893 = add i64 %862, 64

  %894 = inttoptr i64 %893 to i64*

  %895 = load i64, i64* %894

  %896 = add i64 %862, 72

  %897 = inttoptr i64 %896 to i64*

  %898 = load i64, i64* %897

  %899 = inttoptr i64 %863 to i64*

  %900 = load i64, i64* %899

  store i64 %900, i64* %3, align 8, !alias.scope !1493, !noalias !1496

  store i64 %862, i64* %14, align 8, !alias.scope !1493, !noalias !1496

  %901 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1369), i64 %865, i64 %866, i64 %867, i64 %868, i64 %869, i64 %871, i64 %874, i64 %877, i64 %880, i64 %883, i64 %886, i64 %889, i64 %892, i64 %895, i64 %898), !noalias !1493

  %902 = load i64, i64* %15, align 8

  %903 = add i64 %902, -180

  %904 = trunc i64 %901 to i32

  %905 = load i64, i64* %3, align 8

  %906 = add i64 %905, 6

  %907 = inttoptr i64 %903 to i32*

  store i32 %904, i32* %907

  br label %block_4018e5



block_4017a0:                                     ; preds = %block_401689

  store i64 3, i64* %13, align 8, !tbaa !1240

  %908 = add i64 %519, -3168

  %909 = add i64 %519, 10

  %910 = load i64, i64* %14, align 8, !tbaa !1240

  %911 = add i64 %910, -8

  %912 = inttoptr i64 %911 to i64*

  store i64 %909, i64* %912

  store i64 %911, i64* %14, align 8, !tbaa !1240

  %913 = tail call %struct.Memory* @sub_400b40_timer_read(%struct.State* nonnull %0, i64 %908, %struct.Memory* %503)

  %914 = load i64, i64* %3, align 8

  %915 = load i64, i64* %15, align 8

  %916 = add i64 %915, -96

  %917 = load double, double* %597, align 1

  %918 = inttoptr i64 %916 to double*

  store double %917, double* %918

  %919 = add i64 %914, 22

  %920 = load i64, i64* %14, align 8, !tbaa !1240

  %921 = add i64 %920, -8

  %922 = inttoptr i64 %921 to i64*

  store i64 %919, i64* %922

  %923 = load i64, i64* %12, align 8, !alias.scope !1498, !noalias !1501

  %924 = load i64, i64* %11, align 8, !alias.scope !1498, !noalias !1501

  %925 = load i64, i64* %1057, align 8, !alias.scope !1498, !noalias !1501

  %926 = load i64, i64* %1058, align 8, !alias.scope !1498, !noalias !1501

  %927 = load i64, i64* %1059, align 8, !alias.scope !1498, !noalias !1501

  %928 = inttoptr i64 %920 to i64*

  %929 = load i64, i64* %928

  %930 = add i64 %920, 8

  %931 = inttoptr i64 %930 to i64*

  %932 = load i64, i64* %931

  %933 = add i64 %920, 16

  %934 = inttoptr i64 %933 to i64*

  %935 = load i64, i64* %934

  %936 = add i64 %920, 24

  %937 = inttoptr i64 %936 to i64*

  %938 = load i64, i64* %937

  %939 = add i64 %920, 32

  %940 = inttoptr i64 %939 to i64*

  %941 = load i64, i64* %940

  %942 = add i64 %920, 40

  %943 = inttoptr i64 %942 to i64*

  %944 = load i64, i64* %943

  %945 = add i64 %920, 48

  %946 = inttoptr i64 %945 to i64*

  %947 = load i64, i64* %946

  %948 = add i64 %920, 56

  %949 = inttoptr i64 %948 to i64*

  %950 = load i64, i64* %949

  %951 = add i64 %920, 64

  %952 = inttoptr i64 %951 to i64*

  %953 = load i64, i64* %952

  %954 = add i64 %920, 72

  %955 = inttoptr i64 %954 to i64*

  %956 = load i64, i64* %955

  %957 = inttoptr i64 %921 to i64*

  %958 = load i64, i64* %957

  store i64 %958, i64* %3, align 8, !alias.scope !1498, !noalias !1501

  store i64 %920, i64* %14, align 8, !alias.scope !1498, !noalias !1501

  %959 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1252), i64 %923, i64 %924, i64 %925, i64 %926, i64 %927, i64 %929, i64 %932, i64 %935, i64 %938, i64 %941, i64 %944, i64 %947, i64 %950, i64 %953, i64 %956), !noalias !1498

  %960 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1274), i64* %13, align 8, !tbaa !1240

  %961 = load i64, i64* %15, align 8

  %962 = add i64 %961, -96

  %963 = inttoptr i64 %962 to double*

  %964 = load double, double* %963

  store double %964, double* %597, align 1, !tbaa !1373

  store double 0.000000e+00, double* %599, align 1, !tbaa !1373

  %965 = add i64 %961, -164

  %966 = trunc i64 %959 to i32

  %967 = inttoptr i64 %965 to i32*

  store i32 %966, i32* %967

  %968 = add i64 %960, 28

  %969 = load i64, i64* %14, align 8, !tbaa !1240

  %970 = add i64 %969, -8

  %971 = inttoptr i64 %970 to i64*

  store i64 %968, i64* %971

  %972 = load i64, i64* %12, align 8, !alias.scope !1503, !noalias !1506

  %973 = load i64, i64* %11, align 8, !alias.scope !1503, !noalias !1506

  %974 = load i64, i64* %1057, align 8, !alias.scope !1503, !noalias !1506

  %975 = load i64, i64* %1058, align 8, !alias.scope !1503, !noalias !1506

  %976 = load i64, i64* %1059, align 8, !alias.scope !1503, !noalias !1506

  %977 = inttoptr i64 %969 to i64*

  %978 = load i64, i64* %977

  %979 = add i64 %969, 8

  %980 = inttoptr i64 %979 to i64*

  %981 = load i64, i64* %980

  %982 = add i64 %969, 16

  %983 = inttoptr i64 %982 to i64*

  %984 = load i64, i64* %983

  %985 = add i64 %969, 24

  %986 = inttoptr i64 %985 to i64*

  %987 = load i64, i64* %986

  %988 = add i64 %969, 32

  %989 = inttoptr i64 %988 to i64*

  %990 = load i64, i64* %989

  %991 = add i64 %969, 40

  %992 = inttoptr i64 %991 to i64*

  %993 = load i64, i64* %992

  %994 = add i64 %969, 48

  %995 = inttoptr i64 %994 to i64*

  %996 = load i64, i64* %995

  %997 = add i64 %969, 56

  %998 = inttoptr i64 %997 to i64*

  %999 = load i64, i64* %998

  %1000 = add i64 %969, 64

  %1001 = inttoptr i64 %1000 to i64*

  %1002 = load i64, i64* %1001

  %1003 = add i64 %969, 72

  %1004 = inttoptr i64 %1003 to i64*

  %1005 = load i64, i64* %1004

  %1006 = inttoptr i64 %970 to i64*

  %1007 = load i64, i64* %1006

  store i64 %1007, i64* %3, align 8, !alias.scope !1503, !noalias !1506

  store i64 %969, i64* %14, align 8, !alias.scope !1503, !noalias !1506

  %1008 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1274), i64 %972, i64 %973, i64 %974, i64 %975, i64 %976, i64 %978, i64 %981, i64 %984, i64 %987, i64 %990, i64 %993, i64 %996, i64 %999, i64 %1002, i64 %1005), !noalias !1503

  store i64 %1008, i64* %93, align 8, !alias.scope !1503, !noalias !1506

  %1009 = load i64, i64* %3, align 8

  store i32 0, i32* %454, align 1, !tbaa !1455

  store i32 0, i32* %457, align 1, !tbaa !1455

  store i32 0, i32* %458, align 1, !tbaa !1455

  store i32 0, i32* %460, align 1, !tbaa !1455

  %1010 = load i64, i64* %15, align 8

  %1011 = add i64 %1010, -96

  %1012 = inttoptr i64 %1011 to double*

  %1013 = load double, double* %1012

  store double %1013, double* %601, align 1, !tbaa !1373

  store double 0.000000e+00, double* %603, align 1, !tbaa !1373

  %1014 = add i64 %1009, 12

  store i64 %1014, i64* %3, align 8

  %1015 = load double, double* %597, align 1

  %1016 = fcmp uno double %1013, %1015

  %1017 = trunc i64 %1008 to i32

  br i1 %1016, label %1018, label %1031



; <label>:1018:                                   ; preds = %block_4017a0

  %1019 = fadd double %1013, %1015

  %1020 = bitcast double %1019 to i64

  %1021 = and i64 %1020, 9221120237041090560

  %1022 = icmp eq i64 %1021, 9218868437227405312

  %1023 = and i64 %1020, 2251799813685247

  %1024 = icmp ne i64 %1023, 0

  %1025 = and i1 %1022, %1024

  br i1 %1025, label %1026, label %1037



; <label>:1026:                                   ; preds = %1018

  %1027 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1014, %struct.Memory* %913) #12

  %1028 = load i64, i64* %15, align 8

  %1029 = load i32, i32* %5, align 4

  %1030 = load i64, i64* %3, align 8

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



; <label>:1031:                                   ; preds = %block_4017a0

  %1032 = fcmp ogt double %1013, %1015

  br i1 %1032, label %1037, label %1033



; <label>:1033:                                   ; preds = %1031

  %1034 = fcmp olt double %1013, %1015

  br i1 %1034, label %1037, label %1035



; <label>:1035:                                   ; preds = %1033

  %1036 = fcmp oeq double %1013, %1015

  br i1 %1036, label %1037, label %1041



; <label>:1037:                                   ; preds = %1035, %1033, %1031, %1018

  %1038 = phi i8 [ 0, %1031 ], [ 0, %1033 ], [ 1, %1035 ], [ 1, %1018 ]

  %1039 = phi i8 [ 0, %1031 ], [ 0, %1033 ], [ 0, %1035 ], [ 1, %1018 ]

  %1040 = phi i8 [ 0, %1031 ], [ 1, %1033 ], [ 0, %1035 ], [ 1, %1018 ]

  store i8 %1038, i8* %62, align 1, !tbaa !1439

  store i8 %1039, i8* %54, align 1, !tbaa !1439

  store i8 %1040, i8* %47, align 1, !tbaa !1439

  br label %1041



; <label>:1041:                                   ; preds = %1037, %1035

  store i8 0, i8* %71, align 1, !tbaa !1439

  store i8 0, i8* %65, align 1, !tbaa !1439

  store i8 0, i8* %59, align 1, !tbaa !1439

  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit



_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %1041, %1026

  %1042 = phi i64 [ %1030, %1026 ], [ %1014, %1041 ]

  %1043 = phi i32 [ %1029, %1026 ], [ %1017, %1041 ]

  %1044 = phi i64 [ %1028, %1026 ], [ %1010, %1041 ]

  %1045 = phi %struct.Memory* [ %1027, %1026 ], [ %913, %1041 ]

  %1046 = add i64 %1044, -168

  %1047 = inttoptr i64 %1046 to i32*

  store i32 %1043, i32* %1047

  %1048 = add i64 %1042, 31

  %1049 = add i64 %1042, 12

  %1050 = load i8, i8* %62, align 1, !tbaa !1350

  %1051 = icmp eq i8 %1050, 0

  %1052 = select i1 %1051, i64 %1048, i64 %1049

  br i1 %1051, label %block_401807, label %block_4017f4



block_401506:                                     ; preds = %block_4014c2

  %1053 = add i64 %267, 17

  %1054 = load i64, i64* %14, align 8, !tbaa !1240

  %1055 = add i64 %1054, -8

  %1056 = inttoptr i64 %1055 to i64*

  store i64 %1053, i64* %1056

  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %1060 = load i64, i64* %12, align 8, !alias.scope !1508, !noalias !1511

  %1061 = load i64, i64* %11, align 8, !alias.scope !1508, !noalias !1511

  %1062 = load i64, i64* %1057, align 8, !alias.scope !1508, !noalias !1511

  %1063 = load i64, i64* %1058, align 8, !alias.scope !1508, !noalias !1511

  %1064 = load i64, i64* %1059, align 8, !alias.scope !1508, !noalias !1511

  %1065 = inttoptr i64 %1054 to i64*

  %1066 = load i64, i64* %1065

  %1067 = add i64 %1054, 8

  %1068 = inttoptr i64 %1067 to i64*

  %1069 = load i64, i64* %1068

  %1070 = add i64 %1054, 16

  %1071 = inttoptr i64 %1070 to i64*

  %1072 = load i64, i64* %1071

  %1073 = add i64 %1054, 24

  %1074 = inttoptr i64 %1073 to i64*

  %1075 = load i64, i64* %1074

  %1076 = add i64 %1054, 32

  %1077 = inttoptr i64 %1076 to i64*

  %1078 = load i64, i64* %1077

  %1079 = add i64 %1054, 40

  %1080 = inttoptr i64 %1079 to i64*

  %1081 = load i64, i64* %1080

  %1082 = add i64 %1054, 48

  %1083 = inttoptr i64 %1082 to i64*

  %1084 = load i64, i64* %1083

  %1085 = add i64 %1054, 56

  %1086 = inttoptr i64 %1085 to i64*

  %1087 = load i64, i64* %1086

  %1088 = add i64 %1054, 64

  %1089 = inttoptr i64 %1088 to i64*

  %1090 = load i64, i64* %1089

  %1091 = add i64 %1054, 72

  %1092 = inttoptr i64 %1091 to i64*

  %1093 = load i64, i64* %1092

  %1094 = inttoptr i64 %1055 to i64*

  %1095 = load i64, i64* %1094

  store i64 %1095, i64* %3, align 8, !alias.scope !1508, !noalias !1511

  store i64 %1054, i64* %14, align 8, !alias.scope !1508, !noalias !1511

  %1096 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1011), i64 %1060, i64 %1061, i64 %1062, i64 %1063, i64 %1064, i64 %1066, i64 %1069, i64 %1072, i64 %1075, i64 %1078, i64 %1081, i64 %1084, i64 %1087, i64 %1090, i64 %1093), !noalias !1508

  %1097 = load i64, i64* %3, align 8

  store i64 134217728, i64* %10, align 8, !tbaa !1240

  store i64 67, i64* %11, align 8, !tbaa !1240

  %1098 = load i64, i64* %15, align 8

  %1099 = add i64 %1098, -112

  %1100 = trunc i64 %1096 to i32

  %1101 = inttoptr i64 %1099 to i32*

  store i32 %1100, i32* %1101

  %1102 = add i64 %1097, 32

  %1103 = load i64, i64* %14, align 8, !tbaa !1240

  %1104 = add i64 %1103, -8

  %1105 = inttoptr i64 %1104 to i64*

  store i64 %1102, i64* %1105

  %1106 = load i64, i64* %1058, align 8, !alias.scope !1513, !noalias !1516

  %1107 = load i64, i64* %1059, align 8, !alias.scope !1513, !noalias !1516

  %1108 = inttoptr i64 %1103 to i64*

  %1109 = load i64, i64* %1108

  %1110 = add i64 %1103, 8

  %1111 = inttoptr i64 %1110 to i64*

  %1112 = load i64, i64* %1111

  %1113 = add i64 %1103, 16

  %1114 = inttoptr i64 %1113 to i64*

  %1115 = load i64, i64* %1114

  %1116 = add i64 %1103, 24

  %1117 = inttoptr i64 %1116 to i64*

  %1118 = load i64, i64* %1117

  %1119 = add i64 %1103, 32

  %1120 = inttoptr i64 %1119 to i64*

  %1121 = load i64, i64* %1120

  %1122 = add i64 %1103, 40

  %1123 = inttoptr i64 %1122 to i64*

  %1124 = load i64, i64* %1123

  %1125 = add i64 %1103, 48

  %1126 = inttoptr i64 %1125 to i64*

  %1127 = load i64, i64* %1126

  %1128 = add i64 %1103, 56

  %1129 = inttoptr i64 %1128 to i64*

  %1130 = load i64, i64* %1129

  %1131 = add i64 %1103, 64

  %1132 = inttoptr i64 %1131 to i64*

  %1133 = load i64, i64* %1132

  %1134 = add i64 %1103, 72

  %1135 = inttoptr i64 %1134 to i64*

  %1136 = load i64, i64* %1135

  %1137 = inttoptr i64 %1104 to i64*

  %1138 = load i64, i64* %1137

  store i64 %1138, i64* %3, align 8, !alias.scope !1513, !noalias !1516

  store i64 %1103, i64* %14, align 8, !alias.scope !1513, !noalias !1516

  %1139 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1068), i64 134217728, i64 67, i64 134217728, i64 %1106, i64 %1107, i64 %1109, i64 %1112, i64 %1115, i64 %1118, i64 %1121, i64 %1124, i64 %1127, i64 %1130, i64 %1133, i64 %1136), !noalias !1513

  %1140 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1093), i64* %13, align 8, !tbaa !1240

  store i64 10, i64* %12, align 8, !tbaa !1240

  %1141 = load i64, i64* %15, align 8

  %1142 = add i64 %1141, -116

  %1143 = trunc i64 %1139 to i32

  %1144 = inttoptr i64 %1142 to i32*

  store i32 %1143, i32* %1144

  %1145 = add i64 %1140, 25

  %1146 = load i64, i64* %14, align 8, !tbaa !1240

  %1147 = add i64 %1146, -8

  %1148 = inttoptr i64 %1147 to i64*

  store i64 %1145, i64* %1148

  %1149 = load i64, i64* %11, align 8, !alias.scope !1518, !noalias !1521

  %1150 = load i64, i64* %1057, align 8, !alias.scope !1518, !noalias !1521

  %1151 = load i64, i64* %1058, align 8, !alias.scope !1518, !noalias !1521

  %1152 = load i64, i64* %1059, align 8, !alias.scope !1518, !noalias !1521

  %1153 = inttoptr i64 %1146 to i64*

  %1154 = load i64, i64* %1153

  %1155 = add i64 %1146, 8

  %1156 = inttoptr i64 %1155 to i64*

  %1157 = load i64, i64* %1156

  %1158 = add i64 %1146, 16

  %1159 = inttoptr i64 %1158 to i64*

  %1160 = load i64, i64* %1159

  %1161 = add i64 %1146, 24

  %1162 = inttoptr i64 %1161 to i64*

  %1163 = load i64, i64* %1162

  %1164 = add i64 %1146, 32

  %1165 = inttoptr i64 %1164 to i64*

  %1166 = load i64, i64* %1165

  %1167 = add i64 %1146, 40

  %1168 = inttoptr i64 %1167 to i64*

  %1169 = load i64, i64* %1168

  %1170 = add i64 %1146, 48

  %1171 = inttoptr i64 %1170 to i64*

  %1172 = load i64, i64* %1171

  %1173 = add i64 %1146, 56

  %1174 = inttoptr i64 %1173 to i64*

  %1175 = load i64, i64* %1174

  %1176 = add i64 %1146, 64

  %1177 = inttoptr i64 %1176 to i64*

  %1178 = load i64, i64* %1177

  %1179 = add i64 %1146, 72

  %1180 = inttoptr i64 %1179 to i64*

  %1181 = load i64, i64* %1180

  %1182 = inttoptr i64 %1147 to i64*

  %1183 = load i64, i64* %1182

  store i64 %1183, i64* %3, align 8, !alias.scope !1518, !noalias !1521

  store i64 %1146, i64* %14, align 8, !alias.scope !1518, !noalias !1521

  %1184 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1093), i64 10, i64 %1149, i64 %1150, i64 %1151, i64 %1152, i64 %1154, i64 %1157, i64 %1160, i64 %1163, i64 %1166, i64 %1169, i64 %1172, i64 %1175, i64 %1178, i64 %1181), !noalias !1518

  store i64 %1184, i64* %93, align 8, !alias.scope !1518, !noalias !1521

  %1185 = load i64, i64* %15, align 8

  %1186 = add i64 %1185, -68

  %1187 = load i64, i64* %3, align 8

  %1188 = inttoptr i64 %1186 to i32*

  %1189 = load i32, i32* %1188

  %1190 = icmp eq i32 %1189, 0

  %1191 = add i64 %1185, -120

  %1192 = trunc i64 %1184 to i32

  %1193 = inttoptr i64 %1191 to i32*

  store i32 %1192, i32* %1193

  %1194 = select i1 %1190, i64 23, i64 13

  %1195 = add i64 %1187, %1194

  br i1 %1190, label %block_401567, label %block_40155d

}



; Function Attrs: noinline

define %struct.Memory* @sub_400560(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  %13 = load i64, i64* %12, align 8, !alias.scope !1523, !noalias !1526

  %14 = inttoptr i64 %7 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %3, align 8, !alias.scope !1523, !noalias !1526

  store i64 %6, i64* %5, align 8, !alias.scope !1523, !noalias !1526

  %16 = tail call i64 @free(i64 %13), !noalias !1523

  store i64 %16, i64* %11, align 8, !alias.scope !1523, !noalias !1526

  ret %struct.Memory* %2



; <label>:17:                                     ; preds = %block_400560

  %18 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %18

}



; Function Attrs: noinline

define %struct.Memory* @sub_400ad0_elapsed_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  %19 = add i64 %1, 3632

  %20 = add i64 %1, 17

  %21 = add i64 %9, -32

  %22 = inttoptr i64 %21 to i64*

  store i64 %20, i64* %22

  store i64 %21, i64* %5, align 8, !tbaa !1240

  %23 = tail call %struct.Memory* @sub_401900_wtime_(%struct.State* nonnull %0, i64 %19, %struct.Memory* %2)

  %24 = load i64, i64* %6, align 8

  %25 = add i64 %24, -8

  %26 = inttoptr i64 %25 to double*

  %27 = load double, double* %26

  %28 = bitcast %union.VectorReg* %7 to double*

  store double %27, double* %28, align 1, !tbaa !1373

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1

  %30 = bitcast i64* %29 to double*

  store double 0.000000e+00, double* %30, align 1, !tbaa !1373

  %31 = load i64, i64* %5, align 8

  %32 = add i64 %31, 16

  %33 = icmp ugt i64 %31, -17

  %34 = zext i1 %33 to i8

  store i8 %34, i8* %12, align 1, !tbaa !1334

  %35 = trunc i64 %32 to i32

  %36 = and i32 %35, 255

  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #9

  %38 = trunc i32 %37 to i8

  %39 = and i8 %38, 1

  %40 = xor i8 %39, 1

  store i8 %40, i8* %13, align 1, !tbaa !1348

  %41 = xor i64 %31, 16

  %42 = xor i64 %41, %32

  %43 = lshr i64 %42, 4

  %44 = trunc i64 %43 to i8

  %45 = and i8 %44, 1

  store i8 %45, i8* %14, align 1, !tbaa !1349

  %46 = icmp eq i64 %32, 0

  %47 = zext i1 %46 to i8

  store i8 %47, i8* %15, align 1, !tbaa !1350

  %48 = lshr i64 %32, 63

  %49 = trunc i64 %48 to i8

  store i8 %49, i8* %16, align 1, !tbaa !1351

  %50 = lshr i64 %31, 63

  %51 = xor i64 %48, %50

  %52 = add nuw nsw i64 %51, %48

  %53 = icmp eq i64 %52, 2

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %17, align 1, !tbaa !1352

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

define %struct.Memory* @sub_400aa0_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {

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

  store i8 %41, i8* %14, align 1, !tbaa !1334

  %42 = trunc i64 %39 to i32

  %43 = and i32 %42, 255

  %44 = tail call i32 @llvm.ctpop.i32(i32 %43) #9

  %45 = trunc i32 %44 to i8

  %46 = and i8 %45, 1

  %47 = xor i8 %46, 1

  store i8 %47, i8* %15, align 1, !tbaa !1348

  %48 = xor i64 %38, 16

  %49 = xor i64 %48, %39

  %50 = lshr i64 %49, 4

  %51 = trunc i64 %50 to i8

  %52 = and i8 %51, 1

  store i8 %52, i8* %16, align 1, !tbaa !1349

  %53 = icmp eq i64 %39, 0

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %17, align 1, !tbaa !1350

  %55 = lshr i64 %39, 63

  %56 = trunc i64 %55 to i8

  store i8 %56, i8* %18, align 1, !tbaa !1351

  %57 = lshr i64 %38, 63

  %58 = xor i64 %55, %57

  %59 = add nuw nsw i64 %58, %55

  %60 = icmp eq i64 %59, 2

  %61 = zext i1 %60 to i8

  store i8 %61, i8* %19, align 1, !tbaa !1352

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

define %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {

block_400690:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_6031f0__bss_type* @seg_6031f0__bss to i64), i64 8) to i8*)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1334

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #9

  %9 = trunc i32 %8 to i8

  %10 = and i8 %9, 1

  %11 = xor i8 %10, 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %11, i8* %12, align 1, !tbaa !1348

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1349

  %14 = icmp eq i8 %5, 0

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %15, i8* %16, align 1, !tbaa !1350

  %17 = lshr i8 %5, 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %17, i8* %18, align 1, !tbaa !1351

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %19, align 1, !tbaa !1352

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_4019f0___libc_csu_fini() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200944, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = phi i64 [ %3, %__mcsema_verify_reg_state.exit ], [ %.pre, %5 ]

  %7 = add i64 %6, -8

  store i64 %7, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = tail call %struct.Memory* @sub_4019f0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4200944, %struct.Memory* null)

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %9

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_401980___libc_csu_init() #7 {

  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %2 = icmp eq i64 %1, 0

  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit



is_null.i:                                        ; preds = %0

  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_verify_reg_state.exit



__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0

  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]

  store i64 4200832, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load volatile i1, i1* @0, align 1

  br i1 %4, label %__mcsema_early_init.exit, label %5



; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit

  %6 = phi i64 [ %3, %__mcsema_verify_reg_state.exit ], [ %.pre, %5 ]

  %7 = add i64 %6, -8

  store i64 %7, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = tail call %struct.Memory* @sub_401980___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4200832, %struct.Memory* null)

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

  store i64 4199440, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %7 = load volatile i1, i1* @0, align 1

  br i1 %7, label %__mcsema_early_init.exit, label %8



; <label>:8:                                      ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  %11 = tail call %struct.Memory* @sub_401410_main(%struct.State* nonnull @__mcsema_reg_state, i64 4199440, %struct.Memory* null)

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %12 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %12

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

  store i64 4200948, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  %19 = tail call %struct.Memory* @sub_4019f4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4200948, %struct.Memory* null)

  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %20

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i64 4200704, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %12 = load volatile i1, i1* @0, align 1

  br i1 %12, label %__mcsema_early_init.exit, label %13



; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  %19 = tail call %struct.Memory* @sub_401900_wtime_(%struct.State* nonnull @__mcsema_reg_state, i64 4200704, %struct.Memory* null)

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

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

define internal void @__mcsema_constructor() #9 {

  %1 = load volatile i1, i1* @0, align 1

  br i1 %1, label %__mcsema_early_init.exit, label %2



; <label>:2:                                      ; preds = %0

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 1292) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005e0__text_type* @seg_4005e0__text to i64), i64 60) to i32*), align 4

  store i32 trunc (i64 add (i64 ptrtoint (%seg_401a00__rodata_type* @seg_401a00__rodata to i64), i64 1295) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400560__plt_type* @seg_400560__plt to i64), i64 12) to i32*), align 4

  store volatile i1 true, i1* @0, align 1

  br label %__mcsema_early_init.exit



__mcsema_early_init.exit:                         ; preds = %2, %0

  %3 = tail call i64 @callback_sub_401980___libc_csu_init()

  ret void

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #9 {

  %1 = tail call i64 @callback_sub_4019f0___libc_csu_fini()

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

!1244 = !{!1245}

!1245 = distinct !{!1245, !1246, !"ext_6056b0_printf: argument 0"}

!1246 = distinct !{!1246, !"ext_6056b0_printf"}

!1247 = !{!1248}

!1248 = distinct !{!1248, !1246, !"ext_6056b0_printf: argument 1"}

!1249 = !{!1250}

!1250 = distinct !{!1250, !1251, !"ext_6056b0_printf: argument 0"}

!1251 = distinct !{!1251, !"ext_6056b0_printf"}

!1252 = !{!1253}

!1253 = distinct !{!1253, !1251, !"ext_6056b0_printf: argument 1"}

!1254 = !{!1255}

!1255 = distinct !{!1255, !1256, !"ext_6056b0_printf: argument 0"}

!1256 = distinct !{!1256, !"ext_6056b0_printf"}

!1257 = !{!1258}

!1258 = distinct !{!1258, !1256, !"ext_6056b0_printf: argument 1"}

!1259 = !{!1260}

!1260 = distinct !{!1260, !1261, !"ext_6056b0_printf: argument 0"}

!1261 = distinct !{!1261, !"ext_6056b0_printf"}

!1262 = !{!1263}

!1263 = distinct !{!1263, !1261, !"ext_6056b0_printf: argument 1"}

!1264 = !{!1265}

!1265 = distinct !{!1265, !1266, !"ext_6056b0_printf: argument 0"}

!1266 = distinct !{!1266, !"ext_6056b0_printf"}

!1267 = !{!1268}

!1268 = distinct !{!1268, !1266, !"ext_6056b0_printf: argument 1"}

!1269 = !{!1270}

!1270 = distinct !{!1270, !1271, !"ext_6056b0_printf: argument 0"}

!1271 = distinct !{!1271, !"ext_6056b0_printf"}

!1272 = !{!1273}

!1273 = distinct !{!1273, !1271, !"ext_6056b0_printf: argument 1"}

!1274 = !{!1275}

!1275 = distinct !{!1275, !1276, !"ext_6056b0_printf: argument 0"}

!1276 = distinct !{!1276, !"ext_6056b0_printf"}

!1277 = !{!1278}

!1278 = distinct !{!1278, !1276, !"ext_6056b0_printf: argument 1"}

!1279 = !{!1280}

!1280 = distinct !{!1280, !1281, !"ext_6056b0_printf: argument 0"}

!1281 = distinct !{!1281, !"ext_6056b0_printf"}

!1282 = !{!1283}

!1283 = distinct !{!1283, !1281, !"ext_6056b0_printf: argument 1"}

!1284 = !{!1285}

!1285 = distinct !{!1285, !1286, !"ext_6056b0_printf: argument 0"}

!1286 = distinct !{!1286, !"ext_6056b0_printf"}

!1287 = !{!1288}

!1288 = distinct !{!1288, !1286, !"ext_6056b0_printf: argument 1"}

!1289 = !{!1290}

!1290 = distinct !{!1290, !1291, !"ext_6056b0_printf: argument 0"}

!1291 = distinct !{!1291, !"ext_6056b0_printf"}

!1292 = !{!1293}

!1293 = distinct !{!1293, !1291, !"ext_6056b0_printf: argument 1"}

!1294 = !{!1295}

!1295 = distinct !{!1295, !1296, !"ext_6056b0_printf: argument 0"}

!1296 = distinct !{!1296, !"ext_6056b0_printf"}

!1297 = !{!1298}

!1298 = distinct !{!1298, !1296, !"ext_6056b0_printf: argument 1"}

!1299 = !{!1300}

!1300 = distinct !{!1300, !1301, !"ext_6056b0_printf: argument 0"}

!1301 = distinct !{!1301, !"ext_6056b0_printf"}

!1302 = !{!1303}

!1303 = distinct !{!1303, !1301, !"ext_6056b0_printf: argument 1"}

!1304 = !{!1305}

!1305 = distinct !{!1305, !1306, !"ext_6056b0_printf: argument 0"}

!1306 = distinct !{!1306, !"ext_6056b0_printf"}

!1307 = !{!1308}

!1308 = distinct !{!1308, !1306, !"ext_6056b0_printf: argument 1"}

!1309 = !{!1310}

!1310 = distinct !{!1310, !1311, !"ext_6056b0_printf: argument 0"}

!1311 = distinct !{!1311, !"ext_6056b0_printf"}

!1312 = !{!1313}

!1313 = distinct !{!1313, !1311, !"ext_6056b0_printf: argument 1"}

!1314 = !{!1315}

!1315 = distinct !{!1315, !1316, !"ext_6056b0_printf: argument 0"}

!1316 = distinct !{!1316, !"ext_6056b0_printf"}

!1317 = !{!1318}

!1318 = distinct !{!1318, !1316, !"ext_6056b0_printf: argument 1"}

!1319 = !{!1320}

!1320 = distinct !{!1320, !1321, !"ext_6056b0_printf: argument 0"}

!1321 = distinct !{!1321, !"ext_6056b0_printf"}

!1322 = !{!1323}

!1323 = distinct !{!1323, !1321, !"ext_6056b0_printf: argument 1"}

!1324 = !{!1325}

!1325 = distinct !{!1325, !1326, !"ext_6056b0_printf: argument 0"}

!1326 = distinct !{!1326, !"ext_6056b0_printf"}

!1327 = !{!1328}

!1328 = distinct !{!1328, !1326, !"ext_6056b0_printf: argument 1"}

!1329 = !{!1330}

!1330 = distinct !{!1330, !1331, !"ext_6056b0_printf: argument 0"}

!1331 = distinct !{!1331, !"ext_6056b0_printf"}

!1332 = !{!1333}

!1333 = distinct !{!1333, !1331, !"ext_6056b0_printf: argument 1"}

!1334 = !{!1335, !1242, i64 2065}

!1335 = !{!"_ZTS5State", !1242, i64 16, !1336, i64 2064, !1242, i64 2080, !1337, i64 2088, !1339, i64 2112, !1341, i64 2208, !1342, i64 2480, !1343, i64 2608, !1344, i64 2736, !1242, i64 2760, !1242, i64 2768, !1345, i64 3280}

!1336 = !{!"_ZTS10ArithFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15}

!1337 = !{!"_ZTS8Segments", !1338, i64 0, !1242, i64 2, !1338, i64 4, !1242, i64 6, !1338, i64 8, !1242, i64 10, !1338, i64 12, !1242, i64 14, !1338, i64 16, !1242, i64 18, !1338, i64 20, !1242, i64 22}

!1338 = !{!"short", !1242, i64 0}

!1339 = !{!"_ZTS12AddressSpace", !1241, i64 0, !1340, i64 8, !1241, i64 16, !1340, i64 24, !1241, i64 32, !1340, i64 40, !1241, i64 48, !1340, i64 56, !1241, i64 64, !1340, i64 72, !1241, i64 80, !1340, i64 88}

!1340 = !{!"_ZTS3Reg", !1242, i64 0}

!1341 = !{!"_ZTS3GPR", !1241, i64 0, !1340, i64 8, !1241, i64 16, !1340, i64 24, !1241, i64 32, !1340, i64 40, !1241, i64 48, !1340, i64 56, !1241, i64 64, !1340, i64 72, !1241, i64 80, !1340, i64 88, !1241, i64 96, !1340, i64 104, !1241, i64 112, !1340, i64 120, !1241, i64 128, !1340, i64 136, !1241, i64 144, !1340, i64 152, !1241, i64 160, !1340, i64 168, !1241, i64 176, !1340, i64 184, !1241, i64 192, !1340, i64 200, !1241, i64 208, !1340, i64 216, !1241, i64 224, !1340, i64 232, !1241, i64 240, !1340, i64 248, !1241, i64 256, !1340, i64 264}

!1342 = !{!"_ZTS8X87Stack", !1242, i64 0}

!1343 = !{!"_ZTS3MMX", !1242, i64 0}

!1344 = !{!"_ZTS14FPUStatusFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15, !1242, i64 16, !1242, i64 17, !1242, i64 18, !1242, i64 19, !1242, i64 20}

!1345 = !{!"_ZTS13SegmentCaches", !1346, i64 0, !1346, i64 16, !1346, i64 32, !1346, i64 48, !1346, i64 64, !1346, i64 80}

!1346 = !{!"_ZTS13SegmentShadow", !1242, i64 0, !1347, i64 8, !1347, i64 12}

!1347 = !{!"int", !1242, i64 0}

!1348 = !{!1335, !1242, i64 2067}

!1349 = !{!1335, !1242, i64 2069}

!1350 = !{!1335, !1242, i64 2071}

!1351 = !{!1335, !1242, i64 2073}

!1352 = !{!1335, !1242, i64 2077}

!1353 = !{!1354}

!1354 = distinct !{!1354, !1355, !"ext_6056b0_printf: argument 0"}

!1355 = distinct !{!1355, !"ext_6056b0_printf"}

!1356 = !{!1357}

!1357 = distinct !{!1357, !1355, !"ext_6056b0_printf: argument 1"}

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

!1373 = !{!1374, !1374, i64 0}

!1374 = !{!"double", !1242, i64 0}

!1375 = !{!1376}

!1376 = distinct !{!1376, !1377, !"ext_6056b0_printf: argument 0"}

!1377 = distinct !{!1377, !"ext_6056b0_printf"}

!1378 = !{!1379}

!1379 = distinct !{!1379, !1377, !"ext_6056b0_printf: argument 1"}

!1380 = !{!1381}

!1381 = distinct !{!1381, !1382, !"ext_6056b0_printf: argument 0"}

!1382 = distinct !{!1382, !"ext_6056b0_printf"}

!1383 = !{!1384}

!1384 = distinct !{!1384, !1382, !"ext_6056b0_printf: argument 1"}

!1385 = !{!1386}

!1386 = distinct !{!1386, !1387, !"ext_6056b0_printf: argument 0"}

!1387 = distinct !{!1387, !"ext_6056b0_printf"}

!1388 = !{!1389}

!1389 = distinct !{!1389, !1387, !"ext_6056b0_printf: argument 1"}

!1390 = !{!1391}

!1391 = distinct !{!1391, !1392, !"ext_6056b0_printf: argument 0"}

!1392 = distinct !{!1392, !"ext_6056b0_printf"}

!1393 = !{!1394}

!1394 = distinct !{!1394, !1392, !"ext_6056b0_printf: argument 1"}

!1395 = !{!1396}

!1396 = distinct !{!1396, !1397, !"ext_6056c8_malloc: argument 0"}

!1397 = distinct !{!1397, !"ext_6056c8_malloc"}

!1398 = !{!1399}

!1399 = distinct !{!1399, !1397, !"ext_6056c8_malloc: argument 1"}

!1400 = !{!1401}

!1401 = distinct !{!1401, !1402, !"ext_6056c8_malloc: argument 0"}

!1402 = distinct !{!1402, !"ext_6056c8_malloc"}

!1403 = !{!1404}

!1404 = distinct !{!1404, !1402, !"ext_6056c8_malloc: argument 1"}

!1405 = !{!1406}

!1406 = distinct !{!1406, !1407, !"ext_6056c8_malloc: argument 0"}

!1407 = distinct !{!1407, !"ext_6056c8_malloc"}

!1408 = !{!1409}

!1409 = distinct !{!1409, !1407, !"ext_6056c8_malloc: argument 1"}

!1410 = !{!1411}

!1411 = distinct !{!1411, !1412, !"ext_6056c8_malloc: argument 0"}

!1412 = distinct !{!1412, !"ext_6056c8_malloc"}

!1413 = !{!1414}

!1414 = distinct !{!1414, !1412, !"ext_6056c8_malloc: argument 1"}

!1415 = !{!1416}

!1416 = distinct !{!1416, !1417, !"ext_6056c0___libc_start_main: argument 0"}

!1417 = distinct !{!1417, !"ext_6056c0___libc_start_main"}

!1418 = !{!1419}

!1419 = distinct !{!1419, !1417, !"ext_6056c0___libc_start_main: argument 1"}

!1420 = !{!1421}

!1421 = distinct !{!1421, !1422, !"ext_6056b8_gettimeofday: argument 0"}

!1422 = distinct !{!1422, !"ext_6056b8_gettimeofday"}

!1423 = !{!1424}

!1424 = distinct !{!1424, !1422, !"ext_6056b8_gettimeofday: argument 1"}

!1425 = !{!1426}

!1426 = distinct !{!1426, !1427, !"ext_6056a0_free: argument 0"}

!1427 = distinct !{!1427, !"ext_6056a0_free"}

!1428 = !{!1429}

!1429 = distinct !{!1429, !1430, !"ext_6056a0_free: argument 0"}

!1430 = distinct !{!1430, !"ext_6056a0_free"}

!1431 = !{!1432}

!1432 = distinct !{!1432, !1433, !"ext_6056a0_free: argument 0"}

!1433 = distinct !{!1433, !"ext_6056a0_free"}

!1434 = !{!1435}

!1435 = distinct !{!1435, !1436, !"ext_6056a0_free: argument 0"}

!1436 = distinct !{!1436, !"ext_6056a0_free"}

!1437 = !{!1438}

!1438 = distinct !{!1438, !1436, !"ext_6056a0_free: argument 1"}

!1439 = !{!1242, !1242, i64 0}

!1440 = !{!1441}

!1441 = distinct !{!1441, !1442, !"ext_6056b0_printf: argument 0"}

!1442 = distinct !{!1442, !"ext_6056b0_printf"}

!1443 = !{!1444}

!1444 = distinct !{!1444, !1442, !"ext_6056b0_printf: argument 1"}

!1445 = !{!1446}

!1446 = distinct !{!1446, !1447, !"ext_4005c0_fflush: argument 0"}

!1447 = distinct !{!1447, !"ext_4005c0_fflush"}

!1448 = !{!1449}

!1449 = distinct !{!1449, !1447, !"ext_4005c0_fflush: argument 1"}

!1450 = !{!1451}

!1451 = distinct !{!1451, !1452, !"ext_6056b0_printf: argument 0"}

!1452 = distinct !{!1452, !"ext_6056b0_printf"}

!1453 = !{!1454}

!1454 = distinct !{!1454, !1452, !"ext_6056b0_printf: argument 1"}

!1455 = !{!1347, !1347, i64 0}

!1456 = !{!1457}

!1457 = distinct !{!1457, !1458, !"ext_4005d0_fopen: argument 0"}

!1458 = distinct !{!1458, !"ext_4005d0_fopen"}

!1459 = !{!1460}

!1460 = distinct !{!1460, !1458, !"ext_4005d0_fopen: argument 1"}

!1461 = !{!1462}

!1462 = distinct !{!1462, !1463, !"ext_6056a8_fclose: argument 0"}

!1463 = distinct !{!1463, !"ext_6056a8_fclose"}

!1464 = !{!1465}

!1465 = distinct !{!1465, !1463, !"ext_6056a8_fclose: argument 1"}

!1466 = !{!1467}

!1467 = distinct !{!1467, !1468, !"ext_6056b0_printf: argument 0"}

!1468 = distinct !{!1468, !"ext_6056b0_printf"}

!1469 = !{!1470}

!1470 = distinct !{!1470, !1468, !"ext_6056b0_printf: argument 1"}

!1471 = !{!1472}

!1472 = distinct !{!1472, !1473, !"ext_6056b0_printf: argument 0"}

!1473 = distinct !{!1473, !"ext_6056b0_printf"}

!1474 = !{!1475}

!1475 = distinct !{!1475, !1473, !"ext_6056b0_printf: argument 1"}

!1476 = !{!1477, !1477, i64 0}

!1477 = !{!"float", !1242, i64 0}

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

!1524 = distinct !{!1524, !1525, !"ext_6056a0_free: argument 0"}

!1525 = distinct !{!1525, !"ext_6056a0_free"}

!1526 = !{!1527}

!1527 = distinct !{!1527, !1525, !"ext_6056a0_free: argument 1"}

