import 'package:eduos/screens/exam_management/assessment_table.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class ManageSetExam extends StatelessWidget {
  const ManageSetExam({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Manage Set Exam').build(context),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.75,
                  child: const Form(
                    child: Column(
                      children: [
                        TextForm(
                          keyboardType: TextInputType.text,
                          labelText: 'Search',
                          labelColor: app_color.grey,
                          prefixIcon: Icon(Icons.search_outlined),
                          fillColor: app_color.white,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.12,
                  height: screenWidth * 0.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: app_color.white),
                  child: const Icon(
                    Icons.download_sharp,
                    color: app_color.primary,
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            const AssessmentTable()
          ],
        ),
      ),
    );
  }
}
