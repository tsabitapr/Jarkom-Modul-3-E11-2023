mkdir -p /etc/bind/jarkom

echo '
zone "canyon.e11.com" {
  type master;
  file "/etc/bind/jarkom/canyon.e11.com";
};

zone "channel.e11.com" {
	type master;
	file "/etc/bind/jarkom/channel.e11.com";
};
' > /etc/bind/named.conf.local

# worker laravel
echo '
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     canyon.e11.com. root.canyon.e11.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      canyon.e11.com.
@       IN      A       10.42.2.2 ; IP EISEN LB
riegel  IN      A       10.42.4.1 ; IP Fern LARAVEL WORKER
@       IN      AAAA    ::1
' > /etc/bind/jarkom/canyon.e11.com

# worker PHP
echo '
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     channel.e11.com. root.channel.e11.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      channel.e11.com.
@       IN      A       10.42.2.2 ; IP EISEN LB
granz   IN      A       10.42.3.1 ; IP Lugner PHP WORKER
@       IN      AAAA    ::1
' > /etc/bind/jarkom/channel.e11.com

echo 'options {
      directory "/var/cache/bind";

      forwarders {
              192.168.122.1;
      };

      // dnssec-validation auto;
      allow-query{any;};
      auth-nxdomain no;    # conform to RFC1035
      listen-on-v6 { any; };
}; ' >/etc/bind/named.conf.options

service bind9 restart