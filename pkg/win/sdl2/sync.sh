#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external

wget -nc https://www.libsdl.org/release/SDL2-devel-2.0.12-VC.zip -P $TMP_DIR/sdl2
cd $TMP_DIR/sdl2 && unzip SDL2-devel-2.0.12-VC.zip; cd -
