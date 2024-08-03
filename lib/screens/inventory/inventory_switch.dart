import 'package:eduos/widgets/button.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class InventorySwitch extends StatelessWidget {
  const InventorySwitch({super.key});

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
            buttonText: 'All',
            textColor: app_color.white,
            width: screenWidth * 0.35,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.035,
            onPressed: () {},
          ),
          SizedBox(width: screenWidth * 0.025),
          Button(
            buttonColor: app_color.white,
            buttonText: 'Text book',
            textColor: app_color.grey,
            borderColor: app_color.transparent,
            width: screenWidth * 0.35,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.035,
            onPressed: () {},
          ),
          SizedBox(width: screenWidth * 0.025),
          Button(
            buttonColor: app_color.white,
            buttonText: 'Notebook',
            textColor: app_color.grey,
            borderColor: app_color.transparent,
            width: screenWidth * 0.35,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.035,
            onPressed: () {},
          ),
          SizedBox(width: screenWidth * 0.025),
          Button(
            buttonColor: app_color.white,
            buttonText: 'Pencil',
            textColor: app_color.grey,
            borderColor: app_color.transparent,
            width: screenWidth * 0.3,
            height: screenHeight * 0.045,
            fontSize: screenWidth * 0.035,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
