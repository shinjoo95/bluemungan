import 'package:bluemungan/main/widget/rolling_banner.dart';
import 'package:bluemungan/main/widget/top_banner.dart';
import 'package:flutter/material.dart';

class MainTabScreen extends StatelessWidget {
  const MainTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: Image.asset(
          'assets/blue_logo.png',
          color: Colors.blue[900],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // TopBanner(),
            RollingBanner(),
          ],
        ),
      ),
    );
  }
}
