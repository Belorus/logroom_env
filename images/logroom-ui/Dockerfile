FROM node:8.11

COPY ./src /opt/logRoomUi/

COPY supervisord.conf /etc/supervisor/conf.d/

COPY ./entrypoint.sh /

RUN apt-get update && \
	apt-get install -y \
		curl \
		git \
		supervisor \
		libmysqlclient18 \
		mysql-client && \
	git clone https://github.com/vishnubob/wait-for-it.git /opt/wait-for-it && \
	ln -s /opt/wait-for-it/wait-for-it.sh /usr/local/bin/wait-for-it && \
	chmod +x entrypoint.sh

EXPOSE 9000
