import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewui(),));
}
class gridviewui extends StatelessWidget{
  var icons=[Icon(Icons.access_alarm_rounded),Icon(Icons.add_card),Icon(Icons.person)];
  var name=["rahul","arjun","jishnu"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,crossAxisSpacing: 20,mainAxisSpacing: 20), itemBuilder: (context,index){
       return Card(
         child: ListTile(leading:icons[index],
         title: Center(child: Text("${name[index]}")),),



       );
     },itemCount: 3,),
   );
  }

}