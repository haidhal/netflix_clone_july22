// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/dummy_db.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';
import 'package:netflix_clone_july22/utils/image_constants.dart';
import 'package:netflix_clone_july22/view/home_screen/widget/custem_poster_build.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: ColorConstants.mainblack,
  body: 
  
  SingleChildScrollView(
    child: Column(
      children: [
      //  #1 topten section
        _buildTopTenSection(),
        SizedBox(height: 11,),
      // #2 playbutton section
           _buildPlaySection(),
          SizedBox(height:15,),
    // #3 multiple cards
          CustomPosterbBuilder(
            imageList: DummyDb.imageList1,
           title: "Preview",
            isCircle: true,
          ),
           CustomPosterbBuilder(
            title: "Continue watching for emenalo",
            imageList: DummyDb.imageList2,
           ),
            CustomPosterbBuilder(
                          title: "Popular on netflix",
            imageList: DummyDb.imageList3,
            ),
             CustomPosterbBuilder(
                          title: "Trending now",
            imageList: DummyDb.imageList4,
            ),
             CustomPosterbBuilder(
                          title: "Top 10 in Nigeria",
            imageList: DummyDb.imageList5,
            ),
             CustomPosterbBuilder(
                          title: "My List",
            imageList: DummyDb.imageList6,
            ),
            CustomPosterbBuilder(
                          title: "African Movies",
            imageList: DummyDb.imageList7,
            ),
             CustomPosterbBuilder(
                          title: "Nollywood Movies & TV ",
            imageList: DummyDb.imageList8,
            ),
             CustomPosterbBuilder(
                          title: "Netflix Originals",
            imageList: DummyDb.imageList9,
            height: 251,
            ),
             CustomPosterbBuilder(
                          title: "Watch It Again",
            imageList: DummyDb.imageList10,
            ),
             CustomPosterbBuilder(
                          title: "New Releases",
            imageList: DummyDb.imageList11,
            ),
             CustomPosterbBuilder(
                          title: "TV Thrillers & Mysteries",
            imageList: DummyDb.imageList12,
            ),
             CustomPosterbBuilder(
                          title: "US TV Shows",
            imageList: DummyDb.imageList13,
            ),



      
      ],
    ),
  )
    );
  }

 
 
  Widget _buildTopTenSection() {
    return Stack(
      children: [
        Container(
          
         height: 415,
         decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ImageConstants.homeImage),
         
         
         fit: BoxFit.cover)),
          
          ),
         Container(
          padding: EdgeInsets.only(left: 10,right: 25,top: 45),
          height: 415,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.center)),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Image.asset(ImageConstants.netflixIcon),
             
                Text("TV show",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.white, ),),
              
                Text("Movies",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.white, )),
               
                Text("my list",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.white, )),
               
              ],
             ), 
           
         
         Center(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Stack(
              children: [

               
                Image.asset(ImageConstants.rectanglelayout,color: ColorConstants.mainwhite,),
                
                Image.asset(ImageConstants.top15,color: ColorConstants.mainwhite)
              ],
            ),
            Text("#2 in Nigeria Today",style: TextStyle(color: ColorConstants.mainwhite,fontWeight: FontWeight.w700,fontSize: 13),)
           ],),
         )
           ],
         ),
         ),
           
         
      ],
    );
  }
}



class _buildPlaySection extends StatelessWidget {   
  const _buildPlaySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       SizedBox(width: 30,),
       Column(children: [
         Icon(Icons.add,color: ColorConstants.mainwhite,),
         Text("My List",style: TextStyle(fontSize: 14,color: ColorConstants.mainwhite),)
       ],),
            
       Container(
         height: 45,width: 110,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),color: ColorConstants.mainwhite
         ),
         child: Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Icon(Icons.play_arrow,color: ColorConstants.mainblack,),
           Text("Play",style: TextStyle(color: ColorConstants.mainblack,fontSize: 20,fontWeight: FontWeight.w600),)
         ],
                 
         ),
       ),
      
         Column(children: [
         Icon(Icons.error_outline,color: ColorConstants.mainwhite,),
         Text("Info",style: TextStyle(fontSize: 13,color: ColorConstants.mainwhite,fontWeight: FontWeight.w400),)
       ],),
       SizedBox(width: 30,),
     ],
            );
  }
}