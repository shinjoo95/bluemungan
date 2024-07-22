import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:bluemungan/schedule/screen/schedule_write_screen.dart';
import 'package:bluemungan/schedule/widget/list_item.dart';
import 'package:bluemungan/schedule/widget/plogging_banner.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  void initState() {
    super.initState();
    Get.put(ScheduleController());
  }

  @override
  void dispose() {
    if (Get.isRegistered<ScheduleController>()) {
      Get.delete<ScheduleController>();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(ScheduleController());

    return Scaffold(
      backgroundColor: Colors.white,
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
            fontSize: 18,
            fontFamily: 'bold',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.blue[300],
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScheduleWriteScreen(),
            ),
          );
        },
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const PloggingBanner(),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: TabBar(
              controller: _ctrl.tabCtrl,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey[500],
              dividerHeight: 1,
              indicatorColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'bold',
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
              controller: _ctrl.tabCtrl,
              children: [
                // 예정된 활동
                _planScheduleView(ctrl: _ctrl),
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
  Widget _planScheduleView({
    required ScheduleController ctrl,
  }) {
    final Stream<QuerySnapshot> scheduleStream =
        FirebaseFirestore.instance.collection('schedule').snapshots();
    return Column(
      children: [
        Expanded(
          child: StreamBuilder(
            stream: scheduleStream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Text('no data!');
              }
              if (snapshot.hasError) {
                return const Text('Failed!');
              }
              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  if (data.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListItem(
                    title: data['title'] ?? '',
                    imageUrl: '',
                    introduce: data['introduce'],
                    location: data['location'] ?? '',
                    mainTime: '',
                    subTime: '',
                  );
                }).toList(),
              );
            },
          ),
        ),
      ],
    );
  }

  // 리스트 연동 예정
  Widget _completedScheduleView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const ListItem(
          introduce: '',
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
/// TODO Firestore 데이터 확인
/// TODO 삭제 기능 추가
/// TODO 이미지 storage 저장
/// TODO textField 유효성 추가
/// TODO 활동 피드 TopBanner 불러오기 