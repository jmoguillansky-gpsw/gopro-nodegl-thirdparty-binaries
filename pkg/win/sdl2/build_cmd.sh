#!/bin/bash
set -ex
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/sdl2
pushd $TMP_DIR/sdl2
hg clone https://hg.libsdl.org/SDL SDL || true
pushd SDL
cmake.exe -H. -Bcmake-build-release -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" && \
cmake.exe --build cmake-build-release -j8 --config Release && \
cd -
popd
popd
