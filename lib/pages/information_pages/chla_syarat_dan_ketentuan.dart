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
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Syarat dan Ketentuan",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                      "images/kbijakanpriv.png",
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
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
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
                        child: Center(child: Text("1")),
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
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
                        child: Center(child: Text("2")),
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
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
                        child: Center(child: Text("3")),
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
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
                        child: Center(child: Text("4")),
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
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
                        child: Center(child: Text("5")),
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
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
