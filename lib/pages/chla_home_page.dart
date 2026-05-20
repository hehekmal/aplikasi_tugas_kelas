import 'package:aplikasi_tugas_kelas/pages/drawer/chla_feedback_page.dart';
import 'package:aplikasi_tugas_kelas/pages/drawer/hikmal_settings_page.dart';
import 'package:aplikasi_tugas_kelas/pages/tugas/hikmal_daftar_tugas_page.dart';
import 'package:flutter/material.dart';

import '../models/services/hikmal_account_service.dart';
import '../models/services/chla_subject_service.dart';

bool darkmode = false;

class ChlaHomePage extends StatefulWidget {
  final int id;
  const ChlaHomePage({super.key, required this.id});

  @override
  State<ChlaHomePage> createState() => _ChlaHomePageState();
}

class _ChlaHomePageState extends State<ChlaHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: [
              Text(
                "Aplikasi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              Text(
                "Tugas Kelas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HikmalSettingsPage(id: widget.id),
                    ),
                  );
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                tileColor: Colors.blue.shade200,
              ),
              SizedBox(height: 10),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChlaFeedbackPage()),
                  );
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                title: Text("Feedback"),
                leading: Icon(Icons.message),
                tileColor: Colors.blue.shade200,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Beranda", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade200,
                        Colors.indigo,
                        Colors.indigo,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          color: darkmode ? Colors.white : Colors.black,
                          padding: EdgeInsets.all(2),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/carmen.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            accounts[widget.id].nama,
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Class of ${accounts[widget.id].kelas}",
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: mapel.length,
                    itemBuilder: (context, c) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        title: Text(
                          mapel[c].namaMapel,
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Icon(mapel[c].iconMapel, color: Colors.black),
                        tileColor: Colors.blue.shade900,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HikmalDaftarTugasPage(
                                id: widget.id,
                                judul: mapel[c].namaMapel,
                                tugas: mapel[c].tugas,
                                mapelId: c,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
