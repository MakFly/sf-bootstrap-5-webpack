ARG TAG='8-fpm-alpine3.15'
FROM php:${TAG}


# COPY --from=arm32v6/composer /usr/bin/composer /usr/local/bin/composer

# RUN apk add --update \
#     make \
#     curl \
#     nodejs \
#     yarn

# #RUN docker-php-ext-install mysqli pdo pdo_mysql opcache
# RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo pdo_mysql


# ADD php.ini /etc/php/conf.d/
# ADD php.ini /etc/php/cli/conf.d/
# ADD php-fpm.conf /etc/php/php-fpm.d/
# #ADD xdebug.ini  /etc/php/conf.d/

# WORKDIR /var/www/symfony

# EXPOSE 9000

# CMD ["php-fpm", "-F"]

RUN apk add --update \
    make \
    curl \
    nodejs \
    yarn

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    ln -s $(composer config --global home) /root/composer
ENV PATH=$PATH:/root/composer/vendor/bin COMPOSER_ALLOW_SUPERUSER=1

ADD php.ini /etc/php/conf.d/
ADD php.ini /etc/php/cli/conf.d/
ADD php-fpm.conf /etc/php/php-fpm.d/
#ADD xdebug.ini  /etc/php/conf.d/

WORKDIR /var/www/symfony

#EXPOSE 9000

CMD ["php-fpm", "-F"]