import 'package:aplikasi_tugas_kelas/pages/chla_login_page.dart';
import 'package:flutter/material.dart';
import '../model/hikmal_account_model.dart';
import '../model/service/hikmal_account_service.dart';
import 'chla_home_page.dart';

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

  bool pwC = true;
  bool pw = true;

  late String kelaspilihan = 'kelas';
  bool? ketuaKelas = false;
  bool akunAda = false;
  int cekKetua = 0;
  int a = 0;

  List<DropdownMenuEntry<int>> pilihkelas = [
    DropdownMenuEntry(value: 0, label: 'X RPL 1'),
    DropdownMenuEntry(value: 1, label: 'X RPL 2'),
    DropdownMenuEntry(value: 2, label: 'X TKJ 1'),
    DropdownMenuEntry(value: 3, label: 'X TKJ 2'),
    DropdownMenuEntry(value: 4, label: 'X TKJ 3'),
    DropdownMenuEntry(value: 5, label: 'X TKJ 4'),
    DropdownMenuEntry(value: 6, label: 'X SIJA'),
    DropdownMenuEntry(value: 7, label: 'X DPIB'),
    DropdownMenuEntry(value: 8, label: 'X LPKC 1'),
    DropdownMenuEntry(value: 9, label: 'X LPKC 2'),
    DropdownMenuEntry(value: 10, label: 'X LPKC 3'),
    DropdownMenuEntry(value: 11, label: 'X LPKC 4'),
    DropdownMenuEntry(value: 12, label: 'X DKV 1'),
    DropdownMenuEntry(value: 13, label: 'X DKV 2'),
    DropdownMenuEntry(value: 14, label: 'X DKV 3'),
    DropdownMenuEntry(value: 15, label: 'X TSM 1'),
    DropdownMenuEntry(value: 16, label: 'X TSM 2'),
    DropdownMenuEntry(value: 17, label: 'X TKR 1'),
    DropdownMenuEntry(value: 18, label: 'X TKR 2'),
    DropdownMenuEntry(value: 19, label: 'X TKR 3'),
    DropdownMenuEntry(value: 20, label: 'X TKR 4'),
    DropdownMenuEntry(value: 20, label: 'X ANM 1'),
    DropdownMenuEntry(value: 20, label: 'X ANM 2'),
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
                      obscureText: pw,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              pw = !pw;
                            });
                          },
                          icon: Icon(
                            pw
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                          ),
                        ),
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
                      obscureText: pwC,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              pwC = !pwC;
                            });
                          },
                          icon: Icon(
                            pwC
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                          ),
                        ),
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
                        akunAda
                            ? Text(
                                'akun sudah ada',
                                style: TextStyle(color: Colors.red),
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: ketuaKelas,
                              onChanged: (value) {
                                setState(() {
                                  ketuaKelas = value;
                                });
                              },
                              activeColor: Colors.green,
                            ),
                            Text(
                              'Ketua Kelas',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        DropdownMenu(
                          menuHeight: 200,
                          textStyle: TextStyle(color: Colors.white),
                          inputDecorationTheme: InputDecorationTheme(
                            suffixIconColor: Colors.white,
                            filled: true,
                            fillColor: Colors.deepPurple.shade900,
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          dropdownMenuEntries: pilihkelas,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChlaLoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'login?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          for (int i = 0; i < accounts.length; i++) {
                            if (nama.text == accounts[i].nama) {
                              a = a + 0;
                            } else {
                              a = a + 1;
                            }
                          }
                          if (a == accounts.length &&
                              password.text == passwordConfirm.text) {
                            accounts.add(
                              HikmalAccountModel(
                                nama: nama.text,
                                email: email.text,
                                password: password.text,
                                kelas: kelas.text,
                                ketuaKelas: ketuaKelas!,
                              ),
                            );
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ChlaHomePage(id: accounts.length - 1),
                              ),
                            );
                            a = 0;
                          } else {
                            akunAda = true;
                            a = 0;
                          }
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
