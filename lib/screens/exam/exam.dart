import 'package:eduos/screens/exam/syllabus.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

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
                      text: 'Exam',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/maths.png'),
                      title: TextWidget(
                          text: 'Mathematics',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '3 Oct 2022 | 9:00 am',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Syllabus()));
                        },
                        child: TextWidget(
                          text: 'View Syllabus',
                          textColor: app_color.primary,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              MyContainer(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/english.png'),
                      title: TextWidget(
                          text: 'English',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '3 Oct 2022 | 9:00 am',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Syllabus()));
                        },
                        child: TextWidget(
                          text: 'View Syllabus',
                          textColor: app_color.primary,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              MyContainer(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/hs.png'),
                      title: TextWidget(
                          text: 'History',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '3 Oct 2022 | 9:00 am',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Syllabus()));
                        },
                        child: TextWidget(
                          text: 'View Syllabus',
                          textColor: app_color.primary,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              MyContainer(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/geo.png'),
                      title: TextWidget(
                          text: 'Geography',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '3 Oct 2022 | 9:00 am',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Syllabus()));
                        },
                        child: TextWidget(
                          text: 'View Syllabus',
                          textColor: app_color.primary,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
