
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomlist extends StatelessWidget{
  var color=[Colors.green,Colors.pinkAccent,Colors.blue,Colors.purpleAccent,Colors.deepPurpleAccent,Colors.deepOrange,Colors.tealAccent,Colors.purple];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(itemBuilder: (context,index){
       return Row(
         children: [
           
           Container(color: color[index],
             height: 150,
             width: 75,
             child:Column(
               children: [
                 Text("1"),
                 Text("Tuesday")
               ],

             ),
           ),
           Row(
             children: [
               Container(
                 width: 200,
                 height: 100,
                 child: Text("Burgers"),
               )
             ],
           )

         ],

       );


     },itemCount: 8,),


   );
  }

}