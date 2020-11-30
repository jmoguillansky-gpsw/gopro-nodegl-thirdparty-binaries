#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external

wget -nc https://www.khronos.org/registry/OpenGL/api/GL/glext.h -P $TMP_DIR/glext/gl/include/GL
cd $TMP_DIR/glext && tar czf glext.tgz gl; cd -
