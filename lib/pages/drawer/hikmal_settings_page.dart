import 'package:aplikasi_tugas_kelas/pages/information_pages/chla_about_application.dart';
import 'package:aplikasi_tugas_kelas/pages/information_pages/chla_profile_page.dart';
import 'package:aplikasi_tugas_kelas/pages/information_pages/chla_syarat_dan_ketentuan.dart';
import 'package:aplikasi_tugas_kelas/pages/information_pages/hikmal_kebijakan_privasi_page.dart';
import 'package:flutter/material.dart';

class HikmalSettingsPage extends StatefulWidget {
  const HikmalSettingsPage({super.key});

  @override
  State<HikmalSettingsPage> createState() => _HikmalSettingsPageState();
}

class _HikmalSettingsPageState extends State<HikmalSettingsPage> {
  bool darkmode = false;
  bool notif = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Settings', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.black,
                          padding: EdgeInsets.all(2),
                          child: ClipOval(
                            child: Image.asset(
                              'images/carmen.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chladiola Nazwa',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3, top: 3),
                            child: Text(
                              'ChladiolaNazwa@gmail.com',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo.shade300,
                            ),
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'X RPL 1',
                              style: TextStyle(color: Colors.indigo.shade900),
                            ),
                          ),
                        ],

                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ChlaProfilePage(),));},
                        icon: Icon(Icons.edit, size: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Preferensi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1),
                ],
              ),
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text(
                      'Mode Gelap',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('Aktifkan tema gelap'),
                    secondary: Icon(Icons.shield_moon, color: Colors.black),
                    value: darkmode,
                    onChanged: (value) {
                      setState(() {
                        darkmode = !darkmode;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text(
                      'Notifikasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('Terima pengingat tugas'),
                    secondary: Icon(
                      Icons.notifications_active,
                      color: Colors.black,
                    ),
                    value: notif,
                    onChanged: (value) {
                      setState(() {
                        notif = !notif;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lainnya',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Tentang Aplikasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    leading: Icon(Icons.question_mark, color: Colors.black),
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ChlaAboutApplication(),));},
                  ),
                  ListTile(
                    title: Text(
                      'Kebijakan Privasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    leading: Icon(
                      Icons.fact_check_rounded,
                      color: Colors.black,
                    ),
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HikmalKebijakanPrivasiPage(),));},
                  ),
                  ListTile(
                    title: Text(
                      'Syarat & Ketentuan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    leading: Icon(
                      Icons.document_scanner_outlined,
                      color: Colors.black,
                    ),
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ChlaSyaratDanKetentuan(),));},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    leading: Icon(Icons.logout, color: Colors.black),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Hapus akun',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    leading: Icon(Icons.person_remove, color: Colors.black),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
