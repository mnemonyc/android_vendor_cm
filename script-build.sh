#!/bin/bash
export PATH=/data/bin:$PATH
export CCACHE_DIR=/data/ccache/users/
export USE_CCACHE=1

make clean && make clobber

source build/envsetup.sh

croot

brunch shamu
