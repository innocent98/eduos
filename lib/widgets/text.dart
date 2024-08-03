import 'package:flutter/material.dart';
import '../constants/colors.dart' as app_color;

class TextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double fontSize;
  final String? fontFamily;
  final TextDecoration? decoration;
  final Color? decorationColor;

  const TextWidget(
      {required this.text,
      required this.textColor,
      required this.textAlign,
      required this.fontWeight,
      required this.fontSize,
      this.fontFamily,
      this.decoration,
      this.decorationColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: fontFamily ?? 'Inter',
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration: decoration,
          decorationColor: decorationColor ?? app_color.primary),
      textAlign: textAlign,
    );
  }
}
