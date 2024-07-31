import 'package:bluemungan/common/widgets/boundary.dart';
import 'package:bluemungan/my/widget/participated_list_item.dart';
import 'package:flutter/material.dart';

class ParticipatedInfo extends StatelessWidget {
  const ParticipatedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '예정된 활동',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'bold',
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: '전체보기',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'semiBold',
                      color: Colors.grey,
                    ),
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Image.asset(
                      'assets/arrow_right.png',
                      color: Colors.grey,
                      width: 9,
                      height: 9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const ParticipatedListItem(
          title: '도심 플로깅 할 사람!',
          imageUrl: 'assets/city_img.png',
          mainTime: '6/22 토',
          subTime: '6월 22일 토요일 13시',
          location: '홍대입구역',
        ),
        const Boundary(marginBottom: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '최근 활동 기록',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'bold',
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: '전체보기',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'semiBold',
                      color: Colors.grey,
                    ),
                  ),
                  const WidgetSpan(
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Image.asset(
                      'assets/arrow_right.png',
                      color: Colors.grey,
                      width: 9,
                      height: 9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const ParticipatedListItem(
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
