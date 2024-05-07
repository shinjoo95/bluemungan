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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '마이페이지',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('설정'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
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
