#!/bin/bash
set -ex
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/glfw
pushd $TMP_DIR/glfw
git clone -q https://github.com/glfw/glfw glfw || true
pushd glfw
cmake.exe -H. -Bcmake-build-release -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" && \
cmake.exe --build cmake-build-release -j8 --config Release && \
popd
popd
