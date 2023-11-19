# apt-get update
# apt-get install isc-dhcp-relay -y

echo -e '
    SERVERS="10.42.1.1"  #IP HIMMEL DHCP SERVER
    INTERFACES="eth1 eth2 eth3 eth4"
' > /etc/default/isc-dhcp-relay

# konfigurasi IP forwarding
echo '
    net.ipv4.ip_forward=1
' > /etc/sysctl.conf

service isc-dhcp-relay restart