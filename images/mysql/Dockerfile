FROM percona/percona-server:5.7

USER root

COPY config/my.cnf /etc/mysql/

COPY logroom-mysql-entrypoint.sh /

RUN apt-get update && \
	apt-get install sudo && \
	chmod +x /logroom-mysql-entrypoint.sh &&\
        sudo chmod 777 /var/lib/mysql

ENTRYPOINT ["/logroom-mysql-entrypoint.sh"]

EXPOSE 3306
