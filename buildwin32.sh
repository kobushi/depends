#!/bin/sh
make HOST=i686-w64-mingw32
wget https://github.com/kobushi/depends/releases/download/first/libpng-1.6.34.tar.gz
tar -zxvf libpng-1.6.34.tar.gz
cd libpng-1.6.34
cp ../i686-w64-mingw32/include/zlib.h ./
cp ../i686-w64-mingw32/include/zconf.h ./
make -f ../makelibpng.msys32
cp ./libpng.a ../i686-w64-mingw32/lib
cp ./png.h ../i686-w64-mingw32/include
cp ./pngconf.h ../i686-w64-mingw32/include
cp ./pnglibconf.h ../i686-w64-mingw32/include
make -f ../makelibpng.msys32 clean
cd ..
