import 'package:eduos/screens/exam_management/add_assessment.dart';
import 'package:eduos/screens/exam_management/add_question.dart';
import 'package:eduos/screens/exam_management/manage_assessment_que.dart';
import 'package:eduos/screens/exam_management/manage_exam_que.dart';
import 'package:eduos/screens/exam_management/manage_set_assessment.dart';
import 'package:eduos/screens/exam_management/manage_set_exam.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/teacher_drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class ExamManagement extends StatelessWidget {
  const ExamManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Exam management').build(context),
      drawer: const TeacherDrawer(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddAssessment()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Add Assessment',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.035),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: screenWidth * 0.045,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddQuestion()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Add Questions',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.035),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: screenWidth * 0.045,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ManageAssessMentQuestion()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Manage Assessment Questions',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.035),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: screenWidth * 0.045,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ManageExamQuestion()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Manage Exam Questions',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.035),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: screenWidth * 0.045,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ManageSetAssessment()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Manage Set Assessment',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.035),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: screenWidth * 0.045,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ManageSetExam()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Manage Set Exam',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.035),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: screenWidth * 0.045,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
