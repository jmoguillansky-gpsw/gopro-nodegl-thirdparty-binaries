#!/bin/bash
set -ex
VCVARS64="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

cmd.exe /C "$VCVARS64" \&\& bash.exe ./pkg/win/glfw/build_cmd.sh
