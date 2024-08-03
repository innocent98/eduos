import 'package:eduos/widgets/teacher_app_bar.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;

class LessonPlan extends StatelessWidget {
  const LessonPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.soft,
      appBar: TeacherAppBar(title: 'Lesson plan').build(context),
    );
  }
}
