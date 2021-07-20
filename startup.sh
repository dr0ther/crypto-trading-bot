#!/bin/bash

FILE=/usr/src/app/conf.json
if [ -f "$FILE" ]; then
    echo "$FILE exists, do nothing"
else 
    echo "$FILE does not exist"
    git clone https://github.com/dr0ther/crypto-trading-bot.git /usr/src/app
    cp /usr/src/app/instance.js.dist /usr/src/app/instance.js 
    cp /usr/src/app/conf.json.dist /usr/src/app/conf.json 
    sqlite3 bot.db < /usr/src/app/bot.sql


    
fi




#keep it running
npm start
