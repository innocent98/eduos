import 'package:eduos/screens/authentication/login.dart';
import 'package:eduos/screens/tab/teacher_nav_bar.dart';
import 'package:eduos/widgets/button.dart';
import 'package:eduos/widgets/text.dart';
import 'package:eduos/widgets/text_form.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class TeacherLogin extends StatefulWidget {
  const TeacherLogin({super.key});

  @override
  State<TeacherLogin> createState() => _TeacherLoginState();
}

class _TeacherLoginState extends State<TeacherLogin> {
    String? selectedOption;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: app_color.semi_primary,
      appBar: AppBar(
        backgroundColor: app_color.semi_primary,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.06),
          child: Column(
            children: [
              SizedBox(
                width: screenWidth * 0.7,
                child: Stack(
                  children: [
                    Positioned(
                        child: Transform.translate(
                            offset: const Offset(50, 0),
                            child: Image.asset('assets/img/login.png'))),
                    Positioned(
                        left: 0,
                        bottom: 100,
                        child: Image.asset('assets/img/yel.png')),
                    Positioned(
                        left: 50, child: Image.asset('assets/img/ppl.png')),
                           Positioned(
                        left: 100, top: 20, child: Image.asset('assets/img/bl.png')),
                    Positioned(
                        right: 30, child: Image.asset('assets/img/yel.png')),
                         Positioned(
                        right: 0, top: 150, child: Image.asset('assets/img/ppl.png')),
                    Positioned(
                        left: 40,
                        bottom: 0,
                        child: Image.asset('assets/img/bl.png'))
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                width: screenWidth * 1,
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.06,
                    vertical: screenWidth * 0.1),
                decoration: BoxDecoration(
                  color: app_color.soft,
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                ),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.5,
                        child: TextWidget(
                            text: 'Hey Mate, Welcome Back',
                            textColor: app_color.black,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.w900,
                            fontSize: screenWidth * 0.06),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      const TextForm(
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'josh@gmail.com',
                        labelColor: app_color.grey,
                        // hintText: 'josh@gmail.com',
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const TextForm(
                        keyboardType: TextInputType.visiblePassword,
                        labelText: 'Password',
                        labelColor: app_color.grey,
                        obscureText: true,
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.visibility_outlined),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: TextWidget(
                          text: 'Remember Me',
                          textColor: app_color.grey,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.03,
                        ),
                        value: 'yes',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Button(
                        buttonColor: app_color.primary,
                        buttonText: 'Login',
                        textColor: app_color.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TeacherNavTab()));
                        },
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                            },
                            child: TextWidget(
                              text: 'Log in as a Student',
                              textColor: app_color.primary,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.03,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                  
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}