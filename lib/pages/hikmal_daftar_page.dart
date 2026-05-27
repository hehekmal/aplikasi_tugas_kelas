import 'package:aplikasi_tugas_kelas/models/services/hikmal_kelas_service.dart';
import 'package:aplikasi_tugas_kelas/pages/chla_login_page.dart';
import 'package:flutter/material.dart';
import '../models/hikmal_account_model.dart';
import '../models/services/hikmal_account_service.dart';
import 'hikmal_home_page.dart';

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
  late String salah = 'akun sudah ada';
  late String kelaspilihan = 'kelas';
  bool? ketuaKelas = false;
  bool akunAda = false;
  int cekKetua = 0;
  int a = 0;
  late int indexKelas;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Daftar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 25),
                    Text('Nama:', style: TextStyle(color: Colors.black)),
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
                    Text('Email:', style: TextStyle(color: Colors.black)),
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
                    controller: email,
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
                      bottomRight: Radius.circular(13),
                      bottomLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
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
                    SizedBox(width: 25),
                    Text(
                      'Konfirmasi Password:',
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
                ),
                Row(
                  children: [
                    akunAda
                        ? Text(salah, style: TextStyle(color: Colors.red))
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
                          style: TextStyle(color: Colors.black),
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
                      dropdownMenuEntries: [
                        for (int k = 0; k < daftarKelas.length; k++)
                          DropdownMenuEntry(
                            value: k,
                            label: daftarKelas[k].judul,
                          ),
                      ],
                      hintText: 'Kelas',
                      controller: kelas,
                      onSelected: (value) {
                        setState(() {
                          indexKelas = value!;
                          kelaspilihan = kelas.text;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChlaLoginPage()),
                    );
                  },
                  child: Text(
                    'Login?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                      if (kelas.text == '') {
                        akunAda = true;
                        a = 0;
                        salah = 'kelas tidak boleh kosong';
                      } else {
                        if (a == accounts.length &&
                            password.text == passwordConfirm.text) {
                          accounts.add(
                            HikmalAccountModel(
                              nama: nama.text,
                              email: email.text,
                              password: password.text,
                              kelas: kelas.text,
                              kelasId: indexKelas,
                              ketuaKelas: ketuaKelas!,
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HikmalHomePage(
                                id: accounts.length - 1,
                                kelasId: indexKelas,
                              ),
                            ),
                          );
                          a = 0;
                        } else {
                          akunAda = true;
                          a = 0;
                          salah = 'akun sudah ada';
                        }
                      }
                    });
                  },
                  child: Text(
                    'Daftar',
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
    );
  }
}
