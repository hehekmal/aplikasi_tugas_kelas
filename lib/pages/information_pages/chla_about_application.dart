import 'package:aplikasi_tugas_kelas/pages/chla_home_page.dart';
import 'package:flutter/material.dart';

class ChlaAboutApplication extends StatefulWidget {
  const ChlaAboutApplication({super.key});

  @override
  State<ChlaAboutApplication> createState() => _ChlaAboutApplicationState();
}

class _ChlaAboutApplicationState extends State<ChlaAboutApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: darkmode ? Colors.white : Colors.black),
        backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(
                darkmode
                    ? "assets/images/whitebook.png"
                    : "assets/images/blackbook.png",
                width: 300,
                height: 150,
              ),
              Text(
                "Tugas Kelas",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: darkmode ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: darkmode ? Colors.black : Colors.grey.shade200,
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi Singkat",
                      style: TextStyle(
                        color: darkmode ? Colors.white : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),
                    Text(
                      "Aplikasi Tugas Kelas adalah aplikasi pengelola tugas yang dikelola langsung oleh Ketua Kelas. Aplikasi ini dibuat untuk memastikan seluruh anggota kelas mendapatkan informasi tugas yang valid, terpusat, dan seragam.",
                      style: TextStyle(
                        color: darkmode ? Colors.grey.shade200 : Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Informasi Pengembang",
                      style: TextStyle(
                        color: darkmode ? Colors.white : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Developer : Chlikmal",
                      style: TextStyle(
                        color: darkmode ? Colors.grey.shade200 : Colors.black,
                      ),
                    ),
                    Text(
                      "Website : www.chlikmal-website.com",
                      style: TextStyle(
                        color: darkmode ? Colors.grey.shade200 : Colors.black,
                      ),
                    ),
                    Text(
                      "Email : chladiola@gmail.com",
                      style: TextStyle(
                        color: darkmode ? Colors.grey.shade200 : Colors.black,
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
