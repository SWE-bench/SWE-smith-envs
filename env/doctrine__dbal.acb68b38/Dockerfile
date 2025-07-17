FROM php:8.3
RUN apt-get update &&     apt-get install -y wget git build-essential unzip libgd-dev libzip-dev libgmp-dev libftp-dev libcurl4-openssl-dev libpq-dev libsqlite3-dev &&     docker-php-ext-install pdo pdo_mysql pdo_pgsql pdo_sqlite mysqli gd zip gmp ftp curl pcntl &&     apt-get -y autoclean &&     rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php -- --2.2 --install-dir=/usr/local/bin --filename=composer

RUN git clone https://github.com/swesmith/doctrine__dbal.acb68b38 /testbed
WORKDIR /testbed
RUN composer update
RUN composer install
