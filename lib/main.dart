import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/view/home_screen/home_screen.dart';
import 'package:netflix_clone_july22/view/splash_screen/splash_screen.dart';

void main (){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}