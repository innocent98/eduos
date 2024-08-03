import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class TeacherSettings extends StatelessWidget {
  const TeacherSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Settings').build(context),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/img/assignment_mask.png'),
                SizedBox(width: screenWidth * 0.02),
                TextWidget(
                    text: 'Settings',
                    textColor: app_color.black,
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.048)
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            MyContainer(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'General',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/profile.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'Account information',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Divider(color: app_color.light_grey),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/book.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'School information',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Divider(color: app_color.light_grey),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/paypal.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'Payment methods',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Divider(color: app_color.light_grey),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/star.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'Appearance',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Divider(color: app_color.light_grey),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/notification.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'Notification',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  TextWidget(
                      text: 'Support',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/note.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'Report',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Divider(color: app_color.light_grey),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('assets/img/faq.png'),
                            size: screenWidth * 0.05,
                            color: app_color.black,
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          TextWidget(
                              text: 'FAQ',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: screenWidth * 0.04,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Divider(color: app_color.light_grey),
                  SizedBox(height: screenHeight * 0.01),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Button(
              buttonColor: app_color.white,
              buttonText: 'Log Out',
              textColor: app_color.primary,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
