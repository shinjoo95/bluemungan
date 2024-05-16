import 'package:bluemungan/main/screen/main_tab_screen.dart';
import 'package:bluemungan/my/screen/mypage_screen.dart';
import 'package:bluemungan/participated/screen/participated_screen.dart';
import 'package:bluemungan/post/screen/post_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // 선택된 바텀 바 인덱스
  int selectedBottomIndex = 0;
  // 바텀 바 탭 화면
  final List tabScreensList = const [
    MainTabScreen(),
    PostScreen(),
    ParticipatedScreen(),
    MypageScreen(),
  ];

  @override
  void onInit() {
    print('shin >>>>> main_controller init');
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    print('shin >>>>> main_controller dispose');
  }

  void bottomTapped(int index) {
    selectedBottomIndex = index;
  }
}
