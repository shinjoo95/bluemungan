import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.cyan,
                  width: 60,
                  height: 60,
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          const Column(
            children: [
              SizedBox(height: 3),
              Text(
                '신주용',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'semiBold',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
