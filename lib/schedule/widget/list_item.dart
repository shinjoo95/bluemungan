import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 13, 16, 13),
      padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      width: Get.width,
      height: 140,
      // 데이터 연동 예정
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            ' 6/22 (토)',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'bold',
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // 산, 도심, 해안 이미지 설정
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.amber,
                ),
              ),
              const SizedBox(width: 15),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '일시  2024년 6월 22일 (토) 13시',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'bold',
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '위치: 고척파크푸르지오',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'bold',
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '참석: 3명',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'semiBold',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
