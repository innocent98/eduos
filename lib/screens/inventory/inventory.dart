import 'package:eduos/screens/inventory/inventory_card.dart';
import 'package:eduos/screens/inventory/inventory_switch.dart';
import 'package:eduos/widgets/appbar.dart';
import 'package:eduos/widgets/drawer.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class Inventory extends StatelessWidget {
  const Inventory({super.key});

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
                      text: 'Inventory',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.048)
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              const Form(
                child: Column(
                  children: [
                    TextForm(
                      keyboardType: TextInputType.text,
                      labelText: 'Search',
                      labelColor: app_color.grey,
                      prefixIcon: Icon(Icons.search_outlined),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const InventorySwitch(),
              SizedBox(height: screenHeight * 0.02),
              Wrap(
                spacing: screenWidth * 0.02,
                runSpacing: screenWidth * 0.02,
                children: const [
                  InventoryCard(),
                  InventoryCard(),
                  InventoryCard(),
                  InventoryCard(),
                  InventoryCard(),
                  InventoryCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
