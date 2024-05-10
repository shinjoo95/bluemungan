import 'package:bluemungan/main/binding/main_binding.dart';
import 'package:bluemungan/main/screen/main_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/main',
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
  ];
}
