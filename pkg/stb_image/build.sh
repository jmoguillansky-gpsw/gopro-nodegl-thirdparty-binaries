#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external

wget -nc https://raw.githubusercontent.com/nothings/stb/master/stb_image.h -P $TMP_DIR/stb_image/stb
cd $TMP_DIR/stb_image && tar czf stb_image.tgz stb; cd -
