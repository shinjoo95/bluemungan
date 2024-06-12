import 'package:bluemungan/my/widget/participated_list_item.dart';
import 'package:flutter/material.dart';

class ParticipatedInfo extends StatelessWidget {
  const ParticipatedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '활동 기록',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'bold',
          ),
        ),
        SizedBox(height: 5),
        ParticipatedListItem(
          title: '도심 플로깅 할 사람!',
          imageUrl: 'assets/city_img.png',
          mainTime: '6/22 토',
          subTime: '6월 22일 토요일 13시',
          location: '홍대입구역',
        ),
      ],
    );
  }
}
