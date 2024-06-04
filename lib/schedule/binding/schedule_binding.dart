import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:get/get.dart';

class ScheduleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScheduleController(),
    );
  }
}
