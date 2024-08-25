import 'package:flutter/material.dart';
import 'package:netflix_clone_july22/dummy_db.dart';
import 'package:netflix_clone_july22/utils/image_constants.dart';
import 'package:netflix_clone_july22/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_clone_july22/view/global_widgets/username_card.dart';
import 'package:netflix_clone_july22/view/home_screen/home_screen.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Image.asset(ImageConstants.LOGO,height: 37.2,width: 138,)),
        actions:[Icon(Icons.edit,color: Colors.white,),SizedBox(width: 20,)],
       
      ),

      body:
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 72),
        child: Center(
          
          child: GridView.builder(
            shrinkWrap: true, 
            itemCount: DummyDb.userlist.length +1,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 22,
              crossAxisSpacing: 32,
              mainAxisExtent: 121,
              
              ), 
            itemBuilder: (context,index)=> index < DummyDb.userlist.length  ?
            UserNameCard(

              image:DummyDb.userlist[index]["imagepath"] ,
              name: DummyDb.userlist[index]["name"],
              Oncardtapped: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>BottomNavbarScreen()));
              },
            ) :
            UserNameCard(
              image: ImageConstants.addicon, 
              name:"add profile" ,
              Oncardtapped: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("failed to register")));
              },),

            // Column(
            //   children: [
            //     Image.asset(ImageConstants.addicon,height: 50,width: 50,),
            //     Text("add profile",style: TextStyle(color: Colors.white),)
            //   ],
            // )
            ),
        ),  
      )
    );
  }  
}

