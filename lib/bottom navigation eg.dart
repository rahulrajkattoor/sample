
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottomnavigationeg(),));
}
class bottomnavigationeg extends StatefulWidget{
  @override
  State<bottomnavigationeg> createState() => _bottomnavigationegState();
}

class _bottomnavigationegState extends State<bottomnavigationeg> {
  var screen = [
    Text("Home"),
    Text("Category"),
    Text("Person"),
    Text("Cart"),
    Text("Notification")
  ];

  final iconList=<
  IconData>[
    Icons.home,
     Icons.category,
    Icons.person,
    Icons.shopping_cart,
     Icons.notifications

  ];
  int index=3;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(), //destination screen
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => index = index),
        //other params
      ),
    );

  }
}