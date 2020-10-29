FROM composer:latest

RUN docker-php-ext-install pcntl bcmath
