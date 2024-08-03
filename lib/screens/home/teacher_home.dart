import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/teacher_drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class TeacherHome extends StatelessWidget {
  const TeacherHome({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: app_color.soft,
        appBar: TeacherAppBar(title: 'Edous School').build(context),
        drawer: const TeacherDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.27,
                      padding:
                          EdgeInsets.symmetric(vertical: screenWidth * 0.05),
                      child: MyContainer(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        width: screenWidth,
                        color: app_color.deep_yellow,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Hi Maxwell, \n Welcome back!',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.044),
                            SizedBox(height: screenHeight * 0.04),
                            TextWidget(
                                text:
                                    'Your students are doing great! 80% of the students have attended today’s class. Voila! 29 new students have requested to join your class',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.032)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: 20,
                        top: 0,
                        child: Image.asset('assets/img/dash_t.png'))
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                MyContainer(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(
                              text: 'Task To-Do',
                              textColor: app_color.black,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.044),
                          TextWidget(
                            text: 'View all',
                            textColor: app_color.grey,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.03,
                            decoration: TextDecoration.underline,
                            decorationColor: app_color.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(screenWidth * 0.04),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: app_color.light_grey),
                            child: const ImageIcon(
                              AssetImage('assets/img/planning.png'),
                              color: app_color.primary,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: 'Class A result preparation',
                                textColor: app_color.black,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.035,
                              ),
                              SizedBox(height: screenHeight * 0.005),
                              TextWidget(
                                text: '07 May 2023',
                                textColor: app_color.grey,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.033,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(screenWidth * 0.04),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: app_color.light_grey),
                            child: const ImageIcon(
                              AssetImage('assets/img/planning.png'),
                              color: app_color.primary,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: 'To take test of class C',
                                textColor: app_color.black,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.035,
                              ),
                              SizedBox(height: screenHeight * 0.005),
                              TextWidget(
                                text: '09 May 2023',
                                textColor: app_color.grey,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.033,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(screenWidth * 0.04),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: app_color.light_grey),
                            child: const ImageIcon(
                              AssetImage('assets/img/planning.png'),
                              color: app_color.primary,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: 'Record student performance',
                                textColor: app_color.black,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.035,
                              ),
                              SizedBox(height: screenHeight * 0.005),
                              TextWidget(
                                text: '18 May 2023',
                                textColor: app_color.grey,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.033,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                MyContainer(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(
                              text: 'Student Statistic',
                              textColor: app_color.black,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.044),
                          TextWidget(
                            text: 'June 2023',
                            textColor: app_color.grey,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.03,
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Image.asset('assets/img/stat1.png')
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                MyContainer(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(
                              text: 'Class progress',
                              textColor: app_color.black,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.044),
                          TextWidget(
                            text: 'View all',
                            textColor: app_color.grey,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.03,
                            decoration: TextDecoration.underline,
                            decorationColor: app_color.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Container(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: app_color.light_grey),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: 'Class A',
                                    textColor: app_color.black,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                                TextWidget(
                                    text: '120 students',
                                    textColor: app_color.grey,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth * 0.035),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Container(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: app_color.light_grey),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: 'Class B',
                                    textColor: app_color.black,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                                TextWidget(
                                    text: '80 students',
                                    textColor: app_color.grey,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth * 0.035),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Container(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: app_color.light_grey),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: 'Class C',
                                    textColor: app_color.black,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                                TextWidget(
                                    text: '100 students',
                                    textColor: app_color.grey,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth * 0.035),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
