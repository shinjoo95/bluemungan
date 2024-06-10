import 'package:bluemungan/feed/widget/feed_item.dart';
import 'package:flutter/material.dart';

class FeedListview extends StatelessWidget {
  const FeedListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
            mainAxisSpacing: 15, //수평 Padding
            crossAxisSpacing: 15, //수직 Padding
            childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
          ),
          itemBuilder: (BuildContext context, int index) {
            return const FeedItem();
          }),
    );
  }
}
