import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridview()),);
}
class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20,),
     children: [
       Container(child: Icon(Icons.construction),color: Colors.blue,),
       Container(child: Icon(Icons.ac_unit),color: Colors.green,),
       Container(child: Icon(Icons.access_alarm),color: Colors.yellow,),
       Container(child: Icon(Icons.add_card),color: Colors.red,),
       Container(child: Icon(Icons.safety_check),color: Colors.indigo,),
       Container(child: Icon(Icons.access_alarm_rounded),color: Colors.orange,)
     ],),

   );
  }
  
}