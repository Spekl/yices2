#!/bin/sh

##
## OSX Binaries aren't easy to ship statically linked so we need to work around this...
##
CWD=`pwd`

##
## This allows the yices binary to find its libraries inside this package.
##
export DYLD_LIBRARY_PATH=$CWD/yices-2.4.1/lib:$DYLD_LIBRARY_PATH

##
## Actually execute the real prover 
##

./yices.bin "$@"
