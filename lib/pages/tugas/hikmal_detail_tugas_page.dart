import 'package:flutter/material.dart';

import '../../model/hikmal_task_model.dart';

class HikmalDetailTugasPage extends StatefulWidget {
  final TaskModel tugas;
  const HikmalDetailTugasPage({super.key, required this.tugas});

  @override
  State<HikmalDetailTugasPage> createState() => _HikmalDetailTugasPageState();
}

class _HikmalDetailTugasPageState extends State<HikmalDetailTugasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Tugas',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
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
        ],
      ),
    );
  }
}
