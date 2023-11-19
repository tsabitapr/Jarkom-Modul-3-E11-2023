# nano /etc/nginx/sites-available/lb-jarkom
echo '
upstream weightedrb {
  server 10.42.3.1 weight=4; # IP Lugner
  server 10.42.3.2 weight=3; # IP Linie
  server 10.42.3.3 weight=2; # IP Lawine
}

server {
  listen 80;
  server_name granz.channel.e11.com;

  location / {
    proxy_pass http://weightedrb;
    proxy_set_header    X-Real-IP $remote_addr;
    proxy_set_header    X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header    Host $http_host;
  }
  error_log /var/log/nginx/lb_error.log;
  access_log /var/log/nginx/lb_access.log;
}
' > /etc/nginx/sites-available/lb-jarkom

# simpan symlink
ln -s /etc/nginx/sites-available/lb-jarkom /etc/nginx/sites-enabled/lb-jarkom

unlink /etc/nginx/sites-enabled/default

service nginx restart
nginx -t