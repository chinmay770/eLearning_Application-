import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/course.dart';
import 'package:untitled/screens/detail/widget/course_description.dart';
import 'package:untitled/screens/detail/widget/course_progress.dart';
import 'package:untitled/screens/detail/widget/custom_app_bar.dart';

class DetailPage extends StatelessWidget{
  final Course course;
  DetailPage(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDescription(course),
            CourseProgress(),
          ],
        ),
      )
    );
  }
}