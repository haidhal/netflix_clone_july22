// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';
import 'package:netflix_clone_july22/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone_july22/view/download_screen/download_screen.dart';
import 'package:netflix_clone_july22/view/home_screen/home_screen.dart';
import 'package:netflix_clone_july22/view/more_screen/more_screen.dart';
import 'package:netflix_clone_july22/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screenslist = [
HomeScreen(),
SearchScreen(),
ComingSoonScreen(),
DownloadScreen(),
MoreScreen()
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenslist[selectedindex],
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedindex,
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(fontSize: 10),
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorConstants.mainblack,
      selectedItemColor: ColorConstants.mainwhite,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Coming soon"),
           BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: "More"),
      ],
      onTap: (value) {
        selectedindex = value;
        setState(() {
          
        });
      },
      ),
    );
  }
}