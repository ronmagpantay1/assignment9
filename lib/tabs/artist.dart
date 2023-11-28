// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class artisters extends StatelessWidget {
  const artisters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth ~/ 200),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
                padding: const EdgeInsets.all(10),
                child: ImageItem(image: images[index], title: titles[index]));
          });
    }));
  }
}

class ImageItem extends StatefulWidget {
  final String image;
  final String title;

  const ImageItem({super.key, required this.image, required this.title});

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isClicked = false;
        });
      },
      child: Stack(
        children: [
          Image.asset(
            widget.image,
            filterQuality: isClicked ? FilterQuality.low : FilterQuality.high,
          ),
          Positioned(
            bottom: 0,
            child: Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant ImageItem oldWidget) {
    isClicked = false;
    super.didUpdateWidget(oldWidget);
  }
}

// Sample data
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
