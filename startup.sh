#!/bin/bash
source=/app
dest=/usr/src/app



#rsync -arv $source/* $dest/ 

FILE=/config/conf.json
if [ -f "$FILE" ]; then
    echo "$FILE exist"
    rm -rf /usr/src/app/conf.json
    cp /config/conf.json /usr/src/app/conf.json
else 
    echo "$FILE does not exist"
    cp /usr/src/app/conf.json /config/conf.json
fi


FILE=/config/conf.json
if [ -f "$FILE" ]; then
    echo "$FILE exist"
    rm -rf /usr/src/app/conf.json
    cp /config/conf.json /usr/src/app/conf.json
else 
    echo "$FILE does not exist"
    cp /usr/src/app/conf.json /config/conf.json
fi


#keep it running
tail -f /dev/null
