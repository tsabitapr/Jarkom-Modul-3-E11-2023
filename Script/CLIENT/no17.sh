# dapatkan token user
curl -X POST -H "Content-Type: application/json" -d @login.json http://10.42.4.1:8001/api/auth/login > token.txt

token=$(cat token.txt); ab -n 100 -c 10 -H "Authorization: Bearer $token" http://10.42.4.1:8001/api/me

# bisa cek log di worker fern --> cat /var/log/nginx/implementasi_access.log