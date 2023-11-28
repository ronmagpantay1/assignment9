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
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView

    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.account_circle), text: "Favorite Songs"),
            Tab(icon: Icon(Icons.favorite), text: "Top Artist"),
            Tab(icon: Icon(Icons.groups), text: "Most Stream Albums"),
          ],
        ),
        body: TabBarView(
          children: [
            songers(),
            artisters(),
            albumers(),
          ],
        ),
      ),
    );
  }
}
