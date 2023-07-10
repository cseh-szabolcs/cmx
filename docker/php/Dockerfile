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

# Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm install npm -g && \
    npm install yarn -g

WORKDIR /app

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
