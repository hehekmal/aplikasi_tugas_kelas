import 'package:aplikasi_tugas_kelas/pages/hikmal_home_page.dart';
import 'package:aplikasi_tugas_kelas/pages/hikmal_daftar_page.dart';
import 'package:flutter/material.dart';

import '../models/services/hikmal_account_service.dart';

class ChlaLoginPage extends StatefulWidget {
  const ChlaLoginPage({super.key});

  @override
  State<ChlaLoginPage> createState() => _ChlaLoginPageState();
}

class _ChlaLoginPageState extends State<ChlaLoginPage> {
  bool salah = false;
  bool pw = true;
  TextEditingController nama = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text(
                        'Nama/Email:',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(13),
                        bottomLeft: Radius.circular(13),
                        topRight: Radius.circular(13),
                      ),
                    ),
                    child: TextField(
                      controller: nama,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Password:', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(13),
                        topRight: Radius.circular(13),
                        bottomRight: Radius.circular(13),
                      ),
                    ),
                    child: TextField(
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
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      salah
                          ? Text(
                              'Login Gagal',
                              style: TextStyle(color: Colors.red),
                            )
                          : Container(),
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
                          builder: (context) => HikmalDaftarPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Daftar?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      for (int i = 0; i < accounts.length; i++) {
                        if (nama.text == accounts[i].nama &&
                            password.text == accounts[i].password) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HikmalHomePage(
                                id: i,
                                kelasId: accounts[i].kelasId,
                              ),
                            ),
                          );
                        } else {
                          setState(() {
                            salah = true;
                          });
                        }
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.fromLTRB(30, 15, 30, 15),
                      ),
                      elevation: WidgetStatePropertyAll(5),
                      shadowColor: WidgetStatePropertyAll(Colors.black),
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
