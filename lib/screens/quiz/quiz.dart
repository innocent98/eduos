import 'package:eduos/screens/quiz/question.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Quiz extends StatelessWidget {
  const Quiz({super.key});

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
                      text: 'Quiz',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              const TextForm(
                keyboardType: TextInputType.text,
                labelText: 'Search for quiz',
                labelColor: app_color.grey,
                prefixIcon: Icon(Icons.search_outlined),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Previous quizzes',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.055),
              SizedBox(height: screenHeight * 0.03),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: MyContainer(
                      width: screenWidth * 0.44,
                      height: screenHeight * 0.22,
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/img/essay.png')),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: 'Story telling quiz',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.036),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: '10 questions',
                              textColor: app_color.grey,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03),
                          SizedBox(height: screenHeight * 0.03),
                          LinearProgressIndicator(
                              backgroundColor: app_color.grey,
                              color: app_color.primary,
                              value: 0.6,
                              minHeight: 8,
                              borderRadius: BorderRadius.circular(8)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  InkWell(
                    onTap: () {},
                    child: MyContainer(
                      width: screenWidth * 0.44,
                      height: screenHeight * 0.22,
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/img/hd_ellipse.png')),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: 'Art & craft quiz',
                              textColor: app_color.black,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.036),
                          SizedBox(height: screenHeight * 0.01),
                          TextWidget(
                              text: '10 questions',
                              textColor: app_color.grey,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03),
                          SizedBox(height: screenHeight * 0.03),
                          LinearProgressIndicator(
                            backgroundColor: app_color.grey,
                            color: app_color.primary,
                            value: 0.9,
                            minHeight: 8,
                            borderRadius: BorderRadius.circular(8),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Start new Quiz',
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
                      leading: Image.asset('assets/img/maths.png'),
                      title: TextWidget(
                          text: 'Statistic Math Quiz',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.042),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: 'Math     |     12 Quizzes',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Question()));
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/maths_quiz.png'),
                      title: TextWidget(
                          text: 'Matrices Quiz',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: 'Math     |     6 Quizzes',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Question()));
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/cd_basics_ellipse.png'),
                      title: TextWidget(
                          text: 'Basic Math Quiz',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: 'Math     |     10 Quizzes',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Question()));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: 'Friends',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.055),
                  Icon(
                    Icons.add_circle_outline,
                    color: app_color.black,
                    size: screenWidth * 0.08,
                  )
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
                      leading: Image.asset('assets/img/a1.png'),
                      title: TextWidget(
                          text: 'Marie Workman',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.042),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '325 points',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/a2.png'),
                      title: TextWidget(
                          text: 'Brandon Matrovs',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '124 points',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.006,
                          horizontal: screenWidth * 0.04),
                      leading: Image.asset('assets/img/a3.png'),
                      title: TextWidget(
                          text: 'Manuela Lipshutz',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.045),
                      subtitle: Row(
                        children: [
                          TextWidget(
                            text: '437 points',
                            textColor: app_color.grey,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
