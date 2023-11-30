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
    'assets/images/adai.jpg',
    'assets/images/afterhours.jpg',
    'assets/images/bp.jpg',
    'assets/images/currents.jpg',
    'assets/images/double.jpg',
    'assets/images/graduation.jpg',
    'assets/images/gs.jpg',
    'assets/images/igor.jpg',
    'assets/images/patp.jpg'
  ];

  List<String> titles = [
    'All Distortions Are International',
    'After Horus',
    'The Black Parade',
    'Currents',
    'Double Dare',
    'Graduation',
    'Lifes Not Out To Get You',
    'Igor',
    'Peace And The Panic'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        height: 300,
      ),
      itemBuilder: (context, index, realIndex) {
        return Container(
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(200, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              titles[index],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
