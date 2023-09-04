#!/usr/bin/bash

if [ "$1" == "up" ]; then
    docker-compose -p docker_mysql -f ./docker-compose.yml up -d
elif [ "$1" == "stop" ]; then
    docker-compose -p docker_mysql -f ./docker-compose.yml stop
elif [ "$1" == "rm" ]; then
    docker-compose -p docker_mysql -f ./docker-compose.yml rm
elif [ "$1" == "rmdata" ]; then
    echo "Do you want to delete all the containers and volumes of this service? It will delete the databases also. (y/n)"
    while : ; do
        read answer
        case $answer in
            y | Y )
                docker-compose -p docker_mysql -f ./docker-compose.yml stop && \
                docker-compose -p docker_mysql -f ./docker-compose.yml rm && \
                docker volume rm docker_mysql_www_mysql_8_data && \
                echo "You shoud manually delete the folder: ~/data/data/www_mysql_8_data"
                exit
                ;;
            * )
                exit
                ;;
        esac
    done
else
    echo "Unexpected parameter: $1"
fi

docker rmi $(docker images -f "dangling=true" -q)
