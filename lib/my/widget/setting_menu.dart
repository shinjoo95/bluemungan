import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                    // Image.asset(
                    //   'assets/$icon.png',
                    //   width: 30,
                    //   height: 30,
                    // ),
                    //메뉴 타이틀
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                //메뉴 진입하기 > 아이콘
                Image.asset(
                  'assets/arrow_right.png',
                  width: 15,
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: !isLast,
          child: Container(
            color: Colors.grey[400],
            height: 1,
          ),
        )
      ],
    );
  }
}
