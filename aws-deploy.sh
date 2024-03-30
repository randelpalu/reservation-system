cd /var/www/html

# Install dependencies and run commands as www-data
sudo -u www-data composer install --optimize-autoloader --no-dev
sudo -u www-data php artisan migrate --force
sudo -u www-data php artisan cache:clear
