import 'package:aplikasi_tugas_kelas/pages/chla_home_page.dart';
import 'package:flutter/material.dart';

class ChlaFeedbackPage extends StatefulWidget {
  const ChlaFeedbackPage({super.key});

  @override
  State<ChlaFeedbackPage> createState() => _ChlaFeedbackPageState();
}

class _ChlaFeedbackPageState extends State<ChlaFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: darkmode?Colors.grey.shade900:Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text("Feedback", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Berikan masukan anda",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(style: TextStyle(color: darkmode?Colors.white:Colors.black),
              decoration: InputDecoration(
                hintText: "tulis disini...",hintStyle: TextStyle(color: darkmode?Colors.grey.shade500:Colors.grey.shade700),
                fillColor: darkmode?Colors.black:Colors.grey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              maxLines: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Kirim", style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
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
