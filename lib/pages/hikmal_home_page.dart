import 'dart:async';

import 'package:aplikasi_tugas_kelas/models/chla_subject_model.dart';
import 'package:aplikasi_tugas_kelas/pages/drawer/chla_feedback_page.dart';
import 'package:aplikasi_tugas_kelas/pages/drawer/hikmal_settings_page.dart';
import 'package:aplikasi_tugas_kelas/pages/tugas/hikmal_daftar_tugas_page.dart';
import 'package:aplikasi_tugas_kelas/widget/hikmal_home_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/services/hikmal_account_service.dart';
import '../models/services/hikmal_kelas_service.dart';

bool darkmode = false;

class HikmalHomePage extends StatefulWidget {
  final int id;
  final int kelasId;
  const HikmalHomePage({super.key, required this.id, required this.kelasId});

  @override
  State<HikmalHomePage> createState() => _HikmalHomePageState();
}

class _HikmalHomePageState extends State<HikmalHomePage> {
  TextEditingController tambahNamaMapel = TextEditingController();
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
                HikmalHomeProfile(id: widget.id, kelasId: widget.kelasId),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subjects',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: darkmode ? Colors.white : Colors.black,
                      ),
                    ),
                    accounts[widget.id].ketuaKelas
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Colors.blue.shade900,
                                    title: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Text(
                                                'Nama:',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: size.width * 0.55,
                                              child: TextField(
                                                minLines: 1,
                                                maxLines: 2,
                                                controller: tambahNamaMapel,
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '!: Nama tidak boleh kosong',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (tambahNamaMapel.text !=
                                                      '') {
                                                    daftarKelas[widget.kelasId]
                                                        .pelajaran
                                                        .add(
                                                          ChlaSubjectModel(
                                                            namaMapel:
                                                                tambahNamaMapel
                                                                    .text,
                                                            iconMapel:
                                                                Icons.circle,
                                                            tugas: [],
                                                          ),
                                                        );
                                                    tambahNamaMapel =
                                                        TextEditingController(
                                                          text: '',
                                                        );
                                                    Navigator.pop(context);
                                                  }
                                                });
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                      Colors.blue,
                                                    ),
                                              ),
                                              child: Text(
                                                'Tambahkan',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  tambahNamaMapel =
                                                      TextEditingController(
                                                        text: '',
                                                      );
                                                  Navigator.pop(context);
                                                });
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                      Colors.blue,
                                                    ),
                                              ),
                                              child: Text(
                                                'Batal',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(
                                CupertinoIcons.plus,
                                color: Colors.black,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  height: daftarKelas[widget.kelasId].pelajaran.length * 65,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: daftarKelas[widget.kelasId].pelajaran.length,
                    itemBuilder: (context, c) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        title: Text(
                          daftarKelas[widget.kelasId].pelajaran[c].namaMapel,
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Icon(
                          daftarKelas[widget.kelasId].pelajaran[c].iconMapel,
                          color: Colors.black,
                        ),
                        tileColor: Colors.blue.shade900,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HikmalDaftarTugasPage(
                                id: widget.id,
                                judul: daftarKelas[widget.kelasId]
                                    .pelajaran[c]
                                    .namaMapel,
                                tugas: daftarKelas[widget.kelasId]
                                    .pelajaran[c]
                                    .tugas,
                                mapelId: c,
                                kelasId: widget.kelasId,
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
