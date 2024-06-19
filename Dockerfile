# Base Image: Use the official PHP Apache image with PHP 8.0
FROM php:8.0-apache

# Install MySQLi Extension (for PHP database connectivity)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set the working directory within the container
WORKDIR /var/www/html

# Copy your PHP application code
COPY app/ .

# Expose port 80 for web traffic
EXPOSE 80

