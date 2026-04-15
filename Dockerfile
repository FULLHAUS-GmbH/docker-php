ARG PHP_VERSION=8.5
FROM serversideup/php:${PHP_VERSION}-fpm-nginx-alpine

USER root

# Install additional PHP extensions required by TYPO3
RUN install-php-extensions \
    intl \
    gd \
    bcmath \
    exif \
    imagick

# Install tools
RUN apk add --no-cache \
    imagemagick \
    ghostscript \
    poppler-utils \
    mysql-client \
    ffmpeg

USER www-data
