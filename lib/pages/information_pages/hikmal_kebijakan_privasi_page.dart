import 'package:flutter/material.dart';

class HikmalKebijakanPrivasiPage extends StatefulWidget {
  const HikmalKebijakanPrivasiPage({super.key});

  @override
  State<HikmalKebijakanPrivasiPage> createState() =>
      _HikmalKebijakanPrivasiPageState();
}

class _HikmalKebijakanPrivasiPageState
    extends State<HikmalKebijakanPrivasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade300,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kebijakan Privasi', style: TextStyle(fontSize: 30)),
            Row(children: [Image.asset('images/ikon/kebijakanpriv.png')]),
            Row(children: [Column(children: [])]),
            Row(children: [Column(children: [])]),
          ],
        ),
      ),
    );
  }
}
