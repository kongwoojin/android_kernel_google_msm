#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=$(pwd)/../arm-eabi-4.8/bin/arm-eabi-

make followmsi_defconfig
make -j$(nproc)

cp $(pwd)/arch/arm/boot/zImage $(pwd)/zImage
