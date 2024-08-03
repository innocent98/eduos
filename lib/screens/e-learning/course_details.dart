import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/cd_det.png',
              height: screenHeight * 0.35,
              fit: BoxFit.cover,
              width: screenWidth,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'Coding Basics',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.055),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(screenWidth * 0.01),
                        width: screenWidth * 0.15,
                        decoration: BoxDecoration(
                            color: app_color.primary,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: app_color.white,
                              size: screenWidth * 0.035,
                            ),
                            SizedBox(width: screenWidth * 0.01),
                            TextWidget(
                                text: '4.8',
                                textColor: app_color.white,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.032),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      TextWidget(
                          text: '(320 reviews)',
                          textColor: app_color.grey,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.032),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextWidget(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac libero vel sapien sagittis scelerisque.',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.032),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/tutor.png',
                            fit: BoxFit.cover,
                            height: screenHeight * 0.06,
                          )),
                      SizedBox(width: screenWidth * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: 'John Doe',
                              textColor: app_color.black,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.04),
                          SizedBox(height: screenHeight * 0.001),
                          TextWidget(
                              text: 'Tutor',
                              textColor: app_color.grey,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.03),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: screenWidth * 0.015,
                            horizontal: screenWidth * 0.045),
                        decoration: BoxDecoration(
                            color: app_color.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextWidget(
                            text: 'Videos',
                            textColor: app_color.white,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.038),
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: screenWidth * 0.015,
                            horizontal: screenWidth * 0.045),
                        decoration: BoxDecoration(
                            color: app_color.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextWidget(
                            text: 'Discussion',
                            textColor: app_color.grey,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.038),
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: screenWidth * 0.015,
                            horizontal: screenWidth * 0.045),
                        decoration: BoxDecoration(
                            color: app_color.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextWidget(
                            text: 'Certificate',
                            textColor: app_color.grey,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.038),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  MyContainer(
                    padding: EdgeInsets.symmetric(
                        vertical: screenWidth * 0.04,
                        horizontal: screenWidth * 0.06),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Intro to Coding',
                                textColor: app_color.black,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth * 0.04),
                            TextWidget(
                                text: '3 videos     |     14m 35s',
                                textColor: app_color.grey,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth * 0.035),
                          ],
                        ),
                        TextWidget(
                          text: 'Start',
                          textColor: app_color.primary,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  MyContainer(
                    padding: EdgeInsets.symmetric(
                        vertical: screenWidth * 0.04,
                        horizontal: screenWidth * 0.06),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Intro to Coding',
                                textColor: app_color.black,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth * 0.04),
                            TextWidget(
                                text: '3 videos     |     14m 35s',
                                textColor: app_color.grey,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth * 0.035),
                          ],
                        ),
                        TextWidget(
                          text: 'Start',
                          textColor: app_color.primary,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Button(
                    buttonColor: app_color.primary,
                    buttonText: 'Enroll now',
                    textColor: app_color.white,
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
