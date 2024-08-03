import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Syllabus extends StatelessWidget {
  const Syllabus({super.key});

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
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
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
                          Navigator.pop(context);
                        },
                        child: TextWidget(
                          text: 'Hide Syllabus',
                          textColor: app_color.primary,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    TextWidget(
                      text:
                          'Arithmetic Operations: Addition, Subtraction, Multiplication, and Division of Whole Numbers and Fractions. Order of Operations (PEMDAS/BODMAS). Algebra: Solving Linear Equations. Factoring and Expanding Expressions. Solving Quadratic Equations. Geometry: Properties of Basic Shapes (Triangles, Circles, Quadrilaterals). Perimeter and Area of Shapes. Pythagorean Theorem. Data and Statistics: Organizing Data (Frequency Tables, Histograms). Measures of Central Tendency (Mean, Median, Mode). Probability Concepts. Trigonometry: Basic Trigonometric Ratios (Sine, Cosine, Tangent). Solving Right-Angled Triangles. Word Problems: Application of Mathematical Concepts in Real-Life Situations',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.03,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
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
