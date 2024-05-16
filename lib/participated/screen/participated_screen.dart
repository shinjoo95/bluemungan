import 'package:flutter/material.dart';

class ParticipatedScreen extends StatelessWidget {
  const ParticipatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        leading: Image.asset(
          'assets/blue_logo.png',
          color: Colors.blue[900],
        ),
        title: const Text(
          '참여한 활동',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
