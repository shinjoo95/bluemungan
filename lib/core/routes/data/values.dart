import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class Values {
  static final Values instance = Values();
  factory Values() => instance;

  Future<String> userName() async {
    String kakaoUserName = '';
    await UserApi.instance.loginWithKakaoAccount();

    User user = await UserApi.instance.me();

    // print('사용자 정보 요청 성공'
    //     '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
    //     '\n이메일: ${user.kakaoAccount?.email}');
    kakaoUserName = user.kakaoAccount?.profile?.nickname ?? '';

    return kakaoUserName;
  }
}
