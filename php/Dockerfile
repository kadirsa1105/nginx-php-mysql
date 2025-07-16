FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    unzip \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libonig-dev \
    libxml2-dev \
    libicu-dev \
    git \
    curl \
    && docker-php-ext-configure gd --with-jpeg \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        mysqli \
        mbstring \
        intl \
        zip \
        xml \
        soap \
        gd \
        bcmath \
        fileinfo \
        curl \
        tokenizer \
        opcache \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY install_ioncube.sh /usr/local/bin/install_ioncube.sh
RUN chmod +x /usr/local/bin/install_ioncube.sh && /usr/local/bin/install_ioncube.sh
