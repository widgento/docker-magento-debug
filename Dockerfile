FROM hellosworldos/magento
MAINTAINER Widgento

ADD /etc/php5/fpm/conf.d/21-customdebug.ini /etc/php5/fpm/conf.d/21-customdebug.ini
ADD /etc/nginx/conf.d/magento.conf /etc/nginx/conf.d/magento.conf

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y \
    php5-xdebug


