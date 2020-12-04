#!/bin/bash
set -ex
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/ffmpeg
pushd $TMP_DIR/ffmpeg
git clone -q https://git.ffmpeg.org/ffmpeg.git ffmpeg || true
pushd ffmpeg
./configure --target-os=win64 --arch=x86_64 --toolchain=msvc --enable-shared --disable-x86asm
make -j16
popd
popd
