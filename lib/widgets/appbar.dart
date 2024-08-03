import 'package:flutter/material.dart';
import '../constants/colors.dart' as app_color;

class MyAppBar {
  static AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: app_color.soft,
      title: Image.asset('assets/img/logo.png'),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.notifications_outlined,
            size: 30,
          ),
        )
      ],
    );
  }
}
