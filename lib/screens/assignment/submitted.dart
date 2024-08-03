import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Submitted extends StatelessWidget {
  const Submitted({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        MyContainer(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'Science 1st chapter',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.044),
                  SizedBox(height: screenHeight * 0.01),
                  TextWidget(
                      text: 'Submitted on: 20 Sept',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.033),
                ],
              ),
              Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(screenWidth * 0.04),
                    width: screenWidth * 0.22,
                    height: screenHeight * 0.05,
                    decoration: const BoxDecoration(
                        color: app_color.primary,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(50),
                            topEnd: Radius.circular(50))),
                    child: Center(
                      child: TextWidget(
                          text: '15',
                          textColor: app_color.white,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.003),
                  Container(
                    // padding: EdgeInsets.all(screenWidth * 0.04),
                    width: screenWidth * 0.22,
                    height: screenHeight * 0.05,
                    decoration: const BoxDecoration(
                        color: app_color.primary,
                        borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(50),
                            bottomEnd: Radius.circular(50))),
                    child: Center(
                      child: TextWidget(
                          text: '20',
                          textColor: app_color.white,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.03),
        MyContainer(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'Character Sketch',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.044),
                  SizedBox(height: screenHeight * 0.01),
                  TextWidget(
                      text: 'Submitted on: 25 Sept',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.033),
                ],
              ),
              Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(screenWidth * 0.04),
                    width: screenWidth * 0.22,
                    height: screenHeight * 0.05,
                    decoration: const BoxDecoration(
                        color: app_color.primary,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(50),
                            topEnd: Radius.circular(50))),
                    child: Center(
                      child: TextWidget(
                          text: '19',
                          textColor: app_color.white,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.003),
                  Container(
                    // padding: EdgeInsets.all(screenWidth * 0.04),
                    width: screenWidth * 0.22,
                    height: screenHeight * 0.05,
                    decoration: const BoxDecoration(
                        color: app_color.primary,
                        borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(50),
                            bottomEnd: Radius.circular(50))),
                    child: Center(
                      child: TextWidget(
                          text: '20',
                          textColor: app_color.white,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.03),
        MyContainer(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'NCERT solutions',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.044),
                  SizedBox(height: screenHeight * 0.01),
                  TextWidget(
                      text: 'Submitted on: 25 Sept',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.033),
                ],
              ),
              TextWidget(
                  text: 'Not marked yet',
                  textColor: app_color.primary,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.033),
            ],
          ),
        ),
      ],
    );
  }
}
