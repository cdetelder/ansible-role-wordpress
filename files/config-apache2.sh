<VirtualHost *:80> 
    ServerAdmin admin@localhost 
    DocumentRoot /var/www/html/wordpress 
    <Directory /var/www/html/wordpress> 
        AllowOverride All 
    </Directory> 
    ErrorLog ${APACHE_LOG_DIR}/error.log 
    CustomLog ${APACHE_LOG_DIR}/access.log combined 
</VirtualHost> 
