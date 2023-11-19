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

## NO 1

## NO 2

## NO 3

## NO 4

## NO 5

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
