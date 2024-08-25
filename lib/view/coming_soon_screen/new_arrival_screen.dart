// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';

class NewArrivalScreen extends StatelessWidget {
  const NewArrivalScreen({super.key, required this.image, required this.title, required this.date});
 final String image;
 final String title;
 final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
      child: 
      Row(children: [
        Image.network(image,
        height: 55,
        width: 113,
        fit: BoxFit.cover,),
        SizedBox(width: 30,),
         Column(children: [
          Text("New arrrival",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,
          color: ColorConstants.mainwhite),),
          Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: ColorConstants.mainwhite.withOpacity(.83)),),
      
          Text(date,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: ColorConstants.mainwhite.withOpacity(.48)),),
      
         ],)
      
      ],)
    );
  }
}
// textdecoration.underline
//verticaldivider