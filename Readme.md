Dockerized template on LEMP stack
=================================

## Used images ##

|     Image     |    Version    |
|     :---:     |     :---:     |
|   `php-fpm`   |      7.2      |
|   `MariaDB`   |     10.1      |
|    `Nginx`    |    latest     |

## Setup ##
 * Clone the repository.
 * Clone source code repository to project root and rename project dir to `app/`, set it up as git module, commit and 
 push all project after.
 * Put MySQL dump file with name `dump.sql` to `mysql-dump/` dir.
 * Define document root for nginx at `config/nginx/nginx.conf`.
 * Create .env file and fill all variables like in .env.sample. **Note:** if you don't fill `COMPOSE_PROJECT_NAME` 
 variable, it will be replaced by parent dir by default. 