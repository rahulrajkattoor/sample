









import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/eg.dart';



void main(){
  runApp(MaterialApp(home: app(),));
}
class app extends StatefulWidget {
  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>eg()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity, width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
            "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600")),),

    ));
  }
}