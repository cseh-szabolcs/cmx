#!/bin/bash
ENV TZ=Europe/Zurich
 ln -snf /usr/share/zoneinfo/"$TZ" /etc/localtime && echo "$TZ" > /etc/timezone

curl -sSLf \
  -o /usr/local/bin/install-php-extensions \
  https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions

chmod +x /usr/local/bin/install-php-extensions

install-php-extensions pdo
install-php-extensions pdo_mysql
install-php-extensions opcache
install-php-extensions apcu
install-php-extensions intl
install-php-extensions zip
install-php-extensions bcmath

for var in "$@"
do
    install-php-extensions "$var"
done

rm -R /usr/local/bin/install-php-extensions
