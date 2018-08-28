Dockerized template on LEMP stack
=================================

## Used images ##

|     Image     |    Version    |
|     :---:     |     :---:     |
|   `php-fpm`   |      7.2      |
|   `MariaDB`   |     10.1      |
|    `Nginx`    |    latest     |

## Setup ##

 * Clone source code repository to `app/` dir, set it up as git module, commit and push all project after.
 * Put MySQL dump file with name `dump.sql` to `mysql-dump/` dir.
 * Define document root for nginx at `config/nginx/nginx.conf`.
 * Rename .env.sample to .env and fill all variables. **Note:** if you don't fill COMPOSE_PROJECT_NAME variable,
 it will be replaced by parent dir by default. 