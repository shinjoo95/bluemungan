import 'package:bluemungan/common/widgets/boundary.dart';
import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:bluemungan/feed/widget/image_select_listview.dart';
import 'package:bluemungan/feed/widget/month_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FeedWriteScreen extends StatefulWidget {
  const FeedWriteScreen({
    super.key,
  });

  @override
  State<FeedWriteScreen> createState() => _FeedWriteScreenState();
}

class _FeedWriteScreenState extends State<FeedWriteScreen> {
  final ctrl = Get.find<FeedController>();

  @override
  void dispose() {
    ctrl.clearWriteParameters();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            '피드 작성하기',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'bold',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: ctrl.formKey,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    '피드 제목',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'bold',
                    ),
                  ),

                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      key: const ValueKey(1),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '';
                        } else {
                          return null;
                        }
                      },
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
                        hintText: '활동 내용을 간락하게 작성하세요. ex) ~ 다녀왔어요',
                        hintStyle: TextStyle(
                          fontFamily: 'semibold',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const Boundary(marginBottom: 20),

                  const Text(
                    '활동 인원',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'bold',
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      key: const ValueKey(2),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '';
                        } else {
                          return null;
                        }
                      },
                      controller: ctrl.peopleController,
                      cursorColor: Colors.black,
                      cursorHeight: 16,
                      style: const TextStyle(
                        fontFamily: 'semiBold',
                        fontSize: 14,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        hintText: '쉼표나 띄어쓰기로 구분 ex) 신주용 김기원 권하연 ',
                        hintStyle: TextStyle(
                          fontFamily: 'semibold',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const Boundary(marginBottom: 20),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '활동 일시',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'bold',
                        ),
                      ),
                      SizedBox(width: 30),
                      MonthDropdown(),
                    ],
                  ),
                  const Boundary(marginTop: 20, marginBottom: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        '쓰레기 총량',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'bold',
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 35,
                        width: 80,
                        child: TextFormField(
                          key: const ValueKey(3),
                          controller: ctrl.totalWeightController,
                          cursorColor: Colors.black,
                          cursorHeight: 16,
                          style: const TextStyle(
                            fontFamily: 'semiBold',
                            fontSize: 17,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '';
                            } else {
                              return null;
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter(
                              allow: true,
                              RegExp('[0-9 .]'),
                            ),
                          ],
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.cyan,
                                width: 2,
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                            hintText: 'ex) 30.5',
                            hintStyle: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'kg',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'bold',
                        ),
                      ),
                    ],
                  ),
                  const Boundary(marginTop: 20, marginBottom: 20),

                  // 활동 이미지 추가
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '활동 이미지',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'bold',
                            color: Colors.black,
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: 3,
                          ),
                        ),
                        TextSpan(
                          text: '(최대 5장)',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 13,
                            fontFamily: 'semiBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  /// 이미지 추가
                  const ImageSelectListview(),

                  const Boundary(marginTop: 20, marginBottom: 20),
                  const Text(
                    '활동 후기',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'bold',
                    ),
                  ),
                  const SizedBox(height: 5),

                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '상세한 후기를 적어주세요.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'semiBold',
                            letterSpacing: 0.16,
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: 3,
                          ),
                        ),
                        TextSpan(
                          text: '(최대 10줄)',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 13,
                            fontFamily: 'semiBold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  SizedBox(
                    height: 120,
                    // Expanded는 Column, Row, Flex 위젯 내에서만 사용 가능.
                    child: Column(
                      children: [
                        Expanded(
                          child: TextFormField(
                            key: const ValueKey(4),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              } else {
                                return null;
                              }
                            },
                            controller: ctrl.reviewController,
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
                                  '예시) 이번 정기 활동은 어디 어디 다녀왔습니다. \n총 30명이서 활동하였습니다.',
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
                    onTap: () {
                      if (ctrl.formKey.currentState!.validate()) {
                        ctrl.feedWrite();
                        ctrl.clearWriteParameters();
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('다 입력하세요'),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
