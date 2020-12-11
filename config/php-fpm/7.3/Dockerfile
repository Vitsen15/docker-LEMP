FROM php:7.3-fpm

WORKDIR "/application"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && pecl install xdebug-2.7.1 \ && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libjpeg62-turbo-dev \
        libicu-dev \
        libxml2-dev \
        libzip-dev \
        g++ \
        vim \
        less \
        wget \
        git \
        unzip \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && docker-php-ext-configure pdo_mysql --with-pdo-mysql \
    && docker-php-ext-install -j$(nproc) pdo_mysql \
    && docker-php-ext-install -j$(nproc) json \
    && docker-php-ext-configure zip --enable-zip \
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-configure iconv \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd \
        --with-gd \
        --with-freetype-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-configure bcmath --enable-bcmath \
    && docker-php-ext-install -j$(nproc) bcmath\
    && docker-php-ext-configure intl --enable-intl \
    && docker-php-ext-install -j$(nproc) intl \
    && docker-php-ext-configure pcntl --enable-pcntl \
    && docker-php-ext-install -j$(nproc)  pcntl\
    && docker-php-ext-configure mbstring --enable-mbstring \
    && docker-php-ext-install -j$(nproc) mbstring\
    && docker-php-ext-configure soap --enable-soap \
    && docker-php-ext-install -j$(nproc) soap

# Copy configuration
COPY php.ini /usr/local/etc/php/conf.d/

CMD ["php-fpm"]
