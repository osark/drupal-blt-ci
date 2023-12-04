FROM php:8.2.13-cli-alpine3.18

RUN apk update && apk add --no-cache autoconf  gcc make libc-dev  libmcrypt-dev php82-gd php82-pdo_mysql git zlib-dev libpng-dev patch php82-mysqli libzip-dev php82-zip openssh rsync \
  && docker-php-ext-configure gd \
  && printf "\n" | pecl install mcrypt \
  && echo "extension=/usr/local/lib/php/extensions/no-debug-non-zts-20220829/mcrypt.so" > /usr/local/etc/php/conf.d/mcrypt.ini \
  && docker-php-ext-install pdo_mysql gd zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.6
