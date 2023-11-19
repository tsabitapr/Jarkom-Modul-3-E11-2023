echo '
nameserver 192.168.122.1
' > /etc/resolv.conf

wget -O '/var/www/granz.channel.e11.com.zip' 'https://drive.google.com/u/0/uc?id=1ViSkRq7SmwZgdK64eRbr5Fm1EGCTPrU1&export=download'
unzip -o /var/www/granz.channel.e11.com.zip -d /var/www/
rm -rf /var/www/granz.channel.e11.com.zip

echo '
nameserver 10.42.1.2 # IP heiter
' > /etc/resolv.conf

# nano /etc/nginx/sites-available/jarkom
# default round robin
echo '
 server {
 	listen 80;

 	root /var/www/modul-3;

 	index index.php index.html index.htm;
 	server_name _;
 	location / {
 		try_files $uri $uri/ /index.php?$query_string;
 	}

 	# pass PHP scripts to FastCGI server
 	location ~ \.php$ {
 	    include snippets/fastcgi-php.conf;
 	    fastcgi_pass unix:/var/run/php/php7.3-fpm.sock;
 	}

    location ~ /\.ht {
 		deny all;
 	}

 	error_log /var/log/nginx/jarkom_error.log;
 	access_log /var/log/nginx/jarkom_access.log;
 }
' > /etc/nginx/sites-available/jarkom

# buat symlink
ln -s /etc/nginx/sites-available/jarkom /etc/nginx/sites-enabled/jarkom

# unlink konfigurasi default
unlink /etc/nginx/sites-enabled/default

service php7.3-fpm start
service nginx restart
nginx -t


