#!/bin/bash
set -xu
PKGS=$1
echo "PKGS: [$PKGS]"
TMP_DIR=/tmp/gopro-pkg/external

function sync {
    PKG=$1
    if [ $PKG == "pkg-config:x64-windows" ]; then
        wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/pkg-config.7z?raw=true -O $TMP_DIR/pkg-config.7z
        (cd nodegl-env/Scripts && 7z x -y $TMP_DIR/pkg-config.7z)

    elif [ $PKG == "ffmpeg:x64-windows" ]; then
        wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/ffmpeg_x64-windows.7z?raw=true -O $TMP_DIR/ffmpeg_x64-windows.7z
        (cd external && 7z x -y $TMP_DIR/ffmpeg_x64-windows.7z)
        (cd external/ffmpeg_x64-windows && python.exe scripts/install.py ..\\..\\nodegl-env)

    elif [ $PKG == "pthreads:x64-windows" ]; then
        wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/pthreads_x64-windows.7z?raw=true -O $TMP_DIR/pthreads_x64-windows.7z
        (cd external && 7z x -y $TMP_DIR/pthreads_x64-windows.7z)

    elif [ $PKG == "sdl2_x64-windows" ]; then
        wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/sdl2_x64-windows.7z?raw=true -O $TMP_DIR/sdl2_x64-windows.7z
        (cd external && 7z x -y $TMP_DIR/sdl2_x64-windows.7z)
    fi
}

for PKG in $PKGS
do
    sync $PKG
done
