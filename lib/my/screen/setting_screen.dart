import 'package:bluemungan/my/widget/setting_menu.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('공지사항'),
      ),
      body: Column(
        children: [
          SettingMenu(icon: 'setting', title: '문의하기', onTap: () {}),
        ],
      ),
    );
  }
}
