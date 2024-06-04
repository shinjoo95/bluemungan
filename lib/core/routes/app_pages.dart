import 'package:bluemungan/main/binding/main_binding.dart';
import 'package:bluemungan/main/screen/main_screen.dart';
import 'package:bluemungan/schedule/binding/schedule_binding.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/main',
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: '/schedule',
      page: () => const MainScreen(),
      binding: ScheduleBinding(),
    ),
  ];
}
