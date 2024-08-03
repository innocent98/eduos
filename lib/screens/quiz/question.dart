import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: MyAppBar.build(context),
      drawer: const MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios_outlined)),
                TextWidget(
                    text: 'Statistic Math Quiz',
                    textColor: app_color.black,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.045),
                const Text('')
              ],
            ),
            SizedBox(height: screenHeight * 0.025),
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.35,
                  padding: EdgeInsets.symmetric(vertical: screenWidth * 0.03),
                  child: MyContainer(
                    padding: EdgeInsets.all(screenWidth * 0.08),
                    height: screenHeight * 0.3,
                    color: app_color.yellow,
                    child: Center(
                      child: TextWidget(
                          text:
                              'What is the median of the following dataset?\n {12, 8, 9, 15, 10, 14, 7}',
                          textColor: app_color.black,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.04,
                          vertical: screenWidth * 0.015),
                      decoration: BoxDecoration(
                          color: app_color.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextWidget(
                          text: '2/10',
                          textColor: app_color.primary,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      width: screenWidth * 0.08,
                      height: screenWidth * 0.08,
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      decoration: BoxDecoration(
                          color: app_color.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextWidget(
                          text: '?',
                          textColor: app_color.primary,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.04),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Container(
              height: screenHeight * 0.065,
              decoration: BoxDecoration(
                  color: app_color.primary,
                  border: Border.all(width: 1, color: app_color.primary),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: TextWidget(
                    text: '9',
                    textColor: app_color.white,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              height: screenHeight * 0.065,
              decoration: BoxDecoration(
                  color: app_color.white,
                  border: Border.all(width: 1, color: app_color.primary),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: TextWidget(
                    text: '10',
                    textColor: app_color.primary,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              height: screenHeight * 0.065,
              decoration: BoxDecoration(
                  color: app_color.close,
                  border: Border.all(width: 1, color: app_color.close),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: TextWidget(
                    text: '12',
                    textColor: app_color.white,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              height: screenHeight * 0.065,
              decoration: BoxDecoration(
                  color: app_color.white,
                  border: Border.all(width: 1, color: app_color.primary),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: TextWidget(
                    text: '15',
                    textColor: app_color.primary,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
