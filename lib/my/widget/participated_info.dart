import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParticipatedInfo extends StatelessWidget {
  const ParticipatedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '활동 기록',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'bold',
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 80,
          width: Get.width,
          color: Colors.amber,
        ),
      ],
    );
  }
}
