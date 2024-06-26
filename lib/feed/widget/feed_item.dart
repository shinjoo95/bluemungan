import 'package:bluemungan/feed/screen/feed_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedItem extends StatelessWidget {
  final String date;
  final String title;
  final String totalWeight;
  final String review;
  final String people;

  const FeedItem({
    super.key,
    required this.date,
    required this.totalWeight,
    required this.review,
    required this.title,
    required this.people,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FeedDetailScreen(
              date: date,
              review: review,
              title: title,
              totalWeight: totalWeight,
              people: people,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(234, 238, 238, 238),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
          // color: Colors.amber,
          color: Colors.white,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: Get.width / 2.2,
              height: Get.width / 2.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  'assets/main_jeju.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(3),
                    bottomRight: Radius.circular(3),
                  ),
                ),
                child: Text(
                  date,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'bold',
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
