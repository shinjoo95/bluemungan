import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabCtrl; // 바텀바 탭 컨트롤러

  @override
  void onInit() {
    print('shin >>>>> main_controller init');
    tabCtrl = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    print('shin >>>>> main_controller dispose');
  }
}
