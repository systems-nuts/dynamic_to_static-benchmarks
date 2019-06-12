#!/bin/bash

set -e

POPCORN=/usr/local/popcorn
ARM64_POPCORN=$POPCORN/aarch64
X86_64_POPCORN="$POPCORN/x86_64"
CC=$POPCORN/bin/clang
LD=$POPCORN/bin/ld.gold
OPT=$POPCORN/bin/opt
POST_PROCESS=$POPCORN/bin/gen-stackinfo
ALIGN="$POPCORN/bin/pyalign --compiler-inst $POPCORN"
ARM64_INC="-isystem $ARM64_POPCORN/include"
HET_CFLAGS="-nostdinc -nostdlib  -fno-common -ftls-model=initial-exec -ffunction-sections -fdata-sections" # --library_interface=none" #or --library_interface=aeabi_clib?

BIN="$1"
BIN_X86="$1"_x86-64
BIN_ARM="$1"_aarch64

ST_AARCH64_BIN=npb-is_arm
ST_X86_64_BIN=npb-is_x86_64


###LDFLAGS
LIBS="/lib/crt1.o  /lib/libc.a /lib/libmigrate.a /lib/libstack-transform.a 
	/lib/libelf.a  /lib/libpthread.a  /lib/libc.a  /lib/libm.a"
	#/lib/libelf.a  /lib/libopenpop.a /lib/libpthread.a  /lib/libc.a  /lib/libm.a"
X86_64_LIBS=
ARM64_LIBS=
for lib in $LIBS; do
	X86_64_LIBS+="$X86_64_POPCORN/$lib "
	ARM64_LIBS+="$ARM64_POPCORN/$lib "
done

ALL_LIBS_ARM="--start-group $USR_LIBS_ARM64 -lc -lgcc -lgcc_eh --end-group"
ARM64_LIBGCC=$(dirname $(aarch64-linux-gnu-gcc -print-libgcc-file-name))

LDFLAGS="-z noexecstack -z relro --hash-style=gnu --build-id -static" # --sort-section=name -nostdlib -nostartfiles -nolibc -nodefaultlibs"
X86_64_LDFLAGS="$LDFLAGS -m elf_x86_64 -L$X86_64_POPCORN/lib $X86_64_LIBS $USR_LIBRARY_PATH --start-group -lc $USR_LIBS_x86_64 --end-group"
ARM64_LDFLAGS="$LDFLAGS -m aarch64linux -L$ARM64_POPCORN/lib -L$ARM64_LIBGCC $ARM64_LIBS $USR_LIBRARY_PATH $ALL_LIBS_ARM"

ARM64_MAP=arm64_map.txt
X86_64_MAP=x86_64_map.txt
BIN_X86_VANILLA="$BIN_X86"_VANILLA
BIN_ARM_VANILLA="$BIN_ARM"_VANILLA
ARM64_OBJ="$1"_aarch64.o
X86_64_OBJ="$1"_x86_64.o

ARM64_LD_SCRIPT="$BIN"_arm_ldscript
X86_64_LD_SCRIPT="$BIN"_x86_ldscript

ARM64_ALIGNED_MAP=arm64_aligned_map.txt
X86_64_ALIGNED_MAP=x86_64_aligned_map.txt

function generate_ll()
{
	file=$1
	#cp -f $input $output
	#$OPT -debug-pass=Arguments -data-sections=1 -function-sections=1 -insert-stackmaps -popcorn-compat -popcorn-instrument=migration -migration-points -f -S  $file -o $file
	#$OPT -debug-pass=Arguments -data-sections=1 -function-sections=1 -insert-stackmaps -select-migration-points -popcorn-compat -popcorn-instrument=migration -f -S  $file -o $file
	#$OPT -debug-pass=Arguments -data-sections=1 -function-sections=1  -popcorn-migratable -insert-stackmaps -popcorn-compat -popcorn-instrument=migration -f -S  $file -o $file
#	$OPT -debug-pass=Arguments -data-sections=1 -function-sections=1  -insert-stackmaps -select-migration-points -popcorn-compat -popcorn-instrument=migration -f -S  $file -o $file
}


