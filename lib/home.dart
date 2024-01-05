import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(foregroundColor: Colors.white,backgroundColor: Colors.black,
     title: Text("demo"),),
     body: Center(child: Text("hi")),

   );
  }
}