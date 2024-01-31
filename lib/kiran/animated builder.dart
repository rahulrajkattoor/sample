import 'dart:math' as math;

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Animated(),debugShowCheckedModeBanner: false,));
}

class Animated extends StatefulWidget{
  @override
  State<Animated> createState() => _AnimatedState();

}

class _AnimatedState extends State<Animated> with TickerProviderStateMixin {
  late AnimationController controller;

  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    //A repeating/recurring function is a function that periodically runs based on a set timer
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedBuilder"),),
      body: AnimatedBuilder(animation: controller,
        child: Center(
          child: Container(
            height: 200,width: 200,
            color: Colors.purpleAccent,
            child: Center(child: Text("Rotation",style: TextStyle(color: Colors.white),)),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(angle: controller.value * 2 * math.pi,child: child,);
        },

      ),
    );
  }
}

