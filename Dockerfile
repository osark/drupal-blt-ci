FROM php:7.4.21-cli-alpine

# RUN apk update && apk add --no-cache php7-gd-7.4.21 php7-pdo_mysql-7.4.21 php7-pecl-mcrypt-1.0.4 git
# RUN apk update && apk search --no-cache php7-gd php7-pdo_mysql php70-pecl-mcrypt git
RUN apk update && apk add --no-cache autoconf php7-gd php7-pecl-mcrypt php7-pdo_mysql git zlib-dev libpng-dev \
  && docker-php-ext-configure gd \
  && echo "extension=/usr/lib/php7/modules/mcrypt.so" > /usr/local/etc/php/conf.d/mcrypt.ini \
  && docker-php-ext-install pdo_mysql gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=1.10.22
