FROM composer:2.0.3

RUN docker-php-ext-install pcntl bcmath
