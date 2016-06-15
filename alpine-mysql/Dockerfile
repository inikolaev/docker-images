FROM alpine:latest

RUN apk add --no-cache mysql mysql-client \
    && rm -f /var/cache/apk/* \
    && mkdir -p /run/mysqld \
    && mysql_install_db --user=root > /dev/null
EXPOSE 3306
CMD mysqld --user=root --console
