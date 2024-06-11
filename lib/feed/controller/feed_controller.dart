import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/// 마이 페이지 메인 스크린 컨트롤러
class FeedController extends GetxController {
  final ImagePicker picker = ImagePicker();
  final RxList<XFile> pickedImagesList = List<XFile>.empty().obs;

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
}
