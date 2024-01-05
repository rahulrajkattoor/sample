import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: demo(),));
}
class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(decoration: BoxDecoration(
       gradient: LinearGradient(
         colors: [
           Colors.blue,
           Colors.greenAccent,
           Colors.yellowAccent,
         ],begin: Alignment.topLeft,
         end: Alignment.centerRight,
       )
     ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [Center(child: Text("flutter",style: TextStyle(fontWeight: FontWeight.w300,),)),
           Center(child: Icon(Icons.ac_unit_sharp,size: 100,),

           ),


         ],


       ),


     ),
   );
  }

}