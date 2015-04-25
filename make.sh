#!/bin/sh

if [ ! -d "build" ]; then
    mkdir build
fi

if [ "$1" != "clean" ]; then

#REM build C code
cd build
cmake -G"Unix Makefiles" ..
make
cd ..

echo === Successfully built librsync for Linux ===

else

rm -Rf build

fi

