#!/bin/bash

##
## OSX Binaries aren't easy to ship statically linked so we need to work around this...
##

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

##
## This allows the yices binary to find its libraries inside this package.
##
export DYLD_LIBRARY_PATH=$DIR/yices-2.4.1/lib:$DYLD_LIBRARY_PATH

##
## Actually execute the real prover 
##

PATH=$DIR:$PATH

yices.bin "$@"
