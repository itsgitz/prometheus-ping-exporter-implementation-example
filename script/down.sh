#!/usr/bin/env bash

# echo "Stopping ping_exporter ..."
# docker stop ping_exporter

# echo ""

# echo "Remove ping_exporter ..."
# docker rm ping_exporter
PROJECT_NAME="prometheus-ping-exporter-local"

echo "Stopping ping_exporter"
docker-compose -p $PROJECT_NAME down -v
docker system prune
