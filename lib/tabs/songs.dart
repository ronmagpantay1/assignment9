// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class songers extends StatelessWidget {
  const songers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.groups),
          SizedBox(height: 20),
          Text(
            "songs",
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
