// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';

class Castlecard extends StatelessWidget {
  const Castlecard({super.key, required this.title, required this.image, required this.des});
 final String title;
 final String image;
 final String des;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(image,
        fit: BoxFit.cover,
        height: 195,),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
         Column(children: [
          Icon(Icons.notifications,size: 24,color: ColorConstants.mainwhite,),
           SizedBox(height: 15,),
          Text("Remind me",style: TextStyle(fontWeight: FontWeight.w400,
          fontSize: 11,color: ColorConstants.mainwhite
          ),)
         ],),
          SizedBox(width: 45,),
          Column(children: [
          Icon(Icons.share,size: 24,color: ColorConstants.mainwhite,),
            SizedBox(height: 15,),
          Text("Share",style: TextStyle(fontWeight: FontWeight.w400,
          fontSize: 11,color: ColorConstants.mainwhite
          ),)
         ],)
        ],),
        SizedBox(height: 13,),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 8.25,bottom: 17.5,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Season 1 coming dec ",style: TextStyle(fontSize: 11.4,color: ColorConstants.mainwhite.withOpacity(.83)),),
              SizedBox(height: 13.3,),
              Text(title,style: TextStyle(fontSize: 18.6,fontWeight: FontWeight.w700,color: ColorConstants.mainwhite),),
              SizedBox(height: 12.87,),
              Text(des,
              style: TextStyle(fontSize: 11.14,color: ColorConstants.mainwhite ),),
              SizedBox(height:10 ,),
              Text("Steamy • Soapy • Slow burn • suspense • teen • mystery   ",
              style: TextStyle(
                fontSize: 11,
                color: ColorConstants.mainwhite,
                fontWeight: FontWeight.w600
              ),)
            ],
          ),
        )  
        
      ],
    );
  }
}