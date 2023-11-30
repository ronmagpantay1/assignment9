// ignore_for_file: library_private_types_in_public_api

import 'package:assignment9/screens/landing.dart';
import 'package:assignment9/screens/homee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // loading logic
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primarySwatch: Colors.red, fontFamily: "Poppins-Black"),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: isLoading ? const HomScreen() : const homie(),
      ),
    );
  }
}
