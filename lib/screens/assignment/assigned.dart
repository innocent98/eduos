import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Assigned extends StatelessWidget {
  const Assigned({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Stack(
          children: [
            MyContainer(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Essay Writing',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      ClipRRect(
                        child: Image.asset(
                          'assets/img/essay.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  TextWidget(
                      text:
                          'Write an insightful essay on the ethical considerations surrounding genetic engineering in the context of modern biotechnology.',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.032),
                  SizedBox(height: screenHeight * 0.04),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenWidth * 0.02),
                  width: screenWidth * 0.92,
                  decoration: BoxDecoration(
                      color: app_color.primary,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(screenWidth * 0.04),
                          bottomRight: Radius.circular(screenWidth * 0.04))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Submission date: 5 Oct 2022',
                          textColor: app_color.white,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.032),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: app_color.white,
                        size: screenWidth * 0.05,
                      )
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(height: screenHeight * 0.03),
        Stack(
          children: [
            MyContainer(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Periodic Table',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      ClipRRect(
                        child: Image.asset(
                          'assets/img/periodic.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  TextWidget(
                      text:
                          'Complete the periodic table assignment to identify and classify elements based on their atomic properties and characteristics.',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.032),
                  SizedBox(height: screenHeight * 0.04),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenWidth * 0.02),
                  width: screenWidth * 0.92,
                  decoration: BoxDecoration(
                      color: app_color.primary,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(screenWidth * 0.04),
                          bottomRight: Radius.circular(screenWidth * 0.04))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Submission date: 5 Oct 2022',
                          textColor: app_color.white,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.032),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: app_color.white,
                        size: screenWidth * 0.05,
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }
}
