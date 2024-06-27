import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalBanner extends StatelessWidget {
  const TotalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<FeedController>();

    return SizedBox(
      width: Get.width,
      height: 61,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${ctrl.activeCount}',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontFamily: 'bold',
                  ),
                ),
                const TextSpan(
                  text: ' 회의 푸른 활동을 하여',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'semiBold',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '30.5',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontFamily: 'bold',
                  ),
                ),
                TextSpan(
                  text: ' kg 쓰레기를 치웠습니다!',
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
