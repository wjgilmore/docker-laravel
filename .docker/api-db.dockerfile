FROM mysql:latest
MAINTAINER Richard Bagshaw
ENV MYSQL_ROOT_PASSWORD=root
EXPOSE 3306

ADD ["./.docker/api-db/database.sh", "/docker-entrypoint-initdb.d/"]