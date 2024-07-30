import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_naver_login/flutter_naver_login.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: Get.width,
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.pink,
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/hayeon.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          const Column(
            children: [
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '권하연',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'semiBold',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  // 네이버 로그아웃 테스트
  // Future<void> naverlogout() async {
  //   FlutterNaverLogin.logOut().then((value) => print('shin >>>> logout'));
  // }
}
