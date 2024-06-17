import 'package:bluemungan/common/widgets/boundary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleDetailScreen extends StatelessWidget {
  const ScheduleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          '활동 상세 정보',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'bold',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              Text(
                '활동 제목',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'bold',
                  color: Colors.grey[600],
                ),
              ),

              Container(
                height: 35,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  '도심 플로깅 할 사람!',
                  style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 17,
                  ),
                ),
              ),

              const Boundary(),

              // 활동 이미지 추가
              Text(
                '활동 종류',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'bold',
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/mount_img.png',
                    width: 75,
                    height: 75,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Boundary(marginBottom: 15),

              Text(
                '활동 장소',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'bold',
                  color: Colors.grey[600],
                ),
              ),
              Container(
                height: 35,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  '홍대 입구역 8번 출구',
                  style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 17,
                  ),
                ),
              ),
              const Boundary(marginBottom: 15),

              Text(
                '활동 일시',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'bold',
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 13),

              /// 활동 날짜 설정
              Container(
                alignment: Alignment.center,
                height: 45,
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.cyan,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: const Text(
                  '2024년 6월 11일 5시',
                  style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 14,
                    color: Colors.cyan,
                  ),
                ),
              ),

              const Boundary(marginBottom: 15),

              Text(
                '활동 소개',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'bold',
                  color: Colors.grey[600],
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 140,
                width: Get.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.cyan,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                // Expanded는 Column, Row, Flex 위젯 내에서만 사용 가능.
                child: const Text(
                  '쓰줍 활동 예정입니다 ~\n2\n2\n2\n2\n2',
                  style: TextStyle(
                    fontFamily: 'semiBold',
                    fontSize: 15,
                    height: 1.6,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // 등록 버튼
              GestureDetector(
                child: Container(
                  height: 50,
                  width: Get.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    '참여하기',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'bold',
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                onTap: () {
                  /// TODO 개설 기능 추가

                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
