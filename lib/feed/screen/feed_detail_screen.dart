import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedDetailScreen extends StatelessWidget {
  const FeedDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: const Text(
          '1월',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'bold',
          ),
        ),
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'assets/main_jeju.jpeg',
              fit: BoxFit.fill,
              width: Get.width,
              height: 300,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                    child: Text(
                      '해안 플로깅 다녀왔져욤',
                      style: TextStyle(
                        fontFamily: 'bold',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '🗑️ 쓰줍량 ',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'bold',
                            color: Colors.black,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 3,
                          ),
                        ),
                        TextSpan(
                          text: '13.5 Kg',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontFamily: 'bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '🙋🏻‍♂️ 참여자 ',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'bold',
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: 3,
                          ),
                        ),
                        TextSpan(
                          text: '신주용 김기원 권하연 김혜원 채지원 김현정',
                          style: TextStyle(
                            color: Colors.cyan[600],
                            fontSize: 15,
                            fontFamily: 'bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
