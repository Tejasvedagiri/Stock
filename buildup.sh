#!/bin/bash

ENV_TMP="dev.env"
docker-compose --env-file $ENV_TMP up --build