import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Announcement extends StatelessWidget {
  const Announcement({super.key});

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
                      text: 'Announcements',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: '2k23 celebration',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04),
                    SizedBox(height: screenHeight * 0.005),
                    TextWidget(
                        text: '13 Jan 2023, 2:00 PM',
                        textColor: app_color.grey,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.033),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenWidth * 0.01),
                          decoration: BoxDecoration(
                              color: app_color.primary,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextWidget(
                              text: 'Event',
                              textColor: app_color.white,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.033),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenWidth * 0.01),
                          decoration: BoxDecoration(
                              color: app_color.primary,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextWidget(
                              text: 'Parent option',
                              textColor: app_color.white,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.033),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: 'Mid-term revisions',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04),
                    SizedBox(height: screenHeight * 0.005),
                    TextWidget(
                        text: '16 Jan 2023 - 21 Jan 2023',
                        textColor: app_color.grey,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.033),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenWidth * 0.01),
                          decoration: BoxDecoration(
                              color: app_color.primary,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextWidget(
                              text: 'Exam',
                              textColor: app_color.white,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.033),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: 'PTA meeting',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04),
                    SizedBox(height: screenHeight * 0.005),
                    TextWidget(
                        text: '27 Feb 2023 , 4:00 PM',
                        textColor: app_color.grey,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.033),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenWidth * 0.01),
                          decoration: BoxDecoration(
                              color: app_color.primary,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextWidget(
                              text: 'Parent required',
                              textColor: app_color.white,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.033),
                        ),
                      ],
                    )
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
