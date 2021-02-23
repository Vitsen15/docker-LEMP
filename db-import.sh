#!/bin/bash

# Notice color
Yellow='\033[0;33m'

containerName=${1}
userName=${2}
dbName=${3}
dumpFile=${4}

echo -e "${Yellow}Enter password for \"${dbName}\" database"

read -s dbPassword

# Loads and imports a local dump file inside the mysql container
docker exec -i ${containerName} mysql -u${userName} -p${dbPassword} ${dbName} < ${dumpFile}