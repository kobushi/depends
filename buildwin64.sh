#!/bin/sh
make HOST=x86_64-w64-mingw32
wget https://github.com/kobushi/depends/releases/download/first/libpng-1.6.32.tar.gz
tar -zxvf libpng-1.6.32.tar.gz
cd libpng-1.6.32
cp ../x86_64-w64-mingw32/include/zlib.h ./
cp ../x86_64-w64-mingw32/include/zconf.h ./
make -f ../makelibpng.msys64
cp ./libpng.a ../x86_64-w64-mingw32/lib
cp ./png.h ../x86_64-w64-mingw32/include
cp ./pngconf.h ../x86_64-w64-mingw32/include
cp ./pnglibconf.h ../x86_64-w64-mingw32/include

