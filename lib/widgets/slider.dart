import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/IMG_20230715_182958.jpg'},
    {"id": 2, "image_path": 'assets/images/IMG_20230715_183020.jpg'},
    {"id": 3, "image_path": 'assets/images/IMG_20230715_183034.jpg'},
    {"id": 4, "image_path": 'assets/images/IMG_20230715_183054.jpg'},
    {"id": 5, "image_path": 'assets/images/IMG_20230715_183113.jpg'},
    {"id": 6, "image_path": 'assets/images/IMG_20230715_183134.jpg'},
    {"id": 7, "image_path": 'assets/images/IMG_20230715_183210.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {},
        child: CarouselSlider(
          items: imageList
              .map(
                (item) => Image.asset(
                  item['image_path'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            aspectRatio: 2,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: 7,
                height: 7,
                margin: const EdgeInsets.symmetric(
                  horizontal: 3.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        currentIndex == entry.key ? Colors.blue : Colors.grey),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
