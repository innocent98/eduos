import 'dart:math';

import 'package:eduos/screens/attendance/barchat.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Attendance extends StatelessWidget {
  final int currentAttendance = 75;
  final int totalAttendance = 120;

  const Attendance({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/img/assignment_mask.png'),
                  SizedBox(width: screenWidth * 0.02),
                  TextWidget(
                      text: 'Attendance',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                width: screenWidth,
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios, size: screenWidth * 0.05),
                        SizedBox(width: screenWidth * 0.06),
                        TextWidget(
                            text: 'August 2023',
                            textColor: app_color.black,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.035),
                        SizedBox(width: screenWidth * 0.06),
                        Icon(Icons.arrow_forward_ios, size: screenWidth * 0.05),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.2),
                    // const MyBarChat(),
                    TextWidget(
                        text: 'Year 2022 - 2023',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.035),
                    SizedBox(height: screenHeight * 0.03),
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
              )
            ],
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
