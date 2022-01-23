import 'package:flutter/material.dart';
import 'package:untitled/models/course.dart';
import 'package:untitled/screens/home/widget/category_title.dart';
import 'package:untitled/screens/home/widget/course_item.dart';
//import 'package:course_app/screens/home/widget/course_item.dart';

class FeatureCourse extends StatelessWidget{
  final courseList = Course.generateCourse();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top view of the week', 'View all'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (context, index) =>
            CourseItem(courseList[index]),
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 15,)

            ))
        ],
      )
    );
  }
}