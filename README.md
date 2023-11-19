# Jarkom-Modul-3-E11-2023

Laporan resmi praktikum Jaringan Komputer modul 3 kelompok E11

| Nama                       | NRP        |
| -------------------------- | ---------- |
| Sarah Nurhasna Khairunnisa | 5025211105 |
| Tsabita Putri Ramadhany    | 5025211130 |

# Daftar Isi

- [SOAL](#soal)
- [JAWABAN](#jawaban)
  - [NO 0](#no-0)
  - [NO 1](#no-1)
  - [NO 2](#no-2)
  - [NO 3](#no-3)
  - [NO 4](#no-4)
  - [NO 5](#no-5)
  - [NO 2-5](#no-2-5)
  - [NO 6](#no-6)
  - [NO 7](#no-7)
  - [NO 8](#no-8)
  - [NO 9](#no-9)
  - [NO 10](#no-10)
  - [NO 11](#no-11)
  - [NO 12](#no-12)
  - [NO 13](#no-13)
  - [NO 14](#no-14)
  - [NO 15](#no-15)
  - [NO 16](#no-16)
  - [NO 17](#no-17)
  - [NO 18](#no-18)
  - [NO 19](#no-19)
  - [NO 20](#no-20)
- [KENDALA](#kendala)

# Soal
Perjalanan selanjutnya akan menggunakan peta berikut:
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/cb8ba656-b530-4831-b432-4270c8052ef0)

dengan ketentuan sebagai berikut:
| Node | Kategori | Image Docker | Konfigurasi IP |
|--------|---------------------|--------------------------------|----------------|
| Aura | Router (DHCP Relay) | danielcristh0/debian-buster:1.1| Dynamic |
| Himmel | DHCP Server | danielcristh0/debian-buster:1.1| Static |
| Heiter | DNS Server | danielcristh0/debian-buster:1.1| Static |
| Denken | Database Server | danielcristh0/debian-buster:1.1| Static |
| Eisen | Load Balancer | danielcristh0/debian-buster:1.1| Static |
| Frieren| Laravel Worker | danielcristh0/debian-buster:1.1| Static |
| Flamme | Laravel Worker | danielcristh0/debian-buster:1.1| Static |
| Fern | Laravel Worker | danielcristh0/debian-buster:1.1| Static |
| Lawine | PHP Worker | danielcristh0/debian-buster:1.1| Static |
| Linie | PHP Worker | danielcristh0/debian-buster:1.1| Static |
| Lugner | PHP Worker | danielcristh0/debian-buster:1.1| Static |
| Revolte| Client | danielcristh0/debian-buster:1.1| Dynamic |
| Richter| Client | danielcristh0/debian-buster:1.1| Dynamic |
| Sein | Client | danielcristh0/debian-buster:1.1| Dynamic |
| Stark | Client | danielcristh0/debian-buster:1.1| Dynamic |

Setelah mengalahkan Demon King, perjalanan berlanjut. Kali ini, kalian diminta untuk melakukan register domain berupa **riegel.canyon.yyy.com** untuk worker Laravel dan **granz.channel.yyy.com** untuk worker PHP **(0)** mengarah pada worker yang memiliki IP [prefix IP].x.1.

**(1)** Lakukan konfigurasi sesuai dengan peta yang sudah diberikan.

Kemudian, karena masih banyak spell yang harus dikumpulkan, bantulah para petualang untuk memenuhi kriteria berikut.:

1. Semua **CLIENT** harus menggunakan konfigurasi dari DHCP Server.
2. Client yang melalui Switch3 mendapatkan range IP dari [prefix IP].3.16 - [prefix IP].3. dan [prefix IP].3.64 - [prefix IP].3.80 **(2)**
3. Client yang melalui Switch4 mendapatkan range IP dari [prefix IP].4.12 - [prefix IP].4.20 dan [prefix IP].4.160 - [prefix IP].4.168 **(3)**
4. Client mendapatkan DNS dari Heiter dan dapat terhubung dengan internet melalui DNS tersebut **(4)**
5. Lama waktu DHCP server meminjamkan alamat IP kepada Client yang melalui Switch3 selama 3 menit sedangkan pada client yang melalui Switch4 selama 12 menit. Dengan waktu maksimal dialokasikan untuk peminjaman alamat IP selama 96 menit **(5)**

Berjalannya waktu, petualang diminta untuk melakukan deployment.

1.  Pada masing-masing worker PHP, lakukan konfigurasi virtual host untuk website berikut (https://drive.google.com/file/d/1ViSkRq7SmwZgdK64eRbr5Fm1EGCTPrU1/view) dengan menggunakan php 7.3. **(6)**
2.  Kepala suku dari Bredt Region memberikan resource server sebagai berikut:

    a. Lawine, 4GB, 2vCPU, dan 80 GB SSD.

    b. Linie, 2GB, 2vCPU, dan 50 GB SSD.

    c. Lugner 1GB, 1vCPU, dan 25 GB SSD.

    aturlah agar Eisen dapat bekerja dengan maksimal, lalu lakukan testing dengan 1000 request dan 100 request/second. **(7)**

3.  Karena diminta untuk menuliskan grimoire, buatlah analisis hasil testing dengan 200 request dan 10 request/second masing-masing algoritma Load Balancer dengan ketentuan sebagai berikut:

        a. Nama Algoritma Load Balancer

        b. Report hasil testing pada Apache Benchmark

        c. Grafik request per second untuk masing masing algoritma.

    Analisis **(8)**

4.  Dengan menggunakan algoritma Round Robin, lakukan testing dengan menggunakan 3 worker, 2 worker, dan 1 worker sebanyak 100 request dengan 10 request/second, kemudian tambahkan grafiknya pada grimoire. **(9)**
5.  Selanjutnya coba tambahkan konfigurasi autentikasi di LB dengan dengan kombinasi username: “netics” dan password: “ajkyyy”, dengan yyy merupakan kode kelompok. Terakhir simpan file “htpasswd” nya di /etc/nginx/rahasisakita/ **(10)**
6.  Lalu buat untuk setiap request yang mengandung /its akan di proxy passing menuju halaman https://www.its.ac.id. **(11) hint: (proxy_pass)**
7.  Selanjutnya LB ini hanya boleh diakses oleh client dengan IP [Prefix IP].3.69, [Prefix IP].3.70, [Prefix IP].4.167, dan [Prefix IP].4.168. **(12) hint: (fixed in dulu clinetnya)**

Karena para petualang kehabisan uang, mereka kembali bekerja untuk mengatur **riegel.canyon.yyy.com.**

1. Semua data yang diperlukan, diatur pada Denken dan harus dapat diakses oleh Frieren, Flamme, dan Fern. **(13)**
2. Frieren, Flamme, dan Fern memiliki Riegel Channel sesuai dengan quest guide berikut (https://github.com/martuafernando/laravel-praktikum-jarkom). Jangan lupa melakukan instalasi PHP8.0 dan Composer **(14)**
3. Riegel Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada grimoire.

   a. POST /auth/register **(15)**

   b. POST /auth/login **(16)**

   c. GET /me **(17)**

4. Untuk memastikan ketiganya bekerja sama secara adil untuk mengatur Riegel Channel maka implementasikan Proxy Bind pada Eisen untuk mengaitkan IP dari Frieren, Flamme, dan Fern. **(18)**
5. Untuk meningkatkan performa dari Worker, coba implementasikan PHP-FPM pada Frieren, Flamme, dan Fern. Untuk testing kinerja naikkan

   - pm.max_children
   - pm.start_servers
   - pm.min_spare_servers
   - pm.max_spare_servers

   sebanyak tiga percobaan dan lakukan testing sebanyak 100 request dengan 10 request/second kemudian berikan hasil analisisnya pada Grimoire. **(19)**

6. Nampaknya hanya menggunakan PHP-FPM tidak cukup untuk meningkatkan performa dari worker maka implementasikan Least-Conn pada Eisen. Untuk testing kinerja dari worker tersebut dilakukan sebanyak 100 request dengan 10 request/second. **(20)**

**PS:**
Grimoire dikumpulkan dalam bentuk PDF dengan format yyy_Grimoire.pdf.
yyy merupakan kode kelompok

# Jawaban

## NO 0

Membuat topologi

![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/58a9eb45-9268-42b9-89da-bf3d7bc45cc3)

- Buat projek baru pada GNS3
- Drag node NAT1 ke halaman
- Drag node debian-1 ke halaman
- Ganti nama dan simbol debian-1 menjadi nama node-node yang diperlukan
- Drag 4 node switch ke halaman
- Link setiap node sesuai dengan ketentuan topologi
- Setting network masing-masing node sesuai dengan prefix kelompok (10.42)

## NO 1

Setting network masing-masing node

1. AURA - ROUTER (DHCP RELAY)
    
    ```bash
    auto eth0
    iface eth0 inet dhcp
    
    auto eth1
    iface eth1 inet static
      address 10.42.1.42
      netmask 255.255.255.0
    
    auto eth2
    iface eth2 inet static
      address 10.42.2.42
      netmask 255.255.255.0
    
    auto eth3
    iface eth3 inet static
      address 10.42.3.42
      netmask 255.255.255.0
    
    auto eth4
    iface eth4 inet static
      address 10.42.4.42
      netmask 255.255.255.0
    ```

2. Switch 1

   a. HIMMEL - DHCP SERVER

   ```bash
   auto eth0
   iface eth0 inet static
     address 10.42.1.1
     netmask 255.255.255.0
     gateway 10.42.1.42
   ```

   b. HEITER - DNS SERVER

   ```bash
   auto eth0
   iface eth0 inet static
     address 10.42.1.2
     netmask 255.255.255.0
     gateway 10.42.1.42
   ```

3. Switch 2

   a. DENKEN - DATABASE SERVER

   ```bash
   auto eth0
   iface eth0 inet static
     address 10.42.2.1
     netmask 255.255.255.0
     gateway 10.42.2.42
   ```

   b. EISEN - LOAD BALANCER

   ```bash
   auto eth0
   iface eth0 inet static
     address 10.42.2.2
     netmask 255.255.255.0
     gateway 10.42.2.42
   ```

4. Switch 3

   a. LUGNER - PHP WORKER

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   b. LINIE - PHP WORKER

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   c. LAWINE - PHP WORKER

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   d. RICHTER - CLIENT

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   e. REVOLTE - CLIENT

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

5. Switch 4

   a. SEIN - CLIENT

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   b. STARK - CLIENT

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   c. FRIEREN - LARAVEL WORKER

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   d. FLAMME - LARAVEL WORKER

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

   e. FERN - LARAVEL WORKER

   ```bash
   auto eth0
   iface eth0 inet dhcp
   ```

Mengatur konfigurasi `.bashrc` masing-masing node

```bash
nano /root/.bashrc
cd /root/jawaban
```

1. ALL NODE

   ```bash
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   ```

2. AURA - ROUTER (DHCP RELAY)

   ```bash
   iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.42.0.0/16
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get update
   apt-get install isc-dhcp-relay -y
   cd /root/jawaban
   ```

3. HEITER - DNS SERVER

   ```bash
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get update
   apt-get install bind9 -y
   cd /root/jawaban
   ```

4. HIMMEL - DHCP SERVER

   ```bash
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get update
   apt-get install isc-dhcp-server -y
   cd /root/jawaban
   ```

5. EISEN - LOAD BALANCER

   ```bash
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get update
   apt-get install nginx -y
   apt-get install htop -y
   cd /root/jawaban
   ```

6. WORKER - PHP (Lawine, Linie, Lugner)

   ```bash
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get update
   apt install nginx php php-fpm -y
   apt-get install wget -y
   apt-get install unzip -y
   apt-get install htop -y
   apt-get install apache2-utils -y
   cd /root/jawaban
   ```

7. DENKEN - DATABASE SERVER

   ```bash
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
   ```

8. WORKER - LARAVEL (Frieren, Flamme, Fern)

   ```bash
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
   ```

9. CLIENT (Revolte, Richter, Sein, Stark)
   ```bash
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get update
   apt-get install lynx -y
   echo nameserver 192.168.122.1 > /etc/resolv.conf
   apt-get install apache2-utils -y
   cd /root/jawaban
   ```

**HEITER - DNS SERVER**

1. buat script no1.sh

   ```bash
   nano no1.sh
   ```

2. isi script

   ```bash
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
   ```

   - membuat direktori `jarkom` di dalam direktori `/etc/bind`, yang biasanya digunakan untuk menyimpan file konfigurasi BIND.
   - Konfigurasi Zona DNS
     - File `named.conf.local` diperbarui dengan informasi zona untuk dua domain: `canyon.e11.com` dan `channel.e11.com`.
     - Setiap zona dideklarasikan sebagai `type master`, yang berarti server ini akan menjadi sumber otoritatif untuk zona tersebut.
     - Lokasi file zona untuk setiap domain ditunjukkan (`/etc/bind/jarkom/canyon.e11.com` dan `/etc/bind/jarkom/channel.e11.com`).
   - File Zona untuk Domain canyon.e11.com (worker Laravel)
     - `A` record untuk root domain (`@`) mengarah ke IP Load Balancer (`10.42.2.2`), dan subdomain riegel mengarah ke IP worker Laravel (`10.42.4.1`).
   - File Zona untuk Domain channel.e11.com (worker PHP)
     - Mirip dengan konfigurasi zona `canyon.e11.com`, namun `A` record untuk subdomain `granz` mengarah ke IP worker PHP (`10.42.3.1`).
   - Konfigurasi Opsi DNS:
     - Direktori cache untuk BIND ditetapkan pada `/var/cache/bind`.
     - `forwarders` digunakan untuk menentukan DNS server lain yang akan di-query jika server lokal tidak dapat menyelesaikan nama domain.
     - `allow-query{any;};` memungkinkan semua alamat IP untuk melakukan query ke server ini.
     - Beberapa parameter lainnya diset untuk mengonfigurasi bagaimana BIND harus beroperasi.
   - Restart Service: `service bind9 restart` akan memulai ulang service BIND9 untuk menerapkan perubahan konfigurasi yang baru dibuat.

**TESTING**

1. HEITER (DNS SERVER)

   ```bash
   bash no1.sh
   ```

   ![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/a1457c0a-ea0e-43d8-86d1-035b94eb4fe6)

2. CLIENT

   `nano no1.sh`

   ```bash
   echo '
   nameserver 10.42.1.2 # IP heiter
   ' > /etc/resolv.conf

   ping riegel.canyon.e11.com -c 5

   ping granz.channel.e11.com -c 5
   ```

   `bash no1.sh`
   
   ![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/5ca88bd6-7a7c-49dd-b164-2c0967857493)

## NO 2
1. Konfigurasi DHCP Server

    **a. HIMMEL - DHCP SERVER**
    ```bash
    echo -e '
    subnet 10.42.1.0 netmask 255.255.255.0 {
    }

    subnet 10.42.2.0 netmask 255.255.255.0 {
    }

    subnet 10.42.3.0 netmask 255.255.255.0 {
    }

    subnet 10.42.4.0 netmask 255.255.255.0 {
    }
    ' > /etc/dhcp/dhcpd.conf
    ```
    **b. AURA - DHCP RELAY**
    ```bash
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
    ```

2. Client yang melalui Switch3 mendapatkan range IP dari [prefix IP].3.16 - [prefix IP].3.32 dan [prefix IP].3.64 - [prefix IP].3.80

    **HIMMEL - DHCP SERVER**
      ```bash
      subnet 10.42.3.0 netmask 255.255.255.0 {
        range 10.42.3.16 10.42.3.32;
        range 10.42.3.64 10.42.3.80;
      }
      ```

## NO 3
Client yang melalui Switch4 mendapatkan range IP dari [prefix IP].4.12 - [prefix IP].4.20 dan [prefix IP].4.160 - [prefix IP].4.168

 **HIMMEL - DHCP SERVER**
 ```bash
  subnet 10.42.4.0 netmask 255.255.255.0 {
    range 10.42.4.12 10.42.4.20;
    range 10.42.4.160 10.42.4.168;
  }
 ```

## NO 4
Client mendapatkan DNS dari Heiter dan dapat terhubung dengan internet melalui DNS tersebut

 **HIMMEL - DHCP SERVER**
 ```bash
  subnet 10.42.3.0 netmask 255.255.255.0 {
    option routers 10.42.3.42;
    option broadcast-address 10.42.3.255;
    option domain-name-servers 10.42.1.2;	# IP HEITER DNS SERVER
  }

  subnet 10.42.4.0 netmask 255.255.255.0 {
    option routers 10.42.4.42;
    option broadcast-address 10.42.4.255;
    option domain-name-servers 10.42.1.2;	# IP HEITER DNS SERVER
  }
 ```

## NO 5
Lama waktu DHCP server meminjamkan alamat IP kepada Client yang melalui Switch3 selama 3 menit sedangkan pada client yang melalui Switch4 selama 12 menit. Dengan waktu maksimal dialokasikan untuk peminjaman alamat IP selama 96 menit

 **HIMMEL - DHCP SERVER**
 ```bash
  subnet 10.42.3.0 netmask 255.255.255.0 {
    default-lease-time 180;	# 3 menit
    max-lease-time 5760;		# 96 menit
  }

  subnet 10.42.4.0 netmask 255.255.255.0 {
    default-lease-time 720;	# 12 menit
    max-lease-time 5760;		# 96 menit
  }
 ```

## NO 2-5
1. buat fixed address untuk php dan laravel worker karena di ketentuan soal worker memiliki konfigurasi IP static. Tapi soal 2 - 5 meminta client yang melewati switch3 dan 4 mendapatkan IP berbeda

2. full script no2-5.sh

    **a. HIMMEL - DHCP SERVER**
      ```bash
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
      ```
    **b. AURA - DHCP RELAY**
    ```bash
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
    ```
    **c. PHP WORKER (LAWINE, LINIE, LUGNER)**
      ```bash
      # Lawine
      echo '
      auto eth0
      iface eth0 inet dhcp
      hwaddress ether d2:59:de:82:be:e1
      ' > /etc/network/interfaces

      # Linie
      echo '
      auto eth0
      iface eth0 inet dhcp
      hwaddress ether f6:75:7a:b2:40:f6
      ' > /etc/network/interfaces

      # Lugner
      echo '
      auto eth0
      iface eth0 inet dhcp
      hwaddress ether 72:95:80:87:45:80
      ' > /etc/network/interfaces
      ```
    **d. LARAVEL WORKER (FRIEREN, FLAMME, FERN)**
      ```bash
      # Frieren
      echo '
      auto eth0
      iface eth0 inet dhcp
      hwaddress ether 6a:14:d7:37:d9:c9
      ' > /etc/network/interfaces

      # Flamme
      echo '
      auto eth0
      iface eth0 inet dhcp
      hwaddress ether 6a:a3:9f:7e:64:a2
      ' > /etc/network/interfaces

      # Fern
      echo '
      auto eth0
      iface eth0 inet dhcp
      hwaddress ether e2:04:2c:f3:7c:04
      ' > /etc/network/interfaces
      ```
      
**TESTING**
1. HIMMEL - DHCP SERVER
   
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/68c5faa2-8076-487c-81ff-4c6c2707021b)

3. AURA - DHCP RELAY
   
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/3039699d-2929-4944-a12a-9d007394828b)

5. LAWINE
   
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/e806597e-8078-4c8a-8ddd-491d4c3c8d34)

7. LINIE

![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/8af205a5-4eaf-4b4c-8782-0c75cc956647)

9. LUGNER
    
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/68dbb1d5-2332-4a3e-a1bb-9c3aec6cb0f4)

11. FRIEREN
    
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/e32e3392-98f4-415b-835d-2b3f0403f01c)

13. FLAMME

![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/8de924a9-a9c3-4b3f-990f-5602e2a09acd)

15. FERN
    
![image](https://github.com/tsabitapr/Jarkom-Modul-3-E11-2023/assets/93377643/d57dcc59-06dc-4ea6-80d5-a88a7420f94d)

## NO 6

## NO 7

## NO 8

## NO 9

## NO 10

## NO 11

## NO 12

## NO 13

## NO 14

## NO 15

## NO 16

## NO 17

## NO 18

## NO 19

## NO 20

# Kendala

- Gagal drag debian-1 yang sudah dibuat ke dalam halaman karena "docker not exist"
  - Solusi = buat hapus ubuntu-1, lalu buat ulang. Coba sampai bisa
- Tidak bisa ping website tetapi bisa ping menggunakan IP address
  - Solusi = ganti jaringan (contoh = gagal saat menggunakan wifi, maka ganti menggunakan hostpot)
- Gagal saat menjalankan isc-dhcp
  - Solusi = remove pid menggunakan `rm /var/run/dhcpd.pid` lalu restart
- dhcp failed pada worker
  - Solusi = restart sampai menampilkan pesan `OK` 2 kali
