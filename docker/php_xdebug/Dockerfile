FROM php:8.1-fpm

ENV TZ=Europe/Zurich

COPY ./scripts/apt-packages-install.sh /tmp/scripts/apt-packages-install.sh
RUN chmod +x /tmp/scripts/apt-packages-install.sh && /tmp/scripts/apt-packages-install.sh

COPY ./scripts/php-extensions-install.sh /tmp/scripts/php-extensions-install.sh
RUN chmod +x /tmp/scripts/php-extensions-install.sh && /tmp/scripts/php-extensions-install.sh \
    xdebug

WORKDIR /app
