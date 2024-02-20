FROM php:7.4-apache

WORKDIR /var/www/html

RUN docker-php-ext-install mysqli

COPY . .

EXPOSE 80

CMD ["apache2-foreground"]
