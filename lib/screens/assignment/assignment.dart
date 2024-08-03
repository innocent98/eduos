import 'package:eduos/screens/assignment/assigned.dart';
import 'package:eduos/screens/assignment/submitted.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool isAssigned = true;

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
                      text: 'Assignments',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              MyContainer(
                color: app_color.white,
                child: Row(
                  children: [
                    Button(
                      buttonColor: isAssigned == true
                          ? app_color.primary
                          : app_color.white,
                      buttonText: 'Assigned',
                      width: screenWidth * 0.455,
                      borderColor: app_color.transparent,
                      textColor: isAssigned == true
                          ? app_color.white
                          : app_color.black,
                      onPressed: () {
                        setState(() {
                          isAssigned = true;
                        });
                      },
                    ),
                    Button(
                      buttonColor: isAssigned == true
                          ? app_color.white
                          : app_color.primary,
                      buttonText: 'Submitted',
                      width: screenWidth * 0.455,
                      borderColor: app_color.transparent,
                      textColor: isAssigned == true
                          ? app_color.black
                          : app_color.white,
                      onPressed: () {
                        setState(() {
                          isAssigned = false;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              if (isAssigned == true) const Assigned() else const Submitted()
            ],
          ),
        ),
      ),
    );
  }
}
