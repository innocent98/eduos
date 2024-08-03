import 'package:eduos/screens/chart.dart';
import 'package:eduos/screens/exam_management/exam_management.dart';
import 'package:eduos/screens/home/teacher_home.dart';
import 'package:eduos/screens/lesson_plan/lesson_plan.dart';
import 'package:eduos/screens/result_management/result_management.dart';
import 'package:eduos/screens/teacher_settings/teacher_settings.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class TeacherDrawer extends StatelessWidget {
  const TeacherDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: app_color.soft,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/drawer_bk.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.48,
                      child: TextWidget(
                        text: 'Edous School',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w900,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: screenWidth * 0.65,
                      child: const TextForm(
                        keyboardType: TextInputType.text,
                        labelText: 'Search',
                        labelColor: app_color.grey,
                        prefixIcon: Icon(Icons.search_outlined),
                      ),
                    )
                  ],
                ),
              ],
            )),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/info.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Dashboard',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TeacherHome()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/stat.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Exam Management',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExamManagement()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/edit.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Result Management',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultManagement()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/stat.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Lesson plan',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LessonPlan()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/settings.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Settings',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TeacherSettings()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/logout.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Logout',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BarChartSample8()));
              },
            ),
            SizedBox(height: screenHeight * 0.08),
          ],
        ),
      ),
    );
  }
}
