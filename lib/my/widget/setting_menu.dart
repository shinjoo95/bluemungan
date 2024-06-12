import 'package:flutter/material.dart';

/// 마이공구 하단 메뉴
class SettingMenu extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool isNewBadgeVisible;
  final bool isBoundaryVisibile;
  final bool isLast;

  const SettingMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isNewBadgeVisible = false,
    this.isBoundaryVisibile = true,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      icon,
                      width: 23,
                      height: 23,
                    ),
                    const SizedBox(width: 10),
                    //메뉴 타이틀
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'semiBold',
                      ),
                    ),
                  ],
                ),

                //메뉴 진입하기 > 아이콘
                Image.asset(
                  'assets/arrow_right.png',
                  width: 12,
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
