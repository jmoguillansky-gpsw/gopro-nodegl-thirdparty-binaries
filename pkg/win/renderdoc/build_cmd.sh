#!/bin/bash
set -ex
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

mkdir -p $TMP_DIR/renderdoc
pushd $TMP_DIR/renderdoc
git clone https://github.com/baldurk/renderdoc
pushd renderdoc
msbuild.exe
popd
popd
