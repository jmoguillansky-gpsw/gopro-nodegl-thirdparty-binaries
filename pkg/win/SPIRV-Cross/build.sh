#!/bin/bash
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/SPIRV-Cross
pushd $TMP_DIR/SPIRV-Cross
git clone git@github.com:KhronosGroup/SPIRV-Cross.git
pushd SPIRV-Cross
cmake.exe -H. -Bcmake-build-release -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" && \
cmake.exe --build cmake-build-release -j8 --config Release && \
cmake.exe --install cmake-build-release --prefix spirv_cross_x64-windows
popd
popd
