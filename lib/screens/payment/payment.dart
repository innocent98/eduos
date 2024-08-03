import 'package:eduos/screens/payment/pay_online.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool payOnline = true;

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
                      text: 'Payment',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              MyContainer(
                color: app_color.white,
                child: Row(
                  children: [
                    Button(
                      buttonColor: payOnline == true
                          ? app_color.primary
                          : app_color.white,
                      buttonText: 'Pay online',
                      width: screenWidth * 0.4,
                      borderColor: app_color.transparent,
                      textColor:
                          payOnline == true ? app_color.white : app_color.black,
                      onPressed: () {
                        setState(() {
                          payOnline = true;
                        });
                      },
                    ),
                    Button(
                      buttonColor: payOnline == true
                          ? app_color.white
                          : app_color.primary,
                      buttonText: 'Payment History',
                      width: screenWidth * 0.5,
                      borderColor: app_color.transparent,
                      textColor:
                          payOnline == true ? app_color.black : app_color.white,
                      onPressed: () {
                        setState(() {
                          payOnline = false;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              if (payOnline == true) const PayOnline()
            ],
          ),
        ),
      ),
    );
  }
}
