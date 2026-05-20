import 'package:aplikasi_tugas_kelas/model/hikmal_account_model.dart';
import 'package:aplikasi_tugas_kelas/pages/chla_home_page.dart';
import 'package:aplikasi_tugas_kelas/pages/hikmal_daftar_page.dart';
import 'package:flutter/material.dart';

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
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Nama/Email:',
                          style: TextStyle(color: Colors.white),
                        ),
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
                        'daftar?',
                        style: TextStyle(color: Colors.white),
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
                                builder: (context) => ChlaHomePage(id: i),
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
