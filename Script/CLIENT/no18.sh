# lynx ke load balancer
lynx http://riegel.canyon.e11.com

ab -n 100 -c 10 -p login.json -T application/json http://riegel.canyon.e11.com/api/auth/login
