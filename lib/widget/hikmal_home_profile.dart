import 'dart:async';

import 'package:flutter/material.dart';

import '../models/services/hikmal_account_service.dart';

class HikmalHomeProfile extends StatefulWidget {
  final int id;
  final int kelasId;
  const HikmalHomeProfile({super.key, required this.id, required this.kelasId});

  @override
  State<HikmalHomeProfile> createState() => _HikmalHomeProfileState();
}

class _HikmalHomeProfileState extends State<HikmalHomeProfile> {
  late Timer warna;
  bool warnaprofil = false;

  @override
  void initState() {
    warna = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        warnaprofil = !warnaprofil;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    warna.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            warnaprofil ? Colors.blue.shade900 : Colors.blueAccent,
            warnaprofil ? Colors.blueAccent : Colors.blue.shade900,
            warnaprofil ? Colors.blue.shade900 : Colors.blueAccent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(70),
      ),
      child: Column(
        children: [
          ClipOval(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(5),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/carmen.png',
                  fit: BoxFit.fitHeight,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            accounts[widget.id].nama,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Class of ${accounts[widget.id].kelas}",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
