import 'package:flutter/material.dart';

class Boundary extends StatelessWidget {
  final double marginTop;
  final double marginBottom;

  const Boundary({
    super.key,
    this.marginTop = 10.0,
    this.marginBottom = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
      ),
      height: 1,
      color: Colors.grey[300],
    );
  }
}
