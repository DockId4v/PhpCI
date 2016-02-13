FROM id4v/webdev

WORKDIR /var/www/html
RUN apt-get install -y zlibc zlib1g zlib1g-dev
RUN docker-php-ext-install zip mbstring
RUN composer create-project block8/phpci . --keep-vcs --no-dev
RUN composer install
RUN a2enmod rewrite

COPY php.ini /usr/local/etc/php/
COPY vhost.conf /etc/apache2/sites-enabled/
COPY phpCI /usr/local/bin/

CMD ["phpCI"]