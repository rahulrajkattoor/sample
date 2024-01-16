import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: bottomnavigation()));
}

class bottomnavigation extends StatefulWidget {
  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  var screen = [
    Text("Home"),
    Text("Category"),
    Text("Person"),
    Text("Cart"),
    Text("Notification")
  ];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.blue,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "category"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notification")
          ],
        ),
      ),
      body: Center(child: screen[index]),
    );
  }
}
