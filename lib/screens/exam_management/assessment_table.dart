import 'package:eduos/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class AssessmentTable extends StatelessWidget {
  const AssessmentTable({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Table(
      border: TableBorder.all(color: app_color.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: {
        0: FixedColumnWidth(
            screenWidth * 0.17), // Adjust the column width as needed
        1: FixedColumnWidth(screenWidth * 0.58),
        2: FixedColumnWidth(screenWidth * 0.17),
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
                      text: 'Class',
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
      ],
    );
  }
}
