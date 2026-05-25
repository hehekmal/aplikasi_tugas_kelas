import 'dart:async';

import 'package:aplikasi_tugas_kelas/pages/drawer/chla_feedback_page.dart';
import 'package:aplikasi_tugas_kelas/pages/drawer/hikmal_settings_page.dart';
import 'package:aplikasi_tugas_kelas/pages/tugas/hikmal_daftar_tugas_page.dart';
import 'package:flutter/material.dart';

import '../models/services/hikmal_account_service.dart';
import '../models/services/chla_subject_service.dart';

bool darkmode = false;

class HikmalHomePage extends StatefulWidget {
  final int id;
  const HikmalHomePage({super.key, required this.id});

  @override
  State<HikmalHomePage> createState() => _HikmalHomePageState();
}

class _HikmalHomePageState extends State<HikmalHomePage> {
  late Timer warna;
  bool warnaprofil = false;
  @override
  void initState() {
    warna = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        warnaprofil = !warnaprofil;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    warna.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.blue],
            ),
          ),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: [
              Text(
                "Aplikasi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                  shadows: [BoxShadow(offset: Offset(2, 2), blurRadius: 2)],
                ),
              ),
              Text(
                "Tugas Kelas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                  shadows: [BoxShadow(offset: Offset(2, 2), blurRadius: 2)],
                ),
              ),
              SizedBox(height: 30),
              Material(
                type: MaterialType.transparency,
                child: ListTile(
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
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.settings, color: Colors.black),
                  tileColor: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(height: 10),
              Material(
                type: MaterialType.transparency,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChlaFeedbackPage(),
                      ),
                    );
                  },
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  title: Text(
                    "Feedback",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.message, color: Colors.black),
                  tileColor: Colors.lightBlueAccent,
                ),
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
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        warnaprofil ? Colors.blue.shade900 : Colors.blueAccent,
                        warnaprofil ? Colors.blueAccent : Colors.blue.shade900,
                        warnaprofil ? Colors.blue.shade900 : Colors.blueAccent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/carmen.png',
                              fit: BoxFit.fitHeight,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        accounts[widget.id].nama,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Class of ${accounts[widget.id].kelas}",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Subjects',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: darkmode ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mapel.length * 65,
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
