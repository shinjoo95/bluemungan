import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ScheduleController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabCtrl;
  int selectedImg = 0;

  @override
  void onInit() {
    tabCtrl = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();

    print('shin >>>>> main_controller dispose');
  }
}
