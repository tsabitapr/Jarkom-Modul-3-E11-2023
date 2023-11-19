# register
echo '
{
  "username": "kelompoke11",
  "password": "passworde11"
}
' > register.json

ab -n 100 -c 10 -p /root/jawaban/register.json -T application/json http://10.42.4.1:8001/api/auth/register