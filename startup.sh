#!/bin/bash
source=/app
dest=/usr/src/app

echo "list /app directory"
ls -l $dir1

echo "list /usr/src/app directory"
ls -l $dir2

rsync -arv $source/* $dest/ 

echo "list /usr/src/app directory"
ls -l $dir2
