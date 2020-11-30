#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

wget -nc https://sourceforge.net/projects/pthreads4w/files/pthreads-w32-2-9-1-release.zip -P $TMP_DIR/pthreads
cd $TMP_DIR/pthreads && unzip pthreads-w32-2-9-1-release.zip && \
mv Pre-built.2 pthreads_x64-windows
cd -
cp -rf $SCRIPT_PATH/patch/* $TMP_DIR/pthreads/pthreads_x64-windows/.
