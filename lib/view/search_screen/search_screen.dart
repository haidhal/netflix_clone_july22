import 'package:flutter/material.dart';

import 'package:netflix_clone_july22/dummy_db.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';
import 'package:netflix_clone_july22/view/search_screen/widget/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              fillColor: Color(0xff424242) ,
              hintText: "Search for a show movie genre e.t.c.",
              hintStyle: TextStyle(
                color: Color(0xffc4c4c4),
                fontSize: 15
              ),
              prefixIcon: Icon(Icons.search,color: Color(0xffc4c4c4),),
              suffixIcon: Icon(Icons.mic,color: Color(0xffc4c4c4),)
              ),
              
            ),
            
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Top Searches",style: TextStyle(
                fontSize: 26.75,
                fontWeight: FontWeight.w700,
                color: ColorConstants.mainwhite
              ),),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) => 
              SearchScreenCard(
                name: DummyDb.searchscreenData[index]["title"], 
                image: DummyDb.searchscreenData[index]["url"],),
              separatorBuilder: (context, index) => SizedBox(height: 3,), 
              itemCount: DummyDb.searchscreenData.length),
            )
          ],
        ),
      ),
    );
  }
}
