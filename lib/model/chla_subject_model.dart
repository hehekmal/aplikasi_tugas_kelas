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

