import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopMent extends StatelessWidget {
  const TopMent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      width: Get.width,
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            child: Text(
              '환경 서포터즈 푸른문간',
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 25,
                fontFamily: 'semiBold',
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            child: Text(
              '매달 3쨋주 토요일 정기 모임',
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 35,
                fontFamily: 'bold',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
