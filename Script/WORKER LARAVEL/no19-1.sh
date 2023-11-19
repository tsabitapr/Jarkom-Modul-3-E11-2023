echo '
[www]
user = www-data
group = www-data
listen = /run/php/php8.0-fpm.sock
listen.owner = www-data
listen.group = www-data
php_admin_value[disable_functions] = exec,passthru,shell_exec,system
php_admin_flag[allow_url_fopen] = off

; Choose how the process manager will control the number of child processes.

pm = dynamic
pm.max_children = 25
pm.start_servers = 7
pm.min_spare_servers = 6
pm.max_spare_servers = 8
' > /etc/php/8.0/fpm/pool.d/www.conf

service php8.0-fpm restart