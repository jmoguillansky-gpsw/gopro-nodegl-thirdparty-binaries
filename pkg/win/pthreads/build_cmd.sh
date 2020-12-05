#!/bin/bash
set -ex
TMP_DIR=/mnt/c/wsltmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

wget -nc ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-2-9-1-release.tar.gz -P $TMP_DIR/pthreads
pushd $TMP_DIR/pthreads && \
tar xzf pthreads-w32-2-9-1-release.tar.gz && \
pushd pthreads-*-release && \
sed -i -e 's/#undef HAVE_STRUCT_TIMESPEC/#define HAVE_STRUCT_TIMESPEC/' config.h && \
nmake.exe clean VC-inlined
popd
popd
