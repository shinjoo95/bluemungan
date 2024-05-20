import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconWigdet extends StatelessWidget {
  const IconWigdet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bottomIcons(
            '푸른문간',
            'assets/instagram_logo.png',
            'https://www.instagram.com/bluemungan?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==',
          ),
          bottomIcons(
            '문간소식',
            'assets/instagram_logo.png',
            'https://www.instagram.com/bluemungan?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==',
          ),
          bottomIcons(
            '청년문간',
            'assets/youtube_logo.png',
            'https://www.youtube.com/channel/UCkdAbucoJ5MFkbwPj8dsXwQ',
          ),
          bottomIcons(
            '홈페이지',
            'assets/mungan_logo.png',
            'https://youthmungan.com/',
          ),
        ],
      ),
    );
  }
}

Widget bottomIcons(
  String iconText,
  String iconImage,
  String iconUrl,
) {
  return GestureDetector(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          width: 50,
          height: 50,
          child: Image.asset(iconImage),
        ),
        const SizedBox(height: 5),
        Text(
          iconText,
          style: const TextStyle(
            fontSize: 16,
            letterSpacing: 1,
            fontFamily: 'semiBold',
          ),
        )
      ],
    ),
    onTap: () {
      launchUrl(
        Uri.parse(iconUrl),
      );
    },
  );
}
