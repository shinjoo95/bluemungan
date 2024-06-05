// import 'package:bluemungan/schedule/controller/schedule_controller.dart';
import 'package:bluemungan/schedule/screen/schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:get/get.dart';

class ScheduleWriteScreen extends StatefulWidget {
  const ScheduleWriteScreen({super.key});

  @override
  State<ScheduleWriteScreen> createState() => _ScheduleWriteScreenState();
}

class _ScheduleWriteScreenState extends State<ScheduleWriteScreen> {
  @override
  Widget build(BuildContext context) {
    // final ctrl = Get.put(ScheduleController());
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
              fontSize: 21,
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
                    fontSize: 20,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(
                  height: 35,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 16,
                    style: TextStyle(
                      fontFamily: 'semiBold',
                      fontSize: 17,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      hintText: '활동 제목을 입력하세요.',
                      hintStyle: TextStyle(
                        fontFamily: 'semibold',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                boundary(),

                // 활동 이미지 추가
                const Text(
                  '활동 종류',
                  style: TextStyle(
                    fontSize: 20,
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

                boundary(),

                const Text(
                  '활동 장소',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(
                  height: 30,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 16,
                    style: TextStyle(
                      fontFamily: 'semiBold',
                      fontSize: 17,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 10),
                      border: InputBorder.none,
                      hintText: '예시) 합정역 8번 출구, 관악산 서울대 입구 매표소',
                      hintStyle: TextStyle(
                        fontFamily: 'semibold',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                boundary(),

                const Text(
                  '활동 일시',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.amber,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          dateButton();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          color: Colors.cyan,
                          child: const Text(
                            '시간 선택',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: 15,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          color: Colors.cyan,
                          child: const Text(
                            '시간 선택',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: 15,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                boundary(),

                const Text(
                  '활동 소개',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'bold',
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '구체적인 안내사항을 알려주세요.',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'semiBold',
                  ),
                ),
                const SizedBox(height: 10),

                const SizedBox(
                  height: 120,
                  // Expanded는 Column, Row, Flex 위젯 내에서만 사용 가능.
                  child: Column(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.black,
                          cursorHeight: 16,
                          style: TextStyle(
                            fontFamily: 'semiBold',
                            fontSize: 17,
                          ),
                          textAlignVertical: TextAlignVertical(y: -1),
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            hintText:
                                '예시) 수락산에서 플로깅 할 예정이에요. \n텀블러, 장갑, 손수건을 챙겨와 주세요. \n일정 및 준비물 상세 내용을 써주세요 :)',
                            hintStyle: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 16,
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
                        fontSize: 17,
                        fontFamily: 'bold',
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  onTap: () {
                    /// TODO 개설 기능 추가

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

  Widget boundary() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 1,
      color: Colors.grey[300],
    );
  }

  Widget dateButton() {
    return SfDateRangePicker();
  }
}
