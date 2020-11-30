#!/bin/bash
TMP_DIR=/tmp/gopro-pkg/external

wget -nc https://raw.githubusercontent.com/nlohmann/json/develop/single_include/nlohmann/json.hpp -P $TMP_DIR/nlohmann_json/json
cd $TMP_DIR/nlohmann_json && tar czf nlohmann_json.tgz json; cd -
