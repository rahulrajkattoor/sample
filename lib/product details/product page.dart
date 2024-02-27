import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product extends StatefulWidget{
  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Product name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Product price"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Product details"),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("ADD"))
          ],
        ),
      ),
    );
  }
}