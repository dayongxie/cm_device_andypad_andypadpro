#!/bin/sh
cd boot.img-data
cp ../../init.rc .
mkdir data
mkdir dev
mkdir proc
mkdir sys
mkdir system
find . | cpio -o -H newc | gzip > ../boot.gz
cd ..
rkcrc -k boot.gz boot.img

