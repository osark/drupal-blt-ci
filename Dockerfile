FROM php:8.3.28-cli-alpine3.21

RUN apk update && apk add --no-cache autoconf  gcc make libc-dev  libmcrypt-dev php83-gd php83-pdo_mysql git zlib-dev libpng-dev patch php83-mysqli libzip-dev php83-zip openssh rsync \
  && docker-php-ext-configure gd \
  && printf "\n" | pecl install mcrypt \
  && echo "extension=/usr/local/lib/php/extensions/no-debug-non-zts-20220829/mcrypt.so" > /usr/local/etc/php/conf.d/mcrypt.ini \
  && docker-php-ext-install pdo_mysql gd zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.8.1
