import 'package:eduos/screens/inventory/color_box.dart';
import 'package:eduos/screens/inventory/inventory_det_switch.dart';
import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class InventoryDetail extends StatelessWidget {
  const InventoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.white,
      appBar: AppBar(toolbarHeight: 0, automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/img/inventory2.png',
                  fit: BoxFit.cover,
                  width: screenWidth,
                  height: screenHeight * 0.35,
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                                color: app_color.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(Icons.arrow_back_ios,
                                size: screenWidth * 0.05),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(screenWidth * 0.01),
                              decoration: BoxDecoration(
                                  color: app_color.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: ImageIcon(
                                const AssetImage(
                                  'assets/img/share.png',
                                ),
                                color: app_color.black,
                                size: screenWidth * 0.05,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Container(
                              padding: EdgeInsets.all(screenWidth * 0.01),
                              decoration: BoxDecoration(
                                  color: app_color.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.favorite_outline,
                                size: screenWidth * 0.05,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
                      text: 'Stationary Set',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048),
                  SizedBox(height: screenHeight * 0.01),
                  TextWidget(
                      text: '₦506.00',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048),
                  SizedBox(height: screenHeight * 0.015),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(screenWidth * 0.01),
                        width: screenWidth * 0.15,
                        decoration: BoxDecoration(
                            color: app_color.primary,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: app_color.white,
                              size: screenWidth * 0.035,
                            ),
                            SizedBox(width: screenWidth * 0.01),
                            TextWidget(
                                text: '4.8',
                                textColor: app_color.white,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.032),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      TextWidget(
                          text: '(320 reviews)',
                          textColor: app_color.grey,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.032),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextWidget(
                      text: 'Color',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.04),
                  SizedBox(height: screenHeight * 0.01),
                  SizedBox(
                    width: screenWidth * 0.6,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ColorBox(color: app_color.black),
                        ColorBox(color: app_color.live),
                        ColorBox(color: app_color.semi_primary),
                        ColorBox(color: app_color.yellow),
                        ColorBox(color: app_color.soft),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  const InventoryDetailSwitch(),
                  SizedBox(height: screenHeight * 0.02),
                  TextWidget(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.035),
                  SizedBox(height: screenHeight * 0.02),
                  Container(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: app_color.light_grey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: app_color.primary),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(Icons.remove,
                                  color: app_color.primary),
                              TextWidget(
                                  text: '1',
                                  textColor: app_color.primary,
                                  textAlign: TextAlign.left,
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth * 0.04),
                              const Icon(Icons.add, color: app_color.primary),
                            ],
                          ),
                        ),
                        Button(
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.06,
                          buttonColor: app_color.primary,
                          buttonText: 'Buy now',
                          textColor: app_color.white,
                          borderRadius: BorderRadius.circular(30),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
