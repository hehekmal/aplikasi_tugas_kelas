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
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.blue.shade800),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 80, color: Colors.white),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Nama/Email:', style: TextStyle(color: Colors.white)),
                  ],
                ),
                TextField(
                  controller: nama,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
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
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Row(children: [TextButton(onPressed: () {}, child: Text("daftar?", style: TextStyle(color: Colors.white),)), ElevatedButton(onPressed: () {}, child: Text("Login", style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),)],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
