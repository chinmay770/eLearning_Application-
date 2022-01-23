import 'package:flutter/material.dart';

class Course{
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course>generateCourse(){
    return[
      Course('Chinmay', 'assets/icons/boy.png', 'Android Development 1', 'assets/img/app 1.jpeg'),
      Course('Sampada', 'assets/icons/girl.png', 'Android Development 2', 'assets/img/app 2.jfif'),
      Course('Sharansh', 'assets/icons/boy.png', 'Android Development 3', 'assets/img/App 3.jpeg'),
      Course('Anushka', 'assets/icons/girl.png', 'Android Development 3', 'assets/img/app 4.png')

    ];
  }

}