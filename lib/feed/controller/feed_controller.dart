import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/// 마이 페이지 메인 스크린 컨트롤러
class FeedController extends GetxController {
  final ImagePicker picker = ImagePicker();
  final RxList<XFile> pickedImagesList = List<XFile>.empty().obs;
  final formKey = GlobalKey<FormState>();
  final totalWeightController = TextEditingController();
  final reviewController = TextEditingController();
  TextEditingController titleController = TextEditingController();

  String title = '';
  double totalWeight = 0;
  String imageUrl = '';
  int date = 0;
  String review = '';

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
  }

  Future<void> writeFeed({
    required String feedTitle,
  }) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    await firestore.collection('feed').doc().set({
      'title': feedTitle,
    });
    print('shin >>>> controller : $feedTitle');
  }

  // void saveFeedEntry() async {
  //   try {
  //     // 새로운 FeedModel 인스턴스 생성
  //     var diary = FeedModel(
  //       title: '',
  //       totalWeight: 1,
  //       imageUrl: '',
  //       date: 1,
  //       review: '',
  //     );
  //     // FeedModel 인스턴스를 Firestore에 저장
  //     // await FirebaseFirestore.instance
  //     // .collection('feed') // Firestore 컬렉션 이름
  //     // .w
  //     // .set(diary.toJson()); // DiaryModel을 JSON으로 변환하여 Firestore에 설정
  //     print('Diary entry saved successfully.');
  //   } catch (e) {
  //     // 프로세스 중에 발생할 수 있는 오류 처리
  //     print('Failed to save diary entry: $e');
  //   }
  // }
}
