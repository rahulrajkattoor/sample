
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: myapp()));
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),foregroundColor: Colors.white,
      ),
      body: Container(
        child: Text("flutter"),
      ),
    );
  }
}
