import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Fitness%20app/fitnes%20home.dart';
import 'package:sample/Fitness%20app/splash%20screen.dart';
void main(){
  runApp(MaterialApp(home: fitnesnavigation(),));
}
class fitnesnavigation extends StatefulWidget{
  @override
  State<fitnesnavigation> createState() => _navigationState();
}

class _navigationState extends State<fitnesnavigation> {
  var index=0;
  var screen=[fitneshome(),splash()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (tap){
          setState(() {
            index=tap;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ],),

body: screen[index],

    );
  }
}