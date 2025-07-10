FROM php:8.2-apache

# Enable mod_rewrite
RUN a2enmod rewrite

# Copy project files
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Set permissions (optional)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
