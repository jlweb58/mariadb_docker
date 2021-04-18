# mariadb_docker

This project enables creating a dockerized development database from a dump of my jogging3 database

Run the local container with 

docker run --net=host -d --rm -e MYSQL_ROOT_PASSWORD=pw -e MYSQL_DATABASE=db  jlweb58/jlweb58-repo:database_dump-latest


