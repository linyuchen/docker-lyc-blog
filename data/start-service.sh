chown -R www-data /opt/wordpress
chmod -R u+x /opt/wordpress
chown -R mysql /opt/mysql-data
/etc/init.d/nginx start
/etc/init.d/php7.2-fpm start
/etc/init.d/mysql start
