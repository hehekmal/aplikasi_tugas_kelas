import 'package:aplikasi_tugas_kelas/models/hikmal_task_model.dart';
import 'package:aplikasi_tugas_kelas/pages/chla_home_page.dart';
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
                            color: Colors.grey.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: Colors.grey,
                                  title: Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Judul:',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Container(
                                          width: 200,
                                          child: TextField(
                                            controller: judul,
                                            decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'isi tugas:',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Container(
                                          width: 300,
                                          child: TextField(
                                            controller: isiTugas,
                                            decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                            ),
                                          ),
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
                                            });
                                          },
                                          child: Text('Tambahkan'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              CupertinoIcons.plus,
                              color: darkmode ? Colors.white : Colors.black,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: widget.tugas.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
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
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(color: Colors.blue.shade400,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                          child: Text(
                                            widget.tugas[i].judul,
                                            style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.5,
                                        child: Text(
                                          widget.tugas[i].isiTugas,
                                          overflow: TextOverflow.fade,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Card(
                                    color: widget.tugas[i].selesai
                                        ? Colors.green
                                        : Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        widget.tugas[i].selesai
                                            ? 'Complete'
                                            : 'Incomplete',
                                        style: TextStyle(color: Colors.white),
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
