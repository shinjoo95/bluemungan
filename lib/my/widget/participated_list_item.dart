import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParticipatedListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String mainTime;
  final String subTime;
  final String location;
  final int? member;

  const ParticipatedListItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.mainTime,
    required this.subTime,
    required this.location,
    this.member,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 13, 16, 13),
      padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 3,
            spreadRadius: 0,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      width: Get.width,
      height: 154,
      // 데이터 연동 예정
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainTime,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'bold',
            ),
          ),
          const SizedBox(height: 5),
          // 제목
          SizedBox(
            height: 25,
            width: Get.width,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'bold',
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 7),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // 산, 도심, 해안 이미지 설정
                width: 90,
                height: 69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.cyan,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 일시
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '일시',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: 10,
                          ),
                        ),
                        TextSpan(
                          text: subTime,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  // 위치
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '위치',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: 10,
                          ),
                        ),
                        TextSpan(
                          text: location,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '참여',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 10,
                          ),
                        ),
                        TextSpan(
                          text: '3명 참여중',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   '일시  2024년 6월 22일 (토) 13시',
                  //   style: TextStyle(
                  //     fontSize: 17,
                  //     fontFamily: 'bold',
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Text(
                  //   '위치: 고척파크푸르지오',
                  //   style: TextStyle(
                  //     fontSize: 17,
                  //     fontFamily: 'bold',
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  // Text(
                  //   '참석: 3명',
                  //   style: TextStyle(
                  //     fontSize: 17,
                  //     fontFamily: 'semiBold',
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
