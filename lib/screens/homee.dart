// ignore_for_file: camel_case_types

import 'package:assignment9/tabs/albums.dart';
import 'package:assignment9/tabs/artist.dart';
import 'package:assignment9/tabs/songs.dart';
import 'package:flutter/material.dart';

class homie extends StatefulWidget {
  const homie({super.key});

  @override
  State<homie> createState() => _homieState();
}

class _homieState extends State<homie> {
  static MaterialColor colorTab = Colors.red;
  static Color colorTab2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
                icon: Icon(
                  Icons.favorite,
                  color: colorTab,
                ),
                text: "Favorite Song"),
            Tab(
                icon: Icon(Icons.account_circle, color: colorTab),
                text: "Top Artist"),
            Tab(
                icon: Icon(Icons.album, color: colorTab),
                text: "Most Stream Albums"),
          ],
          indicatorColor: colorTab,
          unselectedLabelColor: colorTab2,
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            artisters(),
            albumers(),
          ],
        ),
      ),
    );
  }
}
