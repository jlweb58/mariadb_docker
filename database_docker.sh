#! /bin/bash

cd ~/mariadb_docker

# Update the repository
git pull

# Copy the latest db version
DATABASE=database_latest.sql
gunzip -f ../$DATABASE.gz
cp -f ../$DATABASE .

# If this fails the rest won't work
docker login
docker build . -t jlweb58/jlweb58-repo:database_dump-latest
docker push jlweb58/jlweb58-repo:database_dump-latest
echo "Building and pushing docker image succeeded"




