import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: appui(),
    debugShowCheckedModeBanner: false,));
}

class appui extends StatelessWidget {
  var color=[Colors.pink,Colors.deepPurpleAccent,Colors.green];
  var name=["hi","hi","hi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            floating: true,
            pinned: true,
            title: Text("app"),
            actions: [
              Icon(Icons.shopping_cart)
            ],
            bottom: AppBar(
              backgroundColor: Colors.blue,

              elevation: 0,
              title: Container(color: Colors.white,
                height: 40,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.favorite),
                  hintText: "search",
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }}
