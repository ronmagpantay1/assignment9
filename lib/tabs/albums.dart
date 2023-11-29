// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class albumers extends StatefulWidget {
  const albumers({super.key});

  @override
  State<albumers> createState() => _albumersState();
}

class _albumersState extends State<albumers> {
  List<String> images = [
    'assets/images/arctic.jpg',
    'assets/images/atl.jpg',
    'assets/images/cte.jpg',
    'assets/images/nd.jpg',
    'assets/images/paramore.jpg',
    'assets/images/ptv.jpg',
    'assets/images/roc.jpg',
    'assets/images/tame.jpg',
    'assets/images/mac.jpg',
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
    'Mac DeMarco',
    'Tyler The Creator'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 350,
          viewportFraction: 1,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3)),
      items: images.map((image) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(0))),
              Positioned(
                  bottom: 0,
                  child: Text(
                    titles[images.indexOf(image)],
                    style: const TextStyle(color: Colors.white),
                  ))
            ],
          ),
        );
      }).toList(),
    );
  }
}
