import 'package:bluemungan/main/controller/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MainController(),
    );
  }
}
