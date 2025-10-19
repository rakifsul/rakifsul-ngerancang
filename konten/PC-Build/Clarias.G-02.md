# Clarias.G 02 - Penggantian Motherboard dari Sebelumnya dan Alih Fungsi ke Server AI

- status: aktif
- versi: 02

## Spesifikasi

- CPU: Intel i5 3470
- GPU: RTX 2060
- RAM: 16GB
- Motherboard: IH61MF-Q5 => RX7 H61
- SSD: 256GB + 1TB
- OS: Windows 11 => Ubuntu Server 24.04

## Cerita

Setelah saya membeli Mini PC baru untuk kerja, saya mulai bosan bermain game.

Karena PC ini sering saya biarkan, saya memutar otak agar PC ini bisa produktif.

Akhirnya, saya memutuskan untuk menjadikannya server untuk LLM.

Pertama, saya menggunakan Windows 11 sebagai sistem operasi servernya.

Selanjutnya, saya beralih ke Ubuntu Server karena manajemen memorinya lebih baik.

Setelah beberapa waktu digunakan, PC ini mengalami kerusakan CMOS yang bisa diperbaiki, tapi ujungnya beberapa slot dari PSU PC ini malah rusak.

Penyebab slot PSU modular tersebut rusak belum saya mengerti, tapi akibat hal itu saya membeli motherboard baru karena salah diagnosis.

Kemungkinan slot PSU tersebut rusak karena saya mematikan PC ini secara paksa saat layar monitor freeze. Mungkin masih ada kaitannya dengan GPU karena slot yang rusak tersebut memang terhubung ke power dari GPU.

Karena terlanjur membeli motherboard, saya ganti motherboard PC ini dan memindahkan slot PSU yang rusak ke yang masih belum rusak.

Saya telah mencoba beberapa aplikasi LLM seperti Ollama dan llama.cpp serta API dan Web UI-nya.

Semuanya berjalan mulus dengan model hingga 7B parameter.