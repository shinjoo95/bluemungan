import 'package:bluemungan/main/controller/main_controller.dart';
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
    return Scaffold(
        body: _ctrl.tabScreensList[_ctrl.selectedBottomIndex],
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blue,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '메인'),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: '마이'),
            ],
            currentIndex: _ctrl.selectedBottomIndex,
            onTap: (index) => setState(
              () => _ctrl.selectedBottomIndex = index,
            ),
          ),
        )

        // Container(
        //   color: Colors.cyan,
        //   height: 70,
        //   child: TabBar(
        //     controller: _ctrl.tabCtrl,
        //     tabs: [
        //       Tab(
        //         child: Container(
        //           alignment: Alignment.bottomCenter,
        //           child: const Text('HOME'),
        //         ),
        //       ),
        //       Tab(
        //         child: Container(
        //           alignment: Alignment.bottomCenter,
        //           child: const Text('MY'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // body: TabBarView(
        //   physics: const NeverScrollableScrollPhysics(),
        //   controller: _ctrl.tabCtrl,
        //   children: const [
        //     MainTabScreen(),
        //     MypageScreen(),
        //   ],
        // ),
        );
  }
}
