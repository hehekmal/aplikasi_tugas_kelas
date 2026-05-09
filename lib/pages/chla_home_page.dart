import 'package:flutter/material.dart';

class ChlaHomePage extends StatefulWidget {
  const ChlaHomePage({super.key});

  @override
  State<ChlaHomePage> createState() => _ChlaHomePageState();
}

class _ChlaHomePageState extends State<ChlaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
      ),
      body: Center(
        child: Container(


        ),
      ),


    );
  }
}
