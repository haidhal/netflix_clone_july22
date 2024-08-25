// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/dummy_db.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';
import 'package:netflix_clone_july22/utils/image_constants.dart';
import 'package:netflix_clone_july22/view/global_widgets/username_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      body:
      SafeArea(
        child: Column(children: [
      SizedBox(height: 38,),

          // #1 method 
          // or we can use list.generate 
          // use padding (edgeinsects.only(right: 9)) to usernamecard instead of separatorbuilder
        //  SizedBox(
        //   height: 120,
        //    child:
        //     ListView.separated(
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context,index)=> index < DummyDb.userlist.length ?
        //      UserNameCard(
        //       height: index == 0 ? 68 : 60,  // ternery condition  
        //       width: index == 0 ? 73 : 65,
        //       image: DummyDb.userlist[index]["imagepath"],
        //        name: DummyDb.userlist[index]["name"])
        //        :
        //        Column(
        //          children: [
        //           SizedBox(height: 33,),
        //            Container(
        //             height: 60,
        //             width: 65,
        //             decoration: BoxDecoration(
        //               border: Border.all(color: ColorConstants.mainwhite)
        //             ),
        //              child: Icon(Icons.add,color: ColorConstants.mainwhite,
        //              ),
        //            ),
        //            Text("")
        //          ],
        //        ),
           
        //     separatorBuilder: (context,index)=>SizedBox(width:9 ,), 
        //     itemCount: DummyDb.userlist.length +1),
        //  ),
            _buildUserSectionMethod(),

        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.edit,color: ColorConstants.mainwhite,
            size: 9,
            ),
            SizedBox(width: 6,),
            Text("Manage Profiles",
            style: TextStyle(
              fontSize: 14.72,
              fontWeight: FontWeight.w500,
              color: ColorConstants.mainwhite
            ),)
          ],),
          SizedBox(height: 10,),

          Container(
            padding: EdgeInsets.only(left: 16,top: 19,right: 9,bottom: 26),
            decoration: BoxDecoration(
              color: Color(0xff1a1a1a)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(children: [
                Icon(Icons.message_outlined,size: 24,color: ColorConstants.mainwhite,),
                SizedBox(width:5 ,),
                Text("Tell friends about netflix",
                style: TextStyle(color: ColorConstants.mainwhite,
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),)
              ],),
               Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
               style: TextStyle(
                 height: 1.8,
                 letterSpacing: 1,
                 fontSize: 11,
                 fontWeight: FontWeight.w500,
                 color: ColorConstants.mainwhite
               ),),
               SizedBox(height: 11,),
                Text("Terms and Conditions",
               style: TextStyle(
                shadows: [
                  Shadow(offset: Offset(0, -4),color: Colors.grey
                  )
                ],
                decoration: TextDecoration.underline,decorationColor:Colors.grey,
                 height: 1.8,
                
                 fontSize: 10.7,
                 fontWeight: FontWeight.w500,
                 color: Colors.transparent
               ),),
               Row(children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: ColorConstants.mainblack,
                      filled: true
                     ),
                  )),
                  SizedBox(width: 7,),
                  Container(
                    height: 37,
                    width: 96,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorConstants.mainwhite,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("Copy Link",
                    style: TextStyle(
                      fontSize: 17,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600
                    ),),
                  )
               ],),
               SizedBox(height: 21,),
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/whatsapp_logo.png"),
                        SizedBox(
                          height: 41,
                          child: VerticalDivider(
                            color: Color(0xff8c8787),
                          ),
                        ),
                        Container(
                           height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            color: Color(0xff395185),
                            borderRadius: BorderRadius.circular(9.8)
                          ),
                          child: Image.asset("assets/images/logos_facebook.png")),
                          SizedBox(
                            height: 41,
                            child: VerticalDivider(
                               color: Color(0xff8c8787),
                            ),
                          ),
                        Container(
                          height: 33.6,
                          width: 36,                     
                          decoration: BoxDecoration(
                             color: ColorConstants.mainwhite,
                             borderRadius: BorderRadius.circular(9.8)
                          ),
                          child: Image.asset("assets/images/Gmail-logo 1.png")),
                          SizedBox(
                            height: 41,
                            child: VerticalDivider( color: Color(0xff8c8787),)),
                          Column(
                            children: [
                              Icon(Icons.more_horiz,color: ColorConstants.mainwhite,size: 21,),
                              Text("More",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.72,color: ColorConstants.mainwhite),)
                            ],
                          )
                      ],
                    ),
             
               SizedBox(height: 21,)
                  
            ],),
          ),
          //
           Row(
                children: [
                  SizedBox(width: 27,),
                  Icon(Icons.check,color: ColorConstants.mainwhite,weight:600,size: 33,),
                  Text("  My List",style: TextStyle(fontSize: 14.72,fontWeight: FontWeight.w500,color: ColorConstants.mainwhite),),
                ],
              ),
              Divider(color: Color(0xff8c8787),),

              Padding(
                padding:  EdgeInsets.symmetric(
                 horizontal: 26,
                  vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("App Settings",
                    style: TextStyle(
                     
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.mainwhite)),
                      SizedBox(height: 10,),
                      Text("Account",
                    style: TextStyle(
                     
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.mainwhite)),
                      SizedBox(height: 10,),
                      Text("Help",
                    style: TextStyle(
                    
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.mainwhite)),
                      SizedBox(height: 10,),
                      Text("Sign Out",
                    style: TextStyle(
                      
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.mainwhite)),
                  ],
                ),
              )

        ],),
      ) ,
    );
  }

  Padding _buildUserSectionMethod() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(children: List.generate(
            DummyDb.userlist.length +1, 
            (index)=>
                    index < DummyDb.userlist.length ?
             Padding(
               padding: const EdgeInsets.only(right: 9),
               child: UserNameCard(
                height: index == 0 ? 68 : 60,  // ternery condition  
                width: index == 0 ? 73 : 65,
                image: DummyDb.userlist[index]["imagepath"],
                 name: DummyDb.userlist[index]["name"]),
             )
               :
               Column(
                 children: [
               
                   Container(
                    height: 60,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.mainwhite)
                    ),
                     child: Icon(Icons.add,color: ColorConstants.mainwhite,
                     ),
                   ),
                   Text("",
                   style: TextStyle(color: Colors.white,height: 2))
                 ],
               ),
                       // 
            ),),
          );
  }
}