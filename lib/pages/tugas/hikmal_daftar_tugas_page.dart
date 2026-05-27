import 'package:aplikasi_tugas_kelas/models/hikmal_task_model.dart';
import 'package:aplikasi_tugas_kelas/pages/hikmal_home_page.dart';
import 'package:aplikasi_tugas_kelas/pages/tugas/hikmal_detail_tugas_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/services/hikmal_account_service.dart';

class HikmalDaftarTugasPage extends StatefulWidget {
  final int id;
  final String judul;
  final int mapelId;
  final List<TaskModel> tugas;

  const HikmalDaftarTugasPage({
    super.key,
    required this.id,
    required this.judul,
    required this.tugas,
    required this.mapelId,
  });

  @override
  State<HikmalDaftarTugasPage> createState() => _HikmalDaftarTugasPageState();
}

class _HikmalDaftarTugasPageState extends State<HikmalDaftarTugasPage> {
  TextEditingController judul = TextEditingController();
  TextEditingController isiTugas = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
        title: Text(
          widget.judul,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: darkmode ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: darkmode ? Colors.grey.shade900 : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tugas',
                    style: TextStyle(
                      color: darkmode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  accounts[widget.id].ketuaKelas
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: Colors.blue,
                                  title: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Judul:',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width *0.55,
                                            child: TextField(
                                              minLines: 1,
                                              maxLines: 2,
                                              controller: judul,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Deskripsi:',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width  *0.55,
                                            child: TextField(
                                              maxLines: null,
                                              controller: isiTugas,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            widget.tugas.add(
                                              TaskModel(
                                                judul: judul.text,
                                                selesai: false,
                                                isiTugas: isiTugas.text,
                                                tanggal: '02/02/2026',
                                              ),
                                            );
                                            judul=TextEditingController(text: '');
                                            isiTugas=TextEditingController(text: '');
                                          });
                                        },
                                        child: Text('Tambahkan'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              CupertinoIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              height: widget.tugas.length * 150,
              width: size.width,
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: widget.tugas.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.all(4),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HikmalDetailTugasPage(
                              tugas: widget.tugas[i],
                              mapelId: widget.mapelId,
                              id: widget.id,
                              judul: widget.judul,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: darkmode?Colors.grey.shade800:Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(blurRadius: 2, offset: Offset(1, 1)),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.tugas[i].judul,
                                      style: TextStyle(
                                        color: darkmode?Colors.white:Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.5,
                                      child: Text(
                                        widget.tugas[i].isiTugas,
                                        overflow: TextOverflow.fade,
                                        maxLines: 4,
                                        style: TextStyle(fontSize: 9,color: darkmode?Colors.white:Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: widget.tugas[i].selesai
                                        ? Colors.green
                                        : Colors.yellow,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    widget.tugas[i].selesai
                                        ? 'Complete'
                                        : 'Incomplete',
                                    style: TextStyle(
                                      color: Colors.black.withValues(
                                        alpha: 0.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  widget.tugas[i].tanggal,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Image.asset('assets/images/yay.png', width: 100, height: 100),
                  Text(
                    'Semangat  Mengerjakan!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Kerjakan tugas tepat waktu ya!',
                    style: TextStyle(color: Colors.grey),
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
