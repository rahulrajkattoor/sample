import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fitneshome(),
    debugShowCheckedModeBanner: false,
  ));
}

class fitneshome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Workout",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
               Column(children: [
                 ClipRRect(borderRadius: BorderRadius.circular(15),
                   child: Container(
                     decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/health and nutrition.jpg"),fit: BoxFit.fill),),
                     height: 200,width: 300,
                   ),
                 ),
                 Text("Good food ensure your health",style: TextStyle(color: Colors.black),)
                 
               ],)
                
              ],
            ),
          ),
        ));
  }
}
