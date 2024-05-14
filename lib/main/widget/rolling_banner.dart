import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class RollingBanner extends StatelessWidget {
  const RollingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    List imgItems = [
      _banner(
          'assets/instagram_logo.png',
          'assets/instagram_background.png',
          Colors.white,
          '푸른문간 활동이 궁금하다면?',
          '푸른문간 인스타그램 바로가기 🙋🏻‍♂️',
          'https://www.instagram.com/bluemungan?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw=='),
      _banner(
        'assets/mungan_logo.png',
        'assets/mungan_background.png',
        Colors.black,
        '청년문간이 궁금하다면?',
        '청년문간 홈페이지 바로가기 🙋🏻‍♂️',
        'https://youthmungan.com/',
      ),
      _banner(
        'assets/youtube_logo.png',
        'assets/youtube_background.png',
        Colors.black,
        '문간의 소식',
        '청년문간 유튜브 바로가기 🙋🏻‍♂️',
        'https://www.youtube.com/channel/UCkdAbucoJ5MFkbwPj8dsXwQ',
      ),
    ];
    return CarouselSlider(
      items: imgItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              child: item,
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 110,
        enableInfiniteScroll: false,
        viewportFraction: 0.925,
      ),
    );
  }
}

Widget _banner(
  String logoImage,
  String backgroundImage,
  Color textColor,
  String subText,
  String mainText,
  String urlLink,
) {
  return GestureDetector(
    child: Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 5), //좌우 여백
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(backgroundImage), // 배경 이미지
          ),
        ),
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              logoImage,
              width: 30,
              height: 30,
            ),
            const SizedBox(height: 10),
            // 소 제목
            Text(
              subText,
              style: TextStyle(
                color: textColor,
                fontSize: 17,
              ),
            ),
            // 대 제목
            Text(
              mainText,
              style: TextStyle(
                color: textColor,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            // 인디게이터
          ],
        ),
      ),
    ),
    onTap: () {
      launchUrl(
        Uri.parse(urlLink),
      );
    },
  );
}
