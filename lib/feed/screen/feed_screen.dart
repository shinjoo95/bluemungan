import 'package:bluemungan/common/widgets/boundary.dart';
import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:bluemungan/feed/screen/feed_write_screen.dart';
import 'package:bluemungan/feed/widget/feed_listview.dart';
import 'package:bluemungan/feed/widget/total_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  void initState() {
    Get.put(FeedController());

    super.initState();
  }

  @override
  void dispose() {
    if (Get.isRegistered<FeedController>()) {
      Get.delete<FeedController>();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Image.asset(
          'assets/blue_logo.png',
          color: Colors.blue[900],
        ),
        title: const Text(
          '활동 피드',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'bold',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.blue[300],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FeedWriteScreen(),
            ),
          );
        },
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            TotalBanner(),
            Boundary(marginTop: 16, marginBottom: 0),
            FeedListview(),
          ],
        ),
      ),
    );
  }
}
