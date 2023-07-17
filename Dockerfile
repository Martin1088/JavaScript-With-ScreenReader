FROM php:8.0-apache
 ##php:7.3-apache
 ##php:8.0-apache
 
ENV http_proxy=http://www-int2.inet.dkfz-heidelberg.de:3128
ENV https_proxy=https://www-int2.inet.dkfz-heidelberg.de:3128

#Install git 
RUN apt-get update \
 && apt-get install -y git 
RUN docker-php-ext-install pdo pdo_mysql mysqli 
RUN a2enmod rewrite 
#Install Composer 
##RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" 
##RUN php composer-setup.php --install-dir=. --filename=composer 
##RUN mv composer /usr/local/bin/ 
##COPY ./ /var/www/html/ 
##EXPOSE 80
##RUN a2enmod rewrite
##RUN docker-php-ext-install mysqli

#COPY docker_app/php.ini/ $PHP_INI_DIR/conf.d/
##RUN docker-php-ext-install mysqli pdo pdo_mysql 
