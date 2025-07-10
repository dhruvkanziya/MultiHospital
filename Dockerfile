FROM php:8.2-apache

# Enable mod_rewrite (important for PHP routing)
RUN a2enmod rewrite

# Copy everything to Apache root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Set proper permissions (optional but recommended)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
