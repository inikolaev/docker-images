FROM node:13-alpine

RUN npm install -g heroku \
    && apk add --no-cache jq

ENTRYPOINT ["heroku"]
CMD ["--version"]
