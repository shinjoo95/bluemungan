import 'package:bluemungan/main/widget/icon_widget.dart';
import 'package:bluemungan/main/widget/rolling_banner.dart';
import 'package:bluemungan/main/widget/top_ment.dart';
import 'package:flutter/material.dart';

class MainTabScreen extends StatelessWidget {
  const MainTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Image.asset(
          'assets/blue_logo.png',
          color: Colors.blue[900],
        ),
      ),
      body: const Column(
        children: [
          SizedBox(height: 15),
          TopMent(),
          SizedBox(height: 15),
          RollingBanner(),
          SizedBox(height: 20),
          IconWigdet(),
        ],
      ),
    );
  }
}
