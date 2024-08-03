import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Live extends StatelessWidget {
  const Live({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        backgroundColor: app_color.soft,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      fontSize: screenWidth * 0.055),
                  SizedBox(height: screenHeight * 0.01),
                  Stack(
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
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.03,
                              vertical: screenWidth * 0.005),
                          decoration: BoxDecoration(
                              color: app_color.live,
                              borderRadius: BorderRadius.circular(6)),
                          child: TextWidget(
                              text: 'LIVE',
                              textColor: app_color.white,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.03),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        app_color.transparent,
                        app_color.black.withOpacity(0.6),
                      ],
                      stops: const [0.0, 1.0],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Image.asset(
                    'assets/img/live_pic4.png',
                    fit: BoxFit.cover,
                    width: screenWidth,
                    height: screenHeight * 0.7,
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 20,
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/img/tutor.png',
                                  fit: BoxFit.cover,
                                  height: screenHeight * 0.055,
                                )),
                            SizedBox(width: screenWidth * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: 'Asha',
                                    textColor: app_color.white,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth * 0.03),
                                SizedBox(height: screenHeight * 0.001),
                                TextWidget(
                                    text: 'Good session',
                                    textColor: app_color.white,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.035),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/img/tutor.png',
                                fit: BoxFit.cover,
                                height: screenHeight * 0.055,
                              )),
                          SizedBox(width: screenWidth * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  text: 'Asha',
                                  textColor: app_color.white,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.03),
                              SizedBox(height: screenHeight * 0.001),
                              TextWidget(
                                  text: 'Good session',
                                  textColor: app_color.white,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth * 0.035),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                        height: screenHeight * 0.07,
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: app_color.white,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/img/comment.png',
                            fit: BoxFit.contain,
                            height: screenHeight * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.045),
                      Container(
                        height: screenHeight * 0.07,
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: app_color.white,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/img/volume.png',
                            fit: BoxFit.contain,
                            height: screenHeight * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.045),
                      Container(
                        height: screenHeight * 0.07,
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: app_color.white,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/img/mic.png',
                            fit: BoxFit.contain,
                            height: screenHeight * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.045),
                      Container(
                        height: screenHeight * 0.07,
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: app_color.semi_primary,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/img/hand.png',
                            fit: BoxFit.contain,
                            height: screenHeight * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.045),
                      Container(
                        height: screenHeight * 0.07,
                        padding: EdgeInsets.all(screenWidth * 0.05),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: app_color.close,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/img/close.png',
                            fit: BoxFit.contain,
                            height: screenHeight * 0.035,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.04, bottom: screenWidth * 0.06),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/pic1.png',
                            fit: BoxFit.cover,
                            height: screenHeight * 0.1,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                                color: app_color.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const ImageIcon(
                                AssetImage('assets/img/mic.png')),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/pic2.png',
                            fit: BoxFit.cover,
                            height: screenHeight * 0.1,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                                color: app_color.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const ImageIcon(
                                AssetImage('assets/img/mic.png')),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/pic3.png',
                            fit: BoxFit.cover,
                            height: screenHeight * 0.1,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                                color: app_color.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const ImageIcon(
                                AssetImage('assets/img/mic.png')),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/pic4.png',
                            fit: BoxFit.cover,
                            height: screenHeight * 0.1,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                                color: app_color.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const ImageIcon(
                                AssetImage('assets/img/mic.png')),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/img/pic1.png',
                            fit: BoxFit.cover,
                            height: screenHeight * 0.1,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                                color: app_color.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const ImageIcon(
                                AssetImage('assets/img/mic.png')),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
