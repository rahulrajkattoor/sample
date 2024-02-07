

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/registration.dart';
void main(){
  runApp(MaterialApp(home: splshnew(),));
}
class splshnew extends StatefulWidget{
  @override
  State<splshnew> createState() => _splshnewState();
}

class _splshnewState extends State<splshnew> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(child:Image(image: AssetImage("assets/icons/instagram.png"),),
     ),);
  }

  home() {
    return Container(
      color: Colors.yellow,
    );
  }
}