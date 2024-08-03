import 'package:eduos/screens/e-learning/course_details.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class ELearning extends StatelessWidget {
  const ELearning({super.key});

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/img/e_learn_mask.png'),
                  SizedBox(width: screenWidth * 0.02),
                  TextWidget(
                      text: 'What’s new to learn?',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              const TextForm(
                keyboardType: TextInputType.text,
                labelText: 'Search for courses',
                labelColor: app_color.grey,
                hintText: 'English',
                prefixIcon: Icon(Icons.search_outlined),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Recommended for you',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.055),
              SizedBox(height: screenHeight * 0.03),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CourseDetails()));
                    },
                    child: MyContainer(
                      width: screenWidth * 0.43,
                      height: screenHeight * 0.24,
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                  'assets/img/cd_basics_ellipse.png')),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: 'Coding Basics',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.036),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: 'By: Ramesh sir',
                              textColor: app_color.grey,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text:
                                  'Master the fundamentals of coding with fun.',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.03),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CourseDetails()));
                    },
                    child: MyContainer(
                      width: screenWidth * 0.43,
                      height: screenHeight * 0.24,
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/img/hd_ellipse.png')),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: 'Human Drawing',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.036),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: 'By: Pritam sir',
                              textColor: app_color.grey,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text:
                                  'Unlock your artistic skills and learn drawing.',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.03),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Popular',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.055),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: 'Creative Writing',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.036),
                    SizedBox(height: screenHeight * 0.01),
                    TextWidget(
                        text: 'By: Mary ma’am',
                        textColor: app_color.grey,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.03),
                    SizedBox(height: screenHeight * 0.015),
                    TextWidget(
                        text:
                            'Explore your creativity and storytelling skills in this exciting creative writing course.',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.03),
                    SizedBox(height: screenHeight * 0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                            text: '24 lessons   |   42 hours',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03),
                        TextWidget(
                            text: '₹ 599',
                            textColor: app_color.primary,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'In progress',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.055),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  color: app_color.primary,
                  image: const DecorationImage(
                    image: AssetImage('assets/img/con_bk.png'),
                    fit: BoxFit.cover,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Exploring Space',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.038),
                            SizedBox(height: screenHeight * 0.001),
                            TextWidget(
                                text: 'By: Dr. Sara Johnson',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.03),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: screenWidth * 0.08,
                          color: app_color.black,
                        )
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
