#!/bin/bash
dir1=/app
dir2=/usr/src/app


for FILE in $(diff $dir1 $dir2|grep $dir1 | cut -f4 -d' ')
do
  cp -p $dir1/${FILE} $dir2/${FILE}
done
