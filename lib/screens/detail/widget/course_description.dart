import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants/colors.dart';
import 'package:untitled/models/course.dart';

class CourseDescription extends StatelessWidget{
  final Course course;
  CourseDescription(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(course.authorImg, width: 20, height: 20,),
              SizedBox(width: 5,),
              Text(course.author, style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: BoxDecoration(color: kFontLight, shape: BoxShape.circle),
              ),
              Icon(Icons.access_time_filled, size: 20, color: kAccent,),
              SizedBox(width: 5,),
              Text('1h 35 min', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kFont
              ),)
            ],
          ),
          SizedBox(height: 15,),
          Text(course.title, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kFont
          ),),
          SizedBox(height: 15,),
          Text('How to Developed Applications\nWith the help of Android Studio.',
          style: TextStyle(
            wordSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: kFontLight
          ),)
        ],
      )
    );
  }
}