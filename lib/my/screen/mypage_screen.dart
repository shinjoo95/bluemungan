import 'package:bluemungan/my/screen/setting_screen.dart';
import 'package:bluemungan/my/widget/profile_info.dart';
import 'package:flutter/material.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          color: Colors.cyan,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '마이페이지',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
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
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            //프로필 설정
            ProfileInfo(),
            //내가 쓴 게시물
          ],
        ),
      ),
    );
  }
}
