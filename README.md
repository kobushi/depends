WINDOWS BUILD NOTES
====================

Below are some notes on how to build depends for Windows.

Cross-compilation
-------------------

These steps can be performed on, for example, an Ubuntu VM. The depends system
will also work on other Linux distributions, however the commands for
installing the toolchain will be different.

First, install the general dependencies:

    sudo apt-get install build-essential libtool autotools-dev automake pkg-config bsdmainutils curl

A host toolchain (`build-essential`) is necessary because some dependency
packages (such as `protobuf`) need to build host utilities that are used in the
build process.

## Building for 64-bit Windows

To build executables for Windows 64-bit, install the following dependencies:

    sudo apt-get install g++-mingw-w64-x86-64 mingw-w64-x86-64-dev

Then build using:

    cd depends
    ./buildwin64.sh

## Building for 32-bit Windows

To build executables for Windows 32-bit, install the following dependencies:

    sudo apt-get install g++-mingw-w64-i686 mingw-w64-i686-dev 

Then build using:

    cd depends
    ./buildwin32.sh

## Omake Patch for BitZeny

For further documentation of Omake Patch for BitZeny, see [README](./omake/) in the omake directory.


