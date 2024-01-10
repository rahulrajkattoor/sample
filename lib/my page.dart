import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: myui(),
  debugShowCheckedModeBanner: false,));
}
class myui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("amazon",style: TextStyle(color: Colors.black),),backgroundColor:Colors.tealAccent,),
      body: Container(
        height: double.infinity,

      ),
    );

  }

}