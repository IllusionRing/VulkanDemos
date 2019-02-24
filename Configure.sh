#!/bin/bash
if [ ! -d "build" ]; then
    mkdir build
    cd build
    mkdir Debug
else
    rm -rf build/*
fi
cd build
cd Debug
Local_Dir=$(cd "$(dirname "$0")"; pwd)
echo "Now work at Dir:$Local_Dir"
cmake ../.. -DCMAKE_BUILD_TYPE=Debug -DGLFW_BUILD_EXAMPLES=OFF -DGLFW_BUILD_TESTS=OFF -DGLFW_BUILD_DOCS=OFF -DGLFW_INSTALL=OFF