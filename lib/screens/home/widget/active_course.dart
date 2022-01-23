import 'package:flutter/material.dart';
import 'package:untitled/constants/colors.dart';
import 'package:untitled/screens/home/widget/category_title.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(
       children: [
         CategoryTitle('Currently Active', 'View All'),
         Container(
           margin: EdgeInsets.all(25),
           padding: EdgeInsets.all(10),
           decoration: BoxDecoration(
             color: kFontLight.withOpacity(0.1),
             border: Border.all(
               color: kFontLight.withOpacity(0.3), width: 1
             ),
             borderRadius: BorderRadius.circular(8)
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Row(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(8),
                   child: Image.asset('assets/img/app 1.jpeg', width: 100,),
                 ),

                 SizedBox(width: 20,),

                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Installation process',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: kFont
                     ),),
                     Text('2 lessons left',
                     style: TextStyle(
                       fontSize: 12,
                       fontWeight: FontWeight.bold,
                       color: kFontLight
                     ),)
                   ],
                 )
               ],
             ),
               CircularPercentIndicator(
                   radius: 60.0, lineWidth: 5.0, percent: 0.61,
                   center: Text('61%', style: TextStyle(fontWeight: FontWeight.bold),),
                 progressColor: kAccent,
               )
           ],),
         )
       ],
     ),
   );
  }
}