

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new home project.dart';
import 'new project.dart';


void main(){
  runApp(MaterialApp(home: namedroutes(),
  routes: {
    'loginpage':(context)=>login(),
    'homepage':(context)=>newhome()
  },

  ));
}
class namedroutes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body:Center(
         child: Column(
           children: [
             ElevatedButton(onPressed: (){
               Navigator.of(context).pushNamed("loginpage");
             },child:Text("loginpage"),),
             SizedBox(height: 10,),
             ElevatedButton(onPressed: (){
               Navigator.of(context).pushNamed("homepage");
             },child:Text("home page"),),
           ],
         ),
       )

     );
  }

}