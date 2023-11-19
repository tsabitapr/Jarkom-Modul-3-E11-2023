echo 'upstream Lworker {
    least_conn;
    server 10.42.4.1:8001; # IP FERN
    server 10.42.4.2:8002; # IP FLAMME
    server 10.42.4.3:8003; # IP FRIEREN
}

server {
    listen 80;
    server_name riegel.canyon.e11.com;

    location / {
    proxy_pass http://Lworker;
    proxy_set_header    X-Real-IP $remote_addr;
    proxy_set_header    X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header    Host $http_host;
  }

  error_log /var/log/nginx/laravel_error.log;
  access_log /var/log/nginx/laravel_access.log;
} 
' > /etc/nginx/sites-available/laravel-worker

ln -s /etc/nginx/sites-available/laravel-worker /etc/nginx/sites-enabled/laravel-worker

service nginx restart
nginx -t