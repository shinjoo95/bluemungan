import 'package:bluemungan/main/controller/main_controller.dart';
import 'package:bluemungan/main/screen/main_tab_screen.dart';
import 'package:bluemungan/my/screen/mypage_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _ctrl = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    print('shin >>>> main_screen');

    return Scaffold(
      appBar: AppBar(
        title: const Text('메인'),
      ),
      bottomNavigationBar: TabBar(
        controller: _ctrl.tabCtrl,
        tabs: [
          Tab(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: const Text('HOME'),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: const Text('MY'),
            ),
          ),
        ],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _ctrl.tabCtrl,
        children: const [
          MainTabScreen(),
          MypageScreen(),
        ],
      ),
    );
  }
}
