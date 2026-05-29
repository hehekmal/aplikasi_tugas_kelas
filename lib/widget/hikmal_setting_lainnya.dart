import 'package:flutter/material.dart';

import '../pages/hikmal_home_page.dart';
import '../pages/information_pages/chla_about_application.dart';
import '../pages/information_pages/chla_syarat_dan_ketentuan.dart';
import '../pages/information_pages/hikmal_kebijakan_privasi_page.dart';

class HikmalSettingLainnya extends StatelessWidget {
  const HikmalSettingLainnya({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: darkmode ? Colors.black : Colors.grey.shade300,
        boxShadow: [BoxShadow(offset: Offset(1.5, 1.5), blurRadius: 1)],
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: darkmode ? Colors.white : Colors.black,
              ),
            ),
            leading: Icon(
              Icons.question_mark,
              color: darkmode ? Colors.white : Colors.black,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChlaAboutApplication()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Kebijakan Privasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: darkmode ? Colors.white : Colors.black,
              ),
            ),
            leading: Icon(
              Icons.fact_check_rounded,
              color: darkmode ? Colors.white : Colors.black,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HikmalKebijakanPrivasiPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'Syarat & Ketentuan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: darkmode ? Colors.white : Colors.black,
              ),
            ),
            leading: Icon(
              Icons.document_scanner_outlined,
              color: darkmode ? Colors.white : Colors.black,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChlaSyaratDanKetentuan(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
