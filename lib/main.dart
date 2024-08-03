import 'package:eduos/screens/authentication/login.dart';
import 'package:flutter/material.dart';
import './constants/colors.dart' as app_color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: app_color.primary),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
