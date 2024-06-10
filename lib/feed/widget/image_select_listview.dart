import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSelectListview extends StatelessWidget {
  const ImageSelectListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyan,
          width: 2,
        ),
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Text(
        '이미지 추가하기',
        style: TextStyle(
          fontFamily: 'bold',
          fontSize: 17,
          color: Colors.cyan,
        ),
      ),
    );

    // ListView.separated(
    //   shrinkWrap: true,
    //   physics: const ClampingScrollPhysics(),
    //   itemCount: 5,
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       margin: const EdgeInsets.symmetric(horizontal: 5),
    //       height: 100,
    //       width: 100,
    //       color: Colors.cyan,
    //     );
    //   },
    //   separatorBuilder: (context, index) => const SizedBox(width: 5),
    // );
  }
}
