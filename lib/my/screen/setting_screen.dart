import 'package:bluemungan/common/widgets/boundary.dart';
import 'package:bluemungan/my/widget/setting_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '설정 및 문의',
          style: TextStyle(
            fontFamily: 'bold',
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 15),
        SettingMenu(
          icon: 'assets/notice_icon.png',
          title: '공지 사항',
          onTap: () {},
        ),
        SettingMenu(
          icon: 'assets/call_icon.png',
          title: '문의 및 제안',
          onTap: () {},
        ),
        SettingMenu(
          icon: 'assets/terms_icon.png',
          title: '이용 약관',
          onTap: () {},
        ),
        SettingMenu(
          icon: 'assets/logout.png',
          title: '로그 아웃',
          onTap: () {
            Get.dialog(
              Material(
                color: Colors.black.withOpacity(0.05),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(maxHeight: Get.height - 100),
                    width: 310,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '알림',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontFamily: 'bold',
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '로그아웃 하시겠습니까',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'semiBold',
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Boundary(),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '확인',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'semiBold',
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  /// TODO logout
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 1,
                              color: Colors.grey[300],
                            ),
                            Expanded(
                              child: GestureDetector(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '취소',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'semiBold',
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
