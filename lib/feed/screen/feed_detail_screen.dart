import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedDetailScreen extends StatelessWidget {
  final String date;
  final String title;
  final String totalWeight;
  final String review;
  final String people;

  const FeedDetailScreen({
    super.key,
    required this.date,
    required this.totalWeight,
    required this.review,
    required this.title,
    required this.people,
  });

  @override
  Widget build(BuildContext context) {
    // final ctrl = Get.find<FeedController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(
          date,
          style: const TextStyle(
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
                  SizedBox(
                    width: Get.width,
                    height: 50,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'bold',
                        fontSize: 17,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 7),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '🗑️ 쓰줍량 ',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'bold',
                            color: Colors.black,
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: 3,
                          ),
                        ),
                        TextSpan(
                          text: '${totalWeight.toString()} Kg',
                          style: const TextStyle(
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
                          text: people,
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
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      review,
                      style: const TextStyle(
                        fontFamily: 'semibold',
                        fontSize: 15,
                        height: 1.3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 10,
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
