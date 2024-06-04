// import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:bluemungan/schedule/screen/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class ScheduleWriteScreen extends StatelessWidget {
  const ScheduleWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final ctrl = Get.put(ScheduleController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            const SizedBox(height: 10),
            const Text(
              '활동 제목',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'bold',
              ),
            ),
            const SizedBox(height: 10),
            Container(
              // color: Colors.amber,
              height: 40,
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  hintText: '활동 제목을 입력하세요.',
                  hintStyle: TextStyle(
                    fontFamily: 'semibold',
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 10,
                    ),
                  ),
                ),
              ),
            ),
            boundary(),
            // 활동 이미지 추가
            const Text(
              '활동 종류',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'bold',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectImage(image: 'assets/mount_img.png'),
                selectImage(image: 'assets/city_img.png'),
                selectImage(image: 'assets/sea_img.png'),
                selectImage(image: 'assets/upcycle_img.png'),
              ],
            ),
            boundary(),
            const Text(
              '활동 장소',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'bold',
              ),
            ),
            const SizedBox(height: 10),

            Container(
              color: Colors.cyan,
              height: 50,
            ),

            boundary(),
            const Text(
              '활동 일시',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'bold',
              ),
            ),
            const SizedBox(height: 10),
            Container(color: Colors.amber, height: 50),
            boundary(),
            const Text(
              '활동 소개',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'bold',
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '구체적인 안내사항을 알려주세요.',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'semiBold',
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.amber,
              height: 120,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: '활동 제목을 입력하세요',
                  hintStyle: TextStyle(
                    fontFamily: 'semibold',
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 50,
                width: Get.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  '개설하기',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bold',
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
              onTap: () {
                /// TODO 개설 기능 추가

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget selectImage({
    required String image,
  }) {
    // final ctrl = Get.put(ScheduleController());

    return Column(
      children: [
        InkWell(
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
        ),
      ],
    );
  }

  Widget boundary() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 1,
      color: Colors.grey[300],
    );
  }
}
