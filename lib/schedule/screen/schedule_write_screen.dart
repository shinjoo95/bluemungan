import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleWriteScreen extends StatelessWidget {
  const ScheduleWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(ScheduleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '활동 추가하기',
          style: TextStyle(
            fontSize: 21,
            fontFamily: 'bold',
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 30),c
            Container(
              height: 30,
              color: Colors.amber,
            ),
            // 활동 이미지 추가
            const Text(
              '활동 종류',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'bold',
              ),
            ),
            Container(
              height: 100,
              width: Get.width,
              // color: Colors.cyan,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectImage(image: 'assets/mount_img.png'),
                  selectImage(image: 'assets/city_img.png'),
                  selectImage(image: 'assets/sea_img.png'),
                  selectImage(image: 'assets/upcycle_img.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget selectImage({
    required String image,
  }) {
    // final ctrl = Get.put(ScheduleController());

    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
            )),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 75,
            height: 75,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
