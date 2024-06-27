import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:bluemungan/feed/widget/feed_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedListview extends StatefulWidget {
  const FeedListview({super.key});

  @override
  State<FeedListview> createState() => _FeedListviewState();
}

class _FeedListviewState extends State<FeedListview> {
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<FeedController>();

    final Stream<QuerySnapshot> feedStream =
        FirebaseFirestore.instance.collection('feeds').snapshots();

    return Expanded(
      child: StreamBuilder(
        stream: feedStream,
        builder: (context, snapshot) {
          ctrl.activeCount = snapshot.data?.docs.length ?? 0;
          print('shin >>> ${snapshot.data?.docs.length}');
          if (!snapshot.hasData) {
            return const Text('no data!');
          }
          if (snapshot.hasError) {
            return Text('Failed!');
          }
          return GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 15, //수평 Padding
              crossAxisSpacing: 15, //수직 Padding
              childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
            ),
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
              if (data.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return FeedItem(
                review: data['review'] ?? '',
                date: data['date'] ?? '',
                title: data['title'] ?? '',
                totalWeight: data['totalWeight'] ?? '',
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
