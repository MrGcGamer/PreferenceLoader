#/bin/sh
export PREFIX=$THEOS/toolchain/Xcode.arm64eLegacy.xctoolchain/usr/bin/
echo "Starting rootful build"
make clean package FINALPACKAGE=1 &> /dev/null
echo "Rootful build done"

export -n PREFIX
echo "Starting rootless build"
make clean package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless &> /dev/null
echo "Rootless build done"