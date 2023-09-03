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
mkdir -p ~/data/data/www_mysql_8_data
```

## Start the service.

```bash
bash ./run_docker_dev.sh up # for running.

bash ./run_docker_dev.sh stop # for stopping.

bash ./run_docker_dev.sh rmdata # for deleting containers, volumes and databases.
```

## Run the following command for client connection. [Checkout the doc.](https://hub.docker.com/_/mysql)

```bash
docker run -it --network webnet --rm mysql:8.1.0 mysql -h www_mysql_8 -u root -p
```
