echo '
nameserver 10.42.1.2 # IP heiter
' > /etc/resolv.conf

rm no7.data
ab -n 1000 -c 100 -g no7.data http://granz.channel.e11.com/
