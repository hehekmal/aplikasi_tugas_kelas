import 'package:aplikasi_tugas_kelas/pages/hikmal_home_page.dart';
import 'package:flutter/material.dart';

class ChlaSyaratDanKetentuan extends StatefulWidget {
  const ChlaSyaratDanKetentuan({super.key});

  @override
  State<ChlaSyaratDanKetentuan> createState() => _ChlaSyaratDanKetentuanState();
}

class _ChlaSyaratDanKetentuanState extends State<ChlaSyaratDanKetentuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      appBar: AppBar(
        backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
        iconTheme: IconThemeData(color: darkmode ? Colors.white : Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Syarat dan Ketentuan",
          style: TextStyle(
            color: darkmode ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(20, 0, 20, 20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade400,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/kbijakanpriv.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Syarat dan Ketentuan",
                          style: TextStyle(
                            color: darkmode ? Colors.white : Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          style: TextStyle(
                            color: darkmode
                                ? Colors.grey.shade200
                                : Colors.black,
                          ),
                          "Dengan menggunakann layanan kami, Anda menyetujui syarat dan ketentuan berikut. Harap baca dengan seksama sebelum menggunakan layanan.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade400,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.blue,
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ketentuan Umum",
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              style: TextStyle(
                                color: darkmode
                                    ? Colors.grey.shade200
                                    : Colors.black,
                              ),
                              "Layanan ini disediakan untuk pengguna yang berusia minimal 17 tahun atau telah mendapat izin dari wali/penanggung jawab.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade400,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.blue,
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pengguna Umum",
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              style: TextStyle(
                                color: darkmode
                                    ? Colors.grey.shade200
                                    : Colors.black,
                              ),
                              "Pengguna setuju untuk mennggunakan layanan ini sesuai dengan hukum yang berlaku dan tidak untuk tujuan yang melanggar hak pihak lain.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade400,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.blue,
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Akun Pengguna",
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                              ),
                              "Pengguna bertanggung jawab atas kerahasiaan akun dan semua aktivitas yang dilakukan melalui akun tersebut.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade400,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.blue,
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Konten Pengguna",
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                              ),
                              "Pengguna bertanggung jawab atas kerahasiaan akun dan semua aktivitas yang dilakukan melalui akun tersebut.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade400,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.blue,
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pembatas Tanggung Jawab",
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              style: TextStyle(
                                color: darkmode ? Colors.white : Colors.black,
                              ),
                              "Pengguna bertanggung jawab atas kerahasiaan akun dan semua aktivitas yang dilakukan melalui akun tersebut.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
