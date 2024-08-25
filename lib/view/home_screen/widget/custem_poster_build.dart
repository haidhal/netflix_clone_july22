// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/dummy_db.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';

class CustomPosterbBuilder extends StatelessWidget {
  const CustomPosterbBuilder({
    this.isCircle = false,
    this.height=177,
    this.width = 103,
   required this.title,
    this.imageList = const [],

    super.key,
  });
 final bool isCircle ;
 final double height;
 final double width;
 final String title;
 final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
       children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
          style: TextStyle(
            fontSize: 20.92,
            fontWeight: FontWeight.bold,
            color: ColorConstants.mainwhite
          ),),
        ),
        SizedBox(height: 14,),
        SizedBox(height: isCircle ? width : height,

          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          //  physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index)=>Container(
               decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imageList[index],),fit: BoxFit.cover),
               // color: Colors.red,
                shape: isCircle ? BoxShape.circle : BoxShape.rectangle
               ),
              height: height,
              width: width  ,
              
            ), 
            separatorBuilder:(context,index)=> SizedBox(width: 7,), 
            itemCount: imageList.length),
        )
       ], 
      ),
    );
  }
}