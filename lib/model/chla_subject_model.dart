import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChlaSubjectModel {
  final String namaMapel;
  final IconData iconMapel;

  ChlaSubjectModel({required this.namaMapel, required this.iconMapel});
}
List<ChlaSubjectModel> mapel  = [
  ChlaSubjectModel(namaMapel: "Informatika", iconMapel: Icons.computer),
  ChlaSubjectModel(namaMapel: "IPAS", iconMapel: Icons.science),
  ChlaSubjectModel(namaMapel: "Matematika", iconMapel: Icons.percent),
  ChlaSubjectModel(namaMapel: "Bahasa Indonesia", iconMapel: Icons.flag),
  ChlaSubjectModel(namaMapel: "Seni Budaya", iconMapel: CupertinoIcons.paintbrush_fill),
  ChlaSubjectModel(namaMapel: "Agama", iconMapel: CupertinoIcons.moon_fill),

];
