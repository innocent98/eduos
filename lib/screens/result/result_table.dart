import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Table(
      border: TableBorder.all(color: app_color.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: {
        0: FixedColumnWidth(
            screenWidth * 0.15), // Adjust the column width as needed
        1: FixedColumnWidth(screenWidth * 0.55),
        2: FixedColumnWidth(screenWidth * 0.15),
      },
      children: [
        TableRow(
          decoration: const BoxDecoration(color: app_color.yellow),
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Sr. no.',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Subject',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Marks',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '1',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Mathematics',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '55',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '2',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'English',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '72',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '3',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Scirnce',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '66',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '4',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Social Studies',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '85',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '5',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'History',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '65',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '6',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Geography',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '72',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '7',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: 'Environmental Studies',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: screenHeight * 0.07,
                child: Center(
                  child: TextWidget(
                      text: '88',
                      textColor: app_color.black,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.035),
                ),
              ),
            ),
          ],
        ),
        // Add more TableRow widgets as needed
      ],
    );
  }
}
