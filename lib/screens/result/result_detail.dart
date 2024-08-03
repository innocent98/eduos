import 'package:eduos/screens/result/result_table.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class ResultDetail extends StatelessWidget {
  const ResultDetail({super.key});

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
                      text: 'Results',
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
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/a1.png',
                            fit: BoxFit.cover,
                            width: screenWidth * 0.12,
                            height: screenWidth * 0.12,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Marie Workman',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.04),
                            TextWidget(
                                text: 'Father: Sam Workman',
                                textColor: app_color.grey,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.033),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Container(
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      decoration: BoxDecoration(
                        color: app_color.light_grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                              text: 'Percentage - 60.19%',
                              textColor: app_color.primary,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.033),
                          TextWidget(
                              text: 'Grand total - 852/1200',
                              textColor: app_color.primary,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.033),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    const MyTable()
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Button(
                buttonColor: app_color.primary,
                buttonText: 'Download',
                textColor: app_color.white,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
