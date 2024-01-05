import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridui(),
  ));
}

class gridui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CustomGridview",
        ),
        backgroundColor: Colors.black45,
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Container(
            child: Column(
              children: [Icon(Icons.home), Text("Home")],
            ),
          ),
          Container(
            child: Column(
              children: [Icon(Icons.person), Text("person")],
            ),
          ),
          Container(child: Column(
            children: [Icon(Icons.home),Text("Home")],
          ),),
          Container(
            child: Column(
              children: [Icon(Icons.person), Text("person")],
            ),
          ),
          Container(child: Column(
            children: [Icon(Icons.home),Text("Home")],
          ),),

        ],
      ),
    );
  }
}
