#!/bin/bash

PHP_VERSION=$(php -r "echo PHP_MAJOR_VERSION.'.'.PHP_MINOR_VERSION;")
IONCUBE_URL="https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz"

curl -fsSL "$IONCUBE_URL" -o /tmp/ioncube.tar.gz > /dev/null 2>&1
tar -xzf /tmp/ioncube.tar.gz -C /tmp > /dev/null 2>&1

cp "/tmp/ioncube/ioncube_loader_lin_${PHP_VERSION}.so" "/usr/local/lib/php/extensions/no-debug-non-zts-$(php -i | grep extension_dir | awk '{print $NF}' | grep -o '[^/]*$')/" > /dev/null 2>&1
echo "zend_extension=ioncube_loader_lin_${PHP_VERSION}.so" > /usr/local/etc/php/conf.d/00-ioncube.ini

rm -rf /tmp/ioncube /tmp/ioncube.tar.gz
echo "✔ ionCube kurulumu tamamlandı."
