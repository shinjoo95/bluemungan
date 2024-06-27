import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ScheduleController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabCtrl;
  int selectedImg = 0;
  List activeImagePath = [];
  String title = '';
  String location = '';
  String introduce = '';
  String date = '';

  final titleController = TextEditingController();
  final locationController = TextEditingController();
  final introduceController = TextEditingController();

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

  void scheduleWrite() {
    FirebaseFirestore.instance
        .collection('schedule')
        .doc()
        .set({
          'title': titleController.text,
          'location': locationController.text,
          'date': date,
          'introduce': introduceController.text,
        })
        .then(
          (value) => print("document added"),
        ) //잘 들어갔니?
        .catchError((error) => print("Fail to add doc ${error}")); //에러가 있니?
  }
}
