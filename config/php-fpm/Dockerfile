FROM php:7.2-fpm
WORKDIR "/application"

#TODO: Fix problems with commented extensions instalation

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update && apt-get install -y \
            libfreetype6-dev \
            libjpeg62-turbo-dev \
            libpng-dev

RUN docker-php-ext-configure gd \
            --with-gd \
            --with-freetype-dir=/usr/include/ \
            --with-png-dir=/usr/include/ \
            --with-jpeg-dir=/usr/include/
RUN docker-php-ext-configure bcmath --enable-bcmath
#RUN docker-php-ext-configure intl --enable-intl
RUN docker-php-ext-configure pcntl --enable-pcntl
RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql
#RUN docker-php-ext-configure pdo_pgsql --with-pgsql
RUN docker-php-ext-configure mbstring --enable-mbstring
#RUN docker-php-ext-configure soap --enable-soap

RUN docker-php-ext-install -j$(nproc) \
        gd \
        bcmath \
#        intl \
        pcntl \
        pdo_mysql \
#        pdo_pgsql \
        mbstring \
#        soap \
        iconv