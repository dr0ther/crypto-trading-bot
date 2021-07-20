#!/bin/bash
dir1=/app
dir2=/usr/src/app

ls $dir1
ls $dir2

for FILE in $(diff $dir1 $dir2|grep $dir1 | cut -f4 -d' ')
do
  cp -pr $dir1/${FILE} $dir2/${FILE}
done
