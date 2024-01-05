import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: newapp(),));
}
class newapp extends StatelessWidget{
  var name=["rahhul","arjun","thilak"];
  var image=["assets/icons/facebook.png","assets/icons/facebook.png","assets/icons/facebook.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,intex){
       return Card(color: Colors.green,
         child:ListTile( title:Text("${name[intex]}"),
           leading: CircleAvatar(backgroundImage: AssetImage("${image[intex]}"),),



       ));
    },childCount: name.length)),
    );
  }

}