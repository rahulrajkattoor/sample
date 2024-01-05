
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: app(),
  debugShowCheckedModeBanner: false,));
}
class app extends StatelessWidget{
  var name=["rahul"];
  var phone=["2255"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView.builder(itemBuilder: (context,index){
      return Card(
        child: ListTile(
          leading: Image(image: AssetImage("assets/icons/facebook.png"),),
          title: Text("${name[index]}"),shape: Border.symmetric(vertical: BorderSide(width: 20)),
          subtitle: Text("${phone[index]}"),
          trailing: Icon(Icons.call),
        ),
      );
    },itemCount: 1,),
  );
  }
}