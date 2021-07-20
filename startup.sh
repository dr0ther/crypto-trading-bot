#!/bin/bash
source=/app
dest=/usr/src/app



#rsync -arv $source/* $dest/ 

FILE=/usr/src/app/conf.json
if [ -f "$FILE" ]; then
    echo "$FILE exists, do nothing"
else 
    echo "$FILE does not exist"
    git clone https://github.com/dr0ther/crypto-trading-bot.git /usr/src/app
fi




#keep it running
tail -f /dev/null
