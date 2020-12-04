#!/bin/bash
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/shaderc
pushd $TMP_DIR/shaderc
git clone https://github.com/google/shaderc
pushd shaderc
./utils/git-sync-deps
 #-DSHADERC_ENABLE_SHARED_CRT
cmake.exe -H. -Bcmake-build-release -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" && \
cmake.exe --build cmake-build-release -j8 --config Release
popd
popd
