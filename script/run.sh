#!/usr/bin/env bash

echo "Running ping_exporter command ..."
# docker run \
# 	-p 9427:9427 \
# 	-v "${PWD}":/config:ro \
# 	--name ping_exporter \
# 	czerwonk/ping_exporter

PROJECT_NAME="prometheus-ping-exporter-local"

docker-compose -p $PROJECT_NAME up -d --force-recreate
docker-compose -p $PROJECT_NAME logs -f --tail 10
