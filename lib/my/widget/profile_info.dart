import 'package:bluemungan/my/controller/mypage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfo extends StatelessWidget {
  // final _myCtrl = Get.find<MyPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      color: Colors.amber,
      height: 70,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Container(
              color: Colors.cyan,
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            children: [
              Text(
                '사용자 이름',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
