FROM node:18-alpine

WORKDIR /app/front

COPY ./front/package*.json .

RUN npm i && npm cache clean --force

COPY . ..

ENV PATH ./front/node_modules/.bin/:$PATH
