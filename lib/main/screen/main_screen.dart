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
        backgroundColor: Colors.white,
        body: _ctrl.tabScreensList[_ctrl.selectedBottomIndex],
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: '메인'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: '게시판'),
              BottomNavigationBarItem(icon: Icon(Icons.image), label: '참여한활동'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: '마이'),
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
