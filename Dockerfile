# Dockerfile
FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt -yqq update
RUN apt -yqq install iputils-ping libmcrypt-dev
RUN apt-get install -y php7.4 php-fpm php-pdo-mysql php-mbstring



# FROM php:7.4-cli

# RUN apt-get update -y && apt-get install -y libmcrypt-dev

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=1.10.27
# RUN docker-php-ext-install pdo mbstring
# RUN source ~/.profile
WORKDIR /app
COPY . /app

# RUN composer install

EXPOSE 8000
CMD php artisan serve --host=0.0.0.0 --port=8000