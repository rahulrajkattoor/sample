import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/bottom%20navigation%20rahul%20eg/bottom%20list.dart';

void main(){
  runApp(MaterialApp(home: navigation(),
  debugShowCheckedModeBanner: false,));
}
class navigation extends StatefulWidget{
  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  var name=[Text('Home'),bottomlist()
    ,Text('Cart'),Text('Account')];
   var index=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,
          bottom: TabBar(indicatorColor: Colors.white,
            tabs: [
            Tab(
              child: Text("Lunches",style: TextStyle(color: Colors.white),
              ),

            ),
            Tab(
              child: Text("cart",style: TextStyle(color: Colors.white),),
            ),

          ],


      
          ),



        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          type: BottomNavigationBarType.shifting,
          onTap: (tap){
            setState(() {
              index=tap;
            });
          },
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),label: "Lunches"),


          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ],),
        body:name[index],



        ),

    );
  }
}