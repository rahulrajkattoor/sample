import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: homepage(),
  debugShowCheckedModeBanner: false,));
}
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Hello Rahul",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
        )
      ],
    ),

    );
  }

}