#!/bin/bash

name=$(grep -oP 'project\(\K[^)]*' ../../CMakeLists.txt)
cmake -S ../..
make
'./'$name


