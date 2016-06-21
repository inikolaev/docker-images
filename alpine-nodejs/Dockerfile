FROM alpine:latest

RUN apk --update add nodejs \
    && rm -f /var/cache/apk/*

ENTRYPOINT ["node"]
CMD ["--version"]
