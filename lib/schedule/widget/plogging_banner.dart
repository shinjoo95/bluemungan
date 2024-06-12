import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PloggingBanner extends StatelessWidget {
  const PloggingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(5),
      height: 85,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/earth.png',
            width: 70,
            height: 70,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '플로깅(PLOGGING)이란?',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'bold',
                  color: Colors.lightGreenAccent[200],
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                '이삭을 줍다 + 조깅의 합성어로',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'semiBold',
                  fontSize: 13,
                ),
              ),
              const Text(
                '조깅을 하며 쓰레기를 줍는 환경보호 활동',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'semiBold',
                  fontSize: 13,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
