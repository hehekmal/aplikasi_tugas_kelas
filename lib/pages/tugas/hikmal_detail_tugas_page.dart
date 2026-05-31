import 'package:aplikasi_tugas_kelas/pages/tugas/hikmal_daftar_tugas_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/hikmal_task_model.dart';
import '../../models/services/hikmal_kelas_service.dart';
import '../hikmal_home_page.dart';

class HikmalDetailTugasPage extends StatefulWidget {
  final TaskModel tugas;
  final int mapelId;
  final int id;
  final String judul;
  final int kelasId;
  const HikmalDetailTugasPage({
    super.key,
    required this.tugas,
    required this.mapelId,
    required this.id,
    required this.judul,
    required this.kelasId,
  });

  @override
  State<HikmalDetailTugasPage> createState() => _HikmalDetailTugasPageState();
}

class _HikmalDetailTugasPageState extends State<HikmalDetailTugasPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HikmalDaftarTugasPage(
                  judul: widget.judul,
                  mapelId: widget.mapelId,
                  tugas: daftarKelas[widget.kelasId]
                      .pelajaran[widget.mapelId]
                      .tugas,
                  id: widget.id,
                  kelasId: widget.kelasId,
                ),
              ),
            );
          },
          icon: Icon(CupertinoIcons.back),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Tugas',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade900,
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      widget.tugas.judul,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      color: Colors.blue.shade900,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Tugas',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: darkmode ? Colors.grey.shade800 : Colors.grey.shade300,
                ),
                padding: EdgeInsets.all(20),
                child: Text(
                  widget.tugas.isiTugas,
                  style: TextStyle(
                    color: darkmode ? Colors.white : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(
                        color: widget.tugas.selesai ? Colors.green : Colors.red,
                        width: 2,
                      ),
                      value: widget.tugas.selesai,
                      onChanged: (value) {
                        setState(() {
                          widget.tugas.selesai = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    Text(
                      'Selesai',
                      style: TextStyle(
                        color: widget.tugas.selesai ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: widget.tugas.selesai
                      ? Colors.black.withGreen(255)
                      : Colors.black.withRed(255),
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.all(15),
                child: Text(
                  widget.tugas.selesai ? 'MISSION PASSED!' : 'MISSION FAILED!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withValues(alpha: 0.7),
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            widget.tugas.selesai
                                ? 'assets/images/complete_react.png'
                                : 'assets/images/incomplete_react.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
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
