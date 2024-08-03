import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart' as app_color;

class TeacherAppBar {
  final String title;

  TeacherAppBar({required this.title});
  AppBar build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: app_color.soft,
      centerTitle: true,
      title: TextWidget(
          text: title,
          textColor: app_color.black,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w700,
          fontSize: screenWidth * 0.048),
    );
  }
}
