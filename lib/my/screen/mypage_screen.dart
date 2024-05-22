import 'package:bluemungan/my/screen/setting_screen.dart';
import 'package:bluemungan/my/widget/participated_info.dart';
import 'package:bluemungan/my/widget/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'assets/setting.png',
                width: 35,
                height: 35,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingScreen(),
                ),
              );
            },
          ),
          const SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const Column(
            children: [
              SizedBox(height: 10),
              //프로필 설정
              ProfileInfo(),
              //내가 참여한 활동
              SizedBox(height: 20),
              ParticipatedInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
