#!/usr/bin/env bash

./configure \
    "--prefix=/etc/php" \
    "--exec-prefix=/etc/php" \
    "--sysconfdir=/etc/php/conf" \
    "--bindir=/usr/bin" \
    "--sbindir=/usr/sbin" \
    "--includedir=/usr/include" \
    "--libexecdir=/usr/lib/php" \
    "--localstatedir=/var" \
    "--libdir=/usr/lib/php" \
    "--mandir=/usr/share/man" \
    "--with-mysql-sock=/var/lib/mysql/mysql.sock" \
    "--with-mysqli=mysqlnd" \
    "--with-pdo-mysql=mysqlnd" \
    "--with-config-file-scan-dir=/etc/php/conf/php-fpm.d" \
    "--with-fpm-user=webserver" \
    "--with-fpm-group=webserver" \
    "--with-fpm-systemd" \
    "--with-openssl" \
    "--with-iconv" \
    "--with-curl" \
    "--with-zlib" \
    "--with-libxml" \
    "--with-zip" \
    "--with-sodium" \
    "--enable-filter" \
    "--enable-ctype" \
    "--enable-xml" \
    "--enable-tokenizer" \
    "--enable-dom" \
    "--enable-simplexml" \
    "--enable-fpm" \
    "--enable-calendar" \
    "--enable-pdo" \
    "--enable-phar" \
    "--enable-session" \
    "--enable-mbstring" \
    "--enable-opcache" \
    "--enable-bcmath" \
    "--enable-exif" \
    "--enable-fileinfo" \
    "--enable-gd" \
    "--enable-xmlreader" \
    "--disable-cgi" \
    "--disable-phpdbg" \
    "--disable-ipv6" \
    "--disable-all"