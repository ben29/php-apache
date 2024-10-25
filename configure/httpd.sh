#!/usr/bin/env bash

./configure \
    --prefix=/etc/httpd \
    --exec-prefix=/etc/httpd \
    --bindir=/usr/bin \
    --sbindir=/usr/sbin \
    --sysconfdir=/etc/httpd/conf \
    --includedir=/usr/include/apache \
    --libexecdir=/usr/local/libexec \
    --libdir=/lib64 \
    --mandir=/usr/share/man \
    --datadir=/var/www \
    --localstatedir=/var \
    --with-apr=/usr \
    --with-pcre=/usr \
    --with-z=/usr/local \
    --with-ssl=/usr \
    --with-mpm=event \
    --with-sslport=443 \
    --with-nghttp2=/usr/include \
    --enable-systemd \
    --enable-deflate \
    --enable-unique-id \
    --enable-mods-static=most \
    --enable-logio \
    --enable-ssl \
    --enable-rewrite \
    --enable-expires \
    --enable-reqtimeout \
    --enable-headers \
    --enable-http2 \
    --enable-allowmethods \
    --enable-proxy-fcgi \
    --disable-actions \
    --disable-authn-socache \
    --disable-file-cache \
    --disable-cache \
    --disable-cache-disk \
    --disable-cache-socache \
    --disable-socache-dbm \
    --disable-socache-memcache \
    --disable-socache-redis \
    --disable-socache-dc \
    --disable-md \
    --disable-buffer \
    --disable-userdir \
    --disable-status \
    --disable-dav \
    --disable-autoindex \
    --disable-cgi \
    --disable-cgid \
    --disable-info \
    --disable-sed \
    --disable-version \
    --disable-auth-form \
    --disable-auth-digest \
    --disable-auth-basic \
    --disable-authn-core \
    --disable-authn-file \
    --disable-authn-dbm \
    --disable-authn-dbd \
    --disable-authn-anon \
    --disable-authz-groupfile \
    --disable-authz-user \
    --disable-authz-dbm \
    --disable-authz-owner \
    --disable-authz-dbd \
    --disable-authn-socache \
    --disable-watchdog \
    --disable-access-compat \
    --disable-macro \
    --disable-dbd \
    --disable-ext-filter \
    --disable-session-dbd \
    --disable-suexec \
    --disable-substitute \
    --disable-log-debug \
    --disable-speling \
    --disable-proxy-html \
    --disable-proxy-connect \
    --disable-proxy-ftp \
    --disable-proxy-http \
    --disable-proxy-scgi \
    --disable-proxy-uwsgi \
    --disable-proxy-ajp \
    --disable-proxy-balancer \
    --disable-proxy-express \
    --disable-proxy-wstunnel \
    --disable-proxy-fdpass \
    --disable-vhost-alias