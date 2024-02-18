import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/mock%20interview/home%20page%202.dart';
import 'package:sample/mock%20interview/home%20page.dart';
void main(){
  runApp(MaterialApp(home: bottom(),
  debugShowCheckedModeBanner: false,));
}
class bottom extends StatefulWidget{
  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  var index=0;
  var screen=[homepage(),homepage2()];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: index,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.grey,
      onTap: (tap){
        setState(() {
          index=tap;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.book),label: "Borrow"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
      ],),

    body: screen[index],
  );
  }
}