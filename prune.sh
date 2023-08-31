#!/bin/bash


container_name_prefix="Eror_Stock_"

# Get a list of containers whose names start with the specified prefix
containers=$(docker ps -a --format "{{.Names}}" | grep "^${container_name_prefix}")

# Iterate over the list and remove each container
for container in $containers; do
    docker rm $container -f
done

docker image prune -a -f