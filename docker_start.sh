#!/bin/bash
docker-compose  build --pull $@ --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) && docker-compose up