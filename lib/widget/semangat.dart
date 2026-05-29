import 'package:flutter/material.dart';

class Semangat extends StatelessWidget {
  const Semangat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image.asset('assets/images/yay.png', width: 100, height: 100),
          Text(
            'Semangat  Mengerjakan!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Text(
            'Kerjakan tugas tepat waktu ya!',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
