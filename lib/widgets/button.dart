import 'package:flutter/material.dart';
import '../constants/colors.dart' as app_color;

class Button extends StatelessWidget {
  final String? buttonText;
  final Color buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final Function()? onPressed;
  final Widget? widget;
  final double? width;
  final double? height;
  final double? fontSize;
  final BorderRadius? borderRadius;

  const Button(
      {required this.buttonColor,
      this.buttonText,
      this.textColor,
      this.borderColor,
      this.onPressed,
      this.widget,
      this.width,
      this.height,
      this.fontSize,
      this.borderRadius,
      super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? app_color.primary, width: 1),
          borderRadius: borderRadius ?? BorderRadius.circular(15)),
      child: SizedBox(
        width: width ?? screenWidth * 1,
        height: height ?? screenHeight * 0.06,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              elevation: 0,
              // shadowColor: app_color.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(14))),
          onPressed: onPressed,
          child: widget ??
              Text(
                buttonText!,
                style: TextStyle(
                    color: textColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize ?? screenWidth * 0.038),
              ),
        ),
      ),
    );
  }
}
