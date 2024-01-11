import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listbuilder extends StatelessWidget{
  var title=["rahul","arjun"];
  var phone=["2255","5522"];
  var color=[600,500];
  var colors=[Colors.green,Colors.yellowAccent];
  var image=["assets/icons/facebook.png","assets/icons/facebook.png"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Listbuilder"),),
     body: ListView.builder(itemBuilder: (context,index){
       return  Card(color: colors[index],
           child: ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}"),),
             title: Text("${title[index]}"),
             subtitle: Text("${phone[index]}"),
             trailing: Icon(Icons.call),
           ),
         );


     },itemCount: title.length,),
   );
  }

}