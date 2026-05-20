import 'package:aplikasi_tugas_kelas/models/services/hikmal_task_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chla_subject_model.dart';

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
    tugas: seniBudaya,
  ),
  ChlaSubjectModel(
    namaMapel: "Agama",
    iconMapel: CupertinoIcons.moon_fill,
    tugas: agama,
  ),
];
