#!/bin/bash
source=/app
dest=/usr/src/app



#rsync -arv $source/* $dest/ 

FILE=/usr/src/app/conf.json
if [ -f "$FILE" ]; then
    echo "$FILE exists, do nothing"
else 
    echo "$FILE does not exist"
    cp -pr /temp/* /usr/src/app
fi




#keep it running
tail -f /dev/null
