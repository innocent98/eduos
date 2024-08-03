import 'package:eduos/widgets/button.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class InventoryDetailSwitch extends StatelessWidget {
  const InventoryDetailSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button(
            buttonColor: app_color.primary,
            buttonText: 'Description',
            textColor: app_color.white,
            width: screenWidth * 0.38,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.033,
            onPressed: () {},
          ),
          SizedBox(width: screenWidth * 0.025),
          Button(
            buttonColor: app_color.light_grey,
            buttonText: 'Specifications',
            textColor: app_color.grey,
            borderColor: app_color.transparent,
            width: screenWidth * 0.38,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.033,
            onPressed: () {},
          ),
          SizedBox(width: screenWidth * 0.025),
          Button(
            buttonColor: app_color.light_grey,
            buttonText: 'Reviews',
            textColor: app_color.grey,
            borderColor: app_color.transparent,
            width: screenWidth * 0.38,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.033,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
