import 'package:aplikasi_tugas_kelas/pages/chla_login_page.dart';
import 'package:flutter/material.dart';

class HikmalDaftarPage extends StatefulWidget {
  const HikmalDaftarPage({super.key});

  @override
  State<HikmalDaftarPage> createState() => _HikmalDaftarPageState();
}

class _HikmalDaftarPageState extends State<HikmalDaftarPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();
  TextEditingController kelas = TextEditingController();
  late String kelaspilihan = 'kelas';
  int a = 0;
  List<DropdownMenuEntry<int>> h = [
    DropdownMenuEntry(value: 0, label: 'X RPL 1'),
    DropdownMenuEntry(value: 1, label: 'X RPL 2'),
    DropdownMenuEntry(value: 2, label: 'X TKJ 1'),
    DropdownMenuEntry(value: 3, label: 'X TKJ 2'),
    DropdownMenuEntry(value: 4, label: 'X TKJ 3'),
    DropdownMenuEntry(value: 5, label: 'X TKJ 4'),
    DropdownMenuEntry(value: 6, label: 'X SIJA'),
    DropdownMenuEntry(value: 6, label: 'X DPIB'),
    DropdownMenuEntry(value: 6, label: 'X LPKC 1'),
    DropdownMenuEntry(value: 6, label: 'X LPKC 2'),
    DropdownMenuEntry(value: 6, label: 'X LPKC 3'),
    DropdownMenuEntry(value: 6, label: 'X LPKC 4'),
    DropdownMenuEntry(value: 6, label: 'X DKV 1'),
    DropdownMenuEntry(value: 6, label: 'X DKV 2'),
    DropdownMenuEntry(value: 6, label: 'X DKV 3'),
    DropdownMenuEntry(value: 6, label: 'X TSM 1'),
    DropdownMenuEntry(value: 6, label: 'X TSM 2'),
    DropdownMenuEntry(value: 6, label: 'X TKR 1'),
    DropdownMenuEntry(value: 6, label: 'X TKR 2'),
    DropdownMenuEntry(value: 6, label: 'X TKR 3'),
    DropdownMenuEntry(value: 6, label: 'X TKR 4'),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(25),
            ),
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text('Nama:', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TextField(
                      controller: nama,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text('Email:', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Password:',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Konfirmasi Password:',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    TextField(
                      controller: passwordConfirm,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DropdownMenu(menuHeight: 200,
                          textStyle: TextStyle(color: Colors.white),
                          inputDecorationTheme: InputDecorationTheme(
                            suffixIconColor: Colors.white,
                            filled: true,
                            fillColor: Colors.deepPurple.shade900,
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          dropdownMenuEntries: h,
                          hintText: 'Kelas',
                          controller: kelas,
                          onSelected: (value) {
                            setState(() {
                              kelaspilihan = kelas.text;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ChlaLoginPage(),));},
                      child: Text(
                        'login?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(title: Text(kelaspilihan)),
                          );
                        });
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(5),
                        shadowColor: WidgetStatePropertyAll(Colors.black),
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
