

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
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(child:Image(image: AssetImage("assets/icons/instagram.png"),),
     ),);
  }
}