#Generate .ll
#$CC $HET_CFLAGS -g -mllvm -debug-pass=Arguments  -mllvm -regalloc=basic $HET_CFLAGS $ARM64_INC  -S -emit-llvm main.c -o sm.ll
#$CC $HET_CFLAGS $ARM64_INC -g -mllvm -debug-pass=Arguments -mllvm -regalloc=basic -S -emit-llvm loop.c -o sm.ll
#/usr/local/popcorn/bin/clang $HET_CFLAGS $ARM64_INC -g -mllvm -debug-pass=Arguments  -S -emit-llvm loop.c -o sm.ll
#or #$CC $HET_CFLAGS -g -mllvm -debug-pass=Arguments --target="aarch64-unknown-linux-gnu" -mllvm -regalloc=basic $HET_CFLAGS $ARM64_INC  -S -emit-llvm main.c -o sm.ll
#cp sm.ll ori.lli
cp "$1"Fix.ll sm.ll
#generate_ll sm.ll
#$CC  -g -mllvm -debug-pass=Arguments --target="aarch64-linux-gnu" -mllvm -regalloc=basic $HET_CFLAGS $ARM64_INC  -S -emit-llvm main.c -o sm_arm.ll
#generate_ll sm_arm.ll sm_arm.ll
cp sm.ll "$1"_arm.ll
cp sm.ll "$1"_x86.ll

#Generate .o (Use llc?)
echo "generate *.o"
#$CC $HET_CFLAGS -O1 -mllvm -regalloc=basic -c "$1"_x86.ll -o $X86_64_OBJ
#$CC $HET_CFLAGS --target="aarch64-unknown-linux-gnu" -O1 -mllvm -regalloc=basic -c "$1"_arm.ll -o $ARM64_OBJ
#$CC $HET_CFLAGS --target="aarch64-unknown-linux-gnu" -O1 -mllvm -regalloc=basic  -popcorn-alignment -popcorn-migratable -c "$1"_arm.ll -o $ARM64_OBJ -v -popcorn-target=aarch64-linux-gnu
#$CC $HET_CFLAGS  -mllvm -regalloc=basic -mllvm -debug-pass=Structure -popcorn-alignment -popcorn-migratable -c "$1"_x86.ll -o $X86_64_OBJ -v -popcorn-target=x86_64-linux-gnu
$CC $HET_CFLAGS  -mllvm -regalloc=basic -mllvm -debug-pass=Structure -popcorn-alignment -popcorn-migratable -c "$1"_x86.ll -o "$1".o  -v -lm

#$LD -o $BIN_X86  mm-opt.o $X86_64_LDFLAGS
#$LD -o $ST_X86_64_BIN  $X86_64_OBJ $X86_64_LDFLAGS


#First Link 
echo "generate *vanilla exec and maps"
#$LD  $X86_64_LDFLAGS $X86_64_OBJ -o $BIN_X86_VANILLA  -Map $X86_64_MAP
$LD -o $BIN_X86_VANILLA $X86_64_OBJ  /usr/local/lib/libmcsema_rt64-4.0.a $X86_64_LDFLAGS -Map $X86_64_MAP #${options[@]}
$LD -o $BIN_ARM_VANILLA $ARM64_OBJ   $ARM64_LDFLAGS -Map $ARM64_MAP #${options[@]}
#$LD  $ARM64_LDFLAGS $ARM64_OBJ -o $BIN_ARM_VANILLA -Map $ARM64_MAP


#generate ldscripts
echo "generate ldscripts"
### Input = maps; Output = LDSCRIPTS
$ALIGN --x86-bin $BIN_X86_VANILLA --arm-bin $BIN_ARM_VANILLA \
		--x86-map $X86_64_MAP --arm-map $ARM64_MAP \
		--output-x86-ls $X86_64_LD_SCRIPT --output-arm-ls $ARM64_LD_SCRIPT


echo "generate final binaries"
### Input = LDSCRIPTS; Output = the pre-final binaries 
#@$(LD) -o $@ $(ARM64_OBJ) $(LDFLAGS) $(ARM64_LDFLAGS) -Map $(ARM64_ALIGNED_MAP) -T $<
$LD -o $BIN_ARM $ARM64_OBJ   $ARM64_LDFLAGS --cref -Map $ARM64_ALIGNED_MAP -T $ARM64_LD_SCRIPT ${options[@]}
#$LD -o $ST_AARCH64_BIN $ARM64_OBJ $ARM64_LDFLAGS --cref -Map $ARM64_ALIGNED_MAP -T $ARM64_LD_SCRIPT ${options[@]}
#@$(LD) -o $@ $(X86_64_OBJ) $(LDFLAGS) $(X86_64_LDFLAGS) -Map $(X86_64_ALIGNED_MAP) -T $<
$LD -o $BIN_X86 $X86_64_OBJ  /usr/local/lib/libmcsema_rt64-4.0.a $X86_64_LDFLAGS --cref -Map $X86_64_ALIGNED_MAP -T $X86_64_LD_SCRIPT ${options[@]}


echo "post-process"
$POST_PROCESS -f $BIN_ARM
#$POST_PROCESS -f $ST_AARCH64_BIN
$POST_PROCESS -f $BIN_X86
#$POST_PROCESS -f $ST_X86_64_BIN

aarch64-linux-gnu-objdump -D "$1"_aarch64 > arm.dump
objdump -D "$1"_x86-64 > x86.dump

