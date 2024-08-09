#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /path/to/your/docker-compose/directory

$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP nginx-reverse-proxy

$DOCKER system prune -af
