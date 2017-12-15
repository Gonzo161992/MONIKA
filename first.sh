#!/bin/bash
echo "first line"
echo "second line"
docker pull raveena1/test
docker-compose start
docker-compose up -d
sleep 123
docker-compose ps
docker-compose stop
echo "stopped------"
docker cp mywebcontainer:/ .
echo "removing containers"
sleep 3
docker-compose rm -f
