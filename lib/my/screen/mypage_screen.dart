import 'package:bluemungan/my/screen/setting_screen.dart';
import 'package:bluemungan/my/widget/participated_info.dart';
import 'package:bluemungan/my/widget/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Image.asset(
          'assets/blue_logo.png',
          color: Colors.blue[900],
        ),
        title: const Text(
          '마이페이지',
          style: TextStyle(
            fontSize: 21,
            fontFamily: 'bold',
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              //프로필 설정
              const ProfileInfo(),
              boundary(),
              //내가 참여한 활동
              const ParticipatedInfo(),
              boundary(),
              const SettingScreen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget boundary() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 1,
      width: Get.width,
      color: Colors.grey[200],
    );
  }
}
