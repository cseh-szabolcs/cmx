FROM php:8.2-fpm

ENV TZ=Europe/Zurich

COPY ./scripts/apt-packages-install.sh /tmp/scripts/apt-packages-install.sh
RUN chmod +x /tmp/scripts/apt-packages-install.sh && /tmp/scripts/apt-packages-install.sh

COPY ./scripts/php-extensions-install.sh /tmp/scripts/php-extensions-install.sh
RUN chmod +x /tmp/scripts/php-extensions-install.sh && /tmp/scripts/php-extensions-install.sh

# Symfony cli
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash
RUN apt install symfony-cli
RUN symfony server:ca:install

WORKDIR /app

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
