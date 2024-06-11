import 'dart:io';
import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSelectListview extends StatefulWidget {
  const ImageSelectListview({super.key});

  @override
  State<ImageSelectListview> createState() => _ImageSelectListviewState();
}

class _ImageSelectListviewState extends State<ImageSelectListview> {
  final ctrl = Get.put(FeedController());

  @override
  void dispose() {
    // TODO: implement dispose
    ctrl.clearWriteParameters();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (ctrl.pickedImagesList.isEmpty) {
        return GestureDetector(
          onTap: () {
            ctrl.getMultiImage();
          },
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.cyan,
                width: 2,
              ),
              // color: Colors.amber,
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Text(
              '이미지 추가하기',
              style: TextStyle(
                fontFamily: 'bold',
                fontSize: 17,
                color: Colors.cyan,
              ),
            ),
          ),
        );
      } else {
        return SizedBox(
          height: 100,
          child: ListView.separated(
            shrinkWrap: true,
            // physics: const ClampingScrollPhysics(),
            itemCount: ctrl.pickedImagesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              print('shin >>> ${ctrl.pickedImagesList.length}');
              return SizedBox(
                height: 80,
                width: 80,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.file(
                        File(ctrl.pickedImagesList[index].path),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ctrl.pickedImagesList
                                .remove(ctrl.pickedImagesList[index]);
                          });
                        },
                        child: const Icon(
                          Icons.cancel_rounded,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 5),
          ),
        );
      }
    });
  }

  //   if (ctrl.pickedImagesList.isEmpty) {
  //     return GestureDetector(
  //       onTap: () {
  //         ctrl.getMultiImage();
  //       },
  //       child: Container(
  //         alignment: Alignment.center,
  //         height: 100,
  //         width: 100,
  //         decoration: BoxDecoration(
  //           border: Border.all(
  //             color: Colors.cyan,
  //             width: 2,
  //           ),
  //           // color: Colors.amber,
  //           borderRadius: BorderRadius.circular(3),
  //         ),
  //         child: const Text(
  //           '이미지 추가하기',
  //           style: TextStyle(
  //             fontFamily: 'bold',
  //             fontSize: 17,
  //             color: Colors.cyan,
  //           ),
  //         ),
  //       ),
  //     );
  //   } else {
  //     return Obx(() {
  //       return SizedBox(
  //         height: 100,
  //         child: ListView.separated(
  //           shrinkWrap: true,
  //           // physics: const ClampingScrollPhysics(),
  //           itemCount: ctrl.pickedImagesList.length,
  //           scrollDirection: Axis.horizontal,
  //           itemBuilder: (context, index) {
  //             print('shin >>> ${ctrl.pickedImagesList.length}');
  //             return SizedBox(
  //               height: 80,
  //               width: 80,
  //               child: Stack(
  //                 children: [
  //                   Positioned.fill(
  //                     child: Image.file(
  //                       File(ctrl.pickedImagesList[index].path),
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   Positioned(
  //                     top: 5,
  //                     right: 5,
  //                     child: GestureDetector(
  //                       onTap: () {
  //                         setState(() {
  //                           ctrl.pickedImagesList
  //                               .remove(ctrl.pickedImagesList[index]);
  //                         });
  //                       },
  //                       child: const Icon(
  //                         Icons.cancel_rounded,
  //                         color: Colors.black87,
  //                       ),
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             );
  //           },
  //           separatorBuilder: (context, index) => const SizedBox(width: 5),
  //         ),
  //       );
  //     });
  //   }
  // }

  // Widget _gridPhotoItem(XFile e) {
  //   return SizedBox(
  //     height: 80,
  //     width: 80,
  //     child: Stack(
  //       children: [
  //         Positioned.fill(
  //           child: Image.file(
  //             File(e.path),
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //         Positioned(
  //           top: 5,
  //           right: 5,
  //           child: GestureDetector(
  //             onTap: () {
  //               setState(() {
  //                 ctrl.pickedImages.remove(e);
  //               });
  //             },
  //             child: const Icon(
  //               Icons.cancel_rounded,
  //               color: Colors.black87,
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
