nano /root/.bashrc
cd /root/jawaban

ALL NODE
echo nameserver 192.168.122.1 > /etc/resolv.conf

AURA - ROUTER (DHCP RELAY)
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.42.0.0/16
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install isc-dhcp-relay -y
cd /root/jawaban

HEITER - DNS SERVER
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install bind9 -y
cd /root/jawaban

HIMMEL - DHCP SERVER
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install isc-dhcp-server -y
cd /root/jawaban

EISEN - LOAD BALANCER
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install nginx -y
apt-get install htop -y
cd /root/jawaban

WORKER - PHP
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt install nginx php php-fpm -y
apt-get install wget -y
apt-get install unzip -y
apt-get install htop -y
apt-get install apache2-utils -y
cd /root/jawaban

DENKEN - DATABASE SERVER
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install mariadb-server -y
service mysql start
cd /root/jawaban


    # echo 'nameserver 192.173.1.2' > /etc/resolv.conf
    # apt-get update
    # apt-get install mariadb-server -y
    # service mysql start
    # Lalu jangan lupa untuk mengganti [bind-address] pada file /etc/mysql/mariadb.conf.d/50-server.cnf menjadi 0.0.0.0 dan 
    # jangan lupa untuk melakukan restart mysql kembali


WORKER - LARAVEL
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install mariadb-client -y
apt-get update
apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2
curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt-get update
apt-get install php8.0-mbstring php8.0-xml php8.0-cli php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget -y
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get install nginx -y
apt-get update
apt-get install git -y
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get install lynx -y
service nginx start
service php8.0-fpm start
cd /root/jawaban

CLIENT
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install lynx -y
echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get install apache2-utils -y
apt install htop -y
cd /root/jawaban
