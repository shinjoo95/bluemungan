import 'package:bluemungan/my/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Image.asset(
              'assets/blue_logo.png',
              color: Colors.blue[800],
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 50),
            _loginBotton(
              asset: 'assets/kakao_logo.png',
              title: '카카오로 시작하기',
              textColor: Colors.black,
              buttonColor: const Color(0xffffde00),
              onTap: () async {
                ctrl.loginWithKakao();
              },
            ),
            // _loginBotton(
            //   asset: 'assets/naver_logo.png',
            //   title: '네이버로 시작하기',
            //   textColor: Colors.white,
            //   buttonColor: const Color(0xff01c73c),
            //   onTap: () {
            //     ctrl.loginWithNaver();
            //   },
            // ),
            _loginBotton(
              asset: 'assets/google_logo.png',
              title: 'Google 시작하기',
              textColor: Colors.black,
              buttonColor: Colors.grey[300],
              onTap: () {
                ctrl.loginWithGoogle();
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _loginBotton({
  Color? textColor,
  Color? buttonColor,
  Color? border,
  String? asset,
  required String title,
  required VoidCallback onTap,
}) {
  return Column(
    children: [
      InkWell(
        child: Container(
          height: 48,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: buttonColor ?? Colors.white,
            border: border == null ? null : Border.all(color: border, width: 1),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (asset != null) ...[
                Image.asset(
                  asset,
                  width: 23,
                  height: 22,
                ),
                const SizedBox(width: 6),
              ],
              Text(
                title,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          onTap();
        },
      ),
      const SizedBox(height: 15),
    ],
  );
}
