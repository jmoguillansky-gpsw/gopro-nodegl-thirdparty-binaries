#!/bin/bash
set -ex
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/glew
pushd $TMP_DIR/glew
git clone -q https://github.com/nigels-com/glew.git glew || true
pushd glew
cd auto && PYTHON=python3 make -j8; cd -
cd build/cmake && \
cmake.exe -H. -Bcmake-build-release -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" && \
cmake.exe --build cmake-build-release -j8 --config Release && \
cd -
popd
popd
