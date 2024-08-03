import 'package:eduos/screens/e-learning/e-learning.dart';
import 'package:eduos/screens/home/home.dart';
import 'package:eduos/screens/live_class/live_class.dart';
import 'package:eduos/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class NavTab extends StatefulWidget {
  const NavTab({super.key});

  @override
  State<NavTab> createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> {
    int _selectedTabIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ELearning(),
    LiveClass(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: app_color.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedTabIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.menu_book_rounded),
            label: 'E-Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_outlined),
            label: 'Live class',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedTabIndex,
        selectedItemColor: app_color.primary,
        unselectedItemColor: app_color.grey,
        showUnselectedLabels: true,
        onTap: onTabTapped,
      ),
    );
  }
}