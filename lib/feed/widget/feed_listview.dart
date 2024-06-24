import 'package:bluemungan/feed/widget/feed_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedListview extends StatefulWidget {
  const FeedListview({super.key});

  @override
  State<FeedListview> createState() => _FeedListviewState();
}

class _FeedListviewState extends State<FeedListview> {
  @override
  Widget build(BuildContext context) {
    // final feedWriteRef = FirebaseFirestore.instance
    //     .collection('feed')
    //     .withConverter(
    //         fromFirestore: (snapshot, _) =>
    //             FeedModel.fromJson(snapshot.data()!),
    //         toFirestore: (feed, _) => feed.toJson())
    //     .snapshots();
    return Expanded(
      child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('feed').snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final docs = snapshot.data!.docs;

            if (docs.isNotEmpty) {
              print('shin >>> isNOtEmpty');
              return GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                  mainAxisSpacing: 15, //수평 Padding
                  crossAxisSpacing: 15, //수직 Padding
                  childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
                ),
                itemBuilder: (context, index) {
                  print('shin >>>> ${docs.length}');
                  return Text('${docs[0]['review']}');
                  // FeedItem(
                  //   review: docs[index]['review'],
                  //   date: docs[index]['date'],
                  //   title: docs[index]['title'],
                  //   totalWeight: docs[index]['totalWeight'],
                  // );
                },
              );
            } else {
              return Container();
            }
          }),
    );
  }
}
