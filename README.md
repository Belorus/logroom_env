## Requirements
- [Docker Community Edition](https://docs.docker.com/install/) (17.09+)
- [Docker Compose](https://docs.docker.com/compose/install/) (1.19+)
- [Git](https://git-scm.com/downloads)

## Install
- Clone logroom_env repository
```
git clone https://github.com/Belorus/logroom_env.git && cd logroom_env
```
- Copy "**local.env**" into "**.env**".
```
cp {local,}.env
```
	Open this file and correct necessary parameters.

	Here is a sample how it can look:
```
PATH_TO_MYSQL_DATA=./var/lib/mysql
PATH_TO_REDIS_DATA=./var/lib/redis
MYSQL_ROOT_PASSWORD=root
MYSQL_LOGROOM_USER=logroom
MYSQL_LOGROOM_PASSWORD=logroom
MYSQL_LOGROOM_DATABASE=logroom
PATH_TO_LOGROOM_LOG=./var/log/logroom
PATH_TO_LOGROOM_MODULE=./images/logroom-server/src/node_modules/logroom-server
PATH_TO_LOGROOM_UI=./images/logroom-ui/src/logroom-ui
LOCAL_LOGROOM_UI_PORT=9000
LOCAL_LOGROOM_SERVER_HTTP_PORT=8080
LOCAL_LOGROOM_SERVER_WS_PORT=9861
```
- Start Docker Compose
```
docker-compose up
```