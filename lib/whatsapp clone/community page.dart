import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class community extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 350,left: 120,right: 120),
           child: ElevatedButton(

               style: ElevatedButton.styleFrom(backgroundColor: Colors.teal[500],),
               onPressed: (){}, child:Text("Start your community",style: TextStyle(color: Colors.black),)),
         )
       ],
     ),
    );
  }

}