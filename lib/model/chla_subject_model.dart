import 'package:aplikasi_tugas_kelas/model/hikmal_task_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChlaSubjectModel {
  final String namaMapel;
  final IconData iconMapel;
  final List<TaskModel> tugas;

  ChlaSubjectModel({
    required this.namaMapel,
    required this.iconMapel,
    required this.tugas,
  });
}

List<ChlaSubjectModel> mapel = [
  ChlaSubjectModel(
    namaMapel: "Informatika",
    iconMapel: Icons.computer,
    tugas: informatika,
  ),
  ChlaSubjectModel(namaMapel: "IPAS", iconMapel: Icons.science, tugas: ipas),
  ChlaSubjectModel(
    namaMapel: "Matematika",
    iconMapel: Icons.percent,
    tugas: matematika,
  ),
  ChlaSubjectModel(
    namaMapel: "Bahasa Indonesia",
    iconMapel: Icons.flag,
    tugas: bIndonesia,
  ),
  ChlaSubjectModel(
    namaMapel: "Seni Budaya",
    iconMapel: CupertinoIcons.paintbrush_fill,
    tugas: [],
  ),
  ChlaSubjectModel(
    namaMapel: "Agama",
    iconMapel: CupertinoIcons.moon_fill,
    tugas: [],
  ),
];
