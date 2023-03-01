FROM php:8.1.10-cli-alpine3.16

RUN apk update && apk add --no-cache autoconf  gcc make libc-dev  libmcrypt-dev php8-gd php8-pdo_mysql git zlib-dev libpng-dev patch php8-mysqli php8-zip openssh rsync \
  && docker-php-ext-configure gd \
  && printf "\n" | pecl install mcrypt \
  && echo "extension=/usr/local/lib/php/extensions/no-debug-non-zts-20210902/mcrypt.so" > /usr/local/etc/php/conf.d/mcrypt.ini \
  && docker-php-ext-install pdo_mysql gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.6
