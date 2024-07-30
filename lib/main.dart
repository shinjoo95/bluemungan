import 'package:bluemungan/core/routes/app_pages.dart';
import 'package:bluemungan/firebase_options.dart';
import 'package:bluemungan/main/controller/main_controller.dart';
import 'package:bluemungan/main/screen/main_screen.dart';
import 'package:bluemungan/my/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  KakaoSdk.init(nativeAppKey: '3a7d2ab10030b990c134c3425f4071e2');
  Get.put(MainController());
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data == null) {
              return const LoginScreen();
            }
            return const MainScreen();
          }
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        },
      ),
      getPages: AppPages.routes,
    );
  }
}
    // return MaterialApp(
    //   // StreamBuilder를 사용하여 FirebaseAuth의 인증 상태 변경을 감지
    //   home: StreamBuilder<User?>(
    //     // FirebaseAuth.instance.authStateChanges()는 사용자 인증 상태가 변경될 때마다 스트림을 통해 알림
    //     stream: FirebaseAuth.instance.authStateChanges(),
    //     // 스트림의 데이터(인증 상태 변경)가 업데이트 될 때마다 builder 함수가 호출됩니다.
    //     builder: (context, snapshot) {
    //       // snapshot.connectionState가 active 상태인 경우, 인증 상태 변경 정보가 준비
    //       if (snapshot.connectionState == ConnectionState.active) {
    //         // user 변수에 현재 인증된 사용자 정보를 할당
    //         User? user = snapshot.data;
    //         // user가 null인 경우, 사용자가 로그아웃 상태임을 의미하므로 SignInPage()를 반환
    //         if (user == null) {
    //           return SignInPage();
    //         }
    //         // user가 null이 아닌 경우, 사용자가 로그인 상태임을 의미하므로 HomePage()를 반환
    //         return HomePage(user: user);
    //       }
    //       // 스트림의 연결 상태가 active 상태가 아닌 경우 로딩 인디케이터를 표시
    //       return Scaffold(
    //         body: Center(child: CircularProgressIndicator()),
    //       );
    //     },
    //   ),
    // );