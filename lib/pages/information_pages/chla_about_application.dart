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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset("images/book.png", width: 300, height: 150,fit: BoxFit.cover,),
              Text(
                "Tugas Kelas",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi Singkat",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),
                    Text(
                      "Aplikasi Tugas Kelas adalah aplikasi pengelola tugas yang dikelola langsung oleh Ketua Kelas. Aplikasi ini dibuat untuk memastikan seluruh anggota kelas mendapatkan informasi tugas yang valid, terpusat, dan seragam.",
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Informasi Pengembang",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Developer : Chlikmal"),
                    Text("Website : www.chlikmal-website.com"),
                    Text("Email : chladiola@gmail.com"),
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
