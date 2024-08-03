import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

/// Represents the home screen of an application.
///
/// This class defines a Flutter `Home` class that displays a customized app bar, a drawer menu, and various sections with information about upcoming exams, assignments, and subjects.
///
/// Example Usage:
/// ```dart
/// Home home = Home();
/// home.build(context);
/// ```
///
/// Main Functionalities:
/// - Displays a customized app bar with a logo and a notification icon.
/// - Includes a drawer menu with various options.
/// - Shows information about upcoming exams, assignments, and subjects.
///
/// Methods:
/// - `build(BuildContext context)`: Builds the UI for the home screen. It creates a scaffold with a customized app bar, a drawer menu, and various sections with information about upcoming exams, assignments, and subjects.
///
/// Fields:
/// - `screenWidth`: Stores the width of the device screen.
/// - `screenHeight`: Stores the height of the device screen.
class Home extends StatelessWidget {
  const Home({super.key});

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
          padding: EdgeInsets.all(screenWidth * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.07,
                child: Stack(
                  children: [
                    TextWidget(
                        text: 'Mahmud Mansur',
                        textColor: app_color.primary,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.04),
                    SizedBox(height: screenHeight * 0.001),
                    Positioned(
                      top: 25,
                      child: TextWidget(
                          text: 'Upcoming exams',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.055),
                    ),
                    Positioned(
                        right: 30,
                        bottom: 0,
                        child: Image.asset('assets/img/yel.png')),
                    Positioned(
                        right: 120,
                        top: 0,
                        child: Image.asset('assets/img/ppl.png')),
                  ],
                ),
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
                      trailing: TextWidget(
                        text: 'View Syllabus',
                        textColor: app_color.primary,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.03,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
                      trailing: TextWidget(
                        text: 'View Syllabus',
                        textColor: app_color.primary,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.03,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Assignments',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.055),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/essay.png'),
                      title: TextWidget(
                          text: 'Essay Writing',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: 'Submission date: 2 Oct 2022',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: TextWidget(
                        text: 'View',
                        textColor: app_color.primary,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.03,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/periodic.png'),
                      title: TextWidget(
                          text: 'Periodic Table',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: 'Submission date: 2 Oct 2022',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: TextWidget(
                        text: 'View',
                        textColor: app_color.primary,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.03,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Subjects',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.055),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.025),
                child: Wrap(
                  spacing: 6,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/img/maths_s.png'),
                        TextWidget(
                            text: 'Mathematics',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/eng.png'),
                        TextWidget(
                            text: 'English',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/sci.png'),
                        TextWidget(
                            text: 'Science',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/ss.png'),
                        TextWidget(
                            text: 'Social Studies',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/hs.png'),
                        TextWidget(
                            text: 'History',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/geo.png'),
                        TextWidget(
                            text: 'Georaphy',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/env.png'),
                        TextWidget(
                            text: 'Environmental Studies',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/img/hindi.png'),
                        TextWidget(
                            text: 'Hindi',
                            textColor: app_color.black,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.025)
                      ],
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
