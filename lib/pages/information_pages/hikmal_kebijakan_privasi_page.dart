import 'package:flutter/material.dart';

import '../hikmal_home_page.dart';

class HikmalKebijakanPrivasiPage extends StatefulWidget {
  const HikmalKebijakanPrivasiPage({super.key});

  @override
  State<HikmalKebijakanPrivasiPage> createState() =>
      _HikmalKebijakanPrivasiPageState();
}

class _HikmalKebijakanPrivasiPageState
    extends State<HikmalKebijakanPrivasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      appBar: AppBar(
        backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
        iconTheme: IconThemeData(color: darkmode ? Colors.white : Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 2, offset: Offset(2, 2))],
            borderRadius: BorderRadius.circular(20),
            color: darkmode ? Colors.black : Colors.grey.shade300,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'Kebijakan Privasi',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: darkmode ? Colors.white : Colors.black,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ikon/kebijakanpriv.png',
                    width: 40,
                    color: darkmode ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      style: TextStyle(
                        fontSize: 20,
                        color: darkmode ? Colors.white : Colors.black,
                      ),
                      'Kami menghargai privasi Anda. Privasi ini menjelaskan bagaimana kami mengumpulkan, mengggunakan, dan melindungi informasi Anda saat menggunakan aplikasi ini.',
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ikon/infopriv.png',
                    width: 40,
                    color: darkmode ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Informasi yang Kami Kumpulkan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: darkmode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          style: TextStyle(
                            fontSize: 20,
                            color: darkmode ? Colors.white : Colors.black,
                          ),
                          'Kami dapat mengumpulkan data seperti nama, email, informasi profile, data perangkat, dan informasi penggunaan aplikasi.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(width: double.infinity, height: 1, color: Colors.grey),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ikon/usedinfopriv.png',
                    width: 40,
                    color: darkmode ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2. Penggunaan Informasi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: darkmode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          style: TextStyle(
                            fontSize: 20,
                            color: darkmode ? Colors.white : Colors.black,
                          ),
                          'Data  yang kami kumpulkan digunakan untuk menyediakan, meningkatkan, dan mengembangkan layanan serta pengalaman pengguna.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(width: double.infinity, height: 1, color: Colors.grey),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ikon/privdata.png',
                    width: 40,
                    color: darkmode ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3. Keamanan Data',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: darkmode ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          style: TextStyle(
                            fontSize: 20,
                            color: darkmode ? Colors.white : Colors.black,
                          ),
                          'Kami menerapkan  langkah - langkah yang sesuai untuk melindungi data Anda dari akses yang tidak sah, kehilangan, atau penyalahgunaan.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
