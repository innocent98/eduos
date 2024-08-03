import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class PayOnline extends StatelessWidget {
  const PayOnline({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return MyContainer(
      padding: EdgeInsets.all(screenWidth * 0.04),
      width: screenWidth,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                text: 'Academic Year:',
                textColor: app_color.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.04),
            SizedBox(height: screenHeight * 0.015),
            const TextForm(
              keyboardType: TextInputType.number,
              labelText: 'Select Year',
              labelColor: app_color.grey,
              fillColor: app_color.light_grey,
            ),
            SizedBox(height: screenHeight * 0.03),
            TextWidget(
                text: 'Fees Type',
                textColor: app_color.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.04),
            SizedBox(height: screenHeight * 0.015),
            const TextForm(
              keyboardType: TextInputType.number,
              labelText: 'Select Fee Type',
              labelColor: app_color.grey,
              fillColor: app_color.light_grey,
            ),
            SizedBox(height: screenHeight * 0.03),
            TextWidget(
                text: 'Pay Amount (₹)',
                textColor: app_color.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.04),
            SizedBox(height: screenHeight * 0.015),
            const TextForm(
              keyboardType: TextInputType.number,
              labelText: 'Enter Amount',
              labelColor: app_color.grey,
              fillColor: app_color.light_grey,
            ),
            SizedBox(height: screenHeight * 0.03),
            Button(
              buttonColor: app_color.primary,
              buttonText: 'Pay Now',
              textColor: app_color.white,
              onPressed: () {},
            ),
            SizedBox(height: screenHeight * 0.02),
            TextWidget(
                text: 'Please keep 30 minutes time between two transactions',
                textColor: app_color.close,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w400,
                fontSize: screenWidth * 0.033),
            SizedBox(height: screenHeight * 0.02),
            TextWidget(
                text: 'Instructions:',
                textColor: app_color.black,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.035),
            TextWidget(
                text:
                    'For Re-registration select Academic Year 2023-24 and fees type Re-registration then click on Pay now button. Select Fees type and Enter the Payment amount. After Clicking on the Pay Now button ,it will redirect to Payment Gateway page. After payment successful completion you will receive SMS notification and Email with Payment Receipt. Kindly submit the same payment recepit to the Account section for verification with in a Week. If Pay Now button is not visible then kindly update your mobile or email from student sections.',
                textColor: app_color.grey,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w400,
                fontSize: screenWidth * 0.033),
          ],
        ),
      ),
    );
  }
}
