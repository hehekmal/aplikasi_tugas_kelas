import 'package:aplikasi_tugas_kelas/models/hikmal_kelas_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chla_subject_model.dart';
import '../hikmal_task_model.dart';
import 'hikmal_task_service.dart';

List<HikmalKelasModel> daftarKelas = [
  //X RPL 1
  HikmalKelasModel(
    judul: 'X RPL 1',
    pelajaran: [
      ChlaSubjectModel(
        namaMapel: "Informatika",
        iconMapel: Icons.computer,
        tugas: [
          TaskModel(
            judul: 'Tugas Flowchart',
            selesai: false,
            isiTugas:
                '1.   Buatlah flowchart untuk menyimpan nama, umur, dan tinggi badan seseorang, lalu tampilkan nilai-nilai tersebut. 2.    Buatlah flowchart untuk untuk menyimpan nilai PI (3.14) dan jari-jari lingkaran, lalu hitung dan tampilkan luas lingkaran.         Jika diketahui rumus Luas lingkaran = Pi * jari-jari * jari-jari. 3.    Buatlah flowchart untuk mengonversi suhu dari Celsius ke Fahrenheit dan Kelvin.         Program harus meminta input dari pengguna untuk suhu dalam Celsius.         Jika diketahui formula sbb:        fahrenheit = (celsius * 9 /5) + 32        kelvin = celsius + 273.15 4.    Buatlah flowchart untuk mengetahui suatu bilangan bulat adalah genap. 5.    Buatlah flowchart untuk mengetahui suatu bilangan bulat adalah ganjil.',
            tanggal: '27/04/2026',
          ),
          TaskModel(
            judul: 'Keamanan Digital',
            selesai: false,
            isiTugas: 'Kerjakan tugas pada file dibawah ini',
            tanggal: '27/04/2026',
          ),
        ],
      ),
      ChlaSubjectModel(
        namaMapel: "IPAS",
        iconMapel: Icons.science,
        tugas: [
          TaskModel(
            judul: 'Handout Energi Listrik',
            selesai: false,
            isiTugas: 'Kerjakan studi kasus pada file ini',
            tanggal: '24/04/2026',
          ),
          TaskModel(
            judul: 'Energi dan Perubahan',
            selesai: false,
            isiTugas: 'Kerjakan studi kasus pada file ini',
            tanggal: '24/04/2026',
          ),
          TaskModel(
            judul: 'Interaksi Sosial',
            selesai: false,
            isiTugas: 'Kerjakan studi kasus pada file ini',
            tanggal: '24/04/2026',
          ),

          TaskModel(
            judul: 'Proyek IPAS',
            selesai: false,
            isiTugas:
                'Desain Proyek IPAS:   Proyek yang kamu pilih adalah...   Tujuan/manfaat proyek kamu   Gambaran umum/deskripsi proyek   Desain/Prototype Proyek',
            tanggal: '24/04/2026',
          ),
        ],
      ),
      ChlaSubjectModel(
        namaMapel: "Matematika",
        iconMapel: Icons.percent,
        tugas: [
          TaskModel(
            judul: 'Deret Aritmatika',
            selesai: false,
            isiTugas:
                'Soal deret aritmatika:   13 + 16 +19 + 22 + ...   Hitunglah jumlah suku pertama dari deret aritmatika tersebut',
            tanggal: '20/02/2026',
          ),
          TaskModel(
            judul: 'Baris Aritmatika',
            selesai: false,
            isiTugas:
                '1. Seorang ayah membagi uang sebesar 100.000 kepada 4 orang anaknya. Semakin muda usia anaknya semakin kecil uang yang diterima. Jika selisih uang yang ditentukan oleh 2 anak yang usianya berdekatan adalah 5.000, berapakah uang yang diterima masing-masing anak?  2. Tempat duduk pertunjukan film diatur mulai dari depan ke belakang dengan banyak baris dibelakang lebih 4 kursi dari baris didepannya. Bila dalam gedung pertunjukkan terdapat 15 baris dan yang terdepan ada 20 kursi, maka banyaknya kursi pada baris paling belakang adalah...  3. Sebuah pabrik memproduksi barang pada tahun 2010 sebanyak 1960, tiap tahun produksinya turun sebesar 60 unit. berapakah produksi pabrik tersebut pada tahun 2026?',
            tanggal: '20/02/2026',
          ),
          TaskModel(
            judul: 'Soal',
            selesai: false,
            isiTugas:
                '1. a. 8, 5, 2, ..., ...   b. 2, 3, 5, 8, ..., ...   c. -15, -11, -7, ..., ...   d. 10, 8, 6, 4, -2, ..., ...   pertanyaan:   I. Tentukan  2 suku berikut dari masing barisan diatas.   II. Tentukan masing-masing barisan diatas adalahbarisan aritmatika atau bukan, berikan alasannya. 2. Tentukan suku ke 50 dari barisan berikut   5, -2, -9, -16, ..., ...  3. Jika suku ke 3 barisan aritmatika adalah -4 1/2 dan suku ke 8 adalah -2, tentukan suku pertama, beda, dan rumus suku ke n barisan tersebut.',
            tanggal: '20/02/2026',
          ),
          TaskModel(
            judul: 'Baris Aritmatika',
            selesai: false,
            isiTugas:
                'Kerjakan soal baris aritmatika ini :  a. 1, 3, 5, 6, ..., ... b. 1, 6, 11, 16, ..., ... c. 5, -2, -9, -16, ..., ...',
            tanggal: '20/02/2026',
          ),
        ],
      ),
      ChlaSubjectModel(
        namaMapel: "Bahasa Indonesia",
        iconMapel: Icons.flag,
        tugas: [
          TaskModel(
            judul: 'Membuat Puisi',
            selesai: false,
            isiTugas: 'Buatlah sebuah puisi',
            tanggal: '18/05/2026',
          ),
          TaskModel(
            judul: 'Teks Eksposisi',
            selesai: false,
            isiTugas: 'Buatlah sebuah teks eksposisi',
            tanggal: '18/05/2026',
          ),
          TaskModel(
            judul: 'Buat Teks Negosiasi',
            selesai: false,
            isiTugas: 'Buatlah sebuah teks negosiasi bersama kelompokmu',
            tanggal: '18/05/2026',
          ),
          TaskModel(
            judul: 'Buat Video Negosiasi',
            selesai: false,
            isiTugas:
                'Buatlah video negosiasi sesuai dengan teks negosiasi yang telah kamu buat',
            tanggal: '18/05/2026',
          ),
        ],
      ),
      ChlaSubjectModel(
        namaMapel: "Seni Budaya",
        iconMapel: CupertinoIcons.paintbrush_fill,
        tugas: seniBudaya,
      ),
      ChlaSubjectModel(
        namaMapel: "Agama",
        iconMapel: CupertinoIcons.moon_fill,
        tugas: agama,
      ),
    ],
  ),
  //X RPL 2
  HikmalKelasModel(
    judul: 'X RPL 2',
    pelajaran: [
      ChlaSubjectModel(
        namaMapel: "Bahasa Indonesia",
        iconMapel: Icons.flag,
        tugas: bIndonesia,
      ),
    ],
  ),
  //X TKJ 1
  HikmalKelasModel(
    judul: 'X TKJ 1',
    pelajaran: [
      ChlaSubjectModel(
        namaMapel: "Bahasa Indonesia",
        iconMapel: Icons.flag,
        tugas: bIndonesia,
      ),
    ],
  ),
  //X TKJ 2
  HikmalKelasModel(
    judul: 'X TKJ 2',
    pelajaran: [
      ChlaSubjectModel(
        namaMapel: "Bahasa Indonesia",
        iconMapel: Icons.flag,
        tugas: bIndonesia,
      ),
    ],
  ),
  //X TKJ 3
  HikmalKelasModel(
    judul: 'X TKJ 3',
    pelajaran: [
      ChlaSubjectModel(
        namaMapel: "Bahasa Indonesia",
        iconMapel: Icons.flag,
        tugas: bIndonesia,
      ),
    ],
  ),
  //X TKJ 4
  HikmalKelasModel(judul: 'X TKJ 4', pelajaran: []),
  //X SIJA
  HikmalKelasModel(judul: 'X SIJA', pelajaran: []),
  //X DPIB
  HikmalKelasModel(judul: 'X DPIB', pelajaran: []),
  //X LPKC 1
  HikmalKelasModel(judul: 'X LPKC 1', pelajaran: []),
  //X LPKC 2
  HikmalKelasModel(judul: 'X LPKC 2', pelajaran: []),
  //X LPKC 3
  HikmalKelasModel(judul: 'X LPKC 3', pelajaran: []),
  //X LPKC 4
  HikmalKelasModel(judul: 'X LPKC 4', pelajaran: []),
  //X DKV 1
  HikmalKelasModel(judul: 'X DKV 1', pelajaran: []),
  //X DKV 2
  HikmalKelasModel(judul: 'X DKV 2', pelajaran: []),
  //X DKV 3
  HikmalKelasModel(judul: 'X DKV 3', pelajaran: []),
  //X TSM 1
  HikmalKelasModel(judul: 'X TSM 1', pelajaran: []),
  //X TSM 2
  HikmalKelasModel(judul: 'X TSM 2', pelajaran: []),
  //X TKR 1
  HikmalKelasModel(judul: 'X TKR 1', pelajaran: []),
  //X TKR 2
  HikmalKelasModel(judul: 'X TKR 2', pelajaran: []),
  //X TKR 3
  HikmalKelasModel(judul: 'X TKR 3', pelajaran: []),
  //X TKR 4
  HikmalKelasModel(judul: 'X TKR 4', pelajaran: []),
  //X ANM 1
  HikmalKelasModel(judul: 'X ANM 1', pelajaran: []),
  //X ANM 2
  HikmalKelasModel(judul: 'X ANM 2', pelajaran: []),
];
