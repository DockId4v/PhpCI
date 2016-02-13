FROM id4v/webdev:5.6

WORKDIR /var/www/html
RUN apt-get install -y zlibc zlib1g zlib1g-dev
RUN docker-php-ext-install zip
RUN composer create-project block8/phpci . --keep-vcs --no-dev
RUN composer install
RUN a2enmod rewrite

COPY vhost.conf /etc/apache2/sites-enabled/
COPY phpCI /usr/local/bin/

CMD ["phpCI"]