import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,required this.image,required this.name,this.Oncardtapped, 
    this.height,
     this.width
  });
 final String image ;
 final String name ;
 final double? height;
 final double? width;
 final void Function()? Oncardtapped ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: Oncardtapped,

      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(image,
          height: height,
          width: width,),
          Text(name,
          style: TextStyle(color: Colors.white,height: 2)),
        ],
      ),
    );
  }
}