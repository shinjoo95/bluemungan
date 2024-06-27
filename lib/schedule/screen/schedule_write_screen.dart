// import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:bluemungan/common/widgets/boundary.dart';
import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:board_datetime_picker/board_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class ScheduleWriteScreen extends StatefulWidget {
  const ScheduleWriteScreen({super.key});

  @override
  State<ScheduleWriteScreen> createState() => _ScheduleWriteScreenState();
}

class _ScheduleWriteScreenState extends State<ScheduleWriteScreen> {
  final controller = BoardDateTimeController();

  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<ScheduleController>();
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          title: const Text(
            '활동 추가하기',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'bold',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                const Text(
                  '활동 제목',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bold',
                  ),
                ),
                SizedBox(
                  height: 35,
                  child: TextField(
                    controller: ctrl.titleController,
                    cursorColor: Colors.black,
                    cursorHeight: 16,
                    style: const TextStyle(
                      fontFamily: 'semiBold',
                      fontSize: 14,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      hintText: '활동 제목을 입력하세요.',
                      hintStyle: TextStyle(
                        fontFamily: 'semibold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                const Boundary(),

                // 활동 이미지 추가
                const Text(
                  '활동 종류',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectImage(image: 'assets/mount_img.png'),
                    selectImage(image: 'assets/city_img.png'),
                    selectImage(image: 'assets/sea_img.png'),
                    selectImage(image: 'assets/upcycle_img.png'),
                  ],
                ),

                const Boundary(
                  marginBottom: 20,
                ),

                const Text(
                  '활동 장소',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bold',
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: TextField(
                    controller: ctrl.locationController,
                    cursorColor: Colors.black,
                    cursorHeight: 16,
                    style: const TextStyle(
                      fontFamily: 'semiBold',
                      fontSize: 14,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 10),
                      border: InputBorder.none,
                      hintText: '예시) 합정역 8번 출구, 관악산 서울대 입구 매표소',
                      hintStyle: TextStyle(
                        fontFamily: 'semibold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                const Boundary(marginBottom: 20),

                const Text(
                  '활동 일시',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(height: 10),

                /// 활동 날짜 설정
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text(
                      BoardDateFormat('yyyy년 MM월 dd일  h시').format(date),
                      style: const TextStyle(
                        fontFamily: 'bold',
                        fontSize: 14,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  onTap: () async {
                    /// TODO 널체크
                    final result = await showBoardDateTimePicker(
                      minimumDate: DateTime.now(),
                      maximumDate: DateTime(2026),
                      useSafeArea: true,
                      options: BoardDateTimeOptions(
                        boardTitleTextStyle: const TextStyle(
                          fontFamily: 'bold',
                          fontSize: 17,
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey[200],
                        startDayOfWeek: DateTime.sunday,
                        pickerFormat: PickerFormat.ymd,
                        showDateButton: false,
                        customOptions: BoardPickerCustomOptions(
                          minutes: [00, 30],
                        ),
                        boardTitle: '년도 / 날짜 / 시간 선택하세요.',
                      ),
                      context: context,
                      pickerType: DateTimePickerType.datetime,
                      showDragHandle: false,
                    );
                    if (result != null) {
                      setState(() => date = result);
                      print('shin >>>> $date');
                    }
                  },
                ),

                const Boundary(marginBottom: 20),

                const Text(
                  '활동 소개',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '구체적인 안내사항을 알려주세요.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'semiBold',
                  ),
                ),
                const SizedBox(height: 10),

                SizedBox(
                  height: 120,
                  // Expanded는 Column, Row, Flex 위젯 내에서만 사용 가능.
                  child: Column(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: ctrl.introduceController,
                          cursorColor: Colors.black,
                          cursorHeight: 16,
                          style: const TextStyle(
                            fontFamily: 'semiBold',
                            fontSize: 14,
                          ),
                          textAlignVertical: const TextAlignVertical(y: -1),
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            hintText:
                                '예시) 수락산에서 플로깅 할 예정이에요. \n텀블러, 장갑, 손수건을 챙겨와 주세요. \n일정 및 준비물 상세 내용을 써주세요 :)',
                            hintStyle: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 13,
                              height: 1.7,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.cyan,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.cyan,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // 등록 버튼
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      '등록하기',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'bold',
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  onTap: () async {
                    /// TODO 개설 기능 추가
                    ctrl.scheduleWrite();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget selectImage({
    required String image,
  }) {
    // final ctrl = Get.put(ScheduleController());

    return Column(
      children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
