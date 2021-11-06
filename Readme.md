Dockerized template on LEMP stack
=================================

### Used images ###

|     Image     |      Version      |
|     :---:     |       :---:       |
|   `php-fpm`   |  5.6_7.2_7.3_7.4  |
|    `MySQL`    |         8         |
|    `Nginx`    |      stable       |
|   `Composer`  |      latest       |

### Configuration ###

 * Clone source code repository to project root and rename project dir to `app/`.
 * If you have a MySQL dump, put it with name `dump.sql` to `mysql-dump/` dir.
 * Define correct document root for Nginx at `config/nginx/nginx.conf`.
 * Create .env file and fill all variables like in .env.sample. **Note:** if you don't fill `COMPOSE_PROJECT_NAME` 
 variable, it will be replaced by parent dir by default.
 
### Setup ###
 * Start containers: run `docker-compose up -d` for building docker images and start docker containers.
 
 * For import dump file to container with MySQL run: `db-import.sh [container_name] [user_name] [db_name] [dump_file_path]`, then script requires a password for `user_name` and begins import after if authorized.
 
 * Install php dependencies: run `docker-compose up -d` for starting composer, **Note:** every time when you run
 `docker-compose up -d` you also start composer.
