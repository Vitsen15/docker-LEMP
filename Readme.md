Dockerized template on LEMP stack
=================================

### Used images ###

|     Image     |    Version    |
|     :---:     |     :---:     |
|   `php-fpm`   |      7.2      |
|   `MariaDB`   |     10.1      |
|    `Nginx`    |    stable     |
|   `Composer`  |    latest     |

### Configuration ###

 * Clone the repository.
 * Clone source code repository to project root and rename project dir to `app/`, set it up as git module, commit and 
 push all project after.
 * Put MySQL dump file with name `dump.sql` to `mysql-dump/` dir.
 * Define correct document root for nginx at `config/nginx/nginx.conf`.
 * Create .env file and fill all variables like in .env.sample. **Note:** if you don't fill `COMPOSE_PROJECT_NAME` 
 variable, it will be replaced by parent dir by default.
 
### Setup ###
 
 **Note: flag -d is used only for running containers in the background**
 
 * Start containers: run `docker-compose up -d` for building docker images and start docker containers.
 
 * Import database: run `sudo ./db-drop-import.sh` for import database to container with MariaDB. **Note:** this script
 drops all database files from `mysql-db/` dir, recreates container and imports db from `mysql-dump` to it.
 
 * Install php dependencies: run `docker-compose up -d` for starting composer, **Note:** every time when you run
 `docker-compose up -d` you also start composer.