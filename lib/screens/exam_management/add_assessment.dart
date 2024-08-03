import 'dart:io';

import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/container.dart';
import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../constants/colors.dart' as app_color;

class AddAssessment extends StatelessWidget {
  const AddAssessment({super.key});

  Future<void> pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // The user picked an image.
      File imageFile = File(pickedFile.path);
      print(imageFile);

      // Use the imageFile as needed, for example, display it in an Image widget.
      // If you need to work with the image bytes, you can use imageFile.readAsBytesSync().
    } else {
      // The user canceled the image picker.
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Add Assessment').build(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyContainer(
                padding: EdgeInsets.all(screenWidth * 0.04),
                width: screenWidth,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: 'Question Instruction',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: 'e.g.: Instruction',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select Level',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select Class',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select Subject',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Enter Question',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        labelText: 'e.g.: Question',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Option A',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.text,
                        labelText: 'e.g.: Option A',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Option B',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.text,
                        labelText: 'e.g.: Option B',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Option C',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.text,
                        labelText: 'e.g.: Option C',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Option D',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.text,
                        labelText: 'e.g.: Option D',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Select Correct Option',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      const TextForm(
                        keyboardType: TextInputType.number,
                        labelText: '<--Select-->',
                        labelColor: app_color.grey,
                        fillColor: app_color.light_grey,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextWidget(
                          text: 'Question Image (If available)',
                          textColor: app_color.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04),
                      SizedBox(height: screenHeight * 0.015),
                      Button(
                        buttonColor: app_color.light_grey,
                        buttonText: 'Choose file',
                        textColor: app_color.grey,
                        borderColor: app_color.grey,
                        onPressed: () {
                          pickImageFromGallery();
                        },
                      ),
                      SizedBox(height: screenHeight * 0.03),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Button(
                buttonColor: app_color.primary,
                buttonText: 'Add now',
                textColor: app_color.white,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ...


