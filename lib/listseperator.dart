import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class listseperator extends StatelessWidget{
  var title=["rahul","arjun"];
  var phone=["2255","5522"];
  var image=["assets/icons/Aha-Soft-Food-Burger.256.png","assets/icons/Aha-Soft-Food-Burger.256.png"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   body: ListView.separated(itemBuilder: (context,index){
     return Card(
       child: ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}"),),
         title: Text("${title[index]}"),
         subtitle: Text("${phone[index]}"),
         trailing: Icon(Icons.call),
       ),
     );
   }, separatorBuilder: (context,index){

     return Divider(
       thickness: 5,
       color: Colors.cyan,
     );
   }, itemCount: 2),
   );

  }

}