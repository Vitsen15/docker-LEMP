#!/bin/bash

Yellow='\033[0;33m'       # Notice color

echo -e "${Yellow}Start importing DB..."

echo -e "${Yellow}Removing previously stored DB data from host machine..."
rm -rf mysql-db/*

echo -e "${Yellow}Recreating container with mariadb..."
docker-compose -f docker-compose-mariadb.yml up --renew-anon-volumes -d

echo -e "${Yellow}Import finished..."