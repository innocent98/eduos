import 'package:flutter/material.dart';
import '../constants/colors.dart' as app_color;

class MyContainer extends StatelessWidget {
  final Color? color;
  final Widget child;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final DecorationImage? image;

  const MyContainer(
      {super.key,
      required this.child,
      this.color,
      this.padding,
      this.width,
      this.height, this.image});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? app_color.white,
        borderRadius: BorderRadius.circular(screenWidth * 0.04),
        image: image,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 1), // changes the position of the shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
