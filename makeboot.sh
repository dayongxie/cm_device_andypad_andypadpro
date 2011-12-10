#!/bin/sh
cd boot.img-data
find . | cpio -o -H newc | gzip > ../boot.gz
cd ..
rkcrc -k boot.gz boot.img

