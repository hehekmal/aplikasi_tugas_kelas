import 'package:aplikasi_tugas_kelas/pages/chla_login_page.dart';
import 'package:aplikasi_tugas_kelas/pages/hikmal_loading_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Tulasap());
}
class Tulasap extends StatefulWidget {
  const Tulasap({super.key});

  @override
  State<Tulasap> createState() => _TulasapState();
}

class _TulasapState extends State<Tulasap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HikmalLoadingPage(),);
  }
}
