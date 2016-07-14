FROM richarvey/nginx-php-fpm:latest
MAINTAINER Richard Bagshaw

ENV DB_HOST=acme_db_1
ENV DB_PORT=3306
ENV DB_USERNAME=root
ENV DB_PASSWORD=root
ENV DB_DATABASE=acme

EXPOSE 80
