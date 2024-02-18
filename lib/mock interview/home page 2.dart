import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/mock%20interview/home%20page%203.dart';
void main(){
  runApp(MaterialApp(home: homepage2(),debugShowCheckedModeBanner: false,));
}
class homepage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
    appBar: AppBar(title: Text("BOOK LENDING",style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w900),),
    bottom: TabBar(
      indicatorColor: Colors.yellow,
      labelColor: Colors.black,
      tabs: [
    Tab(text: "Child",),
    Tab(text: "Humanities",),
    Tab(text: "Education",),
    Tab(text: "Science",)
    ],),),
    body: TabBarView(
      children: [
        homepage3()
      ],
    )


    ));
  }

}