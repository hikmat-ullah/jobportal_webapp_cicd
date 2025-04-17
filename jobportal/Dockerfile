# Use lightweight PHP 7.3 with FPM and Alpine Linux
FROM php:7.3-fpm-alpine

# Install necessary dependencies
RUN apk --no-cache add nginx supervisor curl zip unzip libzip-dev \
    && docker-php-ext-install pdo_mysql zip \
    && rm -rf /var/cache/apk/*

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# Install Composer and dependencies
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer install --no-dev --optimize-autoloader \
    && rm -rf /root/.composer/cache

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Generate Laravel app key
RUN php artisan key:generate

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose ports for Nginx and PHP-FPM
EXPOSE 80 9000

# Start Nginx and PHP-FPM using Supervisor
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

