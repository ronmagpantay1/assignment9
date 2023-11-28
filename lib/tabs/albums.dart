// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class albumers extends StatefulWidget {
  const albumers({super.key});

  @override
  State<albumers> createState() => _albumersState();
}

class _albumersState extends State<albumers> {
  int currentIndex = 0;
  PageController pageController = PageController();

  List<String> images = [
    'assets/images/arctic.jpg',
    'assets/images/atl.jpg',
    'assets/images/cte.jpg',
    'assets/images/nd.jpg',
    'assets/images/paramore.jpg',
    'assets/images/ptv.jpg',
    'assets/images/roc.jpg',
    'assets/images/tame.jpg',
    'assets/images/tyler.jpg'
  ];

  List<String> titles = [
    'Arctic Monkeys',
    'All Lime Low',
    'Cage The Elephant',
    'NeckDeep',
    'Paramore',
    'Pierce The Veil',
    'Rex Orange County',
    'Tame Impala',
    'Tyler The Creator'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: PageView.builder(
              controller: pageController,
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover)),
                );
              },
            ),
          ),
        ),
        Text(
          titles[currentIndex],
          style: const TextStyle(color: Color.fromARGB(255, 255, 209, 209)),
        )
      ],
    );
  }
}
