FROM php:8.3-fpm

# Gereken paketleri yükle ve PHP eklentilerini kur
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        unzip \
        libzip-dev \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
        curl \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        mysqli \
        zip \
        gd \
        mbstring \
        xml \
        opcache \
    > /dev/null 2>&1 \
    && echo "✅ PHP uzantıları başarıyla yüklendi."

# ionCube yükleyici scriptini kopyala ve çalıştır
COPY install_ioncube.sh /usr/local/bin/install_ioncube.sh
RUN chmod +x /usr/local/bin/install_ioncube.sh && \
    /usr/local/bin/install_ioncube.sh > /dev/null 2>&1 || echo "⚠️ ionCube kurulumu atlandı veya başarısız."

# Çalışma dizinini ayarla
WORKDIR /var/www/html

# Tavsiye: Giriş noktası ya da komut gerekiyorsa burada belirtilebilir
