import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.blue[600],
      ),
      width: Get.width,
      height: 70,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text('일일 참가 신청하러 가기'),
          ],
        ),
      ),
    );
  }
}
