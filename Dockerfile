FROM composer:2.0.3

RUN docker-php-ext-install pcntl bcmath

# Redis/KeyDB
ENV EXT_REDIS_VERSION=4.3.0
RUN mkdir -p /usr/src/php/ext/redis \
    && curl -fsSL "https://github.com/phpredis/phpredis/archive/${EXT_REDIS_VERSION}.tar.gz" | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && docker-php-ext-install redis
