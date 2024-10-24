FROM php:8.3.12-apache-bookworm

# Install necessary packages
RUN apt-get update && \
    apt-get install -y openssl && \
    a2enmod ssl

# Create a self-signed certificate (for development/testing purposes)
RUN mkdir /etc/apache2/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/apache2/ssl/apache.key \
    -out /etc/apache2/ssl/apache.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/OU=Unit/CN=localhost"

# Update Apache configuration to use SSL
RUN echo "<VirtualHost *:443>\n \
    DocumentRoot /var/www/html\n \
    SSLEngine on\n \
    SSLCertificateFile /etc/apache2/ssl/apache.crt\n \
    SSLCertificateKeyFile /etc/apache2/ssl/apache.key\n \
    </VirtualHost>" \
    > /etc/apache2/sites-available/default-ssl.conf && \
    a2ensite default-ssl

# Expose port 443
EXPOSE 443

# Start Apache
CMD ["apache2-foreground"]