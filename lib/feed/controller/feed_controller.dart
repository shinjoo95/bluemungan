import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/// 마이 페이지 메인 스크린 컨트롤러
class FeedController extends GetxController {
  final ImagePicker picker = ImagePicker();
  final RxList<XFile> pickedImagesList = List<XFile>.empty().obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController totalWeightController = TextEditingController();
  TextEditingController peopleController = TextEditingController();
  TextEditingController reviewController = TextEditingController();
  int activeCount = 0;
  final GlobalKey<FormState> formKey = GlobalKey();
  String date = '';

  @override
  void onInit() {
    super.onInit();
  }

  // 이미지 선택
  void getMultiImage() async {
    final List<XFile>? images = await picker.pickMultiImage();

    if (images != null) {
      pickedImagesList.addAll(images);
    }
  }

  // 피드 작성 파라미터 초기화
  void clearWriteParameters() {
    pickedImagesList.clear();
    titleController = TextEditingController();
    peopleController = TextEditingController();
    totalWeightController = TextEditingController();
    reviewController = TextEditingController();
    date = '';
  }

  void feedWrite() {
    FirebaseFirestore.instance
        .collection('feeds')
        .doc()
        .set({
          'title': titleController.text,
          'totalWeight': totalWeightController.text,
          'date': date,
          'review': reviewController.text,
          'people': peopleController.text,
        })
        .then((value) => print("document added")) //잘 들어갔니?
        .catchError((error) => print("Fail to add doc ${error}")); //에러가 있니?
  }

  void feedDelete() {
    FirebaseFirestore.instance.collection('feeds').doc().delete();
  }
}
