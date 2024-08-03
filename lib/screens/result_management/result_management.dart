import 'package:eduos/screens/result_management/edit_class_result.dart';
import 'package:eduos/screens/result_management/upload_class_result.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/teacher_drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class ResultManagement extends StatelessWidget {
  const ResultManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Result Management').build(context),
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
                        builder: (context) => const EditClassResult()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Edit class result',
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
                        builder: (context) => const UploadClassResult()));
              },
              child: MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: 'Upload class result',
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
