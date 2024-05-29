import 'package:bluemungan/main/screen/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                loginWithKakao();
              },
            ),
            _loginBotton(
              asset: 'assets/naver_logo.png',
              title: '네이버로 시작하기',
              textColor: Colors.white,
              buttonColor: const Color(0xff01c73c),
              onTap: () {
                loginWithNaver();
              },
            ),
            _loginBotton(
              asset: 'assets/google_logo.png',
              title: 'Google 시작하기',
              textColor: Colors.black,
              buttonColor: Colors.grey[300],
              onTap: () {},
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

Future<void> loginWithNaver() async {
  NaverLoginResult res = await FlutterNaverLogin.logIn();
  final NaverLoginResult result = await FlutterNaverLogin.logIn();
  NaverAccessToken access = await FlutterNaverLogin.currentAccessToken;
  // setState(() {
  var accesToken = res.accessToken;
  var tokenType = access.tokenType;
  // });
  print('shin >>>> naverlogin ');
  print('shin >>>> $accesToken ');
  print('shin >>>> $tokenType ');
}

Future<void> loginWithKakao() async {
  // 카카오톡 설치 여부 확인
  // 카카오톡이 설치되어 있으면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
  if (await isKakaoTalkInstalled()) {
    try {
      var provider = OAuthProvider("oidc.bluemungan");
      OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
      var credential = provider.credential(
        idToken: token.idToken,
        accessToken: token.accessToken,
      );
      FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
      // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
      if (error is PlatformException && error.code == 'CANCELED') {
        return;
      }
      // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
      try {
        await UserApi.instance.loginWithKakaoAccount();
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  } else {
    try {
      await UserApi.instance.loginWithKakaoAccount();
      print('카카오계정으로 로그인 성공');
    } catch (error) {
      print('카카오계정으로 로그인 실패 $error');
    }
  }
}
