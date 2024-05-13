import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RollingBanner extends StatelessWidget {
  const RollingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    List imgItems = [
      'assets/blue_logo.png',
      'assets/blue_logo_1.png',
      'assets/blue_logo_1.png'
    ];
    return Container(
      child: CarouselSlider(
        items: imgItems.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: Get.width,
                margin: const EdgeInsets.symmetric(horizontal: 8), //좌우 여백 5
                // margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.amber //배경색
                  ,
                ),
                child: Image.asset(
                  item, //image name
                  // fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: 100,
          enableInfiniteScroll: false,
          viewportFraction: 0.94,
        ),
      ),
    );
  }
}
