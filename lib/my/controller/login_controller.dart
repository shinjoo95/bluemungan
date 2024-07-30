// import 'dart:convert';
// import 'dart:math';

import 'package:bluemungan/main/screen/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
// import 'package:uni_links2/uni_links.dart';
// import 'package:url_launcher/url_launcher.dart';

class LoginController extends GetxController {
  // @override
  // void onInit() {
  //   super.onInit();
  //   // initUniLinks();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  /// 네이버 로그인
  // Future<void> loginWithNaver() async {
  //   String clienId = 'nLj1FxzmzRq2a4vXDJRm';
  //   String redirectUri =
  //       'https://asia-northeast3-bluemungan.cloudfunctions.net/naverLoginCallback';
  //   String state =
  //       base64Url.encode(List<int>.generate(16, (_) => Random().nextInt(255)));
  //   Uri url = Uri.parse(
  //       'https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=$clienId&state=$state&redirect_uri=$redirectUri');

  //   print('네이버 로그인 열기 & 클라우드 호출');
  //   await launchUrl(url);
  // }

  // Future<void> initUniLinks() async {
  //   final initialLink = await getInitialLink();
  //   print('shin >>>> 1111');
  //   if (initialLink != null) {
  //     _handleDeepLink(initialLink);

  //     linkStream.listen((String? link) {
  //       _handleDeepLink(link!);
  //     }, onError: (err, stacktrace) {
  //       print('딥링크 에러 $err\n$stacktrace');
  //     });
  //   }
  // }

  // Future<void> _handleDeepLink(String link) async {
  //   print('딥링크 열기 $link');
  //   final Uri uri = Uri.parse(link);
  //   print('shin >>>> 222');

  //   if (uri.authority == 'login-callback') {
  //     String? firebaseToken = uri.queryParameters['firebaseToken'];
  //     String? name = uri.queryParameters['name'];
  //     String? profileImage = uri.queryParameters['profileImage'];

  //     await FirebaseAuth.instance
  //         .signInWithCustomToken(firebaseToken!)
  //         .then((value) => null)
  //         .onError((error, stackTrace) {
  //       print("error $error");
  //     }); // move to main
  //   }
  // }

  /// 카카오톡 로그인
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
        Get.to(() => const MainScreen());
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
        Get.to(() => const MainScreen());
        print('카카오계정으로 로그인 성공');
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  }

  /// 구글 로그인
  Future<UserCredential> loginWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
