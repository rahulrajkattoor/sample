import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ui(),));
}
class ui extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Positioned(left: 40,right: 40,top: 40,
             child: Container(color: Colors.tealAccent,height: 400,)),
         Positioned(left: 50,right: 50,top: 50,
             child: Container(color: Colors.white,height: 380,
             padding: EdgeInsets.only(left: 40,right: 40,top: 30),
             child: TextField(
               decoration: InputDecoration(
                 hintText: "Hi",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
               ),
             ),))

       ],
     ),

   );
  }

}