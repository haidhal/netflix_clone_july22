import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';
import 'package:netflix_clone_july22/utils/image_constants.dart';
import 'package:netflix_clone_july22/view/home_screen/home_screen.dart';
import 'package:netflix_clone_july22/view/search_screen/search_screen.dart';
import 'package:netflix_clone_july22/view/username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value){
    Navigator.pushReplacement(context, MaterialPageRoute(

      builder:(context)=>
      //SearchScreen()
      UsernameScreen() 
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:ColorConstants.mainblack,
      // Colors.black,
      body: Center(child:
      Image.asset(ImageConstants.LOGO)),
    );
  }
}    