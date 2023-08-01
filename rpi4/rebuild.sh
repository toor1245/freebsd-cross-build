export BASEDIR=$(pwd)
export MAKEOBJDIRPREFIX=$BASEDIR/obj
export SRCDIR=$BASEDIR/src
export EXTRA_BUILD_ARGS=--cross-bindir=/usr/lib/llvm-17/bin

cd $SRCDIR
$SRCDIR/tools/build/make.py -j16 $EXTRA_BUILD_ARGS kernel NO_MODULES=yes KERNFAST=1 TARGET=arm64 TARGET_ARCH=aarch64 DESTDIR=$BASEDIR/nfsroot
