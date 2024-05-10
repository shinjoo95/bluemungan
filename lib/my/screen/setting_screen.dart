import 'package:bluemungan/my/widget/setting_menu.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '설정',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SettingMenu(
            icon: 'setting',
            title: '계정설정',
            onTap: () {},
          ),
          SettingMenu(
            icon: 'setting',
            title: '공지 사항',
            onTap: () {},
          ),
          SettingMenu(
            icon: 'setting',
            title: '문의 및 제안',
            onTap: () {},
          ),
          SettingMenu(
            icon: 'setting',
            title: '이용약관',
            onTap: () {},
          ),
          SettingMenu(
            icon: 'setting',
            title: '앱 제작 정보',
            onTap: () {},
            isLast: true,
          ),
        ],
      ),
    );
  }
}
