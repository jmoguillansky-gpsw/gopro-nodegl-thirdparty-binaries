#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`

wget -nc https://www.libsdl.org/release/SDL2-devel-2.0.12-VC.zip -P $TMP_DIR/sdl2
cd $TMP_DIR/sdl2 && unzip SDL2-devel-2.0.12-VC.zip && \
mv SDL2-2.0.12 sdl2_x64-windows
cd -
cp -rf $SCRIPT_PATH/patch/* $TMP_DIR/sdl2/sdl2_x64-windows/.
