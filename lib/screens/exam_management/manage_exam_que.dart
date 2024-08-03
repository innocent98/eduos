import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class ManageExamQuestion extends StatelessWidget {
  const ManageExamQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Manage Exam Ques').build(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                width: screenWidth,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: 'Select Level',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select Class',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select Subject',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Button(
                buttonColor: app_color.primary,
                buttonText: 'Check now',
                textColor: app_color.white,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ...


