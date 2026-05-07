import 'package:flutter/material.dart';

class ChlaLoginPage extends StatefulWidget {
  const ChlaLoginPage({super.key});

  @override
  State<ChlaLoginPage> createState() => _ChlaLoginPageState();
}

class _ChlaLoginPageState extends State<ChlaLoginPage> {
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
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue.shade800,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Row(
                  children: [
                    Text('Name/Email:', style: TextStyle(color: Colors.white)),
                  ],
                ),
                TextField(
                  controller: nama,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text('Password:', style: TextStyle(color: Colors.white)),
                  ],
                ),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Daftar?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
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
