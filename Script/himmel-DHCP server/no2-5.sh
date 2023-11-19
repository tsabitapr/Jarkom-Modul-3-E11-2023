# simpan di bashrc
# apt update
# apt install isc-dhcp-server -y
# dhcpd --version

# tentukan interface
echo '
INTERFACESv4="eth0"
' > /etc/default/isc-dhcp-server

echo -e '
    subnet 10.42.1.0 netmask 255.255.255.0 {
    }

    subnet 10.42.2.0 netmask 255.255.255.0 {
    }

    subnet 10.42.3.0 netmask 255.255.255.0 {
        range 10.42.3.16 10.42.3.32;
        range 10.42.3.64 10.42.3.80;
        option routers 10.42.3.42;
        option broadcast-address 10.42.3.255;
        option domain-name-servers 10.42.1.2; # IP HEITER DNS SERVER
        default-lease-time 180; # 3 menit
        max-lease-time 5760; # 96 menit
    }

    subnet 10.42.4.0 netmask 255.255.255.0 {
        range 10.42.4.12 10.42.4.20;
        range 10.42.4.160 10.42.4.168;
        option routers 10.42.4.42;
        option broadcast-address 10.42.4.255;
        option domain-name-servers 10.42.1.2; # IP HEITER DNS SERVER
        default-lease-time 720; # 12 menit
        max-lease-time 5760; # 96 menit
    }
' > /etc/dhcp/dhcpd.conf

# fixed address
echo '
# php worker

host Lugner {
    hardware ethernet 72:95:80:87:45:80;
    fixed-address 10.42.3.1;
}

host Linie {
    hardware ethernet f6:75:7a:b2:40:f6;
    fixed-address 10.42.3.2;
}

host Lawine {
    hardware ethernet d2:59:de:82:be:e1;
    fixed-address 10.42.3.3;
}

# laravel worker
host Fern {
    hardware ethernet e2:04:2c:f3:7c:04;
    fixed-address 10.42.4.1;
}

host Flamme {
    hardware ethernet 6a:a3:9f:7e:64:a2;
    fixed-address 10.42.4.2;
}

host Frieren {
    hardware ethernet 6a:14:d7:37:d9:c9;
    fixed-address 10.42.4.3;
}
' >> /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart