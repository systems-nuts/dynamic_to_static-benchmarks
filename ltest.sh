
#!/bin/bash


### Regresstion Test Script

### Wei Wang    Stevens 2019


#config parameters
ARCH="amd64"
COMPILER="musl-gcc"

bash -x clean.sh

echo $1


if [[ $1 != "npb-is" ]] && [[ $1 != "npb-dc" ]];
then

  cd $1

#compile first

  make clean
  make
#then disassemble

sudo /home/weiwang99/ida-7.2/ida64 -S"/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida7/get_cfg.py --output "$1".cfg --log_file "$1".log --arch amd64 --os linux --entrypoint main" $1

#then lifting
mcsema-lift-3.7 --os linux --arch ${ARCH} --cfg "$1".cfg --output "$1".bc --explicit_args

#now Convert bc file to ll file

llvm-dis-3.7 "$1".bc -o "$1".ll

# call antonio's tool to support statically-linker binary
python ../fix_got_plt.py clang "$1".ll > "$1"fix.ll

# Remove overdefinition of bss_start
cat "$1"fix.ll | sed 's/@__bss_start/@SSS__bss_start/g'  > "$1"Fix.ll
# Recompiling by popcorn compiler
cp "$1"Fix.ll ../
cd ../
bash -x compile.sh $1

cp "$1"_x86-64 binary_file/
cp "$1"_aarch64 binary_file/
cp "$1"_x86-64_VANILLA binary_file/
cp "$1"_aarch64_VANILLA binary_file/


else

 for w in C; do
 cd $1
 make clean
 echo $w
 make $w

#then disassemble

sudo /home/weiwang99/ida-7.2/ida64 -S"/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida7/get_cfg.py --output "$1".cfg --log_file "$1".log --arch amd64 --os linux --entrypoint main" $1

#then lifting
mcsema-lift-3.7 --os linux --arch ${ARCH} --cfg "$1".cfg --output "$1".bc --explicit_args

#now Convert bc file to ll file
llvm-dis-3.7 "$1".bc -o "$1".ll

# call antonio's tool to support statically-linker binary
python ../fix_got_plt.py clang "$1".ll > "$1"fix.ll

# Remove overdefinition of bss_start
cat "$1"fix.ll | sed 's/@__bss_start/@SSS__bss_start/g'  > "$1"Fix.ll
#cp ll for compilation
cp "$1"Fix.ll ../
# Recompiling by popcorn compiler
echo  ${PWD}
cd ../
echo "fuck"
echo  ${PWD}


bash -x compile.sh $1

echo ${PWD}
cp "$1"_x86-64 binary_file/
cp  binary_file/"$1"_x86-64 binary_file/"$1"_x86-64_$w
cp "$1"_aarch64 binary_file/
#cp "$1"_arm binary_file/
#cp  binary_file/"$1"_arm binary_file/"$1"_aarch64_$w
cp  binary_file/"$1"_aarch64 binary_file/"$1"_aarch64_$w
cp "$1"_x86-64_VANILLA binary_file/
cp  binary_file/"$1"_x86-64_VANILLA binary_file/"$1"_x86-64_VANILLA_$w
cp "$1"_aarch64_VANILLA binary_file/
cp  binary_file/"$1"_aarch64_VANILLA binary_file/"$1"_aarch64_VANILLA_$w


done

 echo "is dc"
fi

