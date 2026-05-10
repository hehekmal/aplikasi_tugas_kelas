import 'package:aplikasi_tugas_kelas/model/chla_subject_model.dart';
import 'package:flutter/material.dart';

class ChlaHomePage extends StatefulWidget {
  const ChlaHomePage({super.key});

  @override
  State<ChlaHomePage> createState() => _ChlaHomePageState();
}

class _ChlaHomePageState extends State<ChlaHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: [
              Text(
                "Aplikasi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              Text(
                "Tugas Kelas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                tileColor: Colors.blue.shade200,
              ),
              SizedBox(height: 10,),
              ListTile(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                title: Text("Feedback"),
                leading: Icon(Icons.message),
                tileColor: Colors.blue.shade200,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Beranda", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade200,
                        Colors.indigo,
                        Colors.indigo,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(2),
                          child: ClipOval(
                            child: Image.asset(
                              'images/carmen.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chladiola Nazwa",
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text("Class of X RPL 1"),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: mapel.length,
                    itemBuilder: (context, c) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        title: Text(
                          mapel[c].namaMapel,
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Icon(mapel[c].iconMapel, color: Colors.black),
                        tileColor: Colors.indigo,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
