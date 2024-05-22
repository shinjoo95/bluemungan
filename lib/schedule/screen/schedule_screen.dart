import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:bluemungan/schedule/widget/plogging_widget.dart';
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const PloggingWidget(),
            TabBar(
              controller: ctrl.tabCtrl,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey[500],
              indicatorColor: Colors.blue,
              labelStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'semiBold',
              ),
              indicatorWeight: 3,
              tabs: const [
                Tab(text: '예정된 활동'),
                Tab(text: '지난 활동'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: ctrl.tabCtrl,
                children: [
                  // 예정된 활동
                  Container(),
                  Container(),
                  // 지난 활동
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
