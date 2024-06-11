import 'package:bluemungan/my/screen/login_screen.dart';
import 'package:bluemungan/my/widget/setting_menu.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '설정 및 문의',
          style: TextStyle(
            fontFamily: 'bold',
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
        SettingMenu(
          icon: 'assets/profile_setting_icon.png',
          title: '계정 설정',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
        ),
        SettingMenu(
          icon: 'assets/notice_icon.png',
          title: '공지 사항',
          onTap: () {},
        ),
        SettingMenu(
          icon: 'assets/call_icon.png',
          title: '문의 및 제안',
          onTap: () {},
        ),
        SettingMenu(
          icon: 'assets/terms_icon.png',
          title: '이용 약관',
          onTap: () {},
        ),
        SettingMenu(
          icon: 'assets/info_icon.png',
          title: '앱 제작 정보',
          onTap: () {},
          isLast: true,
        ),
      ],
    );
  }
}
