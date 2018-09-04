#!/usr/bin/bash


git pull origin master:master && \
if [ "$1" == "build" ]; then
    docker-compose -f ./docker-compose.yml build www_mysql_5
elif [ "$1" == "up" ]; then
    docker-compose -f ./docker-compose.yml up -d www_mysql_5
elif [ "$1" == "recreate" ]; then
    docker-compose -f ./docker-compose.yml up -d --build --force-recreate www_mysql_5
elif [ "$1" == "restart" ]; then
    docker-compose -f ./docker-compose.yml restart www_mysql_5
elif [ "$1" == "stop" ]; then
    docker-compose -f ./docker-compose.yml stop www_mysql_5
elif [ "$1" == "rm" ]; then
    docker-compose -f ./docker-compose.yml rm www_mysql_5
elif [ "$1" == "static" ]; then
    echo "Deploy static files."
else
    echo "Unexpected parameter: $1"
fi

docker rmi $(docker images -f "dangling=true" -q)
