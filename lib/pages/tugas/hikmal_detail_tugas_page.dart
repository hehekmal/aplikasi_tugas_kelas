import 'package:aplikasi_tugas_kelas/pages/tugas/hikmal_daftar_tugas_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/chla_subject_model.dart';
import '../../model/hikmal_task_model.dart';
import '../chla_home_page.dart';

class HikmalDetailTugasPage extends StatefulWidget {
  final TaskModel tugas;
  final int mapelId;
  final int id;
  const HikmalDetailTugasPage({
    super.key,
    required this.tugas,
    required this.mapelId,
    required this.id,
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
                  judul: 'Informatika',
                  mapelId: widget.mapelId,
                  tugas: mapel[widget.mapelId].tugas,
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
      ),backgroundColor: darkmode?Colors.grey.shade900:Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade900,
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      widget.tugas.judul,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.tugas.isiTugas,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Checkbox(
                    value: widget.tugas.selesai,
                    onChanged: (value) {
                      setState(() {
                        widget.tugas.selesai = value!;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('Selesai',style: TextStyle(color: darkmode?Colors.white:Colors.black),),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
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
          ],
        ),
      ),
    );
  }
}
