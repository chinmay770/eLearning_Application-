import 'package:flutter/cupertino.dart';
import 'package:untitled/constants/colors.dart';
import 'package:untitled/models/module.dart';
import 'package:untitled/screens/detail/widget/course_module.dart';

class CourseProgress extends StatelessWidget{
  final modulesList = Module.generateModules();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('The Progress',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont
              ),),
              Row(
                children: [
                  Image.asset('assets/icons/grid.png', width: 25,),
                  SizedBox(width: 15,),
                  Image.asset('assets/icons/list.png', width: 25,),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          ...modulesList.map((e) => CourseModule(e)).toList()
          //Made by Chinmay Nilkanth
        ],
      )
    );
  }
}