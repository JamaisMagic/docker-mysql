# docker-mysql

Run mysql server in docker container via docker compose.

## Create network

Run

```bash
docker network ls
```

If there is no network called webnet, create it by run

```bash
docker network create -d bridge webnet
```

Or modifying the docker-compose.yml to rename your own network.

## Create data directory

```bash
cd ~/data/data/
mkdir ./www_mysql_8_data
```

## Start the service.

```bash
bash ./src/run_docker_dev.sh up # for running.

bash ./src/run_docker_dev.sh stop # for stopping.

bash ./src/run_docker_dev.sh rmdata # for deleting containers, volumes and databases.
```
