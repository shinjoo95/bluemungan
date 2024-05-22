import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PloggingWidget extends StatelessWidget {
  const PloggingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: Get.width,
      color: Colors.cyan,
      child: Row(
        children: [Image.asset('assets/earth.png')],
      ),
    );
  }
}
