import 'dart:math';

import 'package:eduos/screens/assignment/assignment.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Profile extends StatelessWidget {
  final int currentAttendance = 70;
  final int totalAttendance = 120;

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    double progress = currentAttendance / totalAttendance;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: MyAppBar.build(context),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: SizedBox(
            width: screenWidth,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/img/pic1.png',
                    fit: BoxFit.cover,
                    height: screenHeight * 0.12,
                  ),
                ),
                TextWidget(
                    text: 'Mahmud Mansur',
                    textColor: app_color.black,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w800,
                    fontSize: screenWidth * 0.04),
                TextWidget(
                    text: 'Class: 9 A     |     Roll no.: 40',
                    textColor: app_color.grey,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.03),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  children: [
                    MyContainer(
                      width: screenWidth * 0.445,
                      height: screenHeight * 0.3,
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: 'Attendance',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w800,
                              fontSize: screenWidth * 0.04),
                          TextWidget(
                              text: 'Year 2022 - 2023',
                              textColor: app_color.grey,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.03),
                          SizedBox(height: screenHeight * 0.02),
                          SizedBox(
                            width: 150.0,
                            height: 150.0,
                            child: CustomPaint(
                              painter: CircularProgressBarPainter(
                                  progress: progress,
                                  text: '$currentAttendance/$totalAttendance'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Assignment()));
                      },
                      child: MyContainer(
                        width: screenWidth * 0.445,
                        height: screenHeight * 0.3,
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Assignments',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w800,
                                fontSize: screenWidth * 0.04),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                MyContainer(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  width: screenWidth,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                              text: 'Progress',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w800,
                              fontSize: screenWidth * 0.04),
                          Row(
                            children: [
                              TextWidget(
                                  text: '30% ',
                                  textColor: app_color.primary,
                                  textAlign: TextAlign.left,
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.03),
                              TextWidget(
                                  text: 'more progress than last month',
                                  textColor: app_color.black,
                                  textAlign: TextAlign.left,
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.03),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Image.asset('assets/img/stat_chart.png')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircularProgressBarPainter extends CustomPainter {
  final double progress;
  final String text;

  CircularProgressBarPainter({required this.progress, required this.text});

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 20.0;
    double radius = size.width / 2.2 - strokeWidth / 2.2;
    Offset center = Offset(size.width / 2, size.height / 2);

    Paint backgroundPaint = Paint()
      ..color = Colors.grey
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Paint foregroundPaint = Paint()
      ..color = app_color.primary
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Draw background circle
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw foreground arc based on progress
    double sweepAngle = 360.0 * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -90.0 * (pi / 180), // Start angle
      sweepAngle * (pi / 180), // Sweep angle
      false,
      foregroundPaint,
    );

    // Draw text in the center of the canvas
    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    textPainter.paint(
        canvas,
        Offset(center.dx - textPainter.width / 2,
            center.dy - textPainter.height / 2));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
