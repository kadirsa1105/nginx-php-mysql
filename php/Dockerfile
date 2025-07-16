FROM php:8.3-fpm

RUN apt-get update && apt-get install -y unzip libzip-dev libpng-dev libonig-dev libxml2-dev curl     && docker-php-ext-install pdo pdo_mysql zip gd mbstring xml opcache > /dev/null 2>&1     && echo "✅ PHP uzantıları yüklendi."

COPY install_ioncube.sh /usr/local/bin/install_ioncube.sh
RUN chmod +x /usr/local/bin/install_ioncube.sh && /usr/local/bin/install_ioncube.sh > /dev/null 2>&1
