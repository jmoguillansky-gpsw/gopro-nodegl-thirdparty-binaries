#!/bin/bash
set -ex
DEVCMD="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
VCVARS64="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

cmd.exe /C "$DEVCMD" \&\& bash.exe ./pkg/win/pthreads/build_cmd.sh
