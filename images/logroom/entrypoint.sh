#!/bin/bash

mysql -h logroom-mysql -D${MYSQL_LOGROOM_DATABASE} -u${MYSQL_LOGROOM_USER} -p${MYSQL_LOGROOM_PASSWORD} < /opt/logRoomServer/dev/init.sql

cd /opt/logRoomServer/node_modules/logroom-server
npm install

/usr/bin/supervisord
