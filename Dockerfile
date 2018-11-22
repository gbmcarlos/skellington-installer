FROM composer:1.7.2

WORKDIR /var/www

## SCRIPTS
### Make sure all scripts have execution permissions
COPY scripts/install.sh install.sh
RUN chmod +x install.sh

ENTRYPOINT ["/var/www/install.sh"]