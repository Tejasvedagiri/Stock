#!/bin/bash

ENV_TMP="dev.env"
docker-compose --env-file $ENV_TMP down
docker-compose --env-file $ENV_TMP pull
docker-compose --env-file $ENV_TMP up
