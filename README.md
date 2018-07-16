## Requirements
- [Docker Community Edition](https://docs.docker.com/install/) (17.09+)
- [Docker Compose](https://docs.docker.com/compose/install/) (1.19+)
- [Git](https://git-scm.com/downloads)

## Install
```
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
PATH_TO_MYSQL_DATA=var/lib/mysql
PATH_TO_REDIS_DATA=var/lib/redis
MYSQL_ROOT_PASSWORD=root
MYSQL_LOGROOM_USER=logroom
MYSQL_LOGROOM_PASSWORD=logroom
MYSQL_LOGROOM_DATABASE=logroom
PATH_TO_LOGROOM_LOG=var/log/logroom
FRONTEND_SUBNET=172.16.1.0/28
FRONTEND_IPV4_LOGROOM_UI=172.16.1.3
FRONTEND_IPV4_LOGROOM_SERVER=172.16.1.4
LOCAL_LOGROOM_HTTP_PORT=8080
LOCAL_LOGROOM_WS_PORT=9861
BACKEND_SUBNET=172.16.2.0/28
BACKEND_IPV4_MYSQL=172.16.2.3
BACKEND_IPV4_REDIS=172.16.2.4
```
- Start Docker Compose
```
docker-compose up
```