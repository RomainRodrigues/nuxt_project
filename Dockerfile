FROM node:20-alpine
ARG USER_ID
ARG GROUP_ID

RUN apk update && apk upgrade
RUN apk add shadow
RUN apk add bash

RUN deluser node ; \ 
    addgroup -g ${GROUP_ID} -S www-data ; \
    groupmod -g ${GROUP_ID} www-data ; \
    adduser -u ${USER_ID} -D -S -G www-data www-data && exit 0 ; exit 1

ENTRYPOINT [ "" ]
USER www-data

CMD echo "0" && id &&\
    echo "Front" && if [ -d /app/front/ ]; then cd /app/front; npm install; npm run dev; fi
