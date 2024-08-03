import 'package:eduos/screens/live_class/live.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class LiveClass extends StatelessWidget {
  const LiveClass({super.key});

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
                  Image.asset('assets/img/live_mask.png'),
                  SizedBox(width: screenWidth * 0.02),
                  TextWidget(
                      text: 'Your next live classes',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Live()));
                      },
                      child: MyContainer(
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.42,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(screenWidth * 0.04),
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                            'assets/img/tutor.png',
                                            fit: BoxFit.cover,
                                            height: screenHeight * 0.06,
                                          )),
                                      SizedBox(width: screenWidth * 0.03),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                              text: 'John Doe',
                                              textColor: app_color.black,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.w600,
                                              fontSize: screenWidth * 0.04),
                                          SizedBox(
                                              height: screenHeight * 0.001),
                                          TextWidget(
                                              text: 'Tutor',
                                              textColor: app_color.grey,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.w400,
                                              fontSize: screenWidth * 0.03),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Positioned(
                                    right: 0,
                                    child: Icon(Icons.more_horiz_outlined,
                                        color: app_color.grey),
                                  )
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/img/live_pic.png',
                                  fit: BoxFit.cover,
                                  width: screenWidth,
                                  height: screenHeight * 0.16,
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.02,
                                        vertical: screenWidth * 0.01),
                                    decoration: BoxDecoration(
                                        color: app_color.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextWidget(
                                        text: '40 mins',
                                        textColor: app_color.primary,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenWidth * 0.035),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(screenWidth * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                      text: 'Mindfulness Magic for Kids',
                                      textColor: app_color.black,
                                      textAlign: TextAlign.left,
                                      fontWeight: FontWeight.w600,
                                      fontSize: screenWidth * 0.04),
                                  SizedBox(height: screenHeight * 0.01),
                                  TextWidget(
                                      text: '26 Sep 2023     |     10:00 AM',
                                      textColor: app_color.grey,
                                      textAlign: TextAlign.left,
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.038),
                                  SizedBox(height: screenHeight * 0.01),
                                  TextWidget(
                                      text: '240 students registered',
                                      textColor: app_color.grey,
                                      textAlign: TextAlign.left,
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.038),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Live()));
                      },
                      child: MyContainer(
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.42,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(screenWidth * 0.04),
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                            'assets/img/tutor.png',
                                            fit: BoxFit.cover,
                                            height: screenHeight * 0.06,
                                          )),
                                      SizedBox(width: screenWidth * 0.03),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                              text: 'Chetant D.',
                                              textColor: app_color.black,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.w600,
                                              fontSize: screenWidth * 0.04),
                                          SizedBox(
                                              height: screenHeight * 0.001),
                                          TextWidget(
                                              text: 'Tutor',
                                              textColor: app_color.grey,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.w400,
                                              fontSize: screenWidth * 0.03),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Positioned(
                                    right: 0,
                                    child: Icon(Icons.more_horiz_outlined,
                                        color: app_color.grey),
                                  )
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/img/live_pic2.png',
                                  fit: BoxFit.cover,
                                  width: screenWidth,
                                  height: screenHeight * 0.16,
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.02,
                                        vertical: screenWidth * 0.01),
                                    decoration: BoxDecoration(
                                        color: app_color.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextWidget(
                                        text: '40 mins',
                                        textColor: app_color.primary,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenWidth * 0.035),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(screenWidth * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                      text: 'Creative Crafts Corner',
                                      textColor: app_color.black,
                                      textAlign: TextAlign.left,
                                      fontWeight: FontWeight.w600,
                                      fontSize: screenWidth * 0.04),
                                  SizedBox(height: screenHeight * 0.01),
                                  TextWidget(
                                      text: '28 Sep 2023     |     5:00 PM',
                                      textColor: app_color.grey,
                                      textAlign: TextAlign.left,
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.038),
                                  SizedBox(height: screenHeight * 0.01),
                                  TextWidget(
                                      text: '87 students registered',
                                      textColor: app_color.grey,
                                      textAlign: TextAlign.left,
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.038),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextWidget(
                  text: 'Classes happening now',
                  textColor: app_color.black,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.048),
              SizedBox(height: screenHeight * 0.03),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Live()));
                },
                child: MyContainer(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/img/tutor.png',
                                      fit: BoxFit.cover,
                                      height: screenHeight * 0.06,
                                    )),
                                SizedBox(width: screenWidth * 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        text: 'Alia Arora',
                                        textColor: app_color.black,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w600,
                                        fontSize: screenWidth * 0.04),
                                    SizedBox(height: screenHeight * 0.001),
                                    TextWidget(
                                        text: 'Tutor',
                                        textColor: app_color.grey,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenWidth * 0.03),
                                  ],
                                ),
                              ],
                            ),
                            const Positioned(
                              right: 0,
                              child: Icon(Icons.more_horiz_outlined,
                                  color: app_color.grey),
                            )
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/img/live_pic3.png',
                            fit: BoxFit.cover,
                            width: screenWidth,
                            height: screenHeight * 0.16,
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.02,
                                  vertical: screenWidth * 0.01),
                              decoration: BoxDecoration(
                                  color: app_color.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextWidget(
                                  text: '40 mins',
                                  textColor: app_color.primary,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.035),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.02,
                                  vertical: screenWidth * 0.01),
                              decoration: BoxDecoration(
                                  color: app_color.live,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextWidget(
                                  text: 'LIVE',
                                  textColor: app_color.white,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.03),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: 'Environmental Explorers',
                                textColor: app_color.black,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.04),
                            SizedBox(height: screenHeight * 0.01),
                            TextWidget(
                                text: '24 Sep 2023     |     10:00 AM',
                                textColor: app_color.grey,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038),
                            SizedBox(height: screenHeight * 0.01),
                            TextWidget(
                                text: '240 students registered',
                                textColor: app_color.grey,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
