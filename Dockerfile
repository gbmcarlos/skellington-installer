FROM composer:1.7.2

WORKDIR /var/www

COPY scripts/install.sh install.sh

ENTRYPOINT ["/var/www/install.sh"]