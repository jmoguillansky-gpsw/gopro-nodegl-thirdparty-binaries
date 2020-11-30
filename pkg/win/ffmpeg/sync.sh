#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

wget -nc https://www.gyan.dev/ffmpeg/builds/packages/ffmpeg-4.3.1-2020-11-19-full_build-shared.7z -P $TMP_DIR/ffmpeg
cd $TMP_DIR/ffmpeg && 7z x ffmpeg-4.3.1-2020-11-19-full_build-shared.7z && \
mv ffmpeg-4.3.1-2020-11-19-full_build-shared ffmpeg_x64-windows
cd -
cp -rf $SCRIPT_PATH/patch/* $TMP_DIR/ffmpeg/ffmpeg_x64-windows/.
