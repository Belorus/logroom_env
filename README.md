## Requirements
- [Docker Community Edition](https://docs.docker.com/install/) (17.09+)
- [Docker Compose](https://docs.docker.com/compose/install/) (1.19+)
- [Git](https://git-scm.com/downloads)

## Install
- Create necessary directories in your workspace (for example logroom-workspace)
```
cd logroom-workspace && mkdir -p var/lib/mysql var/lib/redis var/log/logroom
```
- Clone logroom-server repository
```
git clone https://github.com/Belorus/logroom_server.git
```
- Clone logroom-env repository
```
git clone https://github.com/Belorus/logroom_env.git
```
- The result of your workspace should look like it shown below:
```
logroom-workspace      # < Development folder
├── logroom-server     # < LogRoom Server Module
├── logroom-env        # < Dir with docker-compose
└── var                #
    ├── lib            #
    │   ├── mysql      # < Shared path to mysql data
    │   └── redis      # < Shared path to redis data
    └── log            #
        └── logroom    # < Shared path to LogRoom Server log
```
> **Note**: You can change this file structure using "**logroom-env/.env**" file. See next step.
- Copy "**logroom-env/local.env**" into "**logroom-env/.env**".
```
cp logroom-env/{local,}.env
```
	Open this file and correct necessary parameters.

	Here is a sample how it can look:
```
PATH_TO_LOGROOM_MODULE=../logroom-server
PATH_TO_MYSQL_DATA=../var/lib/mysql
PATH_TO_REDIS_DATA=../var/lib/redis
MYSQL_ROOT_PASSWORD=root
MYSQL_LOGROOM_USER=logroom
MYSQL_LOGROOM_PASSWORD=logroom
MYSQL_LOGROOM_DATABASE=logroom
PATH_TO_SERVER_LOG=../var/log/logroom
FRONTEND_SUBNET=172.16.1.0/28
FRONTEND_IPV4_LOGROOM=172.16.1.3
LOCAL_LOGROOM_HTTP_PORT=8080
LOCAL_LOGROOM_WS_PORT=9861
BACKEND_SUBNET=172.16.2.0/28
BACKEND_IPV4_MYSQL=172.16.2.3
BACKEND_IPV4_REDIS=172.16.2.4
```
- Start Docker Compose
```
cd logroom-env
docker-compose up
```