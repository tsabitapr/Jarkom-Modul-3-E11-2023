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
