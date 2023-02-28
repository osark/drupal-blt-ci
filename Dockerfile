FROM php:8.1.10-cli-alpine3.16

# RUN apk update && apk add --no-cache php7-gd-7.4.21 php7-pdo_mysql-7.4.21 php7-pecl-mcrypt-1.0.4 git
# RUN apk update && apk search --no-cache php7-gd php7-pdo_mysql php70-pecl-mcrypt git
RUN apk update && apk add --no-cache autoconf php8-gd php8-pecl-mcrypt php8-pdo_mysql git zlib-dev libpng-dev patch php8-mysqli openssh rsync \
  && docker-php-ext-configure gd \
  && echo "extension=/usr/lib/php8/modules/mcrypt.so" > /usr/local/etc/php/conf.d/mcrypt.ini \
  && docker-php-ext-install pdo_mysql gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.2.6
