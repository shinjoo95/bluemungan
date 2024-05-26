import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:bluemungan/schedule/widget/list_item.dart';
import 'package:bluemungan/schedule/widget/plogging_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(ScheduleController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Image.asset(
          'assets/blue_logo.png',
          color: Colors.blue[900],
        ),
        title: const Text(
          '활동 신청하기',
          style: TextStyle(
            fontSize: 21,
            fontFamily: 'bold',
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const PloggingBanner(),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: TabBar(
              controller: ctrl.tabCtrl,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey[500],
              dividerHeight: 1,
              indicatorColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'semiBold',
              ),
              indicatorWeight: 3,
              tabs: const [
                Tab(text: '예정된 활동'),
                Tab(text: '완료한 활동'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: ctrl.tabCtrl,
              children: [
                // 예정된 활동
                _planScheduleView(),
                _completedScheduleView(),
                // 지난 활동
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 리스트 연동 예정
  // 예정된 활동
  Widget _planScheduleView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListItem(
          title: '도심 플로깅 할 사람!',
          imageUrl: 'assets/city_img.png',
          mainTime: '6/22 토',
          subTime: '6월 22일 토요일 13시',
          location: '홍대입구역',
        );
      },
      itemCount: 10,
    );
  }

  // 리스트 연동 예정
  Widget _completedScheduleView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListItem(
          title: '등산 플로깅 갈 사람',
          imageUrl: 'assets/mount_img.png',
          mainTime: '4/22 토',
          subTime: '4월 22일 토요일 13시',
          location: '북한산',
        );
      },
      itemCount: 5,
    );
  }
}
