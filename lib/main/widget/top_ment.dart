import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopMent extends StatelessWidget {
  const TopMent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '푸른문간',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontFamily: 'bold',
                  ),
                ),
                TextSpan(
                  text: ' 환경 서포터즈',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'semiBold',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '매달 3번째 토요일',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontFamily: 'bold',
                  ),
                ),
                TextSpan(
                  text: ' 정기 플로깅 ☘️',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'semiBold',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
