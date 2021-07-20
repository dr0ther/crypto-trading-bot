#!/bin/bash
dir1=/app
dir2=/usr/src/app

echo "list /app directory"
ls $dir1

echo "list /usr/src/app directory"
ls $dir2

for FILE in $(diff $dir1 $dir2|grep $dir1 | cut -f4 -d' ')
do
  cp -pr $dir1/${FILE} $dir2/${FILE}
done
