import 'package:eduos/screens/inventory/inventory_det.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class InventoryCard extends StatelessWidget {
  const InventoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const InventoryDetail()));
      },
      child: MyContainer(
        width: screenWidth * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/inventory.png',
              fit: BoxFit.cover,
              width: screenWidth,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Stationary',
                          textColor: app_color.black,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      const Icon(Icons.favorite_border_outlined,
                          color: app_color.black)
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  TextWidget(
                      text: '₦506',
                      textColor: app_color.grey,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.035),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
