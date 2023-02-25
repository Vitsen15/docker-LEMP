FROM php:7.4-fpm

WORKDIR "/application"

ARG DEBIAN_FRONTEND=noninteractive
ARG USER_ID
ARG GROUP_ID

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libxpm-dev \
        libwebp-dev \
        libjpeg62-turbo-dev \
        libicu-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
        libmagickwand-dev \
        libmagickcore-dev \
        g++ \
        vim \
        less \
        wget \
        git \
        unzip \
    && pecl install xdebug-3.1.5 \
    && pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    && pecl install imagick \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-enable redis \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && docker-php-ext-install exif \
    && docker-php-ext-enable exif \
    && docker-php-ext-configure pdo_mysql --with-pdo-mysql \
    && docker-php-ext-install -j$(nproc) pdo_mysql \
    && docker-php-ext-install -j$(nproc) json \
    && docker-php-ext-configure zip \
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install exif \
    && docker-php-ext-enable exif \
    && docker-php-ext-configure iconv \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-configure bcmath \
    && docker-php-ext-install -j$(nproc) bcmath\
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) intl \
    && docker-php-ext-configure pcntl \
    && docker-php-ext-install -j$(nproc)  pcntl\
    && docker-php-ext-configure mbstring \
    && docker-php-ext-install -j$(nproc) mbstring\
    && docker-php-ext-configure soap \
    && docker-php-ext-install -j$(nproc) soap

# Install composer
RUN wget https://getcomposer.org/installer -O - -q \
    | php -- --install-dir=/bin --filename=composer --quiet

# Change user and group ids to machine.
RUN usermod -u ${USER_ID} www-data && groupmod -g ${GROUP_ID} www-data

USER "${USER_ID}:${GROUP_ID}"

# Copy configuration
ADD ./php.ini /usr/local/etc/php/php.ini

CMD ["php-fpm"]
