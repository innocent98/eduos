import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color color;

  const ColorBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.1,
      height: screenWidth * 0.1,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
    );
  }
}
