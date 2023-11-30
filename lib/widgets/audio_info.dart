import 'package:flutter/material.dart';

class AudioInfo extends StatelessWidget {
  const AudioInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/patp.jpg',
          width: 180,
        ),
        const SizedBox(height: 30),
        const Text(
          'In Bloom',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 20),
        const Text(
          'Neck Deep',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
