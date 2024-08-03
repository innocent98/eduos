import 'package:eduos/screens/announcement/announcement.dart';
import 'package:eduos/screens/assignment/assignment.dart';
import 'package:eduos/screens/attendance/attendance.dart';
import 'package:eduos/screens/chart.dart';
import 'package:eduos/screens/exam/exam.dart';
import 'package:eduos/screens/inventory/inventory.dart';
import 'package:eduos/screens/payment/payment.dart';
import 'package:eduos/screens/quiz/quiz.dart';
import 'package:eduos/screens/result/result.dart';
import 'package:eduos/screens/settings/settings.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: app_color.soft,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/drawer_bk.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.48,
                      child: TextWidget(
                        text: 'Edous School',
                        textColor: app_color.black,
                        textAlign: TextAlign.left,
                        fontWeight: FontWeight.w900,
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      width: screenWidth * 0.65,
                      child: const TextForm(
                        keyboardType: TextInputType.text,
                        labelText: 'Search',
                        labelColor: app_color.grey,
                        prefixIcon: Icon(Icons.search_outlined),
                      ),
                    )
                  ],
                ),
              ],
            )),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/info.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Announcement',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Announcement()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/stat.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Assignmnents',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Assignment()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/edit.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Timetable',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {},
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/stat.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Quiz',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Quiz()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/edit.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Exam',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Exam()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/res.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Result',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Result()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/people.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Attendance',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Attendance()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/wallet.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Payment',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Payment()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/inv.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Inventory',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Inventory()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/settings.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Settings',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTile(
              selectedTileColor: app_color.primary,
              selectedColor: app_color.white,
              leading: const ImageIcon(
                AssetImage('assets/img/logout.png'),
                color: app_color.black,
              ),
              title: TextWidget(
                  text: 'Logout',
                  textColor: app_color.black,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04),
                       onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  BarChartSample8()));
              },
            ),
            SizedBox(height: screenHeight * 0.08),
          ],
        ),
      ),
    );
  }
}
