FROM inikolaev/alpine-nodejs

RUN npm install -g heroku \
    && apk add --no-cache jq

ENTRYPOINT ["heroku"]
CMD ["--version"]
