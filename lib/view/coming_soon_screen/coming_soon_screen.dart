import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/dummy_db.dart';
import 'package:netflix_clone_july22/utils/color_constants.dart';
import 'package:netflix_clone_july22/view/coming_soon_screen/castlecard.dart';
import 'package:netflix_clone_july22/view/coming_soon_screen/new_arrival_screen.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
       appBar: AppBar(
        backgroundColor: ColorConstants.mainblack,
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            
           // radius: 9.5,
            backgroundColor: Colors.red,
            child: Icon(Icons.notifications,color: ColorConstants.mainwhite,),
          ),
        ) ,
        title: Text("Notifications",style: TextStyle(fontSize: 16,color: ColorConstants.mainwhite,
        fontWeight: FontWeight.w700),),
      ),
      body:
       SingleChildScrollView(
         child: Column(
           children: [
             Column(
              children:List.generate(
                2, 
                (index) =>NewArrivalScreen(
                  image: DummyDb.newarrivallist[index]["image"],
                  title: DummyDb.newarrivallist[index]["title"],
                  date: DummyDb.newarrivallist[index]["date"],

                ),),
                
                   ),
                  
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(
                        
                      ),
                      itemBuilder:(context,index)=> Castlecard(
                        title: DummyDb.comingsoonmovielist[index]["title"],
                        image: DummyDb.comingsoonmovielist[index]["image"],
                        des: DummyDb.comingsoonmovielist[index]["description"],
                      ),
                      separatorBuilder: (context,index)=>SizedBox(height: 17,),
                      itemCount: 5,
)
                   
           ],
         ),

         
       ),
    );
  }
}