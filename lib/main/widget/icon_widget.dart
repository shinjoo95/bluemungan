import 'package:flutter/material.dart';

class IconWigdet extends StatelessWidget {
  const IconWigdet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Icons('푸른문간'),
          _Icons('청년문간'),
          _Icons('문간소식'),
          _Icons('홈페이지'),
        ],
      ),
    );
  }
}

Widget _Icons(
  String iconText,
) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        width: 50,
        height: 50,
        child: Image.asset('assets/instagram_logo.png'),
      ),
      const SizedBox(height: 10),
      Text(
        iconText,
        style: TextStyle(
          fontSize: 16,
          letterSpacing: 1,
          fontWeight: FontWeight.w600,
          color: Colors.blue[700],
        ),
      )
    ],
  );
}
