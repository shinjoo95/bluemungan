import 'package:flutter/material.dart';

/// 마이공구 하단 메뉴
class SettingMenu extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool isNewBadgeVisible;
  final bool isBoundaryVisibile;

  const SettingMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isNewBadgeVisible = false,
    this.isBoundaryVisibile = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //메뉴 아이콘
                    Image.asset(
                      'assets/$icon.png',
                      width: 30,
                      height: 30,
                    ),
                    //메뉴 타이틀
                    Text(
                      title,
                    ),
                    //N 뱃지
                  ],
                ),
                //메뉴 진입하기 > 아이콘
                // Image.asset(
                //   'assets/arrowl_s.svg',
                //   width: 10,
                //   height: 18,
                // ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black,
          height: 1,
        )
      ],
    );
  }
}
