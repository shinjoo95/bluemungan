import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabCtrl;
  int selectedImg = 0;
  List activeImagePath = [];
  String title = '';
  String location = '';
  String subTitle = '';
  String date = '';
  RxInt selectedIndex = 0.obs;
  List<String> activeImages = <String>[
    'assets/mount_img.png',
    'assets/city_img.png',
    'assets/sea_img.png',
    'assets/upcycle_img.png'
  ];
  final _firestore = FirebaseFirestore.instance;
  final titleController = TextEditingController();
  final locationController = TextEditingController();
  final subTitleController = TextEditingController();

  @override
  void onInit() {
    tabCtrl = TabController(length: 2, vsync: this);
    getdata();
    super.onInit();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  getdata() async {
    var result = await _firestore
        .collection('schedule')
        .doc('p5Eydmsh2cqvjbnyQpru')
        .get();
    print(result);
  }

  // void scheduleWrite() {
  //   FirebaseFirestore.instance
  //       .collection('schedule')
  //       .doc()
  //       .set({
  //         'title': titleController.text,
  //         'location': locationController.text,
  //         'date': date,
  //         'subTitle': subTitleController.text,
  //       })
  //       .then(
  //         (value) => print('shin >>>>> insert 1111'),
  //       ) //잘 들어갔니?
  //       .catchError(
  //         (error) => print('shin >>>>> error222222'),
  //       ); //에러가 있니?
  // }
}
