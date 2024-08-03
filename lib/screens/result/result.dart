import 'package:eduos/screens/result/result_detail.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Result extends StatelessWidget {
  const Result({super.key});

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
                width: screenWidth,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: 'Enter result checker :',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: 'Enter result checker pin',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select result class',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: 'SSC One',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select result term',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select session',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Button(
                buttonColor: app_color.primary,
                buttonText: 'Check result',
                textColor: app_color.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResultDetail()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
