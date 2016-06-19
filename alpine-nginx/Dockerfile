FROM alpine:latest

ENV NGINX_VERSION 1.10.1

RUN addgroup -S nginx \
    && adduser -S nginx -G nginx \
    && cd /tmp \
    && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz \
    && tar zxvf nginx-${NGINX_VERSION}.tar.gz \
    && cd nginx-${NGINX_VERSION} \
    && apk --update --no-cache add pcre \
    && apk --update --no-cache --virtual build-dependencies add alpine-sdk pcre-dev zlib-dev \
    && rm -f /var/cache/apk/* \
    && ./configure \
                   --prefix=/opt/nginx-${NGINX_VERSION} \
                   --user=nginx \
                   --group=nginx \
    && make \
    && make install \
    && cd /tmp \
    && rm -rf nginx-${NGINX_VERSION} \
    && apk del build-dependencies

ENV PATH /opt/nginx-${NGINX_VERSION}/sbin:${PATH}

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
