#!/bin/bash
set -xu
OS=$1
PKG=$2
echo "OS: [$OS] PKG: [$PKG]"
TMP_DIR=/tmp/gopro-pkg/external
if [ $OS == "win64" ]; then

    if [ $PKG == "pkg-config:x64-windows" ]; then
        mkdir -p $TMP_DIR/pkg-config && wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/pkg-config.tgz?raw=true -O $TMP_DIR/pkg-config/pkg-config.tgz
        (cd win64 && tar xzf $TMP_DIR/pkg-config/pkg-config.tgz)
    fi

    elif [ $PKG == "ffmpeg:x64-windows" ]; then
        mkdir -p $TMP_DIR/ffmpeg && wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/ffmpeg_x64-windows.7z?raw=true -O $TMP_DIR/ffmpeg/ffmpeg_x64-windows.7z
        (cd win64 && 7z x $TMP_DIR/ffmpeg/ffmpeg_x64-windows.7z)
    fi

    elif [ $PKG == "pthreads:x64-windows" ]; then
        mkdir -p $TMP_DIR/pthreads && wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/pthreads_x64-windows.7z?raw=true -O $TMP_DIR/pthreads/pthreads_x64-windows.7z
        (cd win64 && 7z x $TMP_DIR/pthreads/pthreads_x64-windows.7z)
    fi
    
    elif [ $PKG == "sdl2_x64-windows" ]; then
        mkdir -p $TMP_DIR/sdl2 && wget -nc https://github.com/jmoguillansky-gpsw/gopro-pkg/blob/master/external/win64/sdl2_x64-windows.zip?raw=true -O $TMP_DIR/sdl2/sdl2_x64-windows.7z
        (cd win64 && 7z x $TMP_DIR/sdl2/sdl2_x64-windows.7z -d sdl2_x64-windows)
    fi

fi
