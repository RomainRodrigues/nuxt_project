FROM node:14-alpine

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add git

COPY ./front/package*.json /app/

RUN npm install && npm cache clean --force

COPY . .

ENV PATH ./node_modules/.bin/:$PATH