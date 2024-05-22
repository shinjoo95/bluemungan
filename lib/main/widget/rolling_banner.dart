// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RollingBanner extends StatelessWidget {
  const RollingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/mungan_img.png',
      cacheWidth: Get.width.toInt(),
      cacheHeight: 425,
      scale: 1,
    );
//     List imgItems = [
//       _banner(
//         'assets/mungan_img.png',
//       ),
//       _banner(
//         'assets/main_jeju_sea.jpeg',
//       ),
//       _banner(
//         'assets/main_inwang.jpeg',
//       ),
//       _banner(
//         'assets/main_jeju.jpeg',
//       ),
//       _banner(
//         'assets/main_roma.jpeg',
//       ),
//     ];
//     return CarouselSlider(
//       items: imgItems.map((item) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               child: item,
//             );
//           },
//         );
//       }).toList(),
//       options: CarouselOptions(
//         height: 400,
//         enableInfiniteScroll: false,
//         viewportFraction: 0.925,
//       ),
//     );
//   }
// }

// Widget _banner(
//   String backgroundImage,
// ) {
//   return Container(
//     width: Get.width,
//     margin: const EdgeInsets.symmetric(horizontal: 5), //좌우 여백
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(5),
//     ),
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage(backgroundImage), // 배경 이미지
//         ),
//       ),
//       padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
//     ),
//   );
// }
  }
}